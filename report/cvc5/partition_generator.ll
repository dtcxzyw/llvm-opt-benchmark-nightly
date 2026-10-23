Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/partition_generator?download=true
inline.NumInlined: 1265
inline.NumDeleted: 560
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory18PartitionGenerator18makeCubePartitionsENS2_15LiteralListTypeEbb:bb.a
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = lshr i64 %i.cw, 40
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = and i32 %i.cy, 1048575                  ; 3 uses
  %i.da = icmp samesign ult i32 %i.cz, 1048574
  br i1 %i.da, label %bb.ai, label %bb.ag, !prof !292

bb.ag:                                            ; preds = %bb.af
  %i.db = icmp eq i32 %i.cz, 1048574
  br i1 %i.db, label %bb.ah, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us, !prof !284

bb.ah:                                            ; preds = %bb.ag
  %i.dc = or i64 %i.cw, 1152920405095219200
  store i64 %i.dc, ptr %i.cv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us unwind label %.split147.us

bb.ai:                                            ; preds = %bb.af
  %i.dd = add nuw nsw i32 %i.cz, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 40
  %i.dg = and i64 %i.cw, -1152920405095219201
  %i.dh = or i64 %i.df, %i.dg
  store i64 %i.dh, ptr %i.cv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us: ; preds = %bb.ai, %bb.ah, %bb.ag
  invoke void @_ZN4cvc58internal6theory18PartitionGenerator13emitPartitionENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %17)
          to label %bb.aj unwind label %.split150.us

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us
  %i.di = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.dj = and i64 %i.di, 1152920405095219200
  %.not.i.i84.us = icmp eq i64 %i.dj, 1152920405095219200
  br i1 %.not.i.i84.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us, label %bb.ak, !prof !284

bb.ak:                                            ; preds = %bb.aj
  %i.dk = add i64 %i.di, 1152920405095219200
  %i.dl = and i64 %i.dk, 1152920405095219200      ; 2 uses
  %i.dm = and i64 %i.di, -1152920405095219201
  %i.dn = or disjoint i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.cv, align 8
  %i.do = icmp eq i64 %i.dl, 0
  br i1 %i.do, label %bb.al, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us, !prof !284

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us unwind label %.split153.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dp = load ptr, ptr %16, align 8, !tbaa !283  ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.dr = and i64 %i.dq, 1152920405095219200
  %.not.i.i86.us = icmp eq i64 %i.dr, 1152920405095219200
  br i1 %.not.i.i86.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, label %bb.am, !prof !284

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us
  %i.ds = add i64 %i.dq, 1152920405095219200
  %i.dt = and i64 %i.ds, 1152920405095219200      ; 2 uses
  %i.du = and i64 %i.dq, -1152920405095219201
  %i.dv = or disjoint i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.dp, align 8
  %i.dw = icmp eq i64 %i.dt, 0
  br i1 %i.dw, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, !prof !284

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us unwind label %.split156.us

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us: ; preds = %bb.an, %bb.am, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit85.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.dx = load ptr, ptr %15, align 8, !tbaa !279  ; 3 uses
  %i.dy = load ptr, ptr %i.ca, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.us = icmp eq ptr %i.dx, %i.dy
  br i1 %.not4.i.i.i.us, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us, label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us
  %.05.i.i.i.us = phi ptr [ %i.eh, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us ], [ %i.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us ] ; 2 uses
  %i.dz = load ptr, ptr %.05.i.i.i.us, align 8, !tbaa !283 ; 3 uses
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = and i64 %i.ea, 1152920405095219200
  %.not.i.i.i.i.i.i.us = icmp eq i64 %i.eb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.us, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us, label %bb.ao, !prof !284

bb.ao:                                            ; preds = %.lr.ph.i.i.i.us
  %i.ec = add i64 %i.ea, 1152920405095219200
  %i.ed = and i64 %i.ec, 1152920405095219200      ; 2 uses
  %i.ee = and i64 %i.ea, -1152920405095219201
  %i.ef = or disjoint i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dz, align 8
  %i.eg = icmp eq i64 %i.ed, 0
  br i1 %i.eg, label %bb.ap, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us, !prof !284

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us unwind label %.split159.us

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us: ; preds = %bb.ap, %bb.ao, %.lr.ph.i.i.i.us
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.eh, %i.dy
  br i1 %.not.i.i.i.us, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us, label %.lr.ph.i.i.i.us, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.us
  %.pr.i.us = load ptr, ptr %15, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us
  %i.ei = phi ptr [ %.pr.i.us, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.us ], [ %i.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit87.us ] ; 3 uses
  %.not.i.i1.i.us = icmp eq ptr %i.ei, null
  br i1 %.not.i.i1.i.us, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.us, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us
  %i.ej = load ptr, ptr %i.cb, align 8, !tbaa !286
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.us

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.us: ; preds = %bb.aq, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.en = load ptr, ptr %14, align 8, !tbaa !283  ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8            ; 3 uses
  %i.ep = and i64 %i.eo, 1152920405095219200
  %.not.i.i92.us = icmp eq i64 %i.ep, 1152920405095219200
  br i1 %.not.i.i92.us, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us, label %bb.ar, !prof !284

bb.ar:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.us
  %i.eq = add i64 %i.eo, 1152920405095219200
  %i.er = and i64 %i.eq, 1152920405095219200      ; 2 uses
  %i.es = and i64 %i.eo, -1152920405095219201
  %i.et = or disjoint i64 %i.er, %i.es
  store i64 %i.et, ptr %i.en, align 8
  %i.eu = icmp eq i64 %i.er, 0
  br i1 %i.eu, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us, !prof !284

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us unwind label %.split162.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us: ; preds = %bb.as, %bb.ar, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0107.0133.us, i64 24 ; 2 uses
  %.not116.us = icmp eq ptr %i.ev, %i.by
  br i1 %.not116.us, label %._crit_edge136, label %.lr.ph135.split.us

.split138.us:                                     ; preds = %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.split141.us:                                     ; preds = %bb.ad, %bb.ab
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.split144.us:                                     ; preds = %bb.ae, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit81.us
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.split147.us:                                     ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.split150.us:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit83.us
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  br label %bb.br

.split153.us:                                     ; preds = %bb.al
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #24
  unreachable

.split156.us:                                     ; preds = %bb.an
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #24
  unreachable

.split159.us:                                     ; preds = %bb.ap
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #24
  unreachable

bb.at:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.u
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.lr.ph130:                                        ; preds = %bb.v, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72
  %.030128.in = phi i64 [ %.030128, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72 ], [ %i.bo, %bb.v ]
  %.031127 = phi i1 [ %.132.lcssa, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72 ], [ false, %bb.v ] ; 2 uses
  %.sroa.0111.0126 = phi ptr [ %i.gv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72 ], [ %i.bw, %bb.v ] ; 2 uses
  %.030128 = lshr i64 %.030128.in, 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.fi = load ptr, ptr %.sroa.0111.0126, align 8, !tbaa !283 ; 5 uses
  store ptr %i.fi, ptr %12, align 8, !tbaa !283
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = lshr i64 %i.fj, 40
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = and i32 %i.fl, 1048575                  ; 3 uses
  %i.fn = icmp samesign ult i32 %i.fm, 1048574
  br i1 %i.fn, label %bb.au, label %bb.av, !prof !292

bb.au:                                            ; preds = %.lr.ph130
  %i.fo = add nuw nsw i32 %i.fm, 1
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 40
  %i.fr = and i64 %i.fj, -1152920405095219201
  %i.fs = or i64 %i.fq, %i.fr
  store i64 %i.fs, ptr %i.fi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.av:                                            ; preds = %.lr.ph130
  %i.ft = icmp eq i32 %i.fm, 1048574
  br i1 %i.ft, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !284

bb.aw:                                            ; preds = %bb.av
  %i.fu = or i64 %i.fj, 1152920405095219200
  store i64 %i.fu, ptr %i.fi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.be

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.av, %bb.au, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.fv = load ptr, ptr %12, align 8, !tbaa !283, !noalias !423 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !424
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !310, !noalias !424
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.fx, i32 noundef 20)
          to label %.noexc67 unwind label %bb.bf

.noexc67:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  store ptr %i.fv, ptr %6, align 8, !tbaa !297, !noalias !424
  %i.fy = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.ax unwind label %.body.i, !noalias !424 ; 0 uses

bb.ax:                                            ; preds = %.noexc67
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit unwind label %.body.i

.body.i:                                          ; preds = %bb.ax, %.noexc67
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !424
  br label %.body68

_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit: ; preds = %bb.ax
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !423
  %i.ga = udiv i64 %i.bo, %.030128
  %.not164 = icmp ugt i64 %.030128, %i.bo
  br i1 %.not164, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bg, %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit
  %.132.lcssa = phi i1 [ %.031127, %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit ], [ %19, %bb.bg ]
  %i.gb = load ptr, ptr %13, align 8, !tbaa !283  ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 3 uses
  %i.gd = and i64 %i.gc, 1152920405095219200
  %.not.i.i70 = icmp eq i64 %i.gd, 1152920405095219200
  br i1 %.not.i.i70, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ay, !prof !284

bb.ay:                                            ; preds = %._crit_edge
  %i.ge = add i64 %i.gc, 1152920405095219200
  %i.gf = and i64 %i.ge, 1152920405095219200      ; 2 uses
  %i.gg = and i64 %i.gc, -1152920405095219201
  %i.gh = or disjoint i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !284

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %._crit_edge, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.gl = load ptr, ptr %12, align 8, !tbaa !283  ; 3 uses
  %i.gm = load i64, ptr %i.gl, align 8            ; 3 uses
  %i.gn = and i64 %i.gm, 1152920405095219200
  %.not.i.i71 = icmp eq i64 %i.gn, 1152920405095219200
  br i1 %.not.i.i71, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72, label %bb.bb, !prof !284

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.go = add i64 %i.gm, 1152920405095219200
  %i.gp = and i64 %i.go, 1152920405095219200      ; 2 uses
  %i.gq = and i64 %i.gm, -1152920405095219201
  %i.gr = or disjoint i64 %i.gp, %i.gq
  store i64 %i.gr, ptr %i.gl, align 8
  %i.gs = icmp eq i64 %i.gp, 0
  br i1 %i.gs, label %bb.bc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72, !prof !284

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit72: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0111.0126, i64 8 ; 2 uses
  %.not115 = icmp eq ptr %i.gv, %i.bx
  br i1 %.not115, label %._crit_edge131.loopexit, label %.lr.ph130

bb.be:                                            ; preds = %bb.aw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.lr.ph:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit, %bb.bg
  %.028123 = phi i64 [ %i.gz, %bb.bg ], [ 0, %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit ]
  %.029122 = phi i64 [ %i.gy, %bb.bg ], [ 0, %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit ] ; 2 uses
  %.132121 = phi i1 [ %19, %bb.bg ], [ %.031127, %_ZNK4cvc58internal12NodeTemplateILb1EE7notNodeEv.exit ] ; 2 uses
  %19 = xor i1 %.132121, true                     ; 2 uses
  %. = select i1 %.132121, ptr %13, ptr %12       ; 2 uses
  %i.gy = add i64 %.030128, %.029122              ; 2 uses
  br label %bb.bh

bb.bg:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.gz = add nuw nsw i64 %.028123, 1             ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.ga
  br i1 %i.ha, label %.lr.ph, label %._crit_edge, !llvm.loop !416

bb.bh:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.1119 = phi i64 [ %.029122, %.lr.ph ], [ %i.hw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.hb = load ptr, ptr %11, align 8, !tbaa !321
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.1119 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !280 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !286
  %.not.i = icmp eq ptr %i.he, %i.hg
  br i1 %.not.i, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hh = load ptr, ptr %., align 8, !tbaa !283   ; 5 uses
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !283
  %i.hi = load i64, ptr %i.hh, align 8            ; 3 uses
  %i.hj = lshr i64 %i.hi, 40
  %i.hk = trunc nuw nsw i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 1048575                  ; 3 uses
  %i.hm = icmp samesign ult i32 %i.hl, 1048574
  br i1 %i.hm, label %bb.bj, label %bb.bk, !prof !292

bb.bj:                                            ; preds = %bb.bi
  %i.hn = add nuw nsw i32 %i.hl, 1
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = shl nuw nsw i64 %i.ho, 40
  %i.hq = and i64 %i.hi, -1152920405095219201
  %i.hr = or i64 %i.hp, %i.hq
  store i64 %i.hr, ptr %i.hh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.hs = icmp eq i32 %i.hl, 1048574
  br i1 %i.hs, label %bb.bl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !284

bb.bl:                                            ; preds = %bb.bk
  %i.ht = or i64 %i.hi, 1152920405095219200
  store i64 %i.ht, ptr %i.hh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.bn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.hu = load ptr, ptr %i.hd, align 8, !tbaa !280
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hv, ptr %i.hd, align 8, !tbaa !280
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.bm:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr %i.he, ptr noundef nonnull align 8 dereferenceable(8) %.)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.bn

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.bm
  %i.hw = add i64 %.1119, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.hw, %i.gy
  br i1 %exitcond.not, label %bb.bg, label %bb.bh, !llvm.loop !417

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #21
  br label %.body68

.body68:                                          ; preds = %bb.bf, %.body.i, %bb.bn
  %.pn56 = phi { ptr, i32 } [ %i.hx, %bb.bn ], [ %i.gx, %bb.bf ], [ %i.fz, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.bo

bb.bo:                                            ; preds = %.body68, %bb.be
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %.body68 ], [ %i.gw, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cj

._crit_edge136:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93.us, %._crit_edge131
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 297
  store i8 1, ptr %i.hy, align 1, !tbaa !269, !noalias !425
  %i.hz = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(456) %1)
          to label %.noexc75 unwind label %bb.ci

.noexc75:                                         ; preds = %._crit_edge136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !425
  store i8 0, ptr %i.a, align 1, !tbaa !311, !noalias !425
  invoke void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.hz, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ch unwind label %bb.ci

.lr.ph135.split:                                  ; preds = %.lr.ph135, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93
  %.sroa.0107.0133 = phi ptr [ %i.ji, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit93 ], [ %i.bz, %.lr.ph135 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ia = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.bp unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %.lr.ph135.split
  invoke void @_ZN4cvc58internal11NodeManager5mkAndILb1EEENS0_12NodeTemplateILb1EEERKSt6vectorINS3_IXT_EEESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %14, ptr noundef nonnull align 8 dereferenceable(3592) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0133)
          to label %bb.bq unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.ib = load ptr, ptr %14, align 8, !tbaa !283  ; 8 uses
  store ptr %i.ib, ptr %18, align 8, !tbaa !283
  %i.ic = load i64, ptr %i.ib, align 8            ; 3 uses
  %i.id = lshr i64 %i.ic, 40
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = and i32 %i.ie, 1048575                  ; 3 uses
  %i.ig = icmp samesign ult i32 %i.if, 1048574
  br i1 %i.ig, label %bb.bv, label %bb.bw, !prof !292

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph135.split.us, %bb.w, %.lr.ph135.split, %bb.bp
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.br:                                            ; preds = %.split150.us, %.split147.us
  %.pn49 = phi { ptr, i32 } [ %i.fa, %.split150.us ], [ %i.ez, %.split147.us ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.split144.us
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.br ], [ %i.ey, %.split144.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.split141.us
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.bs ], [ %i.ex, %.split141.us ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.split138.us
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.bt ], [ %i.ew, %.split138.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cg

bb.bv:                                            ; preds = %bb.bq
  %i.ih = add nuw nsw i32 %i.if, 1
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 40
  %i.ik = and i64 %i.ic, -1152920405095219201
  %i.il = or i64 %i.ij, %i.ik
  store i64 %i.il, ptr %i.ib, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89

bb.bw:                                            ; preds = %bb.bq
  %i.im = icmp eq i32 %i.if, 1048574
  br i1 %i.im, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89, !prof !284

bb.bx:                                            ; preds = %bb.bw
  %i.in = or i64 %i.ic, 1152920405095219200
  store i64 %i.in, ptr %i.ib, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89 unwind label %bb.cc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89: ; preds = %bb.bw, %bb.bv, %bb.bx
  invoke void @_ZN4cvc58internal6theory18PartitionGenerator13emitPartitionENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(456) %1, ptr noundef nonnull align 8 %18)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89
  %i.io = load i64, ptr %i.ib, align 8            ; 3 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i90 = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i90, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit91, label %bb.bz, !prof !284

bb.bz:                                            ; preds = %bb.by
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %i.ib, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit91, !prof !284

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit91 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #24
  unreachable

bb.cc:                                            ; preds = %bb.bx
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit89
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %bb.cg

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit91: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.iz = load ptr, ptr %14, align 8, !tbaa !283  ; 3 uses
  %i.ja = load i64, ptr %i.iz, align 8            ; 3 uses
end_hunk_0
