Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_sep?download=true
inline.NumInlined: 6880
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory3sep9TheorySep12getBaseLabelEv:bb.a
          to label %bb.dh unwind label %bb.ee

bb.dh:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit154
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 4 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !44 ; 4 uses
  %i.mg = load ptr, ptr %40, align 8, !tbaa !44
  %.not.i155 = icmp eq ptr %i.mf, %i.mg
  br i1 %.not.i155, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160, label %bb.di, !prof !194

bb.di:                                            ; preds = %bb.dh
  %i.mh = load i64, ptr %i.mf, align 8            ; 3 uses
  %i.mi = and i64 %i.mh, 1152920405095219200
  %.not.i.i156 = icmp eq i64 %i.mi, 1152920405095219200
  br i1 %.not.i.i156, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157, label %bb.dj, !prof !194

bb.dj:                                            ; preds = %bb.di
  %i.mj = add i64 %i.mh, 1152920405095219200
  %i.mk = and i64 %i.mj, 1152920405095219200      ; 2 uses
  %i.ml = and i64 %i.mh, -1152920405095219201
  %i.mm = or disjoint i64 %i.mk, %i.ml
  store i64 %i.mm, ptr %i.mf, align 8
  %i.mn = icmp eq i64 %i.mk, 0
  br i1 %i.mn, label %bb.dk, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157, !prof !194

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mf)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157 unwind label %bb.ef

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157: ; preds = %bb.dk, %bb.dj, %bb.di
  %i.mo = load ptr, ptr %40, align 8, !tbaa !44   ; 5 uses
  store ptr %i.mo, ptr %i.me, align 8, !tbaa !44
  %i.mp = load i64, ptr %i.mo, align 8            ; 3 uses
  %i.mq = lshr i64 %i.mp, 40
  %i.mr = trunc nuw nsw i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 1048575                  ; 3 uses
  %i.mt = icmp samesign ult i32 %i.ms, 1048574
  br i1 %i.mt, label %bb.dl, label %bb.dm, !prof !195

bb.dl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157
  %i.mu = add nuw nsw i32 %i.ms, 1
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 40
  %i.mx = and i64 %i.mp, -1152920405095219201
  %i.my = or i64 %i.mw, %i.mx
  store i64 %i.my, ptr %i.mo, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160

bb.dm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i157
  %i.mz = icmp eq i32 %i.ms, 1048574
  br i1 %i.mz, label %bb.dn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160, !prof !194

bb.dn:                                            ; preds = %bb.dm
  %i.na = or i64 %i.mp, 1152920405095219200
  store i64 %i.na, ptr %i.mo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160 unwind label %bb.ef

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160: ; preds = %bb.dm, %bb.dl, %bb.dh, %bb.dn
  %i.nb = load ptr, ptr %40, align 8, !tbaa !44   ; 3 uses
  %i.nc = load i64, ptr %i.nb, align 8            ; 3 uses
  %i.nd = and i64 %i.nc, 1152920405095219200
  %.not.i.i161 = icmp eq i64 %i.nd, 1152920405095219200
  br i1 %.not.i.i161, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163, label %bb.do, !prof !194

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160
  %i.ne = add i64 %i.nc, 1152920405095219200
  %i.nf = and i64 %i.ne, 1152920405095219200      ; 2 uses
  %i.ng = and i64 %i.nc, -1152920405095219201
  %i.nh = or disjoint i64 %i.nf, %i.ng
  store i64 %i.nh, ptr %i.nb, align 8
  %i.ni = icmp eq i64 %i.nf, 0
  br i1 %i.ni, label %bb.dp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163, !prof !194

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nj = landingpad { ptr, i32 }
          catch ptr null
  %i.nk = extractvalue { ptr, i32 } %i.nj, 0
  call void @__clang_call_terminate(ptr %i.nk) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit160, %bb.do, %bb.dp
  %i.nl = load i64, ptr %i.lq, align 8            ; 3 uses
  %i.nm = and i64 %i.nl, 1152920405095219200
  %.not.i.i164 = icmp eq i64 %i.nm, 1152920405095219200
  br i1 %.not.i.i164, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185, label %bb.dr, !prof !194

bb.dr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163
  %i.nn = add i64 %i.nl, 1152920405095219200
  %i.no = and i64 %i.nn, 1152920405095219200      ; 2 uses
  %i.np = and i64 %i.nl, -1152920405095219201
  %i.nq = or disjoint i64 %i.no, %i.np
  store i64 %i.nq, ptr %i.lq, align 8
  %i.nr = icmp eq i64 %i.no, 0
  br i1 %i.nr, label %bb.ds, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185, !prof !194

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lq)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #27
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185: ; preds = %bb.ds, %bb.dr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  %i.nu = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.nv = load ptr, ptr %i.me, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25, !noalias !682
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !418, !noalias !682
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef %i.nx, i32 noundef 259)
          to label %.noexc187 unwind label %bb.ei

.noexc187:                                        ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185
  store ptr %i.nu, ptr %21, align 8, !tbaa !407, !noalias !682
  %i.ny = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull align 8 %21)
          to label %bb.du unwind label %bb.dx, !noalias !682

bb.du:                                            ; preds = %.noexc187
  store ptr %i.nv, ptr %22, align 8, !tbaa !407, !noalias !682
  %i.nz = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ny, ptr noundef nonnull align 8 %22)
          to label %bb.dv unwind label %bb.dy, !noalias !682 ; 0 uses

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef nonnull align 8 dereferenceable(124) %20)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit205 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dx:                                            ; preds = %.noexc187
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.du
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %.pn5.i186 = phi { ptr, i32 } [ %i.oa, %bb.dw ], [ %i.oc, %bb.dy ], [ %i.ob, %bb.dx ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !682
  br label %.body188

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit205: ; preds = %bb.dv
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25, !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.oe = load ptr, ptr %42, align 8, !tbaa !44
  store ptr %i.oe, ptr %43, align 8, !tbaa !407
  %i.of = invoke noundef zeroext i1 @_ZN4cvc58internal6theory22TheoryInferenceManager5lemmaENS0_12NodeTemplateILb0EEENS1_11InferenceIdENS1_13LemmaPropertyE(ptr noundef nonnull align 8 dereferenceable(240) %i.od, ptr noundef nonnull align 8 %43, i32 noundef 242, i32 noundef 0)
          to label %bb.ea unwind label %bb.ej     ; 0 uses

bb.ea:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit205
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 1376 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 1384
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !201
  %i.oj = load ptr, ptr %i.og, align 8, !tbaa !200
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = ashr exact i64 %i.om, 3                 ; 5 uses
  %i.oo = icmp ugt i64 %i.on, 1
  br i1 %i.oo, label %bb.eb, label %bb.ic

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  %i.op = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 14 uses
  store i32 0, ptr %i.op, align 8, !tbaa !174
  %i.oq = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  store ptr null, ptr %i.oq, align 8, !tbaa !175
  %i.or = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %i.op, ptr %i.or, align 8, !tbaa !176
  %i.os = getelementptr inbounds nuw i8, ptr %44, i64 32
  store ptr %i.op, ptr %i.os, align 8, !tbaa !177
  %i.ot = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 3 uses
  store i64 0, ptr %i.ot, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !196
  br label %bb.ek

bb.ec:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.ou = add nsw i64 %i.on, -1
  store i64 0, ptr %i.b, align 8, !tbaa !196
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 5 uses
  %57 = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.fh

bb.ed:                                            ; preds = %bb.dg
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ee:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit154
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.dn, %bb.dk
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #25
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn53 = phi { ptr, i32 } [ %i.ox, %bb.ef ], [ %i.ow, %bb.ee ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #25
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ed
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %bb.eg ], [ %i.ov, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.je

bb.ei:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit185
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.ej:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit205
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.ek:                                            ; preds = %bb.eb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220
  %storemerge443 = phi i64 [ 0, %bb.eb ], [ %i.rc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  %i.pa = load ptr, ptr %i.og, align 8, !tbaa !200
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %storemerge443
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !44 ; 2 uses
  %i.pd = load ptr, ptr %i.me, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25, !noalias !683
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !418, !noalias !683
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef %i.pf, i32 noundef 260)
          to label %.noexc207 unwind label %bb.fe

.noexc207:                                        ; preds = %bb.ek
  store ptr %i.pc, ptr %18, align 8, !tbaa !407, !noalias !683
  %i.pg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 %18)
          to label %bb.el unwind label %bb.eo, !noalias !683

bb.el:                                            ; preds = %.noexc207
  store ptr %i.pd, ptr %19, align 8, !tbaa !407, !noalias !683
  %i.ph = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.pg, ptr noundef nonnull align 8 %19)
          to label %bb.em unwind label %bb.ep, !noalias !683 ; 0 uses

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %45, ptr noundef nonnull align 8 dereferenceable(124) %17)
          to label %bb.er unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.eo:                                            ; preds = %.noexc207
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ep:                                            ; preds = %bb.el
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %.pn5.i206 = phi { ptr, i32 } [ %i.pi, %bb.en ], [ %i.pk, %bb.ep ], [ %i.pj, %bb.eo ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !683
  br label %.body208

bb.er:                                            ; preds = %bb.em
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25, !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.pl = load ptr, ptr %i.oq, align 8, !tbaa !175 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.pl, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.er
  %i.pm = load i64, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.es, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.pl, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.es ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.es ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !196
  %i.pp = icmp ult i64 %i.po, %i.pm               ; 3 uses
  %.19.i.i.i.i = select i1 %i.pp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.pp, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, label %bb.es, !llvm.loop !660

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.es
  %i.pq = icmp eq ptr %.19.i.i.i.i, %i.op
  br i1 %i.pq, label %.critedge.i, label %bb.et

bb.et:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.pp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.pr = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !196
  %i.ps = icmp ult i64 %i.pm, %i.pr
  br i1 %i.ps, label %.critedge.i, label %bb.eu

.critedge.i:                                      ; preds = %bb.et, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i, %bb.er
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.et ], [ %.19.i.i.i.i, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i ], [ %i.op, %bb.er ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr %i.a, ptr %15, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.pt = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc211 unwind label %bb.ff

.noexc211:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc211, %bb.et
  %.sroa.06.0.i = phi ptr [ %i.pt, %.noexc211 ], [ %.19.i.i.i.i, %bb.et ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !44 ; 4 uses
  %i.pw = load ptr, ptr %45, align 8, !tbaa !44
  %.not.i212 = icmp eq ptr %i.pv, %i.pw
  br i1 %.not.i212, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217, label %bb.ev, !prof !194

bb.ev:                                            ; preds = %bb.eu
  %i.px = load i64, ptr %i.pv, align 8            ; 3 uses
  %i.py = and i64 %i.px, 1152920405095219200
  %.not.i.i213 = icmp eq i64 %i.py, 1152920405095219200
  br i1 %.not.i.i213, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, label %bb.ew, !prof !194

bb.ew:                                            ; preds = %bb.ev
  %i.pz = add i64 %i.px, 1152920405095219200
  %i.qa = and i64 %i.pz, 1152920405095219200      ; 2 uses
  %i.qb = and i64 %i.px, -1152920405095219201
  %i.qc = or disjoint i64 %i.qa, %i.qb
  store i64 %i.qc, ptr %i.pv, align 8
  %i.qd = icmp eq i64 %i.qa, 0
  br i1 %i.qd, label %bb.ex, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214, !prof !194

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pv)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214 unwind label %bb.ff

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214: ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.qe = load ptr, ptr %45, align 8, !tbaa !44   ; 5 uses
  store ptr %i.qe, ptr %i.pu, align 8, !tbaa !44
  %i.qf = load i64, ptr %i.qe, align 8            ; 3 uses
  %i.qg = lshr i64 %i.qf, 40
  %i.qh = trunc nuw nsw i64 %i.qg to i32
  %i.qi = and i32 %i.qh, 1048575                  ; 3 uses
  %i.qj = icmp samesign ult i32 %i.qi, 1048574
  br i1 %i.qj, label %bb.ey, label %bb.ez, !prof !195

bb.ey:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.qk = add nuw nsw i32 %i.qi, 1
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = shl nuw nsw i64 %i.ql, 40
  %i.qn = and i64 %i.qf, -1152920405095219201
  %i.qo = or i64 %i.qm, %i.qn
  store i64 %i.qo, ptr %i.qe, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217

bb.ez:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i214
  %i.qp = icmp eq i32 %i.qi, 1048574
  br i1 %i.qp, label %bb.fa, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217, !prof !194

bb.fa:                                            ; preds = %bb.ez
  %i.qq = or i64 %i.qf, 1152920405095219200
  store i64 %i.qq, ptr %i.qe, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qe)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217 unwind label %bb.ff

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217: ; preds = %bb.ez, %bb.ey, %bb.eu, %bb.fa
  %i.qr = load ptr, ptr %45, align 8, !tbaa !44   ; 3 uses
  %i.qs = load i64, ptr %i.qr, align 8            ; 3 uses
  %i.qt = and i64 %i.qs, 1152920405095219200
  %.not.i.i218 = icmp eq i64 %i.qt, 1152920405095219200
  br i1 %.not.i.i218, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220, label %bb.fb, !prof !194

bb.fb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217
  %i.qu = add i64 %i.qs, 1152920405095219200
  %i.qv = and i64 %i.qu, 1152920405095219200      ; 2 uses
  %i.qw = and i64 %i.qs, -1152920405095219201
  %i.qx = or disjoint i64 %i.qv, %i.qw
  store i64 %i.qx, ptr %i.qr, align 8
  %i.qy = icmp eq i64 %i.qv, 0
  br i1 %i.qy, label %bb.fc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220, !prof !194

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.qz = landingpad { ptr, i32 }
          catch ptr null
  %i.ra = extractvalue { ptr, i32 } %i.qz, 0
  call void @__clang_call_terminate(ptr %i.ra) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit220: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit217, %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  %i.rb = load i64, ptr %i.a, align 8, !tbaa !196
  %i.rc = add i64 %i.rb, 1                        ; 3 uses
  store i64 %i.rc, ptr %i.a, align 8, !tbaa !196
  %i.rd = icmp ult i64 %i.rc, %i.on
  br i1 %i.rd, label %bb.ek, label %bb.ec, !llvm.loop !661

bb.fe:                                            ; preds = %bb.ek
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body208

bb.ff:                                            ; preds = %bb.fa, %bb.ex, %.critedge.i
  %i.rf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #25
  br label %.body208

.body208:                                         ; preds = %bb.fe, %bb.eq, %bb.ff
  %.pn72 = phi { ptr, i32 } [ %i.rf, %bb.ff ], [ %i.re, %bb.fe ], [ %.pn5.i206, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ib

._crit_edge452:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.rg = load ptr, ptr %i.oq, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef %i.rg)
          to label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit unwind label %bb.fg

bb.fg:                                            ; preds = %._crit_edge452
  %i.rh = landingpad { ptr, i32 }
          catch ptr null
  %i.ri = extractvalue { ptr, i32 } %i.rh, 0
  call void @__clang_call_terminate(ptr %i.ri) #27
  unreachable

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit: ; preds = %._crit_edge452
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  br label %bb.ic

bb.fh:                                            ; preds = %bb.ec, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %storemerge62.in444 = phi i64 [ 0, %bb.ec ], [ %i.yq, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %storemerge62445 = add nuw i64 %storemerge62.in444, 1 ; 3 uses
  store i64 %storemerge62445, ptr %i.c, align 8, !tbaa !196
  %i.rj = icmp ult i64 %storemerge62445, %i.on
  br i1 %i.rj, label %.lr.ph448, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.thread: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

._crit_edge449:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit251
  %.pre457.a = load ptr, ptr %46, align 8, !tbaa !206 ; 2 uses
  %.pre458.a = load ptr, ptr %56, align 8, !tbaa !206 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.rk = icmp eq ptr %.pre457.a, %.pre458.a
  br i1 %i.rk, label %bb.hv, label %bb.gk

.lr.ph448:                                        ; preds = %bb.fh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit251
  %storemerge62446 = phi i64 [ %storemerge62, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit251 ], [ %storemerge62445, %bb.fh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.rl = load ptr, ptr %i.oq, align 8, !tbaa !175 ; 2 uses
  %.not10.i.i.i.i221 = icmp eq ptr %i.rl, null
  br i1 %.not10.i.i.i.i221, label %.critedge.i232, label %.lr.ph.i.i.i.i222

.lr.ph.i.i.i.i222:                                ; preds = %.lr.ph448, %.lr.ph.i.i.i.i222
  %.012.i.i.i.i223 = phi ptr [ %.1.i.i.i.i228, %.lr.ph.i.i.i.i222 ], [ %i.rl, %.lr.ph448 ] ; 4 uses
  %.0811.i.i.i.i224 = phi ptr [ %.19.i.i.i.i225, %.lr.ph.i.i.i.i222 ], [ %i.op, %.lr.ph448 ] ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i223, i64 32
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !196
  %i.ro = icmp ult i64 %i.rn, %storemerge62446    ; 3 uses
  %.19.i.i.i.i225 = select i1 %i.ro, ptr %.0811.i.i.i.i224, ptr %.012.i.i.i.i223 ; 5 uses
  %.1.in.v.i.i.i.i226 = select i1 %i.ro, i64 24, i64 16
  %.1.in.i.i.i.i227 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i223, i64 %.1.in.v.i.i.i.i226
  %.1.i.i.i.i228 = load ptr, ptr %.1.in.i.i.i.i227, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %.1.i.i.i.i228, null
  br i1 %.not.i.i.i.i229, label %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i230, label %.lr.ph.i.i.i.i222, !llvm.loop !660

_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i230: ; preds = %.lr.ph.i.i.i.i222
  %i.rp = icmp eq ptr %.19.i.i.i.i225, %i.op
  br i1 %i.rp, label %.critedge.i232, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i230
  %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, ptr %.0811.i.i.i.i224, ptr %.012.i.i.i.i223
  %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.rq = load i64, ptr %.19.i.i.i.i225.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !196
  %i.rr = icmp ult i64 %storemerge62446, %i.rq
  br i1 %i.rr, label %.critedge.i232, label %bb.fr

.critedge.i232:                                   ; preds = %bb.fi, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i230, %.lr.ph448
  %.08.lcssa.i.i.i11.i233 = phi ptr [ %.19.i.i.i.i225, %bb.fi ], [ %.19.i.i.i.i225, %_ZNSt3mapImN4cvc58internal12NodeTemplateILb1EEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit.i230 ], [ %i.op, %.lr.ph448 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.c, ptr %13, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %44, ptr %2, align 8, !tbaa !425
  %i.rs = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc373 unwind label %bb.gi ; 7 uses

.noexc373:                                        ; preds = %.critedge.i232
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull %i.rs, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc374 unwind label %bb.gi

.noexc374:                                        ; preds = %.noexc373
  store ptr %i.rs, ptr %55, align 8, !tbaa !428
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32 ; 2 uses
  %i.ru = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr %.08.lcssa.i.i.i11.i233, ptr noundef nonnull align 8 dereferenceable(8) %i.rt)
          to label %bb.fj unwind label %bb.fm     ; 2 uses

bb.fj:                                            ; preds = %.noexc374
  %i.rv = extractvalue { ptr, ptr } %i.ru, 0      ; 2 uses
  %i.rw = extractvalue { ptr, ptr } %i.ru, 1      ; 4 uses
  %.not.i371 = icmp eq ptr %i.rw, null
  br i1 %.not.i371, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i.i372 = icmp ne ptr %i.rv, null
  %i.rx = icmp eq ptr %i.rw, %i.op
  %or.cond.i.i.i = or i1 %.not.i.i.i372, %i.rx
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.rz = load i64, ptr %i.rt, align 8, !tbaa !196
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !196
  %i.sb = icmp ult i64 %i.rz, %i.sa
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fl, %bb.fk
  %i.sc = phi i1 [ %i.sb, %bb.fl ], [ true, %bb.fk ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.sc, ptr noundef nonnull %i.rs, ptr noundef nonnull %i.rw, ptr noundef nonnull align 8 dereferenceable(32) %i.op) #25
  %i.sd = load i64, ptr %i.ot, align 8, !tbaa !178
  %i.se = add i64 %i.sd, 1
  store i64 %i.se, ptr %i.ot, align 8, !tbaa !178
  br label %.noexc234

bb.fm:                                            ; preds = %.noexc374
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body243

bb.fn:                                            ; preds = %bb.fj
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rs, i64 40
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !44 ; 3 uses
  %i.si = load i64, ptr %i.sh, align 8            ; 3 uses
  %i.sj = and i64 %i.si, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.sj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.fo, !prof !194

bb.fo:                                            ; preds = %bb.fn
  %i.sk = add i64 %i.si, 1152920405095219200
  %i.sl = and i64 %i.sk, 1152920405095219200      ; 2 uses
  %i.sm = and i64 %i.si, -1152920405095219201
  %i.sn = or disjoint i64 %i.sl, %i.sm
  store i64 %i.sn, ptr %i.sh, align 8
  %i.so = icmp eq i64 %i.sl, 0
  br i1 %i.so, label %bb.fp, label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, !prof !194

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sh)
          to label %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i unwind label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.sp = landingpad { ptr, i32 }
          catch ptr null
  %i.sq = extractvalue { ptr, i32 } %i.sp, 0
  call void @__clang_call_terminate(ptr %i.sq) #27
  unreachable

_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.fp, %bb.fo, %bb.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef 48) #24
  br label %.noexc234

.noexc234:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.rs, %.thread.i ], [ %i.rv, %_ZNSt8_Rb_treeImSt4pairIKmN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.fr

bb.fr:                                            ; preds = %.noexc234, %bb.fi
  %.sroa.06.0.i231 = phi ptr [ %.sroa.0.010.i, %.noexc234 ], [ %.19.i.i.i.i225, %bb.fi ]
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i231, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !44, !noalias !684 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load i64, ptr %i.st, align 8, !noalias !684
  %i.sv = and i64 %i.su, 1023
  %.not.i236 = icmp eq i64 %i.sv, 20
  br i1 %.not.i236, label %bb.fs, label %.noexc.i237

bb.fs:                                            ; preds = %bb.fr
  %i.sw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
          to label %.noexc240 unwind label %bb.gi

.noexc240:                                        ; preds = %bb.fs
  %i.sx = icmp eq i32 %i.sw, 2
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.sz = zext i1 %i.sx to i64
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.sz
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !42, !noalias !684 ; 5 uses
  store ptr %i.tb, ptr %47, align 8, !tbaa !44, !alias.scope !684
  %i.tc = load i64, ptr %i.tb, align 8, !noalias !684 ; 3 uses
  %i.td = lshr i64 %i.tc, 40
  %i.te = trunc nuw nsw i64 %i.td to i32
  %i.tf = and i32 %i.te, 1048575                  ; 3 uses
  %i.tg = icmp samesign ult i32 %i.tf, 1048574
  br i1 %i.tg, label %bb.ft, label %bb.fu, !prof !195

bb.ft:                                            ; preds = %.noexc240
  %i.th = add nuw nsw i32 %i.tf, 1
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, 40
  %i.tk = and i64 %i.tc, -1152920405095219201
  %i.tl = or i64 %i.tj, %i.tk
  store i64 %i.tl, ptr %i.tb, align 8, !noalias !684
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit245

bb.fu:                                            ; preds = %.noexc240
  %i.tm = icmp eq i32 %i.tf, 1048574
  br i1 %i.tm, label %bb.fv, label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit245, !prof !194

bb.fv:                                            ; preds = %bb.fu
  %i.tn = or i64 %i.tc, 1152920405095219200
  store i64 %i.tn, ptr %i.tb, align 8, !noalias !684
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv.exit245 unwind label %bb.gi

.noexc.i237:                                      ; preds = %bb.fr
  %i.to = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !684
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !685
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !418, !noalias !685
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %11, ptr noundef %i.tp, i32 noundef 20)
          to label %.noexc242 unwind label %bb.gi

.noexc242:                                        ; preds = %.noexc.i237
end_hunk_0
