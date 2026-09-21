Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/InPredicate?download=true
inline.NumInlined: 8492
inline.NumDeleted: 2879
loop-unroll.NumCompletelyUnrolled: 139
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i, %i.fh
  br i1 %.not37.i.i.not.i.i.i.i.i, label %.lr.ph5785, label %.critedge.i.i.i.i.i.i.i, !llvm.loop !20

.lr.ph5785:                                       ; preds = %bb.an, %bb.ao
  %indvars.iv.i.i.i.i.i5784 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.fi = lshr exact i64 %indvars.iv.i.i.i.i.i5784, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !219
  %i.fl = icmp eq i64 %i.fk, -1
  br i1 %i.fl, label %bb.ao, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, !llvm.loop !20

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.ao, %bb.an
  %.not38.i.i.i.i.i.i.i = icmp eq i32 %i.fc, %i.fg
  br i1 %.not38.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.fm = lshr i32 %i.fc, 6
  %i.fn = and i32 %i.fc, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %notmask.i40.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fo
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i = or i64 %i.fr, %notmask.i40.i.i.i.i.i.i.i
  %i.fs = icmp eq i64 %.demorgan.i.i.i.i.i, -1
  %i.ft = zext i1 %i.fs to i16
  %i.fu = or disjoint i16 %i.ft, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i: ; preds = %.lr.ph5785, %bb.ap, %.critedge.i.i.i.i.i.i.i, %bb.am, %bb.al, %bb.ak
  %.sroa.0.0.insert.ext.i.i.i.i.i = phi i16 [ 256, %bb.al ], [ 256, %bb.ak ], [ 257, %bb.am ], [ 257, %.critedge.i.i.i.i.i.i.i ], [ %i.fu, %bb.ap ], [ 256, %.lr.ph5785 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.fv = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i
  %i.fw = phi i32 [ %.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i ], [ %i.fa, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i ] ; 8 uses
  %.0.in.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i ], [ %i.fv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i ]
  %.0.i.i.i.i36.i = trunc nuw i8 %.0.in.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i36.i, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.fx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.fy = icmp slt i32 %i.fw, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i = phi i32 [ %i.hf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.fw, %bb.aq ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %341)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0      ; 2 uses
  %i.gb = extractvalue { ptr, i32 } %i.fz, 1      ; 2 uses
  %i.gc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ge = call ptr @__cxa_begin_catch(ptr %i.ga) #41
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !376 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 144
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !115 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 152
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !98
  %i.gl = icmp eq i64 %i.gk, 4
  br i1 %i.gl, label %.lr.ph.i.i.i.i.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %bb.as
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i = icmp eq i8 %i.gm, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i = icmp eq i8 %i.go, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i = icmp eq i8 %i.gq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i = icmp eq i8 %i.gs, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i, label %.loopexit.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %339) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %339)
          to label %bb.ba unwind label %bb.bc

.loopexit.i.i.i.i:                                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i, %bb.as
  invoke void @__cxa_rethrow() #45
          to label %bb.bg unwind label %bb.az

bb.at:                                            ; preds = %bb.ar
  %i.gt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.gu = icmp eq i32 %i.gb, %i.gt
  br i1 %i.gu, label %bb.au, label %.body.i

bb.au:                                            ; preds = %bb.at
  %i.gv = call ptr @__cxa_begin_catch(ptr %i.ga) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %338) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %338)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gw = load ptr, ptr %338, align 8, !tbaa !171
  %.not.i.i.i.i37.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i37.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %338) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ax:                                            ; preds = %bb.au
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load ptr, ptr %338, align 8, !tbaa !171
  %.not.i4.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i4.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %338) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #41
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.bf

bb.az:                                            ; preds = %.loopexit.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ba:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i
  %i.ha = load ptr, ptr %339, align 8, !tbaa !171
  %.not.i6.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i6.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %339) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i: ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bc:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %339, align 8, !tbaa !171
  %.not.i8.i.i.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i8.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %339) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #41
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i, %bb.az
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.hb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i ], [ %i.gz, %bb.az ]
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #44
  unreachable

bb.bg:                                            ; preds = %.loopexit.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.hf = add i32 %.019.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.hf, %i.fx
  br i1 %exitcond.not.i.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1065

bb.bh:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.hg = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %337, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %337)
  store ptr %341, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %337, i64 24
  store ptr %340, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %337, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  store i8 1, ptr %337, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %337, i64 8
  store ptr %i.hg, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i = icmp slt i32 %i.fw, %i.hh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bi, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.hi = add i32 %i.fw, 63                       ; 2 uses
  %i.hj = srem i32 %i.hi, 64
  %i.hk = sub nsw i32 %i.hi, %i.hj                ; 6 uses
  %i.hl = and i32 %i.hh, -64                      ; 4 uses
  %i.hm = icmp slt i32 %i.hl, %i.hk
  br i1 %i.hm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hn = and i32 %i.hh, 63
  %i.ho = zext nneg i32 %i.hn to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ho
  %i.hp = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.hq = sub nsw i32 %i.hk, %i.fw                ; 2 uses
  %i.hr = zext nneg i32 %i.hq to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hr
  %i.hs = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.ht = sub nsw i32 64, %i.hq
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = shl i64 %i.hs, %i.hu
  %i.hw = and i64 %i.hv, %i.hp
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.cv, %bb.bj
  %i.hx = phi i64 [ %i.hw, %bb.bj ], [ %i.lo, %bb.cv ]
  %i.hy = ashr i32 %i.hh, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %337, i32 noundef %i.hy, i64 noundef %i.hx)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bk:                                            ; preds = %bb.bi
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.fw, %i.hk
  br i1 %.not32.i.i.i.i.i.i.i, label %.noexc40.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hz = sdiv i32 %i.fw, 64
  %i.ia = sub nsw i32 %i.hk, %i.fw                ; 2 uses
  %i.ib = zext nneg i32 %i.ia to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ib
  %i.ic = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.id = sub nsw i32 64, %i.ia
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = shl i64 %i.ic, %i.ie
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %337, i32 noundef %i.hz, i64 noundef %i.if)
          to label %.noexc40.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc40.i:                                       ; preds = %bb.bl, %bb.bk
  %i.ig = add nsw i32 %i.hk, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i.i = icmp sgt i32 %i.ig, %i.hl
  br i1 %.not3346.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.hh, %i.hl
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.cv

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc40.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.ih = phi i32 [ %i.ll, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.ig, %.noexc40.i ] ; 2 uses
  %.047.i.i.i.i.i.i.i = phi i32 [ %i.ih, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.hk, %.noexc40.i ] ; 2 uses
  %i.ii = sdiv i32 %.047.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.il, label %.lr.ph.i.i.i.i10.i.i.i.i [
    i64 -1, label %bb.bm
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.im = shl nsw i32 %i.ii, 6
  br label %bb.ce

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.in = shl nsw i32 %i.ii, 6                    ; 2 uses
  %i.io = add i32 %i.in, 64
  %i.ip = sext i32 %i.io to i64
  %.0.off.i.i.i.i.i.i.i = add i32 %.047.i.i.i.i.i.i.i, 127
  %.not57.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i, 64
  br i1 %.not57.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i

.lr.ph56.i.i.i.i.i.i.i.i:                         ; preds = %bb.bm
  %i.iq = sext i32 %i.in to i64
  br label %bb.bn

bb.bn:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i
  %.055.i.i.i.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph56.i.i.i.i.i.i.i.i ], [ %i.jy, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ir = trunc i64 %.055.i.i.i.i.i.i.i.i to i32  ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %341)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.is = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.it = extractvalue { ptr, i32 } %i.is, 0      ; 2 uses
  %i.iu = extractvalue { ptr, i32 } %i.is, 1      ; 2 uses
  %i.iv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.iw = icmp eq i32 %i.iu, %i.iv
  br i1 %i.iw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ix = call ptr @__cxa_begin_catch(ptr %i.it) #41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !376 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 144
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !115 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 152
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !98
  %i.je = icmp eq i64 %i.jd, 4
  br i1 %i.je, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i:         ; preds = %bb.bp
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.jf, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i = icmp eq i8 %i.jh, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i = icmp eq i8 %i.jj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i = icmp eq i8 %i.jl, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %334) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %334) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(8) %334)
          to label %bb.bx unwind label %bb.bz

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i, %bb.bp
  invoke void @__cxa_rethrow() #45
          to label %bb.cd unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bo
  %i.jm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.jn = icmp eq i32 %i.iu, %i.jm
  br i1 %i.jn, label %bb.br, label %.body.i

bb.br:                                            ; preds = %bb.bq
  %i.jo = call ptr @__cxa_begin_catch(ptr %i.it) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %333) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %333) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(8) %333)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.jp = load ptr, ptr %333, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %333) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %333) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.br
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %i.jr = load ptr, ptr %333, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %333) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %333) #41
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.pe = lshr exact i64 %indvars.iv.i.i.i.i146.i5781, 3
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !219
  %i.ph = icmp eq i64 %i.pg, -1
  br i1 %i.ph, label %bb.ea, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i:                       ; preds = %bb.ea, %bb.dz
  %.not38.i.i.i.i.i.i149.i = icmp eq i32 %i.ox, %i.pc
  br i1 %.not38.i.i.i.i.i.i149.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i, label %bb.eb

bb.eb:                                            ; preds = %.critedge.i.i.i.i.i.i148.i
  %i.pi = lshr i32 %i.ox, 6
  %i.pj = and i32 %i.ox, 63
  %i.pk = zext nneg i32 %i.pj to i64
  %notmask.i40.i.i.i.i.i.i150.i = shl nsw i64 -1, %i.pk
  %i.pl = zext nneg i32 %i.pi to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.pl
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i = or i64 %i.pn, %notmask.i40.i.i.i.i.i.i150.i
  %i.po = icmp eq i64 %.demorgan.i.i.i.i151.i, -1
  %i.pp = zext i1 %i.po to i16
  %i.pq = or disjoint i16 %i.pp, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i: ; preds = %.lr.ph5782, %bb.eb, %.critedge.i.i.i.i.i.i148.i, %bb.dy, %bb.dx, %bb.dw
  %.sroa.0.0.insert.ext.i.i.i.i59.i = phi i16 [ 256, %bb.dx ], [ 256, %bb.dw ], [ 257, %bb.dy ], [ 257, %.critedge.i.i.i.i.i.i148.i ], [ %i.pq, %bb.eb ], [ 256, %.lr.ph5782 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i, ptr %i.op, align 4
  %i.pr = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i
  %.0.in.i.i.i.i61.i = phi i8 [ %.0.in.pre.i.i.i.i154.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i ], [ %i.pr, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i ]
  %.0.i.i.i.i62.i = trunc nuw i8 %.0.in.i.i.i.i61.i to i1
  br i1 %.0.i.i.i.i62.i, label %bb.ec, label %bb.et

bb.ec:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !324 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !370 ; 2 uses
  %i.pw = icmp slt i32 %i.pv, %i.pt
  br i1 %i.pw, label %.lr.ph.i.i.i124.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i:                                ; preds = %bb.ec, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i = phi i32 [ %i.rd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.pv, %bb.ec ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %331, i32 noundef %.029.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %.lr.ph.i.i.i124.i
  %i.px = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.py = extractvalue { ptr, i32 } %i.px, 0      ; 2 uses
  %i.pz = extractvalue { ptr, i32 } %i.px, 1      ; 2 uses
  %i.qa = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.qb = icmp eq i32 %i.pz, %i.qa
  br i1 %i.qb, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.qc = call ptr @__cxa_begin_catch(ptr %i.py) #41
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !376 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 144
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !115 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 152
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !98
  %i.qj = icmp eq i64 %i.qi, 4
  br i1 %i.qj, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i, label %.loopexit.i.i.i130.i

.lr.ph.i.i.i.i.preheader.i.i.i132.i:              ; preds = %bb.ee
  %i.qk = load i8, ptr %i.qg, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i = icmp eq i8 %i.qk, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i, label %tailrecurse.i.i.i.i.i.i.i134.i, label %.loopexit.i.i.i130.i

tailrecurse.i.i.i.i.i.i.i134.i:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qg, i64 1
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i = icmp eq i8 %i.qm, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i, label %tailrecurse.i.i.i.i.1.i.i.i136.i, label %.loopexit.i.i.i130.i

tailrecurse.i.i.i.i.1.i.i.i136.i:                 ; preds = %tailrecurse.i.i.i.i.i.i.i134.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i = icmp eq i8 %i.qo, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i, label %tailrecurse.i.i.i.i.2.i.i.i138.i, label %.loopexit.i.i.i130.i

tailrecurse.i.i.i.i.2.i.i.i138.i:                 ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 3
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i = icmp eq i8 %i.qq, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i, label %tailrecurse.i.i.i.i.3.i.i.i140.i, label %.loopexit.i.i.i130.i

tailrecurse.i.i.i.i.3.i.i.i140.i:                 ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %329) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %329)
          to label %bb.em unwind label %bb.eo

.loopexit.i.i.i130.i:                             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i, %tailrecurse.i.i.i.i.1.i.i.i136.i, %tailrecurse.i.i.i.i.i.i.i134.i, %.lr.ph.i.i.i.i.preheader.i.i.i132.i, %bb.ee
  invoke void @__cxa_rethrow() #45
          to label %bb.es unwind label %bb.el

bb.ef:                                            ; preds = %bb.ed
  %i.qr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.qs = icmp eq i32 %i.pz, %i.qr
  br i1 %i.qs, label %bb.eg, label %common.resume

bb.eg:                                            ; preds = %bb.ef
  %i.qt = call ptr @__cxa_begin_catch(ptr %i.py) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %328) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %328)
          to label %bb.eh unwind label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.qu = load ptr, ptr %328, align 8, !tbaa !171
  %.not.i.i.i.i127.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i.i127.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %328) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ej:                                            ; preds = %bb.eg
  %i.qv = landingpad { ptr, i32 }
          cleanup
  %i.qw = load ptr, ptr %328, align 8, !tbaa !171
  %.not.i4.i.i.i125.i = icmp eq ptr %i.qw, null
  br i1 %.not.i4.i.i.i125.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %328) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i: ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.er

bb.el:                                            ; preds = %.loopexit.i.i.i130.i
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.em:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i
  %i.qy = load ptr, ptr %329, align 8, !tbaa !171
  %.not.i6.i.i.i143.i = icmp eq ptr %i.qy, null
  br i1 %.not.i6.i.i.i143.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %329) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i: ; preds = %bb.en, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.eo:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %329, align 8, !tbaa !171
  %.not.i8.i.i.i141.i = icmp eq ptr %i.ra, null
  br i1 %.not.i8.i.i.i141.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %329) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i: ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #41
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i, %bb.el
  %.pn.i.i.i.i131.i = phi { ptr, i32 } [ %i.qz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i ], [ %i.qx, %bb.el ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.er

common.resume:                                    ; preds = %bb.cur, %bb.cvk, %bb.ctq, %bb.crr, %bb.csn, %bb.cqs, %bb.ckl, %bb.clh, %bb.cjh, %bb.chl, %bb.cic, %bb.cgn, %bb.caj, %bb.cbc, %bb.bzj, %bb.bxk, %bb.byg, %bb.bwm, %bb.bqi, %bb.brb, %bb.bpi, %bb.bnj, %bb.bof, %bb.bml, %bb.bgh, %bb.bha, %bb.bfh, %bb.bdi, %bb.bee, %bb.bck, %bb.awg, %bb.awz, %bb.avg, %bb.ath, %bb.aud, %bb.asj, %bb.amf, %bb.amy, %bb.alf, %bb.ajg, %bb.akc, %bb.aii, %bb.ace, %bb.acx, %bb.abe, %bb.zf, %bb.aab, %bb.yh, %bb.sd, %bb.sw, %bb.rd, %bb.pe, %bb.qa, %bb.og, %bb.ic, %bb.iv, %bb.hc, %bb.fd, %bb.fz, %bb.ef, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3154, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983, %bb.crd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2918, %bb.csc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2948, %bb.csy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i202.i, %bb.cub, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i2859, %bb.cvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i2880, %bb.cvv, %bb.cwa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i, %bb.cgy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i84.i, %bb.chw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i, %bb.cin, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i, %bb.cjs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i183.i, %bb.ckw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i204.i, %bb.cls, %bb.clx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475, %bb.bwx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2413, %bb.bxv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2438, %bb.byr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i.i, %bb.bzu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21.i.i.i.i.i.i.i.i, %bb.cau, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i.i2375, %bb.cbn, %bb.cbs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165, %bb.bmw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2104, %bb.bnu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2130, %bb.boq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i207.i2043, %bb.bpt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1992, %bb.bqt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i198.i2016, %bb.brm, %bb.brr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782, %bb.bcv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1721, %bb.bdt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1747, %bb.bep, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i207.i, %bb.bfs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1665, %bb.bgs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i198.i, %bb.bhl, %bb.bhq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458, %bb.asu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1396, %bb.ats, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1423, %bb.auo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i1335, %bb.avr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1282, %bb.awr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i1307, %bb.axk, %bb.axp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071, %bb.ait, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1009, %bb.ajr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1036, %bb.akn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i948, %bb.alq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i895, %bb.amq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i920, %bb.anj, %bb.ano, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684, %bb.ys, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i622, %bb.zq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i649, %bb.aam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i561, %bb.abp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i508, %bb.acp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i533, %bb.adi, %bb.adn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297, %bb.or, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i235, %bb.pp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i262, %bb.ql, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i174, %bb.ro, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i121, %bb.so, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i146, %bb.th, %bb.tm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i, %bb.eq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i, %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i, %bb.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i, %bb.hn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i, %bb.in, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i, %bb.jg, %bb.jl
  %common.resume.op = phi { ptr, i32 } [ %i.jrz, %bb.cic ], [ %i.krz, %bb.cqs ], [ %i.xg, %bb.fz ], [ %i.bdf, %bb.qa ], [ %i.cjf, %bb.aab ], [ %i.dpi, %bb.akc ], [ %i.evl, %bb.aud ], [ %i.gbu, %bb.bee ], [ %i.hiu, %bb.bof ], [ %i.ipk, %bb.byg ], [ %.pn.pn.i, %bb.jl ], [ %i.jqo, %bb.chl ], [ %.pn.i.i.i.i131.i, %bb.eq ], [ %i.qv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i ], [ %eh.lpad-body.i.i, %bb.ckl ], [ %.pn.i18.i.i.i.i.i.i.i86.i, %bb.fo ], [ %i.tq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.gk ], [ %i.ye, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3154 ], [ %.pn.i.i.i.i208.i, %bb.hn ], [ %i.acc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i ], [ %eh.lpad-body16.i.i, %bb.cjh ], [ %.pn.i18.i.i.i.i.i.i.i182.i, %bb.in ], [ %i.afw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i ], [ %.pn.i.i.i.i.i.i.i.i198.i, %bb.jg ], [ %i.aih, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.clh ], [ %.pn.pn.i77, %bb.tm ], [ %i.kuw, %bb.crr ], [ %.pn.i.i.i.i131.i302, %bb.or ], [ %i.awu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297 ], [ %i.px, %bb.ef ], [ %.pn.i18.i.i.i.i.i.i.i86.i239, %bb.pp ], [ %i.azp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i235 ], [ %.pn.i.i.i.i.i.i.i.i108.i267, %bb.ql ], [ %i.bed, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i262 ], [ %i.kzm, %bb.csn ], [ %.pn.i.i.i.i208.i181, %bb.ro ], [ %i.bib, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i174 ], [ %i.ldm, %bb.ctq ], [ %.pn.i18.i.i.i.i.i.i.i182.i125, %bb.so ], [ %i.blv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i121 ], [ %.pn.i.i.i.i.i.i.i.i198.i151, %bb.th ], [ %i.bog, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i146 ], [ %i.lkb, %bb.cvk ], [ %.pn.pn.i464, %bb.adn ], [ %i.abc, %bb.hc ], [ %.pn.i.i.i.i131.i689, %bb.ys ], [ %i.cct, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684 ], [ %i.avw, %bb.og ], [ %.pn.i18.i.i.i.i.i.i.i86.i626, %bb.zq ], [ %i.cfo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i622 ], [ %.pn.i.i.i.i.i.i.i.i108.i654, %bb.aam ], [ %i.ckd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i649 ], [ %i.ss, %bb.fd ], [ %.pn.i.i.i.i208.i568, %bb.abp ], [ %i.coc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i561 ], [ %i.ahj, %bb.iv ], [ %.pn.i18.i.i.i.i.i.i.i182.i512, %bb.acp ], [ %i.crx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i508 ], [ %.pn.i.i.i.i.i.i.i.i198.i538, %bb.adi ], [ %i.cuj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i533 ], [ %i.aey, %bb.ic ], [ %.pn.pn.i851, %bb.ano ], [ %i.bhb, %bb.rd ], [ %.pn.i.i.i.i131.i1076, %bb.ait ], [ %i.diw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071 ], [ %i.cbv, %bb.yh ], [ %.pn.i18.i.i.i.i.i.i.i86.i1013, %bb.ajr ], [ %i.dlr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1009 ], [ %.pn.i.i.i.i.i.i.i.i108.i1041, %bb.akn ], [ %i.dqg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1036 ], [ %i.ayr, %bb.pe ], [ %.pn.i.i.i.i208.i955, %bb.alq ], [ %i.duf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i948 ], [ %i.bni, %bb.sw ], [ %.pn.i18.i.i.i.i.i.i.i182.i899, %bb.amq ], [ %i.dya, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i895 ], [ %.pn.i.i.i.i.i.i.i.i198.i925, %bb.anj ], [ %i.eam, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i920 ], [ %i.bkx, %bb.sd ], [ %.pn.pn.i1238, %bb.axp ], [ %i.cnc, %bb.abe ], [ %.pn.i.i.i.i131.i1463, %bb.asu ], [ %i.eoz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458 ], [ %i.dhy, %bb.aii ], [ %.pn.i18.i.i.i.i.i.i.i86.i1400, %bb.ats ], [ %i.eru, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1396 ], [ %.pn.i.i.i.i.i.i.i.i108.i1428, %bb.auo ], [ %i.ewj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1423 ], [ %i.ceq, %bb.zf ], [ %.pn.i.i.i.i208.i1342, %bb.avr ], [ %i.fai, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i203.i1335 ], [ %i.ctl, %bb.acx ], [ %.pn.i18.i.i.i.i.i.i.i182.i1286, %bb.awr ], [ %i.fed, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1282 ], [ %.pn.i.i.i.i.i.i.i.i198.i1312, %bb.axk ], [ %i.fgp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit38.i.i.i.i.i.i.i.i1307 ], [ %i.cqz, %bb.ace ], [ %.pn.pn.i1625, %bb.bhq ], [ %i.dtf, %bb.alf ], [ %.pn.i.i.i.i131.i1787, %bb.bcv ], [ %i.fvc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782 ], [ %i.eob, %bb.asj ], [ %.pn.i18.i.i.i.i.i.i.i86.i1725, %bb.bdt ], [ %i.fxx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1721 ], [ %.pn.i.i.i.i.i.i.i.i108.i1752, %bb.bep ], [ %i.gcs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i1747 ], [ %i.dkt, %bb.ajg ], [ %.pn.i.i.i.i212.i, %bb.bfs ], [ %i.ggx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i207.i ], [ %i.dzo, %bb.amy ], [ %.pn.i18.i.i.i.i.i.i.i182.i1669, %bb.bgs ], [ %i.gky, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1665 ], [ %.pn.i.i.i.i.i.i.i.i202.i, %bb.bhl ], [ %i.gnq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i198.i ], [ %i.dxc, %bb.amf ], [ %.pn.pn.i1949, %bb.brr ], [ %i.ezi, %bb.avg ], [ %.pn.i.i.i.i131.i2170, %bb.bmw ], [ %i.hcd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165 ], [ %i.fue, %bb.bck ], [ %.pn.i18.i.i.i.i.i.i.i86.i2108, %bb.bnu ], [ %i.hey, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2104 ], [ %.pn.i.i.i.i.i.i.i.i108.i2135, %bb.boq ], [ %i.hjs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2130 ], [ %i.eqw, %bb.ath ], [ %.pn.i.i.i.i212.i2050, %bb.bpt ], [ %i.hnw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i207.i2043 ], [ %i.ffr, %bb.awz ], [ %.pn.i18.i.i.i.i.i.i.i182.i1996, %bb.bqt ], [ %i.hrw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i1992 ], [ %.pn.i.i.i.i.i.i.i.i202.i2021, %bb.brm ], [ %i.hun, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i198.i2016 ], [ %i.fdf, %bb.awg ], [ %.pn.pn.i2332, %bb.cbs ], [ %i.gfx, %bb.bfh ], [ %.pn.i.i.i.i131.i2480, %bb.bwx ], [ %i.ija, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475 ], [ %i.hbf, %bb.bml ], [ %.pn.i18.i.i.i.i.i.i.i86.i2417, %bb.bxv ], [ %i.ilv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2413 ], [ %.pn.i.i.i.i.i.i.i.i108.i2443, %bb.byr ], [ %i.iqi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2438 ], [ %i.fwz, %bb.bdi ], [ %.pn.i.i.i.i199.i, %bb.bzu ], [ %i.iud, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6.i.i.i.i ], [ %i.gms, %bb.bha ], [ %.pn.i18.i.i.i.i.i.i.i180.i, %bb.cau ], [ %i.ixv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i191.i, %bb.cbn ], [ %i.jae, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit40.i.i.i.i.i.i.i.i2375 ], [ %i.gka, %bb.bgh ], [ %.pn.pn.i2642, %bb.clx ], [ %i.hmw, %bb.bpi ], [ %.pn.i.i.i.i133.i, %bb.cgy ], [ %i.jor, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i ], [ %i.iic, %bb.bwm ], [ %.pn.i18.i.i.i.i.i.i.i88.i, %bb.chw ], [ %i.jrm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i84.i ], [ %.pn.i.i.i.i.i.i.i.i110.i, %bb.cin ], [ %i.jsx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i ], [ %i.hea, %bb.bnj ], [ %.pn.i.i.i.i232.i, %bb.cjs ], [ %i.jxf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i ], [ %i.htp, %bb.brb ], [ %.pn.i18.i.i.i.i.i.i.i187.i, %bb.ckw ], [ %i.kbo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i183.i ], [ %.pn.i.i.i.i.i.i.i.i209.i, %bb.cls ], [ %i.kek, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i204.i ], [ %i.hqy, %bb.bqi ], [ %.pn.pn.i2818, %bb.cwa ], [ %i.itf, %bb.bzj ], [ %.pn.i.i.i.i131.i2988, %bb.crd ], [ %i.ksx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983 ], [ %i.jnt, %bb.cgn ], [ %.pn.i18.i.i.i.i.i.i.i86.i2922, %bb.csc ], [ %i.kvu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2918 ], [ %.pn.i.i.i.i.i.i.i.i108.i2953, %bb.csy ], [ %i.lak, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i103.i2948 ], [ %i.ikx, %bb.bxk ], [ %.pn.i.i.i.i207.i, %bb.cub ], [ %i.lem, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i202.i ], [ %i.izg, %bb.cbc ], [ %.pn.i18.i.i.i.i.i.i.i182.i2863, %bb.cvc ], [ %i.lim, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i178.i2859 ], [ %.pn.i.i.i.i.i.i.i.i197.i, %bb.cvv ], [ %i.lkz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit41.i.i.i.i.i.i.i.i2880 ], [ %i.iwx, %bb.caj ], [ %i.cs, %bb.j ], [ %i.lho, %bb.cur ]
  resume { ptr, i32 } %common.resume.op

bb.er:                                            ; preds = %bb.eq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i
  %i.rb = landingpad { ptr, i32 }
          catch ptr null
  %i.rc = extractvalue { ptr, i32 } %i.rb, 0
  call void @__clang_call_terminate(ptr %i.rc) #44
  unreachable

bb.es:                                            ; preds = %.loopexit.i.i.i130.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i
  %i.rd = add i32 %.029.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i129.i = icmp eq i32 %i.rd, %i.pt
  br i1 %exitcond.not.i.i.i129.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i, !llvm.loop !1074

bb.et:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i
  %i.re = load ptr, ptr %1, align 8, !tbaa !373   ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !370 ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i = getelementptr inbounds nuw i8, ptr %327, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %327)
  store ptr %331, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i = getelementptr inbounds nuw i8, ptr %327, i64 24
  store ptr %330, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i = getelementptr inbounds nuw i8, ptr %327, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i, align 8
  store i8 1, ptr %327, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i = getelementptr inbounds nuw i8, ptr %327, i64 8
  store ptr %i.re, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i, align 8
  %.not.i.i.i.i.i.i67.i = icmp slt i32 %i.rg, %i.ri
  br i1 %.not.i.i.i.i.i.i67.i, label %bb.eu, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.rj = add i32 %i.rg, 63                       ; 2 uses
  %i.rk = srem i32 %i.rj, 64
  %i.rl = sub nsw i32 %i.rj, %i.rk                ; 6 uses
  %i.rm = and i32 %i.ri, -64                      ; 4 uses
  %i.rn = icmp slt i32 %i.rm, %i.rl
  br i1 %i.rn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ro = ashr i32 %i.ri, 6
  %i.rp = and i32 %i.ri, 63
  %i.rq = zext nneg i32 %i.rp to i64
  %notmask.i.i.i.i.i.i.i122.i = shl nsw i64 -1, %i.rq
  %i.rr = xor i64 %notmask.i.i.i.i.i.i.i122.i, -1
  %i.rs = sub nsw i32 %i.rl, %i.rg                ; 2 uses
  %i.rt = zext nneg i32 %i.rs to i64
  %notmask.i.i.i.i.i.i.i.i123.i = shl nsw i64 -1, %i.rt
  %i.ru = xor i64 %notmask.i.i.i.i.i.i.i.i123.i, -1
  %i.rv = sub nsw i32 64, %i.rs
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = shl i64 %i.ru, %i.rw
  %i.ry = and i64 %i.rx, %i.rr
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %327, i32 noundef %i.ro, i64 noundef %i.ry)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.ew:                                            ; preds = %bb.eu
  %.not32.i.i.i.i.i.i68.i = icmp eq i32 %i.rg, %i.rl
  br i1 %.not32.i.i.i.i.i.i68.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.rz = sdiv i32 %i.rg, 64
  %i.sa = sub nsw i32 %i.rl, %i.rg                ; 2 uses
  %i.sb = zext nneg i32 %i.sa to i64
  %notmask.i.i35.i.i.i.i.i.i69.i = shl nsw i64 -1, %i.sb
  %i.sc = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i, -1
  %i.sd = sub nsw i32 64, %i.sa
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = shl i64 %i.sc, %i.se
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %327, i32 noundef %i.rz, i64 noundef %i.sf)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.sg = add nsw i32 %i.rl, 64                   ; 2 uses
  %.not3351.i.i.i.i.i.i.i = icmp sgt i32 %i.sg, %i.rm
  br i1 %.not3351.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i72.i, label %.lr.ph.i.i.i.i.i.i70.i

._crit_edge.i.i.i.i.i.i72.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.ey
  %.not34.i.i.i.i.i.i73.i = icmp eq i32 %i.ri, %i.rm
  br i1 %.not34.i.i.i.i.i.i73.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.gn

.lr.ph.i.i.i.i.i.i70.i:                           ; preds = %bb.ey, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.sh = phi i32 [ %i.yo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.sg, %bb.ey ] ; 2 uses
  %.052.i.i.i.i.i.i.i = phi i32 [ %i.sh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.rl, %bb.ey ] ; 2 uses
  %i.si = sdiv i32 %.052.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.sl, label %.lr.ph.i.i.i.i10.i.i.i100.i [
    i64 -1, label %bb.ez
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i:                      ; preds = %.lr.ph.i.i.i.i.i.i70.i
  %i.sm = shl nsw i32 %i.si, 6
  br label %bb.fr

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i70.i
  %i.sn = shl nsw i32 %i.si, 6                    ; 2 uses
  %i.so = add i32 %i.sn, 64
  %i.sp = sext i32 %i.so to i64
  %.0.off.i.i.i.i.i.i75.i = add i32 %.052.i.i.i.i.i.i.i, 127
  %.not57.i.i.i.i.i.i.i76.i = icmp ult i32 %.0.off.i.i.i.i.i.i75.i, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlnE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i

.lr.ph56.i.i.i.i.i.i.i77.i:                       ; preds = %bb.ez
  %i.sq = sext i32 %i.sn to i64
  br label %bb.fa

bb.fa:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i
  %.055.i.i.i.i.i.i.i78.i = phi i64 [ %i.sq, %.lr.ph56.i.i.i.i.i.i.i77.i ], [ %i.ty, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sr = trunc i64 %.055.i.i.i.i.i.i.i78.i to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlnE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %331, i32 noundef %i.sr)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ss = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.st = extractvalue { ptr, i32 } %i.ss, 0      ; 2 uses
  %i.su = extractvalue { ptr, i32 } %i.ss, 1      ; 2 uses
  %i.sv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.sw = icmp eq i32 %i.su, %i.sv
  br i1 %i.sw, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.sx = call ptr @__cxa_begin_catch(ptr %i.st) #41
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !376 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 144
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !115 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 152
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !98
  %i.te = icmp eq i64 %i.td, 4
  br i1 %i.te, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i, label %.loopexit.i.i.i.i.i.i.i85.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i:       ; preds = %bb.fc
  %i.tf = load i8, ptr %i.tb, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i = icmp eq i8 %i.tf, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i, label %.loopexit.i.i.i.i.i.i.i85.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i:            ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i = icmp eq i8 %i.th, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i, label %.loopexit.i.i.i.i.i.i.i85.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i:          ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 2
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i = icmp eq i8 %i.tj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i, label %.loopexit.i.i.i.i.i.i.i85.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i:          ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 3
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i = icmp eq i8 %i.tl, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i, label %.loopexit.i.i.i.i.i.i.i85.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i:          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %324) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %324) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sr, ptr noundef nonnull align 8 dereferenceable(8) %324)
          to label %bb.fk unwind label %bb.fm

.loopexit.i.i.i.i.i.i.i85.i:                      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i, %bb.fc
  invoke void @__cxa_rethrow() #45
          to label %bb.fq unwind label %bb.fj

bb.fd:                                            ; preds = %bb.fb
  %i.tm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.tn = icmp eq i32 %i.su, %i.tm
  br i1 %i.tn, label %bb.fe, label %common.resume

bb.fe:                                            ; preds = %bb.fd
  %i.to = call ptr @__cxa_begin_catch(ptr %i.st) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %323) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %323) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.sr, ptr noundef nonnull align 8 dereferenceable(8) %323)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.tp = load ptr, ptr %323, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %323) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedInZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlnE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fe
  %i.tq = landingpad { ptr, i32 }
          cleanup
  %i.tr = load ptr, ptr %323, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i = icmp eq ptr %i.tr, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %323) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %323) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.fp
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i438 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i443, %i.alg
  br i1 %.not37.i.i.not.i.i.i.i.i438, label %.lr.ph5776, label %.critedge.i.i.i.i.i.i.i439, !llvm.loop !20

.lr.ph5776:                                       ; preds = %bb.ko, %bb.kp
  %indvars.iv.i.i.i.i.i4375775 = phi i64 [ %indvars.iv.next.i.i.i.i.i443, %bb.kp ], [ 0, %bb.ko ] ; 2 uses
  %i.alh = lshr exact i64 %indvars.iv.i.i.i.i.i4375775, 3
  %i.ali = getelementptr inbounds nuw i8, ptr %i.ale, i64 %i.alh
  %i.alj = load i64, ptr %i.ali, align 8, !tbaa !219
  %i.alk = icmp eq i64 %i.alj, -1
  br i1 %i.alk, label %bb.kp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335, !llvm.loop !20

.critedge.i.i.i.i.i.i.i439:                       ; preds = %bb.kp, %bb.ko
  %.not38.i.i.i.i.i.i.i440 = icmp eq i32 %i.alb, %i.alf
  br i1 %.not38.i.i.i.i.i.i.i440, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335, label %bb.kq

bb.kq:                                            ; preds = %.critedge.i.i.i.i.i.i.i439
  %i.all = lshr i32 %i.alb, 6
  %i.alm = and i32 %i.alb, 63
  %i.aln = zext nneg i32 %i.alm to i64
  %notmask.i40.i.i.i.i.i.i.i441 = shl nsw i64 -1, %i.aln
  %i.alo = zext nneg i32 %i.all to i64
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.ale, i64 %i.alo
  %i.alq = load i64, ptr %i.alp, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i442 = or i64 %i.alq, %notmask.i40.i.i.i.i.i.i.i441
  %i.alr = icmp eq i64 %.demorgan.i.i.i.i.i442, -1
  %i.als = zext i1 %i.alr to i16
  %i.alt = or disjoint i16 %i.als, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335: ; preds = %.lr.ph5776, %bb.kq, %.critedge.i.i.i.i.i.i.i439, %bb.kn, %bb.km, %bb.kl
  %.sroa.0.0.insert.ext.i.i.i.i.i336 = phi i16 [ 256, %bb.km ], [ 256, %bb.kl ], [ 257, %bb.kn ], [ 257, %.critedge.i.i.i.i.i.i.i439 ], [ %i.alt, %bb.kq ], [ 256, %.lr.ph5776 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i336, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.alu = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i336 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i337

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i337: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i444
  %i.alv = phi i32 [ %.pre.i.i.i446, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i444 ], [ %i.akz, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335 ] ; 8 uses
  %.0.in.i.i.i.i.i338 = phi i8 [ %.0.in.pre.i.i.i.i.i445, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i444 ], [ %i.alu, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i335 ]
  %.0.i.i.i.i36.i339 = trunc nuw i8 %.0.in.i.i.i.i.i338 to i1
  br i1 %.0.i.i.i.i36.i339, label %bb.kr, label %bb.li

bb.kr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i337
  %i.alw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.alx = icmp slt i32 %i.alv, %i.alw
  br i1 %i.alx, label %.lr.ph.i.i.i.i412, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i412:                                ; preds = %bb.kr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i413 = phi i32 [ %i.ane, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.alv, %bb.kr ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %308)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ks

bb.ks:                                            ; preds = %.lr.ph.i.i.i.i412
  %i.aly = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.alz = extractvalue { ptr, i32 } %i.aly, 0    ; 2 uses
  %i.ama = extractvalue { ptr, i32 } %i.aly, 1    ; 2 uses
  %i.amb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.amc = icmp eq i32 %i.ama, %i.amb
  br i1 %i.amc, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.amd = call ptr @__cxa_begin_catch(ptr %i.alz) #41
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !376 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 144
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !115 ; 4 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 152
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !98
  %i.amk = icmp eq i64 %i.amj, 4
  br i1 %i.amk, label %.lr.ph.i.i.i.i.preheader.i.i.i.i423, label %.loopexit.i.i.i.i421

.lr.ph.i.i.i.i.preheader.i.i.i.i423:              ; preds = %bb.kt
  %i.aml = load i8, ptr %i.amh, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i424 = icmp eq i8 %i.aml, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i424, label %tailrecurse.i.i.i.i.i.i.i.i425, label %.loopexit.i.i.i.i421

tailrecurse.i.i.i.i.i.i.i.i425:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i423
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i426 = icmp eq i8 %i.amn, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i426, label %tailrecurse.i.i.i.i.1.i.i.i.i427, label %.loopexit.i.i.i.i421

tailrecurse.i.i.i.i.1.i.i.i.i427:                 ; preds = %tailrecurse.i.i.i.i.i.i.i.i425
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amh, i64 2
  %i.amp = load i8, ptr %i.amo, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i428 = icmp eq i8 %i.amp, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i428, label %tailrecurse.i.i.i.i.2.i.i.i.i429, label %.loopexit.i.i.i.i421

tailrecurse.i.i.i.i.2.i.i.i.i429:                 ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i427
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amh, i64 3
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i430 = icmp eq i8 %i.amr, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i430, label %tailrecurse.i.i.i.i.3.i.i.i.i431, label %.loopexit.i.i.i.i421

tailrecurse.i.i.i.i.3.i.i.i.i431:                 ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i429
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %306) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i413, ptr noundef nonnull align 8 dereferenceable(8) %306)
          to label %bb.lb unwind label %bb.ld

.loopexit.i.i.i.i421:                             ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i429, %tailrecurse.i.i.i.i.1.i.i.i.i427, %tailrecurse.i.i.i.i.i.i.i.i425, %.lr.ph.i.i.i.i.preheader.i.i.i.i423, %bb.kt
  invoke void @__cxa_rethrow() #45
          to label %bb.lh unwind label %bb.la

bb.ku:                                            ; preds = %bb.ks
  %i.ams = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.amt = icmp eq i32 %i.ama, %i.ams
  br i1 %i.amt, label %bb.kv, label %.body.i328

bb.kv:                                            ; preds = %bb.ku
  %i.amu = call ptr @__cxa_begin_catch(ptr %i.alz) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %305) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i413, ptr noundef nonnull align 8 dereferenceable(8) %305)
          to label %bb.kw unwind label %bb.ky

bb.kw:                                            ; preds = %bb.kv
  %i.amv = load ptr, ptr %305, align 8, !tbaa !171
  %.not.i.i.i.i37.i416 = icmp eq ptr %i.amv, null
  br i1 %.not.i.i.i.i37.i416, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i417, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %305) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i417

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i417: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ky:                                            ; preds = %bb.kv
  %i.amw = landingpad { ptr, i32 }
          cleanup
  %i.amx = load ptr, ptr %305, align 8, !tbaa !171
  %.not.i4.i.i.i.i414 = icmp eq ptr %i.amx, null
  br i1 %.not.i4.i.i.i.i414, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i415, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %305) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i415

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i415: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %305) #41
  invoke void @__cxa_end_catch()
          to label %.body.i328 unwind label %bb.lg

bb.la:                                            ; preds = %.loopexit.i.i.i.i421
  %i.amy = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.lb:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i431
  %i.amz = load ptr, ptr %306, align 8, !tbaa !171
  %.not.i6.i.i.i.i434 = icmp eq ptr %i.amz, null
  br i1 %.not.i6.i.i.i.i434, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i435, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %306) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i435

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i435: ; preds = %bb.lc, %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ld:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i431
  %i.ana = landingpad { ptr, i32 }
          cleanup
  %i.anb = load ptr, ptr %306, align 8, !tbaa !171
  %.not.i8.i.i.i.i432 = icmp eq ptr %i.anb, null
  br i1 %.not.i8.i.i.i.i432, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i433, label %bb.le

bb.le:                                            ; preds = %bb.ld
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %306) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i433

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i433: ; preds = %bb.le, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %306) #41
  br label %bb.lf

bb.lf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i433, %bb.la
  %.pn.i.i.i.i.i422 = phi { ptr, i32 } [ %i.ana, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i433 ], [ %i.amy, %bb.la ]
  invoke void @__cxa_end_catch()
          to label %.body.i328 unwind label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i415
  %i.anc = landingpad { ptr, i32 }
          catch ptr null
  %i.and = extractvalue { ptr, i32 } %i.anc, 0
  call void @__clang_call_terminate(ptr %i.and) #44
  unreachable

bb.lh:                                            ; preds = %.loopexit.i.i.i.i421
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i435, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i417
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i418

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i412, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.ane = add i32 %.019.i.i.i.i413, 1            ; 2 uses
  %exitcond.not.i.i.i.i420 = icmp eq i32 %i.ane, %i.alw
  br i1 %exitcond.not.i.i.i.i420, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i412, !llvm.loop !1084

bb.li:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i337
  %i.anf = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.ang = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i340 = getelementptr inbounds nuw i8, ptr %304, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %304)
  store ptr %308, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i340, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i341 = getelementptr inbounds nuw i8, ptr %304, i64 24
  store ptr %307, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i341, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i342 = getelementptr inbounds nuw i8, ptr %304, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i342, align 8
  store i8 1, ptr %304, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i343 = getelementptr inbounds nuw i8, ptr %304, i64 8
  store ptr %i.anf, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i343, align 8
  %.not.i.i.i.i.i.i.i344 = icmp slt i32 %i.alv, %i.ang
  br i1 %.not.i.i.i.i.i.i.i344, label %bb.lj, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.lj:                                            ; preds = %bb.li
  %i.anh = add i32 %i.alv, 63                     ; 2 uses
  %i.ani = srem i32 %i.anh, 64
  %i.anj = sub nsw i32 %i.anh, %i.ani             ; 6 uses
  %i.ank = and i32 %i.ang, -64                    ; 4 uses
  %i.anl = icmp slt i32 %i.ank, %i.anj
  br i1 %i.anl, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.anm = and i32 %i.ang, 63
  %i.ann = zext nneg i32 %i.anm to i64
  %notmask.i.i.i.i.i.i.i.i410 = shl nsw i64 -1, %i.ann
  %i.ano = xor i64 %notmask.i.i.i.i.i.i.i.i410, -1
  %i.anp = sub nsw i32 %i.anj, %i.alv             ; 2 uses
  %i.anq = zext nneg i32 %i.anp to i64
  %notmask.i.i.i.i.i.i.i.i.i411 = shl nsw i64 -1, %i.anq
  %i.anr = xor i64 %notmask.i.i.i.i.i.i.i.i.i411, -1
  %i.ans = sub nsw i32 64, %i.anp
  %i.ant = zext nneg i32 %i.ans to i64
  %i.anu = shl i64 %i.anr, %i.ant
  %i.anv = and i64 %i.anu, %i.ano
  br label %.invoke.i360

.invoke.i360:                                     ; preds = %bb.mw, %bb.lk
  %i.anw = phi i64 [ %i.anv, %bb.lk ], [ %i.arn, %bb.mw ]
  %i.anx = ashr i32 %i.ang, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %304, i32 noundef %i.anx, i64 noundef %i.anw)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i326

bb.ll:                                            ; preds = %bb.lj
  %.not32.i.i.i.i.i.i.i350 = icmp eq i32 %i.alv, %i.anj
  br i1 %.not32.i.i.i.i.i.i.i350, label %.noexc40.i352, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.any = sdiv i32 %i.alv, 64
  %i.anz = sub nsw i32 %i.anj, %i.alv             ; 2 uses
  %i.aoa = zext nneg i32 %i.anz to i64
  %notmask.i.i35.i.i.i.i.i.i.i351 = shl nsw i64 -1, %i.aoa
  %i.aob = xor i64 %notmask.i.i35.i.i.i.i.i.i.i351, -1
  %i.aoc = sub nsw i32 64, %i.anz
  %i.aod = zext nneg i32 %i.aoc to i64
  %i.aoe = shl i64 %i.aob, %i.aod
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %304, i32 noundef %i.any, i64 noundef %i.aoe)
          to label %.noexc40.i352 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i326

.noexc40.i352:                                    ; preds = %bb.lm, %bb.ll
  %i.aof = add nsw i32 %i.anj, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i353 = icmp sgt i32 %i.aof, %i.ank
  br i1 %.not3346.i.i.i.i.i.i.i353, label %._crit_edge.i.i.i.i.i.i.i357, label %.lr.ph.i.i.i.i.i.i.i354

._crit_edge.i.i.i.i.i.i.i357:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i352
  %.not34.i.i.i.i.i.i.i358 = icmp eq i32 %i.ang, %i.ank
  br i1 %.not34.i.i.i.i.i.i.i358, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.mw

.lr.ph.i.i.i.i.i.i.i354:                          ; preds = %.noexc40.i352, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.aog = phi i32 [ %i.ark, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.aof, %.noexc40.i352 ] ; 2 uses
  %.047.i.i.i.i.i.i.i355 = phi i32 [ %i.aog, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.anj, %.noexc40.i352 ] ; 2 uses
  %i.aoh = sdiv i32 %.047.i.i.i.i.i.i.i355, 64    ; 3 uses
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds [8 x i8], ptr %i.anf, i64 %i.aoi
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.aok, label %.lr.ph.i.i.i.i10.i.i.i.i386 [
    i64 -1, label %bb.ln
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i386:                      ; preds = %.lr.ph.i.i.i.i.i.i.i354
  %i.aol = shl nsw i32 %i.aoh, 6
  br label %bb.mf

bb.ln:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i354
  %i.aom = shl nsw i32 %i.aoh, 6                  ; 2 uses
  %i.aon = add i32 %i.aom, 64
  %i.aoo = sext i32 %i.aon to i64
  %.0.off.i.i.i.i.i.i.i361 = add i32 %.047.i.i.i.i.i.i.i355, 127
  %.not57.i.i.i.i.i.i.i.i362 = icmp ult i32 %.0.off.i.i.i.i.i.i.i361, 64
  br i1 %.not57.i.i.i.i.i.i.i.i362, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i363

.lr.ph56.i.i.i.i.i.i.i.i363:                      ; preds = %bb.ln
  %i.aop = sext i32 %i.aom to i64
  br label %bb.lo

bb.lo:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i363
  %.055.i.i.i.i.i.i.i.i364 = phi i64 [ %i.aop, %.lr.ph56.i.i.i.i.i.i.i.i363 ], [ %i.apx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aoq = trunc i64 %.055.i.i.i.i.i.i.i.i364 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %308)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aor = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aos = extractvalue { ptr, i32 } %i.aor, 0    ; 2 uses
  %i.aot = extractvalue { ptr, i32 } %i.aor, 1    ; 2 uses
  %i.aou = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.aov = icmp eq i32 %i.aot, %i.aou
  br i1 %i.aov, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.aow = call ptr @__cxa_begin_catch(ptr %i.aos) #41
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !376 ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 144
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !115 ; 4 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoy, i64 152
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !98
  %i.apd = icmp eq i64 %i.apc, 4
  br i1 %i.apd, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i373, label %.loopexit.i.i.i.i.i.i.i.i371

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i373:      ; preds = %bb.lq
  %i.ape = load i8, ptr %i.apa, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i374 = icmp eq i8 %i.ape, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i374, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i375, label %.loopexit.i.i.i.i.i.i.i.i371

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i375:           ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i373
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i376 = icmp eq i8 %i.apg, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i376, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i377, label %.loopexit.i.i.i.i.i.i.i.i371

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i377:         ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i375
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apa, i64 2
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i378 = icmp eq i8 %i.api, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i378, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i379, label %.loopexit.i.i.i.i.i.i.i.i371

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i379:         ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i377
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apa, i64 3
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i380 = icmp eq i8 %i.apk, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i380, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i381, label %.loopexit.i.i.i.i.i.i.i.i371

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i381:         ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i379
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %301) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.aoq, ptr noundef nonnull align 8 dereferenceable(8) %301)
          to label %bb.ly unwind label %bb.ma

.loopexit.i.i.i.i.i.i.i.i371:                     ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i379, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i377, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i375, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i373, %bb.lq
  invoke void @__cxa_rethrow() #45
          to label %bb.me unwind label %bb.lx

bb.lr:                                            ; preds = %bb.lp
  %i.apl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.apm = icmp eq i32 %i.aot, %i.apl
  br i1 %i.apm, label %bb.ls, label %.body.i328

bb.ls:                                            ; preds = %bb.lr
  %i.apn = call ptr @__cxa_begin_catch(ptr %i.aos) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %300) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.aoq, ptr noundef nonnull align 8 dereferenceable(8) %300)
          to label %bb.lt unwind label %bb.lv

bb.lt:                                            ; preds = %bb.ls
  %i.apo = load ptr, ptr %300, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i367 = icmp eq ptr %i.apo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i367, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i368, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %300) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i368

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i368: ; preds = %bb.lu, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.lv:                                            ; preds = %bb.ls
  %i.app = landingpad { ptr, i32 }
          cleanup
  %i.apq = load ptr, ptr %300, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i365 = icmp eq ptr %i.apq, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i365, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i366, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %300) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i366

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i366: ; preds = %bb.lw, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %300) #41
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i318, label %.lr.ph5773, label %.critedge.i.i.i.i.i.i148.i319, !llvm.loop !20

.lr.ph5773:                                       ; preds = %bb.oa, %bb.ob
  %indvars.iv.i.i.i.i146.i3175772 = phi i64 [ %indvars.iv.next.i.i.i.i152.i323, %bb.ob ], [ 0, %bb.oa ] ; 2 uses
  %i.avd = lshr exact i64 %indvars.iv.i.i.i.i146.i3175772, 3
  %i.ave = getelementptr inbounds nuw i8, ptr %i.ava, i64 %i.avd
  %i.avf = load i64, ptr %i.ave, align 8, !tbaa !219
  %i.avg = icmp eq i64 %i.avf, -1
  br i1 %i.avg, label %bb.ob, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i319:                    ; preds = %bb.ob, %bb.oa
  %.not38.i.i.i.i.i.i149.i320 = icmp eq i32 %i.auw, %i.avb
  br i1 %.not38.i.i.i.i.i.i149.i320, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211, label %bb.oc

bb.oc:                                            ; preds = %.critedge.i.i.i.i.i.i148.i319
  %i.avh = lshr i32 %i.auw, 6
  %i.avi = and i32 %i.auw, 63
  %i.avj = zext nneg i32 %i.avi to i64
  %notmask.i40.i.i.i.i.i.i150.i321 = shl nsw i64 -1, %i.avj
  %i.avk = zext nneg i32 %i.avh to i64
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.avk
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i322 = or i64 %i.avm, %notmask.i40.i.i.i.i.i.i150.i321
  %i.avn = icmp eq i64 %.demorgan.i.i.i.i151.i322, -1
  %i.avo = zext i1 %i.avn to i16
  %i.avp = or disjoint i16 %i.avo, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211: ; preds = %.lr.ph5773, %bb.oc, %.critedge.i.i.i.i.i.i148.i319, %bb.nz, %bb.ny, %bb.nx
  %.sroa.0.0.insert.ext.i.i.i.i59.i212 = phi i16 [ 256, %bb.ny ], [ 256, %bb.nx ], [ 257, %bb.nz ], [ 257, %.critedge.i.i.i.i.i.i148.i319 ], [ %i.avp, %bb.oc ], [ 256, %.lr.ph5773 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i212, ptr %i.auo, align 4
  %i.avq = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i212 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i213

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i213: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i324
  %.0.in.i.i.i.i61.i214 = phi i8 [ %.0.in.pre.i.i.i.i154.i325, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i324 ], [ %i.avq, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i211 ]
  %.0.i.i.i.i62.i215 = trunc nuw i8 %.0.in.i.i.i.i61.i214 to i1
  br i1 %.0.i.i.i.i62.i215, label %bb.od, label %bb.ou

bb.od:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i213
  %i.avr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.avs = load i32, ptr %i.avr, align 8, !tbaa !324 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !370 ; 2 uses
  %i.avv = icmp slt i32 %i.avu, %i.avs
  br i1 %i.avv, label %.lr.ph.i.i.i124.i294, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i294:                             ; preds = %bb.od, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i295 = phi i32 [ %i.axc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.avu, %bb.od ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %298, i32 noundef %.029.i.i.i.i295)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.oe

bb.oe:                                            ; preds = %.lr.ph.i.i.i124.i294
  %i.avw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.avx = extractvalue { ptr, i32 } %i.avw, 0    ; 2 uses
  %i.avy = extractvalue { ptr, i32 } %i.avw, 1    ; 2 uses
  %i.avz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.awa = icmp eq i32 %i.avy, %i.avz
  br i1 %i.awa, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.awb = call ptr @__cxa_begin_catch(ptr %i.avx) #41
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 8
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !376 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 144
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !115 ; 4 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awd, i64 152
  %i.awh = load i64, ptr %i.awg, align 8, !tbaa !98
  %i.awi = icmp eq i64 %i.awh, 4
  br i1 %i.awi, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i303, label %.loopexit.i.i.i130.i301

.lr.ph.i.i.i.i.preheader.i.i.i132.i303:           ; preds = %bb.of
  %i.awj = load i8, ptr %i.awf, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i304 = icmp eq i8 %i.awj, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i304, label %tailrecurse.i.i.i.i.i.i.i134.i305, label %.loopexit.i.i.i130.i301

tailrecurse.i.i.i.i.i.i.i134.i305:                ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i303
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awf, i64 1
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i306 = icmp eq i8 %i.awl, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i306, label %tailrecurse.i.i.i.i.1.i.i.i136.i307, label %.loopexit.i.i.i130.i301

tailrecurse.i.i.i.i.1.i.i.i136.i307:              ; preds = %tailrecurse.i.i.i.i.i.i.i134.i305
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awf, i64 2
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i308 = icmp eq i8 %i.awn, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i308, label %tailrecurse.i.i.i.i.2.i.i.i138.i309, label %.loopexit.i.i.i130.i301

tailrecurse.i.i.i.i.2.i.i.i138.i309:              ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i307
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awf, i64 3
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i310 = icmp eq i8 %i.awp, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i310, label %tailrecurse.i.i.i.i.3.i.i.i140.i311, label %.loopexit.i.i.i130.i301

tailrecurse.i.i.i.i.3.i.i.i140.i311:              ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i309
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %296) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i295, ptr noundef nonnull align 8 dereferenceable(8) %296)
          to label %bb.on unwind label %bb.op

.loopexit.i.i.i130.i301:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i309, %tailrecurse.i.i.i.i.1.i.i.i136.i307, %tailrecurse.i.i.i.i.i.i.i134.i305, %.lr.ph.i.i.i.i.preheader.i.i.i132.i303, %bb.of
  invoke void @__cxa_rethrow() #45
          to label %bb.ot unwind label %bb.om

bb.og:                                            ; preds = %bb.oe
  %i.awq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.awr = icmp eq i32 %i.avy, %i.awq
  br i1 %i.awr, label %bb.oh, label %common.resume

bb.oh:                                            ; preds = %bb.og
  %i.aws = call ptr @__cxa_begin_catch(ptr %i.avx) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %295) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %295) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i295, ptr noundef nonnull align 8 dereferenceable(8) %295)
          to label %bb.oi unwind label %bb.ok

bb.oi:                                            ; preds = %bb.oh
  %i.awt = load ptr, ptr %295, align 8, !tbaa !171
  %.not.i.i.i.i127.i298 = icmp eq ptr %i.awt, null
  br i1 %.not.i.i.i.i127.i298, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i299, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %295) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i299

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i299: ; preds = %bb.oj, %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %295) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ok:                                            ; preds = %bb.oh
  %i.awu = landingpad { ptr, i32 }
          cleanup
  %i.awv = load ptr, ptr %295, align 8, !tbaa !171
  %.not.i4.i.i.i125.i296 = icmp eq ptr %i.awv, null
  br i1 %.not.i4.i.i.i125.i296, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %295) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297: ; preds = %bb.ol, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %295) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.os

bb.om:                                            ; preds = %.loopexit.i.i.i130.i301
  %i.aww = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

bb.on:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i311
  %i.awx = load ptr, ptr %296, align 8, !tbaa !171
  %.not.i6.i.i.i143.i314 = icmp eq ptr %i.awx, null
  br i1 %.not.i6.i.i.i143.i314, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i315, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %296) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i315

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i315: ; preds = %bb.oo, %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.op:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i311
  %i.awy = landingpad { ptr, i32 }
          cleanup
  %i.awz = load ptr, ptr %296, align 8, !tbaa !171
  %.not.i8.i.i.i141.i312 = icmp eq ptr %i.awz, null
  br i1 %.not.i8.i.i.i141.i312, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i313, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %296) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i313

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i313: ; preds = %bb.oq, %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %296) #41
  br label %bb.or

bb.or:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i313, %bb.om
  %.pn.i.i.i.i131.i302 = phi { ptr, i32 } [ %i.awy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i313 ], [ %i.aww, %bb.om ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.os

bb.os:                                            ; preds = %bb.or, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i297
  %i.axa = landingpad { ptr, i32 }
          catch ptr null
  %i.axb = extractvalue { ptr, i32 } %i.axa, 0
  call void @__clang_call_terminate(ptr %i.axb) #44
  unreachable

bb.ot:                                            ; preds = %.loopexit.i.i.i130.i301
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i315, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i299
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i294
  %i.axc = add i32 %.029.i.i.i.i295, 1            ; 2 uses
  %exitcond.not.i.i.i129.i300 = icmp eq i32 %i.axc, %i.avs
  br i1 %exitcond.not.i.i.i129.i300, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i294, !llvm.loop !1093

bb.ou:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i213
  %i.axd = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !370 ; 6 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.axh = load i32, ptr %i.axg, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i216 = getelementptr inbounds nuw i8, ptr %294, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %294)
  store ptr %298, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i216, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i217 = getelementptr inbounds nuw i8, ptr %294, i64 24
  store ptr %297, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i217, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i218 = getelementptr inbounds nuw i8, ptr %294, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i218, align 8
  store i8 1, ptr %294, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i219 = getelementptr inbounds nuw i8, ptr %294, i64 8
  store ptr %i.axd, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i219, align 8
  %.not.i.i.i.i.i.i67.i220 = icmp slt i32 %i.axf, %i.axh
  br i1 %.not.i.i.i.i.i.i67.i220, label %bb.ov, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.ov:                                            ; preds = %bb.ou
  %i.axi = add i32 %i.axf, 63                     ; 2 uses
  %i.axj = srem i32 %i.axi, 64
  %i.axk = sub nsw i32 %i.axi, %i.axj             ; 6 uses
  %i.axl = and i32 %i.axh, -64                    ; 4 uses
  %i.axm = icmp slt i32 %i.axl, %i.axk
  br i1 %i.axm, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.axn = ashr i32 %i.axh, 6
  %i.axo = and i32 %i.axh, 63
  %i.axp = zext nneg i32 %i.axo to i64
  %notmask.i.i.i.i.i.i.i122.i292 = shl nsw i64 -1, %i.axp
  %i.axq = xor i64 %notmask.i.i.i.i.i.i.i122.i292, -1
  %i.axr = sub nsw i32 %i.axk, %i.axf             ; 2 uses
  %i.axs = zext nneg i32 %i.axr to i64
  %notmask.i.i.i.i.i.i.i.i123.i293 = shl nsw i64 -1, %i.axs
  %i.axt = xor i64 %notmask.i.i.i.i.i.i.i.i123.i293, -1
  %i.axu = sub nsw i32 64, %i.axr
  %i.axv = zext nneg i32 %i.axu to i64
  %i.axw = shl i64 %i.axt, %i.axv
  %i.axx = and i64 %i.axw, %i.axq
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %294, i32 noundef %i.axn, i64 noundef %i.axx)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.ox:                                            ; preds = %bb.ov
  %.not32.i.i.i.i.i.i68.i221 = icmp eq i32 %i.axf, %i.axk
  br i1 %.not32.i.i.i.i.i.i68.i221, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.axy = sdiv i32 %i.axf, 64
  %i.axz = sub nsw i32 %i.axk, %i.axf             ; 2 uses
  %i.aya = zext nneg i32 %i.axz to i64
  %notmask.i.i35.i.i.i.i.i.i69.i222 = shl nsw i64 -1, %i.aya
  %i.ayb = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i222, -1
  %i.ayc = sub nsw i32 64, %i.axz
  %i.ayd = zext nneg i32 %i.ayc to i64
  %i.aye = shl i64 %i.ayb, %i.ayd
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %294, i32 noundef %i.axy, i64 noundef %i.aye)
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %i.ayf = add nsw i32 %i.axk, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i223 = icmp sgt i32 %i.ayf, %i.axl
  br i1 %.not3351.i.i.i.i.i.i.i223, label %._crit_edge.i.i.i.i.i.i72.i227, label %.lr.ph.i.i.i.i.i.i70.i224

._crit_edge.i.i.i.i.i.i72.i227:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.oz
  %.not34.i.i.i.i.i.i73.i228 = icmp eq i32 %i.axh, %i.axl
  br i1 %.not34.i.i.i.i.i.i73.i228, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.qo

.lr.ph.i.i.i.i.i.i70.i224:                        ; preds = %bb.oz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.ayg = phi i32 [ %i.ben, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.ayf, %bb.oz ] ; 2 uses
  %.052.i.i.i.i.i.i.i225 = phi i32 [ %i.ayg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.axk, %bb.oz ] ; 2 uses
  %i.ayh = sdiv i32 %.052.i.i.i.i.i.i.i225, 64    ; 3 uses
  %i.ayi = sext i32 %i.ayh to i64
  %i.ayj = getelementptr inbounds [8 x i8], ptr %i.axd, i64 %i.ayi
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.ayk, label %.lr.ph.i.i.i.i10.i.i.i100.i253 [
    i64 -1, label %bb.pa
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i253:                   ; preds = %.lr.ph.i.i.i.i.i.i70.i224
  %i.ayl = shl nsw i32 %i.ayh, 6
  br label %bb.ps

bb.pa:                                            ; preds = %.lr.ph.i.i.i.i.i.i70.i224
  %i.aym = shl nsw i32 %i.ayh, 6                  ; 2 uses
  %i.ayn = add i32 %i.aym, 64
  %i.ayo = sext i32 %i.ayn to i64
  %.0.off.i.i.i.i.i.i75.i230 = add i32 %.052.i.i.i.i.i.i.i225, 127
  %.not57.i.i.i.i.i.i.i76.i231 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i230, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i231, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUllE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i232

.lr.ph56.i.i.i.i.i.i.i77.i232:                    ; preds = %bb.pa
  %i.ayp = sext i32 %i.aym to i64
  br label %bb.pb

bb.pb:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i232
  %.055.i.i.i.i.i.i.i78.i233 = phi i64 [ %i.ayp, %.lr.ph56.i.i.i.i.i.i.i77.i232 ], [ %i.azx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ayq = trunc i64 %.055.i.i.i.i.i.i.i78.i233 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUllE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %298, i32 noundef %i.ayq)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ayr = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ays = extractvalue { ptr, i32 } %i.ayr, 0    ; 2 uses
  %i.ayt = extractvalue { ptr, i32 } %i.ayr, 1    ; 2 uses
  %i.ayu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.ayv = icmp eq i32 %i.ayt, %i.ayu
  br i1 %i.ayv, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.ayw = call ptr @__cxa_begin_catch(ptr %i.ays) #41
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !376 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 144
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !115 ; 4 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayy, i64 152
  %i.azc = load i64, ptr %i.azb, align 8, !tbaa !98
  %i.azd = icmp eq i64 %i.azc, 4
  br i1 %i.azd, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i240, label %.loopexit.i.i.i.i.i.i.i85.i238

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i240:    ; preds = %bb.pd
  %i.aze = load i8, ptr %i.aza, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i241 = icmp eq i8 %i.aze, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i241, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i242, label %.loopexit.i.i.i.i.i.i.i85.i238

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i242:         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i240
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aza, i64 1
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i243 = icmp eq i8 %i.azg, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i243, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i244, label %.loopexit.i.i.i.i.i.i.i85.i238

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i244:       ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i242
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aza, i64 2
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i245 = icmp eq i8 %i.azi, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i245, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i246, label %.loopexit.i.i.i.i.i.i.i85.i238

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i246:       ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i244
  %i.azj = getelementptr inbounds nuw i8, ptr %i.aza, i64 3
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i247 = icmp eq i8 %i.azk, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i247, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i248, label %.loopexit.i.i.i.i.i.i.i85.i238

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i248:       ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i246
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %291) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ayq, ptr noundef nonnull align 8 dereferenceable(8) %291)
          to label %bb.pl unwind label %bb.pn

.loopexit.i.i.i.i.i.i.i85.i238:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i246, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i244, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i242, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i240, %bb.pd
  invoke void @__cxa_rethrow() #45
          to label %bb.pr unwind label %bb.pk

bb.pe:                                            ; preds = %bb.pc
  %i.azl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.azm = icmp eq i32 %i.ayt, %i.azl
  br i1 %i.azm, label %bb.pf, label %common.resume

bb.pf:                                            ; preds = %bb.pe
  %i.azn = call ptr @__cxa_begin_catch(ptr %i.ays) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %290) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %290) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ayq, ptr noundef nonnull align 8 dereferenceable(8) %290)
          to label %bb.pg unwind label %bb.pi

bb.pg:                                            ; preds = %bb.pf
  %i.azo = load ptr, ptr %290, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i236 = icmp eq ptr %i.azo, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i236, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i237, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %290) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i237

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i237: ; preds = %bb.ph, %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIlZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUllE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.pi:                                            ; preds = %bb.pf
  %i.azp = landingpad { ptr, i32 }
          cleanup
  %i.azq = load ptr, ptr %290, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i234 = icmp eq ptr %i.azq, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i234, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i235, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %290) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i235

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i235: ; preds = %bb.pj, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.pq
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i825 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i830, %i.brf
  br i1 %.not37.i.i.not.i.i.i.i.i825, label %.lr.ph5767, label %.critedge.i.i.i.i.i.i.i826, !llvm.loop !20

.lr.ph5767:                                       ; preds = %bb.up, %bb.uq
  %indvars.iv.i.i.i.i.i8245766 = phi i64 [ %indvars.iv.next.i.i.i.i.i830, %bb.uq ], [ 0, %bb.up ] ; 2 uses
  %i.brg = lshr exact i64 %indvars.iv.i.i.i.i.i8245766, 3
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brd, i64 %i.brg
  %i.bri = load i64, ptr %i.brh, align 8, !tbaa !219
  %i.brj = icmp eq i64 %i.bri, -1
  br i1 %i.brj, label %bb.uq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722, !llvm.loop !20

.critedge.i.i.i.i.i.i.i826:                       ; preds = %bb.uq, %bb.up
  %.not38.i.i.i.i.i.i.i827 = icmp eq i32 %i.bra, %i.bre
  br i1 %.not38.i.i.i.i.i.i.i827, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722, label %bb.ur

bb.ur:                                            ; preds = %.critedge.i.i.i.i.i.i.i826
  %i.brk = lshr i32 %i.bra, 6
  %i.brl = and i32 %i.bra, 63
  %i.brm = zext nneg i32 %i.brl to i64
  %notmask.i40.i.i.i.i.i.i.i828 = shl nsw i64 -1, %i.brm
  %i.brn = zext nneg i32 %i.brk to i64
  %i.bro = getelementptr inbounds nuw [8 x i8], ptr %i.brd, i64 %i.brn
  %i.brp = load i64, ptr %i.bro, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i829 = or i64 %i.brp, %notmask.i40.i.i.i.i.i.i.i828
  %i.brq = icmp eq i64 %.demorgan.i.i.i.i.i829, -1
  %i.brr = zext i1 %i.brq to i16
  %i.brs = or disjoint i16 %i.brr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722: ; preds = %.lr.ph5767, %bb.ur, %.critedge.i.i.i.i.i.i.i826, %bb.uo, %bb.un, %bb.um
  %.sroa.0.0.insert.ext.i.i.i.i.i723 = phi i16 [ 256, %bb.un ], [ 256, %bb.um ], [ 257, %bb.uo ], [ 257, %.critedge.i.i.i.i.i.i.i826 ], [ %i.brs, %bb.ur ], [ 256, %.lr.ph5767 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i723, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.brt = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i723 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i724

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i724: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i831
  %i.bru = phi i32 [ %.pre.i.i.i833, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i831 ], [ %i.bqy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722 ] ; 8 uses
  %.0.in.i.i.i.i.i725 = phi i8 [ %.0.in.pre.i.i.i.i.i832, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i831 ], [ %i.brt, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i722 ]
  %.0.i.i.i.i36.i726 = trunc nuw i8 %.0.in.i.i.i.i.i725 to i1
  br i1 %.0.i.i.i.i36.i726, label %bb.us, label %bb.vj

bb.us:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i724
  %i.brv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.brw = icmp slt i32 %i.bru, %i.brv
  br i1 %i.brw, label %.lr.ph.i.i.i.i799, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i799:                                ; preds = %bb.us, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i800 = phi i32 [ %i.btd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.bru, %bb.us ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %275)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ut

bb.ut:                                            ; preds = %.lr.ph.i.i.i.i799
  %i.brx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bry = extractvalue { ptr, i32 } %i.brx, 0    ; 2 uses
  %i.brz = extractvalue { ptr, i32 } %i.brx, 1    ; 2 uses
  %i.bsa = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.bsb = icmp eq i32 %i.brz, %i.bsa
  br i1 %i.bsb, label %bb.uu, label %bb.uv

bb.uu:                                            ; preds = %bb.ut
  %i.bsc = call ptr @__cxa_begin_catch(ptr %i.bry) #41
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 8
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !376 ; 2 uses
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bse, i64 144
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !115 ; 4 uses
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bse, i64 152
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !98
  %i.bsj = icmp eq i64 %i.bsi, 4
  br i1 %i.bsj, label %.lr.ph.i.i.i.i.preheader.i.i.i.i810, label %.loopexit.i.i.i.i808

.lr.ph.i.i.i.i.preheader.i.i.i.i810:              ; preds = %bb.uu
  %i.bsk = load i8, ptr %i.bsg, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i811 = icmp eq i8 %i.bsk, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i811, label %tailrecurse.i.i.i.i.i.i.i.i812, label %.loopexit.i.i.i.i808

tailrecurse.i.i.i.i.i.i.i.i812:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i810
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsg, i64 1
  %i.bsm = load i8, ptr %i.bsl, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i813 = icmp eq i8 %i.bsm, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i813, label %tailrecurse.i.i.i.i.1.i.i.i.i814, label %.loopexit.i.i.i.i808

tailrecurse.i.i.i.i.1.i.i.i.i814:                 ; preds = %tailrecurse.i.i.i.i.i.i.i.i812
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsg, i64 2
  %i.bso = load i8, ptr %i.bsn, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i815 = icmp eq i8 %i.bso, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i815, label %tailrecurse.i.i.i.i.2.i.i.i.i816, label %.loopexit.i.i.i.i808

tailrecurse.i.i.i.i.2.i.i.i.i816:                 ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i814
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsg, i64 3
  %i.bsq = load i8, ptr %i.bsp, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i817 = icmp eq i8 %i.bsq, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i817, label %tailrecurse.i.i.i.i.3.i.i.i.i818, label %.loopexit.i.i.i.i808

tailrecurse.i.i.i.i.3.i.i.i.i818:                 ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i816
  call void @llvm.lifetime.start.p0(ptr nonnull %273) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %273) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i800, ptr noundef nonnull align 8 dereferenceable(8) %273)
          to label %bb.vc unwind label %bb.ve

.loopexit.i.i.i.i808:                             ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i816, %tailrecurse.i.i.i.i.1.i.i.i.i814, %tailrecurse.i.i.i.i.i.i.i.i812, %.lr.ph.i.i.i.i.preheader.i.i.i.i810, %bb.uu
  invoke void @__cxa_rethrow() #45
          to label %bb.vi unwind label %bb.vb

bb.uv:                                            ; preds = %bb.ut
  %i.bsr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.bss = icmp eq i32 %i.brz, %i.bsr
  br i1 %i.bss, label %bb.uw, label %.body.i715

bb.uw:                                            ; preds = %bb.uv
  %i.bst = call ptr @__cxa_begin_catch(ptr %i.bry) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %272) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %272) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i800, ptr noundef nonnull align 8 dereferenceable(8) %272)
          to label %bb.ux unwind label %bb.uz

bb.ux:                                            ; preds = %bb.uw
  %i.bsu = load ptr, ptr %272, align 8, !tbaa !171
  %.not.i.i.i.i37.i803 = icmp eq ptr %i.bsu, null
  br i1 %.not.i.i.i.i37.i803, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i804, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %272) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i804

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i804: ; preds = %bb.uy, %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.uz:                                            ; preds = %bb.uw
  %i.bsv = landingpad { ptr, i32 }
          cleanup
  %i.bsw = load ptr, ptr %272, align 8, !tbaa !171
  %.not.i4.i.i.i.i801 = icmp eq ptr %i.bsw, null
  br i1 %.not.i4.i.i.i.i801, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i802, label %bb.va

bb.va:                                            ; preds = %bb.uz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %272) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i802

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i802: ; preds = %bb.va, %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #41
  invoke void @__cxa_end_catch()
          to label %.body.i715 unwind label %bb.vh

bb.vb:                                            ; preds = %.loopexit.i.i.i.i808
  %i.bsx = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.vc:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i818
  %i.bsy = load ptr, ptr %273, align 8, !tbaa !171
  %.not.i6.i.i.i.i821 = icmp eq ptr %i.bsy, null
  br i1 %.not.i6.i.i.i.i821, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i822, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %273) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i822

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i822: ; preds = %bb.vd, %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ve:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i818
  %i.bsz = landingpad { ptr, i32 }
          cleanup
  %i.bta = load ptr, ptr %273, align 8, !tbaa !171
  %.not.i8.i.i.i.i819 = icmp eq ptr %i.bta, null
  br i1 %.not.i8.i.i.i.i819, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i820, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %273) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i820

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i820: ; preds = %bb.vf, %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %273) #41
  br label %bb.vg

bb.vg:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i820, %bb.vb
  %.pn.i.i.i.i.i809 = phi { ptr, i32 } [ %i.bsz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i820 ], [ %i.bsx, %bb.vb ]
  invoke void @__cxa_end_catch()
          to label %.body.i715 unwind label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i802
  %i.btb = landingpad { ptr, i32 }
          catch ptr null
  %i.btc = extractvalue { ptr, i32 } %i.btb, 0
  call void @__clang_call_terminate(ptr %i.btc) #44
  unreachable

bb.vi:                                            ; preds = %.loopexit.i.i.i.i808
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i822, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i804
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i805

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i799, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.btd = add i32 %.019.i.i.i.i800, 1            ; 2 uses
  %exitcond.not.i.i.i.i807 = icmp eq i32 %i.btd, %i.brv
  br i1 %exitcond.not.i.i.i.i807, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i799, !llvm.loop !1103

bb.vj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i724
  %i.bte = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.btf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i727 = getelementptr inbounds nuw i8, ptr %271, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %271)
  store ptr %275, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i727, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i728 = getelementptr inbounds nuw i8, ptr %271, i64 24
  store ptr %274, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i728, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i729 = getelementptr inbounds nuw i8, ptr %271, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i729, align 8
  store i8 1, ptr %271, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i730 = getelementptr inbounds nuw i8, ptr %271, i64 8
  store ptr %i.bte, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i730, align 8
  %.not.i.i.i.i.i.i.i731 = icmp slt i32 %i.bru, %i.btf
  br i1 %.not.i.i.i.i.i.i.i731, label %bb.vk, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.vk:                                            ; preds = %bb.vj
  %i.btg = add i32 %i.bru, 63                     ; 2 uses
  %i.bth = srem i32 %i.btg, 64
  %i.bti = sub nsw i32 %i.btg, %i.bth             ; 6 uses
  %i.btj = and i32 %i.btf, -64                    ; 4 uses
  %i.btk = icmp slt i32 %i.btj, %i.bti
  br i1 %i.btk, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  %i.btl = and i32 %i.btf, 63
  %i.btm = zext nneg i32 %i.btl to i64
  %notmask.i.i.i.i.i.i.i.i797 = shl nsw i64 -1, %i.btm
  %i.btn = xor i64 %notmask.i.i.i.i.i.i.i.i797, -1
  %i.bto = sub nsw i32 %i.bti, %i.bru             ; 2 uses
  %i.btp = zext nneg i32 %i.bto to i64
  %notmask.i.i.i.i.i.i.i.i.i798 = shl nsw i64 -1, %i.btp
  %i.btq = xor i64 %notmask.i.i.i.i.i.i.i.i.i798, -1
  %i.btr = sub nsw i32 64, %i.bto
  %i.bts = zext nneg i32 %i.btr to i64
  %i.btt = shl i64 %i.btq, %i.bts
  %i.btu = and i64 %i.btt, %i.btn
  br label %.invoke.i747

.invoke.i747:                                     ; preds = %bb.wx, %bb.vl
  %i.btv = phi i64 [ %i.btu, %bb.vl ], [ %i.bxm, %bb.wx ]
  %i.btw = ashr i32 %i.btf, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %271, i32 noundef %i.btw, i64 noundef %i.btv)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i713

bb.vm:                                            ; preds = %bb.vk
  %.not32.i.i.i.i.i.i.i737 = icmp eq i32 %i.bru, %i.bti
  br i1 %.not32.i.i.i.i.i.i.i737, label %.noexc40.i739, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.btx = sdiv i32 %i.bru, 64
  %i.bty = sub nsw i32 %i.bti, %i.bru             ; 2 uses
  %i.btz = zext nneg i32 %i.bty to i64
  %notmask.i.i35.i.i.i.i.i.i.i738 = shl nsw i64 -1, %i.btz
  %i.bua = xor i64 %notmask.i.i35.i.i.i.i.i.i.i738, -1
  %i.bub = sub nsw i32 64, %i.bty
  %i.buc = zext nneg i32 %i.bub to i64
  %i.bud = shl i64 %i.bua, %i.buc
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %271, i32 noundef %i.btx, i64 noundef %i.bud)
          to label %.noexc40.i739 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i713

.noexc40.i739:                                    ; preds = %bb.vn, %bb.vm
  %i.bue = add nsw i32 %i.bti, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i740 = icmp sgt i32 %i.bue, %i.btj
  br i1 %.not3346.i.i.i.i.i.i.i740, label %._crit_edge.i.i.i.i.i.i.i744, label %.lr.ph.i.i.i.i.i.i.i741

._crit_edge.i.i.i.i.i.i.i744:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i739
  %.not34.i.i.i.i.i.i.i745 = icmp eq i32 %i.btf, %i.btj
  br i1 %.not34.i.i.i.i.i.i.i745, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.wx

.lr.ph.i.i.i.i.i.i.i741:                          ; preds = %.noexc40.i739, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.buf = phi i32 [ %i.bxj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.bue, %.noexc40.i739 ] ; 2 uses
  %.047.i.i.i.i.i.i.i742 = phi i32 [ %i.buf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.bti, %.noexc40.i739 ] ; 2 uses
  %i.bug = sdiv i32 %.047.i.i.i.i.i.i.i742, 64    ; 3 uses
  %i.buh = sext i32 %i.bug to i64
  %i.bui = getelementptr inbounds [8 x i8], ptr %i.bte, i64 %i.buh
  %i.buj = load i64, ptr %i.bui, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.buj, label %.lr.ph.i.i.i.i10.i.i.i.i773 [
    i64 -1, label %bb.vo
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i773:                      ; preds = %.lr.ph.i.i.i.i.i.i.i741
  %i.buk = shl nsw i32 %i.bug, 6
  br label %bb.wg

bb.vo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i741
  %i.bul = shl nsw i32 %i.bug, 6                  ; 2 uses
  %i.bum = add i32 %i.bul, 64
  %i.bun = sext i32 %i.bum to i64
  %.0.off.i.i.i.i.i.i.i748 = add i32 %.047.i.i.i.i.i.i.i742, 127
  %.not57.i.i.i.i.i.i.i.i749 = icmp ult i32 %.0.off.i.i.i.i.i.i.i748, 64
  br i1 %.not57.i.i.i.i.i.i.i.i749, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i750

.lr.ph56.i.i.i.i.i.i.i.i750:                      ; preds = %bb.vo
  %i.buo = sext i32 %i.bul to i64
  br label %bb.vp

bb.vp:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i750
  %.055.i.i.i.i.i.i.i.i751 = phi i64 [ %i.buo, %.lr.ph56.i.i.i.i.i.i.i.i750 ], [ %i.bvw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bup = trunc i64 %.055.i.i.i.i.i.i.i.i751 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %275)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.buq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bur = extractvalue { ptr, i32 } %i.buq, 0    ; 2 uses
  %i.bus = extractvalue { ptr, i32 } %i.buq, 1    ; 2 uses
  %i.but = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.buu = icmp eq i32 %i.bus, %i.but
  br i1 %i.buu, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  %i.buv = call ptr @__cxa_begin_catch(ptr %i.bur) #41
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 8
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !376 ; 2 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 144
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !115 ; 4 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 152
  %i.bvb = load i64, ptr %i.bva, align 8, !tbaa !98
  %i.bvc = icmp eq i64 %i.bvb, 4
  br i1 %i.bvc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i760, label %.loopexit.i.i.i.i.i.i.i.i758

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i760:      ; preds = %bb.vr
  %i.bvd = load i8, ptr %i.buz, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i761 = icmp eq i8 %i.bvd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i761, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i762, label %.loopexit.i.i.i.i.i.i.i.i758

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i762:           ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i760
  %i.bve = getelementptr inbounds nuw i8, ptr %i.buz, i64 1
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i763 = icmp eq i8 %i.bvf, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i763, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i764, label %.loopexit.i.i.i.i.i.i.i.i758

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i764:         ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i762
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.buz, i64 2
  %i.bvh = load i8, ptr %i.bvg, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i765 = icmp eq i8 %i.bvh, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i765, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i766, label %.loopexit.i.i.i.i.i.i.i.i758

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i766:         ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i764
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.buz, i64 3
  %i.bvj = load i8, ptr %i.bvi, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i767 = icmp eq i8 %i.bvj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i767, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i768, label %.loopexit.i.i.i.i.i.i.i.i758

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i768:         ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i766
  call void @llvm.lifetime.start.p0(ptr nonnull %268) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %268) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.bup, ptr noundef nonnull align 8 dereferenceable(8) %268)
          to label %bb.vz unwind label %bb.wb

.loopexit.i.i.i.i.i.i.i.i758:                     ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i766, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i764, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i762, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i760, %bb.vr
  invoke void @__cxa_rethrow() #45
          to label %bb.wf unwind label %bb.vy

bb.vs:                                            ; preds = %bb.vq
  %i.bvk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.bvl = icmp eq i32 %i.bus, %i.bvk
  br i1 %i.bvl, label %bb.vt, label %.body.i715

bb.vt:                                            ; preds = %bb.vs
  %i.bvm = call ptr @__cxa_begin_catch(ptr %i.bur) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %267) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %267) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.bup, ptr noundef nonnull align 8 dereferenceable(8) %267)
          to label %bb.vu unwind label %bb.vw

bb.vu:                                            ; preds = %bb.vt
  %i.bvn = load ptr, ptr %267, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i754 = icmp eq ptr %i.bvn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i754, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i755, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %267) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i755

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i755: ; preds = %bb.vv, %bb.vu
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.vw:                                            ; preds = %bb.vt
  %i.bvo = landingpad { ptr, i32 }
          cleanup
  %i.bvp = load ptr, ptr %267, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i752 = icmp eq ptr %i.bvp, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i752, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i753, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %267) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i753

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i753: ; preds = %bb.vx, %bb.vw
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #41
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i705, label %.lr.ph5764, label %.critedge.i.i.i.i.i.i148.i706, !llvm.loop !20

.lr.ph5764:                                       ; preds = %bb.yb, %bb.yc
  %indvars.iv.i.i.i.i146.i7045763 = phi i64 [ %indvars.iv.next.i.i.i.i152.i710, %bb.yc ], [ 0, %bb.yb ] ; 2 uses
  %i.cbc = lshr exact i64 %indvars.iv.i.i.i.i146.i7045763, 3
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.caz, i64 %i.cbc
  %i.cbe = load i64, ptr %i.cbd, align 8, !tbaa !219
  %i.cbf = icmp eq i64 %i.cbe, -1
  br i1 %i.cbf, label %bb.yc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i706:                    ; preds = %bb.yc, %bb.yb
  %.not38.i.i.i.i.i.i149.i707 = icmp eq i32 %i.cav, %i.cba
  br i1 %.not38.i.i.i.i.i.i149.i707, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598, label %bb.yd

bb.yd:                                            ; preds = %.critedge.i.i.i.i.i.i148.i706
  %i.cbg = lshr i32 %i.cav, 6
  %i.cbh = and i32 %i.cav, 63
  %i.cbi = zext nneg i32 %i.cbh to i64
  %notmask.i40.i.i.i.i.i.i150.i708 = shl nsw i64 -1, %i.cbi
  %i.cbj = zext nneg i32 %i.cbg to i64
  %i.cbk = getelementptr inbounds nuw [8 x i8], ptr %i.caz, i64 %i.cbj
  %i.cbl = load i64, ptr %i.cbk, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i709 = or i64 %i.cbl, %notmask.i40.i.i.i.i.i.i150.i708
  %i.cbm = icmp eq i64 %.demorgan.i.i.i.i151.i709, -1
  %i.cbn = zext i1 %i.cbm to i16
  %i.cbo = or disjoint i16 %i.cbn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598: ; preds = %.lr.ph5764, %bb.yd, %.critedge.i.i.i.i.i.i148.i706, %bb.ya, %bb.xz, %bb.xy
  %.sroa.0.0.insert.ext.i.i.i.i59.i599 = phi i16 [ 256, %bb.xz ], [ 256, %bb.xy ], [ 257, %bb.ya ], [ 257, %.critedge.i.i.i.i.i.i148.i706 ], [ %i.cbo, %bb.yd ], [ 256, %.lr.ph5764 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i599, ptr %i.can, align 4
  %i.cbp = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i599 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i600

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i600: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i711
  %.0.in.i.i.i.i61.i601 = phi i8 [ %.0.in.pre.i.i.i.i154.i712, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i711 ], [ %i.cbp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i598 ]
  %.0.i.i.i.i62.i602 = trunc nuw i8 %.0.in.i.i.i.i61.i601 to i1
  br i1 %.0.i.i.i.i62.i602, label %bb.ye, label %bb.yv

bb.ye:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i600
  %i.cbq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cbr = load i32, ptr %i.cbq, align 8, !tbaa !324 ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cbt = load i32, ptr %i.cbs, align 4, !tbaa !370 ; 2 uses
  %i.cbu = icmp slt i32 %i.cbt, %i.cbr
  br i1 %i.cbu, label %.lr.ph.i.i.i124.i681, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i681:                             ; preds = %bb.ye, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i682 = phi i32 [ %i.cdb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.cbt, %bb.ye ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %265, i32 noundef %.029.i.i.i.i682)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.yf

bb.yf:                                            ; preds = %.lr.ph.i.i.i124.i681
  %i.cbv = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.cbw = extractvalue { ptr, i32 } %i.cbv, 0    ; 2 uses
  %i.cbx = extractvalue { ptr, i32 } %i.cbv, 1    ; 2 uses
  %i.cby = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.cbz = icmp eq i32 %i.cbx, %i.cby
  br i1 %i.cbz, label %bb.yg, label %bb.yh

bb.yg:                                            ; preds = %bb.yf
  %i.cca = call ptr @__cxa_begin_catch(ptr %i.cbw) #41
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 8
  %i.ccc = load ptr, ptr %i.ccb, align 8, !tbaa !376 ; 2 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 144
  %i.cce = load ptr, ptr %i.ccd, align 8, !tbaa !115 ; 4 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.ccc, i64 152
  %i.ccg = load i64, ptr %i.ccf, align 8, !tbaa !98
  %i.cch = icmp eq i64 %i.ccg, 4
  br i1 %i.cch, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i690, label %.loopexit.i.i.i130.i688

.lr.ph.i.i.i.i.preheader.i.i.i132.i690:           ; preds = %bb.yg
  %i.cci = load i8, ptr %i.cce, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i691 = icmp eq i8 %i.cci, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i691, label %tailrecurse.i.i.i.i.i.i.i134.i692, label %.loopexit.i.i.i130.i688

tailrecurse.i.i.i.i.i.i.i134.i692:                ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i690
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cce, i64 1
  %i.cck = load i8, ptr %i.ccj, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i693 = icmp eq i8 %i.cck, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i693, label %tailrecurse.i.i.i.i.1.i.i.i136.i694, label %.loopexit.i.i.i130.i688

tailrecurse.i.i.i.i.1.i.i.i136.i694:              ; preds = %tailrecurse.i.i.i.i.i.i.i134.i692
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cce, i64 2
  %i.ccm = load i8, ptr %i.ccl, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i695 = icmp eq i8 %i.ccm, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i695, label %tailrecurse.i.i.i.i.2.i.i.i138.i696, label %.loopexit.i.i.i130.i688

tailrecurse.i.i.i.i.2.i.i.i138.i696:              ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i694
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cce, i64 3
  %i.cco = load i8, ptr %i.ccn, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i697 = icmp eq i8 %i.cco, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i697, label %tailrecurse.i.i.i.i.3.i.i.i140.i698, label %.loopexit.i.i.i130.i688

tailrecurse.i.i.i.i.3.i.i.i140.i698:              ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i696
  call void @llvm.lifetime.start.p0(ptr nonnull %263) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %263) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i682, ptr noundef nonnull align 8 dereferenceable(8) %263)
          to label %bb.yo unwind label %bb.yq

.loopexit.i.i.i130.i688:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i696, %tailrecurse.i.i.i.i.1.i.i.i136.i694, %tailrecurse.i.i.i.i.i.i.i134.i692, %.lr.ph.i.i.i.i.preheader.i.i.i132.i690, %bb.yg
  invoke void @__cxa_rethrow() #45
          to label %bb.yu unwind label %bb.yn

bb.yh:                                            ; preds = %bb.yf
  %i.ccp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.ccq = icmp eq i32 %i.cbx, %i.ccp
  br i1 %i.ccq, label %bb.yi, label %common.resume

bb.yi:                                            ; preds = %bb.yh
  %i.ccr = call ptr @__cxa_begin_catch(ptr %i.cbw) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %262) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %262) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i682, ptr noundef nonnull align 8 dereferenceable(8) %262)
          to label %bb.yj unwind label %bb.yl

bb.yj:                                            ; preds = %bb.yi
  %i.ccs = load ptr, ptr %262, align 8, !tbaa !171
  %.not.i.i.i.i127.i685 = icmp eq ptr %i.ccs, null
  br i1 %.not.i.i.i.i127.i685, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i686, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %262) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i686

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i686: ; preds = %bb.yk, %bb.yj
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.yl:                                            ; preds = %bb.yi
  %i.cct = landingpad { ptr, i32 }
          cleanup
  %i.ccu = load ptr, ptr %262, align 8, !tbaa !171
  %.not.i4.i.i.i125.i683 = icmp eq ptr %i.ccu, null
  br i1 %.not.i4.i.i.i125.i683, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %262) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684: ; preds = %bb.ym, %bb.yl
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.yt

bb.yn:                                            ; preds = %.loopexit.i.i.i130.i688
  %i.ccv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ys

bb.yo:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i698
  %i.ccw = load ptr, ptr %263, align 8, !tbaa !171
  %.not.i6.i.i.i143.i701 = icmp eq ptr %i.ccw, null
  br i1 %.not.i6.i.i.i143.i701, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i702, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %263) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i702

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i702: ; preds = %bb.yp, %bb.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.yq:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i698
  %i.ccx = landingpad { ptr, i32 }
          cleanup
  %i.ccy = load ptr, ptr %263, align 8, !tbaa !171
  %.not.i8.i.i.i141.i699 = icmp eq ptr %i.ccy, null
  br i1 %.not.i8.i.i.i141.i699, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i700, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %263) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i700

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i700: ; preds = %bb.yr, %bb.yq
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #41
  br label %bb.ys

bb.ys:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i700, %bb.yn
  %.pn.i.i.i.i131.i689 = phi { ptr, i32 } [ %i.ccx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i700 ], [ %i.ccv, %bb.yn ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i684
  %i.ccz = landingpad { ptr, i32 }
          catch ptr null
  %i.cda = extractvalue { ptr, i32 } %i.ccz, 0
  call void @__clang_call_terminate(ptr %i.cda) #44
  unreachable

bb.yu:                                            ; preds = %.loopexit.i.i.i130.i688
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i702, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i686
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i681
  %i.cdb = add i32 %.029.i.i.i.i682, 1            ; 2 uses
  %exitcond.not.i.i.i129.i687 = icmp eq i32 %i.cdb, %i.cbr
  br i1 %exitcond.not.i.i.i129.i687, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i681, !llvm.loop !1112

bb.yv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i600
  %i.cdc = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cde = load i32, ptr %i.cdd, align 4, !tbaa !370 ; 6 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cdg = load i32, ptr %i.cdf, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i603 = getelementptr inbounds nuw i8, ptr %261, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %261)
  store ptr %265, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i603, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i604 = getelementptr inbounds nuw i8, ptr %261, i64 24
  store ptr %264, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i604, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i605 = getelementptr inbounds nuw i8, ptr %261, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i605, align 8
  store i8 1, ptr %261, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i606 = getelementptr inbounds nuw i8, ptr %261, i64 8
  store ptr %i.cdc, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i606, align 8
  %.not.i.i.i.i.i.i67.i607 = icmp slt i32 %i.cde, %i.cdg
  br i1 %.not.i.i.i.i.i.i67.i607, label %bb.yw, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.yw:                                            ; preds = %bb.yv
  %i.cdh = add i32 %i.cde, 63                     ; 2 uses
  %i.cdi = srem i32 %i.cdh, 64
  %i.cdj = sub nsw i32 %i.cdh, %i.cdi             ; 6 uses
  %i.cdk = and i32 %i.cdg, -64                    ; 4 uses
  %i.cdl = icmp slt i32 %i.cdk, %i.cdj
  br i1 %i.cdl, label %bb.yx, label %bb.yy

bb.yx:                                            ; preds = %bb.yw
  %i.cdm = ashr i32 %i.cdg, 6
  %i.cdn = and i32 %i.cdg, 63
  %i.cdo = zext nneg i32 %i.cdn to i64
  %notmask.i.i.i.i.i.i.i122.i679 = shl nsw i64 -1, %i.cdo
  %i.cdp = xor i64 %notmask.i.i.i.i.i.i.i122.i679, -1
  %i.cdq = sub nsw i32 %i.cdj, %i.cde             ; 2 uses
  %i.cdr = zext nneg i32 %i.cdq to i64
  %notmask.i.i.i.i.i.i.i.i123.i680 = shl nsw i64 -1, %i.cdr
  %i.cds = xor i64 %notmask.i.i.i.i.i.i.i.i123.i680, -1
  %i.cdt = sub nsw i32 64, %i.cdq
  %i.cdu = zext nneg i32 %i.cdt to i64
  %i.cdv = shl i64 %i.cds, %i.cdu
  %i.cdw = and i64 %i.cdv, %i.cdp
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %261, i32 noundef %i.cdm, i64 noundef %i.cdw)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.yy:                                            ; preds = %bb.yw
  %.not32.i.i.i.i.i.i68.i608 = icmp eq i32 %i.cde, %i.cdj
  br i1 %.not32.i.i.i.i.i.i68.i608, label %bb.za, label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.cdx = sdiv i32 %i.cde, 64
  %i.cdy = sub nsw i32 %i.cdj, %i.cde             ; 2 uses
  %i.cdz = zext nneg i32 %i.cdy to i64
  %notmask.i.i35.i.i.i.i.i.i69.i609 = shl nsw i64 -1, %i.cdz
  %i.cea = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i609, -1
  %i.ceb = sub nsw i32 64, %i.cdy
  %i.cec = zext nneg i32 %i.ceb to i64
  %i.ced = shl i64 %i.cea, %i.cec
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %261, i32 noundef %i.cdx, i64 noundef %i.ced)
  br label %bb.za

bb.za:                                            ; preds = %bb.yz, %bb.yy
  %i.cee = add nsw i32 %i.cdj, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i610 = icmp sgt i32 %i.cee, %i.cdk
  br i1 %.not3351.i.i.i.i.i.i.i610, label %._crit_edge.i.i.i.i.i.i72.i614, label %.lr.ph.i.i.i.i.i.i70.i611

._crit_edge.i.i.i.i.i.i72.i614:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.za
  %.not34.i.i.i.i.i.i73.i615 = icmp eq i32 %i.cdg, %i.cdk
  br i1 %.not34.i.i.i.i.i.i73.i615, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.aap

.lr.ph.i.i.i.i.i.i70.i611:                        ; preds = %bb.za, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.cef = phi i32 [ %i.ckn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.cee, %bb.za ] ; 2 uses
  %.052.i.i.i.i.i.i.i612 = phi i32 [ %i.cef, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.cdj, %bb.za ] ; 2 uses
  %i.ceg = sdiv i32 %.052.i.i.i.i.i.i.i612, 64    ; 3 uses
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds [8 x i8], ptr %i.cdc, i64 %i.ceh
  %i.cej = load i64, ptr %i.cei, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.cej, label %.lr.ph.i.i.i.i10.i.i.i100.i640 [
    i64 -1, label %bb.zb
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i640:                   ; preds = %.lr.ph.i.i.i.i.i.i70.i611
  %i.cek = shl nsw i32 %i.ceg, 6
  br label %bb.zt

bb.zb:                                            ; preds = %.lr.ph.i.i.i.i.i.i70.i611
  %i.cel = shl nsw i32 %i.ceg, 6                  ; 2 uses
  %i.cem = add i32 %i.cel, 64
  %i.cen = sext i32 %i.cem to i64
  %.0.off.i.i.i.i.i.i75.i617 = add i32 %.052.i.i.i.i.i.i.i612, 127
  %.not57.i.i.i.i.i.i.i76.i618 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i617, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i618, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUliE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i619

.lr.ph56.i.i.i.i.i.i.i77.i619:                    ; preds = %bb.zb
  %i.ceo = sext i32 %i.cel to i64
  br label %bb.zc

bb.zc:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i619
  %.055.i.i.i.i.i.i.i78.i620 = phi i64 [ %i.ceo, %.lr.ph56.i.i.i.i.i.i.i77.i619 ], [ %i.cfw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cep = trunc i64 %.055.i.i.i.i.i.i.i78.i620 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUliE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %265, i32 noundef %i.cep)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.zd

bb.zd:                                            ; preds = %bb.zc
  %i.ceq = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.cer = extractvalue { ptr, i32 } %i.ceq, 0    ; 2 uses
  %i.ces = extractvalue { ptr, i32 } %i.ceq, 1    ; 2 uses
  %i.cet = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.ceu = icmp eq i32 %i.ces, %i.cet
  br i1 %i.ceu, label %bb.ze, label %bb.zf

bb.ze:                                            ; preds = %bb.zd
  %i.cev = call ptr @__cxa_begin_catch(ptr %i.cer) #41
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !376 ; 2 uses
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cex, i64 144
  %i.cez = load ptr, ptr %i.cey, align 8, !tbaa !115 ; 4 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cex, i64 152
  %i.cfb = load i64, ptr %i.cfa, align 8, !tbaa !98
  %i.cfc = icmp eq i64 %i.cfb, 4
  br i1 %i.cfc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i627, label %.loopexit.i.i.i.i.i.i.i85.i625

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i627:    ; preds = %bb.ze
  %i.cfd = load i8, ptr %i.cez, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i628 = icmp eq i8 %i.cfd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i628, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i629, label %.loopexit.i.i.i.i.i.i.i85.i625

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i629:         ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i627
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cez, i64 1
  %i.cff = load i8, ptr %i.cfe, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i630 = icmp eq i8 %i.cff, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i630, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i631, label %.loopexit.i.i.i.i.i.i.i85.i625

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i631:       ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i629
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cez, i64 2
  %i.cfh = load i8, ptr %i.cfg, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i632 = icmp eq i8 %i.cfh, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i632, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i633, label %.loopexit.i.i.i.i.i.i.i85.i625

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i633:       ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i631
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cez, i64 3
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i634 = icmp eq i8 %i.cfj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i634, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i635, label %.loopexit.i.i.i.i.i.i.i85.i625

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i635:       ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i633
  call void @llvm.lifetime.start.p0(ptr nonnull %258) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %258) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.cep, ptr noundef nonnull align 8 dereferenceable(8) %258)
          to label %bb.zm unwind label %bb.zo

.loopexit.i.i.i.i.i.i.i85.i625:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i633, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i631, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i629, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i627, %bb.ze
  invoke void @__cxa_rethrow() #45
          to label %bb.zs unwind label %bb.zl

bb.zf:                                            ; preds = %bb.zd
  %i.cfk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.cfl = icmp eq i32 %i.ces, %i.cfk
  br i1 %i.cfl, label %bb.zg, label %common.resume

bb.zg:                                            ; preds = %bb.zf
  %i.cfm = call ptr @__cxa_begin_catch(ptr %i.cer) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %257) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %257) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.cep, ptr noundef nonnull align 8 dereferenceable(8) %257)
          to label %bb.zh unwind label %bb.zj

bb.zh:                                            ; preds = %bb.zg
  %i.cfn = load ptr, ptr %257, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i623 = icmp eq ptr %i.cfn, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i623, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i624, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %257) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i624

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i624: ; preds = %bb.zi, %bb.zh
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIiZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUliE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.zj:                                            ; preds = %bb.zg
  %i.cfo = landingpad { ptr, i32 }
          cleanup
  %i.cfp = load ptr, ptr %257, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i621 = icmp eq ptr %i.cfp, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i621, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i622, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %257) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i622

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i622: ; preds = %bb.zk, %bb.zj
  call void @llvm.lifetime.end.p0(ptr nonnull %257) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.zr
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i1212 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i1217, %i.cxi
  br i1 %.not37.i.i.not.i.i.i.i.i1212, label %.lr.ph5758, label %.critedge.i.i.i.i.i.i.i1213, !llvm.loop !20

.lr.ph5758:                                       ; preds = %bb.aeq, %bb.aer
  %indvars.iv.i.i.i.i.i12115757 = phi i64 [ %indvars.iv.next.i.i.i.i.i1217, %bb.aer ], [ 0, %bb.aeq ] ; 2 uses
  %i.cxj = lshr exact i64 %indvars.iv.i.i.i.i.i12115757, 3
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxg, i64 %i.cxj
  %i.cxl = load i64, ptr %i.cxk, align 8, !tbaa !219
  %i.cxm = icmp eq i64 %i.cxl, -1
  br i1 %i.cxm, label %bb.aer, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109, !llvm.loop !20

.critedge.i.i.i.i.i.i.i1213:                      ; preds = %bb.aer, %bb.aeq
  %.not38.i.i.i.i.i.i.i1214 = icmp eq i32 %i.cxd, %i.cxh
  br i1 %.not38.i.i.i.i.i.i.i1214, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109, label %bb.aes

bb.aes:                                           ; preds = %.critedge.i.i.i.i.i.i.i1213
  %i.cxn = lshr i32 %i.cxd, 6
  %i.cxo = and i32 %i.cxd, 63
  %i.cxp = zext nneg i32 %i.cxo to i64
  %notmask.i40.i.i.i.i.i.i.i1215 = shl nsw i64 -1, %i.cxp
  %i.cxq = zext nneg i32 %i.cxn to i64
  %i.cxr = getelementptr inbounds nuw [8 x i8], ptr %i.cxg, i64 %i.cxq
  %i.cxs = load i64, ptr %i.cxr, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i1216 = or i64 %i.cxs, %notmask.i40.i.i.i.i.i.i.i1215
  %i.cxt = icmp eq i64 %.demorgan.i.i.i.i.i1216, -1
  %i.cxu = zext i1 %i.cxt to i16
  %i.cxv = or disjoint i16 %i.cxu, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109: ; preds = %.lr.ph5758, %bb.aes, %.critedge.i.i.i.i.i.i.i1213, %bb.aep, %bb.aeo, %bb.aen
  %.sroa.0.0.insert.ext.i.i.i.i.i1110 = phi i16 [ 256, %bb.aeo ], [ 256, %bb.aen ], [ 257, %bb.aep ], [ 257, %.critedge.i.i.i.i.i.i.i1213 ], [ %i.cxv, %bb.aes ], [ 256, %.lr.ph5758 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i1110, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.cxw = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i1110 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1111

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1111: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1218
  %i.cxx = phi i32 [ %.pre.i.i.i1220, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1218 ], [ %i.cxb, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109 ] ; 8 uses
  %.0.in.i.i.i.i.i1112 = phi i8 [ %.0.in.pre.i.i.i.i.i1219, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1218 ], [ %i.cxw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1109 ]
  %.0.i.i.i.i36.i1113 = trunc nuw i8 %.0.in.i.i.i.i.i1112 to i1
  br i1 %.0.i.i.i.i36.i1113, label %bb.aet, label %bb.afk

bb.aet:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1111
  %i.cxy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.cxz = icmp slt i32 %i.cxx, %i.cxy
  br i1 %i.cxz, label %.lr.ph.i.i.i.i1186, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i1186:                               ; preds = %bb.aet, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i1187 = phi i32 [ %i.czg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.cxx, %bb.aet ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %242)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.aeu

bb.aeu:                                           ; preds = %.lr.ph.i.i.i.i1186
  %i.cya = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.cyb = extractvalue { ptr, i32 } %i.cya, 0    ; 2 uses
  %i.cyc = extractvalue { ptr, i32 } %i.cya, 1    ; 2 uses
  %i.cyd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.cye = icmp eq i32 %i.cyc, %i.cyd
  br i1 %i.cye, label %bb.aev, label %bb.aew

bb.aev:                                           ; preds = %bb.aeu
  %i.cyf = call ptr @__cxa_begin_catch(ptr %i.cyb) #41
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 8
  %i.cyh = load ptr, ptr %i.cyg, align 8, !tbaa !376 ; 2 uses
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cyh, i64 144
  %i.cyj = load ptr, ptr %i.cyi, align 8, !tbaa !115 ; 4 uses
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cyh, i64 152
  %i.cyl = load i64, ptr %i.cyk, align 8, !tbaa !98
  %i.cym = icmp eq i64 %i.cyl, 4
  br i1 %i.cym, label %.lr.ph.i.i.i.i.preheader.i.i.i.i1197, label %.loopexit.i.i.i.i1195

.lr.ph.i.i.i.i.preheader.i.i.i.i1197:             ; preds = %bb.aev
  %i.cyn = load i8, ptr %i.cyj, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i1198 = icmp eq i8 %i.cyn, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i1198, label %tailrecurse.i.i.i.i.i.i.i.i1199, label %.loopexit.i.i.i.i1195

tailrecurse.i.i.i.i.i.i.i.i1199:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i1197
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyj, i64 1
  %i.cyp = load i8, ptr %i.cyo, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i1200 = icmp eq i8 %i.cyp, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i1200, label %tailrecurse.i.i.i.i.1.i.i.i.i1201, label %.loopexit.i.i.i.i1195

tailrecurse.i.i.i.i.1.i.i.i.i1201:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i1199
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyj, i64 2
  %i.cyr = load i8, ptr %i.cyq, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i1202 = icmp eq i8 %i.cyr, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i1202, label %tailrecurse.i.i.i.i.2.i.i.i.i1203, label %.loopexit.i.i.i.i1195

tailrecurse.i.i.i.i.2.i.i.i.i1203:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i1201
  %i.cys = getelementptr inbounds nuw i8, ptr %i.cyj, i64 3
  %i.cyt = load i8, ptr %i.cys, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i1204 = icmp eq i8 %i.cyt, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i1204, label %tailrecurse.i.i.i.i.3.i.i.i.i1205, label %.loopexit.i.i.i.i1195

tailrecurse.i.i.i.i.3.i.i.i.i1205:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1203
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %240) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1187, ptr noundef nonnull align 8 dereferenceable(8) %240)
          to label %bb.afd unwind label %bb.aff

.loopexit.i.i.i.i1195:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1203, %tailrecurse.i.i.i.i.1.i.i.i.i1201, %tailrecurse.i.i.i.i.i.i.i.i1199, %.lr.ph.i.i.i.i.preheader.i.i.i.i1197, %bb.aev
  invoke void @__cxa_rethrow() #45
          to label %bb.afj unwind label %bb.afc

bb.aew:                                           ; preds = %bb.aeu
  %i.cyu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.cyv = icmp eq i32 %i.cyc, %i.cyu
  br i1 %i.cyv, label %bb.aex, label %.body.i1102

bb.aex:                                           ; preds = %bb.aew
  %i.cyw = call ptr @__cxa_begin_catch(ptr %i.cyb) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %239) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1187, ptr noundef nonnull align 8 dereferenceable(8) %239)
          to label %bb.aey unwind label %bb.afa

bb.aey:                                           ; preds = %bb.aex
  %i.cyx = load ptr, ptr %239, align 8, !tbaa !171
  %.not.i.i.i.i37.i1190 = icmp eq ptr %i.cyx, null
  br i1 %.not.i.i.i.i37.i1190, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1191, label %bb.aez

bb.aez:                                           ; preds = %bb.aey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %239) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1191

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1191: ; preds = %bb.aez, %bb.aey
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.afa:                                           ; preds = %bb.aex
  %i.cyy = landingpad { ptr, i32 }
          cleanup
  %i.cyz = load ptr, ptr %239, align 8, !tbaa !171
  %.not.i4.i.i.i.i1188 = icmp eq ptr %i.cyz, null
  br i1 %.not.i4.i.i.i.i1188, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1189, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %239) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1189

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1189: ; preds = %bb.afb, %bb.afa
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #41
  invoke void @__cxa_end_catch()
          to label %.body.i1102 unwind label %bb.afi

bb.afc:                                           ; preds = %.loopexit.i.i.i.i1195
  %i.cza = landingpad { ptr, i32 }
          cleanup
  br label %bb.afh

bb.afd:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1205
  %i.czb = load ptr, ptr %240, align 8, !tbaa !171
  %.not.i6.i.i.i.i1208 = icmp eq ptr %i.czb, null
  br i1 %.not.i6.i.i.i.i1208, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1209, label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %240) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1209

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1209: ; preds = %bb.afe, %bb.afd
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.aff:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1205
  %i.czc = landingpad { ptr, i32 }
          cleanup
  %i.czd = load ptr, ptr %240, align 8, !tbaa !171
  %.not.i8.i.i.i.i1206 = icmp eq ptr %i.czd, null
  br i1 %.not.i8.i.i.i.i1206, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1207, label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %240) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1207

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1207: ; preds = %bb.afg, %bb.aff
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #41
  br label %bb.afh

bb.afh:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1207, %bb.afc
  %.pn.i.i.i.i.i1196 = phi { ptr, i32 } [ %i.czc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1207 ], [ %i.cza, %bb.afc ]
  invoke void @__cxa_end_catch()
          to label %.body.i1102 unwind label %bb.afi

bb.afi:                                           ; preds = %bb.afh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1189
  %i.cze = landingpad { ptr, i32 }
          catch ptr null
  %i.czf = extractvalue { ptr, i32 } %i.cze, 0
  call void @__clang_call_terminate(ptr %i.czf) #44
  unreachable

bb.afj:                                           ; preds = %.loopexit.i.i.i.i1195
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1209, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1191
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i1192

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i1186, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.czg = add i32 %.019.i.i.i.i1187, 1           ; 2 uses
  %exitcond.not.i.i.i.i1194 = icmp eq i32 %i.czg, %i.cxy
  br i1 %exitcond.not.i.i.i.i1194, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i1186, !llvm.loop !1122

bb.afk:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1111
  %i.czh = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.czi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i1114 = getelementptr inbounds nuw i8, ptr %238, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %238)
  store ptr %242, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i1114, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1115 = getelementptr inbounds nuw i8, ptr %238, i64 24
  store ptr %241, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1115, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1116 = getelementptr inbounds nuw i8, ptr %238, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1116, align 8
  store i8 1, ptr %238, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i1117 = getelementptr inbounds nuw i8, ptr %238, i64 8
  store ptr %i.czh, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i1117, align 8
  %.not.i.i.i.i.i.i.i1118 = icmp slt i32 %i.cxx, %i.czi
  br i1 %.not.i.i.i.i.i.i.i1118, label %bb.afl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.afl:                                           ; preds = %bb.afk
  %i.czj = add i32 %i.cxx, 63                     ; 2 uses
  %i.czk = srem i32 %i.czj, 64
  %i.czl = sub nsw i32 %i.czj, %i.czk             ; 6 uses
  %i.czm = and i32 %i.czi, -64                    ; 4 uses
  %i.czn = icmp slt i32 %i.czm, %i.czl
  br i1 %i.czn, label %bb.afm, label %bb.afn

bb.afm:                                           ; preds = %bb.afl
  %i.czo = and i32 %i.czi, 63
  %i.czp = zext nneg i32 %i.czo to i64
  %notmask.i.i.i.i.i.i.i.i1184 = shl nsw i64 -1, %i.czp
  %i.czq = xor i64 %notmask.i.i.i.i.i.i.i.i1184, -1
  %i.czr = sub nsw i32 %i.czl, %i.cxx             ; 2 uses
  %i.czs = zext nneg i32 %i.czr to i64
  %notmask.i.i.i.i.i.i.i.i.i1185 = shl nsw i64 -1, %i.czs
  %i.czt = xor i64 %notmask.i.i.i.i.i.i.i.i.i1185, -1
  %i.czu = sub nsw i32 64, %i.czr
  %i.czv = zext nneg i32 %i.czu to i64
  %i.czw = shl i64 %i.czt, %i.czv
  %i.czx = and i64 %i.czw, %i.czq
  br label %.invoke.i1134

.invoke.i1134:                                    ; preds = %bb.agy, %bb.afm
  %i.czy = phi i64 [ %i.czx, %bb.afm ], [ %i.ddp, %bb.agy ]
  %i.czz = ashr i32 %i.czi, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %238, i32 noundef %i.czz, i64 noundef %i.czy)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1100

bb.afn:                                           ; preds = %bb.afl
  %.not32.i.i.i.i.i.i.i1124 = icmp eq i32 %i.cxx, %i.czl
  br i1 %.not32.i.i.i.i.i.i.i1124, label %.noexc40.i1126, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  %i.daa = sdiv i32 %i.cxx, 64
  %i.dab = sub nsw i32 %i.czl, %i.cxx             ; 2 uses
  %i.dac = zext nneg i32 %i.dab to i64
  %notmask.i.i35.i.i.i.i.i.i.i1125 = shl nsw i64 -1, %i.dac
  %i.dad = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1125, -1
  %i.dae = sub nsw i32 64, %i.dab
  %i.daf = zext nneg i32 %i.dae to i64
  %i.dag = shl i64 %i.dad, %i.daf
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %238, i32 noundef %i.daa, i64 noundef %i.dag)
          to label %.noexc40.i1126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1100

.noexc40.i1126:                                   ; preds = %bb.afo, %bb.afn
  %i.dah = add nsw i32 %i.czl, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i1127 = icmp sgt i32 %i.dah, %i.czm
  br i1 %.not3346.i.i.i.i.i.i.i1127, label %._crit_edge.i.i.i.i.i.i.i1131, label %.lr.ph.i.i.i.i.i.i.i1128

._crit_edge.i.i.i.i.i.i.i1131:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i1126
  %.not34.i.i.i.i.i.i.i1132 = icmp eq i32 %i.czi, %i.czm
  br i1 %.not34.i.i.i.i.i.i.i1132, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.agy

.lr.ph.i.i.i.i.i.i.i1128:                         ; preds = %.noexc40.i1126, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.dai = phi i32 [ %i.ddm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.dah, %.noexc40.i1126 ] ; 2 uses
  %.047.i.i.i.i.i.i.i1129 = phi i32 [ %i.dai, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.czl, %.noexc40.i1126 ] ; 2 uses
  %i.daj = sdiv i32 %.047.i.i.i.i.i.i.i1129, 64   ; 3 uses
  %i.dak = sext i32 %i.daj to i64
  %i.dal = getelementptr inbounds [8 x i8], ptr %i.czh, i64 %i.dak
  %i.dam = load i64, ptr %i.dal, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.dam, label %.lr.ph.i.i.i.i10.i.i.i.i1160 [
    i64 -1, label %bb.afp
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i1160:                     ; preds = %.lr.ph.i.i.i.i.i.i.i1128
  %i.dan = shl nsw i32 %i.daj, 6
  br label %bb.agh

bb.afp:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i1128
  %i.dao = shl nsw i32 %i.daj, 6                  ; 2 uses
  %i.dap = add i32 %i.dao, 64
  %i.daq = sext i32 %i.dap to i64
  %.0.off.i.i.i.i.i.i.i1135 = add i32 %.047.i.i.i.i.i.i.i1129, 127
  %.not57.i.i.i.i.i.i.i.i1136 = icmp ult i32 %.0.off.i.i.i.i.i.i.i1135, 64
  br i1 %.not57.i.i.i.i.i.i.i.i1136, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i1137

.lr.ph56.i.i.i.i.i.i.i.i1137:                     ; preds = %bb.afp
  %i.dar = sext i32 %i.dao to i64
  br label %bb.afq

bb.afq:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i1137
  %.055.i.i.i.i.i.i.i.i1138 = phi i64 [ %i.dar, %.lr.ph56.i.i.i.i.i.i.i.i1137 ], [ %i.dbz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.das = trunc i64 %.055.i.i.i.i.i.i.i.i1138 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %242)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %i.dat = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dau = extractvalue { ptr, i32 } %i.dat, 0    ; 2 uses
  %i.dav = extractvalue { ptr, i32 } %i.dat, 1    ; 2 uses
  %i.daw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.dax = icmp eq i32 %i.dav, %i.daw
  br i1 %i.dax, label %bb.afs, label %bb.aft

bb.afs:                                           ; preds = %bb.afr
  %i.day = call ptr @__cxa_begin_catch(ptr %i.dau) #41
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 8
  %i.dba = load ptr, ptr %i.daz, align 8, !tbaa !376 ; 2 uses
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.dba, i64 144
  %i.dbc = load ptr, ptr %i.dbb, align 8, !tbaa !115 ; 4 uses
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.dba, i64 152
  %i.dbe = load i64, ptr %i.dbd, align 8, !tbaa !98
  %i.dbf = icmp eq i64 %i.dbe, 4
  br i1 %i.dbf, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1147, label %.loopexit.i.i.i.i.i.i.i.i1145

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1147:     ; preds = %bb.afs
  %i.dbg = load i8, ptr %i.dbc, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1148 = icmp eq i8 %i.dbg, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1148, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1149, label %.loopexit.i.i.i.i.i.i.i.i1145

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1149:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1147
  %i.dbh = getelementptr inbounds nuw i8, ptr %i.dbc, i64 1
  %i.dbi = load i8, ptr %i.dbh, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1150 = icmp eq i8 %i.dbi, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1150, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1151, label %.loopexit.i.i.i.i.i.i.i.i1145

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1151:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1149
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbc, i64 2
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1152 = icmp eq i8 %i.dbk, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1152, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1153, label %.loopexit.i.i.i.i.i.i.i.i1145

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1153:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1151
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbc, i64 3
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1154 = icmp eq i8 %i.dbm, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1154, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1155, label %.loopexit.i.i.i.i.i.i.i.i1145

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1155:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1153
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %235) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.das, ptr noundef nonnull align 8 dereferenceable(8) %235)
          to label %bb.aga unwind label %bb.agc

.loopexit.i.i.i.i.i.i.i.i1145:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1153, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1151, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1149, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1147, %bb.afs
  invoke void @__cxa_rethrow() #45
          to label %bb.agg unwind label %bb.afz

bb.aft:                                           ; preds = %bb.afr
  %i.dbn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.dbo = icmp eq i32 %i.dav, %i.dbn
  br i1 %i.dbo, label %bb.afu, label %.body.i1102

bb.afu:                                           ; preds = %bb.aft
  %i.dbp = call ptr @__cxa_begin_catch(ptr %i.dau) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %234) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.das, ptr noundef nonnull align 8 dereferenceable(8) %234)
          to label %bb.afv unwind label %bb.afx

bb.afv:                                           ; preds = %bb.afu
  %i.dbq = load ptr, ptr %234, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i1141 = icmp eq ptr %i.dbq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1141, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1142, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %234) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1142

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1142: ; preds = %bb.afw, %bb.afv
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.afx:                                           ; preds = %bb.afu
  %i.dbr = landingpad { ptr, i32 }
          cleanup
  %i.dbs = load ptr, ptr %234, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i1139 = icmp eq ptr %i.dbs, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i1139, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1140, label %bb.afy

bb.afy:                                           ; preds = %bb.afx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %234) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1140

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1140: ; preds = %bb.afy, %bb.afx
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #41
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i1092, label %.lr.ph5755, label %.critedge.i.i.i.i.i.i148.i1093, !llvm.loop !20

.lr.ph5755:                                       ; preds = %bb.aic, %bb.aid
  %indvars.iv.i.i.i.i146.i10915754 = phi i64 [ %indvars.iv.next.i.i.i.i152.i1097, %bb.aid ], [ 0, %bb.aic ] ; 2 uses
  %i.dhf = lshr exact i64 %indvars.iv.i.i.i.i146.i10915754, 3
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhc, i64 %i.dhf
  %i.dhh = load i64, ptr %i.dhg, align 8, !tbaa !219
  %i.dhi = icmp eq i64 %i.dhh, -1
  br i1 %i.dhi, label %bb.aid, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i1093:                   ; preds = %bb.aid, %bb.aic
  %.not38.i.i.i.i.i.i149.i1094 = icmp eq i32 %i.dgy, %i.dhd
  br i1 %.not38.i.i.i.i.i.i149.i1094, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985, label %bb.aie

bb.aie:                                           ; preds = %.critedge.i.i.i.i.i.i148.i1093
  %i.dhj = lshr i32 %i.dgy, 6
  %i.dhk = and i32 %i.dgy, 63
  %i.dhl = zext nneg i32 %i.dhk to i64
  %notmask.i40.i.i.i.i.i.i150.i1095 = shl nsw i64 -1, %i.dhl
  %i.dhm = zext nneg i32 %i.dhj to i64
  %i.dhn = getelementptr inbounds nuw [8 x i8], ptr %i.dhc, i64 %i.dhm
  %i.dho = load i64, ptr %i.dhn, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i1096 = or i64 %i.dho, %notmask.i40.i.i.i.i.i.i150.i1095
  %i.dhp = icmp eq i64 %.demorgan.i.i.i.i151.i1096, -1
  %i.dhq = zext i1 %i.dhp to i16
  %i.dhr = or disjoint i16 %i.dhq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985: ; preds = %.lr.ph5755, %bb.aie, %.critedge.i.i.i.i.i.i148.i1093, %bb.aib, %bb.aia, %bb.ahz
  %.sroa.0.0.insert.ext.i.i.i.i59.i986 = phi i16 [ 256, %bb.aia ], [ 256, %bb.ahz ], [ 257, %bb.aib ], [ 257, %.critedge.i.i.i.i.i.i148.i1093 ], [ %i.dhr, %bb.aie ], [ 256, %.lr.ph5755 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i986, ptr %i.dgq, align 4
  %i.dhs = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i986 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i987

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i987: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1098
  %.0.in.i.i.i.i61.i988 = phi i8 [ %.0.in.pre.i.i.i.i154.i1099, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1098 ], [ %i.dhs, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i985 ]
  %.0.i.i.i.i62.i989 = trunc nuw i8 %.0.in.i.i.i.i61.i988 to i1
  br i1 %.0.i.i.i.i62.i989, label %bb.aif, label %bb.aiw

bb.aif:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i987
  %i.dht = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dhu = load i32, ptr %i.dht, align 8, !tbaa !324 ; 2 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dhw = load i32, ptr %i.dhv, align 4, !tbaa !370 ; 2 uses
  %i.dhx = icmp slt i32 %i.dhw, %i.dhu
  br i1 %i.dhx, label %.lr.ph.i.i.i124.i1068, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i1068:                            ; preds = %bb.aif, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i1069 = phi i32 [ %i.dje, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.dhw, %bb.aif ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %232, i32 noundef %.029.i.i.i.i1069)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.aig

bb.aig:                                           ; preds = %.lr.ph.i.i.i124.i1068
  %i.dhy = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dhz = extractvalue { ptr, i32 } %i.dhy, 0    ; 2 uses
  %i.dia = extractvalue { ptr, i32 } %i.dhy, 1    ; 2 uses
  %i.dib = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.dic = icmp eq i32 %i.dia, %i.dib
  br i1 %i.dic, label %bb.aih, label %bb.aii

bb.aih:                                           ; preds = %bb.aig
  %i.did = call ptr @__cxa_begin_catch(ptr %i.dhz) #41
  %i.die = getelementptr inbounds nuw i8, ptr %i.did, i64 8
  %i.dif = load ptr, ptr %i.die, align 8, !tbaa !376 ; 2 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %i.dif, i64 144
  %i.dih = load ptr, ptr %i.dig, align 8, !tbaa !115 ; 4 uses
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dif, i64 152
  %i.dij = load i64, ptr %i.dii, align 8, !tbaa !98
  %i.dik = icmp eq i64 %i.dij, 4
  br i1 %i.dik, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i1077, label %.loopexit.i.i.i130.i1075

.lr.ph.i.i.i.i.preheader.i.i.i132.i1077:          ; preds = %bb.aih
  %i.dil = load i8, ptr %i.dih, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i1078 = icmp eq i8 %i.dil, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i1078, label %tailrecurse.i.i.i.i.i.i.i134.i1079, label %.loopexit.i.i.i130.i1075

tailrecurse.i.i.i.i.i.i.i134.i1079:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i1077
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dih, i64 1
  %i.din = load i8, ptr %i.dim, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i1080 = icmp eq i8 %i.din, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i1080, label %tailrecurse.i.i.i.i.1.i.i.i136.i1081, label %.loopexit.i.i.i130.i1075

tailrecurse.i.i.i.i.1.i.i.i136.i1081:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i1079
  %i.dio = getelementptr inbounds nuw i8, ptr %i.dih, i64 2
  %i.dip = load i8, ptr %i.dio, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i1082 = icmp eq i8 %i.dip, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i1082, label %tailrecurse.i.i.i.i.2.i.i.i138.i1083, label %.loopexit.i.i.i130.i1075

tailrecurse.i.i.i.i.2.i.i.i138.i1083:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i1081
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dih, i64 3
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i1084 = icmp eq i8 %i.dir, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i1084, label %tailrecurse.i.i.i.i.3.i.i.i140.i1085, label %.loopexit.i.i.i130.i1075

tailrecurse.i.i.i.i.3.i.i.i140.i1085:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1083
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %230) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1069, ptr noundef nonnull align 8 dereferenceable(8) %230)
          to label %bb.aip unwind label %bb.air

.loopexit.i.i.i130.i1075:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1083, %tailrecurse.i.i.i.i.1.i.i.i136.i1081, %tailrecurse.i.i.i.i.i.i.i134.i1079, %.lr.ph.i.i.i.i.preheader.i.i.i132.i1077, %bb.aih
  invoke void @__cxa_rethrow() #45
          to label %bb.aiv unwind label %bb.aio

bb.aii:                                           ; preds = %bb.aig
  %i.dis = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.dit = icmp eq i32 %i.dia, %i.dis
  br i1 %i.dit, label %bb.aij, label %common.resume

bb.aij:                                           ; preds = %bb.aii
  %i.diu = call ptr @__cxa_begin_catch(ptr %i.dhz) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %229) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1069, ptr noundef nonnull align 8 dereferenceable(8) %229)
          to label %bb.aik unwind label %bb.aim

bb.aik:                                           ; preds = %bb.aij
  %i.div = load ptr, ptr %229, align 8, !tbaa !171
  %.not.i.i.i.i127.i1072 = icmp eq ptr %i.div, null
  br i1 %.not.i.i.i.i127.i1072, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1073, label %bb.ail

bb.ail:                                           ; preds = %bb.aik
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %229) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1073

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1073: ; preds = %bb.ail, %bb.aik
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.aim:                                           ; preds = %bb.aij
  %i.diw = landingpad { ptr, i32 }
          cleanup
  %i.dix = load ptr, ptr %229, align 8, !tbaa !171
  %.not.i4.i.i.i125.i1070 = icmp eq ptr %i.dix, null
  br i1 %.not.i4.i.i.i125.i1070, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071, label %bb.ain

bb.ain:                                           ; preds = %bb.aim
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %229) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071: ; preds = %bb.ain, %bb.aim
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aiu

bb.aio:                                           ; preds = %.loopexit.i.i.i130.i1075
  %i.diy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ait

bb.aip:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1085
  %i.diz = load ptr, ptr %230, align 8, !tbaa !171
  %.not.i6.i.i.i143.i1088 = icmp eq ptr %i.diz, null
  br i1 %.not.i6.i.i.i143.i1088, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1089, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %230) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1089

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1089: ; preds = %bb.aiq, %bb.aip
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.air:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1085
  %i.dja = landingpad { ptr, i32 }
          cleanup
  %i.djb = load ptr, ptr %230, align 8, !tbaa !171
  %.not.i8.i.i.i141.i1086 = icmp eq ptr %i.djb, null
  br i1 %.not.i8.i.i.i141.i1086, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1087, label %bb.ais

bb.ais:                                           ; preds = %bb.air
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %230) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1087

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1087: ; preds = %bb.ais, %bb.air
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #41
  br label %bb.ait

bb.ait:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1087, %bb.aio
  %.pn.i.i.i.i131.i1076 = phi { ptr, i32 } [ %i.dja, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1087 ], [ %i.diy, %bb.aio ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aiu

bb.aiu:                                           ; preds = %bb.ait, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1071
  %i.djc = landingpad { ptr, i32 }
          catch ptr null
  %i.djd = extractvalue { ptr, i32 } %i.djc, 0
  call void @__clang_call_terminate(ptr %i.djd) #44
  unreachable

bb.aiv:                                           ; preds = %.loopexit.i.i.i130.i1075
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1089, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1073
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i1068
  %i.dje = add i32 %.029.i.i.i.i1069, 1           ; 2 uses
  %exitcond.not.i.i.i129.i1074 = icmp eq i32 %i.dje, %i.dhu
  br i1 %exitcond.not.i.i.i129.i1074, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i1068, !llvm.loop !1131

bb.aiw:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i987
  %i.djf = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.djg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.djh = load i32, ptr %i.djg, align 4, !tbaa !370 ; 6 uses
  %i.dji = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.djj = load i32, ptr %i.dji, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i990 = getelementptr inbounds nuw i8, ptr %228, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %228)
  store ptr %232, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i990, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i991 = getelementptr inbounds nuw i8, ptr %228, i64 24
  store ptr %231, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i991, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i992 = getelementptr inbounds nuw i8, ptr %228, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i992, align 8
  store i8 1, ptr %228, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i993 = getelementptr inbounds nuw i8, ptr %228, i64 8
  store ptr %i.djf, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i993, align 8
  %.not.i.i.i.i.i.i67.i994 = icmp slt i32 %i.djh, %i.djj
  br i1 %.not.i.i.i.i.i.i67.i994, label %bb.aix, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.aix:                                           ; preds = %bb.aiw
  %i.djk = add i32 %i.djh, 63                     ; 2 uses
  %i.djl = srem i32 %i.djk, 64
  %i.djm = sub nsw i32 %i.djk, %i.djl             ; 6 uses
  %i.djn = and i32 %i.djj, -64                    ; 4 uses
  %i.djo = icmp slt i32 %i.djn, %i.djm
  br i1 %i.djo, label %bb.aiy, label %bb.aiz

bb.aiy:                                           ; preds = %bb.aix
  %i.djp = ashr i32 %i.djj, 6
  %i.djq = and i32 %i.djj, 63
  %i.djr = zext nneg i32 %i.djq to i64
  %notmask.i.i.i.i.i.i.i122.i1066 = shl nsw i64 -1, %i.djr
  %i.djs = xor i64 %notmask.i.i.i.i.i.i.i122.i1066, -1
  %i.djt = sub nsw i32 %i.djm, %i.djh             ; 2 uses
  %i.dju = zext nneg i32 %i.djt to i64
  %notmask.i.i.i.i.i.i.i.i123.i1067 = shl nsw i64 -1, %i.dju
  %i.djv = xor i64 %notmask.i.i.i.i.i.i.i.i123.i1067, -1
  %i.djw = sub nsw i32 64, %i.djt
  %i.djx = zext nneg i32 %i.djw to i64
  %i.djy = shl i64 %i.djv, %i.djx
  %i.djz = and i64 %i.djy, %i.djs
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %228, i32 noundef %i.djp, i64 noundef %i.djz)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.aiz:                                           ; preds = %bb.aix
  %.not32.i.i.i.i.i.i68.i995 = icmp eq i32 %i.djh, %i.djm
  br i1 %.not32.i.i.i.i.i.i68.i995, label %bb.ajb, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.dka = sdiv i32 %i.djh, 64
  %i.dkb = sub nsw i32 %i.djm, %i.djh             ; 2 uses
  %i.dkc = zext nneg i32 %i.dkb to i64
  %notmask.i.i35.i.i.i.i.i.i69.i996 = shl nsw i64 -1, %i.dkc
  %i.dkd = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i996, -1
  %i.dke = sub nsw i32 64, %i.dkb
  %i.dkf = zext nneg i32 %i.dke to i64
  %i.dkg = shl i64 %i.dkd, %i.dkf
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %228, i32 noundef %i.dka, i64 noundef %i.dkg)
  br label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja, %bb.aiz
  %i.dkh = add nsw i32 %i.djm, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i997 = icmp sgt i32 %i.dkh, %i.djn
  br i1 %.not3351.i.i.i.i.i.i.i997, label %._crit_edge.i.i.i.i.i.i72.i1001, label %.lr.ph.i.i.i.i.i.i70.i998

._crit_edge.i.i.i.i.i.i72.i1001:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.ajb
  %.not34.i.i.i.i.i.i73.i1002 = icmp eq i32 %i.djj, %i.djn
  br i1 %.not34.i.i.i.i.i.i73.i1002, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.akq

.lr.ph.i.i.i.i.i.i70.i998:                        ; preds = %bb.ajb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.dki = phi i32 [ %i.dqq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.dkh, %bb.ajb ] ; 2 uses
  %.052.i.i.i.i.i.i.i999 = phi i32 [ %i.dki, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.djm, %bb.ajb ] ; 2 uses
  %i.dkj = sdiv i32 %.052.i.i.i.i.i.i.i999, 64    ; 3 uses
  %i.dkk = sext i32 %i.dkj to i64
  %i.dkl = getelementptr inbounds [8 x i8], ptr %i.djf, i64 %i.dkk
  %i.dkm = load i64, ptr %i.dkl, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.dkm, label %.lr.ph.i.i.i.i10.i.i.i100.i1027 [
    i64 -1, label %bb.ajc
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i1027:                  ; preds = %.lr.ph.i.i.i.i.i.i70.i998
  %i.dkn = shl nsw i32 %i.dkj, 6
  br label %bb.aju

bb.ajc:                                           ; preds = %.lr.ph.i.i.i.i.i.i70.i998
  %i.dko = shl nsw i32 %i.dkj, 6                  ; 2 uses
  %i.dkp = add i32 %i.dko, 64
  %i.dkq = sext i32 %i.dkp to i64
  %.0.off.i.i.i.i.i.i75.i1004 = add i32 %.052.i.i.i.i.i.i.i999, 127
  %.not57.i.i.i.i.i.i.i76.i1005 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i1004, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i1005, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlsE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i1006

.lr.ph56.i.i.i.i.i.i.i77.i1006:                   ; preds = %bb.ajc
  %i.dkr = sext i32 %i.dko to i64
  br label %bb.ajd

bb.ajd:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i1006
  %.055.i.i.i.i.i.i.i78.i1007 = phi i64 [ %i.dkr, %.lr.ph56.i.i.i.i.i.i.i77.i1006 ], [ %i.dlz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dks = trunc i64 %.055.i.i.i.i.i.i.i78.i1007 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlsE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %232, i32 noundef %i.dks)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.aje

bb.aje:                                           ; preds = %bb.ajd
  %i.dkt = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.dku = extractvalue { ptr, i32 } %i.dkt, 0    ; 2 uses
  %i.dkv = extractvalue { ptr, i32 } %i.dkt, 1    ; 2 uses
  %i.dkw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.dkx = icmp eq i32 %i.dkv, %i.dkw
  br i1 %i.dkx, label %bb.ajf, label %bb.ajg

bb.ajf:                                           ; preds = %bb.aje
  %i.dky = call ptr @__cxa_begin_catch(ptr %i.dku) #41
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dky, i64 8
  %i.dla = load ptr, ptr %i.dkz, align 8, !tbaa !376 ; 2 uses
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 144
  %i.dlc = load ptr, ptr %i.dlb, align 8, !tbaa !115 ; 4 uses
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dla, i64 152
  %i.dle = load i64, ptr %i.dld, align 8, !tbaa !98
  %i.dlf = icmp eq i64 %i.dle, 4
  br i1 %i.dlf, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1014, label %.loopexit.i.i.i.i.i.i.i85.i1012

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1014:   ; preds = %bb.ajf
  %i.dlg = load i8, ptr %i.dlc, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1015 = icmp eq i8 %i.dlg, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1015, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1016, label %.loopexit.i.i.i.i.i.i.i85.i1012

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1016:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1014
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dlc, i64 1
  %i.dli = load i8, ptr %i.dlh, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1017 = icmp eq i8 %i.dli, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1017, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1018, label %.loopexit.i.i.i.i.i.i.i85.i1012

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1018:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1016
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dlc, i64 2
  %i.dlk = load i8, ptr %i.dlj, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1019 = icmp eq i8 %i.dlk, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1019, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1020, label %.loopexit.i.i.i.i.i.i.i85.i1012

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1020:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1018
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dlc, i64 3
  %i.dlm = load i8, ptr %i.dll, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1021 = icmp eq i8 %i.dlm, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1021, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1022, label %.loopexit.i.i.i.i.i.i.i85.i1012

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1022:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1020
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %225) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.dks, ptr noundef nonnull align 8 dereferenceable(8) %225)
          to label %bb.ajn unwind label %bb.ajp

.loopexit.i.i.i.i.i.i.i85.i1012:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1020, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1018, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1016, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1014, %bb.ajf
  invoke void @__cxa_rethrow() #45
          to label %bb.ajt unwind label %bb.ajm

bb.ajg:                                           ; preds = %bb.aje
  %i.dln = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.dlo = icmp eq i32 %i.dkv, %i.dln
  br i1 %i.dlo, label %bb.ajh, label %common.resume

bb.ajh:                                           ; preds = %bb.ajg
  %i.dlp = call ptr @__cxa_begin_catch(ptr %i.dku) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %224) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.dks, ptr noundef nonnull align 8 dereferenceable(8) %224)
          to label %bb.aji unwind label %bb.ajk

bb.aji:                                           ; preds = %bb.ajh
  %i.dlq = load ptr, ptr %224, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i1010 = icmp eq ptr %i.dlq, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i1010, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1011, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %224) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1011

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1011: ; preds = %bb.ajj, %bb.aji
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIsZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlsE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.ajk:                                           ; preds = %bb.ajh
  %i.dlr = landingpad { ptr, i32 }
          cleanup
  %i.dls = load ptr, ptr %224, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i1008 = icmp eq ptr %i.dls, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i1008, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1009, label %bb.ajl

bb.ajl:                                           ; preds = %bb.ajk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %224) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1009

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1009: ; preds = %bb.ajl, %bb.ajk
  call void @llvm.lifetime.end.p0(ptr nonnull %224) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ajs
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i1599 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i1604, %i.edl
  br i1 %.not37.i.i.not.i.i.i.i.i1599, label %.lr.ph5749, label %.critedge.i.i.i.i.i.i.i1600, !llvm.loop !20

.lr.ph5749:                                       ; preds = %bb.aor, %bb.aos
  %indvars.iv.i.i.i.i.i15985748 = phi i64 [ %indvars.iv.next.i.i.i.i.i1604, %bb.aos ], [ 0, %bb.aor ] ; 2 uses
  %i.edm = lshr exact i64 %indvars.iv.i.i.i.i.i15985748, 3
  %i.edn = getelementptr inbounds nuw i8, ptr %i.edj, i64 %i.edm
  %i.edo = load i64, ptr %i.edn, align 8, !tbaa !219
  %i.edp = icmp eq i64 %i.edo, -1
  br i1 %i.edp, label %bb.aos, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496, !llvm.loop !20

.critedge.i.i.i.i.i.i.i1600:                      ; preds = %bb.aos, %bb.aor
  %.not38.i.i.i.i.i.i.i1601 = icmp eq i32 %i.edg, %i.edk
  br i1 %.not38.i.i.i.i.i.i.i1601, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496, label %bb.aot

bb.aot:                                           ; preds = %.critedge.i.i.i.i.i.i.i1600
  %i.edq = lshr i32 %i.edg, 6
  %i.edr = and i32 %i.edg, 63
  %i.eds = zext nneg i32 %i.edr to i64
  %notmask.i40.i.i.i.i.i.i.i1602 = shl nsw i64 -1, %i.eds
  %i.edt = zext nneg i32 %i.edq to i64
  %i.edu = getelementptr inbounds nuw [8 x i8], ptr %i.edj, i64 %i.edt
  %i.edv = load i64, ptr %i.edu, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i1603 = or i64 %i.edv, %notmask.i40.i.i.i.i.i.i.i1602
  %i.edw = icmp eq i64 %.demorgan.i.i.i.i.i1603, -1
  %i.edx = zext i1 %i.edw to i16
  %i.edy = or disjoint i16 %i.edx, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496: ; preds = %.lr.ph5749, %bb.aot, %.critedge.i.i.i.i.i.i.i1600, %bb.aoq, %bb.aop, %bb.aoo
  %.sroa.0.0.insert.ext.i.i.i.i.i1497 = phi i16 [ 256, %bb.aop ], [ 256, %bb.aoo ], [ 257, %bb.aoq ], [ 257, %.critedge.i.i.i.i.i.i.i1600 ], [ %i.edy, %bb.aot ], [ 256, %.lr.ph5749 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i1497, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.edz = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i1497 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1498

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1498: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1605
  %i.eea = phi i32 [ %.pre.i.i.i1607, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1605 ], [ %i.ede, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496 ] ; 8 uses
  %.0.in.i.i.i.i.i1499 = phi i8 [ %.0.in.pre.i.i.i.i.i1606, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1605 ], [ %i.edz, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1496 ]
  %.0.i.i.i.i36.i1500 = trunc nuw i8 %.0.in.i.i.i.i.i1499 to i1
  br i1 %.0.i.i.i.i36.i1500, label %bb.aou, label %bb.apl

bb.aou:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1498
  %i.eeb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.eec = icmp slt i32 %i.eea, %i.eeb
  br i1 %i.eec, label %.lr.ph.i.i.i.i1573, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i1573:                               ; preds = %bb.aou, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i1574 = phi i32 [ %i.efj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.eea, %bb.aou ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %209)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.aov

bb.aov:                                           ; preds = %.lr.ph.i.i.i.i1573
  %i.eed = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eee = extractvalue { ptr, i32 } %i.eed, 0    ; 2 uses
  %i.eef = extractvalue { ptr, i32 } %i.eed, 1    ; 2 uses
  %i.eeg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.eeh = icmp eq i32 %i.eef, %i.eeg
  br i1 %i.eeh, label %bb.aow, label %bb.aox

bb.aow:                                           ; preds = %bb.aov
  %i.eei = call ptr @__cxa_begin_catch(ptr %i.eee) #41
  %i.eej = getelementptr inbounds nuw i8, ptr %i.eei, i64 8
  %i.eek = load ptr, ptr %i.eej, align 8, !tbaa !376 ; 2 uses
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eek, i64 144
  %i.eem = load ptr, ptr %i.eel, align 8, !tbaa !115 ; 4 uses
  %i.een = getelementptr inbounds nuw i8, ptr %i.eek, i64 152
  %i.eeo = load i64, ptr %i.een, align 8, !tbaa !98
  %i.eep = icmp eq i64 %i.eeo, 4
  br i1 %i.eep, label %.lr.ph.i.i.i.i.preheader.i.i.i.i1584, label %.loopexit.i.i.i.i1582

.lr.ph.i.i.i.i.preheader.i.i.i.i1584:             ; preds = %bb.aow
  %i.eeq = load i8, ptr %i.eem, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i1585 = icmp eq i8 %i.eeq, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i1585, label %tailrecurse.i.i.i.i.i.i.i.i1586, label %.loopexit.i.i.i.i1582

tailrecurse.i.i.i.i.i.i.i.i1586:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i1584
  %i.eer = getelementptr inbounds nuw i8, ptr %i.eem, i64 1
  %i.ees = load i8, ptr %i.eer, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i1587 = icmp eq i8 %i.ees, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i1587, label %tailrecurse.i.i.i.i.1.i.i.i.i1588, label %.loopexit.i.i.i.i1582

tailrecurse.i.i.i.i.1.i.i.i.i1588:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i1586
  %i.eet = getelementptr inbounds nuw i8, ptr %i.eem, i64 2
  %i.eeu = load i8, ptr %i.eet, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i1589 = icmp eq i8 %i.eeu, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i1589, label %tailrecurse.i.i.i.i.2.i.i.i.i1590, label %.loopexit.i.i.i.i1582

tailrecurse.i.i.i.i.2.i.i.i.i1590:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i1588
  %i.eev = getelementptr inbounds nuw i8, ptr %i.eem, i64 3
  %i.eew = load i8, ptr %i.eev, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i1591 = icmp eq i8 %i.eew, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i1591, label %tailrecurse.i.i.i.i.3.i.i.i.i1592, label %.loopexit.i.i.i.i1582

tailrecurse.i.i.i.i.3.i.i.i.i1592:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1590
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %207) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1574, ptr noundef nonnull align 8 dereferenceable(8) %207)
          to label %bb.ape unwind label %bb.apg

.loopexit.i.i.i.i1582:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1590, %tailrecurse.i.i.i.i.1.i.i.i.i1588, %tailrecurse.i.i.i.i.i.i.i.i1586, %.lr.ph.i.i.i.i.preheader.i.i.i.i1584, %bb.aow
  invoke void @__cxa_rethrow() #45
          to label %bb.apk unwind label %bb.apd

bb.aox:                                           ; preds = %bb.aov
  %i.eex = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.eey = icmp eq i32 %i.eef, %i.eex
  br i1 %i.eey, label %bb.aoy, label %.body.i1489

bb.aoy:                                           ; preds = %bb.aox
  %i.eez = call ptr @__cxa_begin_catch(ptr %i.eee) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %206) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1574, ptr noundef nonnull align 8 dereferenceable(8) %206)
          to label %bb.aoz unwind label %bb.apb

bb.aoz:                                           ; preds = %bb.aoy
  %i.efa = load ptr, ptr %206, align 8, !tbaa !171
  %.not.i.i.i.i37.i1577 = icmp eq ptr %i.efa, null
  br i1 %.not.i.i.i.i37.i1577, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1578, label %bb.apa

bb.apa:                                           ; preds = %bb.aoz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %206) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1578

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1578: ; preds = %bb.apa, %bb.aoz
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.apb:                                           ; preds = %bb.aoy
  %i.efb = landingpad { ptr, i32 }
          cleanup
  %i.efc = load ptr, ptr %206, align 8, !tbaa !171
  %.not.i4.i.i.i.i1575 = icmp eq ptr %i.efc, null
  br i1 %.not.i4.i.i.i.i1575, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1576, label %bb.apc

bb.apc:                                           ; preds = %bb.apb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %206) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1576

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1576: ; preds = %bb.apc, %bb.apb
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #41
  invoke void @__cxa_end_catch()
          to label %.body.i1489 unwind label %bb.apj

bb.apd:                                           ; preds = %.loopexit.i.i.i.i1582
  %i.efd = landingpad { ptr, i32 }
          cleanup
  br label %bb.api

bb.ape:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1592
  %i.efe = load ptr, ptr %207, align 8, !tbaa !171
  %.not.i6.i.i.i.i1595 = icmp eq ptr %i.efe, null
  br i1 %.not.i6.i.i.i.i1595, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1596, label %bb.apf

bb.apf:                                           ; preds = %bb.ape
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %207) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1596

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1596: ; preds = %bb.apf, %bb.ape
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.apg:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1592
  %i.eff = landingpad { ptr, i32 }
          cleanup
  %i.efg = load ptr, ptr %207, align 8, !tbaa !171
  %.not.i8.i.i.i.i1593 = icmp eq ptr %i.efg, null
  br i1 %.not.i8.i.i.i.i1593, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1594, label %bb.aph

bb.aph:                                           ; preds = %bb.apg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %207) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1594

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1594: ; preds = %bb.aph, %bb.apg
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #41
  br label %bb.api

bb.api:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1594, %bb.apd
  %.pn.i.i.i.i.i1583 = phi { ptr, i32 } [ %i.eff, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1594 ], [ %i.efd, %bb.apd ]
  invoke void @__cxa_end_catch()
          to label %.body.i1489 unwind label %bb.apj

bb.apj:                                           ; preds = %bb.api, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1576
  %i.efh = landingpad { ptr, i32 }
          catch ptr null
  %i.efi = extractvalue { ptr, i32 } %i.efh, 0
  call void @__clang_call_terminate(ptr %i.efi) #44
  unreachable

bb.apk:                                           ; preds = %.loopexit.i.i.i.i1582
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1596, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1578
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i1579

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i1573, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.efj = add i32 %.019.i.i.i.i1574, 1           ; 2 uses
  %exitcond.not.i.i.i.i1581 = icmp eq i32 %i.efj, %i.eeb
  br i1 %exitcond.not.i.i.i.i1581, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i1573, !llvm.loop !1141

bb.apl:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1498
  %i.efk = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.efl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i1501 = getelementptr inbounds nuw i8, ptr %205, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %205)
  store ptr %209, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i1501, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1502 = getelementptr inbounds nuw i8, ptr %205, i64 24
  store ptr %208, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1502, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1503 = getelementptr inbounds nuw i8, ptr %205, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1503, align 8
  store i8 1, ptr %205, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i1504 = getelementptr inbounds nuw i8, ptr %205, i64 8
  store ptr %i.efk, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i1504, align 8
  %.not.i.i.i.i.i.i.i1505 = icmp slt i32 %i.eea, %i.efl
  br i1 %.not.i.i.i.i.i.i.i1505, label %bb.apm, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.apm:                                           ; preds = %bb.apl
  %i.efm = add i32 %i.eea, 63                     ; 2 uses
  %i.efn = srem i32 %i.efm, 64
  %i.efo = sub nsw i32 %i.efm, %i.efn             ; 6 uses
  %i.efp = and i32 %i.efl, -64                    ; 4 uses
  %i.efq = icmp slt i32 %i.efp, %i.efo
  br i1 %i.efq, label %bb.apn, label %bb.apo

bb.apn:                                           ; preds = %bb.apm
  %i.efr = and i32 %i.efl, 63
  %i.efs = zext nneg i32 %i.efr to i64
  %notmask.i.i.i.i.i.i.i.i1571 = shl nsw i64 -1, %i.efs
  %i.eft = xor i64 %notmask.i.i.i.i.i.i.i.i1571, -1
  %i.efu = sub nsw i32 %i.efo, %i.eea             ; 2 uses
  %i.efv = zext nneg i32 %i.efu to i64
  %notmask.i.i.i.i.i.i.i.i.i1572 = shl nsw i64 -1, %i.efv
  %i.efw = xor i64 %notmask.i.i.i.i.i.i.i.i.i1572, -1
  %i.efx = sub nsw i32 64, %i.efu
  %i.efy = zext nneg i32 %i.efx to i64
  %i.efz = shl i64 %i.efw, %i.efy
  %i.ega = and i64 %i.efz, %i.eft
  br label %.invoke.i1521

.invoke.i1521:                                    ; preds = %bb.aqz, %bb.apn
  %i.egb = phi i64 [ %i.ega, %bb.apn ], [ %i.ejs, %bb.aqz ]
  %i.egc = ashr i32 %i.efl, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %205, i32 noundef %i.egc, i64 noundef %i.egb)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1487

bb.apo:                                           ; preds = %bb.apm
  %.not32.i.i.i.i.i.i.i1511 = icmp eq i32 %i.eea, %i.efo
  br i1 %.not32.i.i.i.i.i.i.i1511, label %.noexc40.i1513, label %bb.app

bb.app:                                           ; preds = %bb.apo
  %i.egd = sdiv i32 %i.eea, 64
  %i.ege = sub nsw i32 %i.efo, %i.eea             ; 2 uses
  %i.egf = zext nneg i32 %i.ege to i64
  %notmask.i.i35.i.i.i.i.i.i.i1512 = shl nsw i64 -1, %i.egf
  %i.egg = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1512, -1
  %i.egh = sub nsw i32 64, %i.ege
  %i.egi = zext nneg i32 %i.egh to i64
  %i.egj = shl i64 %i.egg, %i.egi
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %205, i32 noundef %i.egd, i64 noundef %i.egj)
          to label %.noexc40.i1513 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1487

.noexc40.i1513:                                   ; preds = %bb.app, %bb.apo
  %i.egk = add nsw i32 %i.efo, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i1514 = icmp sgt i32 %i.egk, %i.efp
  br i1 %.not3346.i.i.i.i.i.i.i1514, label %._crit_edge.i.i.i.i.i.i.i1518, label %.lr.ph.i.i.i.i.i.i.i1515

._crit_edge.i.i.i.i.i.i.i1518:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i1513
  %.not34.i.i.i.i.i.i.i1519 = icmp eq i32 %i.efl, %i.efp
  br i1 %.not34.i.i.i.i.i.i.i1519, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.aqz

.lr.ph.i.i.i.i.i.i.i1515:                         ; preds = %.noexc40.i1513, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.egl = phi i32 [ %i.ejp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.egk, %.noexc40.i1513 ] ; 2 uses
  %.047.i.i.i.i.i.i.i1516 = phi i32 [ %i.egl, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.efo, %.noexc40.i1513 ] ; 2 uses
  %i.egm = sdiv i32 %.047.i.i.i.i.i.i.i1516, 64   ; 3 uses
  %i.egn = sext i32 %i.egm to i64
  %i.ego = getelementptr inbounds [8 x i8], ptr %i.efk, i64 %i.egn
  %i.egp = load i64, ptr %i.ego, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.egp, label %.lr.ph.i.i.i.i10.i.i.i.i1547 [
    i64 -1, label %bb.apq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i1547:                     ; preds = %.lr.ph.i.i.i.i.i.i.i1515
  %i.egq = shl nsw i32 %i.egm, 6
  br label %bb.aqi

bb.apq:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i1515
  %i.egr = shl nsw i32 %i.egm, 6                  ; 2 uses
  %i.egs = add i32 %i.egr, 64
  %i.egt = sext i32 %i.egs to i64
  %.0.off.i.i.i.i.i.i.i1522 = add i32 %.047.i.i.i.i.i.i.i1516, 127
  %.not57.i.i.i.i.i.i.i.i1523 = icmp ult i32 %.0.off.i.i.i.i.i.i.i1522, 64
  br i1 %.not57.i.i.i.i.i.i.i.i1523, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i1524

.lr.ph56.i.i.i.i.i.i.i.i1524:                     ; preds = %bb.apq
  %i.egu = sext i32 %i.egr to i64
  br label %bb.apr

bb.apr:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i1524
  %.055.i.i.i.i.i.i.i.i1525 = phi i64 [ %i.egu, %.lr.ph56.i.i.i.i.i.i.i.i1524 ], [ %i.eic, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.egv = trunc i64 %.055.i.i.i.i.i.i.i.i1525 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %209)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.aps

bb.aps:                                           ; preds = %bb.apr
  %i.egw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.egx = extractvalue { ptr, i32 } %i.egw, 0    ; 2 uses
  %i.egy = extractvalue { ptr, i32 } %i.egw, 1    ; 2 uses
  %i.egz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.eha = icmp eq i32 %i.egy, %i.egz
  br i1 %i.eha, label %bb.apt, label %bb.apu

bb.apt:                                           ; preds = %bb.aps
  %i.ehb = call ptr @__cxa_begin_catch(ptr %i.egx) #41
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.ehb, i64 8
  %i.ehd = load ptr, ptr %i.ehc, align 8, !tbaa !376 ; 2 uses
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.ehd, i64 144
  %i.ehf = load ptr, ptr %i.ehe, align 8, !tbaa !115 ; 4 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.ehd, i64 152
  %i.ehh = load i64, ptr %i.ehg, align 8, !tbaa !98
  %i.ehi = icmp eq i64 %i.ehh, 4
  br i1 %i.ehi, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1534, label %.loopexit.i.i.i.i.i.i.i.i1532

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1534:     ; preds = %bb.apt
  %i.ehj = load i8, ptr %i.ehf, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1535 = icmp eq i8 %i.ehj, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1535, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1536, label %.loopexit.i.i.i.i.i.i.i.i1532

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1536:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1534
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.ehf, i64 1
  %i.ehl = load i8, ptr %i.ehk, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1537 = icmp eq i8 %i.ehl, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1537, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1538, label %.loopexit.i.i.i.i.i.i.i.i1532

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1538:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1536
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehf, i64 2
  %i.ehn = load i8, ptr %i.ehm, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1539 = icmp eq i8 %i.ehn, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1539, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1540, label %.loopexit.i.i.i.i.i.i.i.i1532

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1540:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1538
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehf, i64 3
  %i.ehp = load i8, ptr %i.eho, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1541 = icmp eq i8 %i.ehp, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1541, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1542, label %.loopexit.i.i.i.i.i.i.i.i1532

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1542:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1540
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %202) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.egv, ptr noundef nonnull align 8 dereferenceable(8) %202)
          to label %bb.aqb unwind label %bb.aqd

.loopexit.i.i.i.i.i.i.i.i1532:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1540, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1538, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1536, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1534, %bb.apt
  invoke void @__cxa_rethrow() #45
          to label %bb.aqh unwind label %bb.aqa

bb.apu:                                           ; preds = %bb.aps
  %i.ehq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.ehr = icmp eq i32 %i.egy, %i.ehq
  br i1 %i.ehr, label %bb.apv, label %.body.i1489

bb.apv:                                           ; preds = %bb.apu
  %i.ehs = call ptr @__cxa_begin_catch(ptr %i.egx) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %201) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.egv, ptr noundef nonnull align 8 dereferenceable(8) %201)
          to label %bb.apw unwind label %bb.apy

bb.apw:                                           ; preds = %bb.apv
  %i.eht = load ptr, ptr %201, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i1528 = icmp eq ptr %i.eht, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1528, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1529, label %bb.apx

bb.apx:                                           ; preds = %bb.apw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %201) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1529

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1529: ; preds = %bb.apx, %bb.apw
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.apy:                                           ; preds = %bb.apv
  %i.ehu = landingpad { ptr, i32 }
          cleanup
  %i.ehv = load ptr, ptr %201, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i1526 = icmp eq ptr %i.ehv, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i1526, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1527, label %bb.apz

bb.apz:                                           ; preds = %bb.apy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %201) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1527

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1527: ; preds = %bb.apz, %bb.apy
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #41
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i1479, label %.lr.ph5746, label %.critedge.i.i.i.i.i.i148.i1480, !llvm.loop !20

.lr.ph5746:                                       ; preds = %bb.asd, %bb.ase
  %indvars.iv.i.i.i.i146.i14785745 = phi i64 [ %indvars.iv.next.i.i.i.i152.i1484, %bb.ase ], [ 0, %bb.asd ] ; 2 uses
  %i.eni = lshr exact i64 %indvars.iv.i.i.i.i146.i14785745, 3
  %i.enj = getelementptr inbounds nuw i8, ptr %i.enf, i64 %i.eni
  %i.enk = load i64, ptr %i.enj, align 8, !tbaa !219
  %i.enl = icmp eq i64 %i.enk, -1
  br i1 %i.enl, label %bb.ase, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i1480:                   ; preds = %bb.ase, %bb.asd
  %.not38.i.i.i.i.i.i149.i1481 = icmp eq i32 %i.enb, %i.eng
  br i1 %.not38.i.i.i.i.i.i149.i1481, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372, label %bb.asf

bb.asf:                                           ; preds = %.critedge.i.i.i.i.i.i148.i1480
  %i.enm = lshr i32 %i.enb, 6
  %i.enn = and i32 %i.enb, 63
  %i.eno = zext nneg i32 %i.enn to i64
  %notmask.i40.i.i.i.i.i.i150.i1482 = shl nsw i64 -1, %i.eno
  %i.enp = zext nneg i32 %i.enm to i64
  %i.enq = getelementptr inbounds nuw [8 x i8], ptr %i.enf, i64 %i.enp
  %i.enr = load i64, ptr %i.enq, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i1483 = or i64 %i.enr, %notmask.i40.i.i.i.i.i.i150.i1482
  %i.ens = icmp eq i64 %.demorgan.i.i.i.i151.i1483, -1
  %i.ent = zext i1 %i.ens to i16
  %i.enu = or disjoint i16 %i.ent, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372: ; preds = %.lr.ph5746, %bb.asf, %.critedge.i.i.i.i.i.i148.i1480, %bb.asc, %bb.asb, %bb.asa
  %.sroa.0.0.insert.ext.i.i.i.i59.i1373 = phi i16 [ 256, %bb.asb ], [ 256, %bb.asa ], [ 257, %bb.asc ], [ 257, %.critedge.i.i.i.i.i.i148.i1480 ], [ %i.enu, %bb.asf ], [ 256, %.lr.ph5746 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i1373, ptr %i.emt, align 4
  %i.env = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i1373 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1374

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1374: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1485
  %.0.in.i.i.i.i61.i1375 = phi i8 [ %.0.in.pre.i.i.i.i154.i1486, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1485 ], [ %i.env, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1372 ]
  %.0.i.i.i.i62.i1376 = trunc nuw i8 %.0.in.i.i.i.i61.i1375 to i1
  br i1 %.0.i.i.i.i62.i1376, label %bb.asg, label %bb.asx

bb.asg:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1374
  %i.enw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.enx = load i32, ptr %i.enw, align 8, !tbaa !324 ; 2 uses
  %i.eny = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.enz = load i32, ptr %i.eny, align 4, !tbaa !370 ; 2 uses
  %i.eoa = icmp slt i32 %i.enz, %i.enx
  br i1 %i.eoa, label %.lr.ph.i.i.i124.i1455, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i1455:                            ; preds = %bb.asg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i1456 = phi i32 [ %i.eph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.enz, %bb.asg ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %199, i32 noundef %.029.i.i.i.i1456)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ash

bb.ash:                                           ; preds = %.lr.ph.i.i.i124.i1455
  %i.eob = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eoc = extractvalue { ptr, i32 } %i.eob, 0    ; 2 uses
  %i.eod = extractvalue { ptr, i32 } %i.eob, 1    ; 2 uses
  %i.eoe = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.eof = icmp eq i32 %i.eod, %i.eoe
  br i1 %i.eof, label %bb.asi, label %bb.asj

bb.asi:                                           ; preds = %bb.ash
  %i.eog = call ptr @__cxa_begin_catch(ptr %i.eoc) #41
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eog, i64 8
  %i.eoi = load ptr, ptr %i.eoh, align 8, !tbaa !376 ; 2 uses
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 144
  %i.eok = load ptr, ptr %i.eoj, align 8, !tbaa !115 ; 4 uses
  %i.eol = getelementptr inbounds nuw i8, ptr %i.eoi, i64 152
  %i.eom = load i64, ptr %i.eol, align 8, !tbaa !98
  %i.eon = icmp eq i64 %i.eom, 4
  br i1 %i.eon, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i1464, label %.loopexit.i.i.i130.i1462

.lr.ph.i.i.i.i.preheader.i.i.i132.i1464:          ; preds = %bb.asi
  %i.eoo = load i8, ptr %i.eok, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i1465 = icmp eq i8 %i.eoo, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i1465, label %tailrecurse.i.i.i.i.i.i.i134.i1466, label %.loopexit.i.i.i130.i1462

tailrecurse.i.i.i.i.i.i.i134.i1466:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i1464
  %i.eop = getelementptr inbounds nuw i8, ptr %i.eok, i64 1
  %i.eoq = load i8, ptr %i.eop, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i1467 = icmp eq i8 %i.eoq, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i1467, label %tailrecurse.i.i.i.i.1.i.i.i136.i1468, label %.loopexit.i.i.i130.i1462

tailrecurse.i.i.i.i.1.i.i.i136.i1468:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i1466
  %i.eor = getelementptr inbounds nuw i8, ptr %i.eok, i64 2
  %i.eos = load i8, ptr %i.eor, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i1469 = icmp eq i8 %i.eos, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i1469, label %tailrecurse.i.i.i.i.2.i.i.i138.i1470, label %.loopexit.i.i.i130.i1462

tailrecurse.i.i.i.i.2.i.i.i138.i1470:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i1468
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eok, i64 3
  %i.eou = load i8, ptr %i.eot, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i1471 = icmp eq i8 %i.eou, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i1471, label %tailrecurse.i.i.i.i.3.i.i.i140.i1472, label %.loopexit.i.i.i130.i1462

tailrecurse.i.i.i.i.3.i.i.i140.i1472:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1470
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %197) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1456, ptr noundef nonnull align 8 dereferenceable(8) %197)
          to label %bb.asq unwind label %bb.ass

.loopexit.i.i.i130.i1462:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1470, %tailrecurse.i.i.i.i.1.i.i.i136.i1468, %tailrecurse.i.i.i.i.i.i.i134.i1466, %.lr.ph.i.i.i.i.preheader.i.i.i132.i1464, %bb.asi
  invoke void @__cxa_rethrow() #45
          to label %bb.asw unwind label %bb.asp

bb.asj:                                           ; preds = %bb.ash
  %i.eov = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.eow = icmp eq i32 %i.eod, %i.eov
  br i1 %i.eow, label %bb.ask, label %common.resume

bb.ask:                                           ; preds = %bb.asj
  %i.eox = call ptr @__cxa_begin_catch(ptr %i.eoc) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %196) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1456, ptr noundef nonnull align 8 dereferenceable(8) %196)
          to label %bb.asl unwind label %bb.asn

bb.asl:                                           ; preds = %bb.ask
  %i.eoy = load ptr, ptr %196, align 8, !tbaa !171
  %.not.i.i.i.i127.i1459 = icmp eq ptr %i.eoy, null
  br i1 %.not.i.i.i.i127.i1459, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1460, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %196) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1460

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1460: ; preds = %bb.asm, %bb.asl
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.asn:                                           ; preds = %bb.ask
  %i.eoz = landingpad { ptr, i32 }
          cleanup
  %i.epa = load ptr, ptr %196, align 8, !tbaa !171
  %.not.i4.i.i.i125.i1457 = icmp eq ptr %i.epa, null
  br i1 %.not.i4.i.i.i125.i1457, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %196) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458: ; preds = %bb.aso, %bb.asn
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.asv

bb.asp:                                           ; preds = %.loopexit.i.i.i130.i1462
  %i.epb = landingpad { ptr, i32 }
          cleanup
  br label %bb.asu

bb.asq:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1472
  %i.epc = load ptr, ptr %197, align 8, !tbaa !171
  %.not.i6.i.i.i143.i1475 = icmp eq ptr %i.epc, null
  br i1 %.not.i6.i.i.i143.i1475, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1476, label %bb.asr

bb.asr:                                           ; preds = %bb.asq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %197) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1476

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1476: ; preds = %bb.asr, %bb.asq
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.ass:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1472
  %i.epd = landingpad { ptr, i32 }
          cleanup
  %i.epe = load ptr, ptr %197, align 8, !tbaa !171
  %.not.i8.i.i.i141.i1473 = icmp eq ptr %i.epe, null
  br i1 %.not.i8.i.i.i141.i1473, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1474, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %197) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1474

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1474: ; preds = %bb.ast, %bb.ass
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #41
  br label %bb.asu

bb.asu:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1474, %bb.asp
  %.pn.i.i.i.i131.i1463 = phi { ptr, i32 } [ %i.epd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1474 ], [ %i.epb, %bb.asp ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.asv

bb.asv:                                           ; preds = %bb.asu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1458
  %i.epf = landingpad { ptr, i32 }
          catch ptr null
  %i.epg = extractvalue { ptr, i32 } %i.epf, 0
  call void @__clang_call_terminate(ptr %i.epg) #44
  unreachable

bb.asw:                                           ; preds = %.loopexit.i.i.i130.i1462
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1476, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1460
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i1455
  %i.eph = add i32 %.029.i.i.i.i1456, 1           ; 2 uses
  %exitcond.not.i.i.i129.i1461 = icmp eq i32 %i.eph, %i.enx
  br i1 %exitcond.not.i.i.i129.i1461, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i1455, !llvm.loop !1150

bb.asx:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1374
  %i.epi = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.epj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.epk = load i32, ptr %i.epj, align 4, !tbaa !370 ; 6 uses
  %i.epl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.epm = load i32, ptr %i.epl, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i1377 = getelementptr inbounds nuw i8, ptr %195, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %195)
  store ptr %199, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i1377, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i1378 = getelementptr inbounds nuw i8, ptr %195, i64 24
  store ptr %198, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i1378, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i1379 = getelementptr inbounds nuw i8, ptr %195, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i1379, align 8
  store i8 1, ptr %195, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i1380 = getelementptr inbounds nuw i8, ptr %195, i64 8
  store ptr %i.epi, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i1380, align 8
  %.not.i.i.i.i.i.i67.i1381 = icmp slt i32 %i.epk, %i.epm
  br i1 %.not.i.i.i.i.i.i67.i1381, label %bb.asy, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.asy:                                           ; preds = %bb.asx
  %i.epn = add i32 %i.epk, 63                     ; 2 uses
  %i.epo = srem i32 %i.epn, 64
  %i.epp = sub nsw i32 %i.epn, %i.epo             ; 6 uses
  %i.epq = and i32 %i.epm, -64                    ; 4 uses
  %i.epr = icmp slt i32 %i.epq, %i.epp
  br i1 %i.epr, label %bb.asz, label %bb.ata

bb.asz:                                           ; preds = %bb.asy
  %i.eps = ashr i32 %i.epm, 6
  %i.ept = and i32 %i.epm, 63
  %i.epu = zext nneg i32 %i.ept to i64
  %notmask.i.i.i.i.i.i.i122.i1453 = shl nsw i64 -1, %i.epu
  %i.epv = xor i64 %notmask.i.i.i.i.i.i.i122.i1453, -1
  %i.epw = sub nsw i32 %i.epp, %i.epk             ; 2 uses
  %i.epx = zext nneg i32 %i.epw to i64
  %notmask.i.i.i.i.i.i.i.i123.i1454 = shl nsw i64 -1, %i.epx
  %i.epy = xor i64 %notmask.i.i.i.i.i.i.i.i123.i1454, -1
  %i.epz = sub nsw i32 64, %i.epw
  %i.eqa = zext nneg i32 %i.epz to i64
  %i.eqb = shl i64 %i.epy, %i.eqa
  %i.eqc = and i64 %i.eqb, %i.epv
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %195, i32 noundef %i.eps, i64 noundef %i.eqc)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.ata:                                           ; preds = %bb.asy
  %.not32.i.i.i.i.i.i68.i1382 = icmp eq i32 %i.epk, %i.epp
  br i1 %.not32.i.i.i.i.i.i68.i1382, label %bb.atc, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.eqd = sdiv i32 %i.epk, 64
  %i.eqe = sub nsw i32 %i.epp, %i.epk             ; 2 uses
  %i.eqf = zext nneg i32 %i.eqe to i64
  %notmask.i.i35.i.i.i.i.i.i69.i1383 = shl nsw i64 -1, %i.eqf
  %i.eqg = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i1383, -1
  %i.eqh = sub nsw i32 64, %i.eqe
  %i.eqi = zext nneg i32 %i.eqh to i64
  %i.eqj = shl i64 %i.eqg, %i.eqi
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %195, i32 noundef %i.eqd, i64 noundef %i.eqj)
  br label %bb.atc

bb.atc:                                           ; preds = %bb.atb, %bb.ata
  %i.eqk = add nsw i32 %i.epp, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i1384 = icmp sgt i32 %i.eqk, %i.epq
  br i1 %.not3351.i.i.i.i.i.i.i1384, label %._crit_edge.i.i.i.i.i.i72.i1388, label %.lr.ph.i.i.i.i.i.i70.i1385

._crit_edge.i.i.i.i.i.i72.i1388:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.atc
  %.not34.i.i.i.i.i.i73.i1389 = icmp eq i32 %i.epm, %i.epq
  br i1 %.not34.i.i.i.i.i.i73.i1389, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.aur

.lr.ph.i.i.i.i.i.i70.i1385:                       ; preds = %bb.atc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.eql = phi i32 [ %i.ewt, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.eqk, %bb.atc ] ; 2 uses
  %.052.i.i.i.i.i.i.i1386 = phi i32 [ %i.eql, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.epp, %bb.atc ] ; 2 uses
  %i.eqm = sdiv i32 %.052.i.i.i.i.i.i.i1386, 64   ; 3 uses
  %i.eqn = sext i32 %i.eqm to i64
  %i.eqo = getelementptr inbounds [8 x i8], ptr %i.epi, i64 %i.eqn
  %i.eqp = load i64, ptr %i.eqo, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.eqp, label %.lr.ph.i.i.i.i10.i.i.i100.i1414 [
    i64 -1, label %bb.atd
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i1414:                  ; preds = %.lr.ph.i.i.i.i.i.i70.i1385
  %i.eqq = shl nsw i32 %i.eqm, 6
  br label %bb.atv

bb.atd:                                           ; preds = %.lr.ph.i.i.i.i.i.i70.i1385
  %i.eqr = shl nsw i32 %i.eqm, 6                  ; 2 uses
  %i.eqs = add i32 %i.eqr, 64
  %i.eqt = sext i32 %i.eqs to i64
  %.0.off.i.i.i.i.i.i75.i1391 = add i32 %.052.i.i.i.i.i.i.i1386, 127
  %.not57.i.i.i.i.i.i.i76.i1392 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i1391, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i1392, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlaE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i1393

.lr.ph56.i.i.i.i.i.i.i77.i1393:                   ; preds = %bb.atd
  %i.equ = sext i32 %i.eqr to i64
  br label %bb.ate

bb.ate:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i1393
  %.055.i.i.i.i.i.i.i78.i1394 = phi i64 [ %i.equ, %.lr.ph56.i.i.i.i.i.i.i77.i1393 ], [ %i.esc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.eqv = trunc i64 %.055.i.i.i.i.i.i.i78.i1394 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlaE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %199, i32 noundef %i.eqv)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  %i.eqw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.eqx = extractvalue { ptr, i32 } %i.eqw, 0    ; 2 uses
  %i.eqy = extractvalue { ptr, i32 } %i.eqw, 1    ; 2 uses
  %i.eqz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.era = icmp eq i32 %i.eqy, %i.eqz
  br i1 %i.era, label %bb.atg, label %bb.ath

bb.atg:                                           ; preds = %bb.atf
  %i.erb = call ptr @__cxa_begin_catch(ptr %i.eqx) #41
  %i.erc = getelementptr inbounds nuw i8, ptr %i.erb, i64 8
  %i.erd = load ptr, ptr %i.erc, align 8, !tbaa !376 ; 2 uses
  %i.ere = getelementptr inbounds nuw i8, ptr %i.erd, i64 144
  %i.erf = load ptr, ptr %i.ere, align 8, !tbaa !115 ; 4 uses
  %i.erg = getelementptr inbounds nuw i8, ptr %i.erd, i64 152
  %i.erh = load i64, ptr %i.erg, align 8, !tbaa !98
  %i.eri = icmp eq i64 %i.erh, 4
  br i1 %i.eri, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1401, label %.loopexit.i.i.i.i.i.i.i85.i1399

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1401:   ; preds = %bb.atg
  %i.erj = load i8, ptr %i.erf, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1402 = icmp eq i8 %i.erj, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1402, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1403, label %.loopexit.i.i.i.i.i.i.i85.i1399

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1403:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1401
  %i.erk = getelementptr inbounds nuw i8, ptr %i.erf, i64 1
  %i.erl = load i8, ptr %i.erk, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1404 = icmp eq i8 %i.erl, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1404, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1405, label %.loopexit.i.i.i.i.i.i.i85.i1399

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1405:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1403
  %i.erm = getelementptr inbounds nuw i8, ptr %i.erf, i64 2
  %i.ern = load i8, ptr %i.erm, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1406 = icmp eq i8 %i.ern, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1406, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1407, label %.loopexit.i.i.i.i.i.i.i85.i1399

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1407:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1405
  %i.ero = getelementptr inbounds nuw i8, ptr %i.erf, i64 3
  %i.erp = load i8, ptr %i.ero, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1408 = icmp eq i8 %i.erp, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1408, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1409, label %.loopexit.i.i.i.i.i.i.i85.i1399

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1409:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1407
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %192) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.eqv, ptr noundef nonnull align 8 dereferenceable(8) %192)
          to label %bb.ato unwind label %bb.atq

.loopexit.i.i.i.i.i.i.i85.i1399:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1407, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1405, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1403, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1401, %bb.atg
  invoke void @__cxa_rethrow() #45
          to label %bb.atu unwind label %bb.atn

bb.ath:                                           ; preds = %bb.atf
  %i.erq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.err = icmp eq i32 %i.eqy, %i.erq
  br i1 %i.err, label %bb.ati, label %common.resume

bb.ati:                                           ; preds = %bb.ath
  %i.ers = call ptr @__cxa_begin_catch(ptr %i.eqx) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %191) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.eqv, ptr noundef nonnull align 8 dereferenceable(8) %191)
          to label %bb.atj unwind label %bb.atl

bb.atj:                                           ; preds = %bb.ati
  %i.ert = load ptr, ptr %191, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i1397 = icmp eq ptr %i.ert, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i1397, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1398, label %bb.atk

bb.atk:                                           ; preds = %bb.atj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %191) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1398

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1398: ; preds = %bb.atk, %bb.atj
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIaZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlaE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.atl:                                           ; preds = %bb.ati
  %i.eru = landingpad { ptr, i32 }
          cleanup
  %i.erv = load ptr, ptr %191, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i1395 = icmp eq ptr %i.erv, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i1395, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1396, label %bb.atm

bb.atm:                                           ; preds = %bb.atl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %191) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1396

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1396: ; preds = %bb.atm, %bb.atl
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.att
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i1923 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i1928, %i.fjo
  br i1 %.not37.i.i.not.i.i.i.i.i1923, label %.lr.ph5740, label %.critedge.i.i.i.i.i.i.i1924, !llvm.loop !20

.lr.ph5740:                                       ; preds = %bb.ays, %bb.ayt
  %indvars.iv.i.i.i.i.i19225739 = phi i64 [ %indvars.iv.next.i.i.i.i.i1928, %bb.ayt ], [ 0, %bb.ays ] ; 2 uses
  %i.fjp = lshr exact i64 %indvars.iv.i.i.i.i.i19225739, 3
  %i.fjq = getelementptr inbounds nuw i8, ptr %i.fjm, i64 %i.fjp
  %i.fjr = load i64, ptr %i.fjq, align 8, !tbaa !219
  %i.fjs = icmp eq i64 %i.fjr, -1
  br i1 %i.fjs, label %bb.ayt, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820, !llvm.loop !20

.critedge.i.i.i.i.i.i.i1924:                      ; preds = %bb.ayt, %bb.ays
  %.not38.i.i.i.i.i.i.i1925 = icmp eq i32 %i.fjj, %i.fjn
  br i1 %.not38.i.i.i.i.i.i.i1925, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820, label %bb.ayu

bb.ayu:                                           ; preds = %.critedge.i.i.i.i.i.i.i1924
  %i.fjt = lshr i32 %i.fjj, 6
  %i.fju = and i32 %i.fjj, 63
  %i.fjv = zext nneg i32 %i.fju to i64
  %notmask.i40.i.i.i.i.i.i.i1926 = shl nsw i64 -1, %i.fjv
  %i.fjw = zext nneg i32 %i.fjt to i64
  %i.fjx = getelementptr inbounds nuw [8 x i8], ptr %i.fjm, i64 %i.fjw
  %i.fjy = load i64, ptr %i.fjx, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i1927 = or i64 %i.fjy, %notmask.i40.i.i.i.i.i.i.i1926
  %i.fjz = icmp eq i64 %.demorgan.i.i.i.i.i1927, -1
  %i.fka = zext i1 %i.fjz to i16
  %i.fkb = or disjoint i16 %i.fka, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820: ; preds = %.lr.ph5740, %bb.ayu, %.critedge.i.i.i.i.i.i.i1924, %bb.ayr, %bb.ayq, %bb.ayp
  %.sroa.0.0.insert.ext.i.i.i.i.i1821 = phi i16 [ 256, %bb.ayq ], [ 256, %bb.ayp ], [ 257, %bb.ayr ], [ 257, %.critedge.i.i.i.i.i.i.i1924 ], [ %i.fkb, %bb.ayu ], [ 256, %.lr.ph5740 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i1821, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.fkc = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i1821 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1822

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1822: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1929
  %i.fkd = phi i32 [ %.pre.i.i.i1931, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1929 ], [ %i.fjh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820 ] ; 8 uses
  %.0.in.i.i.i.i.i1823 = phi i8 [ %.0.in.pre.i.i.i.i.i1930, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i1929 ], [ %i.fkc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i1820 ]
  %.0.i.i.i.i36.i1824 = trunc nuw i8 %.0.in.i.i.i.i.i1823 to i1
  br i1 %.0.i.i.i.i36.i1824, label %bb.ayv, label %bb.azm

bb.ayv:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1822
  %i.fke = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.fkf = icmp slt i32 %i.fkd, %i.fke
  br i1 %i.fkf, label %.lr.ph.i.i.i.i1897, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i1897:                               ; preds = %bb.ayv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i1898 = phi i32 [ %i.flm, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.fkd, %bb.ayv ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %176)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.ayw

bb.ayw:                                           ; preds = %.lr.ph.i.i.i.i1897
  %i.fkg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fkh = extractvalue { ptr, i32 } %i.fkg, 0    ; 2 uses
  %i.fki = extractvalue { ptr, i32 } %i.fkg, 1    ; 2 uses
  %i.fkj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.fkk = icmp eq i32 %i.fki, %i.fkj
  br i1 %i.fkk, label %bb.ayx, label %bb.ayy

bb.ayx:                                           ; preds = %bb.ayw
  %i.fkl = call ptr @__cxa_begin_catch(ptr %i.fkh) #41
  %i.fkm = getelementptr inbounds nuw i8, ptr %i.fkl, i64 8
  %i.fkn = load ptr, ptr %i.fkm, align 8, !tbaa !376 ; 2 uses
  %i.fko = getelementptr inbounds nuw i8, ptr %i.fkn, i64 144
  %i.fkp = load ptr, ptr %i.fko, align 8, !tbaa !115 ; 4 uses
  %i.fkq = getelementptr inbounds nuw i8, ptr %i.fkn, i64 152
  %i.fkr = load i64, ptr %i.fkq, align 8, !tbaa !98
  %i.fks = icmp eq i64 %i.fkr, 4
  br i1 %i.fks, label %.lr.ph.i.i.i.i.preheader.i.i.i.i1908, label %.loopexit.i.i.i.i1906

.lr.ph.i.i.i.i.preheader.i.i.i.i1908:             ; preds = %bb.ayx
  %i.fkt = load i8, ptr %i.fkp, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i1909 = icmp eq i8 %i.fkt, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i1909, label %tailrecurse.i.i.i.i.i.i.i.i1910, label %.loopexit.i.i.i.i1906

tailrecurse.i.i.i.i.i.i.i.i1910:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i1908
  %i.fku = getelementptr inbounds nuw i8, ptr %i.fkp, i64 1
  %i.fkv = load i8, ptr %i.fku, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i1911 = icmp eq i8 %i.fkv, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i1911, label %tailrecurse.i.i.i.i.1.i.i.i.i1912, label %.loopexit.i.i.i.i1906

tailrecurse.i.i.i.i.1.i.i.i.i1912:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i1910
  %i.fkw = getelementptr inbounds nuw i8, ptr %i.fkp, i64 2
  %i.fkx = load i8, ptr %i.fkw, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i1913 = icmp eq i8 %i.fkx, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i1913, label %tailrecurse.i.i.i.i.2.i.i.i.i1914, label %.loopexit.i.i.i.i1906

tailrecurse.i.i.i.i.2.i.i.i.i1914:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i1912
  %i.fky = getelementptr inbounds nuw i8, ptr %i.fkp, i64 3
  %i.fkz = load i8, ptr %i.fky, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i1915 = icmp eq i8 %i.fkz, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i1915, label %tailrecurse.i.i.i.i.3.i.i.i.i1916, label %.loopexit.i.i.i.i1906

tailrecurse.i.i.i.i.3.i.i.i.i1916:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1914
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %174) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1898, ptr noundef nonnull align 8 dereferenceable(8) %174)
          to label %bb.azf unwind label %bb.azh

.loopexit.i.i.i.i1906:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i1914, %tailrecurse.i.i.i.i.1.i.i.i.i1912, %tailrecurse.i.i.i.i.i.i.i.i1910, %.lr.ph.i.i.i.i.preheader.i.i.i.i1908, %bb.ayx
  invoke void @__cxa_rethrow() #45
          to label %bb.azl unwind label %bb.aze

bb.ayy:                                           ; preds = %bb.ayw
  %i.fla = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.flb = icmp eq i32 %i.fki, %i.fla
  br i1 %i.flb, label %bb.ayz, label %.body.i1813

bb.ayz:                                           ; preds = %bb.ayy
  %i.flc = call ptr @__cxa_begin_catch(ptr %i.fkh) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %173) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %173) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i1898, ptr noundef nonnull align 8 dereferenceable(8) %173)
          to label %bb.aza unwind label %bb.azc

bb.aza:                                           ; preds = %bb.ayz
  %i.fld = load ptr, ptr %173, align 8, !tbaa !171
  %.not.i.i.i.i37.i1901 = icmp eq ptr %i.fld, null
  br i1 %.not.i.i.i.i37.i1901, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1902, label %bb.azb

bb.azb:                                           ; preds = %bb.aza
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %173) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1902

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1902: ; preds = %bb.azb, %bb.aza
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.azc:                                           ; preds = %bb.ayz
  %i.fle = landingpad { ptr, i32 }
          cleanup
  %i.flf = load ptr, ptr %173, align 8, !tbaa !171
  %.not.i4.i.i.i.i1899 = icmp eq ptr %i.flf, null
  br i1 %.not.i4.i.i.i.i1899, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1900, label %bb.azd

bb.azd:                                           ; preds = %bb.azc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %173) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1900

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1900: ; preds = %bb.azd, %bb.azc
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #41
  invoke void @__cxa_end_catch()
          to label %.body.i1813 unwind label %bb.azk

bb.aze:                                           ; preds = %.loopexit.i.i.i.i1906
  %i.flg = landingpad { ptr, i32 }
          cleanup
  br label %bb.azj

bb.azf:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1916
  %i.flh = load ptr, ptr %174, align 8, !tbaa !171
  %.not.i6.i.i.i.i1919 = icmp eq ptr %i.flh, null
  br i1 %.not.i6.i.i.i.i1919, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1920, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %174) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1920

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1920: ; preds = %bb.azg, %bb.azf
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.azh:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i1916
  %i.fli = landingpad { ptr, i32 }
          cleanup
  %i.flj = load ptr, ptr %174, align 8, !tbaa !171
  %.not.i8.i.i.i.i1917 = icmp eq ptr %i.flj, null
  br i1 %.not.i8.i.i.i.i1917, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1918, label %bb.azi

bb.azi:                                           ; preds = %bb.azh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %174) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1918

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1918: ; preds = %bb.azi, %bb.azh
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #41
  br label %bb.azj

bb.azj:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1918, %bb.aze
  %.pn.i.i.i.i.i1907 = phi { ptr, i32 } [ %i.fli, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i1918 ], [ %i.flg, %bb.aze ]
  invoke void @__cxa_end_catch()
          to label %.body.i1813 unwind label %bb.azk

bb.azk:                                           ; preds = %bb.azj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i1900
  %i.flk = landingpad { ptr, i32 }
          catch ptr null
  %i.fll = extractvalue { ptr, i32 } %i.flk, 0
  call void @__clang_call_terminate(ptr %i.fll) #44
  unreachable

bb.azl:                                           ; preds = %.loopexit.i.i.i.i1906
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i1920, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i1902
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i1903

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i1897, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.flm = add i32 %.019.i.i.i.i1898, 1           ; 2 uses
  %exitcond.not.i.i.i.i1905 = icmp eq i32 %i.flm, %i.fke
  br i1 %exitcond.not.i.i.i.i1905, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i1897, !llvm.loop !1160

bb.azm:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i1822
  %i.fln = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.flo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i1825 = getelementptr inbounds nuw i8, ptr %172, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %172)
  store ptr %176, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i1825, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1826 = getelementptr inbounds nuw i8, ptr %172, i64 24
  store ptr %175, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1826, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1827 = getelementptr inbounds nuw i8, ptr %172, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i1827, align 8
  store i8 1, ptr %172, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i1828 = getelementptr inbounds nuw i8, ptr %172, i64 8
  store ptr %i.fln, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i1828, align 8
  %.not.i.i.i.i.i.i.i1829 = icmp slt i32 %i.fkd, %i.flo
  br i1 %.not.i.i.i.i.i.i.i1829, label %bb.azn, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.azn:                                           ; preds = %bb.azm
  %i.flp = add i32 %i.fkd, 63                     ; 2 uses
  %i.flq = srem i32 %i.flp, 64
  %i.flr = sub nsw i32 %i.flp, %i.flq             ; 6 uses
  %i.fls = and i32 %i.flo, -64                    ; 4 uses
  %i.flt = icmp slt i32 %i.fls, %i.flr
  br i1 %i.flt, label %bb.azo, label %bb.azp

bb.azo:                                           ; preds = %bb.azn
  %i.flu = and i32 %i.flo, 63
  %i.flv = zext nneg i32 %i.flu to i64
  %notmask.i.i.i.i.i.i.i.i1895 = shl nsw i64 -1, %i.flv
  %i.flw = xor i64 %notmask.i.i.i.i.i.i.i.i1895, -1
  %i.flx = sub nsw i32 %i.flr, %i.fkd             ; 2 uses
  %i.fly = zext nneg i32 %i.flx to i64
  %notmask.i.i.i.i.i.i.i.i.i1896 = shl nsw i64 -1, %i.fly
  %i.flz = xor i64 %notmask.i.i.i.i.i.i.i.i.i1896, -1
  %i.fma = sub nsw i32 64, %i.flx
  %i.fmb = zext nneg i32 %i.fma to i64
  %i.fmc = shl i64 %i.flz, %i.fmb
  %i.fmd = and i64 %i.fmc, %i.flw
  br label %.invoke.i1845

.invoke.i1845:                                    ; preds = %bb.bba, %bb.azo
  %i.fme = phi i64 [ %i.fmd, %bb.azo ], [ %i.fpv, %bb.bba ]
  %i.fmf = ashr i32 %i.flo, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %172, i32 noundef %i.fmf, i64 noundef %i.fme)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1811

bb.azp:                                           ; preds = %bb.azn
  %.not32.i.i.i.i.i.i.i1835 = icmp eq i32 %i.fkd, %i.flr
  br i1 %.not32.i.i.i.i.i.i.i1835, label %.noexc40.i1837, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  %i.fmg = sdiv i32 %i.fkd, 64
  %i.fmh = sub nsw i32 %i.flr, %i.fkd             ; 2 uses
  %i.fmi = zext nneg i32 %i.fmh to i64
  %notmask.i.i35.i.i.i.i.i.i.i1836 = shl nsw i64 -1, %i.fmi
  %i.fmj = xor i64 %notmask.i.i35.i.i.i.i.i.i.i1836, -1
  %i.fmk = sub nsw i32 64, %i.fmh
  %i.fml = zext nneg i32 %i.fmk to i64
  %i.fmm = shl i64 %i.fmj, %i.fml
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %172, i32 noundef %i.fmg, i64 noundef %i.fmm)
          to label %.noexc40.i1837 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i1811

.noexc40.i1837:                                   ; preds = %bb.azq, %bb.azp
  %i.fmn = add nsw i32 %i.flr, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i1838 = icmp sgt i32 %i.fmn, %i.fls
  br i1 %.not3346.i.i.i.i.i.i.i1838, label %._crit_edge.i.i.i.i.i.i.i1842, label %.lr.ph.i.i.i.i.i.i.i1839

._crit_edge.i.i.i.i.i.i.i1842:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i1837
  %.not34.i.i.i.i.i.i.i1843 = icmp eq i32 %i.flo, %i.fls
  br i1 %.not34.i.i.i.i.i.i.i1843, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.bba

.lr.ph.i.i.i.i.i.i.i1839:                         ; preds = %.noexc40.i1837, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.fmo = phi i32 [ %i.fps, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.fmn, %.noexc40.i1837 ] ; 2 uses
  %.047.i.i.i.i.i.i.i1840 = phi i32 [ %i.fmo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.flr, %.noexc40.i1837 ] ; 2 uses
  %i.fmp = sdiv i32 %.047.i.i.i.i.i.i.i1840, 64   ; 3 uses
  %i.fmq = sext i32 %i.fmp to i64
  %i.fmr = getelementptr inbounds [8 x i8], ptr %i.fln, i64 %i.fmq
  %i.fms = load i64, ptr %i.fmr, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.fms, label %.lr.ph.i.i.i.i10.i.i.i.i1871 [
    i64 -1, label %bb.azr
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i1871:                     ; preds = %.lr.ph.i.i.i.i.i.i.i1839
  %i.fmt = shl nsw i32 %i.fmp, 6
  br label %bb.baj

bb.azr:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i1839
  %i.fmu = shl nsw i32 %i.fmp, 6                  ; 2 uses
  %i.fmv = add i32 %i.fmu, 64
  %i.fmw = sext i32 %i.fmv to i64
  %.0.off.i.i.i.i.i.i.i1846 = add i32 %.047.i.i.i.i.i.i.i1840, 127
  %.not57.i.i.i.i.i.i.i.i1847 = icmp ult i32 %.0.off.i.i.i.i.i.i.i1846, 64
  br i1 %.not57.i.i.i.i.i.i.i.i1847, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i1848

.lr.ph56.i.i.i.i.i.i.i.i1848:                     ; preds = %bb.azr
  %i.fmx = sext i32 %i.fmu to i64
  br label %bb.azs

bb.azs:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i1848
  %.055.i.i.i.i.i.i.i.i1849 = phi i64 [ %i.fmx, %.lr.ph56.i.i.i.i.i.i.i.i1848 ], [ %i.fof, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fmy = trunc i64 %.055.i.i.i.i.i.i.i.i1849 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %176)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.azt

bb.azt:                                           ; preds = %bb.azs
  %i.fmz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fna = extractvalue { ptr, i32 } %i.fmz, 0    ; 2 uses
  %i.fnb = extractvalue { ptr, i32 } %i.fmz, 1    ; 2 uses
  %i.fnc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.fnd = icmp eq i32 %i.fnb, %i.fnc
  br i1 %i.fnd, label %bb.azu, label %bb.azv

bb.azu:                                           ; preds = %bb.azt
  %i.fne = call ptr @__cxa_begin_catch(ptr %i.fna) #41
  %i.fnf = getelementptr inbounds nuw i8, ptr %i.fne, i64 8
  %i.fng = load ptr, ptr %i.fnf, align 8, !tbaa !376 ; 2 uses
  %i.fnh = getelementptr inbounds nuw i8, ptr %i.fng, i64 144
  %i.fni = load ptr, ptr %i.fnh, align 8, !tbaa !115 ; 4 uses
  %i.fnj = getelementptr inbounds nuw i8, ptr %i.fng, i64 152
  %i.fnk = load i64, ptr %i.fnj, align 8, !tbaa !98
  %i.fnl = icmp eq i64 %i.fnk, 4
  br i1 %i.fnl, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1858, label %.loopexit.i.i.i.i.i.i.i.i1856

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1858:     ; preds = %bb.azu
  %i.fnm = load i8, ptr %i.fni, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1859 = icmp eq i8 %i.fnm, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i1859, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1860, label %.loopexit.i.i.i.i.i.i.i.i1856

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1860:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1858
  %i.fnn = getelementptr inbounds nuw i8, ptr %i.fni, i64 1
  %i.fno = load i8, ptr %i.fnn, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1861 = icmp eq i8 %i.fno, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i1861, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1862, label %.loopexit.i.i.i.i.i.i.i.i1856

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1862:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1860
  %i.fnp = getelementptr inbounds nuw i8, ptr %i.fni, i64 2
  %i.fnq = load i8, ptr %i.fnp, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1863 = icmp eq i8 %i.fnq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i1863, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1864, label %.loopexit.i.i.i.i.i.i.i.i1856

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1864:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1862
  %i.fnr = getelementptr inbounds nuw i8, ptr %i.fni, i64 3
  %i.fns = load i8, ptr %i.fnr, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1865 = icmp eq i8 %i.fns, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i1865, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1866, label %.loopexit.i.i.i.i.i.i.i.i1856

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i1866:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1864
  call void @llvm.lifetime.start.p0(ptr nonnull %169) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %169) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fmy, ptr noundef nonnull align 8 dereferenceable(8) %169)
          to label %bb.bac unwind label %bb.bae

.loopexit.i.i.i.i.i.i.i.i1856:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i1864, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i1862, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i1860, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i1858, %bb.azu
  invoke void @__cxa_rethrow() #45
          to label %bb.bai unwind label %bb.bab

bb.azv:                                           ; preds = %bb.azt
  %i.fnt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.fnu = icmp eq i32 %i.fnb, %i.fnt
  br i1 %i.fnu, label %bb.azw, label %.body.i1813

bb.azw:                                           ; preds = %bb.azv
  %i.fnv = call ptr @__cxa_begin_catch(ptr %i.fna) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %168) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %168) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fmy, ptr noundef nonnull align 8 dereferenceable(8) %168)
          to label %bb.azx unwind label %bb.azz

bb.azx:                                           ; preds = %bb.azw
  %i.fnw = load ptr, ptr %168, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i1852 = icmp eq ptr %i.fnw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1852, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1853, label %bb.azy

bb.azy:                                           ; preds = %bb.azx
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %168) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1853

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i1853: ; preds = %bb.azy, %bb.azx
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.azz:                                           ; preds = %bb.azw
  %i.fnx = landingpad { ptr, i32 }
          cleanup
  %i.fny = load ptr, ptr %168, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i1850 = icmp eq ptr %i.fny, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i1850, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1851, label %bb.baa

bb.baa:                                           ; preds = %bb.azz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %168) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1851

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i1851: ; preds = %bb.baa, %bb.azz
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #41
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i1803, label %.lr.ph5737, label %.critedge.i.i.i.i.i.i148.i1804, !llvm.loop !20

.lr.ph5737:                                       ; preds = %bb.bce, %bb.bcf
  %indvars.iv.i.i.i.i146.i18025736 = phi i64 [ %indvars.iv.next.i.i.i.i152.i1808, %bb.bcf ], [ 0, %bb.bce ] ; 2 uses
  %i.ftl = lshr exact i64 %indvars.iv.i.i.i.i146.i18025736, 3
  %i.ftm = getelementptr inbounds nuw i8, ptr %i.fti, i64 %i.ftl
  %i.ftn = load i64, ptr %i.ftm, align 8, !tbaa !219
  %i.fto = icmp eq i64 %i.ftn, -1
  br i1 %i.fto, label %bb.bcf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i1804:                   ; preds = %bb.bcf, %bb.bce
  %.not38.i.i.i.i.i.i149.i1805 = icmp eq i32 %i.fte, %i.ftj
  br i1 %.not38.i.i.i.i.i.i149.i1805, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697, label %bb.bcg

bb.bcg:                                           ; preds = %.critedge.i.i.i.i.i.i148.i1804
  %i.ftp = lshr i32 %i.fte, 6
  %i.ftq = and i32 %i.fte, 63
  %i.ftr = zext nneg i32 %i.ftq to i64
  %notmask.i40.i.i.i.i.i.i150.i1806 = shl nsw i64 -1, %i.ftr
  %i.fts = zext nneg i32 %i.ftp to i64
  %i.ftt = getelementptr inbounds nuw [8 x i8], ptr %i.fti, i64 %i.fts
  %i.ftu = load i64, ptr %i.ftt, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i1807 = or i64 %i.ftu, %notmask.i40.i.i.i.i.i.i150.i1806
  %i.ftv = icmp eq i64 %.demorgan.i.i.i.i151.i1807, -1
  %i.ftw = zext i1 %i.ftv to i16
  %i.ftx = or disjoint i16 %i.ftw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697: ; preds = %.lr.ph5737, %bb.bcg, %.critedge.i.i.i.i.i.i148.i1804, %bb.bcd, %bb.bcc, %bb.bcb
  %.sroa.0.0.insert.ext.i.i.i.i59.i1698 = phi i16 [ 256, %bb.bcc ], [ 256, %bb.bcb ], [ 257, %bb.bcd ], [ 257, %.critedge.i.i.i.i.i.i148.i1804 ], [ %i.ftx, %bb.bcg ], [ 256, %.lr.ph5737 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i1698, ptr %i.fsw, align 4
  %i.fty = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i1698 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1699

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1699: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1809
  %.0.in.i.i.i.i61.i1700 = phi i8 [ %.0.in.pre.i.i.i.i154.i1810, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i1809 ], [ %i.fty, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i1697 ]
  %.0.i.i.i.i62.i1701 = trunc nuw i8 %.0.in.i.i.i.i61.i1700 to i1
  br i1 %.0.i.i.i.i62.i1701, label %bb.bch, label %bb.bcy

bb.bch:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1699
  %i.ftz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fua = load i32, ptr %i.ftz, align 8, !tbaa !324 ; 2 uses
  %i.fub = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fuc = load i32, ptr %i.fub, align 4, !tbaa !370 ; 2 uses
  %i.fud = icmp slt i32 %i.fuc, %i.fua
  br i1 %i.fud, label %.lr.ph.i.i.i124.i1779, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i1779:                            ; preds = %bb.bch, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i1780 = phi i32 [ %i.fvk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.fuc, %bb.bch ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %166, i32 noundef %.029.i.i.i.i1780)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.bci

bb.bci:                                           ; preds = %.lr.ph.i.i.i124.i1779
  %i.fue = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fuf = extractvalue { ptr, i32 } %i.fue, 0    ; 2 uses
  %i.fug = extractvalue { ptr, i32 } %i.fue, 1    ; 2 uses
  %i.fuh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.fui = icmp eq i32 %i.fug, %i.fuh
  br i1 %i.fui, label %bb.bcj, label %bb.bck

bb.bcj:                                           ; preds = %bb.bci
  %i.fuj = call ptr @__cxa_begin_catch(ptr %i.fuf) #41
  %i.fuk = getelementptr inbounds nuw i8, ptr %i.fuj, i64 8
  %i.ful = load ptr, ptr %i.fuk, align 8, !tbaa !376 ; 2 uses
  %i.fum = getelementptr inbounds nuw i8, ptr %i.ful, i64 144
  %i.fun = load ptr, ptr %i.fum, align 8, !tbaa !115 ; 4 uses
  %i.fuo = getelementptr inbounds nuw i8, ptr %i.ful, i64 152
  %i.fup = load i64, ptr %i.fuo, align 8, !tbaa !98
  %i.fuq = icmp eq i64 %i.fup, 4
  br i1 %i.fuq, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i1788, label %.loopexit.i.i.i130.i1786

.lr.ph.i.i.i.i.preheader.i.i.i132.i1788:          ; preds = %bb.bcj
  %i.fur = load i8, ptr %i.fun, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i1789 = icmp eq i8 %i.fur, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i1789, label %tailrecurse.i.i.i.i.i.i.i134.i1790, label %.loopexit.i.i.i130.i1786

tailrecurse.i.i.i.i.i.i.i134.i1790:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i1788
  %i.fus = getelementptr inbounds nuw i8, ptr %i.fun, i64 1
  %i.fut = load i8, ptr %i.fus, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i1791 = icmp eq i8 %i.fut, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i1791, label %tailrecurse.i.i.i.i.1.i.i.i136.i1792, label %.loopexit.i.i.i130.i1786

tailrecurse.i.i.i.i.1.i.i.i136.i1792:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i1790
  %i.fuu = getelementptr inbounds nuw i8, ptr %i.fun, i64 2
  %i.fuv = load i8, ptr %i.fuu, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i1793 = icmp eq i8 %i.fuv, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i1793, label %tailrecurse.i.i.i.i.2.i.i.i138.i1794, label %.loopexit.i.i.i130.i1786

tailrecurse.i.i.i.i.2.i.i.i138.i1794:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i1792
  %i.fuw = getelementptr inbounds nuw i8, ptr %i.fun, i64 3
  %i.fux = load i8, ptr %i.fuw, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i1795 = icmp eq i8 %i.fux, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i1795, label %tailrecurse.i.i.i.i.3.i.i.i140.i1796, label %.loopexit.i.i.i130.i1786

tailrecurse.i.i.i.i.3.i.i.i140.i1796:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1794
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %164) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1780, ptr noundef nonnull align 8 dereferenceable(8) %164)
          to label %bb.bcr unwind label %bb.bct

.loopexit.i.i.i130.i1786:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i1794, %tailrecurse.i.i.i.i.1.i.i.i136.i1792, %tailrecurse.i.i.i.i.i.i.i134.i1790, %.lr.ph.i.i.i.i.preheader.i.i.i132.i1788, %bb.bcj
  invoke void @__cxa_rethrow() #45
          to label %bb.bcx unwind label %bb.bcq

bb.bck:                                           ; preds = %bb.bci
  %i.fuy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.fuz = icmp eq i32 %i.fug, %i.fuy
  br i1 %i.fuz, label %bb.bcl, label %common.resume

bb.bcl:                                           ; preds = %bb.bck
  %i.fva = call ptr @__cxa_begin_catch(ptr %i.fuf) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %163) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i1780, ptr noundef nonnull align 8 dereferenceable(8) %163)
          to label %bb.bcm unwind label %bb.bco

bb.bcm:                                           ; preds = %bb.bcl
  %i.fvb = load ptr, ptr %163, align 8, !tbaa !171
  %.not.i.i.i.i127.i1783 = icmp eq ptr %i.fvb, null
  br i1 %.not.i.i.i.i127.i1783, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1784, label %bb.bcn

bb.bcn:                                           ; preds = %bb.bcm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %163) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1784

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1784: ; preds = %bb.bcn, %bb.bcm
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bco:                                           ; preds = %bb.bcl
  %i.fvc = landingpad { ptr, i32 }
          cleanup
  %i.fvd = load ptr, ptr %163, align 8, !tbaa !171
  %.not.i4.i.i.i125.i1781 = icmp eq ptr %i.fvd, null
  br i1 %.not.i4.i.i.i125.i1781, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782, label %bb.bcp

bb.bcp:                                           ; preds = %bb.bco
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %163) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782: ; preds = %bb.bcp, %bb.bco
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bcw

bb.bcq:                                           ; preds = %.loopexit.i.i.i130.i1786
  %i.fve = landingpad { ptr, i32 }
          cleanup
  br label %bb.bcv

bb.bcr:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1796
  %i.fvf = load ptr, ptr %164, align 8, !tbaa !171
  %.not.i6.i.i.i143.i1799 = icmp eq ptr %i.fvf, null
  br i1 %.not.i6.i.i.i143.i1799, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1800, label %bb.bcs

bb.bcs:                                           ; preds = %bb.bcr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %164) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1800

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1800: ; preds = %bb.bcs, %bb.bcr
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bct:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i1796
  %i.fvg = landingpad { ptr, i32 }
          cleanup
  %i.fvh = load ptr, ptr %164, align 8, !tbaa !171
  %.not.i8.i.i.i141.i1797 = icmp eq ptr %i.fvh, null
  br i1 %.not.i8.i.i.i141.i1797, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1798, label %bb.bcu

bb.bcu:                                           ; preds = %bb.bct
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %164) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1798

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1798: ; preds = %bb.bcu, %bb.bct
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #41
  br label %bb.bcv

bb.bcv:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1798, %bb.bcq
  %.pn.i.i.i.i131.i1787 = phi { ptr, i32 } [ %i.fvg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i1798 ], [ %i.fve, %bb.bcq ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bcw

bb.bcw:                                           ; preds = %bb.bcv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i1782
  %i.fvi = landingpad { ptr, i32 }
          catch ptr null
  %i.fvj = extractvalue { ptr, i32 } %i.fvi, 0
  call void @__clang_call_terminate(ptr %i.fvj) #44
  unreachable

bb.bcx:                                           ; preds = %.loopexit.i.i.i130.i1786
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i1800, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i1784
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i1779
  %i.fvk = add i32 %.029.i.i.i.i1780, 1           ; 2 uses
  %exitcond.not.i.i.i129.i1785 = icmp eq i32 %i.fvk, %i.fua
  br i1 %exitcond.not.i.i.i129.i1785, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i1779, !llvm.loop !1169

bb.bcy:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i1699
  %i.fvl = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.fvm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fvn = load i32, ptr %i.fvm, align 4, !tbaa !370 ; 6 uses
  %i.fvo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fvp = load i32, ptr %i.fvo, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i1702 = getelementptr inbounds nuw i8, ptr %162, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %162)
  store ptr %166, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i1702, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i1703 = getelementptr inbounds nuw i8, ptr %162, i64 24
  store ptr %165, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i1703, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i1704 = getelementptr inbounds nuw i8, ptr %162, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i1704, align 8
  store i8 1, ptr %162, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i1705 = getelementptr inbounds nuw i8, ptr %162, i64 8
  store ptr %i.fvl, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i1705, align 8
  %.not.i.i.i.i.i.i67.i1706 = icmp slt i32 %i.fvn, %i.fvp
  br i1 %.not.i.i.i.i.i.i67.i1706, label %bb.bcz, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bcz:                                           ; preds = %bb.bcy
  %i.fvq = add i32 %i.fvn, 63                     ; 2 uses
  %i.fvr = srem i32 %i.fvq, 64
  %i.fvs = sub nsw i32 %i.fvq, %i.fvr             ; 6 uses
  %i.fvt = and i32 %i.fvp, -64                    ; 4 uses
  %i.fvu = icmp slt i32 %i.fvt, %i.fvs
  br i1 %i.fvu, label %bb.bda, label %bb.bdb

bb.bda:                                           ; preds = %bb.bcz
  %i.fvv = ashr i32 %i.fvp, 6
  %i.fvw = and i32 %i.fvp, 63
  %i.fvx = zext nneg i32 %i.fvw to i64
  %notmask.i.i.i.i.i.i.i122.i1777 = shl nsw i64 -1, %i.fvx
  %i.fvy = xor i64 %notmask.i.i.i.i.i.i.i122.i1777, -1
  %i.fvz = sub nsw i32 %i.fvs, %i.fvn             ; 2 uses
  %i.fwa = zext nneg i32 %i.fvz to i64
  %notmask.i.i.i.i.i.i.i.i123.i1778 = shl nsw i64 -1, %i.fwa
  %i.fwb = xor i64 %notmask.i.i.i.i.i.i.i.i123.i1778, -1
  %i.fwc = sub nsw i32 64, %i.fvz
  %i.fwd = zext nneg i32 %i.fwc to i64
  %i.fwe = shl i64 %i.fwb, %i.fwd
  %i.fwf = and i64 %i.fwe, %i.fvy
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %162, i32 noundef %i.fvv, i64 noundef %i.fwf)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bdb:                                           ; preds = %bb.bcz
  %.not32.i.i.i.i.i.i68.i1707 = icmp eq i32 %i.fvn, %i.fvs
  br i1 %.not32.i.i.i.i.i.i68.i1707, label %bb.bdd, label %bb.bdc

bb.bdc:                                           ; preds = %bb.bdb
  %i.fwg = sdiv i32 %i.fvn, 64
  %i.fwh = sub nsw i32 %i.fvs, %i.fvn             ; 2 uses
  %i.fwi = zext nneg i32 %i.fwh to i64
  %notmask.i.i35.i.i.i.i.i.i69.i1708 = shl nsw i64 -1, %i.fwi
  %i.fwj = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i1708, -1
  %i.fwk = sub nsw i32 64, %i.fwh
  %i.fwl = zext nneg i32 %i.fwk to i64
  %i.fwm = shl i64 %i.fwj, %i.fwl
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %162, i32 noundef %i.fwg, i64 noundef %i.fwm)
  br label %bb.bdd

bb.bdd:                                           ; preds = %bb.bdc, %bb.bdb
  %i.fwn = add nsw i32 %i.fvs, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i1709 = icmp sgt i32 %i.fwn, %i.fvt
  br i1 %.not3351.i.i.i.i.i.i.i1709, label %._crit_edge.i.i.i.i.i.i72.i1713, label %.lr.ph.i.i.i.i.i.i70.i1710

._crit_edge.i.i.i.i.i.i72.i1713:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.bdd
  %.not34.i.i.i.i.i.i73.i1714 = icmp eq i32 %i.fvp, %i.fvt
  br i1 %.not34.i.i.i.i.i.i73.i1714, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.bes

.lr.ph.i.i.i.i.i.i70.i1710:                       ; preds = %bb.bdd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.fwo = phi i32 [ %i.gdc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.fwn, %bb.bdd ] ; 2 uses
  %.052.i.i.i.i.i.i.i1711 = phi i32 [ %i.fwo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.fvs, %bb.bdd ] ; 2 uses
  %i.fwp = sdiv i32 %.052.i.i.i.i.i.i.i1711, 64   ; 3 uses
  %i.fwq = sext i32 %i.fwp to i64
  %i.fwr = getelementptr inbounds [8 x i8], ptr %i.fvl, i64 %i.fwq
  %i.fws = load i64, ptr %i.fwr, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.fws, label %.lr.ph.i.i.i.i10.i.i.i100.i1739 [
    i64 -1, label %bb.bde
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i1739:                  ; preds = %.lr.ph.i.i.i.i.i.i70.i1710
  %i.fwt = shl nsw i32 %i.fwp, 6
  br label %bb.bdw

bb.bde:                                           ; preds = %.lr.ph.i.i.i.i.i.i70.i1710
  %i.fwu = shl nsw i32 %i.fwp, 6                  ; 2 uses
  %i.fwv = add i32 %i.fwu, 64
  %i.fww = sext i32 %i.fwv to i64
  %.0.off.i.i.i.i.i.i75.i1716 = add i32 %.052.i.i.i.i.i.i.i1711, 127
  %.not57.i.i.i.i.i.i.i76.i1717 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i1716, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i1717, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlfE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i1718

.lr.ph56.i.i.i.i.i.i.i77.i1718:                   ; preds = %bb.bde
  %i.fwx = sext i32 %i.fwu to i64
  br label %bb.bdf

bb.bdf:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i1718
  %.055.i.i.i.i.i.i.i78.i1719 = phi i64 [ %i.fwx, %.lr.ph56.i.i.i.i.i.i.i77.i1718 ], [ %i.fyf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fwy = trunc i64 %.055.i.i.i.i.i.i.i78.i1719 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlfE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %166, i32 noundef %i.fwy)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.bdg

bb.bdg:                                           ; preds = %bb.bdf
  %i.fwz = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.fxa = extractvalue { ptr, i32 } %i.fwz, 0    ; 2 uses
  %i.fxb = extractvalue { ptr, i32 } %i.fwz, 1    ; 2 uses
  %i.fxc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.fxd = icmp eq i32 %i.fxb, %i.fxc
  br i1 %i.fxd, label %bb.bdh, label %bb.bdi

bb.bdh:                                           ; preds = %bb.bdg
  %i.fxe = call ptr @__cxa_begin_catch(ptr %i.fxa) #41
  %i.fxf = getelementptr inbounds nuw i8, ptr %i.fxe, i64 8
  %i.fxg = load ptr, ptr %i.fxf, align 8, !tbaa !376 ; 2 uses
  %i.fxh = getelementptr inbounds nuw i8, ptr %i.fxg, i64 144
  %i.fxi = load ptr, ptr %i.fxh, align 8, !tbaa !115 ; 4 uses
  %i.fxj = getelementptr inbounds nuw i8, ptr %i.fxg, i64 152
  %i.fxk = load i64, ptr %i.fxj, align 8, !tbaa !98
  %i.fxl = icmp eq i64 %i.fxk, 4
  br i1 %i.fxl, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1726, label %.loopexit.i.i.i.i.i.i.i85.i1724

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1726:   ; preds = %bb.bdh
  %i.fxm = load i8, ptr %i.fxi, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1727 = icmp eq i8 %i.fxm, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i1727, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1728, label %.loopexit.i.i.i.i.i.i.i85.i1724

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1728:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1726
  %i.fxn = getelementptr inbounds nuw i8, ptr %i.fxi, i64 1
  %i.fxo = load i8, ptr %i.fxn, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1729 = icmp eq i8 %i.fxo, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i1729, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1730, label %.loopexit.i.i.i.i.i.i.i85.i1724

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1730:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1728
  %i.fxp = getelementptr inbounds nuw i8, ptr %i.fxi, i64 2
  %i.fxq = load i8, ptr %i.fxp, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1731 = icmp eq i8 %i.fxq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i1731, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1732, label %.loopexit.i.i.i.i.i.i.i85.i1724

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1732:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1730
  %i.fxr = getelementptr inbounds nuw i8, ptr %i.fxi, i64 3
  %i.fxs = load i8, ptr %i.fxr, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1733 = icmp eq i8 %i.fxs, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i1733, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1734, label %.loopexit.i.i.i.i.i.i.i85.i1724

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i1734:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1732
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %159) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fwy, ptr noundef nonnull align 8 dereferenceable(8) %159)
          to label %bb.bdp unwind label %bb.bdr

.loopexit.i.i.i.i.i.i.i85.i1724:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i1732, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i1730, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i1728, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i1726, %bb.bdh
  invoke void @__cxa_rethrow() #45
          to label %bb.bdv unwind label %bb.bdo

bb.bdi:                                           ; preds = %bb.bdg
  %i.fxt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.fxu = icmp eq i32 %i.fxb, %i.fxt
  br i1 %i.fxu, label %bb.bdj, label %common.resume

bb.bdj:                                           ; preds = %bb.bdi
  %i.fxv = call ptr @__cxa_begin_catch(ptr %i.fxa) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %158) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.fwy, ptr noundef nonnull align 8 dereferenceable(8) %158)
          to label %bb.bdk unwind label %bb.bdm

bb.bdk:                                           ; preds = %bb.bdj
  %i.fxw = load ptr, ptr %158, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i1722 = icmp eq ptr %i.fxw, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i1722, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1723, label %bb.bdl

bb.bdl:                                           ; preds = %bb.bdk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %158) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1723

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i1723: ; preds = %bb.bdl, %bb.bdk
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIfZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlfE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bdm:                                           ; preds = %bb.bdj
  %i.fxx = landingpad { ptr, i32 }
          cleanup
  %i.fxy = load ptr, ptr %158, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i1720 = icmp eq ptr %i.fxy, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i1720, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1721, label %bb.bdn

bb.bdn:                                           ; preds = %bb.bdm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %158) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1721

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i1721: ; preds = %bb.bdn, %bb.bdm
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bdu
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i2306 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i2311, %i.gqp
  br i1 %.not37.i.i.not.i.i.i.i.i2306, label %.lr.ph5731, label %.critedge.i.i.i.i.i.i.i2307, !llvm.loop !20

.lr.ph5731:                                       ; preds = %bb.bit, %bb.biu
  %indvars.iv.i.i.i.i.i23055730 = phi i64 [ %indvars.iv.next.i.i.i.i.i2311, %bb.biu ], [ 0, %bb.bit ] ; 2 uses
  %i.gqq = lshr exact i64 %indvars.iv.i.i.i.i.i23055730, 3
  %i.gqr = getelementptr inbounds nuw i8, ptr %i.gqn, i64 %i.gqq
  %i.gqs = load i64, ptr %i.gqr, align 8, !tbaa !219
  %i.gqt = icmp eq i64 %i.gqs, -1
  br i1 %i.gqt, label %bb.biu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203, !llvm.loop !20

.critedge.i.i.i.i.i.i.i2307:                      ; preds = %bb.biu, %bb.bit
  %.not38.i.i.i.i.i.i.i2308 = icmp eq i32 %i.gqk, %i.gqo
  br i1 %.not38.i.i.i.i.i.i.i2308, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203, label %bb.biv

bb.biv:                                           ; preds = %.critedge.i.i.i.i.i.i.i2307
  %i.gqu = lshr i32 %i.gqk, 6
  %i.gqv = and i32 %i.gqk, 63
  %i.gqw = zext nneg i32 %i.gqv to i64
  %notmask.i40.i.i.i.i.i.i.i2309 = shl nsw i64 -1, %i.gqw
  %i.gqx = zext nneg i32 %i.gqu to i64
  %i.gqy = getelementptr inbounds nuw [8 x i8], ptr %i.gqn, i64 %i.gqx
  %i.gqz = load i64, ptr %i.gqy, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i2310 = or i64 %i.gqz, %notmask.i40.i.i.i.i.i.i.i2309
  %i.gra = icmp eq i64 %.demorgan.i.i.i.i.i2310, -1
  %i.grb = zext i1 %i.gra to i16
  %i.grc = or disjoint i16 %i.grb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203: ; preds = %.lr.ph5731, %bb.biv, %.critedge.i.i.i.i.i.i.i2307, %bb.bis, %bb.bir, %bb.biq
  %.sroa.0.0.insert.ext.i.i.i.i.i2204 = phi i16 [ 256, %bb.bir ], [ 256, %bb.biq ], [ 257, %bb.bis ], [ 257, %.critedge.i.i.i.i.i.i.i2307 ], [ %i.grc, %bb.biv ], [ 256, %.lr.ph5731 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i2204, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.grd = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i2204 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2205

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2205: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2312
  %i.gre = phi i32 [ %.pre.i.i.i2314, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2312 ], [ %i.gqi, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203 ] ; 8 uses
  %.0.in.i.i.i.i.i2206 = phi i8 [ %.0.in.pre.i.i.i.i.i2313, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2312 ], [ %i.grd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2203 ]
  %.0.i.i.i.i36.i2207 = trunc nuw i8 %.0.in.i.i.i.i.i2206 to i1
  br i1 %.0.i.i.i.i36.i2207, label %bb.biw, label %bb.bjn

bb.biw:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2205
  %i.grf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.grg = icmp slt i32 %i.gre, %i.grf
  br i1 %i.grg, label %.lr.ph.i.i.i.i2280, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i2280:                               ; preds = %bb.biw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i2281 = phi i32 [ %i.gsn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.gre, %bb.biw ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %143)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.bix

bb.bix:                                           ; preds = %.lr.ph.i.i.i.i2280
  %i.grh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.gri = extractvalue { ptr, i32 } %i.grh, 0    ; 2 uses
  %i.grj = extractvalue { ptr, i32 } %i.grh, 1    ; 2 uses
  %i.grk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.grl = icmp eq i32 %i.grj, %i.grk
  br i1 %i.grl, label %bb.biy, label %bb.biz

bb.biy:                                           ; preds = %bb.bix
  %i.grm = call ptr @__cxa_begin_catch(ptr %i.gri) #41
  %i.grn = getelementptr inbounds nuw i8, ptr %i.grm, i64 8
  %i.gro = load ptr, ptr %i.grn, align 8, !tbaa !376 ; 2 uses
  %i.grp = getelementptr inbounds nuw i8, ptr %i.gro, i64 144
  %i.grq = load ptr, ptr %i.grp, align 8, !tbaa !115 ; 4 uses
  %i.grr = getelementptr inbounds nuw i8, ptr %i.gro, i64 152
  %i.grs = load i64, ptr %i.grr, align 8, !tbaa !98
  %i.grt = icmp eq i64 %i.grs, 4
  br i1 %i.grt, label %.lr.ph.i.i.i.i.preheader.i.i.i.i2291, label %.loopexit.i.i.i.i2289

.lr.ph.i.i.i.i.preheader.i.i.i.i2291:             ; preds = %bb.biy
  %i.gru = load i8, ptr %i.grq, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i2292 = icmp eq i8 %i.gru, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i2292, label %tailrecurse.i.i.i.i.i.i.i.i2293, label %.loopexit.i.i.i.i2289

tailrecurse.i.i.i.i.i.i.i.i2293:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i2291
  %i.grv = getelementptr inbounds nuw i8, ptr %i.grq, i64 1
  %i.grw = load i8, ptr %i.grv, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i2294 = icmp eq i8 %i.grw, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i2294, label %tailrecurse.i.i.i.i.1.i.i.i.i2295, label %.loopexit.i.i.i.i2289

tailrecurse.i.i.i.i.1.i.i.i.i2295:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i2293
  %i.grx = getelementptr inbounds nuw i8, ptr %i.grq, i64 2
  %i.gry = load i8, ptr %i.grx, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i2296 = icmp eq i8 %i.gry, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i2296, label %tailrecurse.i.i.i.i.2.i.i.i.i2297, label %.loopexit.i.i.i.i2289

tailrecurse.i.i.i.i.2.i.i.i.i2297:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i2295
  %i.grz = getelementptr inbounds nuw i8, ptr %i.grq, i64 3
  %i.gsa = load i8, ptr %i.grz, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i2298 = icmp eq i8 %i.gsa, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i2298, label %tailrecurse.i.i.i.i.3.i.i.i.i2299, label %.loopexit.i.i.i.i2289

tailrecurse.i.i.i.i.3.i.i.i.i2299:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2297
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %141) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2281, ptr noundef nonnull align 8 dereferenceable(8) %141)
          to label %bb.bjg unwind label %bb.bji

.loopexit.i.i.i.i2289:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2297, %tailrecurse.i.i.i.i.1.i.i.i.i2295, %tailrecurse.i.i.i.i.i.i.i.i2293, %.lr.ph.i.i.i.i.preheader.i.i.i.i2291, %bb.biy
  invoke void @__cxa_rethrow() #45
          to label %bb.bjm unwind label %bb.bjf

bb.biz:                                           ; preds = %bb.bix
  %i.gsb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.gsc = icmp eq i32 %i.grj, %i.gsb
  br i1 %i.gsc, label %bb.bja, label %.body.i2196

bb.bja:                                           ; preds = %bb.biz
  %i.gsd = call ptr @__cxa_begin_catch(ptr %i.gri) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %140) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2281, ptr noundef nonnull align 8 dereferenceable(8) %140)
          to label %bb.bjb unwind label %bb.bjd

bb.bjb:                                           ; preds = %bb.bja
  %i.gse = load ptr, ptr %140, align 8, !tbaa !171
  %.not.i.i.i.i37.i2284 = icmp eq ptr %i.gse, null
  br i1 %.not.i.i.i.i37.i2284, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2285, label %bb.bjc

bb.bjc:                                           ; preds = %bb.bjb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %140) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2285

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2285: ; preds = %bb.bjc, %bb.bjb
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bjd:                                           ; preds = %bb.bja
  %i.gsf = landingpad { ptr, i32 }
          cleanup
  %i.gsg = load ptr, ptr %140, align 8, !tbaa !171
  %.not.i4.i.i.i.i2282 = icmp eq ptr %i.gsg, null
  br i1 %.not.i4.i.i.i.i2282, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2283, label %bb.bje

bb.bje:                                           ; preds = %bb.bjd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %140) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2283

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2283: ; preds = %bb.bje, %bb.bjd
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #41
  invoke void @__cxa_end_catch()
          to label %.body.i2196 unwind label %bb.bjl

bb.bjf:                                           ; preds = %.loopexit.i.i.i.i2289
  %i.gsh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bjk

bb.bjg:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2299
  %i.gsi = load ptr, ptr %141, align 8, !tbaa !171
  %.not.i6.i.i.i.i2302 = icmp eq ptr %i.gsi, null
  br i1 %.not.i6.i.i.i.i2302, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2303, label %bb.bjh

bb.bjh:                                           ; preds = %bb.bjg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %141) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2303

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2303: ; preds = %bb.bjh, %bb.bjg
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bji:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2299
  %i.gsj = landingpad { ptr, i32 }
          cleanup
  %i.gsk = load ptr, ptr %141, align 8, !tbaa !171
  %.not.i8.i.i.i.i2300 = icmp eq ptr %i.gsk, null
  br i1 %.not.i8.i.i.i.i2300, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2301, label %bb.bjj

bb.bjj:                                           ; preds = %bb.bji
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %141) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2301

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2301: ; preds = %bb.bjj, %bb.bji
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #41
  br label %bb.bjk

bb.bjk:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2301, %bb.bjf
  %.pn.i.i.i.i.i2290 = phi { ptr, i32 } [ %i.gsj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2301 ], [ %i.gsh, %bb.bjf ]
  invoke void @__cxa_end_catch()
          to label %.body.i2196 unwind label %bb.bjl

bb.bjl:                                           ; preds = %bb.bjk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2283
  %i.gsl = landingpad { ptr, i32 }
          catch ptr null
  %i.gsm = extractvalue { ptr, i32 } %i.gsl, 0
  call void @__clang_call_terminate(ptr %i.gsm) #44
  unreachable

bb.bjm:                                           ; preds = %.loopexit.i.i.i.i2289
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2303, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2285
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i2286

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2280, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.gsn = add i32 %.019.i.i.i.i2281, 1           ; 2 uses
  %exitcond.not.i.i.i.i2288 = icmp eq i32 %i.gsn, %i.grf
  br i1 %exitcond.not.i.i.i.i2288, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i2280, !llvm.loop !1179

bb.bjn:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2205
  %i.gso = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.gsp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i2208 = getelementptr inbounds nuw i8, ptr %139, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %139)
  store ptr %143, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i2208, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2209 = getelementptr inbounds nuw i8, ptr %139, i64 24
  store ptr %142, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2209, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2210 = getelementptr inbounds nuw i8, ptr %139, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2210, align 8
  store i8 1, ptr %139, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i2211 = getelementptr inbounds nuw i8, ptr %139, i64 8
  store ptr %i.gso, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i2211, align 8
  %.not.i.i.i.i.i.i.i2212 = icmp slt i32 %i.gre, %i.gsp
  br i1 %.not.i.i.i.i.i.i.i2212, label %bb.bjo, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bjo:                                           ; preds = %bb.bjn
  %i.gsq = add i32 %i.gre, 63                     ; 2 uses
  %i.gsr = srem i32 %i.gsq, 64
  %i.gss = sub nsw i32 %i.gsq, %i.gsr             ; 6 uses
  %i.gst = and i32 %i.gsp, -64                    ; 4 uses
  %i.gsu = icmp slt i32 %i.gst, %i.gss
  br i1 %i.gsu, label %bb.bjp, label %bb.bjq

bb.bjp:                                           ; preds = %bb.bjo
  %i.gsv = and i32 %i.gsp, 63
  %i.gsw = zext nneg i32 %i.gsv to i64
  %notmask.i.i.i.i.i.i.i.i2278 = shl nsw i64 -1, %i.gsw
  %i.gsx = xor i64 %notmask.i.i.i.i.i.i.i.i2278, -1
  %i.gsy = sub nsw i32 %i.gss, %i.gre             ; 2 uses
  %i.gsz = zext nneg i32 %i.gsy to i64
  %notmask.i.i.i.i.i.i.i.i.i2279 = shl nsw i64 -1, %i.gsz
  %i.gta = xor i64 %notmask.i.i.i.i.i.i.i.i.i2279, -1
  %i.gtb = sub nsw i32 64, %i.gsy
  %i.gtc = zext nneg i32 %i.gtb to i64
  %i.gtd = shl i64 %i.gta, %i.gtc
  %i.gte = and i64 %i.gtd, %i.gsx
  br label %.invoke.i2228

.invoke.i2228:                                    ; preds = %bb.blb, %bb.bjp
  %i.gtf = phi i64 [ %i.gte, %bb.bjp ], [ %i.gww, %bb.blb ]
  %i.gtg = ashr i32 %i.gsp, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %139, i32 noundef %i.gtg, i64 noundef %i.gtf)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2194

bb.bjq:                                           ; preds = %bb.bjo
  %.not32.i.i.i.i.i.i.i2218 = icmp eq i32 %i.gre, %i.gss
  br i1 %.not32.i.i.i.i.i.i.i2218, label %.noexc40.i2220, label %bb.bjr

bb.bjr:                                           ; preds = %bb.bjq
  %i.gth = sdiv i32 %i.gre, 64
  %i.gti = sub nsw i32 %i.gss, %i.gre             ; 2 uses
  %i.gtj = zext nneg i32 %i.gti to i64
  %notmask.i.i35.i.i.i.i.i.i.i2219 = shl nsw i64 -1, %i.gtj
  %i.gtk = xor i64 %notmask.i.i35.i.i.i.i.i.i.i2219, -1
  %i.gtl = sub nsw i32 64, %i.gti
  %i.gtm = zext nneg i32 %i.gtl to i64
  %i.gtn = shl i64 %i.gtk, %i.gtm
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %139, i32 noundef %i.gth, i64 noundef %i.gtn)
          to label %.noexc40.i2220 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2194

.noexc40.i2220:                                   ; preds = %bb.bjr, %bb.bjq
  %i.gto = add nsw i32 %i.gss, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i2221 = icmp sgt i32 %i.gto, %i.gst
  br i1 %.not3346.i.i.i.i.i.i.i2221, label %._crit_edge.i.i.i.i.i.i.i2225, label %.lr.ph.i.i.i.i.i.i.i2222

._crit_edge.i.i.i.i.i.i.i2225:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i2220
  %.not34.i.i.i.i.i.i.i2226 = icmp eq i32 %i.gsp, %i.gst
  br i1 %.not34.i.i.i.i.i.i.i2226, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.blb

.lr.ph.i.i.i.i.i.i.i2222:                         ; preds = %.noexc40.i2220, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.gtp = phi i32 [ %i.gwt, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.gto, %.noexc40.i2220 ] ; 2 uses
  %.047.i.i.i.i.i.i.i2223 = phi i32 [ %i.gtp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.gss, %.noexc40.i2220 ] ; 2 uses
  %i.gtq = sdiv i32 %.047.i.i.i.i.i.i.i2223, 64   ; 3 uses
  %i.gtr = sext i32 %i.gtq to i64
  %i.gts = getelementptr inbounds [8 x i8], ptr %i.gso, i64 %i.gtr
  %i.gtt = load i64, ptr %i.gts, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.gtt, label %.lr.ph.i.i.i.i10.i.i.i.i2254 [
    i64 -1, label %bb.bjs
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i2254:                     ; preds = %.lr.ph.i.i.i.i.i.i.i2222
  %i.gtu = shl nsw i32 %i.gtq, 6
  br label %bb.bkk

bb.bjs:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i2222
  %i.gtv = shl nsw i32 %i.gtq, 6                  ; 2 uses
  %i.gtw = add i32 %i.gtv, 64
  %i.gtx = sext i32 %i.gtw to i64
  %.0.off.i.i.i.i.i.i.i2229 = add i32 %.047.i.i.i.i.i.i.i2223, 127
  %.not57.i.i.i.i.i.i.i.i2230 = icmp ult i32 %.0.off.i.i.i.i.i.i.i2229, 64
  br i1 %.not57.i.i.i.i.i.i.i.i2230, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i2231

.lr.ph56.i.i.i.i.i.i.i.i2231:                     ; preds = %bb.bjs
  %i.gty = sext i32 %i.gtv to i64
  br label %bb.bjt

bb.bjt:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i2231
  %.055.i.i.i.i.i.i.i.i2232 = phi i64 [ %i.gty, %.lr.ph56.i.i.i.i.i.i.i.i2231 ], [ %i.gvg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gtz = trunc i64 %.055.i.i.i.i.i.i.i.i2232 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %143)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.bju

bb.bju:                                           ; preds = %bb.bjt
  %i.gua = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.gub = extractvalue { ptr, i32 } %i.gua, 0    ; 2 uses
  %i.guc = extractvalue { ptr, i32 } %i.gua, 1    ; 2 uses
  %i.gud = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.gue = icmp eq i32 %i.guc, %i.gud
  br i1 %i.gue, label %bb.bjv, label %bb.bjw

bb.bjv:                                           ; preds = %bb.bju
  %i.guf = call ptr @__cxa_begin_catch(ptr %i.gub) #41
  %i.gug = getelementptr inbounds nuw i8, ptr %i.guf, i64 8
  %i.guh = load ptr, ptr %i.gug, align 8, !tbaa !376 ; 2 uses
  %i.gui = getelementptr inbounds nuw i8, ptr %i.guh, i64 144
  %i.guj = load ptr, ptr %i.gui, align 8, !tbaa !115 ; 4 uses
  %i.guk = getelementptr inbounds nuw i8, ptr %i.guh, i64 152
  %i.gul = load i64, ptr %i.guk, align 8, !tbaa !98
  %i.gum = icmp eq i64 %i.gul, 4
  br i1 %i.gum, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2241, label %.loopexit.i.i.i.i.i.i.i.i2239

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2241:     ; preds = %bb.bjv
  %i.gun = load i8, ptr %i.guj, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2242 = icmp eq i8 %i.gun, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2242, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2243, label %.loopexit.i.i.i.i.i.i.i.i2239

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2243:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2241
  %i.guo = getelementptr inbounds nuw i8, ptr %i.guj, i64 1
  %i.gup = load i8, ptr %i.guo, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2244 = icmp eq i8 %i.gup, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2244, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2245, label %.loopexit.i.i.i.i.i.i.i.i2239

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2245:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2243
  %i.guq = getelementptr inbounds nuw i8, ptr %i.guj, i64 2
  %i.gur = load i8, ptr %i.guq, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2246 = icmp eq i8 %i.gur, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2246, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2247, label %.loopexit.i.i.i.i.i.i.i.i2239

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2247:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2245
  %i.gus = getelementptr inbounds nuw i8, ptr %i.guj, i64 3
  %i.gut = load i8, ptr %i.gus, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2248 = icmp eq i8 %i.gut, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2248, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2249, label %.loopexit.i.i.i.i.i.i.i.i2239

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2249:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2247
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %136) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.gtz, ptr noundef nonnull align 8 dereferenceable(8) %136)
          to label %bb.bkd unwind label %bb.bkf

.loopexit.i.i.i.i.i.i.i.i2239:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2247, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2245, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2243, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2241, %bb.bjv
  invoke void @__cxa_rethrow() #45
          to label %bb.bkj unwind label %bb.bkc

bb.bjw:                                           ; preds = %bb.bju
  %i.guu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.guv = icmp eq i32 %i.guc, %i.guu
  br i1 %i.guv, label %bb.bjx, label %.body.i2196

bb.bjx:                                           ; preds = %bb.bjw
  %i.guw = call ptr @__cxa_begin_catch(ptr %i.gub) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %135) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.gtz, ptr noundef nonnull align 8 dereferenceable(8) %135)
          to label %bb.bjy unwind label %bb.bka

bb.bjy:                                           ; preds = %bb.bjx
  %i.gux = load ptr, ptr %135, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i2235 = icmp eq ptr %i.gux, null
  br i1 %.not.i.i.i.i.i.i.i.i.i2235, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2236, label %bb.bjz

bb.bjz:                                           ; preds = %bb.bjy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %135) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2236

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2236: ; preds = %bb.bjz, %bb.bjy
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bka:                                           ; preds = %bb.bjx
  %i.guy = landingpad { ptr, i32 }
          cleanup
  %i.guz = load ptr, ptr %135, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i2233 = icmp eq ptr %i.guz, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i2233, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2234, label %bb.bkb

bb.bkb:                                           ; preds = %bb.bka
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %135) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2234

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2234: ; preds = %bb.bkb, %bb.bka
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #41
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i2186, label %.lr.ph5728, label %.critedge.i.i.i.i.i.i148.i2187, !llvm.loop !20

.lr.ph5728:                                       ; preds = %bb.bmf, %bb.bmg
  %indvars.iv.i.i.i.i146.i21855727 = phi i64 [ %indvars.iv.next.i.i.i.i152.i2191, %bb.bmg ], [ 0, %bb.bmf ] ; 2 uses
  %i.ham = lshr exact i64 %indvars.iv.i.i.i.i146.i21855727, 3
  %i.han = getelementptr inbounds nuw i8, ptr %i.haj, i64 %i.ham
  %i.hao = load i64, ptr %i.han, align 8, !tbaa !219
  %i.hap = icmp eq i64 %i.hao, -1
  br i1 %i.hap, label %bb.bmg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i2187:                   ; preds = %bb.bmg, %bb.bmf
  %.not38.i.i.i.i.i.i149.i2188 = icmp eq i32 %i.haf, %i.hak
  br i1 %.not38.i.i.i.i.i.i149.i2188, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080, label %bb.bmh

bb.bmh:                                           ; preds = %.critedge.i.i.i.i.i.i148.i2187
  %i.haq = lshr i32 %i.haf, 6
  %i.har = and i32 %i.haf, 63
  %i.has = zext nneg i32 %i.har to i64
  %notmask.i40.i.i.i.i.i.i150.i2189 = shl nsw i64 -1, %i.has
  %i.hat = zext nneg i32 %i.haq to i64
  %i.hau = getelementptr inbounds nuw [8 x i8], ptr %i.haj, i64 %i.hat
  %i.hav = load i64, ptr %i.hau, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i2190 = or i64 %i.hav, %notmask.i40.i.i.i.i.i.i150.i2189
  %i.haw = icmp eq i64 %.demorgan.i.i.i.i151.i2190, -1
  %i.hax = zext i1 %i.haw to i16
  %i.hay = or disjoint i16 %i.hax, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080: ; preds = %.lr.ph5728, %bb.bmh, %.critedge.i.i.i.i.i.i148.i2187, %bb.bme, %bb.bmd, %bb.bmc
  %.sroa.0.0.insert.ext.i.i.i.i59.i2081 = phi i16 [ 256, %bb.bmd ], [ 256, %bb.bmc ], [ 257, %bb.bme ], [ 257, %.critedge.i.i.i.i.i.i148.i2187 ], [ %i.hay, %bb.bmh ], [ 256, %.lr.ph5728 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2081, ptr %i.gzx, align 4
  %i.haz = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2081 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2082

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2082: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i2192
  %.0.in.i.i.i.i61.i2083 = phi i8 [ %.0.in.pre.i.i.i.i154.i2193, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i2192 ], [ %i.haz, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2080 ]
  %.0.i.i.i.i62.i2084 = trunc nuw i8 %.0.in.i.i.i.i61.i2083 to i1
  br i1 %.0.i.i.i.i62.i2084, label %bb.bmi, label %bb.bmz

bb.bmi:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2082
  %i.hba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hbb = load i32, ptr %i.hba, align 8, !tbaa !324 ; 2 uses
  %i.hbc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hbd = load i32, ptr %i.hbc, align 4, !tbaa !370 ; 2 uses
  %i.hbe = icmp slt i32 %i.hbd, %i.hbb
  br i1 %i.hbe, label %.lr.ph.i.i.i124.i2162, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i2162:                            ; preds = %bb.bmi, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i2163 = phi i32 [ %i.hcl, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.hbd, %bb.bmi ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %133, i32 noundef %.029.i.i.i.i2163)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.bmj

bb.bmj:                                           ; preds = %.lr.ph.i.i.i124.i2162
  %i.hbf = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.hbg = extractvalue { ptr, i32 } %i.hbf, 0    ; 2 uses
  %i.hbh = extractvalue { ptr, i32 } %i.hbf, 1    ; 2 uses
  %i.hbi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.hbj = icmp eq i32 %i.hbh, %i.hbi
  br i1 %i.hbj, label %bb.bmk, label %bb.bml

bb.bmk:                                           ; preds = %bb.bmj
  %i.hbk = call ptr @__cxa_begin_catch(ptr %i.hbg) #41
  %i.hbl = getelementptr inbounds nuw i8, ptr %i.hbk, i64 8
  %i.hbm = load ptr, ptr %i.hbl, align 8, !tbaa !376 ; 2 uses
  %i.hbn = getelementptr inbounds nuw i8, ptr %i.hbm, i64 144
  %i.hbo = load ptr, ptr %i.hbn, align 8, !tbaa !115 ; 4 uses
  %i.hbp = getelementptr inbounds nuw i8, ptr %i.hbm, i64 152
  %i.hbq = load i64, ptr %i.hbp, align 8, !tbaa !98
  %i.hbr = icmp eq i64 %i.hbq, 4
  br i1 %i.hbr, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i2171, label %.loopexit.i.i.i130.i2169

.lr.ph.i.i.i.i.preheader.i.i.i132.i2171:          ; preds = %bb.bmk
  %i.hbs = load i8, ptr %i.hbo, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i2172 = icmp eq i8 %i.hbs, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i2172, label %tailrecurse.i.i.i.i.i.i.i134.i2173, label %.loopexit.i.i.i130.i2169

tailrecurse.i.i.i.i.i.i.i134.i2173:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i2171
  %i.hbt = getelementptr inbounds nuw i8, ptr %i.hbo, i64 1
  %i.hbu = load i8, ptr %i.hbt, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i2174 = icmp eq i8 %i.hbu, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i2174, label %tailrecurse.i.i.i.i.1.i.i.i136.i2175, label %.loopexit.i.i.i130.i2169

tailrecurse.i.i.i.i.1.i.i.i136.i2175:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i2173
  %i.hbv = getelementptr inbounds nuw i8, ptr %i.hbo, i64 2
  %i.hbw = load i8, ptr %i.hbv, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i2176 = icmp eq i8 %i.hbw, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i2176, label %tailrecurse.i.i.i.i.2.i.i.i138.i2177, label %.loopexit.i.i.i130.i2169

tailrecurse.i.i.i.i.2.i.i.i138.i2177:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i2175
  %i.hbx = getelementptr inbounds nuw i8, ptr %i.hbo, i64 3
  %i.hby = load i8, ptr %i.hbx, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i2178 = icmp eq i8 %i.hby, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i2178, label %tailrecurse.i.i.i.i.3.i.i.i140.i2179, label %.loopexit.i.i.i130.i2169

tailrecurse.i.i.i.i.3.i.i.i140.i2179:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2177
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %131) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2163, ptr noundef nonnull align 8 dereferenceable(8) %131)
          to label %bb.bms unwind label %bb.bmu

.loopexit.i.i.i130.i2169:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2177, %tailrecurse.i.i.i.i.1.i.i.i136.i2175, %tailrecurse.i.i.i.i.i.i.i134.i2173, %.lr.ph.i.i.i.i.preheader.i.i.i132.i2171, %bb.bmk
  invoke void @__cxa_rethrow() #45
          to label %bb.bmy unwind label %bb.bmr

bb.bml:                                           ; preds = %bb.bmj
  %i.hbz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.hca = icmp eq i32 %i.hbh, %i.hbz
  br i1 %i.hca, label %bb.bmm, label %common.resume

bb.bmm:                                           ; preds = %bb.bml
  %i.hcb = call ptr @__cxa_begin_catch(ptr %i.hbg) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %130) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2163, ptr noundef nonnull align 8 dereferenceable(8) %130)
          to label %bb.bmn unwind label %bb.bmp

bb.bmn:                                           ; preds = %bb.bmm
  %i.hcc = load ptr, ptr %130, align 8, !tbaa !171
  %.not.i.i.i.i127.i2166 = icmp eq ptr %i.hcc, null
  br i1 %.not.i.i.i.i127.i2166, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2167, label %bb.bmo

bb.bmo:                                           ; preds = %bb.bmn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %130) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2167

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2167: ; preds = %bb.bmo, %bb.bmn
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bmp:                                           ; preds = %bb.bmm
  %i.hcd = landingpad { ptr, i32 }
          cleanup
  %i.hce = load ptr, ptr %130, align 8, !tbaa !171
  %.not.i4.i.i.i125.i2164 = icmp eq ptr %i.hce, null
  br i1 %.not.i4.i.i.i125.i2164, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165, label %bb.bmq

bb.bmq:                                           ; preds = %bb.bmp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %130) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165: ; preds = %bb.bmq, %bb.bmp
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bmx

bb.bmr:                                           ; preds = %.loopexit.i.i.i130.i2169
  %i.hcf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmw

bb.bms:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2179
  %i.hcg = load ptr, ptr %131, align 8, !tbaa !171
  %.not.i6.i.i.i143.i2182 = icmp eq ptr %i.hcg, null
  br i1 %.not.i6.i.i.i143.i2182, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2183, label %bb.bmt

bb.bmt:                                           ; preds = %bb.bms
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %131) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2183

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2183: ; preds = %bb.bmt, %bb.bms
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bmu:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2179
  %i.hch = landingpad { ptr, i32 }
          cleanup
  %i.hci = load ptr, ptr %131, align 8, !tbaa !171
  %.not.i8.i.i.i141.i2180 = icmp eq ptr %i.hci, null
  br i1 %.not.i8.i.i.i141.i2180, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2181, label %bb.bmv

bb.bmv:                                           ; preds = %bb.bmu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %131) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2181

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2181: ; preds = %bb.bmv, %bb.bmu
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #41
  br label %bb.bmw

bb.bmw:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2181, %bb.bmr
  %.pn.i.i.i.i131.i2170 = phi { ptr, i32 } [ %i.hch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2181 ], [ %i.hcf, %bb.bmr ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bmx

bb.bmx:                                           ; preds = %bb.bmw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2165
  %i.hcj = landingpad { ptr, i32 }
          catch ptr null
  %i.hck = extractvalue { ptr, i32 } %i.hcj, 0
  call void @__clang_call_terminate(ptr %i.hck) #44
  unreachable

bb.bmy:                                           ; preds = %.loopexit.i.i.i130.i2169
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2183, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2167
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i2162
  %i.hcl = add i32 %.029.i.i.i.i2163, 1           ; 2 uses
  %exitcond.not.i.i.i129.i2168 = icmp eq i32 %i.hcl, %i.hbb
  br i1 %exitcond.not.i.i.i129.i2168, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i2162, !llvm.loop !1188

bb.bmz:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2082
  %i.hcm = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.hcn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hco = load i32, ptr %i.hcn, align 4, !tbaa !370 ; 6 uses
  %i.hcp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hcq = load i32, ptr %i.hcp, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2085 = getelementptr inbounds nuw i8, ptr %129, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %129)
  store ptr %133, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2085, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2086 = getelementptr inbounds nuw i8, ptr %129, i64 24
  store ptr %132, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2086, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2087 = getelementptr inbounds nuw i8, ptr %129, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2087, align 8
  store i8 1, ptr %129, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2088 = getelementptr inbounds nuw i8, ptr %129, i64 8
  store ptr %i.hcm, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2088, align 8
  %.not.i.i.i.i.i.i67.i2089 = icmp slt i32 %i.hco, %i.hcq
  br i1 %.not.i.i.i.i.i.i67.i2089, label %bb.bna, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bna:                                           ; preds = %bb.bmz
  %i.hcr = add i32 %i.hco, 63                     ; 2 uses
  %i.hcs = srem i32 %i.hcr, 64
  %i.hct = sub nsw i32 %i.hcr, %i.hcs             ; 6 uses
  %i.hcu = and i32 %i.hcq, -64                    ; 4 uses
  %i.hcv = icmp slt i32 %i.hcu, %i.hct
  br i1 %i.hcv, label %bb.bnb, label %bb.bnc

bb.bnb:                                           ; preds = %bb.bna
  %i.hcw = ashr i32 %i.hcq, 6
  %i.hcx = and i32 %i.hcq, 63
  %i.hcy = zext nneg i32 %i.hcx to i64
  %notmask.i.i.i.i.i.i.i122.i2160 = shl nsw i64 -1, %i.hcy
  %i.hcz = xor i64 %notmask.i.i.i.i.i.i.i122.i2160, -1
  %i.hda = sub nsw i32 %i.hct, %i.hco             ; 2 uses
  %i.hdb = zext nneg i32 %i.hda to i64
  %notmask.i.i.i.i.i.i.i.i123.i2161 = shl nsw i64 -1, %i.hdb
  %i.hdc = xor i64 %notmask.i.i.i.i.i.i.i.i123.i2161, -1
  %i.hdd = sub nsw i32 64, %i.hda
  %i.hde = zext nneg i32 %i.hdd to i64
  %i.hdf = shl i64 %i.hdc, %i.hde
  %i.hdg = and i64 %i.hdf, %i.hcz
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %129, i32 noundef %i.hcw, i64 noundef %i.hdg)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bnc:                                           ; preds = %bb.bna
  %.not32.i.i.i.i.i.i68.i2090 = icmp eq i32 %i.hco, %i.hct
  br i1 %.not32.i.i.i.i.i.i68.i2090, label %bb.bne, label %bb.bnd

bb.bnd:                                           ; preds = %bb.bnc
  %i.hdh = sdiv i32 %i.hco, 64
  %i.hdi = sub nsw i32 %i.hct, %i.hco             ; 2 uses
  %i.hdj = zext nneg i32 %i.hdi to i64
  %notmask.i.i35.i.i.i.i.i.i69.i2091 = shl nsw i64 -1, %i.hdj
  %i.hdk = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i2091, -1
  %i.hdl = sub nsw i32 64, %i.hdi
  %i.hdm = zext nneg i32 %i.hdl to i64
  %i.hdn = shl i64 %i.hdk, %i.hdm
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %129, i32 noundef %i.hdh, i64 noundef %i.hdn)
  br label %bb.bne

bb.bne:                                           ; preds = %bb.bnd, %bb.bnc
  %i.hdo = add nsw i32 %i.hct, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i2092 = icmp sgt i32 %i.hdo, %i.hcu
  br i1 %.not3351.i.i.i.i.i.i.i2092, label %._crit_edge.i.i.i.i.i.i72.i2096, label %.lr.ph.i.i.i.i.i.i70.i2093

._crit_edge.i.i.i.i.i.i72.i2096:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.bne
  %.not34.i.i.i.i.i.i73.i2097 = icmp eq i32 %i.hcq, %i.hcu
  br i1 %.not34.i.i.i.i.i.i73.i2097, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.bot

.lr.ph.i.i.i.i.i.i70.i2093:                       ; preds = %bb.bne, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.hdp = phi i32 [ %i.hkc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.hdo, %bb.bne ] ; 2 uses
  %.052.i.i.i.i.i.i.i2094 = phi i32 [ %i.hdp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.hct, %bb.bne ] ; 2 uses
  %i.hdq = sdiv i32 %.052.i.i.i.i.i.i.i2094, 64   ; 3 uses
  %i.hdr = sext i32 %i.hdq to i64
  %i.hds = getelementptr inbounds [8 x i8], ptr %i.hcm, i64 %i.hdr
  %i.hdt = load i64, ptr %i.hds, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.hdt, label %.lr.ph.i.i.i.i10.i.i.i100.i2122 [
    i64 -1, label %bb.bnf
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i2122:                  ; preds = %.lr.ph.i.i.i.i.i.i70.i2093
  %i.hdu = shl nsw i32 %i.hdq, 6
  br label %bb.bnx

bb.bnf:                                           ; preds = %.lr.ph.i.i.i.i.i.i70.i2093
  %i.hdv = shl nsw i32 %i.hdq, 6                  ; 2 uses
  %i.hdw = add i32 %i.hdv, 64
  %i.hdx = sext i32 %i.hdw to i64
  %.0.off.i.i.i.i.i.i75.i2099 = add i32 %.052.i.i.i.i.i.i.i2094, 127
  %.not57.i.i.i.i.i.i.i76.i2100 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i2099, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i2100, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUldE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i2101

.lr.ph56.i.i.i.i.i.i.i77.i2101:                   ; preds = %bb.bnf
  %i.hdy = sext i32 %i.hdv to i64
  br label %bb.bng

bb.bng:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i2101
  %.055.i.i.i.i.i.i.i78.i2102 = phi i64 [ %i.hdy, %.lr.ph56.i.i.i.i.i.i.i77.i2101 ], [ %i.hfg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.hdz = trunc i64 %.055.i.i.i.i.i.i.i78.i2102 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUldE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %133, i32 noundef %i.hdz)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.bnh

bb.bnh:                                           ; preds = %bb.bng
  %i.hea = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.heb = extractvalue { ptr, i32 } %i.hea, 0    ; 2 uses
  %i.hec = extractvalue { ptr, i32 } %i.hea, 1    ; 2 uses
  %i.hed = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.hee = icmp eq i32 %i.hec, %i.hed
  br i1 %i.hee, label %bb.bni, label %bb.bnj

bb.bni:                                           ; preds = %bb.bnh
  %i.hef = call ptr @__cxa_begin_catch(ptr %i.heb) #41
  %i.heg = getelementptr inbounds nuw i8, ptr %i.hef, i64 8
  %i.heh = load ptr, ptr %i.heg, align 8, !tbaa !376 ; 2 uses
  %i.hei = getelementptr inbounds nuw i8, ptr %i.heh, i64 144
  %i.hej = load ptr, ptr %i.hei, align 8, !tbaa !115 ; 4 uses
  %i.hek = getelementptr inbounds nuw i8, ptr %i.heh, i64 152
  %i.hel = load i64, ptr %i.hek, align 8, !tbaa !98
  %i.hem = icmp eq i64 %i.hel, 4
  br i1 %i.hem, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2109, label %.loopexit.i.i.i.i.i.i.i85.i2107

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2109:   ; preds = %bb.bni
  %i.hen = load i8, ptr %i.hej, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2110 = icmp eq i8 %i.hen, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2110, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2111, label %.loopexit.i.i.i.i.i.i.i85.i2107

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2111:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2109
  %i.heo = getelementptr inbounds nuw i8, ptr %i.hej, i64 1
  %i.hep = load i8, ptr %i.heo, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2112 = icmp eq i8 %i.hep, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2112, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2113, label %.loopexit.i.i.i.i.i.i.i85.i2107

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2113:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2111
  %i.heq = getelementptr inbounds nuw i8, ptr %i.hej, i64 2
  %i.her = load i8, ptr %i.heq, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2114 = icmp eq i8 %i.her, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2114, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2115, label %.loopexit.i.i.i.i.i.i.i85.i2107

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2115:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2113
  %i.hes = getelementptr inbounds nuw i8, ptr %i.hej, i64 3
  %i.het = load i8, ptr %i.hes, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2116 = icmp eq i8 %i.het, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2116, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2117, label %.loopexit.i.i.i.i.i.i.i85.i2107

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2117:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2115
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %126) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hdz, ptr noundef nonnull align 8 dereferenceable(8) %126)
          to label %bb.bnq unwind label %bb.bns

.loopexit.i.i.i.i.i.i.i85.i2107:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2115, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2113, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2111, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2109, %bb.bni
  invoke void @__cxa_rethrow() #45
          to label %bb.bnw unwind label %bb.bnp

bb.bnj:                                           ; preds = %bb.bnh
  %i.heu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.hev = icmp eq i32 %i.hec, %i.heu
  br i1 %i.hev, label %bb.bnk, label %common.resume

bb.bnk:                                           ; preds = %bb.bnj
  %i.hew = call ptr @__cxa_begin_catch(ptr %i.heb) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %125) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.hdz, ptr noundef nonnull align 8 dereferenceable(8) %125)
          to label %bb.bnl unwind label %bb.bnn

bb.bnl:                                           ; preds = %bb.bnk
  %i.hex = load ptr, ptr %125, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i2105 = icmp eq ptr %i.hex, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i2105, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2106, label %bb.bnm

bb.bnm:                                           ; preds = %bb.bnl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %125) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2106

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2106: ; preds = %bb.bnm, %bb.bnl
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIdZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUldE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bnn:                                           ; preds = %bb.bnk
  %i.hey = landingpad { ptr, i32 }
          cleanup
  %i.hez = load ptr, ptr %125, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i2103 = icmp eq ptr %i.hez, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i2103, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2104, label %bb.bno

bb.bno:                                           ; preds = %bb.bnn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %125) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2104

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2104: ; preds = %bb.bno, %bb.bnn
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bnv
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i2616 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i2621, %i.hxm
  br i1 %.not37.i.i.not.i.i.i.i.i2616, label %.lr.ph5722, label %.critedge.i.i.i.i.i.i.i2617, !llvm.loop !20

.lr.ph5722:                                       ; preds = %bb.bsu, %bb.bsv
  %indvars.iv.i.i.i.i.i26155721 = phi i64 [ %indvars.iv.next.i.i.i.i.i2621, %bb.bsv ], [ 0, %bb.bsu ] ; 2 uses
  %i.hxn = lshr exact i64 %indvars.iv.i.i.i.i.i26155721, 3
  %i.hxo = getelementptr inbounds nuw i8, ptr %i.hxk, i64 %i.hxn
  %i.hxp = load i64, ptr %i.hxo, align 8, !tbaa !219
  %i.hxq = icmp eq i64 %i.hxp, -1
  br i1 %i.hxq, label %bb.bsv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513, !llvm.loop !20

.critedge.i.i.i.i.i.i.i2617:                      ; preds = %bb.bsv, %bb.bsu
  %.not38.i.i.i.i.i.i.i2618 = icmp eq i32 %i.hxh, %i.hxl
  br i1 %.not38.i.i.i.i.i.i.i2618, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513, label %bb.bsw

bb.bsw:                                           ; preds = %.critedge.i.i.i.i.i.i.i2617
  %i.hxr = lshr i32 %i.hxh, 6
  %i.hxs = and i32 %i.hxh, 63
  %i.hxt = zext nneg i32 %i.hxs to i64
  %notmask.i40.i.i.i.i.i.i.i2619 = shl nsw i64 -1, %i.hxt
  %i.hxu = zext nneg i32 %i.hxr to i64
  %i.hxv = getelementptr inbounds nuw [8 x i8], ptr %i.hxk, i64 %i.hxu
  %i.hxw = load i64, ptr %i.hxv, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i2620 = or i64 %i.hxw, %notmask.i40.i.i.i.i.i.i.i2619
  %i.hxx = icmp eq i64 %.demorgan.i.i.i.i.i2620, -1
  %i.hxy = zext i1 %i.hxx to i16
  %i.hxz = or disjoint i16 %i.hxy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513: ; preds = %.lr.ph5722, %bb.bsw, %.critedge.i.i.i.i.i.i.i2617, %bb.bst, %bb.bss, %bb.bsr
  %.sroa.0.0.insert.ext.i.i.i.i.i2514 = phi i16 [ 256, %bb.bss ], [ 256, %bb.bsr ], [ 257, %bb.bst ], [ 257, %.critedge.i.i.i.i.i.i.i2617 ], [ %i.hxz, %bb.bsw ], [ 256, %.lr.ph5722 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i2514, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 36), align 4
  %i.hya = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i2514 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2515

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2515: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2622
  %i.hyb = phi i32 [ %.pre.i.i.i2624, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2622 ], [ %i.hxf, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513 ] ; 8 uses
  %.0.in.i.i.i.i.i2516 = phi i8 [ %.0.in.pre.i.i.i.i.i2623, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2622 ], [ %i.hya, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2513 ]
  %.0.i.i.i.i36.i2517 = trunc nuw i8 %.0.in.i.i.i.i.i2516 to i1
  br i1 %.0.i.i.i.i36.i2517, label %bb.bsx, label %bb.bto

bb.bsx:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2515
  %i.hyc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.hyd = icmp slt i32 %i.hyb, %i.hyc
  br i1 %i.hyd, label %.lr.ph.i.i.i.i2590, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i

.lr.ph.i.i.i.i2590:                               ; preds = %bb.bsx, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.019.i.i.i.i2591 = phi i32 [ %i.hzk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.hyb, %bb.bsx ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %110)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.bsy

bb.bsy:                                           ; preds = %.lr.ph.i.i.i.i2590
  %i.hye = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.hyf = extractvalue { ptr, i32 } %i.hye, 0    ; 2 uses
  %i.hyg = extractvalue { ptr, i32 } %i.hye, 1    ; 2 uses
  %i.hyh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.hyi = icmp eq i32 %i.hyg, %i.hyh
  br i1 %i.hyi, label %bb.bsz, label %bb.bta

bb.bsz:                                           ; preds = %bb.bsy
  %i.hyj = call ptr @__cxa_begin_catch(ptr %i.hyf) #41
  %i.hyk = getelementptr inbounds nuw i8, ptr %i.hyj, i64 8
  %i.hyl = load ptr, ptr %i.hyk, align 8, !tbaa !376 ; 2 uses
  %i.hym = getelementptr inbounds nuw i8, ptr %i.hyl, i64 144
  %i.hyn = load ptr, ptr %i.hym, align 8, !tbaa !115 ; 4 uses
  %i.hyo = getelementptr inbounds nuw i8, ptr %i.hyl, i64 152
  %i.hyp = load i64, ptr %i.hyo, align 8, !tbaa !98
  %i.hyq = icmp eq i64 %i.hyp, 4
  br i1 %i.hyq, label %.lr.ph.i.i.i.i.preheader.i.i.i.i2601, label %.loopexit.i.i.i.i2599

.lr.ph.i.i.i.i.preheader.i.i.i.i2601:             ; preds = %bb.bsz
  %i.hyr = load i8, ptr %i.hyn, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i2602 = icmp eq i8 %i.hyr, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i2602, label %tailrecurse.i.i.i.i.i.i.i.i2603, label %.loopexit.i.i.i.i2599

tailrecurse.i.i.i.i.i.i.i.i2603:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i2601
  %i.hys = getelementptr inbounds nuw i8, ptr %i.hyn, i64 1
  %i.hyt = load i8, ptr %i.hys, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i2604 = icmp eq i8 %i.hyt, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i2604, label %tailrecurse.i.i.i.i.1.i.i.i.i2605, label %.loopexit.i.i.i.i2599

tailrecurse.i.i.i.i.1.i.i.i.i2605:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i2603
  %i.hyu = getelementptr inbounds nuw i8, ptr %i.hyn, i64 2
  %i.hyv = load i8, ptr %i.hyu, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i2606 = icmp eq i8 %i.hyv, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i2606, label %tailrecurse.i.i.i.i.2.i.i.i.i2607, label %.loopexit.i.i.i.i2599

tailrecurse.i.i.i.i.2.i.i.i.i2607:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i2605
  %i.hyw = getelementptr inbounds nuw i8, ptr %i.hyn, i64 3
  %i.hyx = load i8, ptr %i.hyw, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i2608 = icmp eq i8 %i.hyx, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i2608, label %tailrecurse.i.i.i.i.3.i.i.i.i2609, label %.loopexit.i.i.i.i2599

tailrecurse.i.i.i.i.3.i.i.i.i2609:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2607
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %108) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2591, ptr noundef nonnull align 8 dereferenceable(8) %108)
          to label %bb.bth unwind label %bb.btj

.loopexit.i.i.i.i2599:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2607, %tailrecurse.i.i.i.i.1.i.i.i.i2605, %tailrecurse.i.i.i.i.i.i.i.i2603, %.lr.ph.i.i.i.i.preheader.i.i.i.i2601, %bb.bsz
  invoke void @__cxa_rethrow() #45
          to label %bb.btn unwind label %bb.btg

bb.bta:                                           ; preds = %bb.bsy
  %i.hyy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.hyz = icmp eq i32 %i.hyg, %i.hyy
  br i1 %i.hyz, label %bb.btb, label %.body.i2506

bb.btb:                                           ; preds = %bb.bta
  %i.hza = call ptr @__cxa_begin_catch(ptr %i.hyf) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %107) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2591, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.btc unwind label %bb.bte

bb.btc:                                           ; preds = %bb.btb
  %i.hzb = load ptr, ptr %107, align 8, !tbaa !171
  %.not.i.i.i.i37.i2594 = icmp eq ptr %i.hzb, null
  br i1 %.not.i.i.i.i37.i2594, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2595, label %bb.btd

bb.btd:                                           ; preds = %bb.btc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %107) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2595

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2595: ; preds = %bb.btd, %bb.btc
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bte:                                           ; preds = %bb.btb
  %i.hzc = landingpad { ptr, i32 }
          cleanup
  %i.hzd = load ptr, ptr %107, align 8, !tbaa !171
  %.not.i4.i.i.i.i2592 = icmp eq ptr %i.hzd, null
  br i1 %.not.i4.i.i.i.i2592, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2593, label %bb.btf

bb.btf:                                           ; preds = %bb.bte
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %107) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2593

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2593: ; preds = %bb.btf, %bb.bte
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #41
  invoke void @__cxa_end_catch()
          to label %.body.i2506 unwind label %bb.btm

bb.btg:                                           ; preds = %.loopexit.i.i.i.i2599
  %i.hze = landingpad { ptr, i32 }
          cleanup
  br label %bb.btl

bb.bth:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2609
  %i.hzf = load ptr, ptr %108, align 8, !tbaa !171
  %.not.i6.i.i.i.i2612 = icmp eq ptr %i.hzf, null
  br i1 %.not.i6.i.i.i.i2612, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2613, label %bb.bti

bb.bti:                                           ; preds = %bb.bth
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %108) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2613

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2613: ; preds = %bb.bti, %bb.bth
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.btj:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2609
  %i.hzg = landingpad { ptr, i32 }
          cleanup
  %i.hzh = load ptr, ptr %108, align 8, !tbaa !171
  %.not.i8.i.i.i.i2610 = icmp eq ptr %i.hzh, null
  br i1 %.not.i8.i.i.i.i2610, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2611, label %bb.btk

bb.btk:                                           ; preds = %bb.btj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %108) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2611

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2611: ; preds = %bb.btk, %bb.btj
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #41
  br label %bb.btl

bb.btl:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2611, %bb.btg
  %.pn.i.i.i.i.i2600 = phi { ptr, i32 } [ %i.hzg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2611 ], [ %i.hze, %bb.btg ]
  invoke void @__cxa_end_catch()
          to label %.body.i2506 unwind label %bb.btm

bb.btm:                                           ; preds = %bb.btl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2593
  %i.hzi = landingpad { ptr, i32 }
          catch ptr null
  %i.hzj = extractvalue { ptr, i32 } %i.hzi, 0
  call void @__clang_call_terminate(ptr %i.hzj) #44
  unreachable

bb.btn:                                           ; preds = %.loopexit.i.i.i.i2599
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2613, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2595
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %.loopexit.i2596

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2590, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i
  %i.hzk = add i32 %.019.i.i.i.i2591, 1           ; 2 uses
  %exitcond.not.i.i.i.i2598 = icmp eq i32 %i.hzk, %i.hyc
  br i1 %exitcond.not.i.i.i.i2598, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_EEvSA_T_.exit.i, label %.lr.ph.i.i.i.i2590, !llvm.loop !1198

bb.bto:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2515
  %i.hzl = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.hzm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i2518 = getelementptr inbounds nuw i8, ptr %106, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %106)
  store ptr %110, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i2518, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2519 = getelementptr inbounds nuw i8, ptr %106, i64 24
  store ptr %109, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2519, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2520 = getelementptr inbounds nuw i8, ptr %106, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2520, align 8
  store i8 1, ptr %106, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i2521 = getelementptr inbounds nuw i8, ptr %106, i64 8
  store ptr %i.hzl, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i2521, align 8
  %.not.i.i.i.i.i.i.i2522 = icmp slt i32 %i.hyb, %i.hzm
  br i1 %.not.i.i.i.i.i.i.i2522, label %bb.btp, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.btp:                                           ; preds = %bb.bto
  %i.hzn = add i32 %i.hyb, 63                     ; 2 uses
  %i.hzo = srem i32 %i.hzn, 64
  %i.hzp = sub nsw i32 %i.hzn, %i.hzo             ; 6 uses
  %i.hzq = and i32 %i.hzm, -64                    ; 4 uses
  %i.hzr = icmp slt i32 %i.hzq, %i.hzp
  br i1 %i.hzr, label %bb.btq, label %bb.btr

bb.btq:                                           ; preds = %bb.btp
  %i.hzs = and i32 %i.hzm, 63
  %i.hzt = zext nneg i32 %i.hzs to i64
  %notmask.i.i.i.i.i.i.i.i2588 = shl nsw i64 -1, %i.hzt
  %i.hzu = xor i64 %notmask.i.i.i.i.i.i.i.i2588, -1
  %i.hzv = sub nsw i32 %i.hzp, %i.hyb             ; 2 uses
  %i.hzw = zext nneg i32 %i.hzv to i64
  %notmask.i.i.i.i.i.i.i.i.i2589 = shl nsw i64 -1, %i.hzw
  %i.hzx = xor i64 %notmask.i.i.i.i.i.i.i.i.i2589, -1
  %i.hzy = sub nsw i32 64, %i.hzv
  %i.hzz = zext nneg i32 %i.hzy to i64
  %i.iaa = shl i64 %i.hzx, %i.hzz
  %i.iab = and i64 %i.iaa, %i.hzu
  br label %.invoke.i2538

.invoke.i2538:                                    ; preds = %bb.bvc, %bb.btq
  %i.iac = phi i64 [ %i.iab, %bb.btq ], [ %i.idt, %bb.bvc ]
  %i.iad = ashr i32 %i.hzm, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %106, i32 noundef %i.iad, i64 noundef %i.iac)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2504

bb.btr:                                           ; preds = %bb.btp
  %.not32.i.i.i.i.i.i.i2528 = icmp eq i32 %i.hyb, %i.hzp
  br i1 %.not32.i.i.i.i.i.i.i2528, label %.noexc40.i2530, label %bb.bts

bb.bts:                                           ; preds = %bb.btr
  %i.iae = sdiv i32 %i.hyb, 64
  %i.iaf = sub nsw i32 %i.hzp, %i.hyb             ; 2 uses
  %i.iag = zext nneg i32 %i.iaf to i64
  %notmask.i.i35.i.i.i.i.i.i.i2529 = shl nsw i64 -1, %i.iag
  %i.iah = xor i64 %notmask.i.i35.i.i.i.i.i.i.i2529, -1
  %i.iai = sub nsw i32 64, %i.iaf
  %i.iaj = zext nneg i32 %i.iai to i64
  %i.iak = shl i64 %i.iah, %i.iaj
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %106, i32 noundef %i.iae, i64 noundef %i.iak)
          to label %.noexc40.i2530 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2504

.noexc40.i2530:                                   ; preds = %bb.bts, %bb.btr
  %i.ial = add nsw i32 %i.hzp, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i2531 = icmp sgt i32 %i.ial, %i.hzq
  br i1 %.not3346.i.i.i.i.i.i.i2531, label %._crit_edge.i.i.i.i.i.i.i2535, label %.lr.ph.i.i.i.i.i.i.i2532

._crit_edge.i.i.i.i.i.i.i2535:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i2530
  %.not34.i.i.i.i.i.i.i2536 = icmp eq i32 %i.hzm, %i.hzq
  br i1 %.not34.i.i.i.i.i.i.i2536, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.bvc

.lr.ph.i.i.i.i.i.i.i2532:                         ; preds = %.noexc40.i2530, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.iam = phi i32 [ %i.idq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.ial, %.noexc40.i2530 ] ; 2 uses
  %.047.i.i.i.i.i.i.i2533 = phi i32 [ %i.iam, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.hzp, %.noexc40.i2530 ] ; 2 uses
  %i.ian = sdiv i32 %.047.i.i.i.i.i.i.i2533, 64   ; 3 uses
  %i.iao = sext i32 %i.ian to i64
  %i.iap = getelementptr inbounds [8 x i8], ptr %i.hzl, i64 %i.iao
  %i.iaq = load i64, ptr %i.iap, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.iaq, label %.lr.ph.i.i.i.i10.i.i.i.i2564 [
    i64 -1, label %bb.btt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i2564:                     ; preds = %.lr.ph.i.i.i.i.i.i.i2532
  %i.iar = shl nsw i32 %i.ian, 6
  br label %bb.bul

bb.btt:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i2532
  %i.ias = shl nsw i32 %i.ian, 6                  ; 2 uses
  %i.iat = add i32 %i.ias, 64
  %i.iau = sext i32 %i.iat to i64
  %.0.off.i.i.i.i.i.i.i2539 = add i32 %.047.i.i.i.i.i.i.i2533, 127
  %.not57.i.i.i.i.i.i.i.i2540 = icmp ult i32 %.0.off.i.i.i.i.i.i.i2539, 64
  br i1 %.not57.i.i.i.i.i.i.i.i2540, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i2541

.lr.ph56.i.i.i.i.i.i.i.i2541:                     ; preds = %bb.btt
  %i.iav = sext i32 %i.ias to i64
  br label %bb.btu

bb.btu:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i2541
  %.055.i.i.i.i.i.i.i.i2542 = phi i64 [ %i.iav, %.lr.ph56.i.i.i.i.i.i.i.i2541 ], [ %i.icd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.iaw = trunc i64 %.055.i.i.i.i.i.i.i.i2542 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %110)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.btv

bb.btv:                                           ; preds = %bb.btu
  %i.iax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.iay = extractvalue { ptr, i32 } %i.iax, 0    ; 2 uses
  %i.iaz = extractvalue { ptr, i32 } %i.iax, 1    ; 2 uses
  %i.iba = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.ibb = icmp eq i32 %i.iaz, %i.iba
  br i1 %i.ibb, label %bb.btw, label %bb.btx

bb.btw:                                           ; preds = %bb.btv
  %i.ibc = call ptr @__cxa_begin_catch(ptr %i.iay) #41
  %i.ibd = getelementptr inbounds nuw i8, ptr %i.ibc, i64 8
  %i.ibe = load ptr, ptr %i.ibd, align 8, !tbaa !376 ; 2 uses
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.ibe, i64 144
  %i.ibg = load ptr, ptr %i.ibf, align 8, !tbaa !115 ; 4 uses
  %i.ibh = getelementptr inbounds nuw i8, ptr %i.ibe, i64 152
  %i.ibi = load i64, ptr %i.ibh, align 8, !tbaa !98
  %i.ibj = icmp eq i64 %i.ibi, 4
  br i1 %i.ibj, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2551, label %.loopexit.i.i.i.i.i.i.i.i2549

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2551:     ; preds = %bb.btw
  %i.ibk = load i8, ptr %i.ibg, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2552 = icmp eq i8 %i.ibk, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2552, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2553, label %.loopexit.i.i.i.i.i.i.i.i2549

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2553:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2551
  %i.ibl = getelementptr inbounds nuw i8, ptr %i.ibg, i64 1
  %i.ibm = load i8, ptr %i.ibl, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2554 = icmp eq i8 %i.ibm, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2554, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2555, label %.loopexit.i.i.i.i.i.i.i.i2549

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2555:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2553
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.ibg, i64 2
  %i.ibo = load i8, ptr %i.ibn, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2556 = icmp eq i8 %i.ibo, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2556, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2557, label %.loopexit.i.i.i.i.i.i.i.i2549

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2557:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2555
  %i.ibp = getelementptr inbounds nuw i8, ptr %i.ibg, i64 3
  %i.ibq = load i8, ptr %i.ibp, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2558 = icmp eq i8 %i.ibq, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2558, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2559, label %.loopexit.i.i.i.i.i.i.i.i2549

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2559:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2557
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %103) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.iaw, ptr noundef nonnull align 8 dereferenceable(8) %103)
          to label %bb.bue unwind label %bb.bug

.loopexit.i.i.i.i.i.i.i.i2549:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2557, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2555, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2553, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2551, %bb.btw
  invoke void @__cxa_rethrow() #45
          to label %bb.buk unwind label %bb.bud

bb.btx:                                           ; preds = %bb.btv
  %i.ibr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.ibs = icmp eq i32 %i.iaz, %i.ibr
  br i1 %i.ibs, label %bb.bty, label %.body.i2506

bb.bty:                                           ; preds = %bb.btx
  %i.ibt = call ptr @__cxa_begin_catch(ptr %i.iay) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %102) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.iaw, ptr noundef nonnull align 8 dereferenceable(8) %102)
          to label %bb.btz unwind label %bb.bub

bb.btz:                                           ; preds = %bb.bty
  %i.ibu = load ptr, ptr %102, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i2545 = icmp eq ptr %i.ibu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i2545, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2546, label %bb.bua

bb.bua:                                           ; preds = %bb.btz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %102) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2546

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2546: ; preds = %bb.bua, %bb.btz
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bub:                                           ; preds = %bb.bty
  %i.ibv = landingpad { ptr, i32 }
          cleanup
  %i.ibw = load ptr, ptr %102, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i2543 = icmp eq ptr %i.ibw, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i2543, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2544, label %bb.buc

bb.buc:                                           ; preds = %bb.bub
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %102) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2544

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2544: ; preds = %bb.buc, %bb.bub
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #41
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i2496, label %.lr.ph5719, label %.critedge.i.i.i.i.i.i148.i2497, !llvm.loop !20

.lr.ph5719:                                       ; preds = %bb.bwg, %bb.bwh
  %indvars.iv.i.i.i.i146.i24955718 = phi i64 [ %indvars.iv.next.i.i.i.i152.i2501, %bb.bwh ], [ 0, %bb.bwg ] ; 2 uses
  %i.ihj = lshr exact i64 %indvars.iv.i.i.i.i146.i24955718, 3
  %i.ihk = getelementptr inbounds nuw i8, ptr %i.ihg, i64 %i.ihj
  %i.ihl = load i64, ptr %i.ihk, align 8, !tbaa !219
  %i.ihm = icmp eq i64 %i.ihl, -1
  br i1 %i.ihm, label %bb.bwh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i2497:                   ; preds = %bb.bwh, %bb.bwg
  %.not38.i.i.i.i.i.i149.i2498 = icmp eq i32 %i.ihc, %i.ihh
  br i1 %.not38.i.i.i.i.i.i149.i2498, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391, label %bb.bwi

bb.bwi:                                           ; preds = %.critedge.i.i.i.i.i.i148.i2497
  %i.ihn = lshr i32 %i.ihc, 6
  %i.iho = and i32 %i.ihc, 63
  %i.ihp = zext nneg i32 %i.iho to i64
  %notmask.i40.i.i.i.i.i.i150.i2499 = shl nsw i64 -1, %i.ihp
  %i.ihq = zext nneg i32 %i.ihn to i64
  %i.ihr = getelementptr inbounds nuw [8 x i8], ptr %i.ihg, i64 %i.ihq
  %i.ihs = load i64, ptr %i.ihr, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i2500 = or i64 %i.ihs, %notmask.i40.i.i.i.i.i.i150.i2499
  %i.iht = icmp eq i64 %.demorgan.i.i.i.i151.i2500, -1
  %i.ihu = zext i1 %i.iht to i16
  %i.ihv = or disjoint i16 %i.ihu, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391: ; preds = %.lr.ph5719, %bb.bwi, %.critedge.i.i.i.i.i.i148.i2497, %bb.bwf, %bb.bwe, %bb.bwd
  %.sroa.0.0.insert.ext.i.i.i.i59.i2392 = phi i16 [ 256, %bb.bwe ], [ 256, %bb.bwd ], [ 257, %bb.bwf ], [ 257, %.critedge.i.i.i.i.i.i148.i2497 ], [ %i.ihv, %bb.bwi ], [ 256, %.lr.ph5719 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2392, ptr %i.igu, align 4
  %i.ihw = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2392 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2393

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2393: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i2502
  %.0.in.i.i.i.i61.i2394 = phi i8 [ %.0.in.pre.i.i.i.i154.i2503, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i2502 ], [ %i.ihw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2391 ]
  %.0.i.i.i.i62.i2395 = trunc nuw i8 %.0.in.i.i.i.i61.i2394 to i1
  br i1 %.0.i.i.i.i62.i2395, label %bb.bwj, label %bb.bxa

bb.bwj:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2393
  %i.ihx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ihy = load i32, ptr %i.ihx, align 8, !tbaa !324 ; 2 uses
  %i.ihz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.iia = load i32, ptr %i.ihz, align 4, !tbaa !370 ; 2 uses
  %i.iib = icmp slt i32 %i.iia, %i.ihy
  br i1 %i.iib, label %.lr.ph.i.i.i124.i2472, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i

.lr.ph.i.i.i124.i2472:                            ; preds = %bb.bwj, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i
  %.029.i.i.i.i2473 = phi i32 [ %i.iji, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i ], [ %i.iia, %bb.bwj ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %100, i32 noundef %.029.i.i.i.i2473)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i unwind label %bb.bwk

bb.bwk:                                           ; preds = %.lr.ph.i.i.i124.i2472
  %i.iic = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.iid = extractvalue { ptr, i32 } %i.iic, 0    ; 2 uses
  %i.iie = extractvalue { ptr, i32 } %i.iic, 1    ; 2 uses
  %i.iif = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.iig = icmp eq i32 %i.iie, %i.iif
  br i1 %i.iig, label %bb.bwl, label %bb.bwm

bb.bwl:                                           ; preds = %bb.bwk
  %i.iih = call ptr @__cxa_begin_catch(ptr %i.iid) #41
  %i.iii = getelementptr inbounds nuw i8, ptr %i.iih, i64 8
  %i.iij = load ptr, ptr %i.iii, align 8, !tbaa !376 ; 2 uses
  %i.iik = getelementptr inbounds nuw i8, ptr %i.iij, i64 144
  %i.iil = load ptr, ptr %i.iik, align 8, !tbaa !115 ; 4 uses
  %i.iim = getelementptr inbounds nuw i8, ptr %i.iij, i64 152
  %i.iin = load i64, ptr %i.iim, align 8, !tbaa !98
  %i.iio = icmp eq i64 %i.iin, 4
  br i1 %i.iio, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i2481, label %.loopexit.i.i.i130.i2479

.lr.ph.i.i.i.i.preheader.i.i.i132.i2481:          ; preds = %bb.bwl
  %i.iip = load i8, ptr %i.iil, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i2482 = icmp eq i8 %i.iip, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i2482, label %tailrecurse.i.i.i.i.i.i.i134.i2483, label %.loopexit.i.i.i130.i2479

tailrecurse.i.i.i.i.i.i.i134.i2483:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i2481
  %i.iiq = getelementptr inbounds nuw i8, ptr %i.iil, i64 1
  %i.iir = load i8, ptr %i.iiq, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i2484 = icmp eq i8 %i.iir, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i2484, label %tailrecurse.i.i.i.i.1.i.i.i136.i2485, label %.loopexit.i.i.i130.i2479

tailrecurse.i.i.i.i.1.i.i.i136.i2485:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i2483
  %i.iis = getelementptr inbounds nuw i8, ptr %i.iil, i64 2
  %i.iit = load i8, ptr %i.iis, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i2486 = icmp eq i8 %i.iit, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i2486, label %tailrecurse.i.i.i.i.2.i.i.i138.i2487, label %.loopexit.i.i.i130.i2479

tailrecurse.i.i.i.i.2.i.i.i138.i2487:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i2485
  %i.iiu = getelementptr inbounds nuw i8, ptr %i.iil, i64 3
  %i.iiv = load i8, ptr %i.iiu, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i2488 = icmp eq i8 %i.iiv, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i2488, label %tailrecurse.i.i.i.i.3.i.i.i140.i2489, label %.loopexit.i.i.i130.i2479

tailrecurse.i.i.i.i.3.i.i.i140.i2489:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2487
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %98) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2473, ptr noundef nonnull align 8 dereferenceable(8) %98)
          to label %bb.bwt unwind label %bb.bwv

.loopexit.i.i.i130.i2479:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2487, %tailrecurse.i.i.i.i.1.i.i.i136.i2485, %tailrecurse.i.i.i.i.i.i.i134.i2483, %.lr.ph.i.i.i.i.preheader.i.i.i132.i2481, %bb.bwl
  invoke void @__cxa_rethrow() #45
          to label %bb.bwz unwind label %bb.bws

bb.bwm:                                           ; preds = %bb.bwk
  %i.iiw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.iix = icmp eq i32 %i.iie, %i.iiw
  br i1 %i.iix, label %bb.bwn, label %common.resume

bb.bwn:                                           ; preds = %bb.bwm
  %i.iiy = call ptr @__cxa_begin_catch(ptr %i.iid) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %97) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2473, ptr noundef nonnull align 8 dereferenceable(8) %97)
          to label %bb.bwo unwind label %bb.bwq

bb.bwo:                                           ; preds = %bb.bwn
  %i.iiz = load ptr, ptr %97, align 8, !tbaa !171
  %.not.i.i.i.i127.i2476 = icmp eq ptr %i.iiz, null
  br i1 %.not.i.i.i.i127.i2476, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2477, label %bb.bwp

bb.bwp:                                           ; preds = %bb.bwo
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %97) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2477

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2477: ; preds = %bb.bwp, %bb.bwo
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bwq:                                           ; preds = %bb.bwn
  %i.ija = landingpad { ptr, i32 }
          cleanup
  %i.ijb = load ptr, ptr %97, align 8, !tbaa !171
  %.not.i4.i.i.i125.i2474 = icmp eq ptr %i.ijb, null
  br i1 %.not.i4.i.i.i125.i2474, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475, label %bb.bwr

bb.bwr:                                           ; preds = %bb.bwq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %97) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475: ; preds = %bb.bwr, %bb.bwq
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bwy

bb.bws:                                           ; preds = %.loopexit.i.i.i130.i2479
  %i.ijc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bwx

bb.bwt:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2489
  %i.ijd = load ptr, ptr %98, align 8, !tbaa !171
  %.not.i6.i.i.i143.i2492 = icmp eq ptr %i.ijd, null
  br i1 %.not.i6.i.i.i143.i2492, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2493, label %bb.bwu

bb.bwu:                                           ; preds = %bb.bwt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %98) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2493

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2493: ; preds = %bb.bwu, %bb.bwt
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i

bb.bwv:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2489
  %i.ije = landingpad { ptr, i32 }
          cleanup
  %i.ijf = load ptr, ptr %98, align 8, !tbaa !171
  %.not.i8.i.i.i141.i2490 = icmp eq ptr %i.ijf, null
  br i1 %.not.i8.i.i.i141.i2490, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2491, label %bb.bww

bb.bww:                                           ; preds = %bb.bwv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %98) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2491

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2491: ; preds = %bb.bww, %bb.bwv
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #41
  br label %bb.bwx

bb.bwx:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2491, %bb.bws
  %.pn.i.i.i.i131.i2480 = phi { ptr, i32 } [ %i.ije, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2491 ], [ %i.ijc, %bb.bws ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bwy

bb.bwy:                                           ; preds = %bb.bwx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2475
  %i.ijg = landingpad { ptr, i32 }
          catch ptr null
  %i.ijh = extractvalue { ptr, i32 } %i.ijg, 0
  call void @__clang_call_terminate(ptr %i.ijh) #44
  unreachable

bb.bwz:                                           ; preds = %.loopexit.i.i.i130.i2479
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i2493, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2477
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clIiEEDaSW_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i2472
  %i.iji = add i32 %.029.i.i.i.i2473, 1           ; 2 uses
  %exitcond.not.i.i.i129.i2478 = icmp eq i32 %i.iji, %i.ihy
  br i1 %exitcond.not.i.i.i129.i2478, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_EEvSA_T_.exit.i, label %.lr.ph.i.i.i124.i2472, !llvm.loop !1207

bb.bxa:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2393
  %i.ijj = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.ijk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ijl = load i32, ptr %i.ijk, align 4, !tbaa !370 ; 6 uses
  %i.ijm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ijn = load i32, ptr %i.ijm, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2396 = getelementptr inbounds nuw i8, ptr %96, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %96)
  store ptr %100, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2396, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2397 = getelementptr inbounds nuw i8, ptr %96, i64 24
  store ptr %99, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2397, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2398 = getelementptr inbounds nuw i8, ptr %96, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2398, align 8
  store i8 1, ptr %96, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2399 = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr %i.ijj, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2399, align 8
  %.not.i.i.i.i.i.i67.i2400 = icmp slt i32 %i.ijl, %i.ijn
  br i1 %.not.i.i.i.i.i.i67.i2400, label %bb.bxb, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bxb:                                           ; preds = %bb.bxa
  %i.ijo = add i32 %i.ijl, 63                     ; 2 uses
  %i.ijp = srem i32 %i.ijo, 64
  %i.ijq = sub nsw i32 %i.ijo, %i.ijp             ; 6 uses
  %i.ijr = and i32 %i.ijn, -64                    ; 4 uses
  %i.ijs = icmp slt i32 %i.ijr, %i.ijq
  br i1 %i.ijs, label %bb.bxc, label %bb.bxd

bb.bxc:                                           ; preds = %bb.bxb
  %i.ijt = ashr i32 %i.ijn, 6
  %i.iju = and i32 %i.ijn, 63
  %i.ijv = zext nneg i32 %i.iju to i64
  %notmask.i.i.i.i.i.i.i122.i2470 = shl nsw i64 -1, %i.ijv
  %i.ijw = xor i64 %notmask.i.i.i.i.i.i.i122.i2470, -1
  %i.ijx = sub nsw i32 %i.ijq, %i.ijl             ; 2 uses
  %i.ijy = zext nneg i32 %i.ijx to i64
  %notmask.i.i.i.i.i.i.i.i123.i2471 = shl nsw i64 -1, %i.ijy
  %i.ijz = xor i64 %notmask.i.i.i.i.i.i.i.i123.i2471, -1
  %i.ika = sub nsw i32 64, %i.ijx
  %i.ikb = zext nneg i32 %i.ika to i64
  %i.ikc = shl i64 %i.ijz, %i.ikb
  %i.ikd = and i64 %i.ikc, %i.ijw
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %96, i32 noundef %i.ijt, i64 noundef %i.ikd)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i

bb.bxd:                                           ; preds = %bb.bxb
  %.not32.i.i.i.i.i.i68.i2401 = icmp eq i32 %i.ijl, %i.ijq
  br i1 %.not32.i.i.i.i.i.i68.i2401, label %bb.bxf, label %bb.bxe

bb.bxe:                                           ; preds = %bb.bxd
  %i.ike = sdiv i32 %i.ijl, 64
  %i.ikf = sub nsw i32 %i.ijq, %i.ijl             ; 2 uses
  %i.ikg = zext nneg i32 %i.ikf to i64
  %notmask.i.i35.i.i.i.i.i.i69.i2402 = shl nsw i64 -1, %i.ikg
  %i.ikh = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i2402, -1
  %i.iki = sub nsw i32 64, %i.ikf
  %i.ikj = zext nneg i32 %i.iki to i64
  %i.ikk = shl i64 %i.ikh, %i.ikj
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %96, i32 noundef %i.ike, i64 noundef %i.ikk)
  br label %bb.bxf

bb.bxf:                                           ; preds = %bb.bxe, %bb.bxd
  %i.ikl = add nsw i32 %i.ijq, 64                 ; 2 uses
  %.not3352.i.i.i.i.i.i.i = icmp sgt i32 %i.ikl, %i.ijr
  br i1 %.not3352.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i72.i2405, label %.lr.ph.i.i.i.i.i.i70.i2403

._crit_edge.i.i.i.i.i.i72.i2405:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.bxf
  %.not34.i.i.i.i.i.i73.i2406 = icmp eq i32 %i.ijn, %i.ijr
  br i1 %.not34.i.i.i.i.i.i73.i2406, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiiSY_.exit.i.i.i.i, label %bb.byu

.lr.ph.i.i.i.i.i.i70.i2403:                       ; preds = %bb.bxf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.ikm = phi i32 [ %i.iqs, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.ikl, %bb.bxf ] ; 2 uses
  %.053.i.i.i.i.i.i.i = phi i32 [ %i.ikm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.ijq, %bb.bxf ] ; 2 uses
  %i.ikn = sdiv i32 %.053.i.i.i.i.i.i.i, 64       ; 3 uses
  %i.iko = sext i32 %i.ikn to i64
  %i.ikp = getelementptr inbounds [8 x i8], ptr %i.ijj, i64 %i.iko
  %i.ikq = load i64, ptr %i.ikp, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.ikq, label %.lr.ph.i.i.i.i10.i.i.i100.i2431 [
    i64 -1, label %bb.bxg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i2431:                  ; preds = %.lr.ph.i.i.i.i.i.i70.i2403
  %i.ikr = shl nsw i32 %i.ikn, 6
  br label %bb.bxy

bb.bxg:                                           ; preds = %.lr.ph.i.i.i.i.i.i70.i2403
  %i.iks = shl nsw i32 %i.ikn, 6                  ; 2 uses
  %i.ikt = add i32 %i.iks, 64
  %i.iku = sext i32 %i.ikt to i64
  %.0.off.i.i.i.i.i.i75.i2408 = add i32 %.053.i.i.i.i.i.i.i, 127
  %.not57.i.i.i.i.i.i.i76.i2409 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i2408, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i2409, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlbE_EEvSC_RKSG_SP_SQ_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISW_EEvSC_T_EUlSY_E_EEvSC_SY_SU_EUlSY_E_EEvPKmiibSY_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i2410

.lr.ph56.i.i.i.i.i.i.i77.i2410:                   ; preds = %bb.bxg
  %i.ikv = sext i32 %i.iks to i64
  br label %bb.bxh

bb.bxh:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i2410
  %.055.i.i.i.i.i.i.i78.i2411 = phi i64 [ %i.ikv, %.lr.ph56.i.i.i.i.i.i.i77.i2410 ], [ %i.imd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ikw = trunc i64 %.055.i.i.i.i.i.i.i78.i2411 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlbE_EEvS7_RKSB_SM_SN_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %100, i32 noundef %i.ikw)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.i.i.i.i.i.i.i.i unwind label %bb.bxi

bb.bxi:                                           ; preds = %bb.bxh
  %i.ikx = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.iky = extractvalue { ptr, i32 } %i.ikx, 0    ; 2 uses
  %i.ikz = extractvalue { ptr, i32 } %i.ikx, 1    ; 2 uses
  %i.ila = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.ilb = icmp eq i32 %i.ikz, %i.ila
  br i1 %i.ilb, label %bb.bxj, label %bb.bxk

bb.bxj:                                           ; preds = %bb.bxi
  %i.ilc = call ptr @__cxa_begin_catch(ptr %i.iky) #41
  %i.ild = getelementptr inbounds nuw i8, ptr %i.ilc, i64 8
  %i.ile = load ptr, ptr %i.ild, align 8, !tbaa !376 ; 2 uses
  %i.ilf = getelementptr inbounds nuw i8, ptr %i.ile, i64 144
  %i.ilg = load ptr, ptr %i.ilf, align 8, !tbaa !115 ; 4 uses
  %i.ilh = getelementptr inbounds nuw i8, ptr %i.ile, i64 152
  %i.ili = load i64, ptr %i.ilh, align 8, !tbaa !98
  %i.ilj = icmp eq i64 %i.ili, 4
  br i1 %i.ilj, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2418, label %.loopexit.i.i.i.i.i.i.i85.i2416

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2418:   ; preds = %bb.bxj
  %i.ilk = load i8, ptr %i.ilg, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2419 = icmp eq i8 %i.ilk, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2419, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2420, label %.loopexit.i.i.i.i.i.i.i85.i2416

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2420:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2418
  %i.ill = getelementptr inbounds nuw i8, ptr %i.ilg, i64 1
  %i.ilm = load i8, ptr %i.ill, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2421 = icmp eq i8 %i.ilm, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2421, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2422, label %.loopexit.i.i.i.i.i.i.i85.i2416

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2422:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2420
  %i.iln = getelementptr inbounds nuw i8, ptr %i.ilg, i64 2
  %i.ilo = load i8, ptr %i.iln, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2423 = icmp eq i8 %i.ilo, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2423, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2424, label %.loopexit.i.i.i.i.i.i.i85.i2416

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2424:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2422
  %i.ilp = getelementptr inbounds nuw i8, ptr %i.ilg, i64 3
  %i.ilq = load i8, ptr %i.ilp, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2425 = icmp eq i8 %i.ilq, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2425, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2426, label %.loopexit.i.i.i.i.i.i.i85.i2416

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2426:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2424
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %93) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ikw, ptr noundef nonnull align 8 dereferenceable(8) %93)
          to label %bb.bxr unwind label %bb.bxt

.loopexit.i.i.i.i.i.i.i85.i2416:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2424, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2422, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2420, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2418, %bb.bxj
  invoke void @__cxa_rethrow() #45
          to label %bb.bxx unwind label %bb.bxq

bb.bxk:                                           ; preds = %bb.bxi
  %i.ilr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.ils = icmp eq i32 %i.ikz, %i.ilr
  br i1 %i.ils, label %bb.bxl, label %common.resume

bb.bxl:                                           ; preds = %bb.bxk
  %i.ilt = call ptr @__cxa_begin_catch(ptr %i.iky) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %92) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ikw, ptr noundef nonnull align 8 dereferenceable(8) %92)
          to label %bb.bxm unwind label %bb.bxo

bb.bxm:                                           ; preds = %bb.bxl
  %i.ilu = load ptr, ptr %92, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i2414 = icmp eq ptr %i.ilu, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i2414, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2415, label %bb.bxn

bb.bxn:                                           ; preds = %bb.bxm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2415

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2415: ; preds = %bb.bxn, %bb.bxm
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedIbZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlbE_EEvSA_RKSE_SN_SO_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISU_EEvSA_T_EUlSW_E_EEvSA_SW_SS_ENKUlSW_E_clImEEDaSW_.exit.sink.split.i.i.i.i.i.i.i.i

bb.bxo:                                           ; preds = %bb.bxl
  %i.ilv = landingpad { ptr, i32 }
          cleanup
  %i.ilw = load ptr, ptr %92, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i2412 = icmp eq ptr %i.ilw, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i2412, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2413, label %bb.bxp

bb.bxp:                                           ; preds = %bb.bxo
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2413

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2413: ; preds = %bb.bxp, %bb.bxo
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bxw
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i2792 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i2797, %i.jdd
  br i1 %.not37.i.i.not.i.i.i.i.i2792, label %.lr.ph5713, label %.critedge.i.i.i.i.i.i.i2793, !llvm.loop !20

.lr.ph5713:                                       ; preds = %bb.ccv, %bb.ccw
  %indvars.iv.i.i.i.i.i27915712 = phi i64 [ %indvars.iv.next.i.i.i.i.i2797, %bb.ccw ], [ 0, %bb.ccv ] ; 2 uses
  %i.jde = lshr exact i64 %indvars.iv.i.i.i.i.i27915712, 3
  %i.jdf = getelementptr inbounds nuw i8, ptr %i.jdb, i64 %i.jde
  %i.jdg = load i64, ptr %i.jdf, align 8, !tbaa !219
  %i.jdh = icmp eq i64 %i.jdg, -1
  br i1 %i.jdh, label %bb.ccw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689, !llvm.loop !20

.critedge.i.i.i.i.i.i.i2793:                      ; preds = %bb.ccw, %bb.ccv
  %.not38.i.i.i.i.i.i.i2794 = icmp eq i32 %i.jcy, %i.jdc
  br i1 %.not38.i.i.i.i.i.i.i2794, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689, label %bb.ccx

bb.ccx:                                           ; preds = %.critedge.i.i.i.i.i.i.i2793
  %i.jdi = lshr i32 %i.jcy, 6
  %i.jdj = and i32 %i.jcy, 63
  %i.jdk = zext nneg i32 %i.jdj to i64
  %notmask.i40.i.i.i.i.i.i.i2795 = shl nsw i64 -1, %i.jdk
  %i.jdl = zext nneg i32 %i.jdi to i64
  %i.jdm = getelementptr inbounds nuw [8 x i8], ptr %i.jdb, i64 %i.jdl
  %i.jdn = load i64, ptr %i.jdm, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i2796 = or i64 %i.jdn, %notmask.i40.i.i.i.i.i.i.i2795
  %i.jdo = icmp eq i64 %.demorgan.i.i.i.i.i2796, -1
  %i.jdp = zext i1 %i.jdo to i16
  %i.jdq = or disjoint i16 %i.jdp, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689: ; preds = %.lr.ph5713, %bb.ccx, %.critedge.i.i.i.i.i.i.i2793, %bb.ccu, %bb.cct, %bb.ccs
  %.sroa.0.0.insert.ext.i.i.i.i.i2690 = phi i16 [ 256, %bb.cct ], [ 256, %bb.ccs ], [ 257, %bb.ccu ], [ 257, %.critedge.i.i.i.i.i.i.i2793 ], [ %i.jdq, %bb.ccx ], [ 256, %.lr.ph5713 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i2690, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 36), align 4
  %i.jdr = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i2690 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2691

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2691: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2798
  %i.jds = phi i32 [ %.pre.i.i.i2800, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2798 ], [ %i.jcw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689 ] ; 8 uses
  %.0.in.i.i.i.i.i2692 = phi i8 [ %.0.in.pre.i.i.i.i.i2799, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i2798 ], [ %i.jdr, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i2689 ]
  %.0.i.i.i.i36.i2693 = trunc nuw i8 %.0.in.i.i.i.i.i2692 to i1
  br i1 %.0.i.i.i.i36.i2693, label %bb.ccy, label %bb.cdp

bb.ccy:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2691
  %i.jdt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.jdu = icmp slt i32 %i.jds, %i.jdt
  br i1 %i.jdu, label %.lr.ph.i.i.i.i2766, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_EEvSB_T_.exit.i

.lr.ph.i.i.i.i2766:                               ; preds = %bb.ccy, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i
  %.019.i.i.i.i2767 = phi i32 [ %i.jfb, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i ], [ %i.jds, %bb.ccy ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %77)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %bb.ccz

bb.ccz:                                           ; preds = %.lr.ph.i.i.i.i2766
  %i.jdv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.jdw = extractvalue { ptr, i32 } %i.jdv, 0    ; 2 uses
  %i.jdx = extractvalue { ptr, i32 } %i.jdv, 1    ; 2 uses
  %i.jdy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.jdz = icmp eq i32 %i.jdx, %i.jdy
  br i1 %i.jdz, label %bb.cda, label %bb.cdb

bb.cda:                                           ; preds = %bb.ccz
  %i.jea = call ptr @__cxa_begin_catch(ptr %i.jdw) #41
  %i.jeb = getelementptr inbounds nuw i8, ptr %i.jea, i64 8
  %i.jec = load ptr, ptr %i.jeb, align 8, !tbaa !376 ; 2 uses
  %i.jed = getelementptr inbounds nuw i8, ptr %i.jec, i64 144
  %i.jee = load ptr, ptr %i.jed, align 8, !tbaa !115 ; 4 uses
  %i.jef = getelementptr inbounds nuw i8, ptr %i.jec, i64 152
  %i.jeg = load i64, ptr %i.jef, align 8, !tbaa !98
  %i.jeh = icmp eq i64 %i.jeg, 4
  br i1 %i.jeh, label %.lr.ph.i.i.i.i.preheader.i.i.i.i2777, label %.loopexit.i.i.i.i2775

.lr.ph.i.i.i.i.preheader.i.i.i.i2777:             ; preds = %bb.cda
  %i.jei = load i8, ptr %i.jee, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i2778 = icmp eq i8 %i.jei, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i2778, label %tailrecurse.i.i.i.i.i.i.i.i2779, label %.loopexit.i.i.i.i2775

tailrecurse.i.i.i.i.i.i.i.i2779:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i2777
  %i.jej = getelementptr inbounds nuw i8, ptr %i.jee, i64 1
  %i.jek = load i8, ptr %i.jej, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i2780 = icmp eq i8 %i.jek, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i2780, label %tailrecurse.i.i.i.i.1.i.i.i.i2781, label %.loopexit.i.i.i.i2775

tailrecurse.i.i.i.i.1.i.i.i.i2781:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i2779
  %i.jel = getelementptr inbounds nuw i8, ptr %i.jee, i64 2
  %i.jem = load i8, ptr %i.jel, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i2782 = icmp eq i8 %i.jem, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i2782, label %tailrecurse.i.i.i.i.2.i.i.i.i2783, label %.loopexit.i.i.i.i2775

tailrecurse.i.i.i.i.2.i.i.i.i2783:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i2781
  %i.jen = getelementptr inbounds nuw i8, ptr %i.jee, i64 3
  %i.jeo = load i8, ptr %i.jen, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i2784 = icmp eq i8 %i.jeo, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i2784, label %tailrecurse.i.i.i.i.3.i.i.i.i2785, label %.loopexit.i.i.i.i2775

tailrecurse.i.i.i.i.3.i.i.i.i2785:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2783
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %75) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2767, ptr noundef nonnull align 8 dereferenceable(8) %75)
          to label %bb.cdi unwind label %bb.cdk

.loopexit.i.i.i.i2775:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i2783, %tailrecurse.i.i.i.i.1.i.i.i.i2781, %tailrecurse.i.i.i.i.i.i.i.i2779, %.lr.ph.i.i.i.i.preheader.i.i.i.i2777, %bb.cda
  invoke void @__cxa_rethrow() #45
          to label %bb.cdo unwind label %bb.cdh

bb.cdb:                                           ; preds = %bb.ccz
  %i.jep = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.jeq = icmp eq i32 %i.jdx, %i.jep
  br i1 %i.jeq, label %bb.cdc, label %.body.i2682

bb.cdc:                                           ; preds = %bb.cdb
  %i.jer = call ptr @__cxa_begin_catch(ptr %i.jdw) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %74) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i2767, ptr noundef nonnull align 8 dereferenceable(8) %74)
          to label %bb.cdd unwind label %bb.cdf

bb.cdd:                                           ; preds = %bb.cdc
  %i.jes = load ptr, ptr %74, align 8, !tbaa !171
  %.not.i.i.i.i37.i2770 = icmp eq ptr %i.jes, null
  br i1 %.not.i.i.i.i37.i2770, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2771, label %bb.cde

bb.cde:                                           ; preds = %bb.cdd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %74) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2771

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2771: ; preds = %bb.cde, %bb.cdd
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cdf:                                           ; preds = %bb.cdc
  %i.jet = landingpad { ptr, i32 }
          cleanup
  %i.jeu = load ptr, ptr %74, align 8, !tbaa !171
  %.not.i4.i.i.i.i2768 = icmp eq ptr %i.jeu, null
  br i1 %.not.i4.i.i.i.i2768, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2769, label %bb.cdg

bb.cdg:                                           ; preds = %bb.cdf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %74) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2769

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2769: ; preds = %bb.cdg, %bb.cdf
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #41
  invoke void @__cxa_end_catch()
          to label %.body.i2682 unwind label %bb.cdn

bb.cdh:                                           ; preds = %.loopexit.i.i.i.i2775
  %i.jev = landingpad { ptr, i32 }
          cleanup
  br label %bb.cdm

bb.cdi:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2785
  %i.jew = load ptr, ptr %75, align 8, !tbaa !171
  %.not.i6.i.i.i.i2788 = icmp eq ptr %i.jew, null
  br i1 %.not.i6.i.i.i.i2788, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2789, label %bb.cdj

bb.cdj:                                           ; preds = %bb.cdi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %75) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2789

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2789: ; preds = %bb.cdj, %bb.cdi
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cdk:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i2785
  %i.jex = landingpad { ptr, i32 }
          cleanup
  %i.jey = load ptr, ptr %75, align 8, !tbaa !171
  %.not.i8.i.i.i.i2786 = icmp eq ptr %i.jey, null
  br i1 %.not.i8.i.i.i.i2786, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2787, label %bb.cdl

bb.cdl:                                           ; preds = %bb.cdk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %75) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2787

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2787: ; preds = %bb.cdl, %bb.cdk
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #41
  br label %bb.cdm

bb.cdm:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2787, %bb.cdh
  %.pn.i.i.i.i.i2776 = phi { ptr, i32 } [ %i.jex, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i2787 ], [ %i.jev, %bb.cdh ]
  invoke void @__cxa_end_catch()
          to label %.body.i2682 unwind label %bb.cdn

bb.cdn:                                           ; preds = %bb.cdm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i2769
  %i.jez = landingpad { ptr, i32 }
          catch ptr null
  %i.jfa = extractvalue { ptr, i32 } %i.jez, 0
  call void @__clang_call_terminate(ptr %i.jfa) #44
  unreachable

bb.cdo:                                           ; preds = %.loopexit.i.i.i.i2775
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i2789, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i2771
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %.loopexit.i2772

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2766, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i
  %i.jfb = add i32 %.019.i.i.i.i2767, 1           ; 2 uses
  %exitcond.not.i.i.i.i2774 = icmp eq i32 %i.jfb, %i.jdt
  br i1 %exitcond.not.i.i.i.i2774, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_EEvSB_T_.exit.i, label %.lr.ph.i.i.i.i2766, !llvm.loop !1217

bb.cdp:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i2691
  %i.jfc = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.jfd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i2694 = getelementptr inbounds nuw i8, ptr %73, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  store ptr %77, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i2694, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2695 = getelementptr inbounds nuw i8, ptr %73, i64 24
  store ptr %76, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2695, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2696 = getelementptr inbounds nuw i8, ptr %73, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i2696, align 8
  store i8 1, ptr %73, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i2697 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr %i.jfc, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i2697, align 8
  %.not.i.i.i.i.i.i.i2698 = icmp slt i32 %i.jds, %i.jfd
  br i1 %.not.i.i.i.i.i.i.i2698, label %bb.cdq, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.cdq:                                           ; preds = %bb.cdp
  %i.jfe = add i32 %i.jds, 63                     ; 2 uses
  %i.jff = srem i32 %i.jfe, 64
  %i.jfg = sub nsw i32 %i.jfe, %i.jff             ; 6 uses
  %i.jfh = and i32 %i.jfd, -64                    ; 4 uses
  %i.jfi = icmp slt i32 %i.jfh, %i.jfg
  br i1 %i.jfi, label %bb.cdr, label %bb.cds

bb.cdr:                                           ; preds = %bb.cdq
  %i.jfj = and i32 %i.jfd, 63
  %i.jfk = zext nneg i32 %i.jfj to i64
  %notmask.i.i.i.i.i.i.i.i2764 = shl nsw i64 -1, %i.jfk
  %i.jfl = xor i64 %notmask.i.i.i.i.i.i.i.i2764, -1
  %i.jfm = sub nsw i32 %i.jfg, %i.jds             ; 2 uses
  %i.jfn = zext nneg i32 %i.jfm to i64
  %notmask.i.i.i.i.i.i.i.i.i2765 = shl nsw i64 -1, %i.jfn
  %i.jfo = xor i64 %notmask.i.i.i.i.i.i.i.i.i2765, -1
  %i.jfp = sub nsw i32 64, %i.jfm
  %i.jfq = zext nneg i32 %i.jfp to i64
  %i.jfr = shl i64 %i.jfo, %i.jfq
  %i.jfs = and i64 %i.jfr, %i.jfl
  br label %.invoke.i2714

.invoke.i2714:                                    ; preds = %bb.cfd, %bb.cdr
  %i.jft = phi i64 [ %i.jfs, %bb.cdr ], [ %i.jjk, %bb.cfd ]
  %i.jfu = ashr i32 %i.jfd, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %73, i32 noundef %i.jfu, i64 noundef %i.jft)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2680

bb.cds:                                           ; preds = %bb.cdq
  %.not32.i.i.i.i.i.i.i2704 = icmp eq i32 %i.jds, %i.jfg
  br i1 %.not32.i.i.i.i.i.i.i2704, label %.noexc40.i2706, label %bb.cdt

bb.cdt:                                           ; preds = %bb.cds
  %i.jfv = sdiv i32 %i.jds, 64
  %i.jfw = sub nsw i32 %i.jfg, %i.jds             ; 2 uses
  %i.jfx = zext nneg i32 %i.jfw to i64
  %notmask.i.i35.i.i.i.i.i.i.i2705 = shl nsw i64 -1, %i.jfx
  %i.jfy = xor i64 %notmask.i.i35.i.i.i.i.i.i.i2705, -1
  %i.jfz = sub nsw i32 64, %i.jfw
  %i.jga = zext nneg i32 %i.jfz to i64
  %i.jgb = shl i64 %i.jfy, %i.jga
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %73, i32 noundef %i.jfv, i64 noundef %i.jgb)
          to label %.noexc40.i2706 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i2680

.noexc40.i2706:                                   ; preds = %bb.cdt, %bb.cds
  %i.jgc = add nsw i32 %i.jfg, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i2707 = icmp sgt i32 %i.jgc, %i.jfh
  br i1 %.not3346.i.i.i.i.i.i.i2707, label %._crit_edge.i.i.i.i.i.i.i2711, label %.lr.ph.i.i.i.i.i.i.i2708

._crit_edge.i.i.i.i.i.i.i2711:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i2706
  %.not34.i.i.i.i.i.i.i2712 = icmp eq i32 %i.jfd, %i.jfh
  br i1 %.not34.i.i.i.i.i.i.i2712, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, label %bb.cfd

.lr.ph.i.i.i.i.i.i.i2708:                         ; preds = %.noexc40.i2706, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.jgd = phi i32 [ %i.jjh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.jgc, %.noexc40.i2706 ] ; 2 uses
  %.047.i.i.i.i.i.i.i2709 = phi i32 [ %i.jgd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.jfg, %.noexc40.i2706 ] ; 2 uses
  %i.jge = sdiv i32 %.047.i.i.i.i.i.i.i2709, 64   ; 3 uses
  %i.jgf = sext i32 %i.jge to i64
  %i.jgg = getelementptr inbounds [8 x i8], ptr %i.jfc, i64 %i.jgf
  %i.jgh = load i64, ptr %i.jgg, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.jgh, label %.lr.ph.i.i.i.i10.i.i.i.i2740 [
    i64 -1, label %bb.cdu
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i2740:                     ; preds = %.lr.ph.i.i.i.i.i.i.i2708
  %i.jgi = shl nsw i32 %i.jge, 6
  br label %bb.cem

bb.cdu:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i2708
  %i.jgj = shl nsw i32 %i.jge, 6                  ; 2 uses
  %i.jgk = add i32 %i.jgj, 64
  %i.jgl = sext i32 %i.jgk to i64
  %.0.off.i.i.i.i.i.i.i2715 = add i32 %.047.i.i.i.i.i.i.i2709, 127
  %.not57.i.i.i.i.i.i.i.i2716 = icmp ult i32 %.0.off.i.i.i.i.i.i.i2715, 64
  br i1 %.not57.i.i.i.i.i.i.i.i2716, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i2717

.lr.ph56.i.i.i.i.i.i.i.i2717:                     ; preds = %bb.cdu
  %i.jgm = sext i32 %i.jgj to i64
  br label %bb.cdv

bb.cdv:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i2717
  %.055.i.i.i.i.i.i.i.i2718 = phi i64 [ %i.jgm, %.lr.ph56.i.i.i.i.i.i.i.i2717 ], [ %i.jhu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jgn = trunc i64 %.055.i.i.i.i.i.i.i.i2718 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %77)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i unwind label %bb.cdw

bb.cdw:                                           ; preds = %bb.cdv
  %i.jgo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.jgp = extractvalue { ptr, i32 } %i.jgo, 0    ; 2 uses
  %i.jgq = extractvalue { ptr, i32 } %i.jgo, 1    ; 2 uses
  %i.jgr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.jgs = icmp eq i32 %i.jgq, %i.jgr
  br i1 %i.jgs, label %bb.cdx, label %bb.cdy

bb.cdx:                                           ; preds = %bb.cdw
  %i.jgt = call ptr @__cxa_begin_catch(ptr %i.jgp) #41
  %i.jgu = getelementptr inbounds nuw i8, ptr %i.jgt, i64 8
  %i.jgv = load ptr, ptr %i.jgu, align 8, !tbaa !376 ; 2 uses
  %i.jgw = getelementptr inbounds nuw i8, ptr %i.jgv, i64 144
  %i.jgx = load ptr, ptr %i.jgw, align 8, !tbaa !115 ; 4 uses
  %i.jgy = getelementptr inbounds nuw i8, ptr %i.jgv, i64 152
  %i.jgz = load i64, ptr %i.jgy, align 8, !tbaa !98
  %i.jha = icmp eq i64 %i.jgz, 4
  br i1 %i.jha, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2727, label %.loopexit.i.i.i.i.i.i.i.i2725

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2727:     ; preds = %bb.cdx
  %i.jhb = load i8, ptr %i.jgx, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2728 = icmp eq i8 %i.jhb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i2728, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2729, label %.loopexit.i.i.i.i.i.i.i.i2725

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2729:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2727
  %i.jhc = getelementptr inbounds nuw i8, ptr %i.jgx, i64 1
  %i.jhd = load i8, ptr %i.jhc, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2730 = icmp eq i8 %i.jhd, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i2730, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2731, label %.loopexit.i.i.i.i.i.i.i.i2725

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2731:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2729
  %i.jhe = getelementptr inbounds nuw i8, ptr %i.jgx, i64 2
  %i.jhf = load i8, ptr %i.jhe, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2732 = icmp eq i8 %i.jhf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i2732, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2733, label %.loopexit.i.i.i.i.i.i.i.i2725

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2733:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2731
  %i.jhg = getelementptr inbounds nuw i8, ptr %i.jgx, i64 3
  %i.jhh = load i8, ptr %i.jhg, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2734 = icmp eq i8 %i.jhh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i2734, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2735, label %.loopexit.i.i.i.i.i.i.i.i2725

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i2735:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2733
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %70) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.jgn, ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %bb.cef unwind label %bb.ceh

.loopexit.i.i.i.i.i.i.i.i2725:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i2733, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i2731, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i2729, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i2727, %bb.cdx
  invoke void @__cxa_rethrow() #45
          to label %bb.cel unwind label %bb.cee

bb.cdy:                                           ; preds = %bb.cdw
  %i.jhi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.jhj = icmp eq i32 %i.jgq, %i.jhi
  br i1 %i.jhj, label %bb.cdz, label %.body.i2682

bb.cdz:                                           ; preds = %bb.cdy
  %i.jhk = call ptr @__cxa_begin_catch(ptr %i.jgp) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %69) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.jgn, ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %bb.cea unwind label %bb.cec

bb.cea:                                           ; preds = %bb.cdz
  %i.jhl = load ptr, ptr %69, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i2721 = icmp eq ptr %i.jhl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i2721, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2722, label %bb.ceb

bb.ceb:                                           ; preds = %bb.cea
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %69) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2722

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i2722: ; preds = %bb.ceb, %bb.cea
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i

bb.cec:                                           ; preds = %bb.cdz
  %i.jhm = landingpad { ptr, i32 }
          cleanup
  %i.jhn = load ptr, ptr %69, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i2719 = icmp eq ptr %i.jhn, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i2719, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2720, label %bb.ced

bb.ced:                                           ; preds = %bb.cec
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %69) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2720

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i2720: ; preds = %bb.ced, %bb.cec
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #41
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i149.i, label %.lr.ph5710, label %.critedge.i.i.i.i.i.i150.i, !llvm.loop !20

.lr.ph5710:                                       ; preds = %bb.cgh, %bb.cgi
  %indvars.iv.i.i.i.i148.i5709 = phi i64 [ %indvars.iv.next.i.i.i.i154.i, %bb.cgi ], [ 0, %bb.cgh ] ; 2 uses
  %i.jna = lshr exact i64 %indvars.iv.i.i.i.i148.i5709, 3
  %i.jnb = getelementptr inbounds nuw i8, ptr %i.jmx, i64 %i.jna
  %i.jnc = load i64, ptr %i.jnb, align 8, !tbaa !219
  %i.jnd = icmp eq i64 %i.jnc, -1
  br i1 %i.jnd, label %bb.cgi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667, !llvm.loop !20

.critedge.i.i.i.i.i.i150.i:                       ; preds = %bb.cgi, %bb.cgh
  %.not38.i.i.i.i.i.i151.i = icmp eq i32 %i.jmt, %i.jmy
  br i1 %.not38.i.i.i.i.i.i151.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667, label %bb.cgj

bb.cgj:                                           ; preds = %.critedge.i.i.i.i.i.i150.i
  %i.jne = lshr i32 %i.jmt, 6
  %i.jnf = and i32 %i.jmt, 63
  %i.jng = zext nneg i32 %i.jnf to i64
  %notmask.i40.i.i.i.i.i.i152.i = shl nsw i64 -1, %i.jng
  %i.jnh = zext nneg i32 %i.jne to i64
  %i.jni = getelementptr inbounds nuw [8 x i8], ptr %i.jmx, i64 %i.jnh
  %i.jnj = load i64, ptr %i.jni, align 8, !tbaa !219
  %.demorgan.i.i.i.i153.i = or i64 %i.jnj, %notmask.i40.i.i.i.i.i.i152.i
  %i.jnk = icmp eq i64 %.demorgan.i.i.i.i153.i, -1
  %i.jnl = zext i1 %i.jnk to i16
  %i.jnm = or disjoint i16 %i.jnl, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667: ; preds = %.lr.ph5710, %bb.cgj, %.critedge.i.i.i.i.i.i150.i, %bb.cgg, %bb.cgf, %bb.cge
  %.sroa.0.0.insert.ext.i.i.i.i59.i2668 = phi i16 [ 256, %bb.cgf ], [ 256, %bb.cge ], [ 257, %bb.cgg ], [ 257, %.critedge.i.i.i.i.i.i150.i ], [ %i.jnm, %bb.cgj ], [ 256, %.lr.ph5710 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2668, ptr %i.jml, align 4
  %i.jnn = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2668 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2669

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2669: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i155.i
  %.0.in.i.i.i.i61.i2670 = phi i8 [ %.0.in.pre.i.i.i.i156.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i155.i ], [ %i.jnn, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2667 ]
  %.0.i.i.i.i62.i2671 = trunc nuw i8 %.0.in.i.i.i.i61.i2670 to i1
  br i1 %.0.i.i.i.i62.i2671, label %bb.cgk, label %bb.chb

bb.cgk:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2669
  %i.jno = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jnp = load i32, ptr %i.jno, align 8, !tbaa !324 ; 2 uses
  %i.jnq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jnr = load i32, ptr %i.jnq, align 4, !tbaa !370 ; 2 uses
  %i.jns = icmp slt i32 %i.jnr, %i.jnp
  br i1 %i.jns, label %.lr.ph.i.i.i126.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i

.lr.ph.i.i.i126.i:                                ; preds = %bb.cgk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i
  %.029.i.i.i.i2679 = phi i32 [ %i.joz, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i ], [ %i.jnr, %bb.cgk ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %67, i32 noundef %.029.i.i.i.i2679)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %bb.cgl

bb.cgl:                                           ; preds = %.lr.ph.i.i.i126.i
  %i.jnt = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.jnu = extractvalue { ptr, i32 } %i.jnt, 0    ; 2 uses
  %i.jnv = extractvalue { ptr, i32 } %i.jnt, 1    ; 2 uses
  %i.jnw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.jnx = icmp eq i32 %i.jnv, %i.jnw
  br i1 %i.jnx, label %bb.cgm, label %bb.cgn

bb.cgm:                                           ; preds = %bb.cgl
  %i.jny = call ptr @__cxa_begin_catch(ptr %i.jnu) #41
  %i.jnz = getelementptr inbounds nuw i8, ptr %i.jny, i64 8
  %i.joa = load ptr, ptr %i.jnz, align 8, !tbaa !376 ; 2 uses
  %i.job = getelementptr inbounds nuw i8, ptr %i.joa, i64 144
  %i.joc = load ptr, ptr %i.job, align 8, !tbaa !115 ; 4 uses
  %i.jod = getelementptr inbounds nuw i8, ptr %i.joa, i64 152
  %i.joe = load i64, ptr %i.jod, align 8, !tbaa !98
  %i.jof = icmp eq i64 %i.joe, 4
  br i1 %i.jof, label %.lr.ph.i.i.i.i.preheader.i.i.i134.i, label %.loopexit.i.i.i132.i

.lr.ph.i.i.i.i.preheader.i.i.i134.i:              ; preds = %bb.cgm
  %i.jog = load i8, ptr %i.joc, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i135.i = icmp eq i8 %i.jog, 85
  br i1 %or.cond.not.i.i.i.i.i.i135.i, label %tailrecurse.i.i.i.i.i.i.i136.i, label %.loopexit.i.i.i132.i

tailrecurse.i.i.i.i.i.i.i136.i:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i134.i
  %i.joh = getelementptr inbounds nuw i8, ptr %i.joc, i64 1
  %i.joi = load i8, ptr %i.joh, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i137.i = icmp eq i8 %i.joi, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i137.i, label %tailrecurse.i.i.i.i.1.i.i.i138.i, label %.loopexit.i.i.i132.i

tailrecurse.i.i.i.i.1.i.i.i138.i:                 ; preds = %tailrecurse.i.i.i.i.i.i.i136.i
  %i.joj = getelementptr inbounds nuw i8, ptr %i.joc, i64 2
  %i.jok = load i8, ptr %i.joj, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i139.i = icmp eq i8 %i.jok, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i139.i, label %tailrecurse.i.i.i.i.2.i.i.i140.i, label %.loopexit.i.i.i132.i

tailrecurse.i.i.i.i.2.i.i.i140.i:                 ; preds = %tailrecurse.i.i.i.i.1.i.i.i138.i
  %i.jol = getelementptr inbounds nuw i8, ptr %i.joc, i64 3
  %i.jom = load i8, ptr %i.jol, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i141.i = icmp eq i8 %i.jom, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i141.i, label %tailrecurse.i.i.i.i.3.i.i.i142.i, label %.loopexit.i.i.i132.i

tailrecurse.i.i.i.i.3.i.i.i142.i:                 ; preds = %tailrecurse.i.i.i.i.2.i.i.i140.i
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %65) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2679, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.cgu unwind label %bb.cgw

.loopexit.i.i.i132.i:                             ; preds = %tailrecurse.i.i.i.i.2.i.i.i140.i, %tailrecurse.i.i.i.i.1.i.i.i138.i, %tailrecurse.i.i.i.i.i.i.i136.i, %.lr.ph.i.i.i.i.preheader.i.i.i134.i, %bb.cgm
  invoke void @__cxa_rethrow() #45
          to label %bb.cha unwind label %bb.cgt

bb.cgn:                                           ; preds = %bb.cgl
  %i.jon = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.joo = icmp eq i32 %i.jnv, %i.jon
  br i1 %i.joo, label %bb.cgo, label %common.resume

bb.cgo:                                           ; preds = %bb.cgn
  %i.jop = call ptr @__cxa_begin_catch(ptr %i.jnu) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %64) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2679, ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %bb.cgp unwind label %bb.cgr

bb.cgp:                                           ; preds = %bb.cgo
  %i.joq = load ptr, ptr %64, align 8, !tbaa !171
  %.not.i.i.i.i129.i = icmp eq ptr %i.joq, null
  br i1 %.not.i.i.i.i129.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i130.i, label %bb.cgq

bb.cgq:                                           ; preds = %bb.cgp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %64) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i130.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i130.i: ; preds = %bb.cgq, %bb.cgp
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cgr:                                           ; preds = %bb.cgo
  %i.jor = landingpad { ptr, i32 }
          cleanup
  %i.jos = load ptr, ptr %64, align 8, !tbaa !171
  %.not.i4.i.i.i127.i = icmp eq ptr %i.jos, null
  br i1 %.not.i4.i.i.i127.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i, label %bb.cgs

bb.cgs:                                           ; preds = %bb.cgr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %64) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i: ; preds = %bb.cgs, %bb.cgr
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cgz

bb.cgt:                                           ; preds = %.loopexit.i.i.i132.i
  %i.jot = landingpad { ptr, i32 }
          cleanup
  br label %bb.cgy

bb.cgu:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i142.i
  %i.jou = load ptr, ptr %65, align 8, !tbaa !171
  %.not.i6.i.i.i145.i = icmp eq ptr %i.jou, null
  br i1 %.not.i6.i.i.i145.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i146.i, label %bb.cgv

bb.cgv:                                           ; preds = %bb.cgu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %65) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i146.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i146.i: ; preds = %bb.cgv, %bb.cgu
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cgw:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i142.i
  %i.jov = landingpad { ptr, i32 }
          cleanup
  %i.jow = load ptr, ptr %65, align 8, !tbaa !171
  %.not.i8.i.i.i143.i = icmp eq ptr %i.jow, null
  br i1 %.not.i8.i.i.i143.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i144.i, label %bb.cgx

bb.cgx:                                           ; preds = %bb.cgw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %65) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i144.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i144.i: ; preds = %bb.cgx, %bb.cgw
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #41
  br label %bb.cgy

bb.cgy:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i144.i, %bb.cgt
  %.pn.i.i.i.i133.i = phi { ptr, i32 } [ %i.jov, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i144.i ], [ %i.jot, %bb.cgt ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cgz

bb.cgz:                                           ; preds = %bb.cgy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i128.i
  %i.jox = landingpad { ptr, i32 }
          catch ptr null
  %i.joy = extractvalue { ptr, i32 } %i.jox, 0
  call void @__clang_call_terminate(ptr %i.joy) #44
  unreachable

bb.cha:                                           ; preds = %.loopexit.i.i.i132.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i146.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i130.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i126.i
  %i.joz = add i32 %.029.i.i.i.i2679, 1           ; 2 uses
  %exitcond.not.i.i.i131.i = icmp eq i32 %i.joz, %i.jnp
  br i1 %exitcond.not.i.i.i131.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i, label %.lr.ph.i.i.i126.i, !llvm.loop !1226

bb.chb:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2669
  %i.jpa = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.jpb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jpc = load i32, ptr %i.jpb, align 4, !tbaa !370 ; 6 uses
  %i.jpd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jpe = load i32, ptr %i.jpd, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2672 = getelementptr inbounds nuw i8, ptr %63, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  store ptr %67, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2672, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2673 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store ptr %66, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2673, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2674 = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2674, align 8
  store i8 1, ptr %63, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2675 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr %i.jpa, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2675, align 8
  %.not.i.i.i.i.i.i67.i2676 = icmp slt i32 %i.jpc, %i.jpe
  br i1 %.not.i.i.i.i.i.i67.i2676, label %bb.chc, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.chc:                                           ; preds = %bb.chb
  %i.jpf = add i32 %i.jpc, 63                     ; 2 uses
  %i.jpg = srem i32 %i.jpf, 64
  %i.jph = sub nsw i32 %i.jpf, %i.jpg             ; 6 uses
  %i.jpi = and i32 %i.jpe, -64                    ; 4 uses
  %i.jpj = icmp slt i32 %i.jpi, %i.jph
  br i1 %i.jpj, label %bb.chd, label %bb.che

bb.chd:                                           ; preds = %bb.chc
  %i.jpk = ashr i32 %i.jpe, 6
  %i.jpl = and i32 %i.jpe, 63
  %i.jpm = zext nneg i32 %i.jpl to i64
  %notmask.i.i.i.i.i.i.i124.i = shl nsw i64 -1, %i.jpm
  %i.jpn = xor i64 %notmask.i.i.i.i.i.i.i124.i, -1
  %i.jpo = sub nsw i32 %i.jph, %i.jpc             ; 2 uses
  %i.jpp = zext nneg i32 %i.jpo to i64
  %notmask.i.i.i.i.i.i.i.i125.i = shl nsw i64 -1, %i.jpp
  %i.jpq = xor i64 %notmask.i.i.i.i.i.i.i.i125.i, -1
  %i.jpr = sub nsw i32 64, %i.jpo
  %i.jps = zext nneg i32 %i.jpr to i64
  %i.jpt = shl i64 %i.jpq, %i.jps
  %i.jpu = and i64 %i.jpt, %i.jpn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %63, i32 noundef %i.jpk, i64 noundef %i.jpu)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.che:                                           ; preds = %bb.chc
  %.not32.i.i.i.i.i.i68.i2677 = icmp eq i32 %i.jpc, %i.jph
  br i1 %.not32.i.i.i.i.i.i68.i2677, label %bb.chg, label %bb.chf

bb.chf:                                           ; preds = %bb.che
  %i.jpv = sdiv i32 %i.jpc, 64
  %i.jpw = sub nsw i32 %i.jph, %i.jpc             ; 2 uses
  %i.jpx = zext nneg i32 %i.jpw to i64
  %notmask.i.i35.i.i.i.i.i.i69.i2678 = shl nsw i64 -1, %i.jpx
  %i.jpy = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i2678, -1
  %i.jpz = sub nsw i32 64, %i.jpw
  %i.jqa = zext nneg i32 %i.jpz to i64
  %i.jqb = shl i64 %i.jpy, %i.jqa
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %63, i32 noundef %i.jpv, i64 noundef %i.jqb)
  br label %bb.chg

bb.chg:                                           ; preds = %bb.chf, %bb.che
  %i.jqc = add nsw i32 %i.jph, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i70.i = icmp sgt i32 %i.jqc, %i.jpi
  br i1 %.not3346.i.i.i.i.i.i70.i, label %._crit_edge.i.i.i.i.i.i74.i, label %.lr.ph.i.i.i.i.i.i71.i

._crit_edge.i.i.i.i.i.i74.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.chg
  %.not34.i.i.i.i.i.i75.i = icmp eq i32 %i.jpe, %i.jpi
  br i1 %.not34.i.i.i.i.i.i75.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, label %bb.ciq

.lr.ph.i.i.i.i.i.i71.i:                           ; preds = %bb.chg, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.jqd = phi i32 [ %i.jth, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.jqc, %bb.chg ] ; 2 uses
  %.047.i.i.i.i.i.i72.i = phi i32 [ %i.jqd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.jph, %bb.chg ] ; 2 uses
  %i.jqe = sdiv i32 %.047.i.i.i.i.i.i72.i, 64     ; 3 uses
  %i.jqf = sext i32 %i.jqe to i64
  %i.jqg = getelementptr inbounds [8 x i8], ptr %i.jpa, i64 %i.jqf
  %i.jqh = load i64, ptr %i.jqg, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.jqh, label %.lr.ph.i.i.i.i10.i.i.i102.i [
    i64 -1, label %bb.chh
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i102.i:                      ; preds = %.lr.ph.i.i.i.i.i.i71.i
  %i.jqi = shl nsw i32 %i.jqe, 6
  br label %bb.chz

bb.chh:                                           ; preds = %.lr.ph.i.i.i.i.i.i71.i
  %i.jqj = shl nsw i32 %i.jqe, 6                  ; 2 uses
  %i.jqk = add i32 %i.jqj, 64
  %i.jql = sext i32 %i.jqk to i64
  %.0.off.i.i.i.i.i.i77.i = add i32 %.047.i.i.i.i.i.i72.i, 127
  %.not57.i.i.i.i.i.i.i78.i = icmp ult i32 %.0.off.i.i.i.i.i.i77.i, 64
  br i1 %.not57.i.i.i.i.i.i.i78.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i79.i

.lr.ph56.i.i.i.i.i.i.i79.i:                       ; preds = %bb.chh
  %i.jqm = sext i32 %i.jqj to i64
  br label %bb.chi

bb.chi:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i79.i
  %.055.i.i.i.i.i.i.i80.i = phi i64 [ %i.jqm, %.lr.ph56.i.i.i.i.i.i.i79.i ], [ %i.jru, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jqn = trunc i64 %.055.i.i.i.i.i.i.i80.i to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %67, i32 noundef %i.jqn)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i unwind label %bb.chj

bb.chj:                                           ; preds = %bb.chi
  %i.jqo = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.jqp = extractvalue { ptr, i32 } %i.jqo, 0    ; 2 uses
  %i.jqq = extractvalue { ptr, i32 } %i.jqo, 1    ; 2 uses
  %i.jqr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.jqs = icmp eq i32 %i.jqq, %i.jqr
  br i1 %i.jqs, label %bb.chk, label %bb.chl

bb.chk:                                           ; preds = %bb.chj
  %i.jqt = call ptr @__cxa_begin_catch(ptr %i.jqp) #41
  %i.jqu = getelementptr inbounds nuw i8, ptr %i.jqt, i64 8
  %i.jqv = load ptr, ptr %i.jqu, align 8, !tbaa !376 ; 2 uses
  %i.jqw = getelementptr inbounds nuw i8, ptr %i.jqv, i64 144
  %i.jqx = load ptr, ptr %i.jqw, align 8, !tbaa !115 ; 4 uses
  %i.jqy = getelementptr inbounds nuw i8, ptr %i.jqv, i64 152
  %i.jqz = load i64, ptr %i.jqy, align 8, !tbaa !98
  %i.jra = icmp eq i64 %i.jqz, 4
  br i1 %i.jra, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i89.i, label %.loopexit.i.i.i.i.i.i.i87.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i89.i:       ; preds = %bb.chk
  %i.jrb = load i8, ptr %i.jqx, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i90.i = icmp eq i8 %i.jrb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i90.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i91.i, label %.loopexit.i.i.i.i.i.i.i87.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i91.i:            ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i89.i
  %i.jrc = getelementptr inbounds nuw i8, ptr %i.jqx, i64 1
  %i.jrd = load i8, ptr %i.jrc, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i92.i = icmp eq i8 %i.jrd, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i92.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i93.i, label %.loopexit.i.i.i.i.i.i.i87.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i93.i:          ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i91.i
  %i.jre = getelementptr inbounds nuw i8, ptr %i.jqx, i64 2
  %i.jrf = load i8, ptr %i.jre, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i94.i = icmp eq i8 %i.jrf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i94.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i95.i, label %.loopexit.i.i.i.i.i.i.i87.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i95.i:          ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i93.i
  %i.jrg = getelementptr inbounds nuw i8, ptr %i.jqx, i64 3
  %i.jrh = load i8, ptr %i.jrg, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i96.i = icmp eq i8 %i.jrh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i96.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i97.i, label %.loopexit.i.i.i.i.i.i.i87.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i97.i:          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i95.i
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %60) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.jqn, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %bb.chs unwind label %bb.chu

.loopexit.i.i.i.i.i.i.i87.i:                      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i95.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i93.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i91.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i89.i, %bb.chk
  invoke void @__cxa_rethrow() #45
          to label %bb.chy unwind label %bb.chr

bb.chl:                                           ; preds = %bb.chj
  %i.jri = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.jrj = icmp eq i32 %i.jqq, %i.jri
  br i1 %i.jrj, label %bb.chm, label %common.resume

bb.chm:                                           ; preds = %bb.chl
  %i.jrk = call ptr @__cxa_begin_catch(ptr %i.jqp) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %59) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.jqn, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.chn unwind label %bb.chp

bb.chn:                                           ; preds = %bb.chm
  %i.jrl = load ptr, ptr %59, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i85.i = icmp eq ptr %i.jrl, null
  br i1 %.not.i.i.i.i.i.i.i.i85.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i86.i, label %bb.cho

bb.cho:                                           ; preds = %bb.chn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %59) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i86.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i86.i: ; preds = %bb.cho, %bb.chn
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i

bb.chp:                                           ; preds = %bb.chm
  %i.jrm = landingpad { ptr, i32 }
          cleanup
  %i.jrn = load ptr, ptr %59, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i83.i = icmp eq ptr %i.jrn, null
  br i1 %.not.i19.i.i.i.i.i.i.i83.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i84.i, label %bb.chq

bb.chq:                                           ; preds = %bb.chp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %59) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i84.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i84.i: ; preds = %bb.chq, %bb.chp
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.chx
end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.jsy = load ptr, ptr %61, align 8, !tbaa !171
  %.not.i32.i.i.i.i.i.i.i104.i = icmp eq ptr %i.jsy, null
  br i1 %.not.i32.i.i.i.i.i.i.i104.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i, label %bb.cih

bb.cih:                                           ; preds = %bb.cig
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %61) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i: ; preds = %bb.cih, %bb.cig
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cio

bb.cii:                                           ; preds = %.loopexit40.i.i.i.i.i.i.i109.i
  %i.jsz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cin

bb.cij:                                           ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i119.i
  %i.jta = load ptr, ptr %62, align 8, !tbaa !171
  %.not.i34.i.i.i.i.i.i.i122.i = icmp eq ptr %i.jta, null
  br i1 %.not.i34.i.i.i.i.i.i.i122.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i123.i, label %bb.cik

bb.cik:                                           ; preds = %bb.cij
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %62) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i123.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i123.i: ; preds = %bb.cik, %bb.cij
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i

bb.cil:                                           ; preds = %tailrecurse.i.i.i.i28.3.i.i.i.i.i.i.i119.i
  %i.jtb = landingpad { ptr, i32 }
          cleanup
  %i.jtc = load ptr, ptr %62, align 8, !tbaa !171
  %.not.i36.i.i.i.i.i.i.i120.i = icmp eq ptr %i.jtc, null
  br i1 %.not.i36.i.i.i.i.i.i.i120.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i121.i, label %bb.cim

bb.cim:                                           ; preds = %bb.cil
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %62) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i121.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i121.i: ; preds = %bb.cim, %bb.cil
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #41
  br label %bb.cin

bb.cin:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i121.i, %bb.cii
  %.pn.i.i.i.i.i.i.i.i110.i = phi { ptr, i32 } [ %i.jtb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit37.i.i.i.i.i.i.i121.i ], [ %i.jsz, %bb.cii ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cio

bb.cio:                                           ; preds = %bb.cin, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i105.i
  %i.jtd = landingpad { ptr, i32 }
          catch ptr null
  %i.jte = extractvalue { ptr, i32 } %i.jtd, 0
  call void @__clang_call_terminate(ptr %i.jte) #44
  unreachable

bb.cip:                                           ; preds = %.loopexit40.i.i.i.i.i.i.i109.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit35.i.i.i.i.i.i.i123.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit31.i.i.i.i.i.i.i107.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i, %bb.chz
  %i.jtf = add i64 %.01554.i.i.i.i.i.i.i103.i, -1
  %i.jtg = and i64 %i.jtf, %.01554.i.i.i.i.i.i.i103.i ; 2 uses
  %.not.i.i.i.i.i.i.i108.i = icmp eq i64 %i.jtg, 0
  br i1 %.not.i.i.i.i.i.i.i108.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.chz, !llvm.loop !1228

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i.i.i.i.i, %bb.chh, %.lr.ph.i.i.i.i.i.i71.i
  %i.jth = add nsw i32 %i.jqd, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i73.i = icmp sgt i32 %i.jth, %i.jpi
  br i1 %.not33.i.i.i.i.i.i73.i, label %._crit_edge.i.i.i.i.i.i74.i, label %.lr.ph.i.i.i.i.i.i71.i, !llvm.loop !1229

bb.ciq:                                           ; preds = %._crit_edge.i.i.i.i.i.i74.i
  %i.jti = ashr i32 %i.jpe, 6
  %i.jtj = and i32 %i.jpe, 63
  %i.jtk = zext nneg i32 %i.jtj to i64
  %notmask.i36.i.i.i.i.i.i76.i = shl nsw i64 -1, %i.jtk
  %i.jtl = xor i64 %notmask.i36.i.i.i.i.i.i76.i, -1
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %63, i32 noundef %i.jti, i64 noundef %i.jtl)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i: ; preds = %bb.ciq, %._crit_edge.i.i.i.i.i.i74.i, %bb.chd, %bb.chb
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  br label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i

_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, %bb.cgk
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  call void @llvm.lifetime.end.p0(ptr nonnull %66)
  br label %bb.clw

bb.cir:                                           ; preds = %bb.cfq
  %i.jtm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %81) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %82) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  br label %bb.clx

bb.cis:                                           ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i2655
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  store ptr %356, ptr %58, align 8
  %.sroa.422.0..sroa_idx.i2657 = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 4 uses
  store ptr %i.l, ptr %.sroa.422.0..sroa_idx.i2657, align 8
  %.sroa.523.0..sroa_idx.i2658 = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  store ptr %i.n, ptr %.sroa.523.0..sroa_idx.i2658, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  %i.jtn = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.jto = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.jtp = load i8, ptr %i.jto, align 1, !tbaa !371, !range !173, !noundef !174
  %i.jtq = trunc nuw i8 %i.jtp to i1
  br i1 %i.jtq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i254.i, label %bb.cit

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i254.i: ; preds = %bb.cis
  %.0.in.pre.i.i.i.i255.i = load i8, ptr %i.jtn, align 4, !tbaa !119, !range !173
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i159.i

bb.cit:                                           ; preds = %bb.cis
  %i.jtr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jts = load i32, ptr %i.jtr, align 4, !tbaa !370
  %i.jtt = icmp eq i32 %i.jts, 0
  br i1 %i.jtt, label %bb.ciu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i

bb.ciu:                                           ; preds = %bb.cit
  %i.jtu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jtv = load i32, ptr %i.jtu, align 8, !tbaa !324 ; 6 uses
  %i.jtw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jtx = load i32, ptr %i.jtw, align 8, !tbaa !372
  %i.jty = icmp eq i32 %i.jtv, %i.jtx
  br i1 %i.jty, label %bb.civ, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i

bb.civ:                                           ; preds = %bb.ciu
  %i.jtz = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %.not.i.i.i.i.i246.i = icmp sgt i32 %i.jtv, 0
  br i1 %.not.i.i.i.i.i246.i, label %bb.ciw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i

bb.ciw:                                           ; preds = %bb.civ
  %i.jua = and i32 %i.jtv, 2147483584             ; 3 uses
  %i.jub = zext nneg i32 %i.jua to i64
  %.not37.i.i.not.i.i.i.i248.i5705.not = icmp eq i32 %i.jua, 0
  br i1 %.not37.i.i.not.i.i.i.i248.i5705.not, label %.critedge.i.i.i.i.i.i249.i, label %.lr.ph5707

bb.cix:                                           ; preds = %.lr.ph5707
  %indvars.iv.next.i.i.i.i253.i = add nuw nsw i64 %indvars.iv.i.i.i.i247.i5706, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i248.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i253.i, %i.jub
  br i1 %.not37.i.i.not.i.i.i.i248.i, label %.lr.ph5707, label %.critedge.i.i.i.i.i.i249.i, !llvm.loop !20

.lr.ph5707:                                       ; preds = %bb.ciw, %bb.cix
  %indvars.iv.i.i.i.i247.i5706 = phi i64 [ %indvars.iv.next.i.i.i.i253.i, %bb.cix ], [ 0, %bb.ciw ] ; 2 uses
  %i.juc = lshr exact i64 %indvars.iv.i.i.i.i247.i5706, 3
  %i.jud = getelementptr inbounds nuw i8, ptr %i.jtz, i64 %i.juc
  %i.jue = load i64, ptr %i.jud, align 8, !tbaa !219
  %i.juf = icmp eq i64 %i.jue, -1
  br i1 %i.juf, label %bb.cix, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i, !llvm.loop !20

.critedge.i.i.i.i.i.i249.i:                       ; preds = %bb.cix, %bb.ciw
  %.not38.i.i.i.i.i.i250.i = icmp eq i32 %i.jtv, %i.jua
  br i1 %.not38.i.i.i.i.i.i250.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i, label %bb.ciy

bb.ciy:                                           ; preds = %.critedge.i.i.i.i.i.i249.i
  %i.jug = lshr i32 %i.jtv, 6
  %i.juh = and i32 %i.jtv, 63
  %i.jui = zext nneg i32 %i.juh to i64
  %notmask.i40.i.i.i.i.i.i251.i = shl nsw i64 -1, %i.jui
  %i.juj = zext nneg i32 %i.jug to i64
  %i.juk = getelementptr inbounds nuw [8 x i8], ptr %i.jtz, i64 %i.juj
  %i.jul = load i64, ptr %i.juk, align 8, !tbaa !219
  %.demorgan.i.i.i.i252.i = or i64 %i.jul, %notmask.i40.i.i.i.i.i.i251.i
  %i.jum = icmp eq i64 %.demorgan.i.i.i.i252.i, -1
  %i.jun = zext i1 %i.jum to i16
  %i.juo = or disjoint i16 %i.jun, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i: ; preds = %.lr.ph5707, %bb.ciy, %.critedge.i.i.i.i.i.i249.i, %bb.civ, %bb.ciu, %bb.cit
  %.sroa.0.0.insert.ext.i.i.i.i158.i = phi i16 [ 256, %bb.ciu ], [ 256, %bb.cit ], [ 257, %bb.civ ], [ 257, %.critedge.i.i.i.i.i.i249.i ], [ %i.juo, %bb.ciy ], [ 256, %.lr.ph5707 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i158.i, ptr %i.jtn, align 4
  %i.jup = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i158.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i159.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i159.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i254.i
  %.0.in.i.i.i.i160.i = phi i8 [ %.0.in.pre.i.i.i.i255.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i254.i ], [ %i.jup, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i157.i ]
  %.0.i.i.i.i161.i = trunc nuw i8 %.0.in.i.i.i.i160.i to i1
  br i1 %.0.i.i.i.i161.i, label %bb.ciz, label %bb.cjv

bb.ciz:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i159.i
  %i.juq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jur = load i32, ptr %i.juq, align 8, !tbaa !324 ; 2 uses
  %i.jus = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jut = load i32, ptr %i.jus, align 4, !tbaa !370 ; 2 uses
  %i.juu = icmp slt i32 %i.jut, %i.jur
  br i1 %i.juu, label %.lr.ph.i.i.preheader.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_EEvSB_T_.exit.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.ciz
  %i.juv = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.juw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i225.i

.lr.ph.i.i.i225.i:                                ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.028.i.i.i.i = phi i32 [ %361, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i ], [ %i.jut, %.lr.ph.i.i.preheader.i.i ] ; 5 uses
  %i.jux = load ptr, ptr %.sroa.422.0..sroa_idx.i2657, align 8, !tbaa !600, !nonnull !174, !align !294
  %i.juy = load ptr, ptr %i.jux, align 8, !tbaa !597
  %i.juz = getelementptr inbounds nuw i8, ptr %i.juy, i64 160
  %i.jva = load ptr, ptr %i.juz, align 8, !tbaa !609
  %360 = sext i32 %.028.i.i.i.i to i64            ; 3 uses
  %i.jvb = getelementptr inbounds [16 x i8], ptr %i.jva, i64 %360 ; 2 uses
  %.sroa.0.0.copyload.i3.i.i = load i64, ptr %i.jvb, align 8, !tbaa !219 ; 2 uses
  %.sroa.2.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.jvb, i64 8
  %.sroa.2.0.copyload.i5.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i4.i.i, align 8, !tbaa !219 ; 2 uses
  %i.jvc = sext i64 %.sroa.0.0.copyload.i3.i.i to i128
  %i.jvd = mul nsw i128 %i.jvc, 1000
  %i.jve = udiv i64 %.sroa.2.0.copyload.i5.i.i, 1000000
  %i.jvf = zext nneg i64 %i.jve to i128
  %i.jvg = add nsw i128 %i.jvd, %i.jvf            ; 2 uses
  %i.jvh = add nsw i128 %i.jvg, -9223372036854775808
  %or.cond.i.i.i6.i.i = icmp ult i128 %i.jvh, -18446744073709551616
  br i1 %or.cond.i.i.i6.i.i, label %bb.cja, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i7.i.i

bb.cja:                                           ; preds = %.lr.ph.i.i.i225.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #41, !noalias !1286
  store i64 %.sroa.0.0.copyload.i3.i.i, ptr %44, align 16, !tbaa !96, !noalias !1286
  store i64 %.sroa.2.0.copyload.i5.i.i, ptr %i.juv, align 16, !tbaa !96, !alias.scope !1287, !noalias !1286
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr nonnull @.str.157, i64 51, i64 67, ptr nonnull %44)
          to label %.noexc14.i.i unwind label %bb.cjf

.noexc14.i.i:                                     ; preds = %bb.cja
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #41, !noalias !1286
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9Timestamp8toMillisEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr nonnull @.str.157) #45
          to label %bb.cjb unwind label %bb.cjc

bb.cjb:                                           ; preds = %.noexc14.i.i
  unreachable

bb.cjc:                                           ; preds = %.noexc14.i.i
  %i.jvi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.jvj = load ptr, ptr %45, align 8, !tbaa !115 ; 2 uses
  %i.jvk = icmp eq ptr %i.jvj, %i.juw
  br i1 %i.jvk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i.i: ; preds = %bb.cjc
  %i.jvl = load i64, ptr %i.juw, align 8, !tbaa !96
  %i.jvm = add i64 %i.jvl, 1
  call void @_ZdlPvm(ptr noundef %i.jvj, i64 noundef %i.jvm) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i12.i.i: ; preds = %bb.cjc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #41
  br label %.body15.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i7.i.i: ; preds = %.lr.ph.i.i.i225.i
  %i.jvn = load ptr, ptr %58, align 8, !tbaa !610, !nonnull !174, !align !294
  %.val.i8.i.i = load ptr, ptr %i.jvn, align 8, !tbaa !593
  %i.jvo = getelementptr i8, ptr %.val.i8.i.i, i64 8
  %.val.val.i9.i.i = load ptr, ptr %i.jvo, align 8, !tbaa !135 ; 2 uses
  %i.jvp = trunc nsw i128 %i.jvg to i64
  %i.jvq = load ptr, ptr %.val.val.i9.i.i, align 8, !tbaa !113
  %i.jvr = getelementptr inbounds nuw i8, ptr %i.jvq, i64 48
  %i.jvs = load ptr, ptr %i.jvr, align 8
  %i.jvt = invoke noundef zeroext i1 %i.jvs(ptr noundef nonnull align 8 dereferenceable(16) %.val.val.i9.i.i, i64 noundef %i.jvp)
          to label %.noexc17.i.i unwind label %bb.cjf, !inline_history !1288

.noexc17.i.i:                                     ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i7.i.i
  %i.jvu = load ptr, ptr %.sroa.523.0..sroa_idx.i2658, align 8, !tbaa !611, !nonnull !174, !align !294
  %i.jvv = load ptr, ptr %i.jvu, align 8, !tbaa !296
  %i.jvw = lshr i64 %360, 3
  %i.jvx = getelementptr inbounds nuw i8, ptr %i.jvv, i64 %i.jvw ; 2 uses
  %i.jvy = load i8, ptr %i.jvx, align 1, !tbaa !96 ; 2 uses
  br i1 %i.jvt, label %bb.cjd, label %bb.cje

bb.cjd:                                           ; preds = %.noexc17.i.i
  %i.jvz = trunc i32 %.028.i.i.i.i to i8
  %i.jwa = and i8 %i.jvz, 7
  %i.jwb = shl nuw i8 1, %i.jwa
  %i.jwc = or i8 %i.jvy, %i.jwb
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit18.i.i

bb.cje:                                           ; preds = %.noexc17.i.i
  %i.jwd = and i64 %360, 7
  %i.jwe = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jwd
  %i.jwf = load i8, ptr %i.jwe, align 1, !tbaa !96
  %i.jwg = and i8 %i.jwf, %i.jvy
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit18.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit18.i.i: ; preds = %bb.cje, %bb.cjd
  %.sink.i.i10.i.i = phi i8 [ %i.jwg, %bb.cje ], [ %i.jwc, %bb.cjd ]
  store i8 %.sink.i.i10.i.i, ptr %i.jvx, align 1, !tbaa !96
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i

bb.cjf:                                           ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i7.i.i, %bb.cja
  %i.jwh = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %.body15.i.i

.body15.i.i:                                      ; preds = %bb.cjf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i12.i.i
  %eh.lpad-body16.i.i = phi { ptr, i32 } [ %i.jwh, %bb.cjf ], [ %i.jvi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i12.i.i ] ; 3 uses
  %i.jwi = extractvalue { ptr, i32 } %eh.lpad-body16.i.i, 0 ; 2 uses
  %i.jwj = extractvalue { ptr, i32 } %eh.lpad-body16.i.i, 1 ; 2 uses
  %i.jwk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.jwl = icmp eq i32 %i.jwj, %i.jwk
  br i1 %i.jwl, label %bb.cjg, label %bb.cjh

bb.cjg:                                           ; preds = %.body15.i.i
  %i.jwm = call ptr @__cxa_begin_catch(ptr %i.jwi) #41
  %i.jwn = getelementptr inbounds nuw i8, ptr %i.jwm, i64 8
  %i.jwo = load ptr, ptr %i.jwn, align 8, !tbaa !376 ; 2 uses
  %i.jwp = getelementptr inbounds nuw i8, ptr %i.jwo, i64 144
  %i.jwq = load ptr, ptr %i.jwp, align 8, !tbaa !115 ; 4 uses
  %i.jwr = getelementptr inbounds nuw i8, ptr %i.jwo, i64 152
  %i.jws = load i64, ptr %i.jwr, align 8, !tbaa !98
  %i.jwt = icmp eq i64 %i.jws, 4
  br i1 %i.jwt, label %.lr.ph.i.i.i.i.preheader.i.i.i233.i, label %.loopexit.i.i.i231.i

.lr.ph.i.i.i.i.preheader.i.i.i233.i:              ; preds = %bb.cjg
  %i.jwu = load i8, ptr %i.jwq, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i234.i = icmp eq i8 %i.jwu, 85
  br i1 %or.cond.not.i.i.i.i.i.i234.i, label %tailrecurse.i.i.i.i.i.i.i235.i, label %.loopexit.i.i.i231.i

tailrecurse.i.i.i.i.i.i.i235.i:                   ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i233.i
  %i.jwv = getelementptr inbounds nuw i8, ptr %i.jwq, i64 1
  %i.jww = load i8, ptr %i.jwv, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i236.i = icmp eq i8 %i.jww, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i236.i, label %tailrecurse.i.i.i.i.1.i.i.i237.i, label %.loopexit.i.i.i231.i

tailrecurse.i.i.i.i.1.i.i.i237.i:                 ; preds = %tailrecurse.i.i.i.i.i.i.i235.i
  %i.jwx = getelementptr inbounds nuw i8, ptr %i.jwq, i64 2
  %i.jwy = load i8, ptr %i.jwx, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i238.i = icmp eq i8 %i.jwy, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i238.i, label %tailrecurse.i.i.i.i.2.i.i.i239.i, label %.loopexit.i.i.i231.i

tailrecurse.i.i.i.i.2.i.i.i239.i:                 ; preds = %tailrecurse.i.i.i.i.1.i.i.i237.i
  %i.jwz = getelementptr inbounds nuw i8, ptr %i.jwq, i64 3
  %i.jxa = load i8, ptr %i.jwz, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i240.i = icmp eq i8 %i.jxa, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i240.i, label %tailrecurse.i.i.i.i.3.i.i.i241.i, label %.loopexit.i.i.i231.i

tailrecurse.i.i.i.i.3.i.i.i241.i:                 ; preds = %tailrecurse.i.i.i.i.2.i.i.i239.i
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %56) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.cjo unwind label %bb.cjq

.loopexit.i.i.i231.i:                             ; preds = %tailrecurse.i.i.i.i.2.i.i.i239.i, %tailrecurse.i.i.i.i.1.i.i.i237.i, %tailrecurse.i.i.i.i.i.i.i235.i, %.lr.ph.i.i.i.i.preheader.i.i.i233.i, %bb.cjg
  invoke void @__cxa_rethrow() #45
          to label %bb.cju unwind label %bb.cjn

bb.cjh:                                           ; preds = %.body15.i.i
  %i.jxb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.jxc = icmp eq i32 %i.jwj, %i.jxb
  br i1 %i.jxc, label %bb.cji, label %common.resume

bb.cji:                                           ; preds = %bb.cjh
  %i.jxd = call ptr @__cxa_begin_catch(ptr %i.jwi) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %55) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.028.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.cjj unwind label %bb.cjl

bb.cjj:                                           ; preds = %bb.cji
  %i.jxe = load ptr, ptr %55, align 8, !tbaa !171
  %.not.i.i.i.i228.i = icmp eq ptr %i.jxe, null
  br i1 %.not.i.i.i.i228.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i229.i, label %bb.cjk

bb.cjk:                                           ; preds = %bb.cjj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %55) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i229.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i229.i: ; preds = %bb.cjk, %bb.cjj
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cjl:                                           ; preds = %bb.cji
  %i.jxf = landingpad { ptr, i32 }
          cleanup
  %i.jxg = load ptr, ptr %55, align 8, !tbaa !171
  %.not.i4.i.i.i226.i = icmp eq ptr %i.jxg, null
  br i1 %.not.i4.i.i.i226.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i, label %bb.cjm

bb.cjm:                                           ; preds = %bb.cjl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %55) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i: ; preds = %bb.cjm, %bb.cjl
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cjt

bb.cjn:                                           ; preds = %.loopexit.i.i.i231.i
  %i.jxh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cjs

bb.cjo:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i241.i
  %i.jxi = load ptr, ptr %56, align 8, !tbaa !171
  %.not.i6.i.i.i244.i = icmp eq ptr %i.jxi, null
  br i1 %.not.i6.i.i.i244.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i245.i, label %bb.cjp

bb.cjp:                                           ; preds = %bb.cjo
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i245.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i245.i: ; preds = %bb.cjp, %bb.cjo
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cjq:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i241.i
  %i.jxj = landingpad { ptr, i32 }
          cleanup
  %i.jxk = load ptr, ptr %56, align 8, !tbaa !171
  %.not.i8.i.i.i242.i = icmp eq ptr %i.jxk, null
  br i1 %.not.i8.i.i.i242.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i243.i, label %bb.cjr

bb.cjr:                                           ; preds = %bb.cjq
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i243.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i243.i: ; preds = %bb.cjr, %bb.cjq
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #41
  br label %bb.cjs

bb.cjs:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i243.i, %bb.cjn
  %.pn.i.i.i.i232.i = phi { ptr, i32 } [ %i.jxj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i243.i ], [ %i.jxh, %bb.cjn ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cjt

bb.cjt:                                           ; preds = %bb.cjs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i227.i
  %i.jxl = landingpad { ptr, i32 }
          catch ptr null
  %i.jxm = extractvalue { ptr, i32 } %i.jxl, 0
  call void @__clang_call_terminate(ptr %i.jxm) #44
  unreachable

bb.cju:                                           ; preds = %.loopexit.i.i.i231.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i245.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i229.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit18.i.i
  %361 = add i32 %.028.i.i.i.i, 1                 ; 2 uses
  %exitcond.not.i.i.i230.i = icmp eq i32 %361, %i.jur
  br i1 %exitcond.not.i.i.i230.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_EEvSB_T_.exit.i, label %.lr.ph.i.i.i225.i, !llvm.loop !1234

bb.cjv:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i159.i
  %i.jxn = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.jxo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jxp = load i32, ptr %i.jxo, align 4, !tbaa !370 ; 6 uses
  %i.jxq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jxr = load i32, ptr %i.jxq, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i162.i = getelementptr inbounds nuw i8, ptr %54, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  store ptr %58, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i162.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i163.i = getelementptr inbounds nuw i8, ptr %54, i64 24
  store ptr %57, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i163.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i164.i = getelementptr inbounds nuw i8, ptr %54, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i164.i, align 8
  store i8 1, ptr %54, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i165.i = getelementptr inbounds nuw i8, ptr %54, i64 8
  store ptr %i.jxn, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i165.i, align 8
  %.not.i.i.i.i.i.i166.i = icmp slt i32 %i.jxp, %i.jxr
  br i1 %.not.i.i.i.i.i.i166.i, label %bb.cjw, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.cjw:                                           ; preds = %bb.cjv
  %i.jxs = add i32 %i.jxp, 63                     ; 2 uses
  %i.jxt = srem i32 %i.jxs, 64
  %i.jxu = sub nsw i32 %i.jxs, %i.jxt             ; 6 uses
  %i.jxv = and i32 %i.jxr, -64                    ; 4 uses
  %i.jxw = icmp slt i32 %i.jxv, %i.jxu
  br i1 %i.jxw, label %bb.cjx, label %bb.cjy

bb.cjx:                                           ; preds = %bb.cjw
  %i.jxx = ashr i32 %i.jxr, 6
  %i.jxy = and i32 %i.jxr, 63
  %i.jxz = zext nneg i32 %i.jxy to i64
  %notmask.i.i.i.i.i.i.i223.i = shl nsw i64 -1, %i.jxz
  %i.jya = xor i64 %notmask.i.i.i.i.i.i.i223.i, -1
  %i.jyb = sub nsw i32 %i.jxu, %i.jxp             ; 2 uses
  %i.jyc = zext nneg i32 %i.jyb to i64
  %notmask.i.i.i.i.i.i.i.i224.i = shl nsw i64 -1, %i.jyc
  %i.jyd = xor i64 %notmask.i.i.i.i.i.i.i.i224.i, -1
  %i.jye = sub nsw i32 64, %i.jyb
  %i.jyf = zext nneg i32 %i.jye to i64
  %i.jyg = shl i64 %i.jyd, %i.jyf
  %i.jyh = and i64 %i.jyg, %i.jya
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %54, i32 noundef %i.jxx, i64 noundef %i.jyh)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.cjy:                                           ; preds = %bb.cjw
  %.not32.i.i.i.i.i.i167.i = icmp eq i32 %i.jxp, %i.jxu
  br i1 %.not32.i.i.i.i.i.i167.i, label %bb.cka, label %bb.cjz

bb.cjz:                                           ; preds = %bb.cjy
  %i.jyi = sdiv i32 %i.jxp, 64
  %i.jyj = sub nsw i32 %i.jxu, %i.jxp             ; 2 uses
  %i.jyk = zext nneg i32 %i.jyj to i64
  %notmask.i.i35.i.i.i.i.i.i168.i = shl nsw i64 -1, %i.jyk
  %i.jyl = xor i64 %notmask.i.i35.i.i.i.i.i.i168.i, -1
  %i.jym = sub nsw i32 64, %i.jyj
  %i.jyn = zext nneg i32 %i.jym to i64
  %i.jyo = shl i64 %i.jyl, %i.jyn
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %54, i32 noundef %i.jyi, i64 noundef %i.jyo)
  br label %bb.cka

bb.cka:                                           ; preds = %bb.cjz, %bb.cjy
  %i.jyp = add nsw i32 %i.jxu, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i169.i = icmp sgt i32 %i.jyp, %i.jxv
  br i1 %.not3346.i.i.i.i.i.i169.i, label %._crit_edge.i.i.i.i.i.i173.i, label %.lr.ph.i.i.i.i.i.i170.i

.lr.ph.i.i.i.i.i.i170.i:                          ; preds = %bb.cka
  %i.jyq = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.jyr = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.jys = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.jyt = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  br label %bb.ckb

._crit_edge.i.i.i.i.i.i173.i:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.cka
  %.not34.i.i.i.i.i.i174.i = icmp eq i32 %i.jxr, %i.jxv
  br i1 %.not34.i.i.i.i.i.i174.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, label %bb.clv

bb.ckb:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i170.i
  %i.jyu = phi i32 [ %i.jyp, %.lr.ph.i.i.i.i.i.i170.i ], [ %i.keu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.047.i.i.i.i.i.i171.i = phi i32 [ %i.jxu, %.lr.ph.i.i.i.i.i.i170.i ], [ %i.jyu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.jyv = sdiv i32 %.047.i.i.i.i.i.i171.i, 64    ; 3 uses
  %i.jyw = sext i32 %i.jyv to i64
  %i.jyx = getelementptr inbounds [8 x i8], ptr %i.jxn, i64 %i.jyw
  %i.jyy = load i64, ptr %i.jyx, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.jyy, label %.lr.ph.i.i.i.i10.i.i.i201.i [
    i64 -1, label %bb.ckc
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i201.i:                      ; preds = %bb.ckb
  %i.jyz = shl nsw i32 %i.jyv, 6
  br label %bb.ckz

bb.ckc:                                           ; preds = %bb.ckb
  %i.jza = shl nsw i32 %i.jyv, 6                  ; 2 uses
  %i.jzb = add i32 %i.jza, 64
  %i.jzc = sext i32 %i.jzb to i64
  %.0.off.i.i.i.i.i.i176.i = add i32 %.047.i.i.i.i.i.i171.i, 127
  %.not57.i.i.i.i.i.i.i177.i = icmp ult i32 %.0.off.i.i.i.i.i.i176.i, 64
  br i1 %.not57.i.i.i.i.i.i.i177.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE1_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i178.i

.lr.ph56.i.i.i.i.i.i.i178.i:                      ; preds = %bb.ckc
  %i.jzd = sext i32 %i.jza to i64
  br label %bb.ckd

bb.ckd:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i178.i
  %.055.i.i.i.i.i.i.i179.i = phi i64 [ %i.jzd, %.lr.ph56.i.i.i.i.i.i.i178.i ], [ %i.kbw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE1_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.jze = trunc i64 %.055.i.i.i.i.i.i.i179.i to i32 ; 2 uses
  %i.jzf = load ptr, ptr %.sroa.422.0..sroa_idx.i2657, align 8, !tbaa !600, !nonnull !174, !align !294
  %i.jzg = load ptr, ptr %i.jzf, align 8, !tbaa !597
  %i.jzh = getelementptr inbounds nuw i8, ptr %i.jzg, i64 160
  %i.jzi = load ptr, ptr %i.jzh, align 8, !tbaa !609
  %sext.i.i = shl i64 %.055.i.i.i.i.i.i.i179.i, 32
  %i.jzj = ashr exact i64 %sext.i.i, 32           ; 2 uses
  %i.jzk = getelementptr inbounds [16 x i8], ptr %i.jzi, i64 %i.jzj ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.jzk, align 8, !tbaa !219 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jzk, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !219 ; 2 uses
  %i.jzl = sext i64 %.sroa.0.0.copyload.i.i.i to i128
  %i.jzm = mul nsw i128 %i.jzl, 1000
  %i.jzn = udiv i64 %.sroa.2.0.copyload.i.i.i, 1000000
  %i.jzo = zext nneg i64 %i.jzn to i128
  %i.jzp = add nsw i128 %i.jzm, %i.jzo            ; 2 uses
  %i.jzq = add nsw i128 %i.jzp, -9223372036854775808
  %or.cond.i.i.i.i.i = icmp ult i128 %i.jzq, -18446744073709551616
  br i1 %or.cond.i.i.i.i.i, label %bb.cke, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i.i.i

bb.cke:                                           ; preds = %bb.ckd
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #41, !noalias !1289
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %46, align 16, !tbaa !96, !noalias !1289
  store i64 %.sroa.2.0.copyload.i.i.i, ptr %i.jys, align 16, !tbaa !96, !alias.scope !1290, !noalias !1289
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr nonnull @.str.157, i64 51, i64 67, ptr nonnull %46)
          to label %.noexc.i.i unwind label %bb.ckj

.noexc.i.i:                                       ; preds = %bb.cke
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #41, !noalias !1289
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9Timestamp8toMillisEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr nonnull @.str.157) #45
          to label %bb.ckf unwind label %bb.ckg

bb.ckf:                                           ; preds = %.noexc.i.i
  unreachable

bb.ckg:                                           ; preds = %.noexc.i.i
  %i.jzr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.jzs = load ptr, ptr %47, align 8, !tbaa !115 ; 2 uses
  %i.jzt = icmp eq ptr %i.jzs, %i.jyt
  br i1 %i.jzt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ckg
  %i.jzu = load i64, ptr %i.jyt, align 8, !tbaa !96
  %i.jzv = add i64 %i.jzu, 1
  call void @_ZdlPvm(ptr noundef %i.jzs, i64 noundef %i.jzv) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.ckg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #41
  br label %.body.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i.i.i: ; preds = %bb.ckd
  %i.jzw = load ptr, ptr %58, align 8, !tbaa !610, !nonnull !174, !align !294
  %.val.i.i.i = load ptr, ptr %i.jzw, align 8, !tbaa !593
  %i.jzx = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val.i.i.i = load ptr, ptr %i.jzx, align 8, !tbaa !135 ; 2 uses
  %i.jzy = trunc nsw i128 %i.jzp to i64
  %i.jzz = load ptr, ptr %.val.val.i.i.i, align 8, !tbaa !113
  %i.kaa = getelementptr inbounds nuw i8, ptr %i.jzz, i64 48
  %i.kab = load ptr, ptr %i.kaa, align 8
  %i.kac = invoke noundef zeroext i1 %i.kab(ptr noundef nonnull align 8 dereferenceable(16) %.val.val.i.i.i, i64 noundef %i.jzy)
          to label %.noexc2.i.i unwind label %bb.ckj, !inline_history !1288

.noexc2.i.i:                                      ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUlNS0_9TimestampEE_clESN_.exit.i.i.i
  %i.kad = load ptr, ptr %.sroa.523.0..sroa_idx.i2658, align 8, !tbaa !611, !nonnull !174, !align !294
  %i.kae = load ptr, ptr %i.kad, align 8, !tbaa !296
  %i.kaf = lshr i64 %i.jzj, 3
  %i.kag = getelementptr inbounds nuw i8, ptr %i.kae, i64 %i.kaf ; 2 uses
  %i.kah = load i8, ptr %i.kag, align 1, !tbaa !96 ; 2 uses
  br i1 %i.kac, label %bb.ckh, label %bb.cki

bb.ckh:                                           ; preds = %.noexc2.i.i
  %i.kai = trunc i64 %.055.i.i.i.i.i.i.i179.i to i8
  %i.kaj = and i8 %i.kai, 7
  %i.kak = shl nuw i8 1, %i.kaj
  %i.kal = or i8 %i.kah, %i.kak
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit.i.i

bb.cki:                                           ; preds = %.noexc2.i.i
  %i.kam = and i64 %.055.i.i.i.i.i.i.i179.i, 7
  %i.kan = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.kam
  %i.kao = load i8, ptr %i.kan, align 1, !tbaa !96
  %i.kap = and i8 %i.kao, %i.kah
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_9TimestampEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE1_clEi.exit.i.i: ; preds = %bb.cki, %bb.ckh
  %.sink.i.i.i.i = phi i8 [ %i.kap, %bb.cki ], [ %i.kal, %bb.ckh ]
  store i8 %.sink.i.i.i.i, ptr %i.kag, align 1, !tbaa !96
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %.not37.i.i.not.i.i.i.i.i3124 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i3129, %i.khj
  br i1 %.not37.i.i.not.i.i.i.i.i3124, label %.lr.ph5704, label %.critedge.i.i.i.i.i.i.i3125, !llvm.loop !20

.lr.ph5704:                                       ; preds = %bb.cna, %bb.cnb
  %indvars.iv.i.i.i.i.i31235703 = phi i64 [ %indvars.iv.next.i.i.i.i.i3129, %bb.cnb ], [ 0, %bb.cna ] ; 2 uses
  %i.khk = lshr exact i64 %indvars.iv.i.i.i.i.i31235703, 3
  %i.khl = getelementptr inbounds nuw i8, ptr %i.khh, i64 %i.khk
  %i.khm = load i64, ptr %i.khl, align 8, !tbaa !219
  %i.khn = icmp eq i64 %i.khm, -1
  br i1 %i.khn, label %bb.cnb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021, !llvm.loop !20

.critedge.i.i.i.i.i.i.i3125:                      ; preds = %bb.cnb, %bb.cna
  %.not38.i.i.i.i.i.i.i3126 = icmp eq i32 %i.khe, %i.khi
  br i1 %.not38.i.i.i.i.i.i.i3126, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021, label %bb.cnc

bb.cnc:                                           ; preds = %.critedge.i.i.i.i.i.i.i3125
  %i.kho = lshr i32 %i.khe, 6
  %i.khp = and i32 %i.khe, 63
  %i.khq = zext nneg i32 %i.khp to i64
  %notmask.i40.i.i.i.i.i.i.i3127 = shl nsw i64 -1, %i.khq
  %i.khr = zext nneg i32 %i.kho to i64
  %i.khs = getelementptr inbounds nuw [8 x i8], ptr %i.khh, i64 %i.khr
  %i.kht = load i64, ptr %i.khs, align 8, !tbaa !219
  %.demorgan.i.i.i.i.i3128 = or i64 %i.kht, %notmask.i40.i.i.i.i.i.i.i3127
  %i.khu = icmp eq i64 %.demorgan.i.i.i.i.i3128, -1
  %i.khv = zext i1 %i.khu to i16
  %i.khw = or disjoint i16 %i.khv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021: ; preds = %.lr.ph5704, %bb.cnc, %.critedge.i.i.i.i.i.i.i3125, %bb.cmz, %bb.cmy, %bb.cmx
  %.sroa.0.0.insert.ext.i.i.i.i.i3022 = phi i16 [ 256, %bb.cmy ], [ 256, %bb.cmx ], [ 257, %bb.cmz ], [ 257, %.critedge.i.i.i.i.i.i.i3125 ], [ %i.khw, %bb.cnc ], [ 256, %.lr.ph5704 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i3022, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 36), align 4
  %i.khx = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i3022 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i3023

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i3023: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i3130
  %i.khy = phi i32 [ %.pre.i.i.i3132, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i3130 ], [ %i.khc, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021 ] ; 8 uses
  %.0.in.i.i.i.i.i3024 = phi i8 [ %.0.in.pre.i.i.i.i.i3131, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i3130 ], [ %i.khx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i3021 ]
  %.0.i.i.i.i36.i3025 = trunc nuw i8 %.0.in.i.i.i.i.i3024 to i1
  br i1 %.0.i.i.i.i36.i3025, label %bb.cnd, label %bb.cnu

bb.cnd:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i3023
  %i.khz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 2 uses
  %i.kia = icmp slt i32 %i.khy, %i.khz
  br i1 %i.kia, label %.lr.ph.i.i.i.i3098, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_EEvSB_T_.exit.i

.lr.ph.i.i.i.i3098:                               ; preds = %bb.cnd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i
  %.019.i.i.i.i3099 = phi i32 [ %i.kjh, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i ], [ %i.khy, %bb.cnd ] ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %bb.cne

bb.cne:                                           ; preds = %.lr.ph.i.i.i.i3098
  %i.kib = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.kic = extractvalue { ptr, i32 } %i.kib, 0    ; 2 uses
  %i.kid = extractvalue { ptr, i32 } %i.kib, 1    ; 2 uses
  %i.kie = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.kif = icmp eq i32 %i.kid, %i.kie
  br i1 %i.kif, label %bb.cnf, label %bb.cng

bb.cnf:                                           ; preds = %bb.cne
  %i.kig = call ptr @__cxa_begin_catch(ptr %i.kic) #41
  %i.kih = getelementptr inbounds nuw i8, ptr %i.kig, i64 8
  %i.kii = load ptr, ptr %i.kih, align 8, !tbaa !376 ; 2 uses
  %i.kij = getelementptr inbounds nuw i8, ptr %i.kii, i64 144
  %i.kik = load ptr, ptr %i.kij, align 8, !tbaa !115 ; 4 uses
  %i.kil = getelementptr inbounds nuw i8, ptr %i.kii, i64 152
  %i.kim = load i64, ptr %i.kil, align 8, !tbaa !98
  %i.kin = icmp eq i64 %i.kim, 4
  br i1 %i.kin, label %.lr.ph.i.i.i.i.preheader.i.i.i.i3109, label %.loopexit.i.i.i.i3107

.lr.ph.i.i.i.i.preheader.i.i.i.i3109:             ; preds = %bb.cnf
  %i.kio = load i8, ptr %i.kik, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i3110 = icmp eq i8 %i.kio, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i3110, label %tailrecurse.i.i.i.i.i.i.i.i3111, label %.loopexit.i.i.i.i3107

tailrecurse.i.i.i.i.i.i.i.i3111:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i3109
  %i.kip = getelementptr inbounds nuw i8, ptr %i.kik, i64 1
  %i.kiq = load i8, ptr %i.kip, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i3112 = icmp eq i8 %i.kiq, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i3112, label %tailrecurse.i.i.i.i.1.i.i.i.i3113, label %.loopexit.i.i.i.i3107

tailrecurse.i.i.i.i.1.i.i.i.i3113:                ; preds = %tailrecurse.i.i.i.i.i.i.i.i3111
  %i.kir = getelementptr inbounds nuw i8, ptr %i.kik, i64 2
  %i.kis = load i8, ptr %i.kir, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i3114 = icmp eq i8 %i.kis, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i3114, label %tailrecurse.i.i.i.i.2.i.i.i.i3115, label %.loopexit.i.i.i.i3107

tailrecurse.i.i.i.i.2.i.i.i.i3115:                ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i3113
  %i.kit = getelementptr inbounds nuw i8, ptr %i.kik, i64 3
  %i.kiu = load i8, ptr %i.kit, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i3116 = icmp eq i8 %i.kiu, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i3116, label %tailrecurse.i.i.i.i.3.i.i.i.i3117, label %.loopexit.i.i.i.i3107

tailrecurse.i.i.i.i.3.i.i.i.i3117:                ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i3115
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %36) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i3099, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.cnn unwind label %bb.cnp

.loopexit.i.i.i.i3107:                            ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i3115, %tailrecurse.i.i.i.i.1.i.i.i.i3113, %tailrecurse.i.i.i.i.i.i.i.i3111, %.lr.ph.i.i.i.i.preheader.i.i.i.i3109, %bb.cnf
  invoke void @__cxa_rethrow() #45
          to label %bb.cnt unwind label %bb.cnm

bb.cng:                                           ; preds = %bb.cne
  %i.kiv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.kiw = icmp eq i32 %i.kid, %i.kiv
  br i1 %i.kiw, label %bb.cnh, label %.body.i3014

bb.cnh:                                           ; preds = %bb.cng
  %i.kix = call ptr @__cxa_begin_catch(ptr %i.kic) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %35) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.019.i.i.i.i3099, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.cni unwind label %bb.cnk

bb.cni:                                           ; preds = %bb.cnh
  %i.kiy = load ptr, ptr %35, align 8, !tbaa !171
  %.not.i.i.i.i37.i3102 = icmp eq ptr %i.kiy, null
  br i1 %.not.i.i.i.i37.i3102, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i3103, label %bb.cnj

bb.cnj:                                           ; preds = %bb.cni
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %35) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i3103

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i3103: ; preds = %bb.cnj, %bb.cni
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cnk:                                           ; preds = %bb.cnh
  %i.kiz = landingpad { ptr, i32 }
          cleanup
  %i.kja = load ptr, ptr %35, align 8, !tbaa !171
  %.not.i4.i.i.i.i3100 = icmp eq ptr %i.kja, null
  br i1 %.not.i4.i.i.i.i3100, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i3101, label %bb.cnl

bb.cnl:                                           ; preds = %bb.cnk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %35) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i3101

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i3101: ; preds = %bb.cnl, %bb.cnk
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  invoke void @__cxa_end_catch()
          to label %.body.i3014 unwind label %bb.cns

bb.cnm:                                           ; preds = %.loopexit.i.i.i.i3107
  %i.kjb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cnr

bb.cnn:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i3117
  %i.kjc = load ptr, ptr %36, align 8, !tbaa !171
  %.not.i6.i.i.i.i3120 = icmp eq ptr %i.kjc, null
  br i1 %.not.i6.i.i.i.i3120, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i3121, label %bb.cno

bb.cno:                                           ; preds = %bb.cnn
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i3121

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i3121: ; preds = %bb.cno, %bb.cnn
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cnp:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i3117
  %i.kjd = landingpad { ptr, i32 }
          cleanup
  %i.kje = load ptr, ptr %36, align 8, !tbaa !171
  %.not.i8.i.i.i.i3118 = icmp eq ptr %i.kje, null
  br i1 %.not.i8.i.i.i.i3118, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i3119, label %bb.cnq

bb.cnq:                                           ; preds = %bb.cnp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i3119

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i3119: ; preds = %bb.cnq, %bb.cnp
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  br label %bb.cnr

bb.cnr:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i3119, %bb.cnm
  %.pn.i.i.i.i.i3108 = phi { ptr, i32 } [ %i.kjd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i3119 ], [ %i.kjb, %bb.cnm ]
  invoke void @__cxa_end_catch()
          to label %.body.i3014 unwind label %bb.cns

bb.cns:                                           ; preds = %bb.cnr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i3101
  %i.kjf = landingpad { ptr, i32 }
          catch ptr null
  %i.kjg = extractvalue { ptr, i32 } %i.kjf, 0
  call void @__clang_call_terminate(ptr %i.kjg) #44
  unreachable

bb.cnt:                                           ; preds = %.loopexit.i.i.i.i3107
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i3121, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i3103
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %.loopexit.i3104

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3098, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i
  %i.kjh = add i32 %.019.i.i.i.i3099, 1           ; 2 uses
  %exitcond.not.i.i.i.i3106 = icmp eq i32 %i.kjh, %i.khz
  br i1 %exitcond.not.i.i.i.i3106, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_EEvSB_T_.exit.i, label %.lr.ph.i.i.i.i3098, !llvm.loop !1248

bb.cnu:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i3023
  %i.kji = load ptr, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, align 8, !tbaa !373 ; 2 uses
  %i.kjj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_E6oneRow, i64 32), align 8, !tbaa !324 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i3026 = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  store ptr %38, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i3026, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i3027 = getelementptr inbounds nuw i8, ptr %34, i64 24
  store ptr %37, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i3027, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i3028 = getelementptr inbounds nuw i8, ptr %34, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i3028, align 8
  store i8 1, ptr %34, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i3029 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %i.kji, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i3029, align 8
  %.not.i.i.i.i.i.i.i3030 = icmp slt i32 %i.khy, %i.kjj
  br i1 %.not.i.i.i.i.i.i.i3030, label %bb.cnv, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.cnv:                                           ; preds = %bb.cnu
  %i.kjk = add i32 %i.khy, 63                     ; 2 uses
  %i.kjl = srem i32 %i.kjk, 64
  %i.kjm = sub nsw i32 %i.kjk, %i.kjl             ; 6 uses
  %i.kjn = and i32 %i.kjj, -64                    ; 4 uses
  %i.kjo = icmp slt i32 %i.kjn, %i.kjm
  br i1 %i.kjo, label %bb.cnw, label %bb.cnx

bb.cnw:                                           ; preds = %bb.cnv
  %i.kjp = and i32 %i.kjj, 63
  %i.kjq = zext nneg i32 %i.kjp to i64
  %notmask.i.i.i.i.i.i.i.i3096 = shl nsw i64 -1, %i.kjq
  %i.kjr = xor i64 %notmask.i.i.i.i.i.i.i.i3096, -1
  %i.kjs = sub nsw i32 %i.kjm, %i.khy             ; 2 uses
  %i.kjt = zext nneg i32 %i.kjs to i64
  %notmask.i.i.i.i.i.i.i.i.i3097 = shl nsw i64 -1, %i.kjt
  %i.kju = xor i64 %notmask.i.i.i.i.i.i.i.i.i3097, -1
  %i.kjv = sub nsw i32 64, %i.kjs
  %i.kjw = zext nneg i32 %i.kjv to i64
  %i.kjx = shl i64 %i.kju, %i.kjw
  %i.kjy = and i64 %i.kjx, %i.kjr
  br label %.invoke.i3046

.invoke.i3046:                                    ; preds = %bb.cpi, %bb.cnw
  %i.kjz = phi i64 [ %i.kjy, %bb.cnw ], [ %i.knq, %bb.cpi ]
  %i.kka = ashr i32 %i.kjj, 6
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %34, i32 noundef %i.kka, i64 noundef %i.kjz)
          to label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i3012

bb.cnx:                                           ; preds = %bb.cnv
  %.not32.i.i.i.i.i.i.i3036 = icmp eq i32 %i.khy, %i.kjm
  br i1 %.not32.i.i.i.i.i.i.i3036, label %.noexc40.i3038, label %bb.cny

bb.cny:                                           ; preds = %bb.cnx
  %i.kkb = sdiv i32 %i.khy, 64
  %i.kkc = sub nsw i32 %i.kjm, %i.khy             ; 2 uses
  %i.kkd = zext nneg i32 %i.kkc to i64
  %notmask.i.i35.i.i.i.i.i.i.i3037 = shl nsw i64 -1, %i.kkd
  %i.kke = xor i64 %notmask.i.i35.i.i.i.i.i.i.i3037, -1
  %i.kkf = sub nsw i32 64, %i.kkc
  %i.kkg = zext nneg i32 %i.kkf to i64
  %i.kkh = shl i64 %i.kke, %i.kkg
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %34, i32 noundef %i.kkb, i64 noundef %i.kkh)
          to label %.noexc40.i3038 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i3012

.noexc40.i3038:                                   ; preds = %bb.cny, %bb.cnx
  %i.kki = add nsw i32 %i.kjm, 64                 ; 2 uses
  %.not3346.i.i.i.i.i.i.i3039 = icmp sgt i32 %i.kki, %i.kjn
  br i1 %.not3346.i.i.i.i.i.i.i3039, label %._crit_edge.i.i.i.i.i.i.i3043, label %.lr.ph.i.i.i.i.i.i.i3040

._crit_edge.i.i.i.i.i.i.i3043:                    ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.noexc40.i3038
  %.not34.i.i.i.i.i.i.i3044 = icmp eq i32 %i.kjj, %i.kjn
  br i1 %.not34.i.i.i.i.i.i.i3044, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, label %bb.cpi

.lr.ph.i.i.i.i.i.i.i3040:                         ; preds = %.noexc40.i3038, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  %i.kkj = phi i32 [ %i.knn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.kki, %.noexc40.i3038 ] ; 2 uses
  %.047.i.i.i.i.i.i.i3041 = phi i32 [ %i.kkj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.kjm, %.noexc40.i3038 ] ; 2 uses
  %i.kkk = sdiv i32 %.047.i.i.i.i.i.i.i3041, 64   ; 3 uses
  %i.kkl = sext i32 %i.kkk to i64
  %i.kkm = getelementptr inbounds [8 x i8], ptr %i.kji, i64 %i.kkl
  %i.kkn = load i64, ptr %i.kkm, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.kkn, label %.lr.ph.i.i.i.i10.i.i.i.i3072 [
    i64 -1, label %bb.cnz
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i3072:                     ; preds = %.lr.ph.i.i.i.i.i.i.i3040
  %i.kko = shl nsw i32 %i.kkk, 6
  br label %bb.cor

bb.cnz:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i3040
  %i.kkp = shl nsw i32 %i.kkk, 6                  ; 2 uses
  %i.kkq = add i32 %i.kkp, 64
  %i.kkr = sext i32 %i.kkq to i64
  %.0.off.i.i.i.i.i.i.i3047 = add i32 %.047.i.i.i.i.i.i.i3041, 127
  %.not57.i.i.i.i.i.i.i.i3048 = icmp ult i32 %.0.off.i.i.i.i.i.i.i3047, 64
  br i1 %.not57.i.i.i.i.i.i.i.i3048, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i.i3049

.lr.ph56.i.i.i.i.i.i.i.i3049:                     ; preds = %bb.cnz
  %i.kks = sext i32 %i.kkp to i64
  br label %bb.coa

bb.coa:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i.i3049
  %.055.i.i.i.i.i.i.i.i3050 = phi i64 [ %i.kks, %.lr.ph56.i.i.i.i.i.i.i.i3049 ], [ %i.kma, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kkt = trunc i64 %.055.i.i.i.i.i.i.i.i3050 to i32 ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i unwind label %bb.cob

bb.cob:                                           ; preds = %bb.coa
  %i.kku = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.kkv = extractvalue { ptr, i32 } %i.kku, 0    ; 2 uses
  %i.kkw = extractvalue { ptr, i32 } %i.kku, 1    ; 2 uses
  %i.kkx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.kky = icmp eq i32 %i.kkw, %i.kkx
  br i1 %i.kky, label %bb.coc, label %bb.cod

bb.coc:                                           ; preds = %bb.cob
  %i.kkz = call ptr @__cxa_begin_catch(ptr %i.kkv) #41
  %i.kla = getelementptr inbounds nuw i8, ptr %i.kkz, i64 8
  %i.klb = load ptr, ptr %i.kla, align 8, !tbaa !376 ; 2 uses
  %i.klc = getelementptr inbounds nuw i8, ptr %i.klb, i64 144
  %i.kld = load ptr, ptr %i.klc, align 8, !tbaa !115 ; 4 uses
  %i.kle = getelementptr inbounds nuw i8, ptr %i.klb, i64 152
  %i.klf = load i64, ptr %i.kle, align 8, !tbaa !98
  %i.klg = icmp eq i64 %i.klf, 4
  br i1 %i.klg, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i3059, label %.loopexit.i.i.i.i.i.i.i.i3057

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i3059:     ; preds = %bb.coc
  %i.klh = load i8, ptr %i.kld, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i.i3060 = icmp eq i8 %i.klh, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i.i3060, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i3061, label %.loopexit.i.i.i.i.i.i.i.i3057

tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i3061:          ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i3059
  %i.kli = getelementptr inbounds nuw i8, ptr %i.kld, i64 1
  %i.klj = load i8, ptr %i.kli, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i3062 = icmp eq i8 %i.klj, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i.i3062, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i3063, label %.loopexit.i.i.i.i.i.i.i.i3057

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i3063:        ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i3061
  %i.klk = getelementptr inbounds nuw i8, ptr %i.kld, i64 2
  %i.kll = load i8, ptr %i.klk, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i3064 = icmp eq i8 %i.kll, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i.i3064, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i3065, label %.loopexit.i.i.i.i.i.i.i.i3057

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i3065:        ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i3063
  %i.klm = getelementptr inbounds nuw i8, ptr %i.kld, i64 3
  %i.kln = load i8, ptr %i.klm, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i3066 = icmp eq i8 %i.kln, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i.i3066, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i3067, label %.loopexit.i.i.i.i.i.i.i.i3057

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i3067:        ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i3065
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %31) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kkt, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cok unwind label %bb.com

.loopexit.i.i.i.i.i.i.i.i3057:                    ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i.i3065, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i.i3063, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i.i3061, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i.i3059, %bb.coc
  invoke void @__cxa_rethrow() #45
          to label %bb.coq unwind label %bb.coj

bb.cod:                                           ; preds = %bb.cob
  %i.klo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.klp = icmp eq i32 %i.kkw, %i.klo
  br i1 %i.klp, label %bb.coe, label %.body.i3014

bb.coe:                                           ; preds = %bb.cod
  %i.klq = call ptr @__cxa_begin_catch(ptr %i.kkv) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %30) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kkt, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cof unwind label %bb.coh

bb.cof:                                           ; preds = %bb.coe
  %i.klr = load ptr, ptr %30, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i.i3053 = icmp eq ptr %i.klr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i3053, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i3054, label %bb.cog

bb.cog:                                           ; preds = %bb.cof
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i3054

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i3054: ; preds = %bb.cog, %bb.cof
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i

bb.coh:                                           ; preds = %bb.coe
  %i.kls = landingpad { ptr, i32 }
          cleanup
  %i.klt = load ptr, ptr %30, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i.i3051 = icmp eq ptr %i.klt, null
  br i1 %.not.i19.i.i.i.i.i.i.i.i3051, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i3052, label %bb.coi

bb.coi:                                           ; preds = %bb.coh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i3052

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i.i3052: ; preds = %bb.coi, %bb.coh
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  br i1 %.not37.i.i.not.i.i.i.i147.i3004, label %.lr.ph5701, label %.critedge.i.i.i.i.i.i148.i3005, !llvm.loop !20

.lr.ph5701:                                       ; preds = %bb.cqm, %bb.cqn
  %indvars.iv.i.i.i.i146.i30035700 = phi i64 [ %indvars.iv.next.i.i.i.i152.i3009, %bb.cqn ], [ 0, %bb.cqm ] ; 2 uses
  %i.krg = lshr exact i64 %indvars.iv.i.i.i.i146.i30035700, 3
  %i.krh = getelementptr inbounds nuw i8, ptr %i.krd, i64 %i.krg
  %i.kri = load i64, ptr %i.krh, align 8, !tbaa !219
  %i.krj = icmp eq i64 %i.kri, -1
  br i1 %i.krj, label %bb.cqn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894, !llvm.loop !20

.critedge.i.i.i.i.i.i148.i3005:                   ; preds = %bb.cqn, %bb.cqm
  %.not38.i.i.i.i.i.i149.i3006 = icmp eq i32 %i.kqz, %i.kre
  br i1 %.not38.i.i.i.i.i.i149.i3006, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894, label %bb.cqo

bb.cqo:                                           ; preds = %.critedge.i.i.i.i.i.i148.i3005
  %i.krk = lshr i32 %i.kqz, 6
  %i.krl = and i32 %i.kqz, 63
  %i.krm = zext nneg i32 %i.krl to i64
  %notmask.i40.i.i.i.i.i.i150.i3007 = shl nsw i64 -1, %i.krm
  %i.krn = zext nneg i32 %i.krk to i64
  %i.kro = getelementptr inbounds nuw [8 x i8], ptr %i.krd, i64 %i.krn
  %i.krp = load i64, ptr %i.kro, align 8, !tbaa !219
  %.demorgan.i.i.i.i151.i3008 = or i64 %i.krp, %notmask.i40.i.i.i.i.i.i150.i3007
  %i.krq = icmp eq i64 %.demorgan.i.i.i.i151.i3008, -1
  %i.krr = zext i1 %i.krq to i16
  %i.krs = or disjoint i16 %i.krr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894: ; preds = %.lr.ph5701, %bb.cqo, %.critedge.i.i.i.i.i.i148.i3005, %bb.cql, %bb.cqk, %bb.cqj
  %.sroa.0.0.insert.ext.i.i.i.i59.i2895 = phi i16 [ 256, %bb.cqk ], [ 256, %bb.cqj ], [ 257, %bb.cql ], [ 257, %.critedge.i.i.i.i.i.i148.i3005 ], [ %i.krs, %bb.cqo ], [ 256, %.lr.ph5701 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2895, ptr %i.kqr, align 4
  %i.krt = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i59.i2895 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2896

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2896: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i3010
  %.0.in.i.i.i.i61.i2897 = phi i8 [ %.0.in.pre.i.i.i.i154.i3011, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i153.i3010 ], [ %i.krt, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i58.i2894 ]
  %.0.i.i.i.i62.i2898 = trunc nuw i8 %.0.in.i.i.i.i61.i2897 to i1
  br i1 %.0.i.i.i.i62.i2898, label %bb.cqp, label %bb.crg

bb.cqp:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2896
  %i.kru = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.krv = load i32, ptr %i.kru, align 8, !tbaa !324 ; 2 uses
  %i.krw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.krx = load i32, ptr %i.krw, align 4, !tbaa !370 ; 2 uses
  %i.kry = icmp slt i32 %i.krx, %i.krv
  br i1 %i.kry, label %.lr.ph.i.i.i124.i2980, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i

.lr.ph.i.i.i124.i2980:                            ; preds = %bb.cqp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i
  %.029.i.i.i.i2981 = phi i32 [ %i.ktf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i ], [ %i.krx, %bb.cqp ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %.029.i.i.i.i2981)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i unwind label %bb.cqq

bb.cqq:                                           ; preds = %.lr.ph.i.i.i124.i2980
  %i.krz = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ksa = extractvalue { ptr, i32 } %i.krz, 0    ; 2 uses
  %i.ksb = extractvalue { ptr, i32 } %i.krz, 1    ; 2 uses
  %i.ksc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.ksd = icmp eq i32 %i.ksb, %i.ksc
  br i1 %i.ksd, label %bb.cqr, label %bb.cqs

bb.cqr:                                           ; preds = %bb.cqq
  %i.kse = call ptr @__cxa_begin_catch(ptr %i.ksa) #41
  %i.ksf = getelementptr inbounds nuw i8, ptr %i.kse, i64 8
  %i.ksg = load ptr, ptr %i.ksf, align 8, !tbaa !376 ; 2 uses
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.ksg, i64 144
  %i.ksi = load ptr, ptr %i.ksh, align 8, !tbaa !115 ; 4 uses
  %i.ksj = getelementptr inbounds nuw i8, ptr %i.ksg, i64 152
  %i.ksk = load i64, ptr %i.ksj, align 8, !tbaa !98
  %i.ksl = icmp eq i64 %i.ksk, 4
  br i1 %i.ksl, label %.lr.ph.i.i.i.i.preheader.i.i.i132.i2989, label %.loopexit.i.i.i130.i2987

.lr.ph.i.i.i.i.preheader.i.i.i132.i2989:          ; preds = %bb.cqr
  %i.ksm = load i8, ptr %i.ksi, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i133.i2990 = icmp eq i8 %i.ksm, 85
  br i1 %or.cond.not.i.i.i.i.i.i133.i2990, label %tailrecurse.i.i.i.i.i.i.i134.i2991, label %.loopexit.i.i.i130.i2987

tailrecurse.i.i.i.i.i.i.i134.i2991:               ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i132.i2989
  %i.ksn = getelementptr inbounds nuw i8, ptr %i.ksi, i64 1
  %i.kso = load i8, ptr %i.ksn, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i135.i2992 = icmp eq i8 %i.kso, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i135.i2992, label %tailrecurse.i.i.i.i.1.i.i.i136.i2993, label %.loopexit.i.i.i130.i2987

tailrecurse.i.i.i.i.1.i.i.i136.i2993:             ; preds = %tailrecurse.i.i.i.i.i.i.i134.i2991
  %i.ksp = getelementptr inbounds nuw i8, ptr %i.ksi, i64 2
  %i.ksq = load i8, ptr %i.ksp, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i137.i2994 = icmp eq i8 %i.ksq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i137.i2994, label %tailrecurse.i.i.i.i.2.i.i.i138.i2995, label %.loopexit.i.i.i130.i2987

tailrecurse.i.i.i.i.2.i.i.i138.i2995:             ; preds = %tailrecurse.i.i.i.i.1.i.i.i136.i2993
  %i.ksr = getelementptr inbounds nuw i8, ptr %i.ksi, i64 3
  %i.kss = load i8, ptr %i.ksr, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i139.i2996 = icmp eq i8 %i.kss, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i139.i2996, label %tailrecurse.i.i.i.i.3.i.i.i140.i2997, label %.loopexit.i.i.i130.i2987

tailrecurse.i.i.i.i.3.i.i.i140.i2997:             ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2995
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %26) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2981, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.cqz unwind label %bb.crb

.loopexit.i.i.i130.i2987:                         ; preds = %tailrecurse.i.i.i.i.2.i.i.i138.i2995, %tailrecurse.i.i.i.i.1.i.i.i136.i2993, %tailrecurse.i.i.i.i.i.i.i134.i2991, %.lr.ph.i.i.i.i.preheader.i.i.i132.i2989, %bb.cqr
  invoke void @__cxa_rethrow() #45
          to label %bb.crf unwind label %bb.cqy

bb.cqs:                                           ; preds = %bb.cqq
  %i.kst = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.ksu = icmp eq i32 %i.ksb, %i.kst
  br i1 %i.ksu, label %bb.cqt, label %common.resume

bb.cqt:                                           ; preds = %bb.cqs
  %i.ksv = call ptr @__cxa_begin_catch(ptr %i.ksa) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %25) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i2981, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cqu unwind label %bb.cqw

bb.cqu:                                           ; preds = %bb.cqt
  %i.ksw = load ptr, ptr %25, align 8, !tbaa !171
  %.not.i.i.i.i127.i2984 = icmp eq ptr %i.ksw, null
  br i1 %.not.i.i.i.i127.i2984, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2985, label %bb.cqv

bb.cqv:                                           ; preds = %bb.cqu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2985

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2985: ; preds = %bb.cqv, %bb.cqu
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.cqw:                                           ; preds = %bb.cqt
  %i.ksx = landingpad { ptr, i32 }
          cleanup
  %i.ksy = load ptr, ptr %25, align 8, !tbaa !171
  %.not.i4.i.i.i125.i2982 = icmp eq ptr %i.ksy, null
  br i1 %.not.i4.i.i.i125.i2982, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983, label %bb.cqx

bb.cqx:                                           ; preds = %bb.cqw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983: ; preds = %bb.cqx, %bb.cqw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cre

bb.cqy:                                           ; preds = %.loopexit.i.i.i130.i2987
  %i.ksz = landingpad { ptr, i32 }
          cleanup
  br label %bb.crd

bb.cqz:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2997
  %i.kta = load ptr, ptr %26, align 8, !tbaa !171
  %.not.i6.i.i.i143.i3000 = icmp eq ptr %i.kta, null
  br i1 %.not.i6.i.i.i143.i3000, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i3001, label %bb.cra

bb.cra:                                           ; preds = %bb.cqz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i3001

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i3001: ; preds = %bb.cra, %bb.cqz
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i

bb.crb:                                           ; preds = %tailrecurse.i.i.i.i.3.i.i.i140.i2997
  %i.ktb = landingpad { ptr, i32 }
          cleanup
  %i.ktc = load ptr, ptr %26, align 8, !tbaa !171
  %.not.i8.i.i.i141.i2998 = icmp eq ptr %i.ktc, null
  br i1 %.not.i8.i.i.i141.i2998, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2999, label %bb.crc

bb.crc:                                           ; preds = %bb.crb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2999

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2999: ; preds = %bb.crc, %bb.crb
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.crd

bb.crd:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2999, %bb.cqy
  %.pn.i.i.i.i131.i2988 = phi { ptr, i32 } [ %i.ktb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i142.i2999 ], [ %i.ksz, %bb.cqy ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.cre

bb.cre:                                           ; preds = %bb.crd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i126.i2983
  %i.ktd = landingpad { ptr, i32 }
          catch ptr null
  %i.kte = extractvalue { ptr, i32 } %i.ktd, 0
  call void @__clang_call_terminate(ptr %i.kte) #44
  unreachable

bb.crf:                                           ; preds = %.loopexit.i.i.i130.i2987
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i144.i3001, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i128.i2985
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clIiEEDaSX_.exit.sink.split.i.i.i.i, %.lr.ph.i.i.i124.i2980
  %i.ktf = add i32 %.029.i.i.i.i2981, 1           ; 2 uses
  %exitcond.not.i.i.i129.i2986 = icmp eq i32 %i.ktf, %i.krv
  br i1 %exitcond.not.i.i.i129.i2986, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_EEvSB_T_.exit.i, label %.lr.ph.i.i.i124.i2980, !llvm.loop !1257

bb.crg:                                           ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i60.i2896
  %i.ktg = load ptr, ptr %1, align 8, !tbaa !373  ; 2 uses
  %i.kth = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.kti = load i32, ptr %i.kth, align 4, !tbaa !370 ; 6 uses
  %i.ktj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ktk = load i32, ptr %i.ktj, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2899 = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store ptr %28, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i63.i2899, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2900 = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %27, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i64.i2900, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2901 = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i65.i2901, align 8
  store i8 1, ptr %24, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2902 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.ktg, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i66.i2902, align 8
  %.not.i.i.i.i.i.i67.i2903 = icmp slt i32 %i.kti, %i.ktk
  br i1 %.not.i.i.i.i.i.i67.i2903, label %bb.crh, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.crh:                                           ; preds = %bb.crg
  %i.ktl = add i32 %i.kti, 63                     ; 2 uses
  %i.ktm = srem i32 %i.ktl, 64
  %i.ktn = sub nsw i32 %i.ktl, %i.ktm             ; 6 uses
  %i.kto = and i32 %i.ktk, -64                    ; 4 uses
  %i.ktp = icmp slt i32 %i.kto, %i.ktn
  br i1 %i.ktp, label %bb.cri, label %bb.crj

bb.cri:                                           ; preds = %bb.crh
  %i.ktq = ashr i32 %i.ktk, 6
  %i.ktr = and i32 %i.ktk, 63
  %i.kts = zext nneg i32 %i.ktr to i64
  %notmask.i.i.i.i.i.i.i122.i2978 = shl nsw i64 -1, %i.kts
  %i.ktt = xor i64 %notmask.i.i.i.i.i.i.i122.i2978, -1
  %i.ktu = sub nsw i32 %i.ktn, %i.kti             ; 2 uses
  %i.ktv = zext nneg i32 %i.ktu to i64
  %notmask.i.i.i.i.i.i.i.i123.i2979 = shl nsw i64 -1, %i.ktv
  %i.ktw = xor i64 %notmask.i.i.i.i.i.i.i.i123.i2979, -1
  %i.ktx = sub nsw i32 64, %i.ktu
  %i.kty = zext nneg i32 %i.ktx to i64
  %i.ktz = shl i64 %i.ktw, %i.kty
  %i.kua = and i64 %i.ktz, %i.ktt
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %24, i32 noundef %i.ktq, i64 noundef %i.kua)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i

bb.crj:                                           ; preds = %bb.crh
  %.not32.i.i.i.i.i.i68.i2904 = icmp eq i32 %i.kti, %i.ktn
  br i1 %.not32.i.i.i.i.i.i68.i2904, label %bb.crl, label %bb.crk

bb.crk:                                           ; preds = %bb.crj
  %i.kub = sdiv i32 %i.kti, 64
  %i.kuc = sub nsw i32 %i.ktn, %i.kti             ; 2 uses
  %i.kud = zext nneg i32 %i.kuc to i64
  %notmask.i.i35.i.i.i.i.i.i69.i2905 = shl nsw i64 -1, %i.kud
  %i.kue = xor i64 %notmask.i.i35.i.i.i.i.i.i69.i2905, -1
  %i.kuf = sub nsw i32 64, %i.kuc
  %i.kug = zext nneg i32 %i.kuf to i64
  %i.kuh = shl i64 %i.kue, %i.kug
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %24, i32 noundef %i.kub, i64 noundef %i.kuh)
  br label %bb.crl

bb.crl:                                           ; preds = %bb.crk, %bb.crj
  %i.kui = add nsw i32 %i.ktn, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i2906 = icmp sgt i32 %i.kui, %i.kto
  br i1 %.not3351.i.i.i.i.i.i.i2906, label %._crit_edge.i.i.i.i.i.i72.i2910, label %.lr.ph.i.i.i.i.i.i70.i2907

.lr.ph.i.i.i.i.i.i70.i2907:                       ; preds = %bb.crl
  %i.kuj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kuk = getelementptr inbounds nuw i8, ptr %19, i64 4
  br label %bb.crm

._crit_edge.i.i.i.i.i.i72.i2910:                  ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %bb.crl
  %.not34.i.i.i.i.i.i73.i2911 = icmp eq i32 %i.ktk, %i.kto
  br i1 %.not34.i.i.i.i.i.i73.i2911, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiiSZ_.exit.i.i.i.i, label %bb.ctb

bb.crm:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i70.i2907
  %i.kul = phi i32 [ %i.kui, %.lr.ph.i.i.i.i.i.i70.i2907 ], [ %i.lau, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.052.i.i.i.i.i.i.i2908 = phi i32 [ %i.ktn, %.lr.ph.i.i.i.i.i.i70.i2907 ], [ %i.kul, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.kum = sdiv i32 %.052.i.i.i.i.i.i.i2908, 64   ; 3 uses
  %i.kun = sext i32 %i.kum to i64
  %i.kuo = getelementptr inbounds [8 x i8], ptr %i.ktg, i64 %i.kun
  %i.kup = load i64, ptr %i.kuo, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.kup, label %.lr.ph.i.i.i.i10.i.i.i100.i2936 [
    i64 -1, label %bb.crn
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i100.i2936:                  ; preds = %bb.crm
  %i.kuq = shl nsw i32 %i.kum, 6
  br label %bb.csf

bb.crn:                                           ; preds = %bb.crm
  %i.kur = shl nsw i32 %i.kum, 6                  ; 2 uses
  %i.kus = add i32 %i.kur, 64
  %i.kut = sext i32 %i.kus to i64
  %.0.off.i.i.i.i.i.i75.i2913 = add i32 %.052.i.i.i.i.i.i.i2908, 127
  %.not57.i.i.i.i.i.i.i76.i2914 = icmp ult i32 %.0.off.i.i.i.i.i.i75.i2913, 64
  br i1 %.not57.i.i.i.i.i.i.i76.i2914, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS8_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISH_EERKSF_IKNS0_4TypeEERS4_RSH_EUlSA_E_EEvSD_RKSH_SQ_SR_OT0_EUliE0_ZNS4_22applyToSelectedNoThrowISX_EEvSD_T_EUlSZ_E_EEvSD_SZ_SV_EUlSZ_E_EEvPKmiibSZ_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i77.i2915

.lr.ph56.i.i.i.i.i.i.i77.i2915:                   ; preds = %bb.crn
  %i.kuu = sext i32 %i.kur to i64
  br label %bb.cro

bb.cro:                                           ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i77.i2915
  %.055.i.i.i.i.i.i.i78.i2916 = phi i64 [ %i.kuu, %.lr.ph56.i.i.i.i.i.i.i77.i2915 ], [ %i.kwc, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.kuv = trunc i64 %.055.i.i.i.i.i.i.i78.i2916 to i32 ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS3_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUlS5_E_EEvS8_RKSC_SN_SO_OT0_ENKUliE0_clEi(ptr noundef nonnull align 8 dereferenceable(40) %28, i32 noundef %i.kuv)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.i.i.i.i.i.i.i.i unwind label %bb.crp

bb.crp:                                           ; preds = %bb.cro
  %i.kuw = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.kux = extractvalue { ptr, i32 } %i.kuw, 0    ; 2 uses
  %i.kuy = extractvalue { ptr, i32 } %i.kuw, 1    ; 2 uses
  %i.kuz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.kva = icmp eq i32 %i.kuy, %i.kuz
  br i1 %i.kva, label %bb.crq, label %bb.crr

bb.crq:                                           ; preds = %bb.crp
  %i.kvb = call ptr @__cxa_begin_catch(ptr %i.kux) #41
  %i.kvc = getelementptr inbounds nuw i8, ptr %i.kvb, i64 8
  %i.kvd = load ptr, ptr %i.kvc, align 8, !tbaa !376 ; 2 uses
  %i.kve = getelementptr inbounds nuw i8, ptr %i.kvd, i64 144
  %i.kvf = load ptr, ptr %i.kve, align 8, !tbaa !115 ; 4 uses
  %i.kvg = getelementptr inbounds nuw i8, ptr %i.kvd, i64 152
  %i.kvh = load i64, ptr %i.kvg, align 8, !tbaa !98
  %i.kvi = icmp eq i64 %i.kvh, 4
  br i1 %i.kvi, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2923, label %.loopexit.i.i.i.i.i.i.i85.i2921

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2923:   ; preds = %bb.crq
  %i.kvj = load i8, ptr %i.kvf, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2924 = icmp eq i8 %i.kvj, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i88.i2924, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2925, label %.loopexit.i.i.i.i.i.i.i85.i2921

tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2925:        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2923
  %i.kvk = getelementptr inbounds nuw i8, ptr %i.kvf, i64 1
  %i.kvl = load i8, ptr %i.kvk, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2926 = icmp eq i8 %i.kvl, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i90.i2926, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2927, label %.loopexit.i.i.i.i.i.i.i85.i2921

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2927:      ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2925
  %i.kvm = getelementptr inbounds nuw i8, ptr %i.kvf, i64 2
  %i.kvn = load i8, ptr %i.kvm, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2928 = icmp eq i8 %i.kvn, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i92.i2928, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2929, label %.loopexit.i.i.i.i.i.i.i85.i2921

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2929:      ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2927
  %i.kvo = getelementptr inbounds nuw i8, ptr %i.kvf, i64 3
  %i.kvp = load i8, ptr %i.kvo, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2930 = icmp eq i8 %i.kvp, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i94.i2930, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2931, label %.loopexit.i.i.i.i.i.i.i85.i2921

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i95.i2931:      ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2929
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %21) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kuv, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.cry unwind label %bb.csa

.loopexit.i.i.i.i.i.i.i85.i2921:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i93.i2929, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i91.i2927, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i89.i2925, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i87.i2923, %bb.crq
  invoke void @__cxa_rethrow() #45
          to label %bb.cse unwind label %bb.crx

bb.crr:                                           ; preds = %bb.crp
  %i.kvq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.kvr = icmp eq i32 %i.kuy, %i.kvq
  br i1 %i.kvr, label %bb.crs, label %common.resume

bb.crs:                                           ; preds = %bb.crr
  %i.kvs = call ptr @__cxa_begin_catch(ptr %i.kux) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %20) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.kuv, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.crt unwind label %bb.crv

bb.crt:                                           ; preds = %bb.crs
  %i.kvt = load ptr, ptr %20, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i83.i2919 = icmp eq ptr %i.kvt, null
  br i1 %.not.i.i.i.i.i.i.i.i83.i2919, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2920, label %bb.cru

bb.cru:                                           ; preds = %bb.crt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2920

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i84.i2920: ; preds = %bb.cru, %bb.crt
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111InPredicate10applyTypedINS0_10StringViewEZNKS6_5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS2_RSF_EUlS8_E_EEvSB_RKSF_SO_SP_OT0_EUliE0_ZNS2_22applyToSelectedNoThrowISV_EEvSB_T_EUlSX_E_EEvSB_SX_ST_ENKUlSX_E_clImEEDaSX_.exit.sink.split.i.i.i.i.i.i.i.i

bb.crv:                                           ; preds = %bb.crs
  %i.kvu = landingpad { ptr, i32 }
          cleanup
  %i.kvv = load ptr, ptr %20, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i81.i2917 = icmp eq ptr %i.kvv, null
  br i1 %.not.i19.i.i.i.i.i.i.i81.i2917, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2918, label %bb.crw

bb.crw:                                           ; preds = %bb.crv
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i82.i2918
end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  %i.bj = lshr exact i64 %indvars.iv.i.i.i.i91, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !219
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %bb.r, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !20

.critedge.i.i.i.i.i.i:                            ; preds = %bb.r, %bb.q
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.bc, %i.bh
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bn = lshr i32 %i.bc, 6
  %i.bo = and i32 %i.bc, 63
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.bp
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !219
  %.demorgan.i.i.i.i = or i64 %i.bs, %notmask.i40.i.i.i.i.i.i
  %i.bt = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.bu = zext i1 %i.bt to i16
  %i.bv = or disjoint i16 %i.bu, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.s, %.critedge.i.i.i.i.i.i, %bb.p, %bb.o, %bb.n
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.o ], [ 256, %bb.n ], [ 257, %bb.p ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.bv, %bb.s ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.au, align 4
  %i.bw = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.bw, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i16 = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i16, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !324 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !370 ; 2 uses
  %i.cb = icmp slt i32 %i.ca, %i.by
  br i1 %i.cb, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_EEvS9_T_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i
  %.029.i.i.i = phi i32 [ %i.di, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i ], [ %i.ca, %bb.t ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %.029.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { ptr, i32 } %i.cc, 1      ; 2 uses
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.cd) #41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !376 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !115 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !98
  %i.co = icmp eq i64 %i.cn, 4
  br i1 %i.co, label %.lr.ph.i.i.i.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.v
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.cp, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.cr, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.1.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i = icmp eq i8 %i.ct, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.2.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.1.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i = icmp eq i8 %i.cv, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.3.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.2.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ad unwind label %bb.af

.loopexit.i.i.i:                                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i, %tailrecurse.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.v
  invoke void @__cxa_rethrow() #45
          to label %bb.aj unwind label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.cw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.cx = icmp eq i32 %i.ce, %i.cw
  br i1 %i.cx, label %bb.x, label %common.resume

bb.x:                                             ; preds = %bb.w
  %i.cy = call ptr @__cxa_begin_catch(ptr %i.cd) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %11, align 8, !tbaa !171
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %11, align 8, !tbaa !171
  %.not.i4.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i4.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ai

bb.ac:                                            ; preds = %.loopexit.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.dd = load ptr, ptr %12, align 8, !tbaa !171
  %.not.i6.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i6.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split.i.i.i

bb.af:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %12, align 8, !tbaa !171
  %.not.i8.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i8.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i, %bb.ac
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.de, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i ], [ %i.dc, %bb.ac ]
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ai

common.resume:                                    ; preds = %bb.au, %bb.bl, %bb.w, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i, %bb.ah, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, %bb.bf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i, %bb.bw, %bb.ca
  %common.resume.op = phi { ptr, i32 } [ %i.hv, %bb.ca ], [ %.pn.i.i.i.i, %bb.ah ], [ %i.da, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i ], [ %i.cc, %bb.w ], [ %.pn.i18.i.i.i.i.i.i.i, %bb.bf ], [ %i.fv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i, %bb.bw ], [ %i.hg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit33.i.i.i.i.i.i.i ], [ %i.gi, %bb.bl ], [ %i.ex, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.ah, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #44
  unreachable

bb.aj:                                            ; preds = %.loopexit.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.sink.split.i.i.i, %.lr.ph.i.i.i
  %i.di = add i32 %.029.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.di, %i.by
  br i1 %exitcond.not.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_EEvS9_T_.exit, label %.lr.ph.i.i.i, !llvm.loop !2177

bb.ak:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.dj = load ptr, ptr %1, align 8, !tbaa !373   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !370 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !324 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %14, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %13, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dj, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i = icmp slt i32 %i.dl, %i.dn
  br i1 %.not.i.i.i.i.i.i, label %bb.al, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiiSS_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.do = add i32 %i.dl, 63                       ; 2 uses
  %i.dp = srem i32 %i.do, 64
  %i.dq = sub nsw i32 %i.do, %i.dp                ; 6 uses
  %i.dr = and i32 %i.dn, -64                      ; 4 uses
  %i.ds = icmp slt i32 %i.dr, %i.dq
  br i1 %i.ds, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dt = ashr i32 %i.dn, 6
  %i.du = and i32 %i.dn, 63
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.dx = sub nsw i32 %i.dq, %i.dl                ; 2 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.dy
  %i.dz = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ea = sub nsw i32 64, %i.dx
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %i.dz, %i.eb
  %i.ed = and i64 %i.ec, %i.dw
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.dt, i64 noundef %i.ed)
  br label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiiSS_.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.dl, %i.dq
  br i1 %.not32.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = sdiv i32 %i.dl, 64
  %i.ef = sub nsw i32 %i.dq, %i.dl                ; 2 uses
  %i.eg = zext nneg i32 %i.ef to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.eg
  %i.eh = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.ei = sub nsw i32 64, %i.ef
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl i64 %i.eh, %i.ej
  call fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.ee, i64 noundef %i.ek)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.el = add nsw i32 %i.dq, 64                   ; 2 uses
  %.not3346.i.i.i.i.i.i = icmp sgt i32 %i.el, %i.dr
  br i1 %.not3346.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i, %bb.ap
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.dn, %i.dr
  br i1 %.not34.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiiSS_.exit.i.i.i, label %bb.bz

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ap, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.em = phi i32 [ %i.hq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.el, %bb.ap ] ; 2 uses
  %.047.i.i.i.i.i.i = phi i32 [ %i.em, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.dq, %bb.ap ] ; 2 uses
  %i.en = sdiv i32 %.047.i.i.i.i.i.i, 64          ; 3 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !219 ; 2 uses
  switch i64 %i.eq, label %.lr.ph.i.i.i.i10.i.i.i [
    i64 -1, label %bb.aq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i
  %i.er = shl nsw i32 %i.en, 6
  br label %bb.bi

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.es = shl nsw i32 %i.en, 6                    ; 2 uses
  %i.et = add i32 %i.es, 64
  %i.eu = sext i32 %i.et to i64
  %.0.off.i.i.i.i.i.i = add i32 %.047.i.i.i.i.i.i, 127
  %.not57.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not57.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUliE_ZNS4_22applyToSelectedNoThrowISQ_EEvSB_T_EUlSS_E_EEvSB_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph56.i.i.i.i.i.i.i

.lr.ph56.i.i.i.i.i.i.i:                           ; preds = %bb.aq
  %i.ev = sext i32 %i.es to i64
  br label %bb.ar

bb.ar:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i, %.lr.ph56.i.i.i.i.i.i.i
  %.055.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph56.i.i.i.i.i.i.i ], [ %i.gd, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ew = trunc i64 %.055.i.i.i.i.i.i.i to i32    ; 3 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(24) %14, i32 noundef %i.ew)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ex = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { ptr, i32 } %i.ex, 1      ; 2 uses
  %i.fa = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #41
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fc = call ptr @__cxa_begin_catch(ptr %i.ey) #41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !376 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !115 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 152
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !98
  %i.fj = icmp eq i64 %i.fi, 4
  br i1 %i.fj, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i:           ; preds = %bb.at
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !96
  %or.cond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fk, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !96
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.fm, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !96
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !96
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i = icmp eq i8 %i.fq, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i:              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %7) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bb unwind label %bb.bd

.loopexit.i.i.i.i.i.i.i:                          ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i, %bb.at
  invoke void @__cxa_rethrow() #45
          to label %bb.bh unwind label %bb.ba

bb.au:                                            ; preds = %bb.as
  %i.fr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.fs = icmp eq i32 %i.ez, %i.fr
  br i1 %i.fs, label %bb.av, label %common.resume

bb.av:                                            ; preds = %bb.au
  %i.ft = call ptr @__cxa_begin_catch(ptr %i.ey) #41 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #41
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fu = load ptr, ptr %6, align 8, !tbaa !171
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_120VectorSetInPredicate5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUliE_ZNS2_22applyToSelectedNoThrowISO_EEvS9_T_EUlSQ_E_EEvS9_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.sink.split.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.av
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %6, align 8, !tbaa !171
  %.not.i19.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i19.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #41
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit20.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bg
end_hunk_21
