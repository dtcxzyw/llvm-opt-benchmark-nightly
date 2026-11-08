Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ho_extension?download=true
inline.NumInlined: 3910
inline.NumDeleted: 1410
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal6theory2uf11HoExtension19checkExtensionalityEPNS1_11TheoryModelE:bb.a
  %i.ez = load ptr, ptr %i.r, align 8, !tbaa !314 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fk, %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i ], [ %i.ey, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.fa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !80 ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8            ; 3 uses
  %i.fc = and i64 %i.fb, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fc, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, label %bb.az, !prof !74

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.fd = add i64 %i.fb, 1152920405095219200
  %i.fe = and i64 %i.fd, 1152920405095219200      ; 2 uses
  %i.ff = and i64 %i.fb, -1152920405095219201
  %i.fg = or disjoint i64 %i.fe, %i.ff
  store i64 %i.fg, ptr %i.fa, align 8
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %bb.ba, label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i, !prof !74

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i: ; preds = %bb.ba, %bb.az, %.lr.ph.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fk, %i.ez
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal8TypeNodeEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %23, align 8, !tbaa !322
  br label %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.fl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ey, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i
  %i.fm = load ptr, ptr %i.s, align 8, !tbaa !315
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #24
  br label %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal8TypeNodeES2_EvT_S4_RSaIT0_E.exit.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit

.loopexit.split-lp747:                            ; preds = %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.ae
  %.pn257 = phi { ptr, i32 } [ %i.dh, %bb.am ], [ %i.ch, %bb.ae ], [ %lpad.loopexit.split-lp1412, %.loopexit.split-lp747.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #22
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp747, %bb.ad
  %.pn257.pn = phi { ptr, i32 } [ %.pn257, %.loopexit.split-lp747 ], [ %i.cg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bl

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit: ; preds = %bb.p, %bb.m, %bb.i, %bb.o, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit
  %.1109 = phi i1 [ true, %_ZNSt6vectorIN4cvc58internal8TypeNodeESaIS2_EED2Ev.exit ], [ %.0108, %bb.i ], [ %.0108, %bb.m ], [ %.0108, %bb.o ], [ %.0108, %bb.p ]
  %i.fq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4cvc58internal6theory2eq17EqClassesIteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.be unwind label %bb.ac     ; 0 uses

bb.be:                                            ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE4findERS9_.exit
  %i.fr = load ptr, ptr %22, align 8, !tbaa !80   ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 8            ; 3 uses
  %i.ft = and i64 %i.fs, 1152920405095219200
  %.not.i.i301 = icmp eq i64 %i.ft, 1152920405095219200
  br i1 %.not.i.i301, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, label %bb.bf, !prof !74

bb.bf:                                            ; preds = %bb.be
  %i.fu = add i64 %i.fs, 1152920405095219200
  %i.fv = and i64 %i.fu, 1152920405095219200      ; 2 uses
  %i.fw = and i64 %i.fs, -1152920405095219201
  %i.fx = or disjoint i64 %i.fv, %i.fw
  store i64 %i.fx, ptr %i.fr, align 8
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.bg, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, !prof !74

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit302 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit302:           ; preds = %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.gb = load ptr, ptr %21, align 8, !tbaa !29   ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 3 uses
  %i.gd = and i64 %i.gc, 1152920405095219200
  %.not.i.i303 = icmp eq i64 %i.gd, 1152920405095219200
  br i1 %.not.i.i303, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.bi, !prof !74

bb.bi:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit302
  %i.ge = add i64 %i.gc, 1152920405095219200
  %i.gf = and i64 %i.ge, 1152920405095219200      ; 2 uses
  %i.gg = and i64 %i.gc, -1152920405095219201
  %i.gh = or disjoint i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %bb.bj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !74

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit302, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.e, !llvm.loop !563

bb.bl:                                            ; preds = %bb.bd, %bb.ac
  %.pn260 = phi { ptr, i32 } [ %i.cf, %bb.ac ], [ %.pn257.pn, %bb.bd ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #22
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ab
  %.pn260.pn = phi { ptr, i32 } [ %.pn260, %bb.bl ], [ %i.ce, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.aa
  %.pn260.pn.pn = phi { ptr, i32 } [ %.pn260.pn, %bb.bm ], [ %i.cd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.loopexit.split-lp740.loopexit.split-lp

bb.bo:                                            ; preds = %bb.f
  %i.gl = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bp unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %bb.bo
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 392
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !266, !nonnull !267, !align !268
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 22
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !632, !range !272, !noundef !267
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.0108, label %bb.br, label %.loopexit744

bb.br:                                            ; preds = %bb.bq
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !323, !nonnull !267, !align !268
  invoke void @_ZN4cvc58internal6theory22TheoryInferenceManager15setModelUnsoundENS1_12IncompleteIdE(ptr noundef nonnull align 8 dereferenceable(240) %i.gs, i32 noundef 19)
          to label %.loopexit744 unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.bp
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %.not7341100 = icmp eq ptr %i.gt, %i.h
  br i1 %.not7341100, label %.loopexit744, label %.lr.ph1104

.lr.ph1104:                                       ; preds = %bb.bs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1104, %._crit_edge1098
  %.01751102 = phi i32 [ 0, %.lr.ph1104 ], [ %.1176.lcssa, %._crit_edge1098 ] ; 2 uses
  %.sroa.0680.01101 = phi ptr [ %i.gt, %.lr.ph1104 ], [ %i.avx, %._crit_edge1098 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0680.01101, i64 40 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0680.01101, i64 48 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !291
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !289
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 2 uses
  %i.hd = and i64 %i.hc, 34359738360
  %.not = icmp eq i64 %i.hd, 0
  br i1 %.not, label %._crit_edge1098, label %.lr.ph1097.preheader

.lr.ph1097.preheader:                             ; preds = %bb.bt
  %i.he = lshr exact i64 %i.hc, 3
  %wide.trip.count = and i64 %i.he, 4294967295
  br label %.lr.ph1097

.loopexit738:                                     ; preds = %bb.no, %.lr.ph1097
  %.2177.lcssa = phi i32 [ %.11761094, %.lr.ph1097 ], [ %.5180, %bb.no ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1
  %exitcond1175.not = icmp eq i64 %indvars.iv.next1173, %wide.trip.count
  br i1 %exitcond1175.not, label %._crit_edge1098, label %.lr.ph1097, !llvm.loop !564

.lr.ph1097:                                       ; preds = %.lr.ph1097.preheader, %.loopexit738
  %indvars.iv1172 = phi i64 [ 0, %.lr.ph1097.preheader ], [ %indvars.iv.next1173, %.loopexit738 ] ; 3 uses
  %indvars.iv.a = phi i64 [ 1, %.lr.ph1097.preheader ], [ %indvars.iv.next, %.loopexit738 ] ; 2 uses
  %.11761094 = phi i32 [ %.01751102, %.lr.ph1097.preheader ], [ %.2177.lcssa, %.loopexit738 ] ; 2 uses
  %indvars.iv.next1173 = add nuw nsw i64 %indvars.iv1172, 1 ; 3 uses
  %i.hf = load ptr, ptr %i.gx, align 8, !tbaa !291
  %i.hg = load ptr, ptr %i.gw, align 8, !tbaa !289
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = lshr exact i64 %i.hj, 3                 ; 2 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = and i64 %i.hk, 4294967295
  %i.hn = icmp samesign ult i64 %indvars.iv.next1173, %i.hm
  br i1 %i.hn, label %.lr.ph1092, label %.loopexit738

.lr.ph1092:                                       ; preds = %.lr.ph1097, %bb.no
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %bb.no ], [ %indvars.iv.a, %.lr.ph1097 ] ; 3 uses
  %.21771089 = phi i32 [ %.5180, %bb.no ], [ %.11761094, %.lr.ph1097 ] ; 3 uses
  %i.ho = load ptr, ptr %i.gu, align 8, !tbaa !370, !nonnull !267, !align !268 ; 2 uses
  %i.hp = load ptr, ptr %i.gw, align 8, !tbaa !289 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv1172
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !29
  store ptr %i.hr, ptr %26, align 8, !tbaa !82
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv1169
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !29
  store ptr %i.ht, ptr %27, align 8, !tbaa !82
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef zeroext i1 %i.hw(ptr noundef nonnull align 8 dereferenceable(160) %i.ho, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 %27)
          to label %bb.bu unwind label %.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.lr.ph1092
  br i1 %i.hx, label %bb.no, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.hy = load ptr, ptr %i.gw, align 8, !tbaa !289 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv1172
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv1169
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !29, !noalias !633 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !29, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22, !noalias !634
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !286, !noalias !634
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef %i.ie, i32 noundef 5)
          to label %.noexc304 unwind label %bb.co

.noexc304:                                        ; preds = %bb.bv
  store ptr %i.ib, ptr %15, align 8, !tbaa !82, !noalias !634
  %i.if = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull align 8 %15)
          to label %bb.bw unwind label %.body.i, !noalias !634

bb.bw:                                            ; preds = %.noexc304
  store ptr %i.id, ptr %16, align 8, !tbaa !82, !noalias !634
  %i.ig = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.if, ptr noundef nonnull align 8 %16)
          to label %bb.bx unwind label %.body.i, !noalias !634 ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %31, ptr noundef nonnull align 8 dereferenceable(124) %14)
          to label %bb.by unwind label %.body.i

.body.i:                                          ; preds = %bb.bx, %bb.bw, %.noexc304
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !634
  br label %.body

bb.by:                                            ; preds = %bb.bx
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22, !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !633
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.ii = load ptr, ptr %31, align 8, !tbaa !29, !noalias !635 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !noalias !635
  %i.il = and i64 %i.ik, 1023
  %.not.i305 = icmp eq i64 %i.il, 20
  br i1 %.not.i305, label %bb.bz, label %.noexc.i

bb.bz:                                            ; preds = %bb.by
  %i.im = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
          to label %.noexc307 unwind label %bb.cp

.noexc307:                                        ; preds = %bb.bz
  %i.in = icmp eq i32 %i.im, 2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ip = zext i1 %i.in to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !27, !noalias !635 ; 5 uses
  store ptr %i.ir, ptr %30, align 8, !tbaa !29, !alias.scope !635
  %i.is = load i64, ptr %i.ir, align 8, !noalias !635 ; 3 uses
  %i.it = lshr i64 %i.is, 40
  %i.iu = trunc nuw nsw i64 %i.it to i32
  %i.iv = and i32 %i.iu, 1048575                  ; 3 uses
  %i.iw = icmp samesign ult i32 %i.iv, 1048574
  br i1 %i.iw, label %bb.ca, label %bb.cb, !prof !75

bb.ca:                                            ; preds = %.noexc307
  %i.ix = add nuw nsw i32 %i.iv, 1
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 40
  %i.ja = and i64 %i.is, -1152920405095219201
  %i.jb = or i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.ir, align 8, !noalias !635
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit

bb.cb:                                            ; preds = %.noexc307
  %i.jc = icmp eq i32 %i.iv, 1048574
  br i1 %i.jc, label %bb.cc, label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit, !prof !74

bb.cc:                                            ; preds = %bb.cb
  %i.jd = or i64 %i.is, 1152920405095219200
  store i64 %i.jd, ptr %i.ir, align 8, !noalias !635
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit unwind label %bb.cp

.noexc.i:                                         ; preds = %bb.by
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !636
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !286, !noalias !636
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef %i.jf, i32 noundef 20)
          to label %.noexc309 unwind label %bb.cp

.noexc309:                                        ; preds = %.noexc.i
  store ptr %i.ii, ptr %13, align 8, !tbaa !82, !noalias !636
  %i.jg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %13)
          to label %bb.cd unwind label %.body.i306, !noalias !636 ; 0 uses

bb.cd:                                            ; preds = %.noexc309
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %bb.ce unwind label %.body.i306

.body.i306:                                       ; preds = %bb.cd, %.noexc309
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !636
  br label %.body310

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !635
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit

_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit: ; preds = %bb.ce, %bb.cb, %bb.ca, %bb.cc
  %i.ji = load ptr, ptr %30, align 8, !tbaa !29
  store ptr %i.ji, ptr %29, align 8, !tbaa !82
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %29)
          to label %bb.cf unwind label %bb.cq

bb.cf:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit
  %i.jj = load ptr, ptr %30, align 8, !tbaa !29   ; 3 uses
  %i.jk = load i64, ptr %i.jj, align 8            ; 3 uses
  %i.jl = and i64 %i.jk, 1152920405095219200
  %.not.i.i312 = icmp eq i64 %i.jl, 1152920405095219200
  br i1 %.not.i.i312, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313, label %bb.cg, !prof !74

bb.cg:                                            ; preds = %bb.cf
  %i.jm = add i64 %i.jk, 1152920405095219200
  %i.jn = and i64 %i.jm, 1152920405095219200      ; 2 uses
  %i.jo = and i64 %i.jk, -1152920405095219201
  %i.jp = or disjoint i64 %i.jn, %i.jo
  store i64 %i.jp, ptr %i.jj, align 8
  %i.jq = icmp eq i64 %i.jn, 0
  br i1 %i.jq, label %bb.ch, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313, !prof !74

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313: ; preds = %bb.cf, %bb.cg, %bb.ch
  %i.jt = load ptr, ptr %31, align 8, !tbaa !29   ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8            ; 3 uses
  %i.jv = and i64 %i.ju, 1152920405095219200
  %.not.i.i314 = icmp eq i64 %i.jv, 1152920405095219200
  br i1 %.not.i.i314, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315, label %bb.cj, !prof !74

bb.cj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313
  %i.jw = add i64 %i.ju, 1152920405095219200
  %i.jx = and i64 %i.jw, 1152920405095219200      ; 2 uses
  %i.jy = and i64 %i.ju, -1152920405095219201
  %i.jz = or disjoint i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.jt, align 8
  %i.ka = icmp eq i64 %i.jx, 0
  br i1 %i.ka, label %bb.ck, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315, !prof !74

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit313, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br i1 %.not1306, label %bb.nd, label %bb.cm

bb.cm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kd = load ptr, ptr %28, align 8, !tbaa !29
  store ptr %i.kd, ptr %33, align 8, !tbaa !82
  invoke void @_ZN4cvc58internal6theory2uf11HoExtension20getExtensionalityDeqENS0_12NodeTemplateILb0EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %32, ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 %33, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.cr

bb.cn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit367
  br i1 %i.ki, label %.preheader, label %bb.gm, !llvm.loop !573

.loopexit.split-lp740.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph1092, %bb.e, %bb.bo, %bb.br, %bb.d
  %lpad.loopexit.split-lp1417 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp740.loopexit.split-lp

bb.co:                                            ; preds = %bb.bv
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %.noexc.i, %bb.cc, %bb.bz
  %i.kf = landingpad { ptr, i32 }
          cleanup
end_hunk_0
