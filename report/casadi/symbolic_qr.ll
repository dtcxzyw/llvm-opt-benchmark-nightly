Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/symbolic_qr?download=true
inline.NumInlined: 1599
inline.NumDeleted: 698
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK6casadi10SymbolicQr14linsol_eval_sxEPPKNS_6SXElemEPPS1_PxS5_Pvbx:bb.a
  br label %bb.br

._crit_edge:                                      ; preds = %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit
  %i.gp = load ptr, ptr %40, align 8, !tbaa !60   ; 3 uses
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hf, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i ], [ %i.gp, %._crit_edge ] ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !55 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.gu
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gs, %.lr.ph.i.i.i ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i) #25
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.gu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.gr, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gw = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.gs, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !57
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #24
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.bi, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i unwind label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #26
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hf, %i.gq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %40, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.hg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gp, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i
  %i.hh = load ptr, ptr %i.fo, align 8, !tbaa !61
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #24
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.hl = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !55 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i185 = icmp eq ptr %i.hm, %i.ho
  br i1 %.not4.i.i.i.i185, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i191, label %.lr.ph.i.i.i.i186

.lr.ph.i.i.i.i186:                                ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit, %.lr.ph.i.i.i.i186
  %.05.i.i.i.i187 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i186 ], [ %i.hm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i187) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i187, i64 8 ; 2 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.hp, %i.ho
  br i1 %.not.i.i.i.i188, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i189, label %.lr.ph.i.i.i.i186, !llvm.loop !0

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i189: ; preds = %.lr.ph.i.i.i.i186
  %.pr.i.i190 = load ptr, ptr %i.hl, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i191

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i191: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i189, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit
  %i.hq = phi ptr [ %.pr.i.i190, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i189 ], [ %i.hm, %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i192 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i1.i.i192, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i193, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i191
  %i.hr = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !57
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #24
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i193

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i193: ; preds = %bb.bl, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i191
  %i.hw = getelementptr inbounds nuw i8, ptr %39, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit194 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i193
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #26
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit194:       ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  ret void

.loopexit.split-lp302.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %.noexc, %_ZN6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5zerosERKNS_8SparsityE.exit, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp302

bb.bn:                                            ; preds = %.loopexit306
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bo:                                            ; preds = %.noexc181, %bb.bc, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE5size1Ev.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bf, %bb.be
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixINS_6SXElemEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %41) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn108 = phi { ptr, i32 } [ %i.ib, %bb.bp ], [ %i.ia, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %.loopexit.split-lp291

bb.br:                                            ; preds = %.lr.ph, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247
  %.072320 = phi i64 [ 0, %.lr.ph ], [ %i.kv, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247 ]
  %.073319 = phi ptr [ %i.gh, %.lr.ph ], [ %i.kj, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247 ] ; 2 uses
  %.074318 = phi ptr [ %i.gi, %.lr.ph ], [ %i.kk, %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247 ] ; 2 uses
  %i.ic = load ptr, ptr %40, align 8, !tbaa !60
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.id)
          to label %.noexc195 unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc195:                                        ; preds = %bb.br
  %i.if = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit197 unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit197: ; preds = %.noexc195
  %i.ig = load ptr, ptr %40, align 8, !tbaa !60
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 80
  %i.ii = invoke noundef ptr @_ZN6casadi6MatrixINS_6SXElemEEptEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ih)
          to label %bb.bs unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit197
  %i.ij = icmp sgt i64 %i.if, 0
  br i1 %i.ij, label %.lr.ph.i.i.i.i.i199.preheader, label %.loopexit295

.lr.ph.i.i.i.i.i199.preheader:                    ; preds = %bb.bs
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !146
  br label %.lr.ph.i.i.i.i.i199

.lr.ph.i.i.i.i.i199:                              ; preds = %.lr.ph.i.i.i.i.i199.preheader, %.noexc203
  %.012.i.i.i.i.i200 = phi i64 [ %i.io, %.noexc203 ], [ %i.if, %.lr.ph.i.i.i.i.i199.preheader ] ; 2 uses
  %.0811.i.i.i.i.i201 = phi ptr [ %i.in, %.noexc203 ], [ %i.ik, %.lr.ph.i.i.i.i.i199.preheader ] ; 2 uses
  %.0910.i.i.i.i.i202 = phi ptr [ %i.im, %.noexc203 ], [ %.074318, %.lr.ph.i.i.i.i.i199.preheader ] ; 2 uses
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i201, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i202)
          to label %.noexc203 unwind label %.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc203:                                        ; preds = %.lr.ph.i.i.i.i.i199
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i202, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i201, i64 8
  %i.io = add nsw i64 %.012.i.i.i.i.i200, -1
  %i.ip = icmp samesign ugt i64 %.012.i.i.i.i.i200, 1
  br i1 %i.ip, label %.lr.ph.i.i.i.i.i199, label %.loopexit295, !llvm.loop !143

.loopexit295:                                     ; preds = %.noexc203, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  invoke void @_ZNK6casadi8FunctionclERKSt6vectorINS_6MatrixINS_6SXElemEEESaIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.42") align 8 %43, ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.bt unwind label %bb.cd

bb.bt:                                            ; preds = %.loopexit295
  %i.iq = load ptr, ptr %i.gj, align 8, !tbaa !62 ; 2 uses
  %i.ir = load ptr, ptr %43, align 8, !tbaa !60   ; 3 uses
  %.not.i.i205.not = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i.i205.not, label %bb.bu, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit

bb.bu:                                            ; preds = %bb.bt
  %44 = ptrtoint ptr %i.iq to i64
  %45 = ptrtoint ptr %i.ir to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 40
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, i64 noundef 0, i64 noundef %47) #27
          to label %.noexc206 unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.bu
  unreachable

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit: ; preds = %bb.bt
  invoke void @_ZN6casadi6MatrixINS_6SXElemEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 8 dereferenceable(40) %i.ir)
          to label %bb.bv unwind label %.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit
  %i.is = load ptr, ptr %43, align 8, !tbaa !60   ; 3 uses
  %i.it = load ptr, ptr %i.gj, align 8, !tbaa !62 ; 2 uses
  %.not4.i.i.i207 = icmp eq ptr %i.is, %i.it
  br i1 %.not4.i.i.i207, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i223, label %.lr.ph.i.i.i208

.lr.ph.i.i.i208:                                  ; preds = %bb.bv, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i219
  %.05.i.i.i209 = phi ptr [ %i.ji, %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i219 ], [ %i.is, %bb.bv ] ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.05.i.i.i209, i64 16 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !55 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.05.i.i.i209, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i210 = icmp eq ptr %i.iv, %i.ix
  br i1 %.not4.i.i.i.i.i.i.i.i210, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i216, label %.lr.ph.i.i.i.i.i.i.i.i211

.lr.ph.i.i.i.i.i.i.i.i211:                        ; preds = %.lr.ph.i.i.i208, %.lr.ph.i.i.i.i.i.i.i.i211
  %.05.i.i.i.i.i.i.i.i212 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i.i.i211 ], [ %i.iv, %.lr.ph.i.i.i208 ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i212) #25
  %i.iy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i212, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i213 = icmp eq ptr %i.iy, %i.ix
  br i1 %.not.i.i.i.i.i.i.i.i213, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i214, label %.lr.ph.i.i.i.i.i.i.i.i211, !llvm.loop !0

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i214: ; preds = %.lr.ph.i.i.i.i.i.i.i.i211
  %.pr.i.i.i.i.i.i215 = load ptr, ptr %i.iu, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i216

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i216: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i214, %.lr.ph.i.i.i208
  %i.iz = phi ptr [ %.pr.i.i.i.i.i.i215, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i214 ], [ %i.iv, %.lr.ph.i.i.i208 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i217 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i1.i.i.i.i.i.i217, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i218, label %bb.bw

bb.bw:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i216
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i209, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !57
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i218

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i218: ; preds = %bb.bw, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i216
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i209, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jf)
          to label %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i219 unwind label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i218
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #26
  unreachable

_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i219: ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i.i.i.i.i218
  %i.ji = getelementptr inbounds nuw i8, ptr %.05.i.i.i209, i64 40 ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %i.ji, %i.it
  br i1 %.not.i.i.i220, label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i221, label %.lr.ph.i.i.i208, !llvm.loop !1

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i221: ; preds = %_ZSt8_DestroyIN6casadi6MatrixINS0_6SXElemEEEEvPT_.exit.i.i.i219
  %.pr.i222 = load ptr, ptr %43, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i223

_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i223: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i221, %bb.bv
  %i.jj = phi ptr [ %.pr.i222, %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i221 ], [ %i.is, %bb.bv ] ; 3 uses
  %.not.i.i1.i224 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i1.i224, label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit225, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i223
  %i.jk = load ptr, ptr %i.gk, align 8, !tbaa !61
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %i.jj to i64
  %i.jn = sub i64 %i.jl, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jn) #24
  br label %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit225

_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit225: ; preds = %_ZSt8_DestroyIPN6casadi6MatrixINS0_6SXElemEEES3_EvT_S5_RSaIT0_E.exit.i223, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  %i.jo = invoke noundef ptr @_ZN6casadi6MatrixINS_6SXElemEEptEv(ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev.exit225
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !146 ; 2 uses
  %i.jq = invoke noundef ptr @_ZN6casadi6MatrixINS_6SXElemEEptEv(ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !146
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 3                 ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, 0
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i227, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6casadi6SXElemESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i227:                              ; preds = %bb.ca, %.noexc231
  %.012.i.i.i.i.i228 = phi i64 [ %i.kb, %.noexc231 ], [ %i.jw, %bb.ca ] ; 2 uses
  %.0811.i.i.i.i.i229 = phi ptr [ %i.ka, %.noexc231 ], [ %.073319, %bb.ca ] ; 2 uses
  %.0910.i.i.i.i.i230 = phi ptr [ %i.jz, %.noexc231 ], [ %i.jp, %bb.ca ] ; 2 uses
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i229, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i230)
          to label %.noexc231 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc231:                                        ; preds = %.lr.ph.i.i.i.i.i227
  %i.jz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i230, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i229, i64 8
  %i.kb = add nsw i64 %.012.i.i.i.i.i228, -1
  %i.kc = icmp samesign ugt i64 %.012.i.i.i.i.i228, 1
  br i1 %i.kc, label %.lr.ph.i.i.i.i.i227, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6casadi6SXElemESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !144

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6casadi6SXElemESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.noexc231, %bb.ca
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %42)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6casadi6SXElemESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ke = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit234: ; preds = %.noexc232
  %i.kf = load ptr, ptr %40, align 8, !tbaa !60
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 80
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixINS_6SXElemEE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %i.kg)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc235:                                        ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit234
  %i.ki = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kh)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237: ; preds = %.noexc235
  %i.kj = getelementptr inbounds [8 x i8], ptr %.073319, i64 %i.ke
  %i.kk = getelementptr inbounds [8 x i8], ptr %.074318, i64 %i.ki
  %i.kl = load ptr, ptr %i.gl, align 8, !tbaa !55 ; 3 uses
  %i.km = load ptr, ptr %i.gm, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i.i238 = icmp eq ptr %i.kl, %i.km
  br i1 %.not4.i.i.i.i238, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i244, label %.lr.ph.i.i.i.i239

.lr.ph.i.i.i.i239:                                ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237, %.lr.ph.i.i.i.i239
  %.05.i.i.i.i240 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i239 ], [ %i.kl, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237 ] ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i240) #25
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i240, i64 8 ; 2 uses
  %.not.i.i.i.i241 = icmp eq ptr %i.kn, %i.km
  br i1 %.not.i.i.i.i241, label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i242, label %.lr.ph.i.i.i.i239, !llvm.loop !0

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i242: ; preds = %.lr.ph.i.i.i.i239
  %.pr.i.i243 = load ptr, ptr %i.gl, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i244

_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i244: ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i242, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237
  %i.ko = phi ptr [ %.pr.i.i243, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i242 ], [ %i.kl, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit237 ] ; 3 uses
  %.not.i.i1.i.i245 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i1.i.i245, label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i246, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i244
  %i.kp = load ptr, ptr %i.gn, align 8, !tbaa !57
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.ko to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.ks) #24
  br label %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i246

_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i246: ; preds = %bb.cb, %_ZSt8_DestroyIPN6casadi6SXElemES1_EvT_S3_RSaIT0_E.exit.i.i244
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.go)
          to label %_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247 unwind label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i246
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #26
  unreachable

_ZN6casadi6MatrixINS_6SXElemEED2Ev.exit247:       ; preds = %_ZNSt6vectorIN6casadi6SXElemESaIS1_EED2Ev.exit.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  %i.kv = add nuw nsw i64 %.072320, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.kv, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.br, !llvm.loop !145

.loopexit.split-lp291.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i199, %.noexc195, %bb.br, %_ZNK6casadi13GenericMatrixINS_6MatrixINS_6SXElemEEEE3nnzEv.exit197
  %lpad.loopexit.split-lp441 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp291

bb.cd:                                            ; preds = %.loopexit295
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp297.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EE2atEm.exit, %bb.bu
  %lpad.loopexit.split-lp444 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi6MatrixINS0_6SXElemEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %43) #25
  br label %bb.ce

end_hunk_0
