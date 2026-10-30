Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ceg_arith_instantiator?download=true
inline.NumInlined: 2065
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers17ArithInstantiator8mkVtsSumERKNS0_12NodeTemplateILb1EEES7_S7_:bb.a
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.noexc46
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !515
  br label %.body47

bb.aw:                                            ; preds = %bb.au
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dc = load ptr, ptr %19, align 8, !tbaa !29
  %.not.i50 = icmp eq ptr %.pre, %i.dc
  br i1 %.not.i50, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55, label %bb.ax, !prof !16

bb.ax:                                            ; preds = %bb.aw
  %i.dd = load i64, ptr %.pre, align 8            ; 3 uses
  %i.de = and i64 %i.dd, 1152920405095219200
  %.not.i.i51 = icmp eq i64 %i.de, 1152920405095219200
  br i1 %.not.i.i51, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.df = add i64 %i.dd, 1152920405095219200
  %i.dg = and i64 %i.df, 1152920405095219200      ; 2 uses
  %i.dh = and i64 %i.dd, -1152920405095219201
  %i.di = or disjoint i64 %i.dg, %i.dh
  store i64 %i.di, ptr %.pre, align 8
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %bb.az, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52, !prof !16

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52 unwind label %bb.bp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52:  ; preds = %bb.az, %bb.ay, %bb.ax
  %i.dk = load ptr, ptr %19, align 8, !tbaa !29   ; 8 uses
  store ptr %i.dk, ptr %0, align 8, !tbaa !29
  %i.dl = load i64, ptr %i.dk, align 8            ; 3 uses
  %i.dm = lshr i64 %i.dl, 40
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = and i32 %i.dn, 1048575                  ; 3 uses
  %i.dp = icmp samesign ult i32 %i.do, 1048574
  br i1 %i.dp, label %bb.ba, label %bb.bb, !prof !15

bb.ba:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52
  %i.dq = add nuw nsw i32 %i.do, 1
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 40
  %i.dt = and i64 %i.dl, -1152920405095219201
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.dk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55

bb.bb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i52
  %i.dv = icmp eq i32 %i.do, 1048574
  br i1 %i.dv, label %bb.bc, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55, !prof !16

bb.bc:                                            ; preds = %bb.bb
  %i.dw = or i64 %i.dl, 1152920405095219200
  store i64 %i.dw, ptr %i.dk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55 unwind label %bb.bp

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55: ; preds = %bb.bb, %bb.ba, %bb.aw, %bb.bc
  %i.dx = phi ptr [ %i.dk, %bb.bb ], [ %i.dk, %bb.ba ], [ %.pre, %bb.aw ], [ %i.dk, %bb.bc ]
  %i.dy = load ptr, ptr %19, align 8, !tbaa !29   ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8            ; 3 uses
  %i.ea = and i64 %i.dz, 1152920405095219200
  %.not.i.i56 = icmp eq i64 %i.ea, 1152920405095219200
  br i1 %.not.i.i56, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, label %bb.bd, !prof !16

bb.bd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55
  %i.eb = add i64 %i.dz, 1152920405095219200
  %i.ec = and i64 %i.eb, 1152920405095219200      ; 2 uses
  %i.ed = and i64 %i.dz, -1152920405095219201
  %i.ee = or disjoint i64 %i.ec, %i.ed
  store i64 %i.ee, ptr %i.dy, align 8
  %i.ef = icmp eq i64 %i.ec, 0
  br i1 %i.ef, label %bb.be, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, !prof !16

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit55, %bb.bd, %bb.be
  %i.ei = load ptr, ptr %20, align 8, !tbaa !29   ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8            ; 3 uses
  %i.ek = and i64 %i.ej, 1152920405095219200
  %.not.i.i59 = icmp eq i64 %i.ek, 1152920405095219200
  br i1 %.not.i.i59, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, label %bb.bg, !prof !16

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58
  %i.el = add i64 %i.ej, 1152920405095219200
  %i.em = and i64 %i.el, 1152920405095219200      ; 2 uses
  %i.en = and i64 %i.ej, -1152920405095219201
  %i.eo = or disjoint i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.ei, align 8
  %i.ep = icmp eq i64 %i.em, 0
  br i1 %i.ep, label %bb.bh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, !prof !16

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, %bb.bg, %bb.bh
  %i.es = load ptr, ptr %21, align 8, !tbaa !29   ; 3 uses
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = and i64 %i.et, 1152920405095219200
  %.not.i.i62 = icmp eq i64 %i.eu, 1152920405095219200
  br i1 %.not.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, label %bb.bj, !prof !16

bb.bj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61
  %i.ev = add i64 %i.et, 1152920405095219200
  %i.ew = and i64 %i.ev, 1152920405095219200      ; 2 uses
  %i.ex = and i64 %i.et, -1152920405095219201
  %i.ey = or disjoint i64 %i.ew, %i.ex
  store i64 %i.ey, ptr %i.es, align 8
  %i.ez = icmp eq i64 %i.ew, 0
  br i1 %i.ez, label %bb.bk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, !prof !16

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.br

bb.bm:                                            ; preds = %bb.an
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %bb.ao
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.bo:                                            ; preds = %bb.as
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body47

bb.bp:                                            ; preds = %bb.bc, %bb.az
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #14
  br label %.body47

.body47:                                          ; preds = %bb.bo, %bb.av, %bb.bp
  %.pn17 = phi { ptr, i32 } [ %i.ff, %bb.bp ], [ %i.fe, %bb.bo ], [ %i.db, %bb.av ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #14
  br label %.body43

.body43:                                          ; preds = %bb.bn, %bb.ar, %.body47
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body47 ], [ %i.fd, %bb.bn ], [ %i.cv, %bb.ar ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #14
  br label %bb.bq

bb.bq:                                            ; preds = %.body43, %bb.bm
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %.body43 ], [ %i.fc, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %.body

bb.br:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, %bb.am
  %i.fg = phi ptr [ %i.dx, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64 ], [ %.pre, %bb.am ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  store ptr %i.fg, ptr %23, align 8, !tbaa !44
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 %23)
          to label %bb.bs unwind label %bb.cc

bb.bs:                                            ; preds = %bb.br
  %i.fh = load ptr, ptr %22, align 8, !tbaa !29
  %.not.i65 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i65, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70, label %bb.bt, !prof !16

bb.bt:                                            ; preds = %bb.bs
  %i.fi = load i64, ptr %i.fg, align 8            ; 3 uses
  %i.fj = and i64 %i.fi, 1152920405095219200
  %.not.i.i66 = icmp eq i64 %i.fj, 1152920405095219200
  br i1 %.not.i.i66, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67, label %bb.bu, !prof !16

bb.bu:                                            ; preds = %bb.bt
  %i.fk = add i64 %i.fi, 1152920405095219200
  %i.fl = and i64 %i.fk, 1152920405095219200      ; 2 uses
  %i.fm = and i64 %i.fi, -1152920405095219201
  %i.fn = or disjoint i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fg, align 8
  %i.fo = icmp eq i64 %i.fl, 0
  br i1 %i.fo, label %bb.bv, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67, !prof !16

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67 unwind label %bb.cd

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67:  ; preds = %bb.bv, %bb.bu, %bb.bt
  %24 = load ptr, ptr %22, align 8, !tbaa !29     ; 5 uses
  store ptr %24, ptr %0, align 8, !tbaa !29
  %i.fp = load i64, ptr %24, align 8              ; 3 uses
  %i.fq = lshr i64 %i.fp, 40
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 1048575                  ; 3 uses
  %i.ft = icmp samesign ult i32 %i.fs, 1048574
  br i1 %i.ft, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67
  %i.fu = add nuw nsw i32 %i.fs, 1
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 40
  %i.fx = and i64 %i.fp, -1152920405095219201
  %i.fy = or i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %24, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70

bb.bx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i67
  %i.fz = icmp eq i32 %i.fs, 1048574
  br i1 %i.fz, label %bb.by, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70, !prof !16

bb.by:                                            ; preds = %bb.bx
  %i.ga = or i64 %i.fp, 1152920405095219200
  store i64 %i.ga, ptr %24, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70 unwind label %bb.cd

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70: ; preds = %bb.bx, %bb.bw, %bb.bs, %bb.by
  %i.gb = load ptr, ptr %22, align 8, !tbaa !29   ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 3 uses
  %i.gd = and i64 %i.gc, 1152920405095219200
  %.not.i.i71 = icmp eq i64 %i.gd, 1152920405095219200
  br i1 %.not.i.i71, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, label %bb.bz, !prof !16

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70
  %i.ge = add i64 %i.gc, 1152920405095219200
  %i.gf = and i64 %i.ge, 1152920405095219200      ; 2 uses
  %i.gg = and i64 %i.gc, -1152920405095219201
  %i.gh = or disjoint i64 %i.gf, %i.gg
  store i64 %i.gh, ptr %i.gb, align 8
  %i.gi = icmp eq i64 %i.gf, 0
  br i1 %i.gi, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, !prof !16

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit70, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  ret void

bb.cc:                                            ; preds = %bb.br
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by, %bb.bv
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #14
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn21 = phi { ptr, i32 } [ %i.gm, %bb.cd ], [ %i.gl, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %.body

.body:                                            ; preds = %bb.h, %bb.al, %bb.ce, %bb.bq, %.body24
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.ce ], [ %.pn17.pn.pn, %bb.bq ], [ %.pn.pn, %.body24 ], [ %i.u, %bb.h ], [ %i.ck, %bb.al ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn21.pn
}

declare void @_ZNK4cvc58internal7Integer3lcmERKS1_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::Integer") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate.291", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull %1, i32 noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !64     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not6.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not6.i.i, label %.loopexit4, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc
  %.sroa.0.07.i.i = phi ptr [ %i.f, %.noexc ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !29
  store ptr %i.d, ptr %4, align 8, !tbaa !44
  %i.e = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %.loopexit4, label %.lr.ph.i.i, !llvm.loop !516

.loopexit4:                                       ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.loopexit4
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %.loopexit4
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %lpad.loopexit.split-lp8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers17ArithInstantiatorD2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers17ArithInstantiatorE, i64 16), ptr %0, align 8, !tbaa !18
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.c
  %lpad.loopexit.split-lp158 = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %lpad.loopexit.split-lp158, 0
  tail call void @__clang_call_terminate(ptr %i.l) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %.ptr1, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.t = load ptr, ptr %.ptr1.1, align 8, !tbaa !32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i.i.1 = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i.1, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.1
  %.05.i.i.i.1 = phi ptr [ %i.ae, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.1 ], [ %i.t, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i.1, align 8, !tbaa !29 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
end_hunk_0
