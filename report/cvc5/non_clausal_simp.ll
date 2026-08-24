Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/non_clausal_simp?download=true
inline.NumInlined: 1207
inline.NumDeleted: 480
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes14NonClausalSimp13applyInternalEPNS1_17AssertionPipelineE:bb.a

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(74) %i.cg)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i390 unwind label %bb.ax

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i390: ; preds = %bb.ah, %bb.ag
  %i.dn = load ptr, ptr %i.cp, align 8, !tbaa !299 ; 5 uses
  %i.do = load ptr, ptr %i.cr, align 8, !tbaa !300
  %.not.i11.i391 = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i11.i391, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i390
  %i.dp = load ptr, ptr %i.bx, align 8, !tbaa !280 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %12, align 16, !tbaa !301
  store <2 x ptr> %i.dq, ptr %i.dn, align 8, !tbaa !301
  %.not.i.i.i.i.i392 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i392, label %_ZNSt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEEC2ERKS4_.exit.i.i394, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.ds = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i.i.i393 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i.i393, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !302
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !302
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEEC2ERKS4_.exit.i.i394

bb.al:                                            ; preds = %bb.aj
  %i.dv = atomicrmw volatile add ptr %i.dr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i395 = load ptr, ptr %i.cp, align 8, !tbaa !299
  br label %_ZNSt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEEC2ERKS4_.exit.i.i394

_ZNSt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEEC2ERKS4_.exit.i.i394: ; preds = %bb.al, %bb.ak, %bb.ai
  %i.dw = phi ptr [ %i.dn, %bb.ai ], [ %i.dn, %bb.ak ], [ %.pre.i.i395, %bb.al ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %i.dx, ptr %i.cp, align 8, !tbaa !299
  br label %bb.an

bb.am:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i390
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal6theory20TrustSubstitutionMapEEC2ERKS4_.exit.i.i394, %bb.am
  %i.dz = load i64, ptr %i.dd, align 8, !tbaa !303
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dd, align 8, !tbaa !303
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !304 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !304 ; 2 uses
  %.not11931300 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not11931300, label %.loopexit1211, label %.lr.ph1303

.lr.ph1303:                                       ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.ay

bb.ao:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit381
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.tp

bb.ap:                                            ; preds = %bb.p
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

bb.aq:                                            ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

bb.ar:                                            ; preds = %bb.r
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

bb.as:                                            ; preds = %bb.s
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.tl

bb.at:                                            ; preds = %bb.t
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.u
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.tk

bb.av:                                            ; preds = %bb.v
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body385

bb.aw:                                            ; preds = %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.ax:                                            ; preds = %bb.jh, %bb.am, %bb.ah, %bb.af, %bb.aa, %bb.x
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.ay:                                            ; preds = %.lr.ph1303, %_ZN4cvc58internal9TrustNodeD2Ev.exit402
  %.sroa.01155.01301 = phi ptr [ %i.eb, %.lr.ph1303 ], [ %i.ft, %_ZN4cvc58internal9TrustNodeD2Ev.exit402 ] ; 4 uses
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !224
  %i.es = load i32, ptr %.sroa.01155.01301, align 8, !tbaa !265
  store i32 %i.es, ptr %13, align 8, !tbaa !265
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01155.01301, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !258 ; 5 uses
  store ptr %i.eu, ptr %i.ef, align 8, !tbaa !258
  %i.ev = load i64, ptr %i.eu, align 8            ; 3 uses
  %i.ew = lshr i64 %i.ev, 40
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = and i32 %i.ex, 1048575                  ; 3 uses
  %i.ez = icmp samesign ult i32 %i.ey, 1048574
  br i1 %i.ez, label %bb.az, label %bb.ba, !prof !269

bb.az:                                            ; preds = %bb.ay
  %i.fa = add nuw nsw i32 %i.ey, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 40
  %i.fd = and i64 %i.ev, -1152920405095219201
  %i.fe = or i64 %i.fc, %i.fd
  store i64 %i.fe, ptr %i.eu, align 8
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.ff = icmp eq i32 %i.ey, 1048574
  br i1 %i.ff, label %bb.bb, label %bb.bc, !prof !270

bb.bb:                                            ; preds = %bb.ba
  %i.fg = or i64 %i.ev, 1152920405095219200
  store i64 %i.fg, ptr %i.eu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.ba, %bb.az, %bb.bb
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.01155.01301, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !271
  store ptr %i.fi, ptr %i.eg, align 8, !tbaa !271
  invoke void @_ZN4cvc58internal3smt24PreprocessProofGenerator22notifyNewTrustedAssertENS0_9TrustNodeENS0_7TrustIdE(ptr noundef nonnull align 8 dereferenceable(672) %i.er, ptr noundef nonnull align 8 %13, i32 noundef 74)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.fj = load ptr, ptr %i.ef, align 8, !tbaa !258 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  %i.fl = and i64 %i.fk, 1152920405095219200
  %.not.i.i.i401 = icmp eq i64 %i.fl, 1152920405095219200
  br i1 %.not.i.i.i401, label %_ZN4cvc58internal9TrustNodeD2Ev.exit402, label %bb.be, !prof !270

bb.be:                                            ; preds = %bb.bd
  %i.fm = add i64 %i.fk, 1152920405095219200
  %i.fn = and i64 %i.fm, 1152920405095219200      ; 2 uses
  %i.fo = and i64 %i.fk, -1152920405095219201
  %i.fp = or disjoint i64 %i.fn, %i.fo
  store i64 %i.fp, ptr %i.fj, align 8
  %i.fq = icmp eq i64 %i.fn, 0
  br i1 %i.fq, label %bb.bf, label %_ZN4cvc58internal9TrustNodeD2Ev.exit402, !prof !270

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit402 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #25
  unreachable

_ZN4cvc58internal9TrustNodeD2Ev.exit402:          ; preds = %bb.bd, %bb.be, %bb.bf
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.01155.01301, i64 24 ; 2 uses
  %.not1193 = icmp eq ptr %i.ft, %i.ed
  br i1 %.not1193, label %.loopexit1211, label %bb.ay

bb.bh:                                            ; preds = %bb.bb
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.bi:                                            ; preds = %bb.bc
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #22
  br label %bb.tj

.loopexit1211:                                    ; preds = %_ZN4cvc58internal9TrustNodeD2Ev.exit402, %bb.an, %bb.y
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 6 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !306 ; 3 uses
  %i.fy = load ptr, ptr %i.bz, align 8, !tbaa !308 ; 3 uses
  %58 = ptrtoint ptr %i.fx to i64
  %59 = ptrtoint ptr %i.fy to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 24
  %.not1304.not = icmp eq ptr %i.fx, %i.fy
  br i1 %.not1304.not, label %.critedge320.thread, label %.lr.ph1310

.lr.ph1310:                                       ; preds = %.loopexit1211
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph1310, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12
  %.02091306 = phi i64 [ 0, %.lr.ph1310 ], [ %i.adx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12 ] ; 3 uses
  %.011741305 = phi i64 [ 0, %.lr.ph1310 ], [ %.3.jt12, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.gg = load ptr, ptr %i.bz, align 8, !tbaa !308
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.02091306
  invoke void @_ZNK4cvc58internal9TrustNode7getNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.gh)
          to label %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit414 unwind label %bb.cc

_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit414: ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gi = load ptr, ptr %14, align 8, !tbaa !258  ; 5 uses
  store ptr %i.gi, ptr %16, align 8, !tbaa !258
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gk = lshr i64 %i.gj, 40
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = and i32 %i.gl, 1048575                  ; 3 uses
  %i.gn = icmp samesign ult i32 %i.gm, 1048574
  br i1 %i.gn, label %bb.bk, label %bb.bl, !prof !269

bb.bk:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit414
  %i.go = add nuw nsw i32 %i.gm, 1
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 40
  %i.gr = and i64 %i.gj, -1152920405095219201
  %i.gs = or i64 %i.gq, %i.gr
  store i64 %i.gs, ptr %i.gi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.bl:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsINS0_12NodeTemplateILb1EEEEERS1_RKT_.exit414
  %i.gt = icmp eq i32 %i.gm, 1048574
  br i1 %i.gt, label %bb.bm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !270

bb.bm:                                            ; preds = %bb.bl
  %i.gu = or i64 %i.gj, 1152920405095219200
  store i64 %i.gu, ptr %i.gi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.cd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.bl, %bb.bk, %bb.bm
  %i.gv = load ptr, ptr %12, align 16, !tbaa !309
  %i.gw = load ptr, ptr %11, align 16, !tbaa !309
  invoke void @_ZN4cvc58internal13preprocessing6passes14NonClausalSimp17processLearnedLitENS0_12NodeTemplateILb1EEEPNS0_6theory20TrustSubstitutionMapES8_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %16, ptr noundef %i.gv, ptr noundef %i.gw)
          to label %bb.bn unwind label %bb.ce

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gx = load ptr, ptr %14, align 8, !tbaa !258  ; 4 uses
  %i.gy = load ptr, ptr %15, align 8, !tbaa !258  ; 9 uses
  %.not.i416 = icmp eq ptr %i.gx, %i.gy
  br i1 %.not.i416, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.bo, !prof !270

bb.bo:                                            ; preds = %bb.bn
  %i.gz = load i64, ptr %i.gx, align 8            ; 3 uses
  %i.ha = and i64 %i.gz, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ha, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.bp, !prof !270

bb.bp:                                            ; preds = %bb.bo
  %i.hb = add i64 %i.gz, 1152920405095219200
  %i.hc = and i64 %i.hb, 1152920405095219200      ; 2 uses
  %i.hd = and i64 %i.gz, -1152920405095219201
  %i.he = or disjoint i64 %i.hc, %i.hd
  store i64 %i.he, ptr %i.gx, align 8
  %i.hf = icmp eq i64 %i.hc, 0
  br i1 %i.hf, label %bb.bq, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !270

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.cf

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr %i.gy, ptr %14, align 8, !tbaa !258
  %i.hg = load i64, ptr %i.gy, align 8            ; 3 uses
  %i.hh = lshr i64 %i.hg, 40
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 1048575                  ; 3 uses
  %i.hk = icmp samesign ult i32 %i.hj, 1048574
  br i1 %i.hk, label %bb.br, label %bb.bs, !prof !269

bb.br:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.hl = add nuw nsw i32 %i.hj, 1
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 40
  %i.ho = and i64 %i.hg, -1152920405095219201
  %i.hp = or i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.gy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.bs:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.hq = icmp eq i32 %i.hj, 1048574
  br i1 %i.hq, label %bb.bt, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !270

bb.bt:                                            ; preds = %bb.bs
  %i.hr = or i64 %i.hg, 1152920405095219200
  store i64 %i.hr, ptr %i.gy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.cf

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.bs, %bb.br, %bb.bn, %bb.bt
  %i.hs = load i64, ptr %i.gy, align 8            ; 3 uses
  %i.ht = and i64 %i.hs, 1152920405095219200
  %.not.i.i419 = icmp eq i64 %i.ht, 1152920405095219200
  br i1 %.not.i.i419, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.bu, !prof !270

bb.bu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.hu = add i64 %i.hs, 1152920405095219200
  %i.hv = and i64 %i.hu, 1152920405095219200      ; 2 uses
  %i.hw = and i64 %i.hs, -1152920405095219201
  %i.hx = or disjoint i64 %i.hv, %i.hw
  store i64 %i.hx, ptr %i.gy, align 8
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %bb.bv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !270

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.bu, %bb.bv
  %i.ib = load ptr, ptr %16, align 8, !tbaa !258  ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8            ; 3 uses
  %i.id = and i64 %i.ic, 1152920405095219200
  %.not.i.i421 = icmp eq i64 %i.id, 1152920405095219200
  br i1 %.not.i.i421, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit438, label %bb.bx, !prof !270

bb.bx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ie = add i64 %i.ic, 1152920405095219200
  %i.if = and i64 %i.ie, 1152920405095219200      ; 2 uses
  %i.ig = and i64 %i.ic, -1152920405095219201
  %i.ih = or disjoint i64 %i.if, %i.ig
  store i64 %i.ih, ptr %i.ib, align 8
  %i.ii = icmp eq i64 %i.if, 0
  br i1 %i.ii, label %bb.by, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit438, !prof !270

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit438 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #25
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit438: ; preds = %bb.by, %bb.bx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.il = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ca unwind label %bb.ci

bb.ca:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit438
  br i1 %i.il, label %bb.cb, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit480

bb.cb:                                            ; preds = %bb.ca
  %i.im = load ptr, ptr %14, align 8, !tbaa !258
  %i.in = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit unwind label %bb.ci

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit: ; preds = %bb.cb
  %i.io = load i8, ptr %i.in, align 1, !tbaa !311, !range !220, !noundef !204
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.iy, label %.critedge314

bb.cc:                                            ; preds = %bb.bj
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.cd:                                            ; preds = %bb.bm
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ce:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bt, %bb.bq
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn219 = phi { ptr, i32 } [ %i.it, %bb.cf ], [ %i.is, %bb.ce ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %.pn219.pn = phi { ptr, i32 } [ %.pn219, %bb.cg ], [ %i.ir, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal13preprocessing6passes14NonClausalSimp13applyInternalEPNS1_17AssertionPipelineE:bb.a
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %.body506

bb.ij:                                            ; preds = %bb.hq
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.body506

bb.ik:                                            ; preds = %bb.hr
  %i.abl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #22
  br label %.body506

bb.il:                                            ; preds = %bb.id
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #22
  br label %.body506

bb.im:                                            ; preds = %bb.hm
  %i.abn = load ptr, ptr %i.bz, align 8, !tbaa !308 ; 2 uses
  %i.abo = getelementptr inbounds nuw [24 x i8], ptr %i.abn, i64 %.02091306 ; 3 uses
  %i.abp = add i64 %.011741305, 1
  %i.abq = getelementptr inbounds nuw [24 x i8], ptr %i.abn, i64 %.011741305 ; 3 uses
  %i.abr = load i32, ptr %i.abo, align 8, !tbaa !265
  store i32 %i.abr, ptr %i.abq, align 8, !tbaa !265
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 2 uses
  %i.abu = load ptr, ptr %i.abs, align 8, !tbaa !258 ; 4 uses
  %i.abv = load ptr, ptr %i.abt, align 8, !tbaa !258
  %.not.i.i597 = icmp eq ptr %i.abu, %i.abv
  br i1 %.not.i.i597, label %_ZN4cvc58internal9TrustNodeaSERKS1_.exit, label %bb.in, !prof !270

bb.in:                                            ; preds = %bb.im
  %i.abw = load i64, ptr %i.abu, align 8          ; 3 uses
  %i.abx = and i64 %i.abw, 1152920405095219200
  %.not.i.i.i598 = icmp eq i64 %i.abx, 1152920405095219200
  br i1 %.not.i.i.i598, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, label %bb.io, !prof !270

bb.io:                                            ; preds = %bb.in
  %i.aby = add i64 %i.abw, 1152920405095219200
  %i.abz = and i64 %i.aby, 1152920405095219200    ; 2 uses
  %i.aca = and i64 %i.abw, -1152920405095219201
  %i.acb = or disjoint i64 %i.abz, %i.aca
  store i64 %i.acb, ptr %i.abu, align 8
  %i.acc = icmp eq i64 %i.abz, 0
  br i1 %i.acc, label %bb.ip, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, !prof !270

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i unwind label %bb.fp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i:  ; preds = %bb.ip, %bb.io, %bb.in
  %i.acd = load ptr, ptr %i.abt, align 8, !tbaa !258 ; 5 uses
  store ptr %i.acd, ptr %i.abs, align 8, !tbaa !258
  %i.ace = load i64, ptr %i.acd, align 8          ; 3 uses
  %i.acf = lshr i64 %i.ace, 40
  %i.acg = trunc nuw nsw i64 %i.acf to i32
  %i.ach = and i32 %i.acg, 1048575                ; 3 uses
  %i.aci = icmp samesign ult i32 %i.ach, 1048574
  br i1 %i.aci, label %bb.iq, label %bb.ir, !prof !269

bb.iq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.acj = add nuw nsw i32 %i.ach, 1
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = shl nuw nsw i64 %i.ack, 40
  %i.acm = and i64 %i.ace, -1152920405095219201
  %i.acn = or i64 %i.acl, %i.acm
  store i64 %i.acn, ptr %i.acd, align 8
  br label %_ZN4cvc58internal9TrustNodeaSERKS1_.exit

bb.ir:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.aco = icmp eq i32 %i.ach, 1048574
  br i1 %i.aco, label %bb.is, label %_ZN4cvc58internal9TrustNodeaSERKS1_.exit, !prof !270

bb.is:                                            ; preds = %bb.ir
  %i.acp = or i64 %i.ace, 1152920405095219200
  store i64 %i.acp, ptr %i.acd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acd)
          to label %_ZN4cvc58internal9TrustNodeaSERKS1_.exit unwind label %bb.fp

_ZN4cvc58internal9TrustNodeaSERKS1_.exit:         ; preds = %bb.is, %bb.im, %bb.iq, %bb.ir
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !271
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  store ptr %i.acr, ptr %i.acs, align 8, !tbaa !271
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit596

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit596: ; preds = %bb.ig, %bb.if, %bb.ie, %_ZN4cvc58internal9TrustNodeaSERKS1_.exit, %bb.hw
  %.1 = phi i64 [ %i.abp, %_ZN4cvc58internal9TrustNodeaSERKS1_.exit ], [ %.011741305, %bb.hw ], [ %.011741305, %bb.ie ], [ %.011741305, %bb.if ], [ %.011741305, %bb.ig ]
  %i.act = load ptr, ptr %i.d, align 8, !tbaa !240
  %i.acu = load ptr, ptr %14, align 8, !tbaa !258
  store ptr %i.acu, ptr %30, align 8, !tbaa !261
  invoke void @_ZN4cvc58internal13preprocessing24PreprocessingPassContext20notifyLearnedLiteralENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(168) %i.act, ptr noundef nonnull align 8 %30)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit504 unwind label %bb.it

bb.it:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit596
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %.body506

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit504: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit596, %_ZN4cvc58internal9TrustNodeD2Ev.exit489
  %.2 = phi i64 [ %.011741305, %_ZN4cvc58internal9TrustNodeD2Ev.exit489 ], [ %.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit596 ]
  %i.acw = load ptr, ptr %i.gb, align 8, !tbaa !258 ; 3 uses
  %i.acx = load i64, ptr %i.acw, align 8          ; 3 uses
  %i.acy = and i64 %i.acx, 1152920405095219200
  %.not.i.i.i601 = icmp eq i64 %i.acy, 1152920405095219200
  br i1 %.not.i.i.i601, label %_ZN4cvc58internal9TrustNodeD2Ev.exit602, label %bb.iu, !prof !270

bb.iu:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit504
  %i.acz = add i64 %i.acx, 1152920405095219200
  %i.ada = and i64 %i.acz, 1152920405095219200    ; 2 uses
  %i.adb = and i64 %i.acx, -1152920405095219201
  %i.adc = or disjoint i64 %i.ada, %i.adb
  store i64 %i.adc, ptr %i.acw, align 8
  %i.add = icmp eq i64 %i.ada, 0
  br i1 %i.add, label %bb.iv, label %_ZN4cvc58internal9TrustNodeD2Ev.exit602, !prof !270

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acw)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit602 unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ade = landingpad { ptr, i32 }
          catch ptr null
  %i.adf = extractvalue { ptr, i32 } %i.ade, 0
  call void @__clang_call_terminate(ptr %i.adf) #25
  unreachable

_ZN4cvc58internal9TrustNodeD2Ev.exit602:          ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit504, %bb.iu, %bb.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.iy

bb.ix:                                            ; preds = %bb.cs, %bb.cr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit462
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.adg = load ptr, ptr %14, align 8, !tbaa !258 ; 3 uses
  %i.adh = load i64, ptr %i.adg, align 8          ; 3 uses
  %i.adi = and i64 %i.adh, 1152920405095219200
  %.not.i.i603.jt1 = icmp eq i64 %i.adi, 1152920405095219200
  br i1 %.not.i.i603.jt1, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt1, label %bb.iz, !prof !270

bb.iy:                                            ; preds = %_ZN4cvc58internal9TrustNodeD2Ev.exit602, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit
  %.3.jt12 = phi i64 [ %.011741305, %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit ], [ %.2, %_ZN4cvc58internal9TrustNodeD2Ev.exit602 ] ; 4 uses
  %i.adj = load ptr, ptr %14, align 8, !tbaa !258 ; 3 uses
  %i.adk = load i64, ptr %i.adj, align 8          ; 3 uses
  %i.adl = and i64 %i.adk, 1152920405095219200
  %.not.i.i603.jt12 = icmp eq i64 %i.adl, 1152920405095219200
  br i1 %.not.i.i603.jt12, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12, label %bb.ja, !prof !270

bb.iz:                                            ; preds = %bb.ix
  %i.adm = add i64 %i.adh, 1152920405095219200
  %i.adn = and i64 %i.adm, 1152920405095219200    ; 2 uses
  %i.ado = and i64 %i.adh, -1152920405095219201
  %i.adp = or disjoint i64 %i.adn, %i.ado
  store i64 %i.adp, ptr %i.adg, align 8
  %i.adq = icmp eq i64 %i.adn, 0
  br i1 %i.adq, label %bb.jb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt1, !prof !270

bb.ja:                                            ; preds = %bb.iy
  %i.adr = add i64 %i.adk, 1152920405095219200
  %i.ads = and i64 %i.adr, 1152920405095219200    ; 2 uses
  %i.adt = and i64 %i.adk, -1152920405095219201
  %i.adu = or disjoint i64 %i.ads, %i.adt
  store i64 %i.adu, ptr %i.adj, align 8
  %i.adv = icmp eq i64 %i.ads, 0
  br i1 %i.adv, label %bb.jc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12, !prof !270

bb.jb:                                            ; preds = %bb.iz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt1 unwind label %.loopexit.split-lp1504

bb.jc:                                            ; preds = %bb.ja
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.adj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12 unwind label %.loopexit1503

.loopexit1503:                                    ; preds = %bb.jc
  %lpad.loopexit1505 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jd

.loopexit.split-lp1504:                           ; preds = %bb.jb
  %lpad.loopexit.split-lp1506 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jd

bb.jd:                                            ; preds = %.loopexit.split-lp1504, %.loopexit1503
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit1505, %.loopexit1503 ], [ %lpad.loopexit.split-lp1506, %.loopexit.split-lp1504 ]
  %i.adw = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.adw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt1: ; preds = %bb.iz, %bb.jb, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.loopexit1210

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12: ; preds = %bb.ja, %bb.jc, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.adx = add nuw i64 %.02091306, 1              ; 2 uses
  %exitcond1344.not = icmp eq i64 %i.adx, %61
  br i1 %exitcond1344.not, label %.critedge320, label %bb.bj, !llvm.loop !348

.body506:                                         ; preds = %bb.dx, %bb.fz, %bb.ga, %bb.gb, %bb.gp, %bb.gq, %bb.hh, %bb.it, %bb.fw, %bb.il, %bb.hl, %bb.fp, %.body.i, %bb.ii, %bb.ik, %bb.ij, %bb.ec, %bb.ds, %bb.dr
  %.pn238 = phi { ptr, i32 } [ %i.abk, %bb.ij ], [ %i.mn, %bb.dr ], [ %i.mo, %bb.ds ], [ %i.mu, %bb.dx ], [ %i.abl, %bb.ik ], [ %i.nb, %bb.ec ], [ %i.abj, %bb.ii ], [ %i.acv, %bb.it ], [ %.pn5.i.i, %.body.i ], [ %.pn222.pn.pn, %bb.fw ], [ %i.uc, %bb.gb ], [ %i.ub, %bb.ga ], [ %i.wm, %bb.gq ], [ %i.wl, %bb.gp ], [ %.pn228, %bb.fz ], [ %.pn226, %bb.hh ], [ %i.abm, %bb.il ], [ %i.zh, %bb.hl ], [ %i.tu, %bb.fp ]
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #22
  br label %bb.je

bb.je:                                            ; preds = %.body506, %bb.dq, %bb.dp
  %.pn238.pn = phi { ptr, i32 } [ %.pn238, %.body506 ], [ %i.mm, %bb.dq ], [ %i.ml, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.cy, %bb.ci, %bb.ch
  %.pn244.pn.pn = phi { ptr, i32 } [ %.pn244.pn, %bb.cy ], [ %.pn219.pn, %bb.ch ], [ %i.iu, %bb.ci ], [ %.pn238.pn, %bb.je ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.cc
  %.pn244.pn.pn.pn = phi { ptr, i32 } [ %.pn244.pn.pn, %bb.jf ], [ %i.iq, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.tj

.critedge320:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit605.jt12
  %.pre1350 = load ptr, ptr %i.fw, align 8, !tbaa !306 ; 2 uses
  %.pre1351 = load ptr, ptr %i.bz, align 8, !tbaa !308 ; 2 uses
  %.pre1356 = ptrtoint ptr %.pre1350 to i64
  %.pre1357 = ptrtoint ptr %.pre1351 to i64
  %.pre1359 = sub i64 %.pre1356, %.pre1357
  %.pre1361 = sdiv exact i64 %.pre1359, 24        ; 3 uses
  %i.ady = icmp ugt i64 %.3.jt12, %.pre1361
  br i1 %i.ady, label %bb.jh, label %.critedge320.thread

bb.jh:                                            ; preds = %.critedge320
  %i.adz = sub nuw i64 %.3.jt12, %.pre1361
  invoke void @_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 noundef %i.adz)
          to label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit unwind label %bb.ax

.critedge320.thread:                              ; preds = %.loopexit1211, %.critedge320
  %.01174.lcssa1495 = phi i64 [ %.3.jt12, %.critedge320 ], [ 0, %.loopexit1211 ] ; 2 uses
  %i.aea = phi ptr [ %.pre1350, %.critedge320 ], [ %i.fx, %.loopexit1211 ] ; 2 uses
  %i.aeb = phi ptr [ %.pre1351, %.critedge320 ], [ %i.fy, %.loopexit1211 ]
  %.pre-phi13621494 = phi i64 [ %.pre1361, %.critedge320 ], [ 0, %.loopexit1211 ]
  %i.aec = icmp ult i64 %.01174.lcssa1495, %.pre-phi13621494
  br i1 %i.aec, label %bb.ji, label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit

bb.ji:                                            ; preds = %.critedge320.thread
  %i.aed = getelementptr inbounds nuw [24 x i8], ptr %i.aeb, i64 %.01174.lcssa1495 ; 3 uses
  %.not.i.i621 = icmp eq ptr %i.aea, %i.aed
  br i1 %.not.i.i621, label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ji, %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aep, %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i ], [ %i.aed, %bb.ji ] ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !258 ; 3 uses
  %i.aeg = load i64, ptr %i.aef, align 8          ; 3 uses
  %i.aeh = and i64 %i.aeg, 1152920405095219200
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeh, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i, label %bb.jj, !prof !270

bb.jj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aei = add i64 %i.aeg, 1152920405095219200
  %i.aej = and i64 %i.aei, 1152920405095219200    ; 2 uses
  %i.aek = and i64 %i.aeg, -1152920405095219201
  %i.ael = or disjoint i64 %i.aej, %i.aek
  store i64 %i.ael, ptr %i.aef, align 8
  %i.aem = icmp eq i64 %i.aej, 0
  br i1 %i.aem, label %bb.jk, label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i, !prof !270

bb.jk:                                            ; preds = %bb.jj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aef)
          to label %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aen = landingpad { ptr, i32 }
          catch ptr null
  %i.aeo = extractvalue { ptr, i32 } %i.aen, 0
  call void @__clang_call_terminate(ptr %i.aeo) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i: ; preds = %bb.jk, %bb.jj, %.lr.ph.i.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aep, %i.aea
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !349

_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal9TrustNodeEEvPT_.exit.i.i.i.i
  store ptr %i.aed, ptr %i.fw, align 8, !tbaa !306
  br label %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal9TrustNodeES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ji, %.critedge320.thread, %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.aeq = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  store ptr %i.aeq, ptr %31, align 8, !tbaa !350
  %i.aer = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  store i64 1, ptr %i.aer, align 8, !tbaa !357
  %i.aes = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %31, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aes, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aet, align 8, !tbaa !358
  %i.aeu = getelementptr inbounds nuw i8, ptr %31, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aeu, i8 0, i64 16, i1 false)
  %i.aev = load ptr, ptr %i.j, align 8, !tbaa !254 ; 2 uses
  %i.aew = load ptr, ptr %i.i, align 8, !tbaa !257 ; 2 uses
  %.not2641311.not = icmp eq ptr %i.aev, %i.aew
  br i1 %.not2641311.not, label %.critedge324, label %.lr.ph1313

.lr.ph1313:                                       ; preds = %_ZNSt6vectorIN4cvc58internal9TrustNodeESaIS2_EE6resizeEm.exit
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.aex, %i.aey
  %i.afa = ashr exact i64 %i.aez, 3
  %i.afb = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.afe = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.afh = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.afk = getelementptr inbounds nuw i8, ptr %1, i64 184
  br label %bb.jn

bb.jm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit748
  %i.afl = add nuw i64 %.02021312, 1              ; 2 uses
  %exitcond1346.not = icmp eq i64 %i.afl, %i.afa
  br i1 %exitcond1346.not, label %.critedge324, label %bb.jn, !llvm.loop !359

bb.jn:                                            ; preds = %.lr.ph1313, %bb.jm
  %.02021312 = phi i64 [ 0, %.lr.ph1313 ], [ %i.afl, %bb.jm ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.afm = load ptr, ptr %i.i, align 8, !tbaa !257
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.afm, i64 %.02021312
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !258 ; 16 uses
  store ptr %i.afo, ptr %32, align 8, !tbaa !258
  %i.afp = load i64, ptr %i.afo, align 8          ; 3 uses
  %i.afq = lshr i64 %i.afp, 40
  %i.afr = trunc nuw nsw i64 %i.afq to i32
  %i.afs = and i32 %i.afr, 1048575                ; 3 uses
  %i.aft = icmp samesign ult i32 %i.afs, 1048574
  br i1 %i.aft, label %bb.jo, label %bb.jp, !prof !269

bb.jo:                                            ; preds = %bb.jn
  %i.afu = add nuw nsw i32 %i.afs, 1
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = shl nuw nsw i64 %i.afv, 40
  %i.afx = and i64 %i.afp, -1152920405095219201
  %i.afy = or i64 %i.afw, %i.afx
  store i64 %i.afy, ptr %i.afo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624

bb.jp:                                            ; preds = %bb.jn
  %i.afz = icmp eq i32 %i.afs, 1048574
  br i1 %i.afz, label %bb.jq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624, !prof !270

bb.jq:                                            ; preds = %bb.jp
  %i.aga = or i64 %i.afp, 1152920405095219200
  store i64 %i.aga, ptr %i.afo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624 unwind label %bb.kr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624: ; preds = %bb.jp, %bb.jo, %bb.jq
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.agb = load ptr, ptr %12, align 16, !tbaa !309
  store ptr %i.afo, ptr %34, align 8, !tbaa !258
  %i.agc = load i64, ptr %i.afo, align 8          ; 3 uses
  %i.agd = lshr i64 %i.agc, 40
  %i.age = trunc nuw nsw i64 %i.agd to i32
  %i.agf = and i32 %i.age, 1048575                ; 3 uses
  %i.agg = icmp samesign ult i32 %i.agf, 1048574
  br i1 %i.agg, label %bb.jr, label %bb.js, !prof !269

bb.jr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624
  %i.agh = add nuw nsw i32 %i.agf, 1
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = shl nuw nsw i64 %i.agi, 40
  %i.agk = and i64 %i.agc, -1152920405095219201
  %i.agl = or i64 %i.agj, %i.agk
  store i64 %i.agl, ptr %i.afo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit641

bb.js:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit624
  %i.agm = icmp eq i32 %i.agf, 1048574
  br i1 %i.agm, label %bb.jt, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit641, !prof !270

bb.jt:                                            ; preds = %bb.js
  %i.agn = or i64 %i.agc, 1152920405095219200
  store i64 %i.agn, ptr %i.afo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit641 unwind label %bb.ks

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit641: ; preds = %bb.js, %bb.jr, %bb.jt
  invoke void @_ZN4cvc58internal6theory20TrustSubstitutionMap12applyTrustedENS0_12NodeTemplateILb1EEEPNS1_8RewriterE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TrustNode") align 8 %33, ptr noundef nonnull align 8 dereferenceable(608) %i.agb, ptr noundef nonnull align 8 %34, ptr noundef %i.bf)
          to label %bb.ju unwind label %bb.kt

bb.ju:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit641
  %i.ago = load ptr, ptr %34, align 8, !tbaa !258 ; 3 uses
  %i.agp = load i64, ptr %i.ago, align 8          ; 3 uses
  %i.agq = and i64 %i.agp, 1152920405095219200
  %.not.i.i642 = icmp eq i64 %i.agq, 1152920405095219200
  br i1 %.not.i.i642, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit644, label %bb.jv, !prof !270
end_hunk_1
