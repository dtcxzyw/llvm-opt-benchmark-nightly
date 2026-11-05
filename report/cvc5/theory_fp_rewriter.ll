Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_fp_rewriter?download=true
inline.NumInlined: 1891
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory2fp16TheoryFpRewriter11postRewriteENS0_12NodeTemplateILb0EEE:_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit176
bb.o:                                             ; preds = %bb.n
  %i.bw = trunc nuw i8 %.065501 to i1
  %i.bx = load ptr, ptr %28, align 8, !tbaa !28   ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = and i64 %i.by, 1152920405095219200
  %.not.i.i196 = icmp eq i64 %i.bz, 1152920405095219200
  br i1 %.not.i.i196, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.p, !prof !17

bb.p:                                             ; preds = %bb.o
  %i.ca = add i64 %i.by, 1152920405095219200
  %i.cb = and i64 %i.ca, 1152920405095219200      ; 2 uses
  %i.cc = and i64 %i.by, -1152920405095219201
  %i.cd = or disjoint i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.bx, align 8
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %bb.q, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !17

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.o, %bb.p, %bb.q
  %i.ch = load ptr, ptr %29, align 8, !tbaa !15   ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 3 uses
  %i.cj = and i64 %i.ci, 1152920405095219200
  %.not.i.i197 = icmp eq i64 %i.cj, 1152920405095219200
  br i1 %.not.i.i197, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, label %bb.s, !prof !17

bb.s:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.ck = add i64 %i.ci, 1152920405095219200
  %i.cl = and i64 %i.ck, 1152920405095219200      ; 2 uses
  %i.cm = and i64 %i.ci, -1152920405095219201
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.ch, align 8
  %i.co = icmp eq i64 %i.cl, 0
  br i1 %i.co, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, !prof !17

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %not. = xor i1 %i.bv, true
  %i.cr = select i1 %not., i1 true, i1 %i.bw
  br i1 %i.cr, label %bb.ad, label %bb.bm

bb.v:                                             ; preds = %bb.f
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %i.cs, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.if

bb.y:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit195
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn112 = phi { ptr, i32 } [ %i.cw, %bb.aa ], [ %i.cv, %bb.z ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn112.pn = phi { ptr, i32 } [ %.pn112, %bb.ab ], [ %i.cu, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.if

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !15  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i32 %i.da, 1023
  switch i32 %i.db, label %.critedge161.loopexit [
    i32 176, label %bb.ae
    i32 177, label %bb.ae
    i32 202, label %bb.ae
    i32 206, label %bb.ae
    i32 208, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.dc = load ptr, ptr %.sroa.0437.0499, align 8, !tbaa !21, !noalias !703 ; 5 uses
  store ptr %i.dc, ptr %31, align 8, !tbaa !15, !alias.scope !703
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !703 ; 3 uses
  %i.de = lshr i64 %i.dd, 40
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1048575                  ; 3 uses
  %i.dh = icmp samesign ult i32 %i.dg, 1048574
  br i1 %i.dh, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %bb.ae
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = and i64 %i.dd, -1152920405095219201
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.dc, align 8, !noalias !703
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200

bb.ag:                                            ; preds = %bb.ae
  %i.dn = icmp eq i32 %i.dg, 1048574
  br i1 %i.dn, label %bb.ah, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200, !prof !17

bb.ah:                                            ; preds = %bb.ag
  %i.do = or i64 %i.dd, 1152920405095219200
  store i64 %i.do, ptr %i.dc, align 8, !noalias !703
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dc)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200 unwind label %bb.bb

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200: ; preds = %bb.ag, %bb.af, %bb.ah
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200
  %i.dp = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode11isBitVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.aj unwind label %bb.bd

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dp, label %69, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.dq = load ptr, ptr %.sroa.0437.0499, align 8, !tbaa !21, !noalias !704 ; 5 uses
  store ptr %i.dq, ptr %33, align 8, !tbaa !15, !alias.scope !704
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !704 ; 3 uses
  %i.ds = lshr i64 %i.dr, 40
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = and i32 %i.dt, 1048575                  ; 3 uses
  %i.dv = icmp samesign ult i32 %i.du, 1048574
  br i1 %i.dv, label %bb.al, label %bb.am, !prof !16

bb.al:                                            ; preds = %bb.ak
  %i.dw = add nuw nsw i32 %i.du, 1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 40
  %i.dz = and i64 %i.dr, -1152920405095219201
  %i.ea = or i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %i.dq, align 8, !noalias !704
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202

bb.am:                                            ; preds = %bb.ak
  %i.eb = icmp eq i32 %i.du, 1048574
  br i1 %i.eb, label %bb.an, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202, !prof !17

bb.an:                                            ; preds = %bb.am
  %i.ec = or i64 %i.dr, 1152920405095219200
  store i64 %i.ec, ptr %i.dq, align 8, !noalias !704
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202 unwind label %bb.be

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202: ; preds = %bb.am, %bb.al, %bb.an
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %33, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202
  %i.ed = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode6isRealEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %.critedge unwind label %bb.bg

.critedge:                                        ; preds = %bb.ao
  %66 = trunc nuw i8 %.063502 to i1
  %67 = xor i1 %66, true
  %68 = select i1 %i.ed, i1 %67, i1 false
  %i.ee = load ptr, ptr %32, align 8, !tbaa !28   ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = and i64 %i.ef, 1152920405095219200
  %.not.i.i203 = icmp eq i64 %i.eg, 1152920405095219200
  br i1 %.not.i.i203, label %_ZN4cvc58internal8TypeNodeD2Ev.exit204, label %bb.ap, !prof !17

69:                                               ; preds = %bb.aj
  %70 = trunc nuw i8 %.063502 to i1
  %71 = xor i1 %70, true
  br label %.critedge155

bb.ap:                                            ; preds = %.critedge
  %i.eh = add i64 %i.ef, 1152920405095219200
  %i.ei = and i64 %i.eh, 1152920405095219200      ; 2 uses
  %i.ej = and i64 %i.ef, -1152920405095219201
  %i.ek = or disjoint i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.ee, align 8
  %i.el = icmp eq i64 %i.ei, 0
  br i1 %i.el, label %bb.aq, label %_ZN4cvc58internal8TypeNodeD2Ev.exit204, !prof !17

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit204 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit204:           ; preds = %.critedge, %bb.ap, %bb.aq
  %i.eo = load ptr, ptr %33, align 8, !tbaa !15   ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 8            ; 3 uses
  %i.eq = and i64 %i.ep, 1152920405095219200
  %.not.i.i205 = icmp eq i64 %i.eq, 1152920405095219200
  br i1 %.not.i.i205, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206, label %bb.as, !prof !17

bb.as:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit204
  %i.er = add i64 %i.ep, 1152920405095219200
  %i.es = and i64 %i.er, 1152920405095219200      ; 2 uses
  %i.et = and i64 %i.ep, -1152920405095219201
  %i.eu = or disjoint i64 %i.es, %i.et
  store i64 %i.eu, ptr %i.eo, align 8
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206, !prof !17

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit204, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %.critedge155

.critedge155:                                     ; preds = %69, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206
  %.ph = phi i1 [ %68, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit206 ], [ %71, %69 ]
  %i.ey = load ptr, ptr %30, align 8, !tbaa !28   ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.fa = and i64 %i.ez, 1152920405095219200
  %.not.i.i207 = icmp eq i64 %i.fa, 1152920405095219200
  br i1 %.not.i.i207, label %_ZN4cvc58internal8TypeNodeD2Ev.exit208, label %bb.av, !prof !17

bb.av:                                            ; preds = %.critedge155
  %i.fb = add i64 %i.ez, 1152920405095219200
  %i.fc = and i64 %i.fb, 1152920405095219200      ; 2 uses
  %i.fd = and i64 %i.ez, -1152920405095219201
  %i.fe = or disjoint i64 %i.fc, %i.fd
  store i64 %i.fe, ptr %i.ey, align 8
  %i.ff = icmp eq i64 %i.fc, 0
  br i1 %i.ff, label %bb.aw, label %_ZN4cvc58internal8TypeNodeD2Ev.exit208, !prof !17

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit208 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #22
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit208:           ; preds = %.critedge155, %bb.av, %bb.aw
  %i.fi = load ptr, ptr %31, align 8, !tbaa !15   ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = and i64 %i.fj, 1152920405095219200
  %.not.i.i209 = icmp eq i64 %i.fk, 1152920405095219200
  br i1 %.not.i.i209, label %.critedge157, label %bb.ay, !prof !17

bb.ay:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit208
  %i.fl = add i64 %i.fj, 1152920405095219200
  %i.fm = and i64 %i.fl, 1152920405095219200      ; 2 uses
  %i.fn = and i64 %i.fj, -1152920405095219201
  %i.fo = or disjoint i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fi, align 8
  %i.fp = icmp eq i64 %i.fm, 0
  br i1 %i.fp, label %bb.az, label %.critedge157, !prof !17

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %.critedge157 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #22
  unreachable

.critedge157:                                     ; preds = %bb.az, %bb.ay, %_ZN4cvc58internal8TypeNodeD2Ev.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br i1 %.ph, label %bb.bm, label %.critedge157..critedge161.loopexit_crit_edge

.critedge157..critedge161.loopexit_crit_edge:     ; preds = %.critedge157
  %.pre508.pre = load ptr, ptr %i.o, align 8, !tbaa !15
  br label %.critedge161.loopexit

bb.bb:                                            ; preds = %bb.ah
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bc:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit200
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bd:                                            ; preds = %bb.ai
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.be:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bf:                                            ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit202
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ao
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.pn115 = phi { ptr, i32 } [ %i.fx, %bb.bg ], [ %i.fw, %bb.bf ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.be, %bb.bh
  %.pn115.pn = phi { ptr, i32 } [ %.pn115, %bb.bh ], [ %i.fv, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bd, %bb.bi
  %.pn115.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %bb.bi ], [ %i.fu, %bb.bd ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #21
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bc, %bb.bj
  %.pn115.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn, %bb.bj ], [ %i.ft, %bb.bc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #21
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bb, %bb.bk
  %.pn115.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn, %bb.bk ], [ %i.fs, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.if

bb.bm:                                            ; preds = %.critedge157, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.166 = phi i8 [ %.065501, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198 ], [ %.065501, %.critedge157 ] ; 2 uses
  %.164 = phi i8 [ %.063502, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %.063502, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit198 ], [ 1, %.critedge157 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0437.0499, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !15  ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = lshr i64 %i.gc, 32
  %i.ge = and i64 %i.gd, 67108863
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.ge
  %.not = icmp eq ptr %i.fy, %i.gf
  br i1 %.not, label %.critedge159.loopexit, label %.lr.ph, !llvm.loop !682

.critedge159.loopexit:                            ; preds = %bb.bm
  %i.gg = trunc nuw i8 %.166 to i1
  br label %.critedge159

.critedge159:                                     ; preds = %.critedge159.loopexit, %bb.b
  %i.gh = phi ptr [ %i.z, %bb.b ], [ %i.fz, %.critedge159.loopexit ] ; 17 uses
  %.065.lcssa = phi i1 [ false, %bb.b ], [ %i.gg, %.critedge159.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  store ptr %i.gh, ptr %34, align 8, !tbaa !15
  %i.gi = load i64, ptr %i.gh, align 8            ; 3 uses
  %i.gj = lshr i64 %i.gi, 40
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = and i32 %i.gk, 1048575                  ; 3 uses
  %i.gm = icmp samesign ult i32 %i.gl, 1048574
  br i1 %i.gm, label %bb.bn, label %bb.bo, !prof !16

bb.bn:                                            ; preds = %.critedge159
  %i.gn = add nuw nsw i32 %i.gl, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 40
  %i.gq = and i64 %i.gi, -1152920405095219201
  %i.gr = or i64 %i.gp, %i.gq
  store i64 %i.gr, ptr %i.gh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.bo:                                            ; preds = %.critedge159
  %i.gs = icmp eq i32 %i.gl, 1048574
  br i1 %i.gs, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !17

bb.bp:                                            ; preds = %bb.bo
  %i.gt = or i64 %i.gi, 1152920405095219200
  store i64 %i.gt, ptr %i.gh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.fo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.bo, %bb.bn, %bb.bp
  br i1 %.065.lcssa, label %bb.bq, label %bb.gv

bb.bq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = and i32 %i.gx, 1023
  switch i32 %i.gy, label %bb.br [
    i32 5, label %bb.hj
    i32 215, label %bb.hj
  ]

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !46
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_12RoundingModeEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %35, ptr noundef nonnull align 8 dereferenceable(3592) %i.gz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.bs unwind label %bb.fq

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  %i.ha = load ptr, ptr %i.m, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 15, ptr %i.b, align 4, !tbaa !46
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_12RoundingModeEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %36, ptr noundef nonnull align 8 dereferenceable(3592) %i.ha, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bt unwind label %bb.fr

end_hunk_0
