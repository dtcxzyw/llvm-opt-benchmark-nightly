inline.NumInlined: 18564
inline.NumDeleted: 5746
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ij

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.ah = load ptr, ptr %2, align 8, !tbaa !693
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113
  %i.aj = load ptr, ptr %4, align 8, !tbaa !700
  store ptr %i.aj, ptr %40, align 8, !tbaa !715
  %i.ak = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !724
  %i.al = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 8 dereferenceable(94) %i.ai, ptr noundef nonnull align 8 dereferenceable(38) %1, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.merged55, %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314 ], [ %eh.lpad-body, %.body ], [ %i.af, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.l, %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #38
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i8 0, ptr %i.a, align 1, !tbaa !82
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2390 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.n, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit, !prof !161

bb.n:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.ap = invoke fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7getSlowERNSR_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit unwind label %bb.cf

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit: ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit, %bb.n
  %i.aq = phi ptr [ %i.ao, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit ], [ %i.ap, %bb.n ] ; 16 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !690
  %i.as = load ptr, ptr %2, align 8, !tbaa !693   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp eq i64 %i.av, 32
  br i1 %i.aw, label %bb.o, label %bb.cg

bb.o:                                             ; preds = %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2392 ; 3 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !2395 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp eq ptr %i.ay, %i.az
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = sub nuw nsw i64 1, %i.bd
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.bf)
          to label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bg = icmp ugt i64 %i.bd, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.bh
  br i1 %.not.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store ptr %i.a, ptr %36, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  store ptr %i.i, ptr %.sroa.4332.0..sroa_idx, align 8
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5333.0..sroa_idx, align 8
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 4 uses
  store ptr %40, ptr %.sroa.6334.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 4 uses
  store ptr %i.aq, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !728, !range !83, !noundef !81
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %.0.in.pre.i.i.i.i = load i8, ptr %i.bi, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.s:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !729
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !730 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !731
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bv = and i32 %i.bq, 2147483584               ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %.not37.i.i.not.i.i.i.i663.not = icmp eq i32 %i.bv, 0
  br i1 %.not37.i.i.not.i.i.i.i663.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph665

bb.w:                                             ; preds = %.lr.ph665
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i664, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.bw
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph665, label %.critedge.i.i.i.i.i.i, !llvm.loop !733

.lr.ph665:                                        ; preds = %bb.v, %bb.w
  %indvars.iv.i.i.i.i664 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.bx = lshr exact i64 %indvars.iv.i.i.i.i664, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !233
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !733

.critedge.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.bq, %i.bv
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.cb = lshr i32 %i.bq, 6
  %i.cc = and i32 %i.bq, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.cd
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !233
  %.demorgan.i.i.i.i = or i64 %i.cg, %notmask.i40.i.i.i.i.i.i
  %i.ch = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.ci = zext i1 %i.ch to i16
  %i.cj = or disjoint i16 %i.ci, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph665, %bb.x, %.critedge.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.cj, %bb.x ], [ 256, %.lr.ph665 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.bi, align 4
  %i.ck = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.ck, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !730 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !729 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.lr.ph.i.i.i, label %.loopexit346

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i
  %.028.i.i.i = phi i32 [ %i.ei, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i ], [ %i.co, %bb.y ] ; 4 uses
  %i.cq = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2396 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2401, !nonnull !81, !align !602
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2402, !nonnull !81, !align !602
  %i.cu = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2403, !nonnull !81, !align !602
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !215, !range !83, !noundef !81
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !741
  %i.cz = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.cr, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(148) %i.cs, ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i32 noundef 0, i1 noundef zeroext %i.cx)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i unwind label %bb.z

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.da = load ptr, ptr %36, align 8, !tbaa !2404, !nonnull !81 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !82, !range !83, !noundef !81
  %44 = trunc nuw i8 %i.db to i1
  %45 = or i1 %i.cz, %44
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %i.da, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, i32 } %i.dc, 1      ; 2 uses
  %i.df = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.dg = icmp eq i32 %i.de, %i.df
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = call ptr @__cxa_begin_catch(ptr %i.dd) #38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !756 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 152
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = icmp eq i64 %i.dn, 4
  br i1 %i.do, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i:         ; preds = %bb.aa
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.dp, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.dr, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.1.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i = icmp eq i8 %i.dt, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.2.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.1.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i = icmp eq i8 %i.dv, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.3.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %34) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.ai unwind label %bb.ak

.loopexit.i.i.i:                                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i, %tailrecurse.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, %bb.aa
  invoke void @__cxa_rethrow() #47
          to label %bb.ao unwind label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.dw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.dx = icmp eq i32 %i.de, %i.dw
  br i1 %i.dx, label %bb.ac, label %.body75

bb.ac:                                            ; preds = %bb.ab
  %i.dy = call ptr @__cxa_begin_catch(ptr %i.dd) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %33) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %33, align 8, !tbaa !411
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i unwind label %.loopexit

bb.af:                                            ; preds = %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %33, align 8, !tbaa !411
  %.not.i4.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i4.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.an

bb.ah:                                            ; preds = %.loopexit.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.ed = load ptr, ptr %34, align 8, !tbaa !411
  %.not.i6.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i6.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke

bb.ak:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %34, align 8, !tbaa !411
  %.not.i8.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, %bb.ah
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ee, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i ], [ %i.ec, %bb.ah ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #50
  unreachable

bb.ao:                                            ; preds = %.loopexit.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i
  %i.ei = add i32 %.028.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ei, %i.cm
  br i1 %exitcond.not.i.i.i, label %.loopexit346, label %.lr.ph.i.i.i, !llvm.loop !2405

bb.ap:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.ej = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !729 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.en = load i32, ptr %i.em, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %36, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %35, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %32, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.ej, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i = icmp slt i32 %i.el, %i.en
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.eo = add i32 %i.el, 63                       ; 2 uses
  %i.ep = srem i32 %i.eo, 64
  %i.eq = sub nsw i32 %i.eo, %i.ep                ; 6 uses
  %i.er = and i32 %i.en, -64                      ; 4 uses
  %i.es = icmp slt i32 %i.er, %i.eq
  br i1 %i.es, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.et = and i32 %i.en, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.ew = sub nsw i32 %i.eq, %i.el                ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ez = sub nsw i32 64, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %i.ey, %i.fa
  %i.fc = and i64 %i.fb, %i.ev
  br label %.invoke

.invoke:                                          ; preds = %bb.cd, %bb.ar
  %i.fd = phi i64 [ %i.fc, %bb.ar ], [ %i.js, %bb.cd ]
  %i.fe = ashr i32 %i.en, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %32, i32 noundef %i.fe, i64 noundef %i.fd)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.el, %i.eq
  br i1 %.not32.i.i.i.i.i.i, label %.noexc78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = sdiv i32 %i.el, 64
  %i.fg = sub nsw i32 %i.eq, %i.el                ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.fh
  %i.fi = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.fj = sub nsw i32 64, %i.fg
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fi, %i.fk
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %32, i32 noundef %i.ff, i64 noundef %i.fl)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %bb.at, %bb.as
  %i.fm = add nsw i32 %i.eq, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i = icmp sgt i32 %i.fm, %i.er
  br i1 %.not3346.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc78
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.en, %i.er
  br i1 %.not34.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, label %bb.cd

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc78, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.fn = phi i32 [ %i.jp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.fm, %.noexc78 ] ; 2 uses
  %.047.i.i.i.i.i.i = phi i32 [ %i.fn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.eq, %.noexc78 ] ; 2 uses
  %i.fo = sdiv i32 %.047.i.i.i.i.i.i, 64          ; 3 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.fr, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.au
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fs = shl nsw i32 %i.fo, 6
  br label %bb.bm

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ft = shl nsw i32 %i.fo, 6                    ; 2 uses
  %i.fu = add i32 %i.ft, 64
  %i.fv = sext i32 %i.fu to i64
  %.0.off.i.i.i.i.i.i = add i32 %.047.i.i.i.i.i.i, 127
  %.not59.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not59.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i

.lr.ph58.i.i.i.i.i.i.i:                           ; preds = %bb.au
  %i.fw = sext i32 %i.ft to i64
  br label %bb.av

bb.av:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i
  %.057.i.i.i.i.i.i.i = phi i64 [ %i.fw, %.lr.ph58.i.i.i.i.i.i.i ], [ %i.hq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fx = trunc i64 %.057.i.i.i.i.i.i.i to i32    ; 3 uses
  %i.fy = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2396 ; 2 uses
  %i.fz = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2401, !nonnull !81, !align !602
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2402, !nonnull !81, !align !602
  %i.gc = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2403, !nonnull !81, !align !602
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !215, !range !83, !noundef !81
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = getelementptr i8, ptr %i.gb, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !741
  %i.gh = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.fz, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(148) %i.ga, ptr %.val.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i32 noundef 0, i1 noundef zeroext %i.gf)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i unwind label %bb.aw

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.gi = load ptr, ptr %36, align 8, !tbaa !2404, !nonnull !81 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !82, !range !83, !noundef !81
  %47 = trunc nuw i8 %i.gj to i1
  %48 = or i1 %i.gh, %47
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %i.gi, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0      ; 2 uses
  %i.gm = extractvalue { ptr, i32 } %i.gk, 1      ; 2 uses
  %i.gn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.go = icmp eq i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gp = call ptr @__cxa_begin_catch(ptr %i.gl) #38
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !756 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !13 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 152
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !17
  %i.gw = icmp eq i64 %i.gv, 4
  br i1 %i.gw, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %29) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bf unwind label %bb.bh

.loopexit.i.i.i.i.i.i.i:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, %bb.ax
  invoke void @__cxa_rethrow() #47
          to label %bb.bl unwind label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.he = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.hf = icmp eq i32 %i.gm, %i.he
  br i1 %i.hf, label %bb.az, label %.body75

bb.az:                                            ; preds = %bb.ay
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.gl) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %28) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.hh = load ptr, ptr %28, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %bb.az
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %28, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.bk

bb.be:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.hl = load ptr, ptr %29, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke

bb.bh:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %29, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, %bb.be
  %.pn.i18.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i ], [ %i.hk, %bb.be ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #50
  unreachable

bb.bl:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.hq = add nuw i64 %.057.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.fv
  br i1 %i.hr, label %bb.av, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2406

bb.bm:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01556.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.jo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.hs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01556.i.i.i.i.i.i.i, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.fs, %i.ht            ; 3 uses
  %i.hv = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2396 ; 2 uses
  %i.hw = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2401, !nonnull !81, !align !602
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2402, !nonnull !81, !align !602
  %i.hz = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2403, !nonnull !81, !align !602
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 160
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !215, !range !83, !noundef !81
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = getelementptr i8, ptr %i.hy, i64 8
  %.val.i25.i.i.i.i.i.i.i = load ptr, ptr %i.id, align 8, !tbaa !741
  %i.ie = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.hw, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(148) %i.hx, ptr %.val.i25.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i32 noundef 0, i1 noundef zeroext %i.ic)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i unwind label %bb.bn

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i: ; preds = %bb.bm
  %i.if = load ptr, ptr %36, align 8, !tbaa !2404, !nonnull !81 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !82, !range !83, !noundef !81
  %50 = trunc nuw i8 %i.ig to i1
  %51 = or i1 %i.ie, %50
  %52 = zext i1 %51 to i8
  store i8 %52, ptr %i.if, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.ih = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0      ; 2 uses
  %i.ij = extractvalue { ptr, i32 } %i.ih, 1      ; 2 uses
  %i.ik = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.im = call ptr @__cxa_begin_catch(ptr %i.ii) #38
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !756 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !13 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 152
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !17
  %i.it = icmp eq i64 %i.is, 4
  br i1 %i.it, label %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i: ; preds = %bb.bo
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !16
  %or.cond.not.i.i.i29.i.i.i.i.i.i.i = icmp eq i8 %i.iu, 85
  br i1 %or.cond.not.i.i.i29.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !16
  %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i = icmp eq i8 %i.iw, 83
  br i1 %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !16
  %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i = icmp eq i8 %i.iy, 69
  br i1 %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !16
  %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i = icmp eq i8 %i.ja, 82
  br i1 %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %31) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.bw unwind label %bb.by

.loopexit42.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i, %bb.bo
  invoke void @__cxa_rethrow() #47
          to label %bb.cc unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  %i.jb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.jc = icmp eq i32 %i.ij, %i.jb
  br i1 %i.jc, label %bb.bq, label %.body75

bb.bq:                                            ; preds = %bb.bp
  %i.jd = call ptr @__cxa_begin_catch(ptr %i.ii) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %30) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.je = load ptr, ptr %30, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i32.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke

bb.bt:                                            ; preds = %bb.bq
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %i.jg = load ptr, ptr %30, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i34.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.cb

bb.bv:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bw:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i
  %i.ji = load ptr, ptr %31, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

bb.by:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %31, align 8, !tbaa !411
  %.not.i38.i.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i38.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, %bb.bv
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i ], [ %i.jh, %bb.bv ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #50
  unreachable

bb.cc:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i
  %i.jn = add i64 %.01556.i.i.i.i.i.i.i, -1
  %i.jo = and i64 %i.jn, %.01556.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.bm, !llvm.loop !2407

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.au, %.lr.ph.i.i.i.i.i.i
  %i.jp = add nsw i32 %i.fn, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.jp, %i.er
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2408

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.jq = and i32 %i.en, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.jr
  %i.js = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  br label %.invoke

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke, %._crit_edge.i.i.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  br label %.loopexit346

.loopexit346:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %i.jt = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ce, label %bb.ih

bb.ce:                                            ; preds = %.loopexit346
  %i.jv = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.jx)
          to label %bb.ih unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314

.loopexit:                                        ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke
  %lpad.loopexit348 = landingpad { ptr, i32 }
          cleanup
  br label %.body75
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.body89:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, %bb.ck
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.lb, %bb.ck ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86 ] ; 3 uses
  %i.lc = extractvalue { ptr, i32 } %eh.lpad-body90, 1
  %i.ld = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.le = icmp eq i32 %i.lc, %i.ld
  br i1 %i.le, label %bb.cl, label %.body204

bb.cl:                                            ; preds = %.body89
  %i.lf = extractvalue { ptr, i32 } %eh.lpad-body90, 0
  %i.lg = call ptr @__cxa_begin_catch(ptr %i.lf) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %42) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.lh = load ptr, ptr %42, align 8, !tbaa !411
  %.not.i91 = icmp eq ptr %i.lh, null
  br i1 %.not.i91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  invoke void @__cxa_end_catch()
          to label %bb.fh unwind label %bb.cq

bb.co:                                            ; preds = %bb.cl
  %i.li = landingpad { ptr, i32 }
          cleanup
  %i.lj = load ptr, ptr %42, align 8, !tbaa !411
  %.not.i93 = icmp eq ptr %i.lj, null
  br i1 %.not.i93, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.ij

bb.cq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body204

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_113getIfConstantIiEESt8optionalIT_ERKNS0_10BaseVectorE.exit
  %i.ll = add nuw nsw i64 %i.kk, 1                ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !2392 ; 2 uses
  %i.lo = load ptr, ptr %i.aq, align 8, !tbaa !2395 ; 2 uses
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 4                 ; 3 uses
  %.not = icmp ugt i64 %i.ls, %i.kk
  br i1 %.not, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.lt = sub nuw nsw i64 %i.ll, %i.ls
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.lt)
          to label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98 unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.lu = icmp ugt i64 %i.ls, %i.ll
  br i1 %i.lu, label %bb.ct, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98

bb.ct:                                            ; preds = %bb.cs
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.ll ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.ln, %i.lv
  br i1 %.not.i.i95, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96: ; preds = %bb.ct
  store ptr %i.lv, ptr %i.lm, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98: ; preds = %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96, %bb.ct, %bb.cs, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %i.a, ptr %25, align 8
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  store ptr %i.i, ptr %.sroa.4336.0..sroa_idx, align 8
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5337.0..sroa_idx, align 8
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 4 uses
  store ptr %40, ptr %.sroa.6338.0..sroa_idx, align 8
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  store ptr %i.aq, ptr %.sroa.7339.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 4 uses
  store ptr %41, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !728, !range !83, !noundef !81
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200, label %bb.cu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98
  %.0.in.pre.i.i.i.i201 = load i8, ptr %i.lw, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101

bb.cu:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !729
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.cv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cv:                                            ; preds = %bb.cu
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.me = load i32, ptr %i.md, align 8, !tbaa !730 ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !731
  %i.mh = icmp eq i32 %i.me, %i.mg
  br i1 %i.mh, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cw:                                            ; preds = %bb.cv
  %i.mi = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i192 = icmp sgt i32 %i.me, 0
  br i1 %.not.i.i.i.i.i192, label %bb.cx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cx:                                            ; preds = %bb.cw
  %i.mj = and i32 %i.me, 2147483584               ; 3 uses
  %i.mk = zext nneg i32 %i.mj to i64
  %.not37.i.i.not.i.i.i.i194658.not = icmp eq i32 %i.mj, 0
  br i1 %.not37.i.i.not.i.i.i.i194658.not, label %.critedge.i.i.i.i.i.i195, label %.lr.ph

bb.cy:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i199 = add nuw nsw i64 %indvars.iv.i.i.i.i193659, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i194 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i199, %i.mk
  br i1 %.not37.i.i.not.i.i.i.i194, label %.lr.ph, label %.critedge.i.i.i.i.i.i195, !llvm.loop !733

.lr.ph:                                           ; preds = %bb.cx, %bb.cy
  %indvars.iv.i.i.i.i193659 = phi i64 [ %indvars.iv.next.i.i.i.i199, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  %i.ml = lshr exact i64 %indvars.iv.i.i.i.i193659, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !233
  %i.mo = icmp eq i64 %i.mn, -1
  br i1 %i.mo, label %bb.cy, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, !llvm.loop !733

.critedge.i.i.i.i.i.i195:                         ; preds = %bb.cy, %bb.cx
  %.not38.i.i.i.i.i.i196 = icmp eq i32 %i.me, %i.mj
  br i1 %.not38.i.i.i.i.i.i196, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, label %bb.cz

bb.cz:                                            ; preds = %.critedge.i.i.i.i.i.i195
  %i.mp = lshr i32 %i.me, 6
  %i.mq = and i32 %i.me, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %notmask.i40.i.i.i.i.i.i197 = shl nsw i64 -1, %i.mr
  %i.ms = zext nneg i32 %i.mp to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !233
  %.demorgan.i.i.i.i198 = or i64 %i.mu, %notmask.i40.i.i.i.i.i.i197
  %i.mv = icmp eq i64 %.demorgan.i.i.i.i198, -1
  %i.mw = zext i1 %i.mv to i16
  %i.mx = or disjoint i16 %i.mw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99: ; preds = %.lr.ph, %bb.cz, %.critedge.i.i.i.i.i.i195, %bb.cw, %bb.cv, %bb.cu
  %.sroa.0.0.insert.ext.i.i.i.i100 = phi i16 [ 256, %bb.cv ], [ 256, %bb.cu ], [ 257, %bb.cw ], [ 257, %.critedge.i.i.i.i.i.i195 ], [ %i.mx, %bb.cz ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i100, ptr %i.lw, align 4
  %i.my = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i100 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200
  %.0.in.i.i.i.i102 = phi i8 [ %.0.in.pre.i.i.i.i201, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200 ], [ %i.my, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99 ]
  %.0.i.i.i.i103 = trunc nuw i8 %.0.in.i.i.i.i102 to i1
  br i1 %.0.i.i.i.i103, label %bb.da, label %bb.dr

bb.da:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !730 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !729 ; 2 uses
  %i.nd = icmp slt i32 %i.nc, %i.na
  br i1 %i.nd, label %.lr.ph.i.i.i169, label %.loopexit360

.lr.ph.i.i.i169:                                  ; preds = %bb.da, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i
  %.028.i.i.i170 = phi i32 [ %i.oy, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i ], [ %i.nc, %bb.da ] ; 4 uses
  %i.ne = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2418 ; 2 uses
  %i.nf = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2421, !nonnull !81, !align !602
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2422, !nonnull !81, !align !602
  %i.ni = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2423, !nonnull !81, !align !602
  %i.nj = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2424, !nonnull !81, !align !957
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 160
  %i.nm = load i8, ptr %i.nl, align 8, !tbaa !215, !range !83, !noundef !81
  %i.nn = trunc nuw i8 %i.nm to i1
  %i.no = getelementptr i8, ptr %i.nh, i64 8
  %.val.i.i.i.i171 = load ptr, ptr %i.no, align 8, !tbaa !741
  %i.np = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.nf, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(148) %i.ng, ptr %.val.i.i.i.i171, ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i32 noundef %i.nk, i1 noundef zeroext %i.nn)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i unwind label %bb.db

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i169
  %i.nq = load ptr, ptr %25, align 8, !tbaa !2425, !nonnull !81 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !82, !range !83, !noundef !81
  %53 = trunc nuw i8 %i.nr to i1
  %54 = or i1 %i.np, %53
  %55 = zext i1 %54 to i8
  store i8 %55, ptr %i.nq, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i

bb.db:                                            ; preds = %.lr.ph.i.i.i169
  %i.ns = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { ptr, i32 } %i.ns, 1      ; 2 uses
  %i.nv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.nw = icmp eq i32 %i.nu, %i.nv
  br i1 %i.nw, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.nx = call ptr @__cxa_begin_catch(ptr %i.nt) #38
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !756 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 144
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !13 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 152
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !17
  %i.oe = icmp eq i64 %i.od, 4
  br i1 %i.oe, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179, label %.loopexit.i.i.i177

.lr.ph.i.i.i.preheader.i.preheader.i.i.i179:      ; preds = %bb.dc
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i180 = icmp eq i8 %i.of, 85
  br i1 %or.cond.not.i.i.i.i.i.i180, label %tailrecurse.i.i.i.i.i.i.i181, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.i.i.i181:                     ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i182 = icmp eq i8 %i.oh, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i182, label %tailrecurse.i.i.i.i.1.i.i.i183, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.1.i.i.i183:                   ; preds = %tailrecurse.i.i.i.i.i.i.i181
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i184 = icmp eq i8 %i.oj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i184, label %tailrecurse.i.i.i.i.2.i.i.i185, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.2.i.i.i185:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i183
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 3
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i186 = icmp eq i8 %i.ol, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i186, label %tailrecurse.i.i.i.i.3.i.i.i187, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.3.i.i.i187:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i185
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dk unwind label %bb.dm

.loopexit.i.i.i177:                               ; preds = %tailrecurse.i.i.i.i.2.i.i.i185, %tailrecurse.i.i.i.i.1.i.i.i183, %tailrecurse.i.i.i.i.i.i.i181, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179, %bb.dc
  invoke void @__cxa_rethrow() #47
          to label %bb.dq unwind label %bb.dj

bb.dd:                                            ; preds = %bb.db
  %i.om = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.on = icmp eq i32 %i.nu, %i.om
  br i1 %i.on, label %bb.de, label %.body204

bb.de:                                            ; preds = %bb.dd
  %i.oo = call ptr @__cxa_begin_catch(ptr %i.nt) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.op = load ptr, ptr %22, align 8, !tbaa !411
  %.not.i.i.i.i174 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i174, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175: ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i unwind label %.loopexit355

bb.dh:                                            ; preds = %bb.de
  %i.oq = landingpad { ptr, i32 }
          cleanup
  %i.or = load ptr, ptr %22, align 8, !tbaa !411
  %.not.i4.i.i.i172 = icmp eq ptr %i.or, null
  br i1 %.not.i4.i.i.i172, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.dp

bb.dj:                                            ; preds = %.loopexit.i.i.i177
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i187
  %i.ot = load ptr, ptr %23, align 8, !tbaa !411
  %.not.i6.i.i.i190 = icmp eq ptr %i.ot, null
  br i1 %.not.i6.i.i.i190, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191: ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke

bb.dm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i187
  %i.ou = landingpad { ptr, i32 }
          cleanup
  %i.ov = load ptr, ptr %23, align 8, !tbaa !411
  %.not.i8.i.i.i188 = icmp eq ptr %i.ov, null
  br i1 %.not.i8.i.i.i188, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189: ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.do

bb.do:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189, %bb.dj
  %.pn.i.i.i.i178 = phi { ptr, i32 } [ %i.ou, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189 ], [ %i.os, %bb.dj ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #50
  unreachable

bb.dq:                                            ; preds = %.loopexit.i.i.i177
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i
  %i.oy = add i32 %.028.i.i.i170, 1               ; 2 uses
  %exitcond.not.i.i.i176 = icmp eq i32 %i.oy, %i.na
  br i1 %exitcond.not.i.i.i176, label %.loopexit360, label %.lr.ph.i.i.i169, !llvm.loop !2426

bb.dr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101
  %i.oz = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !729 ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i104 = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %25, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i104, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i105 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %24, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i105, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i106, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i107 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.oz, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i107, align 8
  %.not.i.i.i.i.i.i108 = icmp slt i32 %i.pb, %i.pd
  br i1 %.not.i.i.i.i.i.i108, label %bb.ds, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.pe = add i32 %i.pb, 63                       ; 2 uses
  %i.pf = srem i32 %i.pe, 64
  %i.pg = sub nsw i32 %i.pe, %i.pf                ; 6 uses
  %i.ph = and i32 %i.pd, -64                      ; 4 uses
  %i.pi = icmp slt i32 %i.ph, %i.pg
  br i1 %i.pi, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.pj = and i32 %i.pd, 63
  %i.pk = zext nneg i32 %i.pj to i64
  %notmask.i.i.i.i.i.i.i167 = shl nsw i64 -1, %i.pk
  %i.pl = xor i64 %notmask.i.i.i.i.i.i.i167, -1
  %i.pm = sub nsw i32 %i.pg, %i.pb                ; 2 uses
  %i.pn = zext nneg i32 %i.pm to i64
  %notmask.i.i.i.i.i.i.i.i168 = shl nsw i64 -1, %i.pn
  %i.po = xor i64 %notmask.i.i.i.i.i.i.i.i168, -1
  %i.pp = sub nsw i32 64, %i.pm
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl i64 %i.po, %i.pq
  %i.ps = and i64 %i.pr, %i.pl
  br label %.invoke604

.invoke604:                                       ; preds = %bb.ff, %bb.dt
  %i.pt = phi i64 [ %i.ps, %bb.dt ], [ %i.um, %bb.ff ]
  %i.pu = ashr i32 %i.pd, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.pu, i64 noundef %i.pt)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp

bb.du:                                            ; preds = %bb.ds
  %.not32.i.i.i.i.i.i109 = icmp eq i32 %i.pb, %i.pg
  br i1 %.not32.i.i.i.i.i.i109, label %.noexc207, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pv = sdiv i32 %i.pb, 64
  %i.pw = sub nsw i32 %i.pg, %i.pb                ; 2 uses
  %i.px = zext nneg i32 %i.pw to i64
  %notmask.i.i35.i.i.i.i.i.i110 = shl nsw i64 -1, %i.px
  %i.py = xor i64 %notmask.i.i35.i.i.i.i.i.i110, -1
  %i.pz = sub nsw i32 64, %i.pw
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = shl i64 %i.py, %i.qa
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.pv, i64 noundef %i.qb)
          to label %.noexc207 unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.dv, %bb.du
  %i.qc = add nsw i32 %i.pg, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i111 = icmp sgt i32 %i.qc, %i.ph
  br i1 %.not3346.i.i.i.i.i.i111, label %._crit_edge.i.i.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i112

._crit_edge.i.i.i.i.i.i115:                       ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc207
  %.not34.i.i.i.i.i.i116 = icmp eq i32 %i.pd, %i.ph
  br i1 %.not34.i.i.i.i.i.i116, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, label %bb.ff

.lr.ph.i.i.i.i.i.i112:                            ; preds = %.noexc207, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.qd = phi i32 [ %i.uj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.qc, %.noexc207 ] ; 2 uses
  %.047.i.i.i.i.i.i113 = phi i32 [ %i.qd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.pg, %.noexc207 ] ; 2 uses
  %i.qe = sdiv i32 %.047.i.i.i.i.i.i113, 64       ; 3 uses
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.qf
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.qh, label %.lr.ph.i.i.i.i.i.i.i144 [
    i64 -1, label %bb.dw
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i144:                          ; preds = %.lr.ph.i.i.i.i.i.i112
  %i.qi = shl nsw i32 %i.qe, 6
  br label %bb.eo

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i.i112
  %i.qj = shl nsw i32 %i.qe, 6                    ; 2 uses
  %i.qk = add i32 %i.qj, 64
  %i.ql = sext i32 %i.qk to i64
  %.0.off.i.i.i.i.i.i118 = add i32 %.047.i.i.i.i.i.i113, 127
  %.not59.i.i.i.i.i.i.i119 = icmp ult i32 %.0.off.i.i.i.i.i.i118, 64
  br i1 %.not59.i.i.i.i.i.i.i119, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i120

.lr.ph58.i.i.i.i.i.i.i120:                        ; preds = %bb.dw
  %i.qm = sext i32 %i.qj to i64
  br label %bb.dx

bb.dx:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i120
  %.057.i.i.i.i.i.i.i121 = phi i64 [ %i.qm, %.lr.ph58.i.i.i.i.i.i.i120 ], [ %i.si, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.qn = trunc i64 %.057.i.i.i.i.i.i.i121 to i32 ; 3 uses
  %i.qo = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2418 ; 2 uses
  %i.qp = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2421, !nonnull !81, !align !602
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qr = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2422, !nonnull !81, !align !602
  %i.qs = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2423, !nonnull !81, !align !602
  %i.qt = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2424, !nonnull !81, !align !957
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 160
  %i.qw = load i8, ptr %i.qv, align 8, !tbaa !215, !range !83, !noundef !81
  %i.qx = trunc nuw i8 %i.qw to i1
  %i.qy = getelementptr i8, ptr %i.qr, i64 8
  %.val.i.i.i.i.i.i.i.i122 = load ptr, ptr %i.qy, align 8, !tbaa !741
  %i.qz = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.qp, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(148) %i.qq, ptr %.val.i.i.i.i.i.i.i.i122, ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i32 noundef %i.qu, i1 noundef zeroext %i.qx)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i unwind label %bb.dy

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i: ; preds = %bb.dx
  %i.ra = load ptr, ptr %25, align 8, !tbaa !2425, !nonnull !81 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !82, !range !83, !noundef !81
  %56 = trunc nuw i8 %i.rb to i1
  %57 = or i1 %i.qz, %56
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %i.ra, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.rc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0      ; 2 uses
  %i.re = extractvalue { ptr, i32 } %i.rc, 1      ; 2 uses
  %i.rf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.rg = icmp eq i32 %i.re, %i.rf
  br i1 %i.rg, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.rh = call ptr @__cxa_begin_catch(ptr %i.rd) #38
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !756 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 144
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !13 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 152
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !17
  %i.ro = icmp eq i64 %i.rn, 4
  br i1 %i.ro, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131, label %.loopexit.i.i.i.i.i.i.i129

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131: ; preds = %bb.dz
  %i.rp = load i8, ptr %i.rl, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i132 = icmp eq i8 %i.rp, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i132, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.i.i.i.i.i.i.i133:             ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i134 = icmp eq i8 %i.rr, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i134, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135:           ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i136 = icmp eq i8 %i.rt, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i136, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137:           ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i138 = icmp eq i8 %i.rv, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i138, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139:           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.eh unwind label %bb.ej

.loopexit.i.i.i.i.i.i.i129:                       ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131, %bb.dz
  invoke void @__cxa_rethrow() #47
          to label %bb.en unwind label %bb.eg

bb.ea:                                            ; preds = %bb.dy
  %i.rw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.rx = icmp eq i32 %i.re, %i.rw
  br i1 %i.rx, label %bb.eb, label %.body204

bb.eb:                                            ; preds = %bb.ea
  %i.ry = call ptr @__cxa_begin_catch(ptr %i.rd) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.rz = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i127 = icmp eq ptr %i.rz, null
  br i1 %.not.i.i.i.i.i.i.i.i127, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128: ; preds = %bb.ed, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit

bb.ee:                                            ; preds = %bb.eb
  %i.sa = landingpad { ptr, i32 }
          cleanup
  %i.sb = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i125 = icmp eq ptr %i.sb, null
  br i1 %.not.i19.i.i.i.i.i.i.i125, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126: ; preds = %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.em

bb.eg:                                            ; preds = %.loopexit.i.i.i.i.i.i.i129
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.eh:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139
  %i.sd = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i142 = icmp eq ptr %i.sd, null
  br i1 %.not.i21.i.i.i.i.i.i.i142, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke

bb.ej:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139
  %i.se = landingpad { ptr, i32 }
          cleanup
  %i.sf = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i140 = icmp eq ptr %i.sf, null
  br i1 %.not.i23.i.i.i.i.i.i.i140, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141: ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141, %bb.eg
  %.pn.i18.i.i.i.i.i.i.i130 = phi { ptr, i32 } [ %i.se, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141 ], [ %i.sc, %bb.eg ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.em

bb.em:                                            ; preds = %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  call void @__clang_call_terminate(ptr %i.sh) #50
  unreachable

bb.en:                                            ; preds = %.loopexit.i.i.i.i.i.i.i129
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i
  %i.si = add nuw i64 %.057.i.i.i.i.i.i.i121, 1   ; 2 uses
  %i.sj = icmp ult i64 %i.si, %i.ql
  br i1 %i.sj, label %bb.dx, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2427

bb.eo:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i144
  %.01556.i.i.i.i.i.i.i145 = phi i64 [ %i.qh, %.lr.ph.i.i.i.i.i.i.i144 ], [ %i.ui, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.sk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01556.i.i.i.i.i.i.i145, i1 true)
  %i.sl = trunc nuw nsw i64 %i.sk to i32
  %i.sm = or disjoint i32 %i.qi, %i.sl            ; 3 uses
  %i.sn = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2418 ; 2 uses
  %i.so = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2421, !nonnull !81, !align !602
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sq = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2422, !nonnull !81, !align !602
  %i.sr = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2423, !nonnull !81, !align !602
  %i.ss = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2424, !nonnull !81, !align !957
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !3
  %i.su = getelementptr inbounds nuw i8, ptr %i.sn, i64 160
  %i.sv = load i8, ptr %i.su, align 8, !tbaa !215, !range !83, !noundef !81
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = getelementptr i8, ptr %i.sq, i64 8
  %.val.i25.i.i.i.i.i.i.i146 = load ptr, ptr %i.sx, align 8, !tbaa !741
  %i.sy = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.so, i32 noundef %i.sm, ptr noundef nonnull align 8 dereferenceable(148) %i.sp, ptr %.val.i25.i.i.i.i.i.i.i146, ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i32 noundef %i.st, i1 noundef zeroext %i.sw)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i unwind label %bb.ep

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i: ; preds = %bb.eo
  %i.sz = load ptr, ptr %25, align 8, !tbaa !2425, !nonnull !81 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !82, !range !83, !noundef !81
  %59 = trunc nuw i8 %i.ta to i1
  %60 = or i1 %i.sy, %59
  %61 = zext i1 %60 to i8
  store i8 %61, ptr %i.sz, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.tb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0      ; 2 uses
  %i.td = extractvalue { ptr, i32 } %i.tb, 1      ; 2 uses
  %i.te = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.tf = icmp eq i32 %i.td, %i.te
  br i1 %i.tf, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.tg = call ptr @__cxa_begin_catch(ptr %i.tc) #38
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !756 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 144
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !13 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 152
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !17
  %i.tn = icmp eq i64 %i.tm, 4
  br i1 %i.tn, label %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154, label %.loopexit42.i.i.i.i.i.i.i152

.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154: ; preds = %bb.eq
  %i.to = load i8, ptr %i.tk, align 1, !tbaa !16
  %or.cond.not.i.i.i29.i.i.i.i.i.i.i155 = icmp eq i8 %i.to, 85
  br i1 %or.cond.not.i.i.i29.i.i.i.i.i.i.i155, label %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156:           ; preds = %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !16
  %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i157 = icmp eq i8 %i.tq, 83
  br i1 %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i157, label %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158:         ; preds = %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tk, i64 2
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !16
  %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i159 = icmp eq i8 %i.ts, 69
  br i1 %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i159, label %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160:         ; preds = %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 3
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !16
  %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i161 = icmp eq i8 %i.tu, 82
  br i1 %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i161, label %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162:         ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sm, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ey unwind label %bb.fa

.loopexit42.i.i.i.i.i.i.i152:                     ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160, %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158, %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156, %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154, %bb.eq
  invoke void @__cxa_rethrow() #47
          to label %bb.fe unwind label %bb.ex

bb.er:                                            ; preds = %bb.ep
  %i.tv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.tw = icmp eq i32 %i.td, %i.tv
  br i1 %i.tw, label %bb.es, label %.body204

bb.es:                                            ; preds = %bb.er
  %i.tx = call ptr @__cxa_begin_catch(ptr %i.tc) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sm, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ty = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i149 = icmp eq ptr %i.ty, null
  br i1 %.not.i32.i.i.i.i.i.i.i149, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150: ; preds = %bb.eu, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke

bb.ev:                                            ; preds = %bb.es
  %i.tz = landingpad { ptr, i32 }
          cleanup
  %i.ua = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i147 = icmp eq ptr %i.ua, null
  br i1 %.not.i34.i.i.i.i.i.i.i147, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148: ; preds = %bb.ew, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.fd

bb.ex:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i152
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ey:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162
  %i.uc = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i165 = icmp eq ptr %i.uc, null
  br i1 %.not.i36.i.i.i.i.i.i.i165, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp356.loopexit

bb.fa:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162
  %i.ud = landingpad { ptr, i32 }
          cleanup
  %i.ue = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i38.i.i.i.i.i.i.i163 = icmp eq ptr %i.ue, null
  br i1 %.not.i38.i.i.i.i.i.i.i163, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.fc

bb.fc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164, %bb.ex
  %.pn.i.i.i.i.i.i.i.i153 = phi { ptr, i32 } [ %i.ud, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164 ], [ %i.ub, %bb.ex ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148
  %i.uf = landingpad { ptr, i32 }
          catch ptr null
  %i.ug = extractvalue { ptr, i32 } %i.uf, 0
  call void @__clang_call_terminate(ptr %i.ug) #50
  unreachable

bb.fe:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i152
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i
  %i.uh = add i64 %.01556.i.i.i.i.i.i.i145, -1
  %i.ui = and i64 %i.uh, %.01556.i.i.i.i.i.i.i145 ; 2 uses
  %.not.i.i.i.i.i.i.i151 = icmp eq i64 %i.ui, 0
  br i1 %.not.i.i.i.i.i.i.i151, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.eo, !llvm.loop !2428

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.dw, %.lr.ph.i.i.i.i.i.i112
  %i.uj = add nsw i32 %i.qd, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i114 = icmp sgt i32 %i.uj, %i.ph
  br i1 %.not33.i.i.i.i.i.i114, label %._crit_edge.i.i.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !2429

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i.i.i115
  %i.uk = and i32 %i.pd, 63
  %i.ul = zext nneg i32 %i.uk to i64
  %notmask.i36.i.i.i.i.i.i117 = shl nsw i64 -1, %i.ul
  %i.um = xor i64 %notmask.i36.i.i.i.i.i.i117, -1
  br label %.invoke604

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke604, %._crit_edge.i.i.i.i.i.i115, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %.loopexit360

.loopexit360:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.un = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.loopexit360
  %i.up = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 48
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.ur)
          to label %bb.fh unwind label %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp

bb.fh:                                            ; preds = %.loopexit360, %bb.fg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %bb.ih

_ZN8facebook5velox9functions12_GLOBAL__N_113getIfConstantIiEESt8optionalIT_ERKNS0_10BaseVectorE.exit.thread: ; preds = %bb.cg, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38
  %i.us = load ptr, ptr %2, align 8, !tbaa !693
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !113
  %i.uv = load ptr, ptr %4, align 8, !tbaa !700
  store ptr %i.uv, ptr %43, align 8, !tbaa !715
  %i.uw = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store ptr null, ptr %i.uw, align 8, !tbaa !724
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.aaq = icmp eq i32 %i.zx, %i.aap
  br i1 %i.aaq, label %bb.gv, label %.body303

bb.gv:                                            ; preds = %bb.gu
  %i.aar = call ptr @__cxa_begin_catch(ptr %i.zw) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.zu, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.gw unwind label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.aas = load ptr, ptr %8, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i244 = icmp eq ptr %i.aas, null
  br i1 %.not.i.i.i.i.i.i.i.i244, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245: ; preds = %bb.gx, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gv
  %i.aat = landingpad { ptr, i32 }
          cleanup
  %i.aau = load ptr, ptr %8, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i242 = icmp eq ptr %i.aau, null
  br i1 %.not.i19.i.i.i.i.i.i.i242, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.hg

bb.ha:                                            ; preds = %.loopexit.i.i.i.i.i.i.i246
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.hb:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i256
  %i.aaw = load ptr, ptr %9, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i259 = icmp eq ptr %i.aaw, null
  br i1 %.not.i21.i.i.i.i.i.i.i259, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260: ; preds = %bb.hc, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i256
  %i.aax = landingpad { ptr, i32 }
          cleanup
  %i.aay = load ptr, ptr %9, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i257 = icmp eq ptr %i.aay, null
  br i1 %.not.i23.i.i.i.i.i.i.i257, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258: ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.hf

bb.hf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258, %bb.ha
  %.pn.i18.i.i.i.i.i.i.i247 = phi { ptr, i32 } [ %i.aax, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258 ], [ %i.aav, %bb.ha ]
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243
  %i.aaz = landingpad { ptr, i32 }
          catch ptr null
  %i.aba = extractvalue { ptr, i32 } %i.aaz, 0
  call void @__clang_call_terminate(ptr %i.aba) #50
  unreachable

bb.hh:                                            ; preds = %.loopexit.i.i.i.i.i.i.i246
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp371.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %bb.gr
  %i.abb = add nuw i64 %.055.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.abc = icmp ult i64 %i.abb, %i.zs
  br i1 %i.abc, label %bb.gr, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2432

bb.hi:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i261
  %.01554.i.i.i.i.i.i.i = phi i64 [ %i.zo, %.lr.ph.i.i.i.i.i.i.i261 ], [ %i.aeg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.abd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01554.i.i.i.i.i.i.i, i1 true)
  %i.abe = trunc nuw nsw i64 %i.abd to i32
  %i.abf = or disjoint i32 %i.zp, %i.abe          ; 5 uses
  %i.abg = load ptr, ptr %.sroa.4341.0..sroa_idx, align 8, !tbaa !2433 ; 3 uses
  %i.abh = load ptr, ptr %16, align 8, !tbaa !2435, !nonnull !81, !align !602
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !741 ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !742
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 58
  %i.abn = load i8, ptr %i.abm, align 2, !tbaa !752, !range !83, !noundef !81
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abj, i64 59
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !753, !range !83, !noundef !81
  %i.abr = trunc nuw i8 %i.abq to i1
  br i1 %i.abr, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abj, i64 64
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i

bb.hl:                                            ; preds = %bb.hj
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !755
  %i.abw = sext i32 %i.abf to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.hl, %bb.hk, %bb.hi
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aby, %bb.hl ], [ %i.abt, %bb.hk ], [ %i.abf, %bb.hi ]
  %i.abz = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !3 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 2 uses
  %i.acd = getelementptr i8, ptr %i.abg, i64 72
  %.val5.i.i.i.i.i.i.i = load i32, ptr %i.acd, align 8
  %i.ace = icmp slt i32 %i.acb, 0
  %i.acf = icmp sgt i32 %i.acb, %.val5.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ace, i1 true, i1 %i.acf, !prof !1951
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i, !prof !1951

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i
  %i.acg = sext i32 %i.acb to i64
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.acc, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !2436
  store i64 %i.acg, ptr %6, align 16, !tbaa !16, !noalias !2436
  %i.ach = load ptr, ptr %.val4.i.i.i.i.i.i.i, align 8, !tbaa !13, !noalias !2436
  %i.aci = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i, i64 8
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !17, !noalias !2436
  store ptr %i.ach, ptr %i.zh, align 16, !tbaa !16, !noalias !2436
  store i64 %i.acj, ptr %i.zi, align 8, !tbaa !16, !noalias !2436
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %6)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ho

.noexc.i.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2436
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.262) #47
          to label %bb.hm unwind label %bb.hn

bb.hm:                                            ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.hn:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ack = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.acl = load ptr, ptr %7, align 8, !tbaa !13   ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.zj
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hn
  %i.acn = load i64, ptr %i.zj, align 8, !tbaa !16
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.aco) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.body.i.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i
  %i.acp = load ptr, ptr %.sroa.6343.0..sroa_idx, align 8, !tbaa !2439, !nonnull !81, !align !602
  %i.acq = load ptr, ptr %.sroa.7344.0..sroa_idx, align 8, !tbaa !2440, !nonnull !81, !align !602
  %i.acr = load ptr, ptr %.sroa.8345.0..sroa_idx, align 8, !tbaa !2441, !nonnull !81, !align !602
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abg, i64 160
  %i.act = load i8, ptr %i.acs, align 8, !tbaa !215, !range !83, !noundef !81
  %i.acu = trunc nuw i8 %i.act to i1
  %i.acv = getelementptr i8, ptr %i.acq, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.acv, align 8, !tbaa !741
  %i.acw = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.acp, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(148) %i.acc, ptr %.val.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.acr, i32 noundef %i.acb, i1 noundef zeroext %i.acu)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i unwind label %bb.ho

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i
  %i.acx = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8, !tbaa !2442, !nonnull !81 ; 2 uses
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !82, !range !83, !noundef !81
  %62 = trunc nuw i8 %i.acy to i1
  %63 = or i1 %i.acw, %62
  %64 = zext i1 %63 to i8
  store i8 %64, ptr %i.acx, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i
  %i.acz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.acz, %bb.ho ], [ %i.ack, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ada = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0 ; 2 uses
  %i.adb = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 1 ; 2 uses
  %i.adc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.add = icmp eq i32 %i.adb, %i.adc
  br i1 %i.add, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %.body.i.i.i.i.i.i
  %i.ade = call ptr @__cxa_begin_catch(ptr %i.ada) #38
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !756 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 144
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !13 ; 4 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adg, i64 152
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !17
  %i.adl = icmp eq i64 %i.adk, 4
  br i1 %i.adl, label %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i: ; preds = %bb.hp
  %i.adm = load i8, ptr %i.adi, align 1, !tbaa !16
  %or.cond.not.i.i.i27.i.i.i.i.i.i.i = icmp eq i8 %i.adm, 85
  br i1 %or.cond.not.i.i.i27.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 1
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !16
  %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i = icmp eq i8 %i.ado, 83
  br i1 %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adi, i64 2
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !16
  %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i = icmp eq i8 %i.adq, 69
  br i1 %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adi, i64 3
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !16
  %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i = icmp eq i8 %i.ads, 82
  br i1 %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.hx unwind label %bb.hz

.loopexit40.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, %bb.hp
  invoke void @__cxa_rethrow() #47
          to label %bb.id unwind label %bb.hw

bb.hq:                                            ; preds = %.body.i.i.i.i.i.i
  %i.adt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.adu = icmp eq i32 %i.adb, %i.adt
  br i1 %i.adu, label %bb.hr, label %.body303

bb.hr:                                            ; preds = %bb.hq
  %i.adv = call ptr @__cxa_begin_catch(ptr %i.ada) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.hs unwind label %bb.hu

bb.hs:                                            ; preds = %bb.hr
  %i.adw = load ptr, ptr %10, align 8, !tbaa !411
  %.not.i30.i.i.i.i.i.i.i = icmp eq ptr %i.adw, null
  br i1 %.not.i30.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i: ; preds = %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.hr
  %i.adx = landingpad { ptr, i32 }
          cleanup
  %i.ady = load ptr, ptr %10, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i262 = icmp eq ptr %i.ady, null
  br i1 %.not.i32.i.i.i.i.i.i.i262, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263: ; preds = %bb.hv, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.ic

bb.hw:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  %i.adz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.hx:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.aea = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i268 = icmp eq ptr %i.aea, null
  br i1 %.not.i34.i.i.i.i.i.i.i268, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269: ; preds = %bb.hy, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  %i.aec = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i266 = icmp eq ptr %i.aec, null
  br i1 %.not.i36.i.i.i.i.i.i.i266, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267: ; preds = %bb.ia, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.ib

bb.ib:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267, %bb.hw
  %.pn.i.i.i.i.i.i.i.i265 = phi { ptr, i32 } [ %i.aeb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267 ], [ %i.adz, %bb.hw ]
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263
  %i.aed = landingpad { ptr, i32 }
          catch ptr null
  %i.aee = extractvalue { ptr, i32 } %i.aed, 0
  call void @__clang_call_terminate(ptr %i.aee) #50
  unreachable

bb.id:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp371.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i
  %i.aef = add i64 %.01554.i.i.i.i.i.i.i, -1
  %i.aeg = and i64 %i.aef, %.01554.i.i.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq i64 %i.aeg, 0
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.hi, !llvm.loop !2443

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.gq, %bb.gp
  %i.aeh = add nsw i32 %i.zk, 64                  ; 2 uses
  %.not33.i.i.i.i.i.i235 = icmp sgt i32 %i.aeh, %i.yl
  br i1 %.not33.i.i.i.i.i.i235, label %._crit_edge.i.i.i.i.i.i236, label %bb.gp, !llvm.loop !2444

bb.ie:                                            ; preds = %._crit_edge.i.i.i.i.i.i236
  %i.aei = and i32 %i.yh, 63
  %i.aej = zext nneg i32 %i.aei to i64
  %notmask.i36.i.i.i.i.i.i238 = shl nsw i64 -1, %i.aej
  %i.aek = xor i64 %notmask.i36.i.i.i.i.i.i238, -1
  br label %.invoke605

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke605, %._crit_edge.i.i.i.i.i.i236, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit375

.loopexit375:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.ael = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.aem = trunc nuw i8 %i.ael to i1
  br i1 %i.aem, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %.loopexit375
  %i.aen = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 48
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.aep)
          to label %bb.ig unwind label %.loopexit.split-lp371.loopexit.split-lp.loopexit.split-lp

.body204:                                         ; preds = %bb.ea, %bb.er, %bb.dd, %.loopexit355, %.loopexit.split-lp356.loopexit.split-lp.loopexit, %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp356.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173, %bb.do, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126, %bb.el, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148, %bb.fc, %bb.cq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, %.body89
  %.merged57 = phi { ptr, i32 } [ %i.li, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94 ], [ %eh.lpad-body90, %.body89 ], [ %i.lk, %bb.cq ], [ %i.tb, %bb.er ], [ %.pn.i.i.i.i178, %bb.do ], [ %i.oq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173 ], [ %i.ns, %bb.dd ], [ %.pn.i18.i.i.i.i.i.i.i130, %bb.el ], [ %i.sa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126 ], [ %.pn.i.i.i.i.i.i.i.i153, %bb.fc ], [ %i.tz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148 ], [ %lpad.loopexit.split-lp367, %.loopexit.split-lp356.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit357, %.loopexit355 ], [ %lpad.loopexit362, %.loopexit.split-lp356.loopexit ], [ %lpad.loopexit366, %.loopexit.split-lp356.loopexit.split-lp.loopexit ], [ %i.rc, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %.body75

.loopexit370:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i
  %lpad.loopexit372 = landingpad { ptr, i32 }
          cleanup
  br label %.body303

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib:bb.a
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2450
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.u, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i24

bb.u:                                             ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.ck = call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i24

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i24: ; preds = %bb.u, %_ZN8facebook5velox10StringViewC2EPKci.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !809
  %.not.i25 = icmp eq ptr %i.cm, null
  br i1 %.not.i25, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit28, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !823
  call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.co, i1 noundef zeroext true)
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !809 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 44
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !830
  %i.cs = and i8 %i.cr, 2
  %.not.i3.i26 = icmp eq i8 %i.cs, 0
  br i1 %.not.i3.i26, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i27, label %bb.w, !prof !28

bb.w:                                             ; preds = %bb.v
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i27: ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !831
  %i.cv = lshr i32 %1, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = trunc i32 %1 to i8
  %i.da = and i8 %i.cz, 7
  %i.db = shl nuw i8 1, %i.da
  %i.dc = or i8 %i.cy, %i.db
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !16
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit28

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit28: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i24, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i27
  %i.dd = load ptr, ptr %i.ch, align 8, !tbaa !2450
  %i.de = sext i32 %1 to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  store i32 %i.bt, ptr %i.df, align 8, !tbaa !3
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.42, i64 12, i1 false), !tbaa.struct !2890
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  br label %bb.ae

bb.x:                                             ; preds = %bb.l
  br i1 %5, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2450
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.z, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i29

bb.z:                                             ; preds = %bb.y
  %i.dj = call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(272) %0) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i29

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i29: ; preds = %bb.z, %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !809
  %.not.i30 = icmp eq ptr %i.dl, null
  br i1 %.not.i30, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit33, label %bb.aa

bb.aa:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i29
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !823
  call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.dn, i1 noundef zeroext true)
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !809 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !830
  %i.dr = and i8 %i.dq, 2
  %.not.i3.i31 = icmp eq i8 %i.dr, 0
  br i1 %.not.i3.i31, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32, label %bb.ab, !prof !28

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32: ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !831
  %i.du = lshr i32 %1, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %i.dy = trunc i32 %1 to i8
  %i.dz = and i8 %i.dy, 7
  %i.ea = shl nuw i8 1, %i.dz
  %i.eb = or i8 %i.dx, %i.ea
  store i8 %i.eb, ptr %i.dw, align 1, !tbaa !16
  br label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit33

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit33: ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE12ensureValuesEv.exit.i29, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32
  %i.ec = load ptr, ptr %i.dg, align 8, !tbaa !2450
  %i.ed = sext i32 %1 to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.ec, i64 %i.ed ; 2 uses
  store i32 0, ptr %i.ee, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  br label %bb.ae

bb.ac:                                            ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !823
  call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %i.eh, i1 noundef zeroext true)
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !809 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 44
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !830
  %i.el = and i8 %i.ek, 2
  %.not.i3.i36 = icmp eq i8 %i.el, 0
  br i1 %.not.i3.i36, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit37, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #47
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit37: ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !831
  %i.eo = zext i32 %1 to i64                      ; 2 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ep ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16
  %i.es = and i64 %i.eo, 7
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = and i8 %i.eu, %i.er
  store i8 %i.ev, ptr %i.eq, align 1, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit28, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit33, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit37, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit
  %.1 = phi i1 [ false, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit ], [ true, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit ], [ %i.cc, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit28 ], [ true, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE9setNoCopyEiRKS2_.exit33 ], [ false, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK3re23RE25MatchESt17basic_string_viewIcSt11char_traitsIcEEmmNS0_6AnchorEPS4_i(ptr noundef nonnull align 8 dereferenceable(148), i64, ptr, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2891, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2894
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.bq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !2895 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !2896, !nonnull !81, !align !602 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2396 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2401, !nonnull !81, !align !602
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2402, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2403, !nonnull !81, !align !602
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !215, !range !83, !noundef !81
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !741
  %i.ag = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.w, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef 0, i1 noundef zeroext %i.ae)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit unwind label %bb.c

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit: ; preds = %bb.b
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !2404, !nonnull !81 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !83, !noundef !81
  %5 = trunc nuw i8 %i.ai to i1
  %6 = or i1 %i.ag, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.ah, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.aj, 1      ; 2 uses
  %i.am = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.ak) #38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !756 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.aw, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ay, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ba, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.be = icmp eq i32 %i.al, %i.bd
  br i1 %i.be, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.ak) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.i:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bi, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bk = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bm, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bj, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.aj, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %i.bp = add i64 %.024, -1
  %i.bq = and i64 %i.bp, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bq, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !2897

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2898, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2901
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.bt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !2902 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !2903, !nonnull !81, !align !602 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2418 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2421, !nonnull !81, !align !602
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2422, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2423, !nonnull !81, !align !602
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2424, !nonnull !81, !align !957
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !215, !range !83, !noundef !81
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !741
  %i.aj = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.w, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef %i.ae, i1 noundef zeroext %i.ah)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit unwind label %bb.c

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit: ; preds = %bb.b
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !2425, !nonnull !81 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82, !range !83, !noundef !81
  %5 = trunc nuw i8 %i.al to i1
  %6 = or i1 %i.aj, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.ak, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.c:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1      ; 2 uses
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = call ptr @__cxa_begin_catch(ptr %i.an) #38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !756 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.az = load i8, ptr %i.av, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.az, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bb, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.bd, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bf, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.bh = icmp eq i32 %i.ao, %i.bg
  br i1 %i.bh, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.bi = call ptr @__cxa_begin_catch(ptr %i.an) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.i:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bl, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bn = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bn, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bp, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bm, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.am, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %i.bs = add i64 %.024, -1
  %i.bt = and i64 %i.bs, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bt, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !2904

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1075", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2433 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2435, !nonnull !81, !align !602
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !741  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !742
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !752, !range !83, !noundef !81
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.l = load i8, ptr %i.k, align 1, !tbaa !753, !range !83, !noundef !81
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.t, %bb.d ], [ %i.o, %bb.c ], [ %1, %bb.a ]
  %i.u = sext i32 %.0.i.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 72
  %.val5 = load i32, ptr %i.y, align 8
  %i.z = icmp slt i32 %i.w, 0
  %i.aa = icmp sgt i32 %i.w, %.val5
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa, !prof !1951
  br i1 %or.cond.i, label %.critedge.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit, !prof !1951

.critedge.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.ab = sext i32 %i.w to i64
  %.val4 = load ptr, ptr %i.x, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !2905
  store i64 %i.ab, ptr %2, align 16, !tbaa !16, !noalias !2905
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %.val4, align 8, !tbaa !13, !noalias !2905
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17, !noalias !2905
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !16, !noalias !2905
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !16, !noalias !2905
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !2905
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.262) #47
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.critedge.i
  unreachable

bb.f:                                             ; preds = %.critedge.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.ah

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2439, !nonnull !81, !align !602
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2440, !nonnull !81, !align !602
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2441, !nonnull !81, !align !602
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.au = load i8, ptr %i.at, align 8, !tbaa !215, !range !83, !noundef !81
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr i8, ptr %i.aq, i64 8
  %.val = load ptr, ptr %i.aw, align 8, !tbaa !741
  %i.ax = tail call fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ao, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i32 noundef %i.w, i1 noundef zeroext %i.av)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !2442, !nonnull !81 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !82, !range !83, !noundef !81
  %4 = trunc nuw i8 %i.ba to i1
  %5 = or i1 %i.ax, %4
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.az, align 1, !tbaa !82
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2908, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2911
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !2912 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !2913, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.at, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.ar, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split, %bb.b
  %i.az = add i64 %.024, -1
  %i.ba = and i64 %i.az, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.ba, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !2914

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #38
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.il

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.ah = load ptr, ptr %2, align 8, !tbaa !693
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113
  %i.aj = load ptr, ptr %4, align 8, !tbaa !700
  store ptr %i.aj, ptr %40, align 8, !tbaa !715
  %i.ak = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !724
  %i.al = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 8 dereferenceable(94) %i.ai, ptr noundef nonnull align 8 dereferenceable(38) %1, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit unwind label %bb.m

common.resume:                                    ; preds = %.body, %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.merged55, %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314 ], [ %eh.lpad-body, %.body ], [ %i.af, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.l, %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadPatternERKN3re23RE2E.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #38
  br label %common.resume

_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i8 0, ptr %i.a, align 1, !tbaa !82
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE13getLocalCacheEvE5cache) ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2390 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.n, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit, !prof !161

bb.n:                                             ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit
  %i.ap = invoke fastcc noundef nonnull align 8 dereferenceable(136) ptr @_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7getSlowERNSR_25SingletonThreadLocalState10LocalCacheE(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit unwind label %bb.cf

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit: ; preds = %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit, %bb.n
  %i.aq = phi ptr [ %i.ao, %_ZN8facebook5velox4exec18LocalDecodedVectorC2ERKNS1_7EvalCtxERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb.exit ], [ %i.ap, %bb.n ] ; 16 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !690
  %i.as = load ptr, ptr %2, align 8, !tbaa !693   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp eq i64 %i.av, 32
  br i1 %i.aw, label %bb.o, label %bb.cg

bb.o:                                             ; preds = %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE3getEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2392 ; 3 uses
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !2395 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp eq ptr %i.ay, %i.az
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = sub nuw nsw i64 1, %i.bd
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.bf)
          to label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bg = icmp ugt i64 %i.bd, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.bh
  br i1 %.not.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store ptr %i.a, ptr %36, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  store ptr %i.i, ptr %.sroa.4332.0..sroa_idx, align 8
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5333.0..sroa_idx, align 8
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 4 uses
  store ptr %40, ptr %.sroa.6334.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 4 uses
  store ptr %i.aq, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !728, !range !83, !noundef !81
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.s

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %.0.in.pre.i.i.i.i = load i8, ptr %i.bi, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.s:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !729
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !730 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !731
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.u, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bv = and i32 %i.bq, 2147483584               ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %.not37.i.i.not.i.i.i.i665.not = icmp eq i32 %i.bv, 0
  br i1 %.not37.i.i.not.i.i.i.i665.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph667

bb.w:                                             ; preds = %.lr.ph667
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i666, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.bw
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph667, label %.critedge.i.i.i.i.i.i, !llvm.loop !733

.lr.ph667:                                        ; preds = %bb.v, %bb.w
  %indvars.iv.i.i.i.i666 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.bx = lshr exact i64 %indvars.iv.i.i.i.i666, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !233
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.w, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !733

.critedge.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.v
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.bq, %i.bv
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.cb = lshr i32 %i.bq, 6
  %i.cc = and i32 %i.bq, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.cd
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !233
  %.demorgan.i.i.i.i = or i64 %i.cg, %notmask.i40.i.i.i.i.i.i
  %i.ch = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.ci = zext i1 %i.ch to i16
  %i.cj = or disjoint i16 %i.ci, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph667, %bb.x, %.critedge.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.t ], [ 256, %bb.s ], [ 257, %bb.u ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.cj, %bb.x ], [ 256, %.lr.ph667 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.bi, align 4
  %i.ck = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.ck, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !730 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !729 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.lr.ph.i.i.i, label %.loopexit350

.lr.ph.i.i.i:                                     ; preds = %bb.y, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i
  %.028.i.i.i = phi i32 [ %i.ei, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i ], [ %i.co, %bb.y ] ; 4 uses
  %i.cq = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2918 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2921, !nonnull !81, !align !602
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2922, !nonnull !81, !align !602
  %i.cu = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2923, !nonnull !81, !align !602
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 160
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !221, !range !83, !noundef !81
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr i8, ptr %i.ct, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !741
  %i.cz = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.cr, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(148) %i.cs, ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i32 noundef 0, i1 noundef zeroext %i.cx)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i unwind label %bb.z

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.da = load ptr, ptr %36, align 8, !tbaa !2924, !nonnull !81 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !82, !range !83, !noundef !81
  %44 = trunc nuw i8 %i.db to i1
  %45 = or i1 %i.cz, %44
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %i.da, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, i32 } %i.dc, 1      ; 2 uses
  %i.df = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.dg = icmp eq i32 %i.de, %i.df
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = call ptr @__cxa_begin_catch(ptr %i.dd) #38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !756 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !13 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 152
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = icmp eq i64 %i.dn, 4
  br i1 %i.do, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i:         ; preds = %bb.aa
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.dp, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.dr, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.1.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i = icmp eq i8 %i.dt, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.2.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.1.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i = icmp eq i8 %i.dv, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.3.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %34) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.ai unwind label %bb.ak

.loopexit.i.i.i:                                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i, %tailrecurse.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, %bb.aa
  invoke void @__cxa_rethrow() #47
          to label %bb.ao unwind label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.dw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.dx = icmp eq i32 %i.de, %i.dw
  br i1 %i.dx, label %bb.ac, label %.body75

bb.ac:                                            ; preds = %bb.ab
  %i.dy = call ptr @__cxa_begin_catch(ptr %i.dd) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %33) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %33, align 8, !tbaa !411
  %.not.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i unwind label %.loopexit

bb.af:                                            ; preds = %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %33, align 8, !tbaa !411
  %.not.i4.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i4.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %33) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.an

bb.ah:                                            ; preds = %.loopexit.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ai:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.ed = load ptr, ptr %34, align 8, !tbaa !411
  %.not.i6.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i6.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke

bb.ak:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %34, align 8, !tbaa !411
  %.not.i8.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i8.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, %bb.ah
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ee, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i ], [ %i.ec, %bb.ah ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #50
  unreachable

bb.ao:                                            ; preds = %.loopexit.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i
  %i.ei = add i32 %.028.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ei, %i.cm
  br i1 %exitcond.not.i.i.i, label %.loopexit350, label %.lr.ph.i.i.i, !llvm.loop !2925

bb.ap:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.ej = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !729 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.en = load i32, ptr %i.em, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %36, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %35, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %32, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.ej, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i = icmp slt i32 %i.el, %i.en
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.eo = add i32 %i.el, 63                       ; 2 uses
  %i.ep = srem i32 %i.eo, 64
  %i.eq = sub nsw i32 %i.eo, %i.ep                ; 6 uses
  %i.er = and i32 %i.en, -64                      ; 4 uses
  %i.es = icmp slt i32 %i.er, %i.eq
  br i1 %i.es, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.et = and i32 %i.en, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.eu
  %i.ev = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.ew = sub nsw i32 %i.eq, %i.el                ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ez = sub nsw i32 64, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %i.ey, %i.fa
  %i.fc = and i64 %i.fb, %i.ev
  br label %.invoke

.invoke:                                          ; preds = %bb.cd, %bb.ar
  %i.fd = phi i64 [ %i.fc, %bb.ar ], [ %i.js, %bb.cd ]
  %i.fe = ashr i32 %i.en, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %32, i32 noundef %i.fe, i64 noundef %i.fd)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.aq
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.el, %i.eq
  br i1 %.not32.i.i.i.i.i.i, label %.noexc78, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = sdiv i32 %i.el, 64
  %i.fg = sub nsw i32 %i.eq, %i.el                ; 2 uses
  %i.fh = zext nneg i32 %i.fg to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.fh
  %i.fi = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.fj = sub nsw i32 64, %i.fg
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = shl i64 %i.fi, %i.fk
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %32, i32 noundef %i.ff, i64 noundef %i.fl)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %bb.at, %bb.as
  %i.fm = add nsw i32 %i.eq, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i = icmp sgt i32 %i.fm, %i.er
  br i1 %.not3346.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc78
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.en, %i.er
  br i1 %.not34.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, label %bb.cd

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc78, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.fn = phi i32 [ %i.jp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.fm, %.noexc78 ] ; 2 uses
  %.047.i.i.i.i.i.i = phi i32 [ %i.fn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.eq, %.noexc78 ] ; 2 uses
  %i.fo = sdiv i32 %.047.i.i.i.i.i.i, 64          ; 3 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.fr, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.au
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fs = shl nsw i32 %i.fo, 6
  br label %bb.bm

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ft = shl nsw i32 %i.fo, 6                    ; 2 uses
  %i.fu = add i32 %i.ft, 64
  %i.fv = sext i32 %i.fu to i64
  %.0.off.i.i.i.i.i.i = add i32 %.047.i.i.i.i.i.i, 127
  %.not59.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not59.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i

.lr.ph58.i.i.i.i.i.i.i:                           ; preds = %bb.au
  %i.fw = sext i32 %i.ft to i64
  br label %bb.av

bb.av:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i
  %.057.i.i.i.i.i.i.i = phi i64 [ %i.fw, %.lr.ph58.i.i.i.i.i.i.i ], [ %i.hq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fx = trunc i64 %.057.i.i.i.i.i.i.i to i32    ; 3 uses
  %i.fy = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2918 ; 2 uses
  %i.fz = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2921, !nonnull !81, !align !602
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2922, !nonnull !81, !align !602
  %i.gc = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2923, !nonnull !81, !align !602
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !221, !range !83, !noundef !81
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = getelementptr i8, ptr %i.gb, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !741
  %i.gh = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.fz, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(148) %i.ga, ptr %.val.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i32 noundef 0, i1 noundef zeroext %i.gf)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i unwind label %bb.aw

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.gi = load ptr, ptr %36, align 8, !tbaa !2924, !nonnull !81 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !82, !range !83, !noundef !81
  %47 = trunc nuw i8 %i.gj to i1
  %48 = or i1 %i.gh, %47
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %i.gi, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0      ; 2 uses
  %i.gm = extractvalue { ptr, i32 } %i.gk, 1      ; 2 uses
  %i.gn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.go = icmp eq i32 %i.gm, %i.gn
  br i1 %i.go, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gp = call ptr @__cxa_begin_catch(ptr %i.gl) #38
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !756 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !13 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 152
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !17
  %i.gw = icmp eq i64 %i.gv, 4
  br i1 %i.gw, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i: ; preds = %bb.ax
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 3
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i = icmp eq i8 %i.hd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %29) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.bf unwind label %bb.bh

.loopexit.i.i.i.i.i.i.i:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, %bb.ax
  invoke void @__cxa_rethrow() #47
          to label %bb.bl unwind label %bb.be

bb.ay:                                            ; preds = %bb.aw
  %i.he = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.hf = icmp eq i32 %i.gm, %i.he
  br i1 %i.hf, label %bb.az, label %.body75

bb.az:                                            ; preds = %bb.ay
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.gl) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %28) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.hh = load ptr, ptr %28, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %bb.az
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %28, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.bk

bb.be:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.hl = load ptr, ptr %29, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke

bb.bh:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %29, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, %bb.be
  %.pn.i18.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i ], [ %i.hk, %bb.be ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #50
  unreachable

bb.bl:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.hq = add nuw i64 %.057.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.hr = icmp ult i64 %i.hq, %i.fv
  br i1 %i.hr, label %bb.av, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2926

bb.bm:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01556.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i.i ], [ %i.jo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.hs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01556.i.i.i.i.i.i.i, i1 true)
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = or disjoint i32 %i.fs, %i.ht            ; 3 uses
  %i.hv = load ptr, ptr %.sroa.5333.0..sroa_idx, align 8, !tbaa !2918 ; 2 uses
  %i.hw = load ptr, ptr %.sroa.4332.0..sroa_idx, align 8, !tbaa !2921, !nonnull !81, !align !602
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load ptr, ptr %.sroa.6334.0..sroa_idx, align 8, !tbaa !2922, !nonnull !81, !align !602
  %i.hz = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !2923, !nonnull !81, !align !602
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 160
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !221, !range !83, !noundef !81
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = getelementptr i8, ptr %i.hy, i64 8
  %.val.i25.i.i.i.i.i.i.i = load ptr, ptr %i.id, align 8, !tbaa !741
  %i.ie = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.hw, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(148) %i.hx, ptr %.val.i25.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i32 noundef 0, i1 noundef zeroext %i.ic)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i unwind label %bb.bn

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i: ; preds = %bb.bm
  %i.if = load ptr, ptr %36, align 8, !tbaa !2924, !nonnull !81 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !82, !range !83, !noundef !81
  %50 = trunc nuw i8 %i.ig to i1
  %51 = or i1 %i.ie, %50
  %52 = zext i1 %51 to i8
  store i8 %52, ptr %i.if, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.ih = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0      ; 2 uses
  %i.ij = extractvalue { ptr, i32 } %i.ih, 1      ; 2 uses
  %i.ik = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.im = call ptr @__cxa_begin_catch(ptr %i.ii) #38
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !756 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 144
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !13 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 152
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !17
  %i.it = icmp eq i64 %i.is, 4
  br i1 %i.it, label %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i: ; preds = %bb.bo
  %i.iu = load i8, ptr %i.iq, align 1, !tbaa !16
  %or.cond.not.i.i.i29.i.i.i.i.i.i.i = icmp eq i8 %i.iu, 85
  br i1 %or.cond.not.i.i.i29.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !16
  %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i = icmp eq i8 %i.iw, 83
  br i1 %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !16
  %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i = icmp eq i8 %i.iy, 69
  br i1 %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !16
  %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i = icmp eq i8 %i.ja, 82
  br i1 %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i, label %.loopexit42.i.i.i.i.i.i.i

tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %31) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.bw unwind label %bb.by

.loopexit42.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i, %bb.bo
  invoke void @__cxa_rethrow() #47
          to label %bb.cc unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  %i.jb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.jc = icmp eq i32 %i.ij, %i.jb
  br i1 %i.jc, label %bb.bq, label %.body75

bb.bq:                                            ; preds = %bb.bp
  %i.jd = call ptr @__cxa_begin_catch(ptr %i.ii) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %30) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.je = load ptr, ptr %30, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i32.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke

bb.bt:                                            ; preds = %bb.bq
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %i.jg = load ptr, ptr %30, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i34.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i: ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.cb

bb.bv:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bw:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i
  %i.ji = load ptr, ptr %31, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit

bb.by:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  %i.jk = load ptr, ptr %31, align 8, !tbaa !411
  %.not.i38.i.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i38.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #38
  br label %bb.ca

bb.ca:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i, %bb.bv
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.jj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i ], [ %i.jh, %bb.bv ]
  invoke void @__cxa_end_catch()
          to label %.body75 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #50
  unreachable

bb.cc:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit26.i.i.i.i.i.i.i
  %i.jn = add i64 %.01556.i.i.i.i.i.i.i, -1
  %i.jo = and i64 %i.jn, %.01556.i.i.i.i.i.i.i    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.bm, !llvm.loop !2927

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.au, %.lr.ph.i.i.i.i.i.i
  %i.jp = add nsw i32 %i.fn, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.jp, %i.er
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2928

bb.cd:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.jq = and i32 %i.en, 63
  %i.jr = zext nneg i32 %i.jq to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.jr
  %i.js = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  br label %.invoke

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke, %._crit_edge.i.i.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  br label %.loopexit350

.loopexit350:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  %i.jt = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ce, label %bb.ij

bb.ce:                                            ; preds = %.loopexit350
  %i.jv = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.jx)
          to label %bb.ij unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %bb.n
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_EUlvE_Lb1EED2Ev.exit314

.loopexit:                                        ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.invoke
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body75

.loopexit.split-lp.loopexit:                      ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i.invoke
  %lpad.loopexit352 = landingpad { ptr, i32 }
          cleanup
  br label %.body75
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
.body89:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86, %bb.cl
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.la, %bb.cl ], [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i86 ] ; 3 uses
  %i.lb = extractvalue { ptr, i32 } %eh.lpad-body90, 1
  %i.lc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %bb.cm, label %.body204

bb.cm:                                            ; preds = %.body89
  %i.le = extractvalue { ptr, i32 } %eh.lpad-body90, 0
  %i.lf = call ptr @__cxa_begin_catch(ptr %i.le) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %42) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.lg = load ptr, ptr %42, align 8, !tbaa !411
  %.not.i91 = icmp eq ptr %i.lg, null
  br i1 %.not.i91, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92: ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  invoke void @__cxa_end_catch()
          to label %bb.fi unwind label %bb.cr

bb.cp:                                            ; preds = %bb.cm
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %42, align 8, !tbaa !411
  %.not.i93 = icmp eq ptr %i.li, null
  br i1 %.not.i93, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94: ; preds = %bb.cp, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.il

bb.cr:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body204

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %bb.ci
  %i.lk = add nuw nsw i64 %i.kj, 1                ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !2392 ; 2 uses
  %i.ln = load ptr, ptr %i.aq, align 8, !tbaa !2395 ; 2 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 4                 ; 3 uses
  %.not = icmp ult i64 %i.kj, %i.lr
  br i1 %.not, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.ls = sub nuw nsw i64 %i.lk, %i.lr
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.ls)
          to label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.lt = icmp ult i64 %i.lk, %i.lr
  br i1 %i.lt, label %bb.cu, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98

bb.cu:                                            ; preds = %bb.ct
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.lk ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.lm, %i.lu
  br i1 %.not.i.i95, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96: ; preds = %bb.cu
  store ptr %i.lu, ptr %i.ll, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98: ; preds = %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i96, %bb.cu, %bb.ct, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store ptr %i.a, ptr %25, align 8
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  store ptr %i.i, ptr %.sroa.4336.0..sroa_idx, align 8
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %0, ptr %.sroa.5337.0..sroa_idx, align 8
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 4 uses
  store ptr %40, ptr %.sroa.6338.0..sroa_idx, align 8
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 32 ; 4 uses
  store ptr %i.aq, ptr %.sroa.7339.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 4 uses
  store ptr %41, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !728, !range !83, !noundef !81
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200, label %bb.cv

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98
  %.0.in.pre.i.i.i.i201 = load i8, ptr %i.lv, align 4, !tbaa !82, !range !83
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101

bb.cv:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit98
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !729
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.cw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cw:                                            ; preds = %bb.cv
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !730 ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !731
  %i.mg = icmp eq i32 %i.md, %i.mf
  br i1 %i.mg, label %bb.cx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cx:                                            ; preds = %bb.cw
  %i.mh = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %.not.i.i.i.i.i192 = icmp sgt i32 %i.md, 0
  br i1 %.not.i.i.i.i.i192, label %bb.cy, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

bb.cy:                                            ; preds = %bb.cx
  %i.mi = and i32 %i.md, 2147483584               ; 3 uses
  %i.mj = zext nneg i32 %i.mi to i64
  %.not37.i.i.not.i.i.i.i194660.not = icmp eq i32 %i.mi, 0
  br i1 %.not37.i.i.not.i.i.i.i194660.not, label %.critedge.i.i.i.i.i.i195, label %.lr.ph

bb.cz:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i199 = add nuw nsw i64 %indvars.iv.i.i.i.i193661, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i194 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i199, %i.mj
  br i1 %.not37.i.i.not.i.i.i.i194, label %.lr.ph, label %.critedge.i.i.i.i.i.i195, !llvm.loop !733

.lr.ph:                                           ; preds = %bb.cy, %bb.cz
  %indvars.iv.i.i.i.i193661 = phi i64 [ %indvars.iv.next.i.i.i.i199, %bb.cz ], [ 0, %bb.cy ] ; 2 uses
  %i.mk = lshr exact i64 %indvars.iv.i.i.i.i193661, 3
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mk
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !233
  %i.mn = icmp eq i64 %i.mm, -1
  br i1 %i.mn, label %bb.cz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, !llvm.loop !733

.critedge.i.i.i.i.i.i195:                         ; preds = %bb.cz, %bb.cy
  %.not38.i.i.i.i.i.i196 = icmp eq i32 %i.md, %i.mi
  br i1 %.not38.i.i.i.i.i.i196, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, label %bb.da

bb.da:                                            ; preds = %.critedge.i.i.i.i.i.i195
  %i.mo = lshr i32 %i.md, 6
  %i.mp = and i32 %i.md, 63
  %i.mq = zext nneg i32 %i.mp to i64
  %notmask.i40.i.i.i.i.i.i197 = shl nsw i64 -1, %i.mq
  %i.mr = zext nneg i32 %i.mo to i64
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !233
  %.demorgan.i.i.i.i198 = or i64 %i.mt, %notmask.i40.i.i.i.i.i.i197
  %i.mu = icmp eq i64 %.demorgan.i.i.i.i198, -1
  %i.mv = zext i1 %i.mu to i16
  %i.mw = or disjoint i16 %i.mv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99: ; preds = %.lr.ph, %bb.da, %.critedge.i.i.i.i.i.i195, %bb.cx, %bb.cw, %bb.cv
  %.sroa.0.0.insert.ext.i.i.i.i100 = phi i16 [ 256, %bb.cw ], [ 256, %bb.cv ], [ 257, %bb.cx ], [ 257, %.critedge.i.i.i.i.i.i195 ], [ %i.mw, %bb.da ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i100, ptr %i.lv, align 4
  %i.mx = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i100 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200
  %.0.in.i.i.i.i102 = phi i8 [ %.0.in.pre.i.i.i.i201, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i200 ], [ %i.mx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i99 ]
  %.0.i.i.i.i103 = trunc nuw i8 %.0.in.i.i.i.i102 to i1
  br i1 %.0.i.i.i.i103, label %bb.db, label %bb.ds

bb.db:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !730 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !729 ; 2 uses
  %i.nc = icmp slt i32 %i.nb, %i.mz
  br i1 %i.nc, label %.lr.ph.i.i.i169, label %.loopexit379

.lr.ph.i.i.i169:                                  ; preds = %bb.db, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i
  %.028.i.i.i170 = phi i32 [ %i.oy, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i ], [ %i.nb, %bb.db ] ; 4 uses
  %i.nd = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2941 ; 2 uses
  %i.ne = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2944, !nonnull !81, !align !602
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ng = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2945, !nonnull !81, !align !602
  %i.nh = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2946, !nonnull !81, !align !602
  %i.ni = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2947, !nonnull !81, !align !602
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !233
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 160
  %i.nm = load i8, ptr %i.nl, align 8, !tbaa !221, !range !83, !noundef !81
  %i.nn = trunc nuw i8 %i.nm to i1
  %i.no = getelementptr i8, ptr %i.ng, i64 8
  %.val.i.i.i.i171 = load ptr, ptr %i.no, align 8, !tbaa !741
  %i.np = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ne, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(148) %i.nf, ptr %.val.i.i.i.i171, ptr noundef nonnull align 8 dereferenceable(24) %i.nh, i32 noundef %i.nk, i1 noundef zeroext %i.nn)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i unwind label %bb.dc

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i: ; preds = %.lr.ph.i.i.i169
  %i.nq = load ptr, ptr %25, align 8, !tbaa !2948, !nonnull !81 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !82, !range !83, !noundef !81
  %53 = trunc nuw i8 %i.nr to i1
  %54 = or i1 %i.np, %53
  %55 = zext i1 %54 to i8
  store i8 %55, ptr %i.nq, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i

bb.dc:                                            ; preds = %.lr.ph.i.i.i169
  %i.ns = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { ptr, i32 } %i.ns, 1      ; 2 uses
  %i.nv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.nw = icmp eq i32 %i.nu, %i.nv
  br i1 %i.nw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.nx = call ptr @__cxa_begin_catch(ptr %i.nt) #38
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !756 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 144
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !13 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 152
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !17
  %i.oe = icmp eq i64 %i.od, 4
  br i1 %i.oe, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179, label %.loopexit.i.i.i177

.lr.ph.i.i.i.preheader.i.preheader.i.i.i179:      ; preds = %bb.dd
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i180 = icmp eq i8 %i.of, 85
  br i1 %or.cond.not.i.i.i.i.i.i180, label %tailrecurse.i.i.i.i.i.i.i181, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.i.i.i181:                     ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i182 = icmp eq i8 %i.oh, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i182, label %tailrecurse.i.i.i.i.1.i.i.i183, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.1.i.i.i183:                   ; preds = %tailrecurse.i.i.i.i.i.i.i181
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i184 = icmp eq i8 %i.oj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i184, label %tailrecurse.i.i.i.i.2.i.i.i185, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.2.i.i.i185:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i183
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 3
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i186 = icmp eq i8 %i.ol, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i186, label %tailrecurse.i.i.i.i.3.i.i.i187, label %.loopexit.i.i.i177

tailrecurse.i.i.i.i.3.i.i.i187:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i185
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dl unwind label %bb.dn

.loopexit.i.i.i177:                               ; preds = %tailrecurse.i.i.i.i.2.i.i.i185, %tailrecurse.i.i.i.i.1.i.i.i183, %tailrecurse.i.i.i.i.i.i.i181, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i179, %bb.dd
  invoke void @__cxa_rethrow() #47
          to label %bb.dr unwind label %bb.dk

bb.de:                                            ; preds = %bb.dc
  %i.om = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.on = icmp eq i32 %i.nu, %i.om
  br i1 %i.on, label %bb.df, label %.body204

bb.df:                                            ; preds = %bb.de
  %i.oo = call ptr @__cxa_begin_catch(ptr %i.nt) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i170, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %bb.df
  %i.op = load ptr, ptr %22, align 8, !tbaa !411
  %.not.i.i.i.i174 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i174, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175: ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i unwind label %.loopexit374

bb.di:                                            ; preds = %bb.df
  %i.oq = landingpad { ptr, i32 }
          cleanup
  %i.or = load ptr, ptr %22, align 8, !tbaa !411
  %.not.i4.i.i.i172 = icmp eq ptr %i.or, null
  br i1 %.not.i4.i.i.i172, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.dq

bb.dk:                                            ; preds = %.loopexit.i.i.i177
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dl:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i187
  %i.ot = load ptr, ptr %23, align 8, !tbaa !411
  %.not.i6.i.i.i190 = icmp eq ptr %i.ot, null
  br i1 %.not.i6.i.i.i190, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i191: ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke

bb.dn:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i187
  %i.ou = landingpad { ptr, i32 }
          cleanup
  %i.ov = load ptr, ptr %23, align 8, !tbaa !411
  %.not.i8.i.i.i188 = icmp eq ptr %i.ov, null
  br i1 %.not.i8.i.i.i188, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189: ; preds = %bb.do, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.dp

bb.dp:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189, %bb.dk
  %.pn.i.i.i.i178 = phi { ptr, i32 } [ %i.ou, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i189 ], [ %i.os, %bb.dk ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #50
  unreachable

bb.dr:                                            ; preds = %.loopexit.i.i.i177
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i175.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i
  %i.oy = add i32 %.028.i.i.i170, 1               ; 2 uses
  %exitcond.not.i.i.i176 = icmp eq i32 %i.oy, %i.mz
  br i1 %exitcond.not.i.i.i176, label %.loopexit379, label %.lr.ph.i.i.i169, !llvm.loop !2949

bb.ds:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i101
  %i.oz = load ptr, ptr %1, align 8, !tbaa !732   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !729 ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !730 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i104 = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %25, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i104, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i105 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %24, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i105, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i106, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i107 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.oz, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i107, align 8
  %.not.i.i.i.i.i.i108 = icmp slt i32 %i.pb, %i.pd
  br i1 %.not.i.i.i.i.i.i108, label %bb.dt, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.pe = add i32 %i.pb, 63                       ; 2 uses
  %i.pf = srem i32 %i.pe, 64
  %i.pg = sub nsw i32 %i.pe, %i.pf                ; 6 uses
  %i.ph = and i32 %i.pd, -64                      ; 4 uses
  %i.pi = icmp slt i32 %i.ph, %i.pg
  br i1 %i.pi, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.pj = and i32 %i.pd, 63
  %i.pk = zext nneg i32 %i.pj to i64
  %notmask.i.i.i.i.i.i.i167 = shl nsw i64 -1, %i.pk
  %i.pl = xor i64 %notmask.i.i.i.i.i.i.i167, -1
  %i.pm = sub nsw i32 %i.pg, %i.pb                ; 2 uses
  %i.pn = zext nneg i32 %i.pm to i64
  %notmask.i.i.i.i.i.i.i.i168 = shl nsw i64 -1, %i.pn
  %i.po = xor i64 %notmask.i.i.i.i.i.i.i.i168, -1
  %i.pp = sub nsw i32 64, %i.pm
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl i64 %i.po, %i.pq
  %i.ps = and i64 %i.pr, %i.pl
  br label %.invoke606

.invoke606:                                       ; preds = %bb.fg, %bb.du
  %i.pt = phi i64 [ %i.ps, %bb.du ], [ %i.uo, %bb.fg ]
  %i.pu = ashr i32 %i.pd, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.pu, i64 noundef %i.pt)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dt
  %.not32.i.i.i.i.i.i109 = icmp eq i32 %i.pb, %i.pg
  br i1 %.not32.i.i.i.i.i.i109, label %.noexc207, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pv = sdiv i32 %i.pb, 64
  %i.pw = sub nsw i32 %i.pg, %i.pb                ; 2 uses
  %i.px = zext nneg i32 %i.pw to i64
  %notmask.i.i35.i.i.i.i.i.i110 = shl nsw i64 -1, %i.px
  %i.py = xor i64 %notmask.i.i35.i.i.i.i.i.i110, -1
  %i.pz = sub nsw i32 64, %i.pw
  %i.qa = zext nneg i32 %i.pz to i64
  %i.qb = shl i64 %i.py, %i.qa
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.pv, i64 noundef %i.qb)
          to label %.noexc207 unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.dw, %bb.dv
  %i.qc = add nsw i32 %i.pg, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i111 = icmp sgt i32 %i.qc, %i.ph
  br i1 %.not3346.i.i.i.i.i.i111, label %._crit_edge.i.i.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i112

._crit_edge.i.i.i.i.i.i115:                       ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, %.noexc207
  %.not34.i.i.i.i.i.i116 = icmp eq i32 %i.pd, %i.ph
  br i1 %.not34.i.i.i.i.i.i116, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, label %bb.fg

.lr.ph.i.i.i.i.i.i112:                            ; preds = %.noexc207, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.qd = phi i32 [ %i.ul, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.qc, %.noexc207 ] ; 2 uses
  %.047.i.i.i.i.i.i113 = phi i32 [ %i.qd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.pg, %.noexc207 ] ; 2 uses
  %i.qe = sdiv i32 %.047.i.i.i.i.i.i113, 64       ; 3 uses
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.oz, i64 %i.qf
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !233 ; 2 uses
  switch i64 %i.qh, label %.lr.ph.i.i.i.i.i.i.i144 [
    i64 -1, label %bb.dx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i144:                          ; preds = %.lr.ph.i.i.i.i.i.i112
  %i.qi = shl nsw i32 %i.qe, 6
  br label %bb.ep

bb.dx:                                            ; preds = %.lr.ph.i.i.i.i.i.i112
  %i.qj = shl nsw i32 %i.qe, 6                    ; 2 uses
  %i.qk = add i32 %i.qj, 64
  %i.ql = sext i32 %i.qk to i64
  %.0.off.i.i.i.i.i.i118 = add i32 %.047.i.i.i.i.i.i113, 127
  %.not59.i.i.i.i.i.i.i119 = icmp ult i32 %.0.off.i.i.i.i.i.i118, 64
  br i1 %.not59.i.i.i.i.i.i.i119, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i120

.lr.ph58.i.i.i.i.i.i.i120:                        ; preds = %bb.dx
  %i.qm = sext i32 %i.qj to i64
  br label %bb.dy

bb.dy:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i120
  %.057.i.i.i.i.i.i.i121 = phi i64 [ %i.qm, %.lr.ph58.i.i.i.i.i.i.i120 ], [ %i.sj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.qn = trunc i64 %.057.i.i.i.i.i.i.i121 to i32 ; 3 uses
  %i.qo = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2941 ; 2 uses
  %i.qp = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2944, !nonnull !81, !align !602
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qr = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2945, !nonnull !81, !align !602
  %i.qs = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2946, !nonnull !81, !align !602
  %i.qt = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2947, !nonnull !81, !align !602
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !233
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qo, i64 160
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !221, !range !83, !noundef !81
  %i.qy = trunc nuw i8 %i.qx to i1
  %i.qz = getelementptr i8, ptr %i.qr, i64 8
  %.val.i.i.i.i.i.i.i.i122 = load ptr, ptr %i.qz, align 8, !tbaa !741
  %i.ra = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.qp, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(148) %i.qq, ptr %.val.i.i.i.i.i.i.i.i122, ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i32 noundef %i.qv, i1 noundef zeroext %i.qy)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i unwind label %bb.dz

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i: ; preds = %bb.dy
  %i.rb = load ptr, ptr %25, align 8, !tbaa !2948, !nonnull !81 ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !82, !range !83, !noundef !81
  %56 = trunc nuw i8 %i.rc to i1
  %57 = or i1 %i.ra, %56
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %i.rb, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.rd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.re = extractvalue { ptr, i32 } %i.rd, 0      ; 2 uses
  %i.rf = extractvalue { ptr, i32 } %i.rd, 1      ; 2 uses
  %i.rg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.rh = icmp eq i32 %i.rf, %i.rg
  br i1 %i.rh, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ri = call ptr @__cxa_begin_catch(ptr %i.re) #38
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !756 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 144
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !13 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 152
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !17
  %i.rp = icmp eq i64 %i.ro, 4
  br i1 %i.rp, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131, label %.loopexit.i.i.i.i.i.i.i129

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131: ; preds = %bb.ea
  %i.rq = load i8, ptr %i.rm, align 1, !tbaa !16
  %or.cond.not.i.i.i.i.i.i.i.i.i.i132 = icmp eq i8 %i.rq, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i132, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.i.i.i.i.i.i.i133:             ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !16
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i134 = icmp eq i8 %i.rs, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i134, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135:           ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rm, i64 2
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !16
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i136 = icmp eq i8 %i.ru, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i136, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137:           ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 3
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !16
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i138 = icmp eq i8 %i.rw, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i138, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139, label %.loopexit.i.i.i.i.i.i.i129

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139:           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ei unwind label %bb.ek

.loopexit.i.i.i.i.i.i.i129:                       ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i137, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i135, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i133, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i131, %bb.ea
  invoke void @__cxa_rethrow() #47
          to label %bb.eo unwind label %bb.eh

bb.eb:                                            ; preds = %bb.dz
  %i.rx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ry = icmp eq i32 %i.rf, %i.rx
  br i1 %i.ry, label %bb.ec, label %.body204

bb.ec:                                            ; preds = %bb.eb
  %i.rz = call ptr @__cxa_begin_catch(ptr %i.re) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.qn, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.sa = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i127 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i.i.i.i.i.i.i127, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128: ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit

bb.ef:                                            ; preds = %bb.ec
  %i.sb = landingpad { ptr, i32 }
          cleanup
  %i.sc = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i125 = icmp eq ptr %i.sc, null
  br i1 %.not.i19.i.i.i.i.i.i.i125, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126: ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.en

bb.eh:                                            ; preds = %.loopexit.i.i.i.i.i.i.i129
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139
  %i.se = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i142 = icmp eq ptr %i.se, null
  br i1 %.not.i21.i.i.i.i.i.i.i142, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i143: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke

bb.ek:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i139
  %i.sf = landingpad { ptr, i32 }
          cleanup
  %i.sg = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i140 = icmp eq ptr %i.sg, null
  br i1 %.not.i23.i.i.i.i.i.i.i140, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141: ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.em

bb.em:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141, %bb.eh
  %.pn.i18.i.i.i.i.i.i.i130 = phi { ptr, i32 } [ %i.sf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i141 ], [ %i.sd, %bb.eh ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.en

bb.en:                                            ; preds = %bb.em, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126
  %i.sh = landingpad { ptr, i32 }
          catch ptr null
  %i.si = extractvalue { ptr, i32 } %i.sh, 0
  call void @__clang_call_terminate(ptr %i.si) #50
  unreachable

bb.eo:                                            ; preds = %.loopexit.i.i.i.i.i.i.i129
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i128.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i.i.i
  %i.sj = add nuw i64 %.057.i.i.i.i.i.i.i121, 1   ; 2 uses
  %i.sk = icmp ult i64 %i.sj, %i.ql
  br i1 %i.sk, label %bb.dy, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2950

bb.ep:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i144
  %.01556.i.i.i.i.i.i.i145 = phi i64 [ %i.qh, %.lr.ph.i.i.i.i.i.i.i144 ], [ %i.uk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.sl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01556.i.i.i.i.i.i.i145, i1 true)
  %i.sm = trunc nuw nsw i64 %i.sl to i32
  %i.sn = or disjoint i32 %i.qi, %i.sm            ; 3 uses
  %i.so = load ptr, ptr %.sroa.5337.0..sroa_idx, align 8, !tbaa !2941 ; 2 uses
  %i.sp = load ptr, ptr %.sroa.4336.0..sroa_idx, align 8, !tbaa !2944, !nonnull !81, !align !602
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sr = load ptr, ptr %.sroa.6338.0..sroa_idx, align 8, !tbaa !2945, !nonnull !81, !align !602
  %i.ss = load ptr, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !2946, !nonnull !81, !align !602
  %i.st = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !2947, !nonnull !81, !align !602
  %i.su = load i64, ptr %i.st, align 8, !tbaa !233
  %i.sv = trunc i64 %i.su to i32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.so, i64 160
  %i.sx = load i8, ptr %i.sw, align 8, !tbaa !221, !range !83, !noundef !81
  %i.sy = trunc nuw i8 %i.sx to i1
  %i.sz = getelementptr i8, ptr %i.sr, i64 8
  %.val.i25.i.i.i.i.i.i.i146 = load ptr, ptr %i.sz, align 8, !tbaa !741
  %i.ta = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.sp, i32 noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(148) %i.sq, ptr %.val.i25.i.i.i.i.i.i.i146, ptr noundef nonnull align 8 dereferenceable(24) %i.ss, i32 noundef %i.sv, i1 noundef zeroext %i.sy)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i unwind label %bb.eq

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i: ; preds = %bb.ep
  %i.tb = load ptr, ptr %25, align 8, !tbaa !2948, !nonnull !81 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !82, !range !83, !noundef !81
  %59 = trunc nuw i8 %i.tc to i1
  %60 = or i1 %i.ta, %59
  %61 = zext i1 %60 to i8
  store i8 %61, ptr %i.tb, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.td = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.te = extractvalue { ptr, i32 } %i.td, 0      ; 2 uses
  %i.tf = extractvalue { ptr, i32 } %i.td, 1      ; 2 uses
  %i.tg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.th = icmp eq i32 %i.tf, %i.tg
  br i1 %i.th, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ti = call ptr @__cxa_begin_catch(ptr %i.te) #38
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !756 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 144
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !13 ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 152
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !17
  %i.tp = icmp eq i64 %i.to, 4
  br i1 %i.tp, label %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154, label %.loopexit42.i.i.i.i.i.i.i152

.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154: ; preds = %bb.er
  %i.tq = load i8, ptr %i.tm, align 1, !tbaa !16
  %or.cond.not.i.i.i29.i.i.i.i.i.i.i155 = icmp eq i8 %i.tq, 85
  br i1 %or.cond.not.i.i.i29.i.i.i.i.i.i.i155, label %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156:           ; preds = %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !16
  %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i157 = icmp eq i8 %i.ts, 83
  br i1 %or.cond.not.i.i.i29.1.i.i.i.i.i.i.i157, label %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158:         ; preds = %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tm, i64 2
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !16
  %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i159 = icmp eq i8 %i.tu, 69
  br i1 %or.cond.not.i.i.i29.2.i.i.i.i.i.i.i159, label %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160:         ; preds = %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 3
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !16
  %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i161 = icmp eq i8 %i.tw, 82
  br i1 %or.cond.not.i.i.i29.3.i.i.i.i.i.i.i161, label %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162, label %.loopexit42.i.i.i.i.i.i.i152

tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162:         ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ez unwind label %bb.fb

.loopexit42.i.i.i.i.i.i.i152:                     ; preds = %tailrecurse.i.i.i.i30.2.i.i.i.i.i.i.i160, %tailrecurse.i.i.i.i30.1.i.i.i.i.i.i.i158, %tailrecurse.i.i.i.i30.i.i.i.i.i.i.i156, %.lr.ph.i.i.i.preheader.i27.preheader.i.i.i.i.i.i.i154, %bb.er
  invoke void @__cxa_rethrow() #47
          to label %bb.ff unwind label %bb.ey

bb.es:                                            ; preds = %bb.eq
  %i.tx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ty = icmp eq i32 %i.tf, %i.tx
  br i1 %i.ty, label %bb.et, label %.body204

bb.et:                                            ; preds = %bb.es
  %i.tz = call ptr @__cxa_begin_catch(ptr %i.te) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sn, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.eu unwind label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.ua = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i149 = icmp eq ptr %i.ua, null
  br i1 %.not.i32.i.i.i.i.i.i.i149, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150: ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke

bb.ew:                                            ; preds = %bb.et
  %i.ub = landingpad { ptr, i32 }
          cleanup
  %i.uc = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i147 = icmp eq ptr %i.uc, null
  br i1 %.not.i34.i.i.i.i.i.i.i147, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148: ; preds = %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.fe

bb.ey:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i152
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ez:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162
  %i.ue = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i165 = icmp eq ptr %i.ue, null
  br i1 %.not.i36.i.i.i.i.i.i.i165, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166: ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i150, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp375.loopexit

bb.fb:                                            ; preds = %tailrecurse.i.i.i.i30.3.i.i.i.i.i.i.i162
  %i.uf = landingpad { ptr, i32 }
          cleanup
  %i.ug = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i38.i.i.i.i.i.i.i163 = icmp eq ptr %i.ug, null
  br i1 %.not.i38.i.i.i.i.i.i.i163, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164: ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.fd

bb.fd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164, %bb.ey
  %.pn.i.i.i.i.i.i.i.i153 = phi { ptr, i32 } [ %i.uf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit39.i.i.i.i.i.i.i164 ], [ %i.ud, %bb.ey ]
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148
  %i.uh = landingpad { ptr, i32 }
          catch ptr null
  %i.ui = extractvalue { ptr, i32 } %i.uh, 0
  call void @__clang_call_terminate(ptr %i.ui) #50
  unreachable

bb.ff:                                            ; preds = %.loopexit42.i.i.i.i.i.i.i152
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i166.invoke, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit26.i.i.i.i.i.i.i
  %i.uj = add i64 %.01556.i.i.i.i.i.i.i145, -1
  %i.uk = and i64 %i.uj, %.01556.i.i.i.i.i.i.i145 ; 2 uses
  %.not.i.i.i.i.i.i.i151 = icmp eq i64 %i.uk, 0
  br i1 %.not.i.i.i.i.i.i.i151, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.ep, !llvm.loop !2951

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.dx, %.lr.ph.i.i.i.i.i.i112
  %i.ul = add nsw i32 %i.qd, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i114 = icmp sgt i32 %i.ul, %i.ph
  br i1 %.not33.i.i.i.i.i.i114, label %._crit_edge.i.i.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i112, !llvm.loop !2952

bb.fg:                                            ; preds = %._crit_edge.i.i.i.i.i.i115
  %i.um = and i32 %i.pd, 63
  %i.un = zext nneg i32 %i.um to i64
  %notmask.i36.i.i.i.i.i.i117 = shl nsw i64 -1, %i.un
  %i.uo = xor i64 %notmask.i36.i.i.i.i.i.i117, -1
  br label %.invoke606

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke606, %._crit_edge.i.i.i.i.i.i115, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %.loopexit379

.loopexit379:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.up = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.uq = trunc nuw i8 %i.up to i1
  br i1 %i.uq, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.loopexit379
  %i.ur = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.ut)
          to label %bb.fi unwind label %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp

bb.fi:                                            ; preds = %.loopexit379, %bb.fh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %bb.ij

bb.fj:                                            ; preds = %.noexc84._crit_edge, %bb.cg
  %i.uu = phi ptr [ %.pre484, %.noexc84._crit_edge ], [ %i.ka, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #38
  %i.uv = load ptr, ptr %4, align 8, !tbaa !700
  store ptr %i.uv, ptr %43, align 8, !tbaa !715
  %i.uw = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store ptr null, ptr %i.uw, align 8, !tbaa !724
  %i.ux = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %43)
          to label %bb.fk unwind label %bb.fl
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  br i1 %i.aaq, label %bb.gx, label %.body303

bb.gx:                                            ; preds = %bb.gw
  %i.aar = call ptr @__cxa_begin_catch(ptr %i.zw) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %8) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.zu, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.gy unwind label %bb.ha

bb.gy:                                            ; preds = %bb.gx
  %i.aas = load ptr, ptr %8, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i244 = icmp eq ptr %i.aas, null
  br i1 %.not.i.i.i.i.i.i.i.i244, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245: ; preds = %bb.gz, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.ha:                                            ; preds = %bb.gx
  %i.aat = landingpad { ptr, i32 }
          cleanup
  %i.aau = load ptr, ptr %8, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i242 = icmp eq ptr %i.aau, null
  br i1 %.not.i19.i.i.i.i.i.i.i242, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243: ; preds = %bb.hb, %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.hi

bb.hc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i246
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i256
  %i.aaw = load ptr, ptr %9, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i259 = icmp eq ptr %i.aaw, null
  br i1 %.not.i21.i.i.i.i.i.i.i259, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260: ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.hf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i256
  %i.aax = landingpad { ptr, i32 }
          cleanup
  %i.aay = load ptr, ptr %9, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i257 = icmp eq ptr %i.aay, null
  br i1 %.not.i23.i.i.i.i.i.i.i257, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258: ; preds = %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.hh

bb.hh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258, %bb.hc
  %.pn.i18.i.i.i.i.i.i.i247 = phi { ptr, i32 } [ %i.aax, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i258 ], [ %i.aav, %bb.hc ]
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i243
  %i.aaz = landingpad { ptr, i32 }
          catch ptr null
  %i.aba = extractvalue { ptr, i32 } %i.aaz, 0
  call void @__clang_call_terminate(ptr %i.aba) #50
  unreachable

bb.hj:                                            ; preds = %.loopexit.i.i.i.i.i.i.i246
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i260, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i245
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp360.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %bb.gt
  %i.abb = add nuw i64 %.055.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.abc = icmp ult i64 %i.abb, %i.zs
  br i1 %i.abc, label %bb.gt, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !2954

bb.hk:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i261
  %.01554.i.i.i.i.i.i.i = phi i64 [ %i.zo, %.lr.ph.i.i.i.i.i.i.i261 ], [ %i.aeh, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.abd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01554.i.i.i.i.i.i.i, i1 true)
  %i.abe = trunc nuw nsw i64 %i.abd to i32
  %i.abf = or disjoint i32 %i.zp, %i.abe          ; 5 uses
  %i.abg = load ptr, ptr %.sroa.4341.0..sroa_idx, align 8, !tbaa !2955 ; 3 uses
  %i.abh = load ptr, ptr %16, align 8, !tbaa !2957, !nonnull !81, !align !602
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !741 ; 5 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !742
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 58
  %i.abn = load i8, ptr %i.abm, align 2, !tbaa !752, !range !83, !noundef !81
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abj, i64 59
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !753, !range !83, !noundef !81
  %i.abr = trunc nuw i8 %i.abq to i1
  br i1 %i.abr, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abj, i64 64
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hl
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !755
  %i.abw = sext i32 %i.abf to i64
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.hn, %bb.hm, %bb.hk
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aby, %bb.hn ], [ %i.abt, %bb.hm ], [ %i.abf, %bb.hk ]
  %i.abz = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.abz
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !233 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abg, i64 8 ; 2 uses
  %i.acd = getelementptr i8, ptr %i.abg, i64 72
  %.val5.i.i.i.i.i.i.i = load i32, ptr %i.acd, align 8
  %i.ace = icmp slt i64 %i.acb, 0
  %i.acf = sext i32 %.val5.i.i.i.i.i.i.i to i64
  %i.acg = icmp sgt i64 %i.acb, %i.acf
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ace, i1 true, i1 %i.acg, !prof !1951
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i, !prof !1951

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.acc, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !2958
  store i64 %i.acb, ptr %6, align 16, !tbaa !16, !noalias !2958
  %i.ach = load ptr, ptr %.val4.i.i.i.i.i.i.i, align 8, !tbaa !13, !noalias !2958
  %i.aci = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i.i.i, i64 8
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !17, !noalias !2958
  store ptr %i.ach, ptr %i.zh, align 16, !tbaa !16, !noalias !2958
  store i64 %i.acj, ptr %i.zi, align 8, !tbaa !16, !noalias !2958
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %6)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.hq

.noexc.i.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2958
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.262) #47
          to label %bb.ho unwind label %bb.hp

bb.ho:                                            ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.hp:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ack = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.acl = load ptr, ptr %7, align 8, !tbaa !13   ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.zj
  br i1 %i.acm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hp
  %i.acn = load i64, ptr %i.zj, align 8, !tbaa !16
  %i.aco = add i64 %i.acn, 1
  call void @_ZdlPvm(ptr noundef %i.acl, i64 noundef %i.aco) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.body.i.i.i.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i
  %i.acp = load ptr, ptr %.sroa.6343.0..sroa_idx, align 8, !tbaa !2961, !nonnull !81, !align !602
  %i.acq = load ptr, ptr %.sroa.7344.0..sroa_idx, align 8, !tbaa !2962, !nonnull !81, !align !602
  %i.acr = load ptr, ptr %.sroa.8345.0..sroa_idx, align 8, !tbaa !2963, !nonnull !81, !align !602
  %i.acs = trunc nuw nsw i64 %i.acb to i32
  %i.act = getelementptr inbounds nuw i8, ptr %i.abg, i64 160
  %i.acu = load i8, ptr %i.act, align 8, !tbaa !221, !range !83, !noundef !81
  %i.acv = trunc nuw i8 %i.acu to i1
  %i.acw = getelementptr i8, ptr %i.acq, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.acw, align 8, !tbaa !741
  %i.acx = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.acp, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(148) %i.acc, ptr %.val.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.acr, i32 noundef %i.acs, i1 noundef zeroext %i.acv)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i unwind label %bb.hq

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i
  %i.acy = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8, !tbaa !2964, !nonnull !81 ; 2 uses
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !82, !range !83, !noundef !81
  %62 = trunc nuw i8 %i.acz to i1
  %63 = or i1 %i.acx, %62
  %64 = zext i1 %63 to i8
  store i8 %64, ptr %i.acy, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.hq:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i
  %i.ada = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ada, %bb.hq ], [ %i.ack, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.adb = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0 ; 2 uses
  %i.adc = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 1 ; 2 uses
  %i.add = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ade = icmp eq i32 %i.adc, %i.add
  br i1 %i.ade, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %.body.i.i.i.i.i.i
  %i.adf = call ptr @__cxa_begin_catch(ptr %i.adb) #38
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !756 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 144
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !13 ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adh, i64 152
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !17
  %i.adm = icmp eq i64 %i.adl, 4
  br i1 %i.adm, label %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i: ; preds = %bb.hr
  %i.adn = load i8, ptr %i.adj, align 1, !tbaa !16
  %or.cond.not.i.i.i27.i.i.i.i.i.i.i = icmp eq i8 %i.adn, 85
  br i1 %or.cond.not.i.i.i27.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adj, i64 1
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !16
  %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i = icmp eq i8 %i.adp, 83
  br i1 %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adj, i64 2
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !16
  %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i = icmp eq i8 %i.adr, 69
  br i1 %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adj, i64 3
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !16
  %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i = icmp eq i8 %i.adt, 82
  br i1 %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.hz unwind label %bb.ib

.loopexit40.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, %bb.hr
  invoke void @__cxa_rethrow() #47
          to label %bb.if unwind label %bb.hy

bb.hs:                                            ; preds = %.body.i.i.i.i.i.i
  %i.adu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.adv = icmp eq i32 %i.adc, %i.adu
  br i1 %i.adv, label %bb.ht, label %.body303

bb.ht:                                            ; preds = %bb.hs
  %i.adw = call ptr @__cxa_begin_catch(ptr %i.adb) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %10) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.abf, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.hu unwind label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.adx = load ptr, ptr %10, align 8, !tbaa !411
  %.not.i30.i.i.i.i.i.i.i = icmp eq ptr %i.adx, null
  br i1 %.not.i30.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i: ; preds = %bb.hv, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.ht
  %i.ady = landingpad { ptr, i32 }
          cleanup
  %i.adz = load ptr, ptr %10, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i262 = icmp eq ptr %i.adz, null
  br i1 %.not.i32.i.i.i.i.i.i.i262, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263: ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.ie

bb.hy:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %bb.id

bb.hz:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.aeb = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i268 = icmp eq ptr %i.aeb, null
  br i1 %.not.i34.i.i.i.i.i.i.i268, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269: ; preds = %bb.ia, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.ib:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.aec = landingpad { ptr, i32 }
          cleanup
  %i.aed = load ptr, ptr %11, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i266 = icmp eq ptr %i.aed, null
  br i1 %.not.i36.i.i.i.i.i.i.i266, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267: ; preds = %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.id

bb.id:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267, %bb.hy
  %.pn.i.i.i.i.i.i.i.i265 = phi { ptr, i32 } [ %i.aec, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i267 ], [ %i.aea, %bb.hy ]
  invoke void @__cxa_end_catch()
          to label %.body303 unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i263
  %i.aee = landingpad { ptr, i32 }
          catch ptr null
  %i.aef = extractvalue { ptr, i32 } %i.aee, 0
  call void @__clang_call_terminate(ptr %i.aef) #50
  unreachable

bb.if:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i269, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp360.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi.exit.i.i.i.i.i.i
  %i.aeg = add i64 %.01554.i.i.i.i.i.i.i, -1
  %i.aeh = and i64 %i.aeg, %.01554.i.i.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i.i.i264 = icmp eq i64 %i.aeh, 0
  br i1 %.not.i.i.i.i.i.i.i264, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.hk, !llvm.loop !2965

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %bb.gs, %bb.gr
  %i.aei = add nsw i32 %i.zk, 64                  ; 2 uses
  %.not33.i.i.i.i.i.i235 = icmp sgt i32 %i.aei, %i.yl
  br i1 %.not33.i.i.i.i.i.i235, label %._crit_edge.i.i.i.i.i.i236, label %bb.gr, !llvm.loop !2966

bb.ig:                                            ; preds = %._crit_edge.i.i.i.i.i.i236
  %i.aej = and i32 %i.yh, 63
  %i.aek = zext nneg i32 %i.aej to i64
  %notmask.i36.i.i.i.i.i.i238 = shl nsw i64 -1, %i.aek
  %i.ael = xor i64 %notmask.i36.i.i.i.i.i.i238, -1
  br label %.invoke607

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i: ; preds = %.invoke607, %._crit_edge.i.i.i.i.i.i236, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.loopexit364

.loopexit364:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiiST_.exit.i.i.i, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.aem = load i8, ptr %i.a, align 1, !tbaa !82, !range !83, !noundef !81
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %.loopexit364
  %i.aeo = load ptr, ptr %i.ak, align 8, !tbaa !741
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 48
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !2409
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE26acquireSharedStringBuffersEPKNS0_10BaseVectorE(ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef %i.aeq)
          to label %bb.ii unwind label %.loopexit.split-lp360.loopexit.split-lp.loopexit.split-lp

.body204:                                         ; preds = %bb.eb, %bb.es, %bb.de, %.loopexit374, %.loopexit.split-lp375.loopexit.split-lp.loopexit, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp375.loopexit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173, %bb.dp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126, %bb.em, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148, %bb.fd, %bb.cr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94, %.body89
  %.merged57 = phi { ptr, i32 } [ %i.lh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit94 ], [ %eh.lpad-body90, %.body89 ], [ %i.lj, %bb.cr ], [ %i.td, %bb.es ], [ %.pn.i.i.i.i178, %bb.dp ], [ %i.oq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i173 ], [ %i.ns, %bb.de ], [ %.pn.i18.i.i.i.i.i.i.i130, %bb.em ], [ %i.sb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i126 ], [ %.pn.i.i.i.i.i.i.i.i153, %bb.fd ], [ %i.ub, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i148 ], [ %lpad.loopexit.split-lp386, %.loopexit.split-lp375.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit376, %.loopexit374 ], [ %lpad.loopexit381, %.loopexit.split-lp375.loopexit ], [ %lpad.loopexit385, %.loopexit.split-lp375.loopexit.split-lp.loopexit ], [ %i.rd, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %.body75

.loopexit359:                                     ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %.body303

end_hunk_6
begin_hunk_7_@_ZNK5folly11ThreadLocalINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEvvE7makeTlpEv:bb.a
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.bp, %bb.x ], [ %i.ak, %bb.k ]
  call fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EED2Ev(i8 0, ptr nonnull %i.e) #38
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %common.resume

_ZN5folly14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS3_17SelectivityVectorERSt6vectorISt10shared_ptrINS3_10BaseVectorEESaISE_EERKSC_IKNS3_4TypeEERNS3_4exec7EvalCtxERSE_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEvvE5resetEPSV_.exit: ; preds = %bb.n, %.noexc13.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i.i, %bb.t, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.f

bb.y:                                             ; preds = %bb.c, %bb.b
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 136) #49
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EED2Ev(i8 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nuw i8 %.0.val to i1
  br i1 %i.a, label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.val = load ptr, ptr %.8.val, align 8, !tbaa !2980 ; 5 uses
  %i.b = icmp eq ptr %.val.val, null
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  tail call void @_ZN5folly6detail25SingletonThreadLocalState8TrackingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.c) #38
  %.val.i.i.i = load ptr, ptr %.val.val, align 8, !tbaa !2395 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %.val1.i.i.i = load ptr, ptr %i.d, align 8
  %i.e = ptrtoint ptr %.val1.i.i.i to i64
  %i.f = ptrtoint ptr %.val.i.i.i to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.g) #49
  br label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.val, i64 noundef 136) #49
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit: ; preds = %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENUlPvNS_18TLPDestructionModeEE_8__invokeES10_S11_(ptr noundef %0, i32 %1) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5folly6detail25SingletonThreadLocalState8TrackingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.b) #38
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !2395 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.f) #49
  br label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #49
  br label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit

_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit: ; preds = %bb.a, %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !650, !range !83, !noundef !81
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !2990
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !2992
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !2867
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !2980
  invoke void %.val.val(ptr noundef %.val1.val, i32 noundef 0)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit unwind label %bb.c, !inline_history !2993

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #38 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #38, !inline_history !2994
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E9_M_invokeERKSt9_Any_dataOS0_OS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2867
  %.val3 = load ptr, ptr %1, align 8, !tbaa !158
  %.val4 = load i32, ptr %2, align 4, !tbaa !2871
  tail call void %.val(ptr noundef %.val3, i32 noundef %.val4), !inline_history !2995
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E10_M_managerERSt9_Any_dataRKS1A_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #43 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEDaRKT0_EUlS10_S11_E_, ptr %0, align 8, !tbaa !2874
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !158
  store i64 %.val.i, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2996, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2999
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.bq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3000 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3001, !nonnull !81, !align !602 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2918 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2921, !nonnull !81, !align !602
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2922, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2923, !nonnull !81, !align !602
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !221, !range !83, !noundef !81
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.af, align 8, !tbaa !741
  %i.ag = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.w, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef 0, i1 noundef zeroext %i.ae)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit unwind label %bb.c

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit: ; preds = %bb.b
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !2924, !nonnull !81 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !83, !noundef !81
  %5 = trunc nuw i8 %i.ai to i1
  %6 = or i1 %i.ag, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.ah, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.c:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i32 } %i.aj, 1      ; 2 uses
  %i.am = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.ak) #38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !756 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.au = load i64, ptr %i.at, align 8, !tbaa !17
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.aw, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ay, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ba, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.be = icmp eq i32 %i.al, %i.bd
  br i1 %i.be, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.bf = call ptr @__cxa_begin_catch(ptr %i.ak) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.i:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bi, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bk = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bk, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bm, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bj, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.aj, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %i.bp = add i64 %.024, -1
  %i.bq = and i64 %i.bp, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bq, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3002

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTVN8facebook5velox10BaseVectorE, i64 16), ptr %0, align 8, !tbaa !116
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !809  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc.i unwind label %bb.c, !inline_history !810

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !811
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !116
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.c, !inline_history !810

bb.c:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #50
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !124
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !127
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #38, !inline_history !790
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #38, !inline_history !790
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !161

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #38
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3003, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3006
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.bu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3007 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3008, !nonnull !81, !align !602 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2941 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2944, !nonnull !81, !align !602
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2945, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2946, !nonnull !81, !align !602
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2947, !nonnull !81, !align !602
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !233
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !221, !range !83, !noundef !81
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr i8, ptr %i.z, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !741
  %i.ak = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.w, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i32 noundef %i.af, i1 noundef zeroext %i.ai)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit unwind label %bb.c

_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit: ; preds = %bb.b
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !2948, !nonnull !81 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !82, !range !83, !noundef !81
  %5 = trunc nuw i8 %i.am to i1
  %6 = or i1 %i.ak, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %i.al, align 1, !tbaa !82
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.c:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 0      ; 2 uses
  %i.ap = extractvalue { ptr, i32 } %i.an, 1      ; 2 uses
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ao) #38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !756 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp eq i64 %i.ay, 4
  br i1 %i.az, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ba, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.bc, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.be, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.bg, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.bh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.bi = icmp eq i32 %i.ap, %i.bh
  br i1 %i.bi, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.bj = call ptr @__cxa_begin_catch(ptr %i.ao) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.i:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.bm, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bo = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.bo, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.bq, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.bn, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.bl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.an, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14
  %i.bt = add i64 %.024, -1
  %i.bu = and i64 %i.bt, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.bu, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3009

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1075", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2955 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2957, !nonnull !81, !align !602
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !741  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !742
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.i = load i8, ptr %i.h, align 2, !tbaa !752, !range !83, !noundef !81
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.l = load i8, ptr %i.k, align 1, !tbaa !753, !range !83, !noundef !81
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.t, %bb.d ], [ %i.o, %bb.c ], [ %1, %bb.a ]
  %i.u = sext i32 %.0.i.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !233  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.b, i64 72
  %.val5 = load i32, ptr %i.y, align 8
  %i.z = icmp slt i64 %i.w, 0
  %i.aa = sext i32 %.val5 to i64
  %i.ab = icmp sgt i64 %i.w, %i.aa
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.ab, !prof !1951
  br i1 %or.cond.i, label %.critedge.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit, !prof !1951

.critedge.i:                                      ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %.val4 = load ptr, ptr %i.x, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !3010
  store i64 %i.w, ptr %2, align 16, !tbaa !16, !noalias !3010
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %.val4, align 8, !tbaa !13, !noalias !3010
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !17, !noalias !3010
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !16, !noalias !3010
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !16, !noalias !3010
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !3010
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.262) #47
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.critedge.i
  unreachable

bb.f:                                             ; preds = %.critedge.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %i.ah

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2961, !nonnull !81, !align !602
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2962, !nonnull !81, !align !602
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2963, !nonnull !81, !align !602
  %i.at = trunc nuw nsw i64 %i.w to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.av = load i8, ptr %i.au, align 8, !tbaa !221, !range !83, !noundef !81
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr i8, ptr %i.aq, i64 8
  %.val = load ptr, ptr %i.ax, align 8, !tbaa !741
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ao, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.x, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i32 noundef %i.at, i1 noundef zeroext %i.aw)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2964, !nonnull !81 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !82, !range !83, !noundef !81
  %4 = trunc nuw i8 %i.bb to i1
  %5 = or i1 %i.ay, %4
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.ba, align 1, !tbaa !82
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE1_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3013, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3016
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3017 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3018, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE1_clEi(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.av, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16 ], [ %i.at, %bb.k ]
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

.loopexit18:                                      ; preds = %bb.e, %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %.merged.i = phi { ptr, i32 } [ %i.ar, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12 ], [ %.pn.i, %bb.p ], [ %i.t, %bb.e ]
  resume { ptr, i32 } %.merged.i

bb.q:                                             ; preds = %bb.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #50
  unreachable

bb.r:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split, %bb.b
  %i.az = add i64 %.024, -1
  %i.ba = and i64 %i.az, %.024                    ; 2 uses
  %.not10 = icmp eq i64 %i.ba, 0
  br i1 %.not10, label %.loopexit17, label %bb.b, !llvm.loop !3019

.loopexit17:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_134Re2SearchAndExtractConstantPatternIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE1_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.be unwind label %bb.bg

.loopexit.i.i.i.i.i.i.i:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, %bb.aw
  invoke void @__cxa_rethrow() #47
          to label %bb.bk unwind label %bb.bd

bb.ax:                                            ; preds = %bb.av
  %i.gm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.gn = icmp eq i32 %i.fu, %i.gm
  br i1 %i.gn, label %bb.ay, label %.body55

bb.ay:                                            ; preds = %bb.ax
  %i.go = call ptr @__cxa_begin_catch(ptr %i.ft) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gp = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.bj

bb.bd:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.gt = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, %bb.bd
  %.pn.i18.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i ], [ %i.gs, %bb.bd ]
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #50
  unreachable

bb.bk:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %bb.au
  %i.gy = add nuw i64 %.055.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.fp
  br i1 %i.gz, label %bb.au, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !3024

bb.bl:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01554.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ha = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01554.i.i.i.i.i.i.i, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = or disjoint i32 %i.fm, %i.hb            ; 6 uses
  %i.hd = load ptr, ptr %25, align 8, !tbaa !3025 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.hf = load ptr, ptr %.sroa.4195.0..sroa_idx, align 8, !tbaa !3028, !nonnull !81, !align !602
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !741 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !742
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 58
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !752, !range !83, !noundef !81
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 59
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !753, !range !83, !noundef !81
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !755
  %i.hu = sext i32 %i.hc to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn, %bb.bl
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hw, %bb.bo ], [ %i.hr, %bb.bn ], [ %i.hc, %bb.bl ]
  %i.hx = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.hy, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %16, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ff, align 8
  invoke void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.by

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.hz = load i8, ptr %i.fg, align 8, !tbaa !34
  switch i8 %i.hz, label %bb.br [
    i8 2, label %bb.bp
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i
  ], !prof !2324

bb.bp:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ia = load ptr, ptr %.sroa.5196.0..sroa_idx, align 8, !tbaa !3029, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ia, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bt unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ib = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bw

bb.br:                                            ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc9.i.i.i.i.i.i.i unwind label %bb.bv

.noexc9.i.i.i.i.i.i.i:                            ; preds = %bb.br
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.ic = load ptr, ptr %15, align 8, !tbaa !32
  %i.id = load ptr, ptr %.sroa.7198.0..sroa_idx, align 8, !tbaa !3030, !nonnull !81, !align !602
  %i.ie = load ptr, ptr %.sroa.8199.0..sroa_idx, align 8, !tbaa !3031, !nonnull !81, !align !602
  %i.if = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3032, !nonnull !81, !align !602
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !226, !range !83, !noundef !81
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = getelementptr i8, ptr %i.ie, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !741
  %i.ik = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.id, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(148) %i.ic, ptr %.val.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.if, i32 noundef 0, i1 noundef zeroext %i.ii)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i
  %i.il = load ptr, ptr %.sroa.6197.0..sroa_idx, align 8, !tbaa !3033, !nonnull !81 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !82, !range !83, !noundef !81
  %32 = trunc nuw i8 %i.im to i1
  %33 = or i1 %i.ik, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %i.il, align 1, !tbaa !82
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %i.in = load i8, ptr %i.fg, align 8, !tbaa !34
  %cond.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.in, 2
  %i.io = load ptr, ptr %15, align 8              ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.io, null
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i, !prof !91
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.bu, !prof !91

bb.bu:                                            ; preds = %bb.bt
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !13 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 24 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !16
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #49
  br label %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i

_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 40) #49
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i

bb.bv:                                            ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i, %bb.br
  %i.iv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ib, %bb.bq ], [ %i.iv, %bb.bv ]
  %i.iw = load i8, ptr %i.fg, align 8, !tbaa !34
  %cond.i.i10.i.i.i.i.i.i.i = icmp ne i8 %i.iw, 2
  %i.ix = load ptr, ptr %15, align 8
  %.not.i.i.i11.i.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  %or.cond.i.i12.i.i.i.i.i.i.i = select i1 %cond.i.i10.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i11.i.i.i.i.i.i.i, !prof !91
  br i1 %or.cond.i.i12.i.i.i.i.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i, label %bb.bx, !prof !91

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.by:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.by, %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.iy, %bb.by ], [ %.pn.i.i.i.i.i.i.i, %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i ] ; 3 uses
  %i.iz = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0 ; 2 uses
  %i.ja = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 1 ; 2 uses
  %i.jb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.body.i.i.i.i.i.i
  %i.jd = call ptr @__cxa_begin_catch(ptr %i.iz) #38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !756 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 144
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !13 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jk = icmp eq i64 %i.jj, 4
  br i1 %i.jk, label %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i: ; preds = %bb.bz
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !16
  %or.cond.not.i.i.i27.i.i.i.i.i.i.i = icmp eq i8 %i.jl, 85
  br i1 %or.cond.not.i.i.i27.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !16
  %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i = icmp eq i8 %i.jn, 83
  br i1 %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i = icmp eq i8 %i.jp, 69
  br i1 %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !16
  %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i = icmp eq i8 %i.jr, 82
  br i1 %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

.loopexit40.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, %bb.bz
  invoke void @__cxa_rethrow() #47
          to label %bb.cn unwind label %bb.cg

bb.ca:                                            ; preds = %.body.i.i.i.i.i.i
  %i.js = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.jt = icmp eq i32 %i.ja, %i.js
  br i1 %i.jt, label %bb.cb, label %.body55

bb.cb:                                            ; preds = %bb.ca
  %i.ju = call ptr @__cxa_begin_catch(ptr %i.iz) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.jv = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i30.i.i.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i30.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cb
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %i.jx = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i32.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.cm

bb.cg:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.jz = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i34.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, %bb.cg
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ka, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i ], [ %i.jy, %bb.cg ]
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #50
  unreachable

end_hunk_8
begin_hunk_9_@_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EED2Ev:bb.a

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.val, i64 noundef 136) #49
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit: ; preds = %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENUlPvNS_18TLPDestructionModeEE_8__invokeES10_S11_(ptr noundef %0, i32 %1) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5folly6detail25SingletonThreadLocalState8TrackingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.b) #38
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !2395 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.f) #49
  br label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #49
  br label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit

_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit: ; preds = %bb.a, %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !650, !range !83, !noundef !81
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !3063
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !3065
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !2867
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !3053
  invoke void %.val.val(ptr noundef %.val1.val, i32 noundef 0)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit unwind label %bb.c, !inline_history !3066

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #38 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #38, !inline_history !3067
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E9_M_invokeERKSt9_Any_dataOS0_OS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2867
  %.val3 = load ptr, ptr %1, align 8, !tbaa !158
  %.val4 = load i32, ptr %2, align 4, !tbaa !2871
  tail call void %.val(ptr noundef %.val3, i32 noundef %.val4), !inline_history !3068
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E10_M_managerERSt9_Any_dataRKS1A_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #43 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEDaRKT0_EUlS10_S11_E_, ptr %0, align 8, !tbaa !2874
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !158
  store i64 %.val.i, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected", align 8   ; 11 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3025   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3028, !nonnull !81, !align !602
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !742
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %i.j = load i8, ptr %i.i, align 2, !tbaa !752, !range !83, !noundef !81
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 59
  %i.m = load i8, ptr %i.l, align 1, !tbaa !753, !range !83, !noundef !81
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !755
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.u, %bb.d ], [ %i.p, %bb.c ], [ %1, %bb.a ]
  %i.v = sext i32 %.0.i.i to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.x, align 8
  call void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !34
  switch i8 %i.z, label %bb.g [
    i8 2, label %bb.e
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !2324

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3029, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc9 unwind label %bb.k

.noexc9:                                          ; preds = %bb.g
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3030, !nonnull !81, !align !602
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3031, !nonnull !81, !align !602
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3032, !nonnull !81, !align !602
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !226, !range !83, !noundef !81
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.an, align 8, !tbaa !741
  %i.ao = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.af, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.ad, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i32 noundef 0, i1 noundef zeroext %i.am)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3033, !nonnull !81 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !82, !range !83, !noundef !81
  %4 = trunc nuw i8 %i.ar to i1
  %5 = or i1 %i.ao, %4
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.aq, align 1, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.as = load i8, ptr %i.y, align 8, !tbaa !34
  %cond.i.i = icmp ne i8 %i.as, 2
  %i.at = load ptr, ptr %2, align 8
  %.not.i.i.i = icmp eq ptr %i.at, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i, !prof !91
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.k:                                             ; preds = %bb.g, %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.au, %bb.k ]
  %i.av = load i8, ptr %i.y, align 8, !tbaa !34
  %cond.i.i10 = icmp ne i8 %i.av, 2
  %i.aw = load ptr, ptr %2, align 8
  %.not.i.i.i11 = icmp eq ptr %i.aw, null
  %or.cond.i.i12 = select i1 %cond.i.i10, i1 true, i1 %.not.i.i.i11, !prof !91
  br i1 %or.cond.i.i12, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13, label %bb.m, !prof !91

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3069, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3072
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3073 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3074, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

end_hunk_9
begin_hunk_10_@_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.l = load i8, ptr %i.k, align 1, !tbaa !753, !range !83, !noundef !81
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.t, %bb.d ], [ %i.o, %bb.c ], [ %1, %bb.a ]
  %i.u = sext i32 %.0.i.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3079, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !741 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !742
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 58
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !752, !range !83, !noundef !81
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 59
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !753, !range !83, !noundef !81
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !755
  %i.ao = sext i32 %1 to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, %bb.f, %bb.g
  %.0.i.i15 = phi i32 [ %i.aq, %bb.g ], [ %i.al, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit ]
  %i.ar = sext i32 %.0.i.i15 to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ar ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.at, align 8
  call void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !34
  switch i8 %i.av, label %bb.j [
    i8 2, label %bb.h
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !2324

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3080, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc17 unwind label %bb.s

.noexc17:                                         ; preds = %bb.j
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 64
  %.val14 = load i32, ptr %i.ba, align 8
  %i.bb = icmp slt i32 %i.w, 0
  %i.bc = icmp sgt i32 %i.w, %.val14
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc, !prof !1951
  br i1 %or.cond.i, label %.critedge.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit, !prof !1951

.critedge.i:                                      ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.bd = sext i32 %i.w to i64
  %.val13 = load ptr, ptr %i.az, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !3081
  store i64 %i.bd, ptr %2, align 16, !tbaa !16, !noalias !3081
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %.val13, align 8, !tbaa !13, !noalias !3081
  %i.bg = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17, !noalias !3081
  store ptr %i.bf, ptr %i.be, align 16, !tbaa !16, !noalias !3081
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !16, !noalias !3081
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %2)
          to label %.noexc18 unwind label %bb.s

.noexc18:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !3081
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.262) #47
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc18
  unreachable

bb.l:                                             ; preds = %.noexc18
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.body

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3084, !nonnull !81, !align !602 ; 6 uses
  %i.br = add nuw nsw i32 %i.w, 1
  %i.bs = zext nneg i32 %i.br to i64              ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2392 ; 2 uses
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !2395 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 4                 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.bs
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.cb = sub nuw nsw i64 %i.bs, %i.bz
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.cb)
          to label %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge unwind label %bb.s

._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !3084
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.cc = icmp ugt i64 %i.bz, %i.bs
  br i1 %i.cc, label %bb.o, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.cd
  br i1 %.not.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.o
  store ptr %i.cd, ptr %i.bt, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit: ; preds = %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.o, %bb.n
  %i.ce = phi ptr [ %.pre, %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.bq, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bq, %bb.o ], [ %i.bq, %bb.n ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !3085, !nonnull !81, !align !602
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !3086, !nonnull !81, !align !602
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !226, !range !83, !noundef !81
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr i8, ptr %i.ci, i64 8
  %.val = load ptr, ptr %i.cm, align 8, !tbaa !741
  %i.cn = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.cg, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.az, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i32 noundef %i.w, i1 noundef zeroext %i.cl)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !3087, !nonnull !81 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !82, !range !83, !noundef !81
  %6 = trunc nuw i8 %i.cq to i1
  %7 = or i1 %i.cn, %6
  %8 = zext i1 %7 to i8
  store i8 %8, ptr %i.cp, align 1, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p
  %i.cr = load i8, ptr %i.au, align 8, !tbaa !34
  %cond.i.i = icmp ne i8 %i.cr, 2
  %i.cs = load ptr, ptr %4, align 8
  %.not.i.i.i = icmp eq ptr %i.cs, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i, !prof !91
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.r, !prof !91

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.s:                                             ; preds = %bb.m, %.critedge.i, %bb.j, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.ct, %bb.s ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.cu = load i8, ptr %i.au, align 8, !tbaa !34
  %cond.i.i20 = icmp ne i8 %i.cu, 2
  %i.cv = load ptr, ptr %4, align 8
  %.not.i.i.i21 = icmp eq ptr %i.cv, null
  %or.cond.i.i22 = select i1 %cond.i.i20, i1 true, i1 %.not.i.i.i21, !prof !91
  br i1 %or.cond.i.i22, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23, label %bb.t, !prof !91

bb.t:                                             ; preds = %.body
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23: ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3088, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3091
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3092 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3093, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIiE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.be unwind label %bb.bg

.loopexit.i.i.i.i.i.i.i:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i, %bb.aw
  invoke void @__cxa_rethrow() #47
          to label %bb.bk unwind label %bb.bd

bb.ax:                                            ; preds = %bb.av
  %i.gm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.gn = icmp eq i32 %i.fu, %i.gm
  br i1 %i.gn, label %bb.ay, label %.body55

bb.ay:                                            ; preds = %bb.ax
  %i.go = call ptr @__cxa_begin_catch(ptr %i.ft) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gp = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = load ptr, ptr %17, align 8, !tbaa !411
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.bj

bb.bd:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.be:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.gt = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %18, align 8, !tbaa !411
  %.not.i23.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i, %bb.bd
  %.pn.i18.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i ], [ %i.gs, %bb.bd ]
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #50
  unreachable

bb.bk:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clImEEDaSR_.exit.sink.split.i.i.i.i.i.i.i, %bb.au
  %i.gy = add nuw i64 %.055.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.fp
  br i1 %i.gz, label %bb.au, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !3099

bb.bl:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01554.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ha = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01554.i.i.i.i.i.i.i, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = or disjoint i32 %i.fm, %i.hb            ; 6 uses
  %i.hd = load ptr, ptr %25, align 8, !tbaa !3100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  %i.hf = load ptr, ptr %.sroa.4195.0..sroa_idx, align 8, !tbaa !3103, !nonnull !81, !align !602
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !741 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !742
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 58
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !752, !range !83, !noundef !81
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 59
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !753, !range !83, !noundef !81
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !755
  %i.hu = sext i32 %i.hc to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn, %bb.bl
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hw, %bb.bo ], [ %i.hr, %bb.bn ], [ %i.hc, %bb.bl ]
  %i.hx = sext i32 %.0.i.i.i.i.i.i.i.i.i to i64
  %i.hy = getelementptr inbounds [16 x i8], ptr %i.hj, i64 %i.hx ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.hy, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %16, align 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ff, align 8
  invoke void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.by

.noexc.i.i.i.i.i.i:                               ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  %i.hz = load i8, ptr %i.fg, align 8, !tbaa !34
  switch i8 %i.hz, label %bb.br [
    i8 2, label %bb.bp
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i
  ], !prof !2324

bb.bp:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.ia = load ptr, ptr %.sroa.5196.0..sroa_idx, align 8, !tbaa !3104, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ia, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bt unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ib = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bw

bb.br:                                            ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc9.i.i.i.i.i.i.i unwind label %bb.bv

.noexc9.i.i.i.i.i.i.i:                            ; preds = %bb.br
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.ic = load ptr, ptr %15, align 8, !tbaa !32
  %i.id = load ptr, ptr %.sroa.7198.0..sroa_idx, align 8, !tbaa !3105, !nonnull !81, !align !602
  %i.ie = load ptr, ptr %.sroa.8199.0..sroa_idx, align 8, !tbaa !3106, !nonnull !81, !align !602
  %i.if = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3107, !nonnull !81, !align !602
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !231, !range !83, !noundef !81
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = getelementptr i8, ptr %i.ie, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ij, align 8, !tbaa !741
  %i.ik = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.id, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(148) %i.ic, ptr %.val.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.if, i32 noundef 0, i1 noundef zeroext %i.ii)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i
  %i.il = load ptr, ptr %.sroa.6197.0..sroa_idx, align 8, !tbaa !3108, !nonnull !81 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !82, !range !83, !noundef !81
  %32 = trunc nuw i8 %i.im to i1
  %33 = or i1 %i.ik, %32
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %i.il, align 1, !tbaa !82
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %i.in = load i8, ptr %i.fg, align 8, !tbaa !34
  %cond.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.in, 2
  %i.io = load ptr, ptr %15, align 8              ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.io, null
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i, !prof !91
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.bu, !prof !91

bb.bu:                                            ; preds = %bb.bt
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !13 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 24 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !16
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #49
  br label %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i

_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 40) #49
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i

bb.bv:                                            ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit.i.i.i.i.i.i.i, %bb.br
  %i.iv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bq
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ib, %bb.bq ], [ %i.iv, %bb.bv ]
  %i.iw = load i8, ptr %i.fg, align 8, !tbaa !34
  %cond.i.i10.i.i.i.i.i.i.i = icmp ne i8 %i.iw, 2
  %i.ix = load ptr, ptr %15, align 8
  %.not.i.i.i11.i.i.i.i.i.i.i = icmp eq ptr %i.ix, null
  %or.cond.i.i12.i.i.i.i.i.i.i = select i1 %cond.i.i10.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i11.i.i.i.i.i.i.i, !prof !91
  br i1 %or.cond.i.i12.i.i.i.i.i.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i, label %bb.bx, !prof !91

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6Status11deleteStateEv.exit.i.i.i.i.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.i.i.i.i.i.i.i

bb.by:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit.i.i.i.i.i.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.by, %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.iy, %bb.by ], [ %.pn.i.i.i.i.i.i.i, %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13.i.i.i.i.i.i.i ] ; 3 uses
  %i.iz = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0 ; 2 uses
  %i.ja = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 1 ; 2 uses
  %i.jb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.body.i.i.i.i.i.i
  %i.jd = call ptr @__cxa_begin_catch(ptr %i.iz) #38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !756 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 144
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !13 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 152
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jk = icmp eq i64 %i.jj, 4
  br i1 %i.jk, label %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i: ; preds = %bb.bz
  %i.jl = load i8, ptr %i.jh, align 1, !tbaa !16
  %or.cond.not.i.i.i27.i.i.i.i.i.i.i = icmp eq i8 %i.jl, 85
  br i1 %or.cond.not.i.i.i27.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !16
  %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i = icmp eq i8 %i.jn, 83
  br i1 %or.cond.not.i.i.i27.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !16
  %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i = icmp eq i8 %i.jp, 69
  br i1 %or.cond.not.i.i.i27.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !16
  %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i = icmp eq i8 %i.jr, 82
  br i1 %or.cond.not.i.i.i27.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i, label %.loopexit40.i.i.i.i.i.i.i

tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ch unwind label %bb.cj

.loopexit40.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i28.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i28.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i25.preheader.i.i.i.i.i.i.i, %bb.bz
  invoke void @__cxa_rethrow() #47
          to label %bb.cn unwind label %bb.cg

bb.ca:                                            ; preds = %.body.i.i.i.i.i.i
  %i.js = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.jt = icmp eq i32 %i.ja, %i.js
  br i1 %i.jt, label %bb.cb, label %.body55

bb.cb:                                            ; preds = %bb.ca
  %i.ju = call ptr @__cxa_begin_catch(ptr %i.iz) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.jv = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i30.i.i.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i30.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cb
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %i.jx = load ptr, ptr %19, align 8, !tbaa !411
  %.not.i32.i.i.i.i.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i32.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.cm

bb.cg:                                            ; preds = %.loopexit40.i.i.i.i.i.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.jz = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i34.i.i.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i34.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %20, align 8, !tbaa !411
  %.not.i36.i.i.i.i.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i, %bb.cg
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ka, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i ], [ %i.jy, %bb.cg ]
  invoke void @__cxa_end_catch()
          to label %.body55 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #50
  unreachable

end_hunk_11
begin_hunk_12_@_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EED2Ev:bb.a

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.val, i64 noundef 136) #49
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_14ThreadLocalPtrINS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperEvvE5resetEPSW_EUlvE_Lb1EE7executeEv.exit: ; preds = %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENUlPvNS_18TLPDestructionModeEE_8__invokeES10_S11_(ptr noundef %0, i32 %1) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5folly6detail25SingletonThreadLocalState8TrackingD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.b) #38
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !2395 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.c, align 8
  %i.d = ptrtoint ptr %.val1.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.f) #49
  br label %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i

_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #49
  br label %_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit

_ZZN5folly18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperEEEvT_ENKUlPvNS_18TLPDestructionModeEE_clES10_S11_.exit: ; preds = %bb.a, %_ZN5folly20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS2_17SelectivityVectorERSt6vectorISt10shared_ptrINS2_10BaseVectorEESaISD_EERKSB_IKNS2_4TypeEERNS2_4exec7EvalCtxERSD_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !650, !range !83, !noundef !81
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !3138
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !3140
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !2867
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !3128
  invoke void %.val.val(ptr noundef %.val1.val, i32 noundef 0)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit unwind label %bb.c, !inline_history !3141

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #38 ; 0 uses
  tail call void @_ZN5folly6detail18ScopeGuardImplBase9terminateEv() #38, !inline_history !3142
  unreachable

_ZN5folly6detail14ScopeGuardImplIZNS_18threadlocal_detail14ElementWrapper3setIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS0_10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEvT_RKT0_EUlvE_Lb1EE7executeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E9_M_invokeERKSt9_Any_dataOS0_OS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !2867
  %.val3 = load ptr, ptr %1, align 8, !tbaa !158
  %.val4 = load i32, ptr %2, align 4, !tbaa !2871
  tail call void %.val(ptr noundef %.val3, i32 noundef %.val4), !inline_history !3143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPvN5folly18TLPDestructionModeEEZNS1_18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS9_17SelectivityVectorERSt6vectorISt10shared_ptrINS9_10BaseVectorEESaISK_EERKSI_IKNS9_4TypeEERNS9_4exec7EvalCtxERSK_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIS3_EEEDaRKT0_EUlS0_S2_E_E10_M_managerERSt9_Any_dataRKS1A_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #43 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS5_17SelectivityVectorERSt6vectorISt10shared_ptrINS5_10BaseVectorEESaISG_EERKSE_IKNS5_4TypeEERNS5_4exec7EvalCtxERSG_E26__folly_reused_type_groupsNS_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS_18TLPDestructionModeEEEEEDaRKT0_EUlS10_S11_E_, ptr %0, align 8, !tbaa !2874
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !158
  store i64 %.val.i, ptr %0, align 8, !tbaa !158
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5folly18threadlocal_detail14ElementWrapper11makeDeleterIPNS1_20SingletonThreadLocalIZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS7_17SelectivityVectorERSt6vectorISt10shared_ptrINS7_10BaseVectorEESaISI_EERKSG_IKNS7_4TypeEERNS7_4exec7EvalCtxERSI_E26__folly_reused_type_groupsNS1_6detail10DefaultTagEvvE7WrapperESt17reference_wrapperIFvPvNS1_18TLPDestructionModeEEEEEDaRKT0_EUlS12_S13_E_E10_M_managerERSt9_Any_dataRKS1B_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected", align 8   ; 11 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3100   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3103, !nonnull !81, !align !602
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !741  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !742
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 58
  %i.j = load i8, ptr %i.i, align 2, !tbaa !752, !range !83, !noundef !81
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 59
  %i.m = load i8, ptr %i.l, align 1, !tbaa !753, !range !83, !noundef !81
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !755
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.u, %bb.d ], [ %i.p, %bb.c ], [ %1, %bb.a ]
  %i.v = sext i32 %.0.i.i to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.x, align 8
  call void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !34
  switch i8 %i.z, label %bb.g [
    i8 2, label %bb.e
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !2324

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3104, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc9 unwind label %bb.k

.noexc9:                                          ; preds = %bb.g
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ad = load ptr, ptr %2, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3105, !nonnull !81, !align !602
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3106, !nonnull !81, !align !602
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3107, !nonnull !81, !align !602
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !231, !range !83, !noundef !81
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.an, align 8, !tbaa !741
  %i.ao = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.af, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.ad, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i32 noundef 0, i1 noundef zeroext %i.am)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3108, !nonnull !81 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !82, !range !83, !noundef !81
  %4 = trunc nuw i8 %i.ar to i1
  %5 = or i1 %i.ao, %4
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.aq, align 1, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.as = load i8, ptr %i.y, align 8, !tbaa !34
  %cond.i.i = icmp ne i8 %i.as, 2
  %i.at = load ptr, ptr %2, align 8
  %.not.i.i.i = icmp eq ptr %i.at, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i, !prof !91
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.j, !prof !91

bb.j:                                             ; preds = %bb.i
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.k:                                             ; preds = %bb.g, %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.au, %bb.k ]
  %i.av = load i8, ptr %i.y, align 8, !tbaa !34
  %cond.i.i10 = icmp ne i8 %i.av, 2
  %i.aw = load ptr, ptr %2, align 8
  %.not.i.i.i11 = icmp eq ptr %i.aw, null
  %or.cond.i.i12 = select i1 %cond.i.i10, i1 true, i1 %.not.i.i.i11, !prof !91
  br i1 %or.cond.i.i12, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13, label %bb.m, !prof !91

bb.m:                                             ; preds = %bb.l
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3144, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3147
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3148 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3149, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

end_hunk_12
begin_hunk_13_@_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 59
  %i.l = load i8, ptr %i.k, align 1, !tbaa !753, !range !83, !noundef !81
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.t, %bb.d ], [ %i.o, %bb.c ], [ %1, %bb.a ]
  %i.u = sext i32 %.0.i.i to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !233  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !3154, !nonnull !81, !align !602
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !741 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !742
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 58
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !752, !range !83, !noundef !81
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 59
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !753, !range !83, !noundef !81
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !754
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !755
  %i.ao = sext i32 %1 to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, %bb.f, %bb.g
  %.0.i.i15 = phi i32 [ %i.aq, %bb.g ], [ %i.al, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit ]
  %i.ar = sext i32 %.0.i.i15 to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ar ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.at, align 8
  call void @_ZN8facebook5velox9functions6detail7ReCache16tryFindOrCompileERKNS0_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !34
  switch i8 %i.av, label %bb.j [
    i8 2, label %bb.h
    i8 1, label %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  ], !prof !2324

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !3155, !nonnull !81, !align !602
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #20
          to label %.noexc17 unwind label %bb.s

.noexc17:                                         ; preds = %bb.j
  unreachable

_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 64
  %.val14 = load i32, ptr %i.ba, align 8
  %i.bb = icmp slt i64 %i.w, 0
  %i.bc = sext i32 %.val14 to i64
  %i.bd = icmp sgt i64 %i.w, %i.bc
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bd, !prof !1951
  br i1 %or.cond.i, label %.critedge.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit, !prof !1951

.critedge.i:                                      ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %.val13 = load ptr, ptr %i.az, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !3156
  store i64 %i.w, ptr %2, align 16, !tbaa !16, !noalias !3156
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %.val13, align 8, !tbaa !13, !noalias !3156
  %i.bg = getelementptr inbounds nuw i8, ptr %.val13, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17, !noalias !3156
  store ptr %i.bf, ptr %i.be, align 16, !tbaa !16, !noalias !3156
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !16, !noalias !3156
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.262, i64 25, i64 211, ptr nonnull %2)
          to label %.noexc18 unwind label %bb.s

.noexc18:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !3156
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2EE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.262) #47
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc18
  unreachable

bb.l:                                             ; preds = %.noexc18
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.body

_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit: ; preds = %_ZNR5folly8ExpectedIPN3re23RE2EN8facebook5velox6StatusEE5valueEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !3159, !nonnull !81, !align !602 ; 6 uses
  %i.br = add nuw nsw i64 %i.w, 1                 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !2392 ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !2395 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 4                 ; 3 uses
  %.not = icmp ult i64 %i.w, %i.by
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.bz = sub nuw nsw i64 %i.br, %i.by
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.bz)
          to label %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge unwind label %bb.s

._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !3159
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_118checkForBadGroupIdElRKN3re23RE2E.exit
  %i.ca = icmp ult i64 %i.br, %i.by
  br i1 %i.ca, label %bb.o, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.br ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.cb
  br i1 %.not.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.o
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !2392
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit: ; preds = %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.o, %bb.n
  %i.cc = phi ptr [ %.pre, %._ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit_crit_edge ], [ %i.bq, %_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEES3_EvT_S5_RSaIT0_E.exit.i.i ], [ %i.bq, %bb.o ], [ %i.bq, %bb.n ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !3160, !nonnull !81, !align !602
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !3161, !nonnull !81, !align !602
  %i.ch = trunc nuw nsw i64 %i.w to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !231, !range !83, !noundef !81
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr i8, ptr %i.cg, i64 8
  %.val = load ptr, ptr %i.cl, align 8, !tbaa !741
  %i.cm = invoke fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_110re2ExtractERNS0_10FlatVectorINS0_10StringViewEEEiRKN3re23RE2ERKNS0_4exec18LocalDecodedVectorERSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISJ_EEib(ptr noundef nonnull align 8 dereferenceable(272) %i.ce, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(148) %i.az, ptr %.val, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i32 noundef %i.ch, i1 noundef zeroext %i.ck)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !3162, !nonnull !81 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !82, !range !83, !noundef !81
  %6 = trunc nuw i8 %i.cp to i1
  %7 = or i1 %i.cm, %6
  %8 = zext i1 %7 to i8
  store i8 %8, ptr %i.co, align 1, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p
  %i.cq = load i8, ptr %i.au, align 8, !tbaa !34
  %cond.i.i = icmp ne i8 %i.cq, 2
  %i.cr = load ptr, ptr %4, align 8
  %.not.i.i.i = icmp eq ptr %i.cr, null
  %or.cond.i.i = select i1 %cond.i.i, i1 true, i1 %.not.i.i.i, !prof !91
  br i1 %or.cond.i.i, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit, label %bb.r, !prof !91

bb.r:                                             ; preds = %bb.q
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.s:                                             ; preds = %bb.m, %.critedge.i, %bb.j, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE6resizeEm.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.cs, %bb.s ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.ct = load i8, ptr %i.au, align 8, !tbaa !34
  %cond.i.i20 = icmp ne i8 %i.ct, 2
  %i.cu = load ptr, ptr %4, align 8
  %.not.i.i.i21 = icmp eq ptr %i.cu, null
  %or.cond.i.i22 = select i1 %cond.i.i20, i1 true, i1 %.not.i.i.i21, !prof !91
  br i1 %or.cond.i.i22, label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23, label %bb.t, !prof !91

bb.t:                                             ; preds = %.body
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23

_ZN5folly15expected_detail15ExpectedStorageIPN3re23RE2EN8facebook5velox6StatusELNS0_11StorageTypeE2EED2Ev.exit23: ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE0_ZNS4_22applyToSelectedNoThrowISR_EEvSC_T_EUlST_E_EEvSC_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3163, !range !83, !noundef !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3166
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !233
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit
  %.024 = phi i64 [ %i.k, %.preheader ], [ %i.ba, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.024, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 3 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !3167 ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !3168, !nonnull !81, !align !602
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i32 noundef %i.q)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.u = extractvalue { ptr, i32 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.t, 1        ; 2 uses
  %i.w = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_begin_catch(ptr %i.u) #38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !756 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.d
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !16
  %or.cond.not.i.i.i = icmp eq i8 %i.ag, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ai, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ak, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.am, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.n

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #47
          to label %bb.r unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.ao = icmp eq i32 %i.v, %i.an
  br i1 %i.ao, label %bb.f, label %.loopexit18

bb.f:                                             ; preds = %bb.e
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.u) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !411
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  invoke void @__cxa_end_catch()
          to label %.loopexit18 unwind label %bb.q

bb.k:                                             ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.au = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i13, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit14: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_119Re2SearchAndExtractIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE0_ZNS2_22applyToSelectedNoThrowISP_EEvSA_T_EUlSR_E_EEvSA_SR_T0_ENKUlSR_E_clIiEEDaSR_.exit.sink.split

bb.n:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %4, align 8, !tbaa !411
  %.not.i15 = icmp eq ptr %i.aw, null
  br i1 %.not.i15, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16

end_hunk_13
