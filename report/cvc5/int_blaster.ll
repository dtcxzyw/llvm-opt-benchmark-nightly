Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/int_blaster?download=true
inline.NumInlined: 3281
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal10IntBlaster15createBVAndNodeENS0_12NodeTemplateILb1EEES3_jRSt6vectorINS0_9TrustNodeESaIS5_EE:bb.a
  %i.lw = and i64 %i.lv, 1152920405095219200      ; 2 uses
  %i.lx = and i64 %i.lt, -1152920405095219201
  %i.ly = or disjoint i64 %i.lw, %i.lx
  store i64 %i.ly, ptr %i.ls, align 8
  %i.lz = icmp eq i64 %i.lw, 0
  br i1 %i.lz, label %bb.ep, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit156, !prof !76

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ls)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit156 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  %i.mb = extractvalue { ptr, i32 } %i.ma, 0
  call void @__clang_call_terminate(ptr %i.mb) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit156: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit153, %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  store ptr %i.lh, ptr %45, align 8, !tbaa !56
  %i.mc = load i64, ptr %i.lh, align 8            ; 3 uses
  %i.md = lshr i64 %i.mc, 40
  %i.me = trunc nuw nsw i64 %i.md to i32
  %i.mf = and i32 %i.me, 1048575                  ; 3 uses
  %i.mg = icmp samesign ult i32 %i.mf, 1048574
  br i1 %i.mg, label %bb.er, label %bb.es, !prof !77

bb.er:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit156
  %i.mh = add nuw nsw i32 %i.mf, 1
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl nuw nsw i64 %i.mi, 40
  %i.mk = and i64 %i.mc, -1152920405095219201
  %i.ml = or i64 %i.mj, %i.mk
  store i64 %i.ml, ptr %i.lh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158

bb.es:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit156
  %i.mm = icmp eq i32 %i.mf, 1048574
  br i1 %i.mm, label %bb.et, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158, !prof !76

bb.et:                                            ; preds = %bb.es
  %i.mn = or i64 %i.mc, 1152920405095219200
  store i64 %i.mn, ptr %i.lh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158 unwind label %bb.fl

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158: ; preds = %bb.es, %bb.er, %bb.et
  invoke void @_ZN4cvc58internal10IntBlaster18addRangeConstraintENS0_12NodeTemplateILb1EEEjRSt6vectorINS0_9TrustNodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(484) %1, ptr noundef nonnull align 8 %45, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.eu unwind label %bb.fm

bb.eu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158
  %i.mo = load ptr, ptr %45, align 8, !tbaa !56   ; 3 uses
  %i.mp = load i64, ptr %i.mo, align 8            ; 3 uses
  %i.mq = and i64 %i.mp, 1152920405095219200
  %.not.i.i159 = icmp eq i64 %i.mq, 1152920405095219200
  br i1 %.not.i.i159, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161, label %bb.ev, !prof !76

bb.ev:                                            ; preds = %bb.eu
  %i.mr = add i64 %i.mp, 1152920405095219200
  %i.ms = and i64 %i.mr, 1152920405095219200      ; 2 uses
  %i.mt = and i64 %i.mp, -1152920405095219201
  %i.mu = or disjoint i64 %i.ms, %i.mt
  store i64 %i.mu, ptr %i.mo, align 8
  %i.mv = icmp eq i64 %i.ms, 0
  br i1 %i.mv, label %bb.ew, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161, !prof !76

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161: ; preds = %bb.eu, %bb.ev, %bb.ew
  %.not214 = icmp eq i32 %4, 0
  br i1 %.not214, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.mz = add i32 %4, -1
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %.pre216 = load i32, ptr %i.my, align 8, !tbaa !78
  br label %bb.fn

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit161
  %i.nb = load ptr, ptr %42, align 8, !tbaa !56   ; 3 uses
  %i.nc = load i64, ptr %i.nb, align 8            ; 3 uses
  %i.nd = and i64 %i.nc, 1152920405095219200
  %.not.i.i162 = icmp eq i64 %i.nd, 1152920405095219200
  br i1 %.not.i.i162, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164, label %bb.ey, !prof !76

bb.ey:                                            ; preds = %._crit_edge
  %i.ne = add i64 %i.nc, 1152920405095219200
  %i.nf = and i64 %i.ne, 1152920405095219200      ; 2 uses
  %i.ng = and i64 %i.nc, -1152920405095219201
  %i.nh = or disjoint i64 %i.nf, %i.ng
  store i64 %i.nh, ptr %i.nb, align 8
  %i.ni = icmp eq i64 %i.nf, 0
  br i1 %i.ni, label %bb.ez, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164, !prof !76

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.nj = landingpad { ptr, i32 }
          catch ptr null
  %i.nk = extractvalue { ptr, i32 } %i.nj, 0
  call void @__clang_call_terminate(ptr %i.nk) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164: ; preds = %._crit_edge, %bb.ey, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.nl = load ptr, ptr %40, align 8, !tbaa !56   ; 3 uses
  %i.nm = load i64, ptr %i.nl, align 8            ; 3 uses
  %i.nn = and i64 %i.nm, 1152920405095219200
  %.not.i.i165 = icmp eq i64 %i.nn, 1152920405095219200
  br i1 %.not.i.i165, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, label %bb.fb, !prof !76

bb.fb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164
  %i.no = add i64 %i.nm, 1152920405095219200
  %i.np = and i64 %i.no, 1152920405095219200      ; 2 uses
  %i.nq = and i64 %i.nm, -1152920405095219201
  %i.nr = or disjoint i64 %i.np, %i.nq
  store i64 %i.nr, ptr %i.nl, align 8
  %i.ns = icmp eq i64 %i.np, 0
  br i1 %i.ns, label %bb.fc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167, !prof !76

bb.fc:                                            ; preds = %bb.fb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nt = landingpad { ptr, i32 }
          catch ptr null
  %i.nu = extractvalue { ptr, i32 } %i.nt, 0
  call void @__clang_call_terminate(ptr %i.nu) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit167: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit164, %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  br label %bb.hl

bb.fe:                                            ; preds = %bb.dq
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br label %bb.hk

bb.ff:                                            ; preds = %bb.dr
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body140

bb.fg:                                            ; preds = %bb.ed
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit144
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.ek, %bb.eh
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #27
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn = phi { ptr, i32 } [ %i.nz, %bb.fi ], [ %i.ny, %bb.fh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #27
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.fj ], [ %i.nx, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %bb.hj

bb.fl:                                            ; preds = %bb.et
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.fm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit158
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #27
  br label %bb.hj

bb.fn:                                            ; preds = %.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194
  %i.oc = phi i32 [ %.pre216, %.lr.ph ], [ %i.si, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194 ]
  %.0213 = phi i32 [ 0, %.lr.ph ], [ %i.sj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194 ] ; 4 uses
  %i.od = add i32 %.0213, -1
  %i.oe = add i32 %i.od, %i.oc
  %spec.select = call i32 @llvm.umin.i32(i32 %i.oe, i32 %i.mz) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  store ptr %i.lh, ptr %47, align 8, !tbaa !56
  %i.of = load i64, ptr %i.lh, align 8            ; 3 uses
  %i.og = lshr i64 %i.of, 40
  %i.oh = trunc nuw nsw i64 %i.og to i32
  %i.oi = and i32 %i.oh, 1048575                  ; 3 uses
  %i.oj = icmp samesign ult i32 %i.oi, 1048574
  br i1 %i.oj, label %bb.fo, label %bb.fp, !prof !77

bb.fo:                                            ; preds = %bb.fn
  %i.ok = add nuw nsw i32 %i.oi, 1
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = shl nuw nsw i64 %i.ol, 40
  %i.on = and i64 %i.of, -1152920405095219201
  %i.oo = or i64 %i.om, %i.on
  store i64 %i.oo, ptr %i.lh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit169

bb.fp:                                            ; preds = %bb.fn
  %i.op = icmp eq i32 %i.oi, 1048574
  br i1 %i.op, label %bb.fq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit169, !prof !76

bb.fq:                                            ; preds = %bb.fp
  %i.oq = or i64 %i.of, 1152920405095219200
  store i64 %i.oq, ptr %i.lh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit169 unwind label %bb.gy

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit169: ; preds = %bb.fp, %bb.fo, %bb.fq
  invoke void @_ZNK4cvc58internal6theory5arith2nl9IAndUtils8iextractEjjNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef nonnull align 8 dereferenceable(80) %i.na, i32 noundef %spec.select, i32 noundef %.0213, ptr noundef nonnull align 8 %47)
          to label %bb.fr unwind label %bb.gz

bb.fr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit169
  %i.or = load ptr, ptr %47, align 8, !tbaa !56   ; 3 uses
  %i.os = load i64, ptr %i.or, align 8            ; 3 uses
  %i.ot = and i64 %i.os, 1152920405095219200
  %.not.i.i170 = icmp eq i64 %i.ot, 1152920405095219200
  br i1 %.not.i.i170, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172, label %bb.fs, !prof !76

bb.fs:                                            ; preds = %bb.fr
  %i.ou = add i64 %i.os, 1152920405095219200
  %i.ov = and i64 %i.ou, 1152920405095219200      ; 2 uses
  %i.ow = and i64 %i.os, -1152920405095219201
  %i.ox = or disjoint i64 %i.ov, %i.ow
  store i64 %i.ox, ptr %i.or, align 8
  %i.oy = icmp eq i64 %i.ov, 0
  br i1 %i.oy, label %bb.ft, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172, !prof !76

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.or)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172: ; preds = %bb.fr, %bb.fs, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.pb = load ptr, ptr %2, align 8, !tbaa !56    ; 5 uses
  store ptr %i.pb, ptr %50, align 8, !tbaa !56
  %i.pc = load i64, ptr %i.pb, align 8            ; 3 uses
  %i.pd = lshr i64 %i.pc, 40
  %i.pe = trunc nuw nsw i64 %i.pd to i32
  %i.pf = and i32 %i.pe, 1048575                  ; 3 uses
  %i.pg = icmp samesign ult i32 %i.pf, 1048574
  br i1 %i.pg, label %bb.fv, label %bb.fw, !prof !77

bb.fv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172
  %i.ph = add nuw nsw i32 %i.pf, 1
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 40
  %i.pk = and i64 %i.pc, -1152920405095219201
  %i.pl = or i64 %i.pj, %i.pk
  store i64 %i.pl, ptr %i.pb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174

bb.fw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit172
  %i.pm = icmp eq i32 %i.pf, 1048574
  br i1 %i.pm, label %bb.fx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174, !prof !76

bb.fx:                                            ; preds = %bb.fw
  %i.pn = or i64 %i.pc, 1152920405095219200
  store i64 %i.pn, ptr %i.pb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174 unwind label %bb.ha

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174: ; preds = %bb.fw, %bb.fv, %bb.fx
  %i.po = load ptr, ptr %3, align 8, !tbaa !56    ; 5 uses
  store ptr %i.po, ptr %51, align 8, !tbaa !56
  %i.pp = load i64, ptr %i.po, align 8            ; 3 uses
  %i.pq = lshr i64 %i.pp, 40
  %i.pr = trunc nuw nsw i64 %i.pq to i32
  %i.ps = and i32 %i.pr, 1048575                  ; 3 uses
  %i.pt = icmp samesign ult i32 %i.ps, 1048574
  br i1 %i.pt, label %bb.fy, label %bb.fz, !prof !77

bb.fy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174
  %i.pu = add nuw nsw i32 %i.ps, 1
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = shl nuw nsw i64 %i.pv, 40
  %i.px = and i64 %i.pp, -1152920405095219201
  %i.py = or i64 %i.pw, %i.px
  store i64 %i.py, ptr %i.po, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit176

bb.fz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit174
  %i.pz = icmp eq i32 %i.ps, 1048574
  br i1 %i.pz, label %bb.ga, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit176, !prof !76

bb.ga:                                            ; preds = %bb.fz
  %i.qa = or i64 %i.pp, 1152920405095219200
  store i64 %i.qa, ptr %i.po, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.po)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit176 unwind label %bb.hb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit176: ; preds = %bb.fz, %bb.fy, %bb.ga
  invoke void @_ZN4cvc58internal6theory5arith2nl9IAndUtils21createBitwiseIAndNodeENS0_12NodeTemplateILb1EEES6_jj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %49, ptr noundef nonnull align 8 dereferenceable(80) %i.na, ptr noundef nonnull align 8 %50, ptr noundef nonnull align 8 %51, i32 noundef %spec.select, i32 noundef %.0213)
          to label %bb.gb unwind label %bb.hc

bb.gb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit176
  %i.qb = load ptr, ptr %46, align 8, !tbaa !56, !noalias !568 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load ptr, ptr %49, align 8, !tbaa !56, !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !568
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !569
  %i.qe = load ptr, ptr %i.qc, align 8, !tbaa !112, !noalias !569
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef %i.qe, i32 noundef 5)
          to label %.noexc177 unwind label %bb.hd

.noexc177:                                        ; preds = %bb.gb
  store ptr %i.qb, ptr %7, align 8, !tbaa !114, !noalias !569
  %i.qf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull align 8 %7)
          to label %bb.gc unwind label %bb.gf, !noalias !569

bb.gc:                                            ; preds = %.noexc177
  store ptr %i.qd, ptr %8, align 8, !tbaa !114, !noalias !569
  %i.qg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.qf, ptr noundef nonnull align 8 %8)
          to label %bb.gd unwind label %bb.gg, !noalias !569 ; 0 uses

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %48, ptr noundef nonnull align 8 dereferenceable(124) %6)
          to label %bb.gh unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.gf:                                            ; preds = %.noexc177
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.gg:                                            ; preds = %bb.gc
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.gg, %bb.gf, %bb.ge
  %.pn5.i.i = phi { ptr, i32 } [ %i.qh, %bb.ge ], [ %i.qj, %bb.gg ], [ %i.qi, %bb.gf ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !569
  br label %.body178

bb.gh:                                            ; preds = %bb.gd
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !568
  invoke void @_ZN4cvc58internal10IntBlaster20addBitwiseConstraintENS0_12NodeTemplateILb1EEERSt6vectorINS0_9TrustNodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(484) %1, ptr noundef nonnull align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.gi unwind label %bb.he

bb.gi:                                            ; preds = %bb.gh
  %i.qk = load ptr, ptr %48, align 8, !tbaa !56   ; 3 uses
  %i.ql = load i64, ptr %i.qk, align 8            ; 3 uses
  %i.qm = and i64 %i.ql, 1152920405095219200
  %.not.i.i180 = icmp eq i64 %i.qm, 1152920405095219200
  br i1 %.not.i.i180, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit182, label %bb.gj, !prof !76

bb.gj:                                            ; preds = %bb.gi
  %i.qn = add i64 %i.ql, 1152920405095219200
  %i.qo = and i64 %i.qn, 1152920405095219200      ; 2 uses
  %i.qp = and i64 %i.ql, -1152920405095219201
  %i.qq = or disjoint i64 %i.qo, %i.qp
  store i64 %i.qq, ptr %i.qk, align 8
  %i.qr = icmp eq i64 %i.qo, 0
  br i1 %i.qr, label %bb.gk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit182, !prof !76

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit182 unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.qs = landingpad { ptr, i32 }
          catch ptr null
  %i.qt = extractvalue { ptr, i32 } %i.qs, 0
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !99
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !97
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !97
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !185
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !185
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESG_IJEEEEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !187
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  store ptr %i.e, ptr %i.b, align 8, !tbaa !114
  %i.f = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #27
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.d unwind label %.body.i.i  ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !54
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #27
  br label %bb.e

.body.i.i:                                        ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #27
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !54
  store ptr %i.o, ptr %i.n, align 8, !tbaa !114
  ret ptr %i.a

bb.f:                                             ; preds = %.body.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #28
  unreachable

bb.i:                                             ; preds = %.body.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !954
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !151
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !99
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !151
  store ptr %i.o, ptr %.02530, align 8, !tbaa !96
  store ptr %.02530, ptr %i.g, align 8, !tbaa !151
  store ptr %i.g, ptr %i.m, align 8, !tbaa !97
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !96
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !97
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !96
  store ptr %i.r, ptr %.02530, align 8, !tbaa !96
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !97
  store ptr %.02530, ptr %i.s, align 8, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !953

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !149    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !150
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !150
  store ptr %.0.i, ptr %0, align 8, !tbaa !149
  ret void
}

declare void @_ZN4cvc58internal11NodeManager7mkConstIbEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{!0, !93}
!1 = distinct !{!1, !93}
!2 = distinct !{!2, !93}
!3 = distinct !{!3, !93}
!4 = distinct !{!4, !93}
!5 = distinct !{!5, !93}
!6 = distinct !{!6, !93}
!7 = distinct !{!7, !93}
!8 = distinct !{!8, !93}
!9 = distinct !{!9, !93}
!10 = distinct !{!10, !93}
!11 = distinct !{!11, !93}
!12 = distinct !{!12, !93}
!13 = distinct !{!13, !93}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"vtable pointer", !17, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"any pointer", !18, i64 0}
!25 = !{!"any p2 pointer", !24, i64 0}
!26 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!27 = !{!"long", !18, i64 0}
!28 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !24, i64 0}
!29 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !28, i64 0}
!30 = !{!"float", !18, i64 0}
!31 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !30, i64 0, !27, i64 8}
!32 = !{!"_ZTSSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !27, i64 8, !29, i64 16, !27, i64 24, !31, i64 32, !28, i64 48}
!33 = !{!32, !26, i64 0}
!34 = !{!32, !27, i64 8}
!35 = !{!31, !30, i64 0}
!36 = !{!"p1 _ZTSN4cvc57context5ScopeE", !24, i64 0}
!37 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !24, i64 0}
!38 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !25, i64 0}
!39 = !{!"_ZTSN4cvc57context10ContextObjE", !36, i64 8, !37, i64 16, !37, i64 24, !38, i64 32}
!40 = !{!"_ZTSSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE", !32, i64 0}
!41 = !{!"p1 _ZTSN4cvc57context11CDOhash_mapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !24, i64 0}
!42 = !{!"p1 _ZTSN4cvc57context7ContextE", !24, i64 0}
!43 = !{!"_ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !39, i64 0, !40, i64 40, !41, i64 96, !42, i64 104}
!44 = !{!43, !42, i64 104}
!45 = !{!"_ZTSSt10_HashtableIKN4cvc58internal12NodeTemplateILb1EEESt4pairIS4_KbESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !27, i64 8, !29, i64 16, !27, i64 24, !31, i64 32, !28, i64 48}
!46 = !{!45, !26, i64 0}
!47 = !{!45, !27, i64 8}
!48 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !24, i64 0}
!49 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !39, i64 0, !48, i64 40, !27, i64 48}
!50 = !{!49, !48, i64 40}
!51 = !{!49, !27, i64 48}
!52 = !{!"branch_weights", i32 1, i32 1048575}
!53 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !24, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !53, i64 0}
!56 = !{!55, !53, i64 0}
!57 = !{!"p1 _ZTSN4cvc58internal3EnvE", !24, i64 0}
!58 = !{!"_ZTSN4cvc58internal6EnvObjE", !57, i64 8}
!59 = !{!"_ZTSN4cvc58internal14ProofGeneratorE"}
!60 = !{!"p1 _ZTSN4cvc58internal11NodeManagerE", !24, i64 0}
!61 = !{!"_ZTSN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EEE", !49, i64 0}
!62 = !{!"_ZTSSt4lessImE"}
!63 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !62, i64 0}
!64 = !{!"_ZTSSt14_Rb_tree_color", !18, i64 0}
!65 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !24, i64 0}
!66 = !{!"_ZTSSt18_Rb_tree_node_base", !64, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!67 = !{!"_ZTSSt15_Rb_tree_header", !66, i64 0, !27, i64 32}
!68 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt3mapIS0_IllEmSt4lessIS3_ESaIS0_IKS3_mEEEESt10_Select1stISA_ES4_ImESaISA_EE13_Rb_tree_implISD_Lb1EEE", !63, i64 0, !67, i64 8}
!69 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt3mapIS0_IllEmSt4lessIS3_ESaIS0_IKS3_mEEEESt10_Select1stISA_ES4_ImESaISA_EE", !68, i64 0}
!70 = !{!"_ZTSSt3mapImS_ISt4pairIllEmSt4lessIS1_ESaIS0_IKS1_mEEES2_ImESaIS0_IKmS7_EEE", !69, i64 0}
!71 = !{!"_ZTSN4cvc58internal6theory5arith2nl9IAndUtilsE", !70, i64 0, !60, i64 48, !55, i64 56, !55, i64 64, !55, i64 72}
!72 = !{!"_ZTSN4cvc58internal7options16SolveBVAsIntModeE", !18, i64 0}
!73 = !{!"_ZTSN4cvc58internal10IntBlasterE", !58, i64 0, !59, i64 16, !43, i64 24, !43, i64 136, !60, i64 248, !61, i64 256, !61, i64 312, !55, i64 368, !55, i64 376, !71, i64 384, !72, i64 464, !42, i64 472, !19, i64 480}
!74 = !{!73, !72, i64 464}
!75 = !{!73, !60, i64 248}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{!73, !19, i64 480}
!79 = !{!67, !65, i64 8}
!80 = !{ptr @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EED2Ev}
!81 = !{ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EED2Ev}
!82 = !{!"p1 omnipotent char", !24, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !82, i64 0}
!84 = !{!83, !82, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !27, i64 8, !18, i64 16}
!86 = !{!85, !27, i64 8}
!87 = !{!18, !18, i64 0}
!88 = !{!85, !82, i64 0}
!89 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !24, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!90, !89, i64 0}
!92 = !{!90, !89, i64 8}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!90, !89, i64 16}
!95 = !{!45, !27, i64 24}
!96 = !{!29, !28, i64 0}
!97 = !{!28, !28, i64 0}
!98 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !27, i64 0}
!99 = !{!98, !27, i64 0}
!100 = !{!"bool", !18, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"p1 _ZTSN4cvc58internal9TrustNodeE", !24, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal9TrustNodeESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 8}
!105 = !{!103, !102, i64 16}
!106 = !{!"_ZTSN4cvc58internal13TrustNodeKindE", !18, i64 0}
!107 = !{!"p1 _ZTSN4cvc58internal14ProofGeneratorE", !24, i64 0}
!108 = !{!"_ZTSN4cvc58internal9TrustNodeE", !106, i64 0, !55, i64 8, !107, i64 16}
!109 = !{!108, !106, i64 0}
!110 = !{!108, !107, i64 16}
!111 = !{!"_ZTSN4cvc58internal4expr9NodeValueE", !27, i64 0, !19, i64 5, !19, i64 8, !19, i64 12, !60, i64 16, !18, i64 24}
!112 = !{!111, !60, i64 16}
!113 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !53, i64 0}
!114 = !{!113, !53, i64 0}
!115 = !{!"_ZTSN4cvc58internal8TypeNodeE", !53, i64 0}
!116 = !{!115, !53, i64 0}
!117 = !{!"p1 _ZTSN4cvc58internal8TypeNodeE", !24, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!89, !89, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal8TypeNodeESaIS2_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!121 = !{!120, !117, i64 0}
!122 = !{!120, !117, i64 8}
!123 = !{!120, !117, i64 16}
!124 = !{!32, !27, i64 24}
!125 = !{!"_ZTSSt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEE", !55, i64 0, !41, i64 8}
!126 = !{!125, !41, i64 8}
!127 = !{!39, !36, i64 8}
!128 = !{!"p1 _ZTSN4cvc57context20ContextMemoryManagerE", !24, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIPN4cvc57context10ContextObjESaIS3_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIPN4cvc57context10ContextObjESaIS3_EE", !131, i64 0}
!133 = !{!"_ZTSN4cvc57context5ScopeE", !42, i64 0, !128, i64 8, !19, i64 16, !37, i64 24, !132, i64 32}
!134 = !{!133, !42, i64 0}
!135 = !{!"p2 _ZTSN4cvc57context5ScopeE", !25, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!36, !36, i64 0}
!138 = !{!65, !65, i64 0}
!139 = !{!"_ZTSN4cvc58internal14IntToBitVectorE", !19, i64 0}
!140 = !{!139, !19, i64 0}
!141 = !{!103, !102, i64 0}
!142 = !{}
!143 = !{i8 0, i8 2}
!144 = !{!"_ZTSSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE", !26, i64 0, !27, i64 8, !29, i64 16, !27, i64 24, !31, i64 32, !28, i64 48}
!145 = !{!144, !26, i64 0}
!146 = !{!144, !27, i64 8}
!147 = !{!144, !28, i64 16}
!148 = !{!"_ZTSSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !26, i64 0, !27, i64 8, !29, i64 16, !27, i64 24, !31, i64 32, !28, i64 48}
!149 = !{!148, !26, i64 0}
!150 = !{!148, !27, i64 8}
!151 = !{!148, !28, i64 16}
!152 = !{!66, !65, i64 24}
!153 = !{!66, !65, i64 16}
!154 = !{!"p2 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !25, i64 0}
!155 = !{!"_ZTSSt15_Deque_iteratorIN4cvc58internal12NodeTemplateILb1EEERS3_PS3_E", !89, i64 0, !89, i64 8, !89, i64 16, !154, i64 24}
!156 = !{!155, !154, i64 24}
!157 = !{!155, !89, i64 0}
!158 = !{!155, !89, i64 8}
!159 = !{!155, !89, i64 16}
!160 = !{!"_ZTSNSt11_Deque_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE16_Deque_impl_dataE", !154, i64 0, !27, i64 8, !155, i64 16, !155, i64 48}
!161 = !{!160, !154, i64 0}
!162 = !{!160, !154, i64 40}
end_hunk_1
