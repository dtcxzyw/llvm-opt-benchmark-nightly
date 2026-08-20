inline.NumInlined: 3910
inline.NumDeleted: 1410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal6theory2uf11HoExtension19checkExtensionalityEPNS1_11TheoryModelE:bb.a
  %i.fi = and i64 %i.fh, 1152920405095219200      ; 2 uses
  %i.fj = and i64 %i.ff, -1152920405095219201
  %i.fk = or disjoint i64 %i.fi, %i.fj
  store i64 %i.fk, ptr %i.fe, align 8
  %i.fl = icmp eq i64 %i.fi, 0
  br i1 %i.fl, label %bb.be, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, !prof !63

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fe)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i: ; preds = %bb.be, %bb.bd, %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fo, %i.fd
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !354

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %23, align 8, !tbaa !353
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.fp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.fc, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !324
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.ft) #24
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit

bb.bh:                                            ; preds = %bb.ap, %bb.aq, %bb.ah, %bb.ag
  %.pn257 = phi { ptr, i32 } [ %i.dl, %bb.aq ], [ %i.cj, %bb.ag ], [ %i.ck, %bb.ah ], [ %i.dk, %bb.ap ]
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.af
  %.pn257.pn = phi { ptr, i32 } [ %.pn257, %bb.bh ], [ %i.ci, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bq

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit: ; preds = %bb.p, %bb.m, %bb.i, %bb.o, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit
  %.1109 = phi i1 [ true, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit ], [ %.0108, %bb.i ], [ %.0108, %bb.m ], [ %.0108, %bb.o ], [ %.0108, %bb.p ]
  %i.fu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.bj unwind label %bb.ad     ; 0 uses

bb.bj:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit
  %i.fv = load ptr, ptr %22, align 8, !tbaa !72   ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8            ; 3 uses
  %i.fx = and i64 %i.fw, 1152920405095219200
  %.not.i.i301 = icmp eq i64 %i.fx, 1152920405095219200
  br i1 %.not.i.i301, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, label %bb.bk, !prof !63

bb.bk:                                            ; preds = %bb.bj
  %i.fy = add i64 %i.fw, 1152920405095219200
  %i.fz = and i64 %i.fy, 1152920405095219200      ; 2 uses
  %i.ga = and i64 %i.fw, -1152920405095219201
  %i.gb = or disjoint i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %i.fv, align 8
  %i.gc = icmp eq i64 %i.fz, 0
  br i1 %i.gc, label %bb.bl, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, !prof !63

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit302 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit302:           ; preds = %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.gf = load ptr, ptr %21, align 8, !tbaa !14   ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8            ; 3 uses
  %i.gh = and i64 %i.gg, 1152920405095219200
  %.not.i.i303 = icmp eq i64 %i.gh, 1152920405095219200
  br i1 %.not.i.i303, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.bn, !prof !63

bb.bn:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit302
  %i.gi = add i64 %i.gg, 1152920405095219200
  %i.gj = and i64 %i.gi, 1152920405095219200      ; 2 uses
  %i.gk = and i64 %i.gg, -1152920405095219201
  %i.gl = or disjoint i64 %i.gj, %i.gk
  store i64 %i.gl, ptr %i.gf, align 8
  %i.gm = icmp eq i64 %i.gj, 0
  br i1 %i.gm, label %bb.bo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !63

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit302, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.e, !llvm.loop !497

bb.bq:                                            ; preds = %bb.bi, %bb.ae, %bb.ad
  %.pn260 = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %.pn257.pn, %bb.bi ], [ %i.ch, %bb.ae ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.ac
  %.pn260.pn = phi { ptr, i32 } [ %.pn260, %bb.bq ], [ %i.cf, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ab
  %.pn260.pn.pn = phi { ptr, i32 } [ %.pn260.pn, %bb.br ], [ %i.ce, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.oo

bb.bt:                                            ; preds = %bb.f
  %i.gp = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 392
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !76, !nonnull !260, !align !261
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 22
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !498, !range !265, !noundef !260
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %.0108, label %bb.bw, label %.loopexit741

bb.bw:                                            ; preds = %bb.bv
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !361, !nonnull !260, !align !261
  invoke void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240) %i.gw, i32 noundef 19)
          to label %.loopexit741 unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bu
  %i.gx = load ptr, ptr %i.j, align 8, !tbaa !50  ; 2 uses
  %.not7371121 = icmp eq ptr %i.gx, %i.h
  br i1 %.not7371121, label %.loopexit741, label %.lr.ph1125

.lr.ph1125:                                       ; preds = %bb.bx
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph1125, %._crit_edge1119
  %.01751123 = phi i32 [ 0, %.lr.ph1125 ], [ %.1176.lcssa, %._crit_edge1119 ] ; 2 uses
  %.sroa.0683.01122 = phi ptr [ %i.gx, %.lr.ph1125 ], [ %i.awn, %._crit_edge1119 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0683.01122, i64 40 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0683.01122, i64 48 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !293
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !289
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = and i64 %i.hg, 34359738360
  %.not = icmp eq i64 %i.hh, 0
  br i1 %.not, label %._crit_edge1119, label %.lr.ph1118.preheader

.lr.ph1118.preheader:                             ; preds = %bb.by
  %i.hi = lshr exact i64 %i.hg, 3
  %wide.trip.count = and i64 %i.hi, 4294967295
  br label %.lr.ph1118

.loopexit740:                                     ; preds = %bb.om, %.lr.ph1118
  %.2177.lcssa = phi i32 [ %.11761115, %.lr.ph1118 ], [ %.5180, %bb.om ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1190.not = icmp eq i64 %indvars.iv.next1188, %wide.trip.count
  br i1 %exitcond1190.not, label %._crit_edge1119, label %.lr.ph1118, !llvm.loop !499

.lr.ph1118:                                       ; preds = %.lr.ph1118.preheader, %.loopexit740
  %indvars.iv1187 = phi i64 [ 0, %.lr.ph1118.preheader ], [ %indvars.iv.next1188, %.loopexit740 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph1118.preheader ], [ %indvars.iv.next, %.loopexit740 ] ; 2 uses
  %.11761115 = phi i32 [ %.01751123, %.lr.ph1118.preheader ], [ %.2177.lcssa, %.loopexit740 ] ; 2 uses
  %indvars.iv.next1188 = add nuw nsw i64 %indvars.iv1187, 1 ; 3 uses
  %i.hj = load ptr, ptr %i.hb, align 8, !tbaa !293
  %i.hk = load ptr, ptr %i.ha, align 8, !tbaa !289
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = lshr exact i64 %i.hn, 3
  %i.hp = and i64 %i.ho, 4294967295               ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next1188, %i.hp
  br i1 %i.hq, label %.lr.ph1113, label %.loopexit740

.lr.ph1113:                                       ; preds = %.lr.ph1118, %bb.om
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %bb.om ], [ %indvars.iv, %.lr.ph1118 ] ; 3 uses
  %.21771110 = phi i32 [ %.5180, %bb.om ], [ %.11761115, %.lr.ph1118 ] ; 3 uses
  %i.hr = load ptr, ptr %i.gy, align 8, !tbaa !491, !nonnull !260, !align !261 ; 2 uses
  %i.hs = load ptr, ptr %i.ha, align 8, !tbaa !289 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv1187
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !14
  store ptr %i.hu, ptr %26, align 8, !tbaa !74
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv1184
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !14
  store ptr %i.hw, ptr %27, align 8, !tbaa !74
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = invoke noundef zeroext i1 %i.hz(ptr noundef nonnull align 8 dereferenceable(160) %i.hr, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 %27)
          to label %bb.bz unwind label %bb.cy

bb.bz:                                            ; preds = %.lr.ph1113
  br i1 %i.ia, label %bb.om, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.ib = load ptr, ptr %i.ha, align 8, !tbaa !289 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv1187
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv1184
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !14, !noalias !500 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !14, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !503
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !286, !noalias !503
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef %i.ih, i32 noundef 5)
          to label %.noexc304 unwind label %bb.cz

.noexc304:                                        ; preds = %bb.ca
  store ptr %i.ie, ptr %15, align 8, !tbaa !74, !noalias !503
  %i.ii = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull align 8 %15)
          to label %bb.cb unwind label %bb.ce, !noalias !503

bb.cb:                                            ; preds = %.noexc304
  store ptr %i.ig, ptr %16, align 8, !tbaa !74, !noalias !503
  %i.ij = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ii, ptr noundef nonnull align 8 %16)
          to label %bb.cc unwind label %bb.cf, !noalias !503 ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %31, ptr noundef nonnull align 8 dereferenceable(124) %14)
          to label %bb.cg unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ce:                                            ; preds = %.noexc304
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cf:                                            ; preds = %bb.cb
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cf, %bb.ce, %bb.cd
  %.pn5.i.i = phi { ptr, i32 } [ %i.ik, %bb.cd ], [ %i.im, %bb.cf ], [ %i.il, %bb.ce ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !503
  br label %.body

bb.cg:                                            ; preds = %bb.cc
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !503
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !500
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.in = load ptr, ptr %31, align 8, !tbaa !14, !noalias !506 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !noalias !506
  %i.iq = and i64 %i.ip, 1023
  %.not.i305 = icmp eq i64 %i.iq, 20
  br i1 %.not.i305, label %bb.ch, label %.noexc.i

bb.ch:                                            ; preds = %bb.cg
  %i.ir = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
          to label %.noexc307 unwind label %bb.da

.noexc307:                                        ; preds = %bb.ch
  %i.is = icmp eq i32 %i.ir, 2
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.iu = zext i1 %i.is to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !11, !noalias !506 ; 5 uses
  store ptr %i.iw, ptr %30, align 8, !tbaa !14, !alias.scope !506
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !506 ; 3 uses
  %i.iy = lshr i64 %i.ix, 40
  %i.iz = trunc nuw nsw i64 %i.iy to i32
  %i.ja = and i32 %i.iz, 1048575                  ; 3 uses
  %i.jb = icmp samesign ult i32 %i.ja, 1048574
  br i1 %i.jb, label %bb.ci, label %bb.cj, !prof !64

bb.ci:                                            ; preds = %.noexc307
  %i.jc = add nuw nsw i32 %i.ja, 1
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.jd, 40
  %i.jf = and i64 %i.ix, -1152920405095219201
  %i.jg = or i64 %i.je, %i.jf
  store i64 %i.jg, ptr %i.iw, align 8, !noalias !506
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit

bb.cj:                                            ; preds = %.noexc307
  %i.jh = icmp eq i32 %i.ja, 1048574
  br i1 %i.jh, label %bb.ck, label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit, !prof !63

bb.ck:                                            ; preds = %bb.cj
  %i.ji = or i64 %i.ix, 1152920405095219200
  store i64 %i.ji, ptr %i.iw, align 8, !noalias !506
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iw)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit unwind label %bb.da

.noexc.i:                                         ; preds = %bb.cg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !506
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !509
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !286, !noalias !509
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef %i.jk, i32 noundef 20)
          to label %.noexc309 unwind label %bb.da

.noexc309:                                        ; preds = %.noexc.i
  store ptr %i.in, ptr %13, align 8, !tbaa !74, !noalias !509
  %i.jl = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %13)
          to label %bb.cl unwind label %bb.cn, !noalias !509 ; 0 uses

bb.cl:                                            ; preds = %.noexc309
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %bb.co unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i306

bb.cn:                                            ; preds = %.noexc309
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i306

.body.i306:                                       ; preds = %bb.cn, %bb.cm
  %.pn.i.i = phi { ptr, i32 } [ %i.jm, %bb.cm ], [ %i.jn, %bb.cn ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !509
  br label %.body310

bb.co:                                            ; preds = %bb.cl
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !509
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !506
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit

_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit: ; preds = %bb.co, %bb.cj, %bb.ci, %bb.ck
  %i.jo = load ptr, ptr %30, align 8, !tbaa !14
  store ptr %i.jo, ptr %29, align 8, !tbaa !74
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %29)
          to label %bb.cp unwind label %bb.db

bb.cp:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit
  %i.jp = load ptr, ptr %30, align 8, !tbaa !14   ; 3 uses
  %i.jq = load i64, ptr %i.jp, align 8            ; 3 uses
  %i.jr = and i64 %i.jq, 1152920405095219200
  %.not.i.i312 = icmp eq i64 %i.jr, 1152920405095219200
  br i1 %.not.i.i312, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313, label %bb.cq, !prof !63

bb.cq:                                            ; preds = %bb.cp
  %i.js = add i64 %i.jq, 1152920405095219200
  %i.jt = and i64 %i.js, 1152920405095219200      ; 2 uses
  %i.ju = and i64 %i.jq, -1152920405095219201
  %i.jv = or disjoint i64 %i.jt, %i.ju
  store i64 %i.jv, ptr %i.jp, align 8
  %i.jw = icmp eq i64 %i.jt, 0
  br i1 %i.jw, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313, !prof !63

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313: ; preds = %bb.cp, %bb.cq, %bb.cr
  %i.jz = load ptr, ptr %31, align 8, !tbaa !14   ; 3 uses
  %i.ka = load i64, ptr %i.jz, align 8            ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2uf11HoExtension19checkExtensionalityEPNS1_11TheoryModelE:bb.a
  %i.auq = landingpad { ptr, i32 }
          cleanup
  br label %.body561.thread

bb.nr:                                            ; preds = %.noexc.i565, %bb.ml, %bb.mi
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %.body561

bb.ns:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit573
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %.body576

.body576:                                         ; preds = %bb.ms, %bb.ns
  %eh.lpad-body577 = phi { ptr, i32 } [ %i.aus, %bb.ns ], [ %.pn.i, %bb.ms ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

.body561.thread:                                  ; preds = %.body.i556, %bb.nq
  %.pn243.pn.ph = phi { ptr, i32 } [ %.pn.i.i557, %.body.i556 ], [ %i.auq, %bb.nq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

.body561:                                         ; preds = %.body.i566, %bb.nr
  %.pn243 = phi { ptr, i32 } [ %.pn.i.i567, %.body.i566 ], [ %i.aur, %bb.nr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %.loopexit

bb.nt:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit596
  %i.aut = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #22
  br label %.loopexit

.loopexit:                                        ; preds = %.body561.thread, %.body576, %.body561, %bb.nt
  %.pn246.pn = phi { ptr, i32 } [ %i.aut, %bb.nt ], [ %.pn243.pn.ph, %.body561.thread ], [ %eh.lpad-body577, %.body576 ], [ %.pn243, %.body561 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #22
  br label %bb.nu

bb.nu:                                            ; preds = %.loopexit, %bb.np
  %.pn246.pn.pn = phi { ptr, i32 } [ %.pn246.pn, %.loopexit ], [ %.pn238.pn.pn.pn, %bb.np ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369

.loopexit739:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit324, %bb.kv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600
  %i.auu = phi i1 [ true, %bb.kv ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit600 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit324 ]
  %i.auv = load ptr, ptr %32, align 8, !tbaa !14  ; 3 uses
  %i.auw = load i64, ptr %i.auv, align 8          ; 3 uses
  %i.aux = and i64 %i.auw, 1152920405095219200
  %.not.i.i601 = icmp eq i64 %i.aux, 1152920405095219200
  br i1 %.not.i.i601, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, label %bb.nv, !prof !63

bb.nv:                                            ; preds = %.loopexit739
  %i.auy = add i64 %i.auw, 1152920405095219200
  %i.auz = and i64 %i.auy, 1152920405095219200    ; 2 uses
  %i.ava = and i64 %i.auw, -1152920405095219201
  %i.avb = or disjoint i64 %i.auz, %i.ava
  store i64 %i.avb, ptr %i.auv, align 8
  %i.avc = icmp eq i64 %i.auz, 0
  br i1 %i.avc, label %bb.nw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, !prof !63

bb.nw:                                            ; preds = %bb.nv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.avd = landingpad { ptr, i32 }
          catch ptr null
  %i.ave = extractvalue { ptr, i32 } %i.avd, 0
  call void @__clang_call_terminate(ptr %i.ave) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602: ; preds = %.loopexit739, %bb.nv, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.oe

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369: ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.du, %bb.ei, %bb.nu, %bb.ku
  %.pn246.pn.pn.pn = phi { ptr, i32 } [ %.pn246.pn.pn, %bb.nu ], [ %.pn228.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ku ], [ %.pn199.pn, %bb.du ], [ %.pn202, %bb.ei ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gw ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gx ], [ %.pn204.pn.pn.pn.pn.pn.pn, %bb.gy ] ; 3 uses
  %i.avf = load ptr, ptr %32, align 8, !tbaa !14  ; 3 uses
  %i.avg = load i64, ptr %i.avf, align 8          ; 3 uses
  %i.avh = and i64 %i.avg, 1152920405095219200
  %.not.i.i603 = icmp eq i64 %i.avh, 1152920405095219200
  br i1 %.not.i.i603, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, label %bb.ny, !prof !63

bb.ny:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369
  %i.avi = add i64 %i.avg, 1152920405095219200
  %i.avj = and i64 %i.avi, 1152920405095219200    ; 2 uses
  %i.avk = and i64 %i.avg, -1152920405095219201
  %i.avl = or disjoint i64 %i.avj, %i.avk
  store i64 %i.avl, ptr %i.avf, align 8
  %i.avm = icmp eq i64 %i.avj, 0
  br i1 %i.avm, label %bb.nz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604, !prof !63

bb.nz:                                            ; preds = %bb.ny
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 unwind label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.avn = landingpad { ptr, i32 }
          catch ptr null
  %i.avo = extractvalue { ptr, i32 } %i.avn, 0
  call void @__clang_call_terminate(ptr %i.avo) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604: ; preds = %bb.nz, %bb.ny, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369, %bb.dc
  %.pn246.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ko, %bb.dc ], [ %.pn246.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit369 ], [ %.pn246.pn.pn.pn, %bb.ny ], [ %.pn246.pn.pn.pn, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.oi

bb.ob:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315
  %i.avp = load ptr, ptr %28, align 8, !tbaa !14
  store ptr %i.avp, ptr %69, align 8, !tbaa !74
  %i.avq = invoke noundef i32 @_ZN4cvc58internal6theory2uf11HoExtension19applyExtensionalityENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 %69)
          to label %bb.oc unwind label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.avr = add i32 %i.avq, %.21771110
  br label %bb.oe

bb.od:                                            ; preds = %bb.ob
  %i.avs = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.oe:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602, %bb.oc
  %.4179 = phi i32 [ %.21771110, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 ], [ %i.avr, %bb.oc ]
  %.599 = phi i1 [ %i.auu, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit602 ], [ true, %bb.oc ]
  %i.avt = load ptr, ptr %28, align 8, !tbaa !14  ; 3 uses
  %i.avu = load i64, ptr %i.avt, align 8          ; 3 uses
  %i.avv = and i64 %i.avu, 1152920405095219200
  %.not.i.i605 = icmp eq i64 %i.avv, 1152920405095219200
  br i1 %.not.i.i605, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, label %bb.of, !prof !63

bb.of:                                            ; preds = %bb.oe
  %i.avw = add i64 %i.avu, 1152920405095219200
  %i.avx = and i64 %i.avw, 1152920405095219200    ; 2 uses
  %i.avy = and i64 %i.avu, -1152920405095219201
  %i.avz = or disjoint i64 %i.avx, %i.avy
  store i64 %i.avz, ptr %i.avt, align 8
  %i.awa = icmp eq i64 %i.avx, 0
  br i1 %i.awa, label %bb.og, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, !prof !63

bb.og:                                            ; preds = %bb.of
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 unwind label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.awb = landingpad { ptr, i32 }
          catch ptr null
  %i.awc = extractvalue { ptr, i32 } %i.awb, 0
  call void @__clang_call_terminate(ptr %i.awc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606: ; preds = %bb.oe, %bb.of, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br i1 %.599, label %bb.om, label %.loopexit741

bb.oi:                                            ; preds = %bb.od, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604
  %.pn246.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn246.pn.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit604 ], [ %i.avs, %bb.od ] ; 3 uses
  %i.awd = load ptr, ptr %28, align 8, !tbaa !14  ; 3 uses
  %i.awe = load i64, ptr %i.awd, align 8          ; 3 uses
  %i.awf = and i64 %i.awe, 1152920405095219200
  %.not.i.i607 = icmp eq i64 %i.awf, 1152920405095219200
  br i1 %.not.i.i607, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, label %bb.oj, !prof !63

bb.oj:                                            ; preds = %bb.oi
  %i.awg = add i64 %i.awe, 1152920405095219200
  %i.awh = and i64 %i.awg, 1152920405095219200    ; 2 uses
  %i.awi = and i64 %i.awe, -1152920405095219201
  %i.awj = or disjoint i64 %i.awh, %i.awi
  store i64 %i.awj, ptr %i.awd, align 8
  %i.awk = icmp eq i64 %i.awh, 0
  br i1 %i.awk, label %bb.ok, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, !prof !63

bb.ok:                                            ; preds = %bb.oj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608 unwind label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.awl = landingpad { ptr, i32 }
          catch ptr null
  %i.awm = extractvalue { ptr, i32 } %i.awl, 0
  call void @__clang_call_terminate(ptr %i.awm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608: ; preds = %bb.ok, %bb.oj, %bb.oi, %.body
  %.pn246.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn246.pn.pn.pn.pn.pn, %bb.oi ], [ %.pn246.pn.pn.pn.pn.pn, %bb.oj ], [ %.pn246.pn.pn.pn.pn.pn, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.oo

bb.om:                                            ; preds = %bb.bz, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606
  %.5180 = phi i32 [ %.4179, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 ], [ %.21771110, %bb.bz ] ; 2 uses
  %indvars.iv.next1185 = add nuw nsw i64 %indvars.iv1184, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1185, %i.hp
  br i1 %exitcond.not, label %.loopexit740, label %.lr.ph1113, !llvm.loop !598

._crit_edge1119:                                  ; preds = %.loopexit740, %bb.by
  %.1176.lcssa = phi i32 [ %.01751123, %bb.by ], [ %.2177.lcssa, %.loopexit740 ] ; 2 uses
  %i.awn = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0683.01122) #28 ; 2 uses
  %.not737 = icmp eq ptr %i.awn, %i.h
  br i1 %.not737, label %.loopexit741, label %bb.by, !llvm.loop !599

.loopexit741:                                     ; preds = %._crit_edge1119, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606, %bb.bx, %bb.bv, %bb.bw
  %.11195 = phi i32 [ 0, %bb.bv ], [ 0, %bb.bw ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit606 ], [ 0, %bb.bx ], [ %.1176.lcssa, %._crit_edge1119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.awo = load ptr, ptr %i.i, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St6vectorINS1_12NodeTemplateILb1EEESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.awo)
          to label %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit unwind label %bb.on

bb.on:                                            ; preds = %.loopexit741
  %i.awp = landingpad { ptr, i32 }
          catch ptr null
  %i.awq = extractvalue { ptr, i32 } %i.awp, 0
  call void @__clang_call_terminate(ptr %i.awq) #25
  unreachable

_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit: ; preds = %.loopexit741
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret i32 %.11195

bb.oo:                                            ; preds = %.loopexit747, %.loopexit.split-lp, %bb.cy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608, %bb.bs, %bb.aa
  %.pn260.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %.pn260.pn.pn, %bb.bs ], [ %i.kk, %bb.cy ], [ %.pn246.pn.pn.pn.pn.pn.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit608 ], [ %lpad.loopexit, %.loopexit747 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.awr = load ptr, ptr %i.i, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St6vectorINS1_12NodeTemplateILb1EEESaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %i.awr)
          to label %_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit609 unwind label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.aws = landingpad { ptr, i32 }
          catch ptr null
  %i.awt = extractvalue { ptr, i32 } %i.aws, 0
  call void @__clang_call_terminate(ptr %i.awt) #25
  unreachable

_ZNSt3mapIN4cvc58internal8TypeNodeESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit609: ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  resume { ptr, i32 } %.pn260.pn.pn.pn.pn
}

declare noundef ptr @_ZNK4cvc58internal6theory11TheoryState17getEqualityEngineEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory2eq17EqClassesIteratorC1EPKNS2_14EqualityEngineE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal6theory2eq17EqClassesIterator10isFinishedEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNK4cvc58internal6theory2eq17EqClassesIteratordeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4cvc58internal3Env12isFiniteTypeENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(696), ptr noundef align 8) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory2uf11HoExtension22collectModelInfoHoTermENS0_12NodeTemplateILb1EEEPNS1_11TheoryModelE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.422", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 26
  br i1 %i.e, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.a, ptr %9, align 8, !tbaa !74
  call void @_ZN4cvc58internal6theory2uf16TheoryUfRewriter20getHoApplyForApplyUfENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 %9)
  %i.f = load ptr, ptr %1, align 8, !tbaa !14
  store ptr %i.f, ptr %10, align 8, !tbaa !74
  %i.g = load ptr, ptr %8, align 8, !tbaa !14
  store ptr %i.g, ptr %11, align 8, !tbaa !74
  %i.h = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11TheoryModel14assertEqualityENS0_12NodeTemplateILb0EEES4_b(ptr noundef nonnull align 8 dereferenceable(968) %2, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.n       ; 2 uses

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.i = load ptr, ptr %1, align 8, !tbaa !14, !noalias !600 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %8, align 8, !tbaa !14, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !603
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !286, !noalias !603
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.l, i32 noundef 5)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  store ptr %i.i, ptr %6, align 8, !tbaa !74, !noalias !603
  %i.m = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.h, !noalias !603

bb.e:                                             ; preds = %.noexc
  store ptr %i.k, ptr %7, align 8, !tbaa !74, !noalias !603
  %i.n = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.m, ptr noundef nonnull align 8 %7)
          to label %bb.f unwind label %bb.i, !noalias !603 ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %12, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.g
  %.pn5.i.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.q, %bb.i ], [ %i.p, %bb.h ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !603
  br label %.body

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.f
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !600
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !361, !nonnull !260, !align !261
  %i.t = load ptr, ptr %12, align 8, !tbaa !14
  store ptr %i.t, ptr %13, align 8, !tbaa !74
  %i.u = invoke noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager5lemmaENS0_12NodeTemplateILb0EEENS1_11InferenceIdENS1_13LemmaPropertyE(ptr noundef nonnull align 8 dereferenceable(240) %i.s, ptr noundef nonnull align 8 %13, i32 noundef 403, i32 noundef 0)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.v = load ptr, ptr %12, align 8, !tbaa !14    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !63

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !63

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %.pre = load ptr, ptr %8, align 8, !tbaa !14
  br label %.loopexit

bb.n:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.o:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
end_hunk_1
