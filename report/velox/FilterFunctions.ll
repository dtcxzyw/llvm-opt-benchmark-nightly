Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FilterFunctions?download=true
inline.NumInlined: 3070
inline.NumDeleted: 1405
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_:bb.a
  %i.gn = load i64, ptr %i.fk, align 8, !tbaa !122
  store i64 %i.gn, ptr %i.fp, align 8, !tbaa !122
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.af, %bb.ae, %bb.ad
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.ad ], [ %i.fl, %bb.ae ], [ %i.fl, %bb.af ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.ad ], [ %i.gh, %bb.ae ], [ 8, %bb.af ]
  %i.go = phi ptr [ %.pre25.i, %bb.ad ], [ %i.gf, %bb.ae ], [ %i.gf, %bb.af ] ; 2 uses
  %i.gp = phi ptr [ %.pre.i, %bb.ad ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.af ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.pre-phi32.i ; 3 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %.pre-phi34.i, %i.gr            ; 3 uses
  %i.gt = icmp sgt i64 %i.gs, 8
  br i1 %i.gt, label %bb.ag, label %bb.ah, !prof !87

bb.ag:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.go, ptr align 8 %i.gq, i64 %i.gs, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

bb.ah:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.gu = icmp eq i64 %i.gs, 8
  br i1 %i.gu, label %bb.ai, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load i64, ptr %i.gq, align 8, !tbaa !122
  store i64 %i.gv, ptr %i.go, align 8, !tbaa !122
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ab, %bb.aa, %bb.z, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.gw = load ptr, ptr %i.en, align 8, !tbaa !229
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.fn
  store ptr %i.gx, ptr %i.ex, align 8, !tbaa !258
  br label %.noexc

.noexc:                                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i, %.lr.ph.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.es, ptr noundef nonnull align 8 dereferenceable(12) %i.gy, i64 12, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.ha = load i16, ptr %i.gz, align 4
  store i16 %i.ha, ptr %i.et, align 4
  %i.hb = load ptr, ptr %18, align 8, !tbaa !259, !nonnull !89, !align !255
  invoke void @_ZN8facebook5velox17SelectivityVector9intersectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull align 8 dereferenceable(38) %i.hb)
          to label %.noexc75 unwind label %.loopexit181

.noexc75:                                         ; preds = %.noexc
  %i.hc = load i32, ptr %i.eu, align 4, !tbaa !260
  %i.hd = load i32, ptr %i.ev, align 8, !tbaa !192
  %i.he = icmp slt i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc75
  %i.hf = load i32, ptr %i.em, align 8, !tbaa !248
  %i.hg = add nsw i32 %i.hf, 1                    ; 2 uses
  store i32 %i.hg, ptr %i.em, align 8, !tbaa !248
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !252
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !253
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 4
  %i.hq = icmp ugt i64 %i.hp, %i.hh
  br i1 %i.hq, label %.lr.ph.i.backedge, label %.thread

.lr.ph.i.backedge:                                ; preds = %bb.aj, %bb.ce
  %.be = phi i64 [ %i.hh, %bb.aj ], [ %i.qq, %bb.ce ]
  br label %.lr.ph.i, !llvm.loop !12

bb.ak:                                            ; preds = %.noexc75
  %i.hr = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255
  %i.hs = load i32, ptr %i.em, align 8, !tbaa !248 ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !253
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !264 ; 4 uses
  %i.hx = add nsw i32 %i.hs, 1
  store i32 %i.hx, ptr %i.em, align 8, !tbaa !248
  %.not = icmp eq ptr %i.hw, null
  br i1 %.not, label %.thread, label %bb.al

.loopexit181:                                     ; preds = %.noexc, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp182:                            ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.hy = load ptr, ptr %1, align 8, !tbaa !157   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !241, !noalias !521
  invoke void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::SelectivityVector") align 8 %19, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull %i.hy, ptr noundef %i.ia, ptr noundef null)
          to label %_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit unwind label %bb.cf

_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZN8facebook5velox9functions13toWrapCaptureINS0_11ArrayVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKNS0_17SelectivityVectorERKSt10shared_ptrIT_E(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %20, i32 noundef %i.cn, ptr noundef nonnull %i.hw, ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.am unwind label %bb.cg

bb.am:                                            ; preds = %_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull align 8 dereferenceable(38) %19, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %21)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ie = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr %21, align 8, !tbaa !129
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ie, ptr noundef nonnull align 8 dereferenceable(94) %i.if, ptr noundef nonnull align 8 dereferenceable(38) %19, i1 noundef zeroext true)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ig = load i8, ptr %i.eo, align 1, !tbaa !249, !range !88, !noundef !89
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.aq

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.ap
  %.0.in.pre.i.i = load i8, ptr %i.et, align 4, !tbaa !43, !range !88
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ii = load i32, ptr %i.eu, align 4, !tbaa !260
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ik = load i32, ptr %i.ev, align 8, !tbaa !192 ; 6 uses
  %i.il = load i32, ptr %i.es, align 8, !tbaa !265
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %bb.as, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.in = load ptr, ptr %i.en, align 8, !tbaa !229 ; 2 uses
  %.not.i.i.i78 = icmp sgt i32 %i.ik, 0
  br i1 %.not.i.i.i78, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.io = and i32 %i.ik, 2147483584               ; 3 uses
  %i.ip = zext nneg i32 %i.io to i64
  %.not37.i.i.not.i.i228.not = icmp eq i32 %i.io, 0
  br i1 %.not37.i.i.not.i.i228.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.au:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i229, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ip
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %indvars.iv.i.i229 = phi i64 [ %indvars.iv.next.i.i, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.iq = lshr exact i64 %indvars.iv.i.i229, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !122
  %i.it = icmp eq i64 %i.is, -1
  br i1 %i.it, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !13

.critedge.i.i.i.i:                                ; preds = %bb.au, %bb.at
  %.not38.i.i.i.i = icmp eq i32 %i.ik, %i.io
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i.i.i
  %i.iu = lshr i32 %i.ik, 6
  %i.iv = and i32 %i.ik, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.iw
  %i.ix = zext nneg i32 %i.iu to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !122
  %.demorgan.i.i = or i64 %i.iz, %notmask.i40.i.i.i.i
  %i.ja = icmp eq i64 %.demorgan.i.i, -1
  %i.jb = zext i1 %i.ja to i16
  %i.jc = or disjoint i16 %i.jb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.av, %.critedge.i.i.i.i, %bb.as, %bb.ar, %bb.aq
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.ar ], [ 256, %bb.aq ], [ 257, %bb.as ], [ 257, %.critedge.i.i.i.i ], [ %i.jc, %bb.av ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.et, align 4
  %i.jd = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.jd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.je = load i32, ptr %i.eu, align 4, !tbaa !260 ; 3 uses
  br i1 %.0.i.i, label %bb.aw, label %bb.bu

bb.aw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.jf = load i32, ptr %i.ev, align 8, !tbaa !192 ; 2 uses
  %i.jg = icmp slt i32 %i.je, %i.jf
  br i1 %i.jg, label %.lr.ph.i77, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit

.lr.ph.i77:                                       ; preds = %bb.aw, %.noexc79
  %.04.i = phi i32 [ %23, %.noexc79 ], [ %i.je, %bb.aw ] ; 3 uses
  %i.jh = load ptr, ptr %1, align 8, !tbaa !157   ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef zeroext i1 %i.jk(ptr noundef nonnull align 8 dereferenceable(94) %i.jh, i32 noundef %.04.i)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit, !inline_history !266

.noexc108:                                        ; preds = %.lr.ph.i77
  br i1 %i.jl, label %.noexc79, label %bb.ax

bb.ax:                                            ; preds = %.noexc108
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !235
  %22 = sext i32 %.04.i to i64                    ; 4 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %22
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !58 ; 2 uses
  %i.jp = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %22
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !58
  %i.js = load i32, ptr %i.f, align 4, !tbaa !58
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !235
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %22
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !58
  %i.jv = icmp sgt i32 %i.jo, 0
  br i1 %i.jv, label %.lr.ph.i103, label %.noexc79

.lr.ph.i103:                                      ; preds = %bb.ax
  %i.jw = sext i32 %i.jr to i64
  %wide.trip.count.i = zext nneg i32 %i.jo to i64
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bt, %.lr.ph.i103
  %i.jx = phi ptr [ %.pre, %.lr.ph.i103 ], [ %i.pc, %bb.bt ]
  %i.jy = phi ptr [ %.pre, %.lr.ph.i103 ], [ %i.pd, %bb.bt ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i, %bb.bt ] ; 2 uses
  %.not2.i118 = icmp eq ptr %i.jy, null
  br i1 %.not2.i118, label %bb.az, label %.noexc109

bb.az:                                            ; preds = %bb.ay
  %i.jz = load ptr, ptr %17, align 8, !tbaa !153  ; 4 uses
  %.not.i119 = icmp eq ptr %i.jz, null
  br i1 %.not.i119, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !214, !range !88, !noalias !522, !noundef !89
  %i.kc = trunc nuw i8 %i.kb to i1
  %.phi.trans.insert.i.i120 = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %.pre.i.i121 = load ptr, ptr %.phi.trans.insert.i.i120, align 8, !tbaa !215, !noalias !522
  %.phi.trans.insert2.i.i122 = getelementptr inbounds nuw i8, ptr %i.jz, i64 40 ; 2 uses
  %.pre3.i.i123 = load ptr, ptr %.phi.trans.insert2.i.i122, align 8, !tbaa !215, !noalias !522 ; 2 uses
  %i.kd = icmp eq ptr %.pre.i.i121, %.pre3.i.i123 ; 2 uses
  br i1 %i.kc, label %.critedge.i.i133, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.kd, label %.critedge.thread.i.i124, label %.invoke, !prof !87

.critedge.i.i133:                                 ; preds = %bb.ba
  br i1 %i.kd, label %.critedge.thread.i.i124, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134

.critedge.thread.i.i124:                          ; preds = %.critedge.i.i133, %bb.bb
  %i.ke = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc136 unwind label %.loopexit ; 6 uses

.noexc136:                                        ; preds = %.critedge.thread.i.i124
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, i8 0, i64 72, i1 false), !noalias !523
  store i8 1, ptr %i.kf, align 8, !tbaa !217, !noalias !523
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.kg, i8 0, i64 13, i1 false), !noalias !523
  store i8 1, ptr %i.kh, align 1, !tbaa !227, !noalias !523
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ki, i8 0, i64 48, i1 false), !noalias !523
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134: ; preds = %.critedge.i.i133
  %i.kj = getelementptr inbounds i8, ptr %.pre3.i.i123, i64 -8 ; 3 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !193, !noalias !522
  store ptr null, ptr %i.kj, align 8, !tbaa !193, !noalias !522
  store ptr %i.kj, ptr %.phi.trans.insert2.i.i122, align 8, !tbaa !228, !noalias !522
  %i.kl = inttoptr i64 %i.kk to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

bb.bc:                                            ; preds = %bb.az
  %i.km = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc137 unwind label %.loopexit ; 6 uses

.noexc137:                                        ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i8 0, i64 72, i1 false), !noalias !524
  store i8 1, ptr %i.kn, align 8, !tbaa !217, !noalias !524
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ko, i8 0, i64 13, i1 false), !noalias !524
  store i8 1, ptr %i.kp, align 1, !tbaa !227, !noalias !524
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, i8 0, i64 48, i1 false), !noalias !524
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125: ; preds = %.noexc137, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134, %.noexc136
  %.sroa.0.0.i126 = phi ptr [ %i.km, %.noexc137 ], [ %i.ke, %.noexc136 ], [ %i.kl, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134 ] ; 3 uses
  %i.kr = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 6 uses
  store ptr %.sroa.0.0.i126, ptr %i.eg, align 8, !tbaa !193
  %.not.i.i.i.i.i127 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i127, label %.noexc109, label %bb.bd

bb.bd:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i128 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i128, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !230
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129:   ; preds = %bb.be, %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i130 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i130, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !232
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131: ; preds = %bb.bf, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 120) #25
  %.pre.i132 = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 2 uses
  br label %.noexc109

.noexc109:                                        ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125, %bb.ay
  %i.lg = phi ptr [ %.sroa.0.0.i126, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125 ], [ %.pre.i132, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131 ], [ %i.jx, %bb.ay ] ; 5 uses
  %i.lh = phi ptr [ %.sroa.0.0.i126, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125 ], [ %.pre.i132, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131 ], [ %i.jy, %bb.ay ] ; 8 uses
  %i.li = add nsw i64 %indvars.iv.i, %i.jw        ; 5 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !267 ; 4 uses
  %.not.i.i104 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i104, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc109
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 58
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !268, !range !88, !noundef !89
  %i.ln = trunc nuw i8 %i.lm to i1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 57
  %i.lp = load i8, ptr %i.lo, align 1, !range !88
  %i.lq = trunc nuw i8 %i.lp to i1
  %or.cond.i.i = select i1 %i.ln, i1 true, i1 %i.lq
  br i1 %or.cond.i.i, label %.split.i, label %bb.bh

.split.i:                                         ; preds = %bb.bg
  %i.lr = lshr i64 %i.li, 6
  %i.ls = and i64 %i.lr, 67108863
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !122
  %i.lv = and i64 %i.li, 63
  %i.lw = shl nuw i64 1, %i.lv
  %i.lx = and i64 %i.lu, %i.lw
  %.not.i.i.i107 = icmp eq i64 %i.lx, 0
  br i1 %.not.i.i.i107, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lh, i64 59
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !269, !range !88, !noundef !89
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split15.i

.split15.i:                                       ; preds = %bb.bh
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !270
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.li
  %i.me = load i32, ptr %i.md, align 4, !tbaa !58
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = lshr i64 %i.mf, 6
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !122
  %i.mj = and i64 %i.mf, 63
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = and i64 %i.mk, %i.mi
  %.not.i7.i.i = icmp eq i64 %i.ml, 0
  br i1 %.not.i7.i.i, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.bh
  %i.mm = load i64, ptr %i.lk, align 8, !tbaa !122
  %i.mn = and i64 %i.mm, 1
  %.not.i6.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i6.i.i, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split15.i, %.split.i, %.noexc109
  %.not2.i = icmp eq ptr %i.lg, null
  br i1 %.not2.i, label %bb.bi, label %.noexc110

bb.bi:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.mo = load ptr, ptr %17, align 8, !tbaa !153  ; 4 uses
  %.not.i111 = icmp eq ptr %i.mo, null
  br i1 %.not.i111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !214, !range !88, !noalias !525, !noundef !89
  %i.mr = trunc nuw i8 %i.mq to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !215, !noalias !525
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 40 ; 2 uses
  %.pre3.i.i = load ptr, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !215, !noalias !525 ; 2 uses
  %i.ms = icmp eq ptr %.pre.i.i, %.pre3.i.i       ; 2 uses
  br i1 %i.mr, label %.critedge.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ms, label %.critedge.thread.i.i, label %.invoke, !prof !87

.invoke:                                          ; preds = %bb.bk, %bb.bb
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.critedge.i.i:                                    ; preds = %bb.bj
  br i1 %i.ms, label %.critedge.thread.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.bk
  %i.mt = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc116 unwind label %.loopexit ; 6 uses

.noexc116:                                        ; preds = %.critedge.thread.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.mt, i8 0, i64 72, i1 false), !noalias !526
  store i8 1, ptr %i.mu, align 8, !tbaa !217, !noalias !526
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.mv, i8 0, i64 13, i1 false), !noalias !526
  store i8 1, ptr %i.mw, align 1, !tbaa !227, !noalias !526
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i8 0, i64 48, i1 false), !noalias !526
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i: ; preds = %.critedge.i.i
  %i.my = getelementptr inbounds i8, ptr %.pre3.i.i, i64 -8 ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !193, !noalias !525
  store ptr null, ptr %i.my, align 8, !tbaa !193, !noalias !525
  store ptr %i.my, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !228, !noalias !525
  %i.na = inttoptr i64 %i.mz to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.nb = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc117 unwind label %.loopexit ; 6 uses

.noexc117:                                        ; preds = %bb.bl
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nb, i8 0, i64 72, i1 false), !noalias !527
  store i8 1, ptr %i.nc, align 8, !tbaa !217, !noalias !527
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.nd, i8 0, i64 13, i1 false), !noalias !527
  store i8 1, ptr %i.ne, align 1, !tbaa !227, !noalias !527
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nf, i8 0, i64 48, i1 false), !noalias !527
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i: ; preds = %.noexc117, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i, %.noexc116
  %.sroa.0.0.i112 = phi ptr [ %i.nb, %.noexc117 ], [ %i.mt, %.noexc116 ], [ %i.na, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i ] ; 2 uses
  %i.ng = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 6 uses
  store ptr %.sroa.0.0.i112, ptr %i.eg, align 8, !tbaa !193
  %.not.i.i.i.i.i113 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i113, label %.noexc110, label %bb.bm

bb.bm:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 96
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 112
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !230
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ni to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nn) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.bn, %bb.bm
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !232
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nu) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.bo, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef 120) #25
  %.pre.i114 = load ptr, ptr %i.eg, align 8, !tbaa !193
  br label %.noexc110

.noexc110:                                        ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.nv = phi ptr [ %.sroa.0.0.i112, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i ], [ %.pre.i114, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i ], [ %i.lg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ] ; 9 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !271
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 58
  %i.nz = load i8, ptr %i.ny, align 2, !tbaa !268, !range !88, !noundef !89
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = trunc nsw i64 %i.li to i32              ; 2 uses
  br i1 %i.oa, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc110
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 59
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !269, !range !88, !noundef !89
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.og = load i32, ptr %i.of, align 8, !tbaa !272
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !270
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.li
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !58
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %bb.br, %bb.bq, %.noexc110
  %.0.i.i.i = phi i32 [ %i.ok, %bb.br ], [ %i.og, %bb.bq ], [ %i.ob, %.noexc110 ]
  %i.ol = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.om = lshr i64 %i.ol, 6
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !122
  %i.op = and i64 %i.ol, 63
  %i.oq = shl nuw i64 1, %i.op
  %i.or = and i64 %i.oq, %i.oo
  %.not.i105 = icmp eq i64 %i.or, 0
  br i1 %.not.i105, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.os = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.os, i64 %22 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !58
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !58
  %i.ow = load ptr, ptr %i.e, align 8, !tbaa !235
  %i.ox = load i32, ptr %i.f, align 4, !tbaa !58
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.oy
  store i32 %i.ob, ptr %i.oz, align 4, !tbaa !58
  %i.pa = load i32, ptr %i.f, align 4, !tbaa !58
  %i.pb = add nsw i32 %i.pa, 1
  store i32 %i.pb, ptr %i.f, align 4, !tbaa !58
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split15.i, %.split.i
  %i.pc = phi ptr [ %i.nv, %bb.bs ], [ %i.nv, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.lg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.lg, %.split15.i ], [ %i.lg, %.split.i ]
  %i.pd = phi ptr [ %i.nv, %bb.bs ], [ %i.nv, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.lh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.lh, %.split15.i ], [ %i.lh, %.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i106, label %.noexc79, label %bb.ay, !llvm.loop !14

.noexc79:                                         ; preds = %bb.bt, %bb.ax, %.noexc108
  %23 = add i32 %.04.i, 1                         ; 2 uses
  %exitcond.not.i = icmp eq i32 %23, %i.jf
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit, label %.lr.ph.i77, !llvm.loop !515

bb.bu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.pe = load ptr, ptr %i.en, align 8, !tbaa !229 ; 2 uses
  %i.pf = load i32, ptr %i.ev, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %i.ey, align 8
  store ptr %i.b, ptr %.sroa.6147.0..sroa_idx, align 8
  store ptr %i.a, ptr %.sroa.8150.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %17, ptr %.sroa.15.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.20.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %1, ptr %i.ez, align 8
  store ptr %i.b, ptr %.sroa.6147.0..sroa_idx148, align 8
  store ptr %i.a, ptr %.sroa.8150.0..sroa_idx151, align 8
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx153, align 8
  store ptr %i.f, ptr %.sroa.12.0..sroa_idx155, align 8
  store ptr %17, ptr %.sroa.15.0..sroa_idx158, align 8
  store ptr %i.c, ptr %.sroa.18.0..sroa_idx161, align 8
  store ptr %i.e, ptr %.sroa.20.0..sroa_idx163, align 8
  store i8 1, ptr %8, align 8, !tbaa !278
  store ptr %i.pe, ptr %i.fa, align 8, !tbaa !279
  store i8 1, ptr %9, align 8, !tbaa !281
  store ptr %i.pe, ptr %i.fb, align 8, !tbaa !282
  invoke void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSB_INS0_10BaseVectorEERKSt6vectorISH_SaISH_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESW_SW_EUliE_EEvPKmiibSC_EUlimE_ZNS3_ISX_EEvSZ_iibSC_EUliE_EEviiSC_T0_(i32 noundef %i.je, i32 noundef %i.pf, ptr noundef nonnull byval(%class.anon.239) align 8 %8, ptr noundef nonnull byval(%class.anon.240) align 8 %9)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit: ; preds = %.noexc79, %.noexc80, %bb.aw
  %i.pg = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 4 uses
  %i.pi = load atomic i64, ptr %i.ph acquire, align 8 ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 4294967297
  %i.pk = trunc i64 %i.pi to i32                  ; 2 uses
  br i1 %i.pj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.ph, align 8, !tbaa !55
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 0, ptr %i.pl, align 4, !tbaa !56
  %i.pm = load ptr, ptr %i.pg, align 8, !tbaa !37
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24, !inline_history !8
  %i.pp = load ptr, ptr %i.pg, align 8, !tbaa !37
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i82 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i82, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pt = add nsw i32 %i.pk, -1
  store i32 %i.pt, ptr %i.ph, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pu = atomicrmw volatile add ptr %i.ph, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i = phi i32 [ %i.pk, %bb.by ], [ %i.pu, %bb.bz ]
  %i.pv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.pv, label %bb.ca, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !59

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_11ArrayVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.pw = load ptr, ptr %20, align 8, !tbaa !175  ; 7 uses
  %.not.i83 = icmp eq ptr %i.pw, null
  br i1 %.not.i83, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.py = atomicrmw sub ptr %i.px, i32 1 acq_rel, align 4
  %i.pz = icmp eq i32 %i.py, 1
  br i1 %i.pz, label %.sink.split.i.i84, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88

.sink.split.i.i84:                                ; preds = %bb.cb
  %i.qa = load ptr, ptr %i.pw, align 8, !tbaa !37
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qc = load ptr, ptr %i.qb, align 8
  invoke void %i.qc(ptr noundef nonnull align 8 dereferenceable(64) %i.pw)
          to label %.noexc.i85 unwind label %bb.cc, !inline_history !9

.noexc.i85:                                       ; preds = %.sink.split.i.i84
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !180
  %.not.i.i86 = icmp eq ptr %i.qe, null
  %i.qf = load ptr, ptr %i.pw, align 8, !tbaa !37
  %..i.i87 = select i1 %.not.i.i86, i64 8, i64 48
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %..i.i87
  %i.qh = load ptr, ptr %i.qg, align 8
  invoke void %i.qh(ptr noundef nonnull align 8 dereferenceable(64) %i.pw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88 unwind label %bb.cc, !inline_history !9

bb.cc:                                            ; preds = %.noexc.i85, %.sink.split.i.i84
  %i.qi = landingpad { ptr, i32 }
          catch ptr null
  %i.qj = extractvalue { ptr, i32 } %i.qi, 0
  call void @__clang_call_terminate(ptr %i.qj) #27
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cb, %.noexc.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.qk = load ptr, ptr %19, align 8, !tbaa !229  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88
  %i.ql = load ptr, ptr %i.fd, align 8, !tbaa !230
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qo) #25
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.qp = load i32, ptr %i.em, align 8, !tbaa !248
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !252
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !253
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 4
  %i.qz = icmp ugt i64 %i.qy, %i.qq
  br i1 %i.qz, label %.lr.ph.i.backedge, label %.thread

bb.cf:                                            ; preds = %bb.al
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit90

bb.cg:                                            ; preds = %_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit:                                        ; preds = %.critedge.thread.i.i, %bb.bl, %.critedge.thread.i.i124, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i77
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.am, %bb.an, %bb.ao, %bb.bu
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit186, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %bb.cg
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.rb, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.rc = load ptr, ptr %19, align 8, !tbaa !229  ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i89, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit90, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rd = load ptr, ptr %i.fd, align 8, !tbaa !230
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rc to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rg) #25
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !235, !nonnull !89, !align !309
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !58
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::SelectivityVector") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.224, align 8            ; 6 uses
  %7 = alloca %class.anon.225, align 8            ; 6 uses
  %8 = alloca %class.anon.234, align 8            ; 6 uses
  %9 = alloca %class.anon.235, align 8            ; 6 uses
  %10 = alloca %class.anon.227, align 8           ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.c, align 8, !tbaa !284
  store ptr %5, ptr %i.d, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !335
  switch i32 %i.h, label %bb.b [
    i32 6, label %.critedge
    i32 8, label %.critedge
  ], !prof !336

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiE18veloxCheckFailArgs) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236
  store ptr %i.j, ptr %i.e, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !234
  store ptr %i.l, ptr %i.f, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !249
  %i.n = sext i32 %1 to i64
  %i.o = add nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr null, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.r = load ptr, ptr %0, align 8, !tbaa !229    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !230
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %.critedge, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store i32 %1, ptr %i.z, align 8, !tbaa !265
  store i32 0, ptr %i.y, align 4, !tbaa !260
  store i32 0, ptr %i.x, align 8, !tbaa !192
  store i16 256, ptr %i.aa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.e, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !249, !range !88, !noundef !89
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.f

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %.0.in.pre.i.i = load i8, ptr %i.ab, align 4, !tbaa !43, !range !88
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !260
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !192 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !265
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %2, align 8, !tbaa !229   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.aj, 2147483584               ; 3 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %.not37.i.i.not.i.i37.not = icmp eq i32 %i.ao, 0
  br i1 %.not37.i.i.not.i.i37.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i38, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ap
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.aq = lshr exact i64 %indvars.iv.i.i38, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !122
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !13

.critedge.i.i.i.i:                                ; preds = %bb.j, %bb.i
  %.not38.i.i.i.i = icmp eq i32 %i.aj, %i.ao
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i.i.i
  %i.au = lshr i32 %i.aj, 6
  %i.av = and i32 %i.aj, 63
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.aw
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !122
  %.demorgan.i.i = or i64 %i.az, %notmask.i40.i.i.i.i
  %i.ba = icmp eq i64 %.demorgan.i.i, -1
  %i.bb = zext i1 %i.ba to i16
  %i.bc = or disjoint i16 %i.bb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.k, %.critedge.i.i.i.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.g ], [ 256, %bb.f ], [ 257, %bb.h ], [ 257, %.critedge.i.i.i.i ], [ %i.bc, %bb.k ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ab, align 4
  %i.bd = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.bd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !192 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !260 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.l, %.noexc
  %.04.i = phi i32 [ %i.bj, %.noexc ], [ %i.bh, %bb.l ] ; 2 uses
  invoke void @_ZZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %.04.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.bj = add i32 %.04.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bj, %i.bf
  br i1 %exitcond.not.i, label %.loopexit22, label %.lr.ph.i, !llvm.loop !667

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !229   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !260
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !192
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false)
  store i8 1, ptr %8, align 8, !tbaa !339
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bk, ptr %i.br, align 8, !tbaa !340
  store i8 1, ptr %9, align 8, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bk, ptr %i.bs, align 8, !tbaa !343
  invoke void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull byval(%class.anon.234) align 8 %8, ptr noundef nonnull byval(%class.anon.235) align 8 %9)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit22

.loopexit22:                                      ; preds = %.noexc, %.noexc13, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !229   ; 4 uses
  %i.bu = load i32, ptr %i.z, align 8, !tbaa !265 ; 6 uses
  %.not.i.i.i14 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i14, label %bb.n, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.n:                                             ; preds = %.loopexit22
  %i.bv = and i32 %i.bu, 2147483584               ; 4 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %.not37.i.i.not.i39.not = icmp eq i32 %i.bv, 0
  br i1 %.not37.i.i.not.i39.not, label %.critedge.i.i.i, label %.lr.ph41

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i40, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.bw
  br i1 %.not37.i.i.not.i, label %.lr.ph41, label %.critedge.i.i.i, !llvm.loop !21

.lr.ph41:                                         ; preds = %bb.n, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.bx = lshr exact i64 %indvars.iv.i40, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !122 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !21

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.n
  %.not38.i.i.i = icmp eq i32 %i.bu, %i.bv
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %.critedge.i.i.i
  %i.ca = lshr i32 %i.bu, 6
  %i.cb = and i32 %i.bu, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i43.i.i.i, -1
  %i.ce = zext nneg i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !122
  %i.ch = and i64 %i.cg, %i.cd                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.o, %.critedge.i.i.i, %.loopexit22
  store i32 0, ptr %i.y, align 4, !tbaa !260
  store i32 0, ptr %i.x, align 8, !tbaa !192
  store i16 256, ptr %i.aa, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph41
  %i.ci = trunc nuw nsw i64 %indvars.iv.i40 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.o
  %.sink67.i.i.i = phi i64 [ %i.ch, %bb.o ], [ %i.bz, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.bv, %bb.o ], [ %i.ci, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %.sink65.i.i.i, %i.ck   ; 2 uses
  store i32 %i.cl, ptr %i.y, align 4, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !58
  store ptr %i.bt, ptr %6, align 8, !tbaa !330
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.cm, align 8, !tbaa !235
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.cn, align 8, !tbaa !331
  store ptr %i.bt, ptr %7, align 8, !tbaa !333
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.co, align 8, !tbaa !235
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.cp, align 8, !tbaa !334
  %i.cq = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.cl, i32 noundef %i.bu, ptr noundef nonnull byval(%class.anon.224) align 8 %6, ptr noundef nonnull byval(%class.anon.225) align 8 %7)
          to label %.noexc15 unwind label %.loopexit.split-lp ; 0 uses

.noexc15:                                         ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.x, align 8, !tbaa !192
  store i8 0, ptr %i.m, align 1, !tbaa !249
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.m, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ct = load ptr, ptr %0, align 8, !tbaa !229   ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i16, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !230
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #25
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %common.resume

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc15, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258  ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !122    ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !87

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !258
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !122
  store i64 %i.s, ptr %i.d, align 8, !tbaa !122
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
bb.fa:                                            ; preds = %bb.ez
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #26
          to label %.noexc174.i unwind label %.loopexit.split-lp64.i

.noexc174.i:                                      ; preds = %bb.fa
  unreachable

.critedge.i.i.i:                                  ; preds = %bb.ey
  br i1 %i.aew, label %.critedge.thread.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i.i

.critedge.thread.i.i.i:                           ; preds = %.critedge.i.i.i, %bb.ez
  %i.aex = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc175.i unwind label %.loopexit63.i ; 6 uses

.noexc175.i:                                      ; preds = %.critedge.thread.i.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aex, i8 0, i64 72, i1 false), !noalias !865
  store i8 1, ptr %i.aey, align 8, !tbaa !217, !noalias !865
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 48
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aez, i8 0, i64 13, i1 false), !noalias !865
  store i8 1, ptr %i.afa, align 1, !tbaa !227, !noalias !865
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.afb, i8 0, i64 48, i1 false), !noalias !865
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i.i: ; preds = %.critedge.i.i.i
  %i.afc = getelementptr inbounds i8, ptr %.pre3.i.i.i, i64 -8 ; 3 uses
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !193, !noalias !864
  store ptr null, ptr %i.afc, align 8, !tbaa !193, !noalias !864
  store ptr %i.afc, ptr %.phi.trans.insert2.i.i.i, align 8, !tbaa !228, !noalias !864
  %i.afe = inttoptr i64 %i.afd to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i

bb.fb:                                            ; preds = %bb.ex
  %i.aff = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc176.i unwind label %.loopexit63.i ; 6 uses

.noexc176.i:                                      ; preds = %bb.fb
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aff, i8 0, i64 72, i1 false), !noalias !866
  store i8 1, ptr %i.afg, align 8, !tbaa !217, !noalias !866
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 48
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aff, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.afh, i8 0, i64 13, i1 false), !noalias !866
  store i8 1, ptr %i.afi, align 1, !tbaa !227, !noalias !866
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.afj, i8 0, i64 48, i1 false), !noalias !866
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i: ; preds = %.noexc176.i, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i.i, %.noexc175.i
  %.sroa.0.0.i170.i = phi ptr [ %i.aff, %.noexc176.i ], [ %i.aex, %.noexc175.i ], [ %i.afe, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i.i ] ; 2 uses
  %i.afk = load ptr, ptr %i.fq, align 8, !tbaa !193 ; 6 uses
  store ptr %.sroa.0.0.i170.i, ptr %i.fq, align 8, !tbaa !193
  %.not.i.i.i.i.i171.i = icmp eq ptr %i.afk, null
  br i1 %.not.i.i.i.i.i171.i, label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i, label %bb.fc

bb.fc:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 96
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i172.i = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i172.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afk, i64 112
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !230
  %i.afp = ptrtoint ptr %i.afo to i64
  %i.afq = ptrtoint ptr %i.afm to i64
  %i.afr = sub i64 %i.afp, %i.afq
  call void @_ZdlPvm(ptr noundef nonnull %i.afm, i64 noundef %i.afr) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.fd, %bb.fc
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 72
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.aft, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afk, i64 88
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !232
  %i.afw = ptrtoint ptr %i.afv to i64
  %i.afx = ptrtoint ptr %i.aft to i64
  %i.afy = sub i64 %i.afw, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef %i.afy) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %bb.fe, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef 120) #25
  %.pre.i173.i = load ptr, ptr %i.fq, align 8, !tbaa !193
  br label %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i

_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit168.i
  %i.afz = phi ptr [ %.sroa.0.0.i170.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i.i ], [ %.pre.i173.i, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i.i ], [ %i.aer, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit168.i ]
  %i.aga = load ptr, ptr %47, align 8, !tbaa !129
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.afz, ptr noundef nonnull align 8 dereferenceable(94) %i.aga, i1 noundef zeroext true)
          to label %bb.ff unwind label %.loopexit63.i

bb.ff:                                            ; preds = %_ZN8facebook5velox4exec18LocalDecodedVector3getEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i8 0, ptr %i.i, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %i.af, ptr %29, align 8
  store ptr %43, ptr %.sroa.2.0..sroa_idx.i, align 8
  store ptr %42, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %39, ptr %.sroa.5.0..sroa_idx.i, align 8
  store ptr %33, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8
  store ptr %40, ptr %.sroa.8.0..sroa_idx.i, align 8
  store ptr %i.d, ptr %.sroa.9.0..sroa_idx.i, align 8
  store ptr %4, ptr %.sroa.10.0..sroa_idx.i, align 8
  store ptr %i.e, ptr %.sroa.11.0..sroa_idx.i, align 8
  store ptr %i.g, ptr %.sroa.12.0..sroa_idx.i, align 8
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx.i, align 8
  %i.agb = load i8, ptr %i.fo, align 1, !tbaa !249, !range !88, !noundef !89
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.fg

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %bb.ff
  %.0.in.pre.i.i.i = load i8, ptr %i.gu, align 4, !tbaa !43, !range !88
  %.pre103 = load i32, ptr %i.gv, align 4, !tbaa !260
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.fg:                                            ; preds = %bb.ff
  %i.agd = load i32, ptr %i.gv, align 4, !tbaa !260 ; 2 uses
  %i.age = icmp eq i32 %i.agd, 0
  br i1 %i.age, label %bb.fh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.agf = load i32, ptr %i.gw, align 8, !tbaa !192 ; 6 uses
  %i.agg = load i32, ptr %i.gt, align 8, !tbaa !265
  %i.agh = icmp eq i32 %i.agf, %i.agg
  br i1 %i.agh, label %bb.fi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.agi = load ptr, ptr %i.fn, align 8, !tbaa !229 ; 2 uses
  %.not.i.i.i185.i = icmp sgt i32 %i.agf, 0
  br i1 %.not.i.i.i185.i, label %bb.fj, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.agj = and i32 %i.agf, 2147483584             ; 3 uses
  %i.agk = zext nneg i32 %i.agj to i64
  %.not37.i.i.not.i.i187.i317.not = icmp eq i32 %i.agj, 0
  br i1 %.not37.i.i.not.i.i187.i317.not, label %.critedge.i.i.i.i188.i, label %.lr.ph319

bb.fk:                                            ; preds = %.lr.ph319
  %indvars.iv.next.i.i189.i = add nuw nsw i64 %indvars.iv.i.i186.i318, 64 ; 2 uses
  %.not37.i.i.not.i.i187.i = icmp samesign ult i64 %indvars.iv.next.i.i189.i, %i.agk
  br i1 %.not37.i.i.not.i.i187.i, label %.lr.ph319, label %.critedge.i.i.i.i188.i, !llvm.loop !13

.lr.ph319:                                        ; preds = %bb.fj, %bb.fk
  %indvars.iv.i.i186.i318 = phi i64 [ %indvars.iv.next.i.i189.i, %bb.fk ], [ 0, %bb.fj ] ; 2 uses
  %i.agl = lshr exact i64 %indvars.iv.i.i186.i318, 3
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agl
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !122
  %i.ago = icmp eq i64 %i.agn, -1
  br i1 %i.ago, label %bb.fk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !13

.critedge.i.i.i.i188.i:                           ; preds = %bb.fk, %bb.fj
  %.not38.i.i.i.i.i = icmp eq i32 %i.agf, %i.agj
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %.critedge.i.i.i.i188.i
  %i.agp = lshr i32 %i.agf, 6
  %i.agq = and i32 %i.agf, 63
  %i.agr = zext nneg i32 %i.agq to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.agr
  %i.ags = zext nneg i32 %i.agp to i64
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.agi, i64 %i.ags
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !122
  %.demorgan.i.i.i = or i64 %i.agu, %notmask.i40.i.i.i.i.i
  %i.agv = icmp eq i64 %.demorgan.i.i.i, -1
  %i.agw = zext i1 %i.agv to i16
  %i.agx = or disjoint i16 %i.agw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph319, %bb.fl, %.critedge.i.i.i.i188.i, %bb.fi, %bb.fh, %bb.fg
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.fh ], [ 256, %bb.fg ], [ 257, %bb.fi ], [ 257, %.critedge.i.i.i.i188.i ], [ %i.agx, %bb.fl ], [ 256, %.lr.ph319 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.gu, align 4
  %i.agy = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %i.agz = phi i32 [ %.pre103, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.agd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ] ; 8 uses
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.agy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.aha = load i32, ptr %i.gw, align 8, !tbaa !192 ; 2 uses
  %i.ahb = icmp slt i32 %i.agz, %i.aha
  br i1 %i.ahb, label %.lr.ph.i184.i, label %.loopexit49.i

.lr.ph.i184.i:                                    ; preds = %bb.fm, %.noexc190.i
  %.06.i.i = phi i32 [ %i.ahc, %.noexc190.i ], [ %i.agz, %bb.fm ] ; 2 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %29, i32 noundef %.06.i.i)
          to label %.noexc190.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc190.i:                                      ; preds = %.lr.ph.i184.i
  %i.ahc = add i32 %.06.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ahc, %i.aha
  br i1 %exitcond.not.i.i, label %.loopexit49.i, label %.lr.ph.i184.i, !llvm.loop !840

bb.fn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.ahd = load ptr, ptr %i.fn, align 8, !tbaa !229 ; 6 uses
  %i.ahe = load i32, ptr %i.gw, align 8, !tbaa !192 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.39.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(104) %29, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(104) %29, i64 104, i1 false)
  store i8 1, ptr %27, align 8
  store ptr %i.ahd, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %28, align 8
  store ptr %i.ahd, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i177.i = icmp slt i32 %i.agz, %i.ahe
  br i1 %.not.i.i.i.i177.i, label %bb.fo, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i

bb.fo:                                            ; preds = %bb.fn
  %i.ahf = add i32 %i.agz, 63                     ; 2 uses
  %i.ahg = srem i32 %i.ahf, 64
  %i.ahh = sub nsw i32 %i.ahf, %i.ahg             ; 6 uses
  %i.ahi = and i32 %i.ahe, -64                    ; 6 uses
  %i.ahj = icmp slt i32 %i.ahi, %i.ahh
  br i1 %i.ahj, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ahk = ashr i32 %i.ahe, 6
  %i.ahl = and i32 %i.ahe, 63
  %i.ahm = zext nneg i32 %i.ahl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ahm
  %i.ahn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.aho = sub nsw i32 %i.ahh, %i.agz             ; 2 uses
  %i.ahp = zext nneg i32 %i.aho to i64
  %notmask.i.i.i.i.i.i182.i = shl nsw i64 -1, %i.ahp
  %i.ahq = xor i64 %notmask.i.i.i.i.i.i182.i, -1
  %i.ahr = sub nsw i32 64, %i.aho
  %i.ahs = zext nneg i32 %i.ahr to i64
  %i.aht = shl i64 %i.ahq, %i.ahs
  %i.ahu = and i64 %i.aht, %i.ahn
  %i.ahv = sext i32 %i.ahk to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.ahv
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !122
  %i.ahy = and i64 %i.ahu, %i.ahx                 ; 2 uses
  %.not.i.i.i.i.i183.i = icmp eq i64 %i.ahy, 0
  br i1 %.not.i.i.i.i.i183.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.fp, %.noexc191.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.aid, %.noexc191.i ], [ %i.ahy, %bb.fp ] ; 3 uses
  %i.ahz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.aia = trunc nuw nsw i64 %i.ahz to i32
  %i.aib = or disjoint i32 %i.ahi, %i.aia
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.aib)
          to label %.noexc191.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc191.i:                                      ; preds = %.preheader.i.i.i.i.i.i
  %i.aic = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.aid = and i64 %i.aic, %.011.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.aid, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !841

bb.fq:                                            ; preds = %bb.fo
  %.not32.i.i.i.i.i = icmp eq i32 %i.agz, %i.ahh
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aie = sdiv i32 %i.agz, 64                    ; 2 uses
  %i.aif = sub nsw i32 %i.ahh, %i.agz             ; 2 uses
  %i.aig = zext nneg i32 %i.aif to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.aig
  %i.aih = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.aii = sub nsw i32 64, %i.aif
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = shl i64 %i.aih, %i.aij
  %i.ail = sext i32 %i.aie to i64
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.ail
  %i.ain = load i64, ptr %i.aim, align 8, !tbaa !122
  %i.aio = and i64 %i.ain, %i.aik                 ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.aio, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.fr
  %i.aip = shl nsw i32 %i.aie, 6
  br label %bb.fs

bb.fs:                                            ; preds = %.noexc192.i, %.preheader.i37.i.i.i.i.i
  %.011.i38.i.i.i.i.i = phi i64 [ %i.aio, %.preheader.i37.i.i.i.i.i ], [ %i.aiu, %.noexc192.i ] ; 3 uses
  %i.aiq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i, i1 true)
  %i.air = trunc nuw nsw i64 %i.aiq to i32
  %i.ais = or disjoint i32 %i.aip, %i.air
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.ais)
          to label %.noexc192.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc192.i:                                      ; preds = %bb.fs
  %i.ait = add i64 %.011.i38.i.i.i.i.i, -1
  %i.aiu = and i64 %i.ait, %.011.i38.i.i.i.i.i    ; 2 uses
  %.not10.i39.i.i.i.i.i = icmp eq i64 %i.aiu, 0
  br i1 %.not10.i39.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.fs, !llvm.loop !841

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i: ; preds = %.noexc192.i, %bb.fr, %bb.fq
  %i.aiv = add nsw i32 %i.ahh, 64                 ; 2 uses
  %.not3350.i.i.i.i.i = icmp sgt i32 %i.aiv, %i.ahi
  br i1 %.not3350.i.i.i.i.i, label %._crit_edge.i.i.i.i179.i, label %.lr.ph.i.i.i.i178.i

._crit_edge.i.i.i.i179.i:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i
  %.not34.i.i.i.i180.i = icmp eq i32 %i.ahe, %i.ahi
  br i1 %.not34.i.i.i.i180.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, label %bb.fw

.lr.ph.i.i.i.i178.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  %i.aiw = phi i32 [ %i.ajo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.aiv, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %.051.i.i.i.i.i = phi i32 [ %i.aiw, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.ahh, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i.i ] ; 2 uses
  %i.aix = sdiv i32 %.051.i.i.i.i.i, 64           ; 3 uses
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.aiy
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !122 ; 2 uses
  switch i64 %i.aja, label %.lr.ph.i.i.i.i.i181.i [
    i64 -1, label %bb.ft
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i181.i:                            ; preds = %.lr.ph.i.i.i.i178.i
  %i.ajb = shl nsw i32 %i.aix, 6
  br label %bb.fv

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i178.i
  %i.ajc = shl nsw i32 %i.aix, 6                  ; 2 uses
  %i.ajd = add i32 %i.ajc, 64
  %i.aje = sext i32 %i.ajd to i64
  %.0.off.i.i.i.i.i = add i32 %.051.i.i.i.i.i, 127
  %.not22.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph21.i.i.i.i.i.i

.lr.ph21.i.i.i.i.i.i:                             ; preds = %bb.ft
  %i.ajf = sext i32 %i.ajc to i64
  br label %bb.fu

bb.fu:                                            ; preds = %.noexc193.i, %.lr.ph21.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.ajf, %.lr.ph21.i.i.i.i.i.i ], [ %i.ajh, %.noexc193.i ] ; 2 uses
  %i.ajg = trunc i64 %.020.i.i.i.i.i.i to i32
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.ajg)
          to label %.noexc193.i unwind label %.loopexit.split-lp.loopexit.i

.noexc193.i:                                      ; preds = %bb.fu
  %i.ajh = add nuw i64 %.020.i.i.i.i.i.i, 1       ; 2 uses
  %i.aji = icmp ult i64 %i.ajh, %i.aje
  br i1 %i.aji, label %bb.fu, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, !llvm.loop !842

bb.fv:                                            ; preds = %.noexc194.i, %.lr.ph.i.i.i.i.i181.i
  %.01519.i.i.i.i.i.i = phi i64 [ %i.aja, %.lr.ph.i.i.i.i.i181.i ], [ %i.ajn, %.noexc194.i ] ; 3 uses
  %i.ajj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i.i, i1 true)
  %i.ajk = trunc nuw nsw i64 %i.ajj to i32
  %i.ajl = or disjoint i32 %i.ajb, %i.ajk
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.3.0..sroa_idx.i.i.i.i, i32 noundef %i.ajl)
          to label %.noexc194.i unwind label %.loopexit41.i

.noexc194.i:                                      ; preds = %bb.fv
  %i.ajm = add i64 %.01519.i.i.i.i.i.i, -1
  %i.ajn = and i64 %i.ajm, %.01519.i.i.i.i.i.i    ; 2 uses
  %.not.i41.i.i.i.i.i = icmp eq i64 %i.ajn, 0
  br i1 %.not.i41.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.fv, !llvm.loop !843

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %.noexc193.i, %.noexc194.i, %bb.ft, %.lr.ph.i.i.i.i178.i
  %i.ajo = add nsw i32 %i.aiw, 64                 ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.ajo, %i.ahi
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i179.i, label %.lr.ph.i.i.i.i178.i, !llvm.loop !844

bb.fw:                                            ; preds = %._crit_edge.i.i.i.i179.i
  %i.ajp = ashr i32 %i.ahe, 6
  %i.ajq = and i32 %i.ahe, 63
  %i.ajr = zext nneg i32 %i.ajq to i64
  %notmask.i42.i.i.i.i.i = shl nsw i64 -1, %i.ajr
  %i.ajs = xor i64 %notmask.i42.i.i.i.i.i, -1
  %i.ajt = sext i32 %i.ajp to i64
  %i.aju = getelementptr inbounds [8 x i8], ptr %i.ahd, i64 %i.ajt
  %i.ajv = load i64, ptr %i.aju, align 8, !tbaa !122
  %i.ajw = and i64 %i.ajv, %i.ajs                 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.ajw, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i

.preheader.i44.i.i.i.i.i:                         ; preds = %bb.fw, %.noexc195.i
  %.011.i45.i.i.i.i.i = phi i64 [ %i.akb, %.noexc195.i ], [ %i.ajw, %bb.fw ] ; 3 uses
  %i.ajx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i, i1 true)
  %i.ajy = trunc nuw nsw i64 %i.ajx to i32
  %i.ajz = or disjoint i32 %i.ahi, %i.ajy
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_ENKUliE_clEi(ptr noundef nonnull readonly align 8 dereferenceable(104) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.ajz)
          to label %.noexc195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc195.i:                                      ; preds = %.preheader.i44.i.i.i.i.i
  %i.aka = add nsw i64 %.011.i45.i.i.i.i.i, -1
  %i.akb = and i64 %i.aka, %.011.i45.i.i.i.i.i    ; 2 uses
  %.not10.i46.i.i.i.i.i = icmp eq i64 %i.akb, 0
  br i1 %.not10.i46.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, label %.preheader.i44.i.i.i.i.i, !llvm.loop !841

_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i: ; preds = %.noexc195.i, %.noexc191.i, %bb.fw, %._crit_edge.i.i.i.i179.i, %bb.fp, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %.loopexit49.i

.loopexit49.i:                                    ; preds = %.noexc190.i, %_ZN8facebook5velox4bits13forEachSetBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction18applyFlatMapVectorERNS0_13DecodedVectorERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERNS0_4exec7EvalCtxERSE_EUliE_EEvPKmiiT_.exit.i.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKS8_INS0_10BaseVectorEERKSt6vectorISE_SaISE_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEEST_ST_:bb.a
  %i.gn = load i64, ptr %i.fk, align 8, !tbaa !122
  store i64 %i.gn, ptr %i.fp, align 8, !tbaa !122
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.af, %bb.ae, %bb.ad
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.ad ], [ %i.fl, %bb.ae ], [ %i.fl, %bb.af ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.ad ], [ %i.gh, %bb.ae ], [ 8, %bb.af ]
  %i.go = phi ptr [ %.pre25.i, %bb.ad ], [ %i.gf, %bb.ae ], [ %i.gf, %bb.af ] ; 2 uses
  %i.gp = phi ptr [ %.pre.i, %bb.ad ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.af ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.pre-phi32.i ; 3 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %.pre-phi34.i, %i.gr            ; 3 uses
  %i.gt = icmp sgt i64 %i.gs, 8
  br i1 %i.gt, label %bb.ag, label %bb.ah, !prof !87

bb.ag:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.go, ptr align 8 %i.gq, i64 %i.gs, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

bb.ah:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.gu = icmp eq i64 %i.gs, 8
  br i1 %i.gu, label %bb.ai, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load i64, ptr %i.gq, align 8, !tbaa !122
  store i64 %i.gv, ptr %i.go, align 8, !tbaa !122
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ab, %bb.aa, %bb.z, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i
  %i.gw = load ptr, ptr %i.en, align 8, !tbaa !229
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.fn
  store ptr %i.gx, ptr %i.ex, align 8, !tbaa !258
  br label %.noexc

.noexc:                                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i, %.lr.ph.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.es, ptr noundef nonnull align 8 dereferenceable(12) %i.gy, i64 12, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  %i.ha = load i16, ptr %i.gz, align 4
  store i16 %i.ha, ptr %i.et, align 4
  %i.hb = load ptr, ptr %18, align 8, !tbaa !259, !nonnull !89, !align !255
  invoke void @_ZN8facebook5velox17SelectivityVector9intersectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull align 8 dereferenceable(38) %i.hb)
          to label %.noexc75 unwind label %.loopexit181

.noexc75:                                         ; preds = %.noexc
  %i.hc = load i32, ptr %i.eu, align 4, !tbaa !260
  %i.hd = load i32, ptr %i.ev, align 8, !tbaa !192
  %i.he = icmp slt i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc75
  %i.hf = load i32, ptr %i.em, align 8, !tbaa !248
  %i.hg = add nsw i32 %i.hf, 1                    ; 2 uses
  store i32 %i.hg, ptr %i.em, align 8, !tbaa !248
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !252
  %i.hl = load ptr, ptr %i.hi, align 8, !tbaa !253
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 4
  %i.hq = icmp ugt i64 %i.hp, %i.hh
  br i1 %i.hq, label %.lr.ph.i.backedge, label %.thread

.lr.ph.i.backedge:                                ; preds = %bb.aj, %bb.ce
  %.be = phi i64 [ %i.hh, %bb.aj ], [ %i.qq, %bb.ce ]
  br label %.lr.ph.i, !llvm.loop !12

bb.ak:                                            ; preds = %.noexc75
  %i.hr = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255
  %i.hs = load i32, ptr %i.em, align 8, !tbaa !248 ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !253
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !264 ; 4 uses
  %i.hx = add nsw i32 %i.hs, 1
  store i32 %i.hx, ptr %i.em, align 8, !tbaa !248
  %.not = icmp eq ptr %i.hw, null
  br i1 %.not, label %.thread, label %bb.al

.loopexit181:                                     ; preds = %.noexc, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp182:                            ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.hy = load ptr, ptr %1, align 8, !tbaa !382   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !241, !noalias !1018
  invoke void @_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::SelectivityVector") align 8 %19, i32 noundef %i.cn, ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull %i.hy, ptr noundef %i.ia, ptr noundef null)
          to label %_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit unwind label %bb.cf

_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZN8facebook5velox9functions13toWrapCaptureINS0_9MapVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKNS0_17SelectivityVectorERKSt10shared_ptrIT_E(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %20, i32 noundef %i.cn, ptr noundef nonnull %i.hw, ptr noundef nonnull align 8 dereferenceable(38) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.am unwind label %bb.cg

bb.am:                                            ; preds = %_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !37
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull align 8 dereferenceable(38) %19, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %21)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ie = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.if = load ptr, ptr %21, align 8, !tbaa !129
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.ie, ptr noundef nonnull align 8 dereferenceable(94) %i.if, ptr noundef nonnull align 8 dereferenceable(38) %19, i1 noundef zeroext true)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.ig = load i8, ptr %i.eo, align 1, !tbaa !249, !range !88, !noundef !89
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.aq

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.ap
  %.0.in.pre.i.i = load i8, ptr %i.et, align 4, !tbaa !43, !range !88
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.ii = load i32, ptr %i.eu, align 4, !tbaa !260
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.ar, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ik = load i32, ptr %i.ev, align 8, !tbaa !192 ; 6 uses
  %i.il = load i32, ptr %i.es, align 8, !tbaa !265
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %bb.as, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.in = load ptr, ptr %i.en, align 8, !tbaa !229 ; 2 uses
  %.not.i.i.i78 = icmp sgt i32 %i.ik, 0
  br i1 %.not.i.i.i78, label %bb.at, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.io = and i32 %i.ik, 2147483584               ; 3 uses
  %i.ip = zext nneg i32 %i.io to i64
  %.not37.i.i.not.i.i228.not = icmp eq i32 %i.io, 0
  br i1 %.not37.i.i.not.i.i228.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.au:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i229, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ip
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %indvars.iv.i.i229 = phi i64 [ %indvars.iv.next.i.i, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.iq = lshr exact i64 %indvars.iv.i.i229, 3
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !122
  %i.it = icmp eq i64 %i.is, -1
  br i1 %i.it, label %bb.au, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !13

.critedge.i.i.i.i:                                ; preds = %bb.au, %bb.at
  %.not38.i.i.i.i = icmp eq i32 %i.ik, %i.io
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.critedge.i.i.i.i
  %i.iu = lshr i32 %i.ik, 6
  %i.iv = and i32 %i.ik, 63
  %i.iw = zext nneg i32 %i.iv to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.iw
  %i.ix = zext nneg i32 %i.iu to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !122
  %.demorgan.i.i = or i64 %i.iz, %notmask.i40.i.i.i.i
  %i.ja = icmp eq i64 %.demorgan.i.i, -1
  %i.jb = zext i1 %i.ja to i16
  %i.jc = or disjoint i16 %i.jb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.av, %.critedge.i.i.i.i, %bb.as, %bb.ar, %bb.aq
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.ar ], [ 256, %bb.aq ], [ 257, %bb.as ], [ 257, %.critedge.i.i.i.i ], [ %i.jc, %bb.av ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.et, align 4
  %i.jd = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.jd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  %i.je = load i32, ptr %i.eu, align 4, !tbaa !260 ; 3 uses
  br i1 %.0.i.i, label %bb.aw, label %bb.bu

bb.aw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.jf = load i32, ptr %i.ev, align 8, !tbaa !192 ; 2 uses
  %i.jg = icmp slt i32 %i.je, %i.jf
  br i1 %i.jg, label %.lr.ph.i77, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit

.lr.ph.i77:                                       ; preds = %bb.aw, %.noexc79
  %.04.i = phi i32 [ %23, %.noexc79 ], [ %i.je, %bb.aw ] ; 3 uses
  %i.jh = load ptr, ptr %1, align 8, !tbaa !382   ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !37
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef zeroext i1 %i.jk(ptr noundef nonnull align 8 dereferenceable(94) %i.jh, i32 noundef %.04.i)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit, !inline_history !391

.noexc108:                                        ; preds = %.lr.ph.i77
  br i1 %i.jl, label %.noexc79, label %bb.ax

bb.ax:                                            ; preds = %.noexc108
  %i.jm = load ptr, ptr %i.b, align 8, !tbaa !235
  %22 = sext i32 %.04.i to i64                    ; 4 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %22
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !58 ; 2 uses
  %i.jp = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %22
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !58
  %i.js = load i32, ptr %i.f, align 4, !tbaa !58
  %i.jt = load ptr, ptr %i.d, align 8, !tbaa !235
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %22
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !58
  %i.jv = icmp sgt i32 %i.jo, 0
  br i1 %i.jv, label %.lr.ph.i103, label %.noexc79

.lr.ph.i103:                                      ; preds = %bb.ax
  %i.jw = sext i32 %i.jr to i64
  %wide.trip.count.i = zext nneg i32 %i.jo to i64
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bt, %.lr.ph.i103
  %i.jx = phi ptr [ %.pre, %.lr.ph.i103 ], [ %i.pc, %bb.bt ]
  %i.jy = phi ptr [ %.pre, %.lr.ph.i103 ], [ %i.pd, %bb.bt ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i, %bb.bt ] ; 2 uses
  %.not2.i118 = icmp eq ptr %i.jy, null
  br i1 %.not2.i118, label %bb.az, label %.noexc109

bb.az:                                            ; preds = %bb.ay
  %i.jz = load ptr, ptr %17, align 8, !tbaa !153  ; 4 uses
  %.not.i119 = icmp eq ptr %i.jz, null
  br i1 %.not.i119, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load i8, ptr %i.ka, align 8, !tbaa !214, !range !88, !noalias !1019, !noundef !89
  %i.kc = trunc nuw i8 %i.kb to i1
  %.phi.trans.insert.i.i120 = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %.pre.i.i121 = load ptr, ptr %.phi.trans.insert.i.i120, align 8, !tbaa !215, !noalias !1019
  %.phi.trans.insert2.i.i122 = getelementptr inbounds nuw i8, ptr %i.jz, i64 40 ; 2 uses
  %.pre3.i.i123 = load ptr, ptr %.phi.trans.insert2.i.i122, align 8, !tbaa !215, !noalias !1019 ; 2 uses
  %i.kd = icmp eq ptr %.pre.i.i121, %.pre3.i.i123 ; 2 uses
  br i1 %i.kc, label %.critedge.i.i133, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.kd, label %.critedge.thread.i.i124, label %.invoke, !prof !87

.critedge.i.i133:                                 ; preds = %bb.ba
  br i1 %i.kd, label %.critedge.thread.i.i124, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134

.critedge.thread.i.i124:                          ; preds = %.critedge.i.i133, %bb.bb
  %i.ke = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc136 unwind label %.loopexit ; 6 uses

.noexc136:                                        ; preds = %.critedge.thread.i.i124
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, i8 0, i64 72, i1 false), !noalias !1020
  store i8 1, ptr %i.kf, align 8, !tbaa !217, !noalias !1020
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.kg, i8 0, i64 13, i1 false), !noalias !1020
  store i8 1, ptr %i.kh, align 1, !tbaa !227, !noalias !1020
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ki, i8 0, i64 48, i1 false), !noalias !1020
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134: ; preds = %.critedge.i.i133
  %i.kj = getelementptr inbounds i8, ptr %.pre3.i.i123, i64 -8 ; 3 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !193, !noalias !1019
  store ptr null, ptr %i.kj, align 8, !tbaa !193, !noalias !1019
  store ptr %i.kj, ptr %.phi.trans.insert2.i.i122, align 8, !tbaa !228, !noalias !1019
  %i.kl = inttoptr i64 %i.kk to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

bb.bc:                                            ; preds = %bb.az
  %i.km = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc137 unwind label %.loopexit ; 6 uses

.noexc137:                                        ; preds = %bb.bc
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.km, i8 0, i64 72, i1 false), !noalias !1021
  store i8 1, ptr %i.kn, align 8, !tbaa !217, !noalias !1021
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ko, i8 0, i64 13, i1 false), !noalias !1021
  store i8 1, ptr %i.kp, align 1, !tbaa !227, !noalias !1021
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, i8 0, i64 48, i1 false), !noalias !1021
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125: ; preds = %.noexc137, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134, %.noexc136
  %.sroa.0.0.i126 = phi ptr [ %i.km, %.noexc137 ], [ %i.ke, %.noexc136 ], [ %i.kl, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i134 ] ; 3 uses
  %i.kr = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 6 uses
  store ptr %.sroa.0.0.i126, ptr %i.eg, align 8, !tbaa !193
  %.not.i.i.i.i.i127 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i.i.i127, label %.noexc109, label %bb.bd

bb.bd:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i128 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i128, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !230
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129:   ; preds = %bb.be, %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i130 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i130, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !232
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lf) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131: ; preds = %bb.bf, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i129
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 120) #25
  %.pre.i132 = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 2 uses
  br label %.noexc109

.noexc109:                                        ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125, %bb.ay
  %i.lg = phi ptr [ %.sroa.0.0.i126, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125 ], [ %.pre.i132, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131 ], [ %i.jx, %bb.ay ] ; 5 uses
  %i.lh = phi ptr [ %.sroa.0.0.i126, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i125 ], [ %.pre.i132, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i131 ], [ %i.jy, %bb.ay ] ; 8 uses
  %i.li = add nsw i64 %indvars.iv.i, %i.jw        ; 5 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !267 ; 4 uses
  %.not.i.i104 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i104, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc109
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 58
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !268, !range !88, !noundef !89
  %i.ln = trunc nuw i8 %i.lm to i1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 57
  %i.lp = load i8, ptr %i.lo, align 1, !range !88
  %i.lq = trunc nuw i8 %i.lp to i1
  %or.cond.i.i = select i1 %i.ln, i1 true, i1 %i.lq
  br i1 %or.cond.i.i, label %.split.i, label %bb.bh

.split.i:                                         ; preds = %bb.bg
  %i.lr = lshr i64 %i.li, 6
  %i.ls = and i64 %i.lr, 67108863
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !122
  %i.lv = and i64 %i.li, 63
  %i.lw = shl nuw i64 1, %i.lv
  %i.lx = and i64 %i.lu, %i.lw
  %.not.i.i.i107 = icmp eq i64 %i.lx, 0
  br i1 %.not.i.i.i107, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lh, i64 59
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !269, !range !88, !noundef !89
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split15.i

.split15.i:                                       ; preds = %bb.bh
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !270
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.li
  %i.me = load i32, ptr %i.md, align 4, !tbaa !58
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = lshr i64 %i.mf, 6
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !122
  %i.mj = and i64 %i.mf, 63
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = and i64 %i.mk, %i.mi
  %.not.i7.i.i = icmp eq i64 %i.ml, 0
  br i1 %.not.i7.i.i, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.bh
  %i.mm = load i64, ptr %i.lk, align 8, !tbaa !122
  %i.mn = and i64 %i.mm, 1
  %.not.i6.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i6.i.i, label %bb.bt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split15.i, %.split.i, %.noexc109
  %.not2.i = icmp eq ptr %i.lg, null
  br i1 %.not2.i, label %bb.bi, label %.noexc110

bb.bi:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.mo = load ptr, ptr %17, align 8, !tbaa !153  ; 4 uses
  %.not.i111 = icmp eq ptr %i.mo, null
  br i1 %.not.i111, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !214, !range !88, !noalias !1022, !noundef !89
  %i.mr = trunc nuw i8 %i.mq to i1
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !215, !noalias !1022
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 40 ; 2 uses
  %.pre3.i.i = load ptr, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !215, !noalias !1022 ; 2 uses
  %i.ms = icmp eq ptr %.pre.i.i, %.pre3.i.i       ; 2 uses
  br i1 %i.mr, label %.critedge.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ms, label %.critedge.thread.i.i, label %.invoke, !prof !87

.invoke:                                          ; preds = %bb.bk, %bb.bb
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.critedge.i.i:                                    ; preds = %bb.bj
  br i1 %i.ms, label %.critedge.thread.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.bk
  %i.mt = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc116 unwind label %.loopexit ; 6 uses

.noexc116:                                        ; preds = %.critedge.thread.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.mt, i8 0, i64 72, i1 false), !noalias !1023
  store i8 1, ptr %i.mu, align 8, !tbaa !217, !noalias !1023
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.mv, i8 0, i64 13, i1 false), !noalias !1023
  store i8 1, ptr %i.mw, align 1, !tbaa !227, !noalias !1023
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i8 0, i64 48, i1 false), !noalias !1023
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i: ; preds = %.critedge.i.i
  %i.my = getelementptr inbounds i8, ptr %.pre3.i.i, i64 -8 ; 3 uses
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !193, !noalias !1022
  store ptr null, ptr %i.my, align 8, !tbaa !193, !noalias !1022
  store ptr %i.my, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !228, !noalias !1022
  %i.na = inttoptr i64 %i.mz to ptr
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.nb = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #23
          to label %.noexc117 unwind label %.loopexit ; 6 uses

.noexc117:                                        ; preds = %bb.bl
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nb, i8 0, i64 72, i1 false), !noalias !1024
  store i8 1, ptr %i.nc, align 8, !tbaa !217, !noalias !1024
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.nd, i8 0, i64 13, i1 false), !noalias !1024
  store i8 1, ptr %i.ne, align 1, !tbaa !227, !noalias !1024
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nf, i8 0, i64 48, i1 false), !noalias !1024
  br label %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i

_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i: ; preds = %.noexc117, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i, %.noexc116
  %.sroa.0.0.i112 = phi ptr [ %i.nb, %.noexc117 ], [ %i.mt, %.noexc116 ], [ %i.na, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i ] ; 2 uses
  %i.ng = load ptr, ptr %i.eg, align 8, !tbaa !193 ; 6 uses
  store ptr %.sroa.0.0.i112, ptr %i.eg, align 8, !tbaa !193
  %.not.i.i.i.i.i113 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i113, label %.noexc110, label %bb.bm

bb.bm:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 96
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !229 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 112
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !230
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = ptrtoint ptr %i.ni to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef %i.nn) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.bn, %bb.bm
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !231 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 88
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !232
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = ptrtoint ptr %i.np to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef %i.nu) #25
  br label %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.bo, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef 120) #25
  %.pre.i114 = load ptr, ptr %i.eg, align 8, !tbaa !193
  br label %.noexc110

.noexc110:                                        ; preds = %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.nv = phi ptr [ %.sroa.0.0.i112, %_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv.exit.i ], [ %.pre.i114, %_ZNKSt14default_deleteIN8facebook5velox13DecodedVectorEEclEPS2_.exit.i.i.i.i.i ], [ %i.lg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ] ; 9 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !271
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 58
  %i.nz = load i8, ptr %i.ny, align 2, !tbaa !268, !range !88, !noundef !89
  %i.oa = trunc nuw i8 %i.nz to i1
  %i.ob = trunc nsw i64 %i.li to i32              ; 2 uses
  br i1 %i.oa, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc110
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 59
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !269, !range !88, !noundef !89
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 64
  %i.og = load i32, ptr %i.of, align 8, !tbaa !272
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !270
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.li
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !58
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %bb.br, %bb.bq, %.noexc110
  %.0.i.i.i = phi i32 [ %i.ok, %bb.br ], [ %i.og, %bb.bq ], [ %i.ob, %.noexc110 ]
  %i.ol = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.om = lshr i64 %i.ol, 6
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.om
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !122
  %i.op = and i64 %i.ol, 63
  %i.oq = shl nuw i64 1, %i.op
  %i.or = and i64 %i.oq, %i.oo
  %.not.i105 = icmp eq i64 %i.or, 0
  br i1 %.not.i105, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.os = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.ot = getelementptr inbounds [4 x i8], ptr %i.os, i64 %22 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !58
  %i.ov = add nsw i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !58
  %i.ow = load ptr, ptr %i.e, align 8, !tbaa !235
  %i.ox = load i32, ptr %i.f, align 4, !tbaa !58
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.oy
  store i32 %i.ob, ptr %i.oz, align 4, !tbaa !58
  %i.pa = load i32, ptr %i.f, align 4, !tbaa !58
  %i.pb = add nsw i32 %i.pa, 1
  store i32 %i.pb, ptr %i.f, align 4, !tbaa !58
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split15.i, %.split.i
  %i.pc = phi ptr [ %i.nv, %bb.bs ], [ %i.nv, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.lg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.lg, %.split15.i ], [ %i.lg, %.split.i ]
  %i.pd = phi ptr [ %i.nv, %bb.bs ], [ %i.nv, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.lh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i ], [ %i.lh, %.split15.i ], [ %i.lh, %.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i106, label %.noexc79, label %bb.ay, !llvm.loop !27

.noexc79:                                         ; preds = %bb.bt, %bb.ax, %.noexc108
  %23 = add i32 %.04.i, 1                         ; 2 uses
  %exitcond.not.i = icmp eq i32 %23, %i.jf
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit, label %.lr.ph.i77, !llvm.loop !1012

bb.bu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.pe = load ptr, ptr %i.en, align 8, !tbaa !229 ; 2 uses
  %i.pf = load i32, ptr %i.ev, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %1, ptr %i.ey, align 8
  store ptr %i.b, ptr %.sroa.6147.0..sroa_idx, align 8
  store ptr %i.a, ptr %.sroa.8150.0..sroa_idx, align 8
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx, align 8
  store ptr %i.f, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %17, ptr %.sroa.15.0..sroa_idx, align 8
  store ptr %i.c, ptr %.sroa.18.0..sroa_idx, align 8
  store ptr %i.e, ptr %.sroa.20.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %1, ptr %i.ez, align 8
  store ptr %i.b, ptr %.sroa.6147.0..sroa_idx148, align 8
  store ptr %i.a, ptr %.sroa.8150.0..sroa_idx151, align 8
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx153, align 8
  store ptr %i.f, ptr %.sroa.12.0..sroa_idx155, align 8
  store ptr %17, ptr %.sroa.15.0..sroa_idx158, align 8
  store ptr %i.c, ptr %.sroa.18.0..sroa_idx161, align 8
  store ptr %i.e, ptr %.sroa.20.0..sroa_idx163, align 8
  store i8 1, ptr %8, align 8, !tbaa !395
  store ptr %i.pe, ptr %i.fa, align 8, !tbaa !396
  store i8 1, ptr %9, align 8, !tbaa !398
  store ptr %i.pe, ptr %i.fb, align 8, !tbaa !399
  invoke void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKNS0_17SelectivityVectorERKSt10shared_ptrIT_ERKSB_INS0_10BaseVectorEERKSt6vectorISH_SaISH_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESW_SW_EUliE_EEvPKmiibSC_EUlimE_ZNS3_ISX_EEvSZ_iibSC_EUliE_EEviiSC_T0_(i32 noundef %i.je, i32 noundef %i.pf, ptr noundef nonnull byval(%class.anon.392) align 8 %8, ptr noundef nonnull byval(%class.anon.393) align 8 %9)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit: ; preds = %.noexc79, %.noexc80, %bb.aw
  %i.pg = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 4 uses
  %i.pi = load atomic i64, ptr %i.ph acquire, align 8 ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 4294967297
  %i.pk = trunc i64 %i.pi to i32                  ; 2 uses
  br i1 %i.pj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.ph, align 8, !tbaa !55
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 0, ptr %i.pl, align 4, !tbaa !56
  %i.pm = load ptr, ptr %i.pg, align 8, !tbaa !37
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24, !inline_history !8
  %i.pp = load ptr, ptr %i.pg, align 8, !tbaa !37
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24, !inline_history !8
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bx:                                            ; preds = %bb.bv
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i82 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i82, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pt = add nsw i32 %i.pk, -1
  store i32 %i.pt, ptr %i.ph, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.pu = atomicrmw volatile add ptr %i.ph, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i = phi i32 [ %i.pk, %bb.by ], [ %i.pu, %bb.bz ]
  %i.pv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.pv, label %bb.ca, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !59

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #24
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9functions18FilterFunctionBase7doApplyINS0_9MapVectorEEEiRKS1_RKSt10shared_ptrIT_ERKS9_INS0_10BaseVectorEERKSt6vectorISF_SaISF_EERNS0_4exec7EvalCtxERN5boost13intrusive_ptrINS0_6BufferEEESU_SU_EUliE_EEvSA_.exit, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.pw = load ptr, ptr %20, align 8, !tbaa !175  ; 7 uses
  %.not.i83 = icmp eq ptr %i.pw, null
  br i1 %.not.i83, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.py = atomicrmw sub ptr %i.px, i32 1 acq_rel, align 4
  %i.pz = icmp eq i32 %i.py, 1
  br i1 %i.pz, label %.sink.split.i.i84, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88

.sink.split.i.i84:                                ; preds = %bb.cb
  %i.qa = load ptr, ptr %i.pw, align 8, !tbaa !37
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qc = load ptr, ptr %i.qb, align 8
  invoke void %i.qc(ptr noundef nonnull align 8 dereferenceable(64) %i.pw)
          to label %.noexc.i85 unwind label %bb.cc, !inline_history !9

.noexc.i85:                                       ; preds = %.sink.split.i.i84
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !180
  %.not.i.i86 = icmp eq ptr %i.qe, null
  %i.qf = load ptr, ptr %i.pw, align 8, !tbaa !37
  %..i.i87 = select i1 %.not.i.i86, i64 8, i64 48
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %..i.i87
  %i.qh = load ptr, ptr %i.qg, align 8
  invoke void %i.qh(ptr noundef nonnull align 8 dereferenceable(64) %i.pw)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88 unwind label %bb.cc, !inline_history !9

bb.cc:                                            ; preds = %.noexc.i85, %.sink.split.i.i84
  %i.qi = landingpad { ptr, i32 }
          catch ptr null
  %i.qj = extractvalue { ptr, i32 } %i.qi, 0
  call void @__clang_call_terminate(ptr %i.qj) #27
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cb, %.noexc.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.qk = load ptr, ptr %19, align 8, !tbaa !229  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88
  %i.ql = load ptr, ptr %i.fd, align 8, !tbaa !230
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qo) #25
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit88
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.qp = load i32, ptr %i.em, align 8, !tbaa !248
  %i.qq = sext i32 %i.qp to i64                   ; 2 uses
  %i.qr = load ptr, ptr %i.ei, align 8, !tbaa !261, !nonnull !89, !align !255 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !252
  %i.qu = load ptr, ptr %i.qr, align 8, !tbaa !253
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = ptrtoint ptr %i.qu to i64
  %i.qx = sub i64 %i.qv, %i.qw
  %i.qy = ashr exact i64 %i.qx, 4
  %i.qz = icmp ugt i64 %i.qy, %i.qq
  br i1 %i.qz, label %.lr.ph.i.backedge, label %.thread

bb.cf:                                            ; preds = %bb.al
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit90

bb.cg:                                            ; preds = %_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_.exit
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit:                                        ; preds = %.critedge.thread.i.i, %bb.bl, %.critedge.thread.i.i124, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i77
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.am, %bb.an, %bb.ao, %bb.bu
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit186, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #24
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %bb.cg
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.rb, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.rc = load ptr, ptr %19, align 8, !tbaa !229  ; 3 uses
  %.not.i.i.i.i89 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i89, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit90, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rd = load ptr, ptr %i.fd, align 8, !tbaa !230
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = ptrtoint ptr %i.rc to i64
  %i.rg = sub i64 %i.re, %i.rf
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rg) #25
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox9functions13toWrapCaptureINS0_9MapVectorEEEN5boost13intrusive_ptrINS0_6BufferEEEiPKNS0_8CallableERKNS0_17SelectivityVectorERKSt10shared_ptrIT_E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKi(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::SelectivityVector") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %class.anon.224, align 8            ; 6 uses
  %7 = alloca %class.anon.225, align 8            ; 6 uses
  %8 = alloca %class.anon.387, align 8            ; 6 uses
  %9 = alloca %class.anon.388, align 8            ; 6 uses
  %10 = alloca %class.anon.386, align 8           ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %i.c, align 8, !tbaa !284
  store ptr %5, ptr %i.d, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !335
  switch i32 %i.h, label %bb.b [
    i32 6, label %.critedge
    i32 8, label %.critedge
  ], !prof !336

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiE18veloxCheckFailArgs) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236
  store ptr %i.j, ptr %i.e, align 8, !tbaa !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !234
  store ptr %i.l, ptr %i.f, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !249
  %i.n = sext i32 %1 to i64
  %i.o = add nsw i64 %i.n, 63
  %i.p = lshr i64 %i.o, 6                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !122
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr null, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.r = load ptr, ptr %0, align 8, !tbaa !229    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !230
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %.critedge, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store i32 %1, ptr %i.z, align 8, !tbaa !265
  store i32 0, ptr %i.y, align 4, !tbaa !260
  store i32 0, ptr %i.x, align 8, !tbaa !192
  store i16 256, ptr %i.aa, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %10, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.e, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !249, !range !88, !noundef !89
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.f

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %.0.in.pre.i.i = load i8, ptr %i.ab, align 4, !tbaa !43, !range !88
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !260
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !192 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !265
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %2, align 8, !tbaa !229   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.aj, 2147483584               ; 3 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %.not37.i.i.not.i.i37.not = icmp eq i32 %i.ao, 0
  br i1 %.not37.i.i.not.i.i37.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i38, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ap
  br i1 %.not37.i.i.not.i.i, label %.lr.ph, label %.critedge.i.i.i.i, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.aq = lshr exact i64 %indvars.iv.i.i38, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !122
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.j, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !13

.critedge.i.i.i.i:                                ; preds = %bb.j, %bb.i
  %.not38.i.i.i.i = icmp eq i32 %i.aj, %i.ao
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i.i.i
  %i.au = lshr i32 %i.aj, 6
  %i.av = and i32 %i.aj, 63
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.aw
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !122
  %.demorgan.i.i = or i64 %i.az, %notmask.i40.i.i.i.i
  %i.ba = icmp eq i64 %.demorgan.i.i, -1
  %i.bb = zext i1 %i.ba to i16
  %i.bc = or disjoint i16 %i.bb, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.k, %.critedge.i.i.i.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.g ], [ 256, %bb.f ], [ 257, %bb.h ], [ 257, %.critedge.i.i.i.i ], [ %i.bc, %bb.k ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ab, align 4
  %i.bd = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.bd, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !192 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !260 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.l, %.noexc
  %.04.i = phi i32 [ %i.bj, %.noexc ], [ %i.bh, %bb.l ] ; 2 uses
  invoke void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %.04.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.bj = add i32 %.04.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bj, %i.bf
  br i1 %exitcond.not.i, label %.loopexit22, label %.lr.ph.i, !llvm.loop !1028

bb.m:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !229   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !260
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !192
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false)
  store i8 1, ptr %8, align 8, !tbaa !402
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bk, ptr %i.br, align 8, !tbaa !403
  store i8 1, ptr %9, align 8, !tbaa !405
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bk, ptr %i.bs, align 8, !tbaa !406
  invoke void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS7_PKT_PKmPKiEUliE_EEvSE_iibSA_EUlimE_ZNS3_ISH_EEvSE_iibSA_EUliE_EEviiSA_T0_(i32 noundef %i.bm, i32 noundef %i.bo, ptr noundef nonnull byval(%class.anon.387) align 8 %8, ptr noundef nonnull byval(%class.anon.388) align 8 %9)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit22

.loopexit22:                                      ; preds = %.noexc, %.noexc13, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !229   ; 4 uses
  %i.bu = load i32, ptr %i.z, align 8, !tbaa !265 ; 6 uses
  %.not.i.i.i14 = icmp sgt i32 %i.bu, 0
  br i1 %.not.i.i.i14, label %bb.n, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.n:                                             ; preds = %.loopexit22
  %i.bv = and i32 %i.bu, 2147483584               ; 4 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %.not37.i.i.not.i39.not = icmp eq i32 %i.bv, 0
  br i1 %.not37.i.i.not.i39.not, label %.critedge.i.i.i, label %.lr.ph41

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i40, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.bw
  br i1 %.not37.i.i.not.i, label %.lr.ph41, label %.critedge.i.i.i, !llvm.loop !21

.lr.ph41:                                         ; preds = %bb.n, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.bx = lshr exact i64 %indvars.iv.i40, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !122 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !21

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.n
  %.not38.i.i.i = icmp eq i32 %i.bu, %i.bv
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %.critedge.i.i.i
  %i.ca = lshr i32 %i.bu, 6
  %i.cb = and i32 %i.bu, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i43.i.i.i, -1
  %i.ce = zext nneg i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !122
  %i.ch = and i64 %i.cg, %i.cd                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.o, %.critedge.i.i.i, %.loopexit22
  store i32 0, ptr %i.y, align 4, !tbaa !260
  store i32 0, ptr %i.x, align 8, !tbaa !192
  store i16 256, ptr %i.aa, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph41
  %i.ci = trunc nuw nsw i64 %indvars.iv.i40 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.o
  %.sink67.i.i.i = phi i64 [ %i.ch, %bb.o ], [ %i.bz, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.bv, %bb.o ], [ %i.ci, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = or disjoint i32 %.sink65.i.i.i, %i.ck   ; 2 uses
  store i32 %i.cl, ptr %i.y, align 4, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !58
  store ptr %i.bt, ptr %6, align 8, !tbaa !330
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.cm, align 8, !tbaa !235
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 1, ptr %i.cn, align 8, !tbaa !331
  store ptr %i.bt, ptr %7, align 8, !tbaa !333
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.co, align 8, !tbaa !235
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.cp, align 8, !tbaa !334
  %i.cq = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.cl, i32 noundef %i.bu, ptr noundef nonnull byval(%class.anon.224) align 8 %6, ptr noundef nonnull byval(%class.anon.225) align 8 %7)
          to label %.noexc15 unwind label %.loopexit.split-lp ; 0 uses

.noexc15:                                         ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.x, align 8, !tbaa !192
  store i8 0, ptr %i.m, align 1, !tbaa !249
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.m, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ct = load ptr, ptr %0, align 8, !tbaa !229   ; 3 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i16, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !230
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #25
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %common.resume

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc15, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions13toElementRowsINS0_9MapVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !407, !nonnull !89, !align !255
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !408, !nonnull !89, !align !255
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 2 uses
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %i.k = lshr i64 %i.j, 6
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !122
  %i.n = and i64 %i.j, 63
  %i.o = shl nuw i64 1, %i.n
  %i.p = and i64 %i.m, %i.o
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1029, !nonnull !89, !align !255
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !235
  %i.t = sext i32 %i.f to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1030, !nonnull !89, !align !255
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !235
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.t
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !58  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1031, !nonnull !89, !align !255 ; 2 uses
  %i.ad = add nsw i32 %i.aa, %i.v                 ; 5 uses
end_hunk_4
