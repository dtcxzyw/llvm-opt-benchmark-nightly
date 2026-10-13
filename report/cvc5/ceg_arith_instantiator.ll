Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ceg_arith_instantiator?download=true
inline.NumInlined: 2065
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers17ArithInstantiator8mkVtsSumERKNS0_12NodeTemplateILb1EEES7_S7_:bb.a
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.pn5.i48 = phi { ptr, i32 } [ %i.dh, %bb.be ], [ %i.dj, %bb.bg ], [ %i.di, %bb.bf ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !515
  br label %.body50

bb.bi:                                            ; preds = %bb.bd
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !515
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dk = load ptr, ptr %19, align 8, !tbaa !29
  %.not.i53 = icmp eq ptr %.pre, %i.dk
  br i1 %.not.i53, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58, label %bb.bj, !prof !16

bb.bj:                                            ; preds = %bb.bi
  %i.dl = load i64, ptr %.pre, align 8            ; 3 uses
  %i.dm = and i64 %i.dl, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.dm, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %bb.bj
  %i.dn = add i64 %i.dl, 1152920405095219200
  %i.do = and i64 %i.dn, 1152920405095219200      ; 2 uses
  %i.dp = and i64 %i.dl, -1152920405095219201
  %i.dq = or disjoint i64 %i.do, %i.dp
  store i64 %i.dq, ptr %.pre, align 8
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %bb.bl, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55, !prof !16

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55 unwind label %bb.cb

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55:  ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ds = load ptr, ptr %19, align 8, !tbaa !29   ; 8 uses
  store ptr %i.ds, ptr %0, align 8, !tbaa !29
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = lshr i64 %i.dt, 40
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 1048575                  ; 3 uses
  %i.dx = icmp samesign ult i32 %i.dw, 1048574
  br i1 %i.dx, label %bb.bm, label %bb.bn, !prof !15

bb.bm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55
  %i.dy = add nuw nsw i32 %i.dw, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 40
  %i.eb = and i64 %i.dt, -1152920405095219201
  %i.ec = or i64 %i.ea, %i.eb
  store i64 %i.ec, ptr %i.ds, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58

bb.bn:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i55
  %i.ed = icmp eq i32 %i.dw, 1048574
  br i1 %i.ed, label %bb.bo, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58, !prof !16

bb.bo:                                            ; preds = %bb.bn
  %i.ee = or i64 %i.dt, 1152920405095219200
  store i64 %i.ee, ptr %i.ds, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58 unwind label %bb.cb

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58: ; preds = %bb.bn, %bb.bm, %bb.bi, %bb.bo
  %i.ef = phi ptr [ %i.ds, %bb.bn ], [ %i.ds, %bb.bm ], [ %.pre, %bb.bi ], [ %i.ds, %bb.bo ]
  %i.eg = load ptr, ptr %19, align 8, !tbaa !29   ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8            ; 3 uses
  %i.ei = and i64 %i.eh, 1152920405095219200
  %.not.i.i59 = icmp eq i64 %i.ei, 1152920405095219200
  br i1 %.not.i.i59, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, label %bb.bp, !prof !16

bb.bp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58
  %i.ej = add i64 %i.eh, 1152920405095219200
  %i.ek = and i64 %i.ej, 1152920405095219200      ; 2 uses
  %i.el = and i64 %i.eh, -1152920405095219201
  %i.em = or disjoint i64 %i.ek, %i.el
  store i64 %i.em, ptr %i.eg, align 8
  %i.en = icmp eq i64 %i.ek, 0
  br i1 %i.en, label %bb.bq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, !prof !16

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit58, %bb.bp, %bb.bq
  %i.eq = load ptr, ptr %20, align 8, !tbaa !29   ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8            ; 3 uses
  %i.es = and i64 %i.er, 1152920405095219200
  %.not.i.i62 = icmp eq i64 %i.es, 1152920405095219200
  br i1 %.not.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, label %bb.bs, !prof !16

bb.bs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61
  %i.et = add i64 %i.er, 1152920405095219200
  %i.eu = and i64 %i.et, 1152920405095219200      ; 2 uses
  %i.ev = and i64 %i.er, -1152920405095219201
  %i.ew = or disjoint i64 %i.eu, %i.ev
  store i64 %i.ew, ptr %i.eq, align 8
  %i.ex = icmp eq i64 %i.eu, 0
  br i1 %i.ex, label %bb.bt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, !prof !16

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit61, %bb.bs, %bb.bt
  %i.fa = load ptr, ptr %21, align 8, !tbaa !29   ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8            ; 3 uses
  %i.fc = and i64 %i.fb, 1152920405095219200
  %.not.i.i65 = icmp eq i64 %i.fc, 1152920405095219200
  br i1 %.not.i.i65, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, label %bb.bv, !prof !16

bb.bv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64
  %i.fd = add i64 %i.fb, 1152920405095219200
  %i.fe = and i64 %i.fd, 1152920405095219200      ; 2 uses
  %i.ff = and i64 %i.fb, -1152920405095219201
  %i.fg = or disjoint i64 %i.fe, %i.ff
  store i64 %i.fg, ptr %i.fa, align 8
  %i.fh = icmp eq i64 %i.fe, 0
  br i1 %i.fh, label %bb.bw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, !prof !16

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.cd

bb.by:                                            ; preds = %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bz:                                            ; preds = %bb.au
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.ca:                                            ; preds = %bb.bb
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.cb:                                            ; preds = %bb.bo, %bb.bl
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #14
  br label %.body50

.body50:                                          ; preds = %bb.ca, %bb.bh, %bb.cb
  %.pn17 = phi { ptr, i32 } [ %i.fn, %bb.cb ], [ %i.fm, %bb.ca ], [ %.pn5.i48, %bb.bh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #14
  br label %.body45

.body45:                                          ; preds = %bb.bz, %bb.ba, %.body50
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %.body50 ], [ %i.fl, %bb.bz ], [ %.pn5.i43, %bb.ba ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #14
  br label %bb.cc

bb.cc:                                            ; preds = %.body45, %bb.by
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %.body45 ], [ %i.fk, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %.body

bb.cd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, %bb.as
  %i.fo = phi ptr [ %i.ef, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67 ], [ %.pre, %bb.as ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  store ptr %i.fo, ptr %23, align 8, !tbaa !44
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 %23)
          to label %bb.ce unwind label %bb.co

bb.ce:                                            ; preds = %bb.cd
  %i.fp = load ptr, ptr %22, align 8, !tbaa !29
  %.not.i68 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i68, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73, label %bb.cf, !prof !16

bb.cf:                                            ; preds = %bb.ce
  %i.fq = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.fr = and i64 %i.fq, 1152920405095219200
  %.not.i.i69 = icmp eq i64 %i.fr, 1152920405095219200
  br i1 %.not.i.i69, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70, label %bb.cg, !prof !16

bb.cg:                                            ; preds = %bb.cf
  %i.fs = add i64 %i.fq, 1152920405095219200
  %i.ft = and i64 %i.fs, 1152920405095219200      ; 2 uses
  %i.fu = and i64 %i.fq, -1152920405095219201
  %i.fv = or disjoint i64 %i.ft, %i.fu
  store i64 %i.fv, ptr %i.fo, align 8
  %i.fw = icmp eq i64 %i.ft, 0
  br i1 %i.fw, label %bb.ch, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70, !prof !16

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70 unwind label %bb.cp

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70:  ; preds = %bb.ch, %bb.cg, %bb.cf
  %24 = load ptr, ptr %22, align 8, !tbaa !29     ; 5 uses
  store ptr %24, ptr %0, align 8, !tbaa !29
  %i.fx = load i64, ptr %24, align 8              ; 3 uses
  %i.fy = lshr i64 %i.fx, 40
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 1048575                  ; 3 uses
  %i.gb = icmp samesign ult i32 %i.ga, 1048574
  br i1 %i.gb, label %bb.ci, label %bb.cj, !prof !15

bb.ci:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70
  %i.gc = add nuw nsw i32 %i.ga, 1
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 40
  %i.gf = and i64 %i.fx, -1152920405095219201
  %i.gg = or i64 %i.ge, %i.gf
  store i64 %i.gg, ptr %24, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73

bb.cj:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i70
  %i.gh = icmp eq i32 %i.ga, 1048574
  br i1 %i.gh, label %bb.ck, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73, !prof !16

bb.ck:                                            ; preds = %bb.cj
  %i.gi = or i64 %i.fx, 1152920405095219200
  store i64 %i.gi, ptr %24, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73 unwind label %bb.cp

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73: ; preds = %bb.cj, %bb.ci, %bb.ce, %bb.ck
  %i.gj = load ptr, ptr %22, align 8, !tbaa !29   ; 3 uses
  %i.gk = load i64, ptr %i.gj, align 8            ; 3 uses
  %i.gl = and i64 %i.gk, 1152920405095219200
  %.not.i.i74 = icmp eq i64 %i.gl, 1152920405095219200
  br i1 %.not.i.i74, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76, label %bb.cl, !prof !16

bb.cl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73
  %i.gm = add i64 %i.gk, 1152920405095219200
  %i.gn = and i64 %i.gm, 1152920405095219200      ; 2 uses
  %i.go = and i64 %i.gk, -1152920405095219201
  %i.gp = or disjoint i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gj, align 8
  %i.gq = icmp eq i64 %i.gn, 0
  br i1 %i.gq, label %bb.cm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76, !prof !16

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit76: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit73, %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  ret void

bb.co:                                            ; preds = %bb.cd
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck, %bb.ch
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #14
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn21 = phi { ptr, i32 } [ %i.gu, %bb.cp ], [ %i.gt, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %.body

.body:                                            ; preds = %bb.h, %bb.ar, %bb.cq, %bb.cc, %.body24
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %bb.cq ], [ %.pn17.pn.pn, %bb.cc ], [ %.pn.pn, %.body24 ], [ %i.u, %bb.h ], [ %i.co, %bb.ar ]
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
          to label %.noexc unwind label %.loopexit ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %.loopexit4, label %.lr.ph.i.i, !llvm.loop !516

.loopexit4:                                       ; preds = %.noexc, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %.loopexit4
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.loopexit4
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %lpad.phi
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
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %.loopexit

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.l = extractvalue { ptr, i32 } %lpad.phi, 0
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
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
end_hunk_0
