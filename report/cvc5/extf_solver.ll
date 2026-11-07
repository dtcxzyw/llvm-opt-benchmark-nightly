Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/extf_solver?download=true
inline.NumInlined: 2983
inline.NumDeleted: 1002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory7strings10ExtfSolver18checkExtfInferenceENS0_12NodeTemplateILb1EEES5_RNS2_11ExtfInfoTmpE:bb.a
  %i.kq = and i64 %i.ki, -1152920405095219201
  %i.kr = or i64 %i.kp, %i.kq
  store i64 %i.kr, ptr %i.jg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395

bb.cb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit393
  %i.ks = icmp eq i32 %i.kl, 1048574
  br i1 %i.ks, label %bb.cc, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395, !prof !103

bb.cc:                                            ; preds = %bb.cb
  %i.kt = or i64 %i.ki, 1152920405095219200
  store i64 %i.kt, ptr %i.jg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395 unwind label %bb.cs

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395: ; preds = %bb.cb, %bb.ca, %bb.cc
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 128
  invoke void @_ZN4cvc58internal6theory7strings10BaseSolver18explainConstantEqcENS0_12NodeTemplateILb1EEES5_RSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %66, ptr noundef nonnull align 8 dereferenceable(292) %i.ju, ptr noundef nonnull align 8 %67, ptr noundef nonnull align 8 %68, ptr noundef nonnull align 8 dereferenceable(24) %i.ku)
          to label %bb.cd unwind label %bb.ct

bb.cd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395
  %i.kv = load ptr, ptr %66, align 8, !tbaa !32   ; 3 uses
  %i.kw = load i64, ptr %i.kv, align 8            ; 3 uses
  %i.kx = and i64 %i.kw, 1152920405095219200
  %.not.i.i396 = icmp eq i64 %i.kx, 1152920405095219200
  br i1 %.not.i.i396, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398, label %bb.ce, !prof !103

bb.ce:                                            ; preds = %bb.cd
  %i.ky = add i64 %i.kw, 1152920405095219200
  %i.kz = and i64 %i.ky, 1152920405095219200      ; 2 uses
  %i.la = and i64 %i.kw, -1152920405095219201
  %i.lb = or disjoint i64 %i.kz, %i.la
  store i64 %i.lb, ptr %i.kv, align 8
  %i.lc = icmp eq i64 %i.kz, 0
  br i1 %i.lc, label %bb.cf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398, !prof !103

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398: ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.lf = load ptr, ptr %68, align 8, !tbaa !32   ; 3 uses
  %i.lg = load i64, ptr %i.lf, align 8            ; 3 uses
  %i.lh = and i64 %i.lg, 1152920405095219200
  %.not.i.i399 = icmp eq i64 %i.lh, 1152920405095219200
  br i1 %.not.i.i399, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401, label %bb.ch, !prof !103

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398
  %i.li = add i64 %i.lg, 1152920405095219200
  %i.lj = and i64 %i.li, 1152920405095219200      ; 2 uses
  %i.lk = and i64 %i.lg, -1152920405095219201
  %i.ll = or disjoint i64 %i.lj, %i.lk
  store i64 %i.ll, ptr %i.lf, align 8
  %i.lm = icmp eq i64 %i.lj, 0
  br i1 %i.lm, label %bb.ci, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401, !prof !103

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit398, %bb.ch, %bb.ci
  %i.lp = load ptr, ptr %67, align 8, !tbaa !32   ; 3 uses
  %i.lq = load i64, ptr %i.lp, align 8            ; 3 uses
  %i.lr = and i64 %i.lq, 1152920405095219200
  %.not.i.i402 = icmp eq i64 %i.lr, 1152920405095219200
  br i1 %.not.i.i402, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404, label %bb.ck, !prof !103

bb.ck:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401
  %i.ls = add i64 %i.lq, 1152920405095219200
  %i.lt = and i64 %i.ls, 1152920405095219200      ; 2 uses
  %i.lu = and i64 %i.lq, -1152920405095219201
  %i.lv = or disjoint i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.lp, align 8
  %i.lw = icmp eq i64 %i.lt, 0
  br i1 %i.lw, label %bb.cl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404, !prof !103

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit401, %bb.ck, %bb.cl
  %i.lz = load i64, ptr %i.jg, align 8            ; 3 uses
  %i.ma = and i64 %i.lz, 1152920405095219200
  %.not.i.i405 = icmp eq i64 %i.ma, 1152920405095219200
  br i1 %.not.i.i405, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit407, label %bb.cn, !prof !103

bb.cn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404
  %i.mb = add i64 %i.lz, 1152920405095219200
  %i.mc = and i64 %i.mb, 1152920405095219200      ; 2 uses
  %i.md = and i64 %i.lz, -1152920405095219201
  %i.me = or disjoint i64 %i.mc, %i.md
  store i64 %i.me, ptr %i.jg, align 8
  %i.mf = icmp eq i64 %i.mc, 0
  br i1 %i.mf, label %bb.co, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit407, !prof !103

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit407 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit407: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit404, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %bb.cx

bb.cq:                                            ; preds = %bb.bs, %bb.bw
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26
  br label %bb.cw

bb.cr:                                            ; preds = %bb.bz
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cc
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit395
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #26
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn193 = phi { ptr, i32 } [ %i.ml, %bb.ct ], [ %i.mk, %bb.cs ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #26
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cr
  %.pn193.pn = phi { ptr, i32 } [ %.pn193, %bb.cu ], [ %i.mj, %bb.cr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #26
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cq
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %bb.cv ], [ %i.mi, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26
  br label %common.resume

bb.cx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit407, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit390
  %i.mm = load ptr, ptr %2, align 8, !tbaa !32    ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = and i64 %i.mo, 1023
  %i.mq = icmp eq i64 %i.mp, 325
  br i1 %i.mq, label %bb.cy, label %bb.tg

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.mr = load ptr, ptr %i.gg, align 8, !tbaa !32
  %i.ms = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.mr)
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !102, !range !120, !noundef !98 ; 2 uses
  %i.mu = trunc nuw i8 %i.mt to i1                ; 3 uses
  store i8 %i.mt, ptr %i.b, align 1, !tbaa !102
  br i1 %i.mu, label %bb.cz, label %.thread.a

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.mv = load ptr, ptr %2, align 8, !tbaa !32, !noalias !584 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !noalias !584
  %i.my = trunc i64 %i.mx to i32
  %i.mz = and i32 %i.my, 1023                     ; 2 uses
  %i.na = icmp eq i32 %i.mz, 1023
  %i.nb = select i1 %i.na, i32 -1, i32 %i.mz
  %i.nc = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.nb), !noalias !584
  %i.nd = icmp eq i32 %i.nc, 2
  %spec.select.i.i408 = select i1 %i.nd, i64 2, i64 1
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %spec.select.i.i408
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !30, !noalias !584 ; 6 uses
  store ptr %i.ng, ptr %69, align 8, !tbaa !32, !alias.scope !584
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !584 ; 3 uses
  %i.ni = lshr i64 %i.nh, 40
  %i.nj = trunc nuw nsw i64 %i.ni to i32
  %i.nk = and i32 %i.nj, 1048575                  ; 3 uses
  %i.nl = icmp samesign ult i32 %i.nk, 1048574
  br i1 %i.nl, label %bb.da, label %bb.db, !prof !104

bb.da:                                            ; preds = %bb.cz
  %i.nm = add nuw nsw i32 %i.nk, 1
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl nuw nsw i64 %i.nn, 40
  %i.np = and i64 %i.nh, -1152920405095219201
  %i.nq = or i64 %i.no, %i.np
  store i64 %i.nq, ptr %i.ng, align 8, !noalias !584
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.db:                                            ; preds = %bb.cz
  %i.nr = icmp eq i32 %i.nk, 1048574
  br i1 %i.nr, label %bb.dc, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !103

bb.dc:                                            ; preds = %bb.db
  %i.ns = or i64 %i.nh, 1152920405095219200
  store i64 %i.ns, ptr %i.ng, align 8, !noalias !584
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ng), !noalias !584
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.da, %bb.db, %bb.dc
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = and i64 %i.nu, 1023
  %i.nw = icmp eq i64 %i.nv, 319
  br i1 %i.nw, label %.thread1088.thread, label %bb.dd

bb.dd:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %.pre1152.a = load i8, ptr %i.b, align 1, !tbaa !102, !range !120
  %i.nx = trunc nuw i8 %.pre1152.a to i1
  br i1 %i.nx, label %.thread1088.thread, label %.thread.a

.thread.a:                                        ; preds = %bb.cy, %bb.dd
  %i.ny = load ptr, ptr %2, align 8, !tbaa !32, !noalias !585 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !noalias !585
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 1023                     ; 2 uses
  %i.od = icmp eq i32 %i.oc, 1023
  %i.oe = select i1 %i.od, i32 -1, i32 %i.oc
  %i.of = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.oe)
          to label %.noexc410 unwind label %bb.ew

.noexc410:                                        ; preds = %.thread.a
  %i.og = icmp eq i32 %i.of, 2
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oi = zext i1 %i.og to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.oi
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !30, !noalias !585 ; 8 uses
  %i.ol = load i64, ptr %i.ok, align 8, !noalias !585 ; 4 uses
  %i.om = lshr i64 %i.ol, 40
  %i.on = trunc nuw nsw i64 %i.om to i32
  %i.oo = and i32 %i.on, 1048575                  ; 3 uses
  %i.op = icmp samesign ult i32 %i.oo, 1048574
  br i1 %i.op, label %bb.de, label %bb.df, !prof !104

bb.de:                                            ; preds = %.noexc410
  %i.oq = add nuw nsw i32 %i.oo, 1
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = shl nuw nsw i64 %i.or, 40
  %i.ot = and i64 %i.ol, -1152920405095219201
  %i.ou = or i64 %i.os, %i.ot                     ; 2 uses
  store i64 %i.ou, ptr %i.ok, align 8, !noalias !585
  br label %bb.dh

bb.df:                                            ; preds = %.noexc410
  %i.ov = icmp eq i32 %i.oo, 1048574
  br i1 %i.ov, label %bb.dg, label %bb.dh, !prof !103

bb.dg:                                            ; preds = %bb.df
  %i.ow = or i64 %i.ol, 1152920405095219200
  store i64 %i.ow, ptr %i.ok, align 8, !noalias !585
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ok)
          to label %._crit_edge1153 unwind label %bb.ew

._crit_edge1153:                                  ; preds = %bb.dg
  %.pre1154 = load i64, ptr %i.ok, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge1153, %bb.df, %bb.de
  %i.ox = phi i64 [ %.pre1154, %._crit_edge1153 ], [ %i.ol, %bb.df ], [ %i.ou, %bb.de ] ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = and i64 %i.oz, 1023
  %i.pb = icmp eq i64 %i.pa, 319                  ; 2 uses
  %i.pc = and i64 %i.ox, 1152920405095219200
  %.not.i.i413 = icmp eq i64 %i.pc, 1152920405095219200
  br i1 %.not.i.i413, label %.critedge, label %bb.di, !prof !103

bb.di:                                            ; preds = %bb.dh
  %i.pd = add i64 %i.ox, 1152920405095219200
  %i.pe = and i64 %i.pd, 1152920405095219200      ; 2 uses
  %i.pf = and i64 %i.ox, -1152920405095219201
  %i.pg = or disjoint i64 %i.pe, %i.pf
  store i64 %i.pg, ptr %i.ok, align 8
  %i.ph = icmp eq i64 %i.pe, 0
  br i1 %i.ph, label %bb.dj, label %.critedge, !prof !103

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ok)
          to label %.critedge unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #29
  unreachable

.critedge:                                        ; preds = %bb.dj, %bb.di, %bb.dh
  br i1 %i.mu, label %.thread1088.thread, label %.critedge272

.thread1088.thread:                               ; preds = %bb.dd, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, %.critedge
  %126 = phi i1 [ true, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit ], [ %i.pb, %.critedge ], [ false, %bb.dd ]
  %127 = load ptr, ptr %69, align 8, !tbaa !32    ; 3 uses
  %i.pk = load i64, ptr %127, align 8             ; 3 uses
  %i.pl = and i64 %i.pk, 1152920405095219200
  %.not.i.i416 = icmp eq i64 %i.pl, 1152920405095219200
  br i1 %.not.i.i416, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit418, label %bb.dl, !prof !103

bb.dl:                                            ; preds = %.thread1088.thread
  %i.pm = add i64 %i.pk, 1152920405095219200
  %i.pn = and i64 %i.pm, 1152920405095219200      ; 2 uses
  %i.po = and i64 %i.pk, -1152920405095219201
  %i.pp = or disjoint i64 %i.pn, %i.po
  store i64 %i.pp, ptr %127, align 8
  %i.pq = icmp eq i64 %i.pn, 0
  br i1 %i.pq, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit418, !prof !103

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %127)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit418 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pr = landingpad { ptr, i32 }
          catch ptr null
  %i.ps = extractvalue { ptr, i32 } %i.pr, 0
  call void @__clang_call_terminate(ptr %i.ps) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit418: ; preds = %.thread1088.thread, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #26
  br i1 %126, label %bb.do, label %.critedge272.thread

.critedge272:                                     ; preds = %.critedge
  br i1 %i.pb, label %bb.do, label %.critedge272.thread

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit418, %.critedge272
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !74 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 104
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !126
  %.not.not.i.i.i.i.i = icmp eq i64 %i.px, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 96
  %i.pz = load ptr, ptr %2, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %bb.dp
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.py, %bb.dp ], [ %.sroa.06.0.i.i.i.i.i, %bb.dr ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit1119, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !32
  %i.qc = icmp eq ptr %i.pz, %i.qb
  br i1 %i.qc, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %bb.dq, !llvm.loop !2

bb.ds:                                            ; preds = %bb.do
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 80 ; 2 uses
  %i.qe = call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.qd, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pv, i64 88
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !70 ; 2 uses
  %i.qh = urem i64 %i.qe, %i.qg                   ; 2 uses
  %i.qi = load ptr, ptr %i.qd, align 8, !tbaa !69
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qh
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !128 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit1119, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !127 ; 3 uses
  %i.qm = load ptr, ptr %2, align 8               ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !130
  %i.qq = icmp eq i64 %i.qe, %i.qp
  %i.qr = load ptr, ptr %i.qn, align 8
  %i.qs = icmp eq ptr %i.qm, %i.qr
  %i.qt = select i1 %i.qq, i1 %i.qs, i1 false
  br i1 %i.qt, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.dv
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.qv = icmp eq i64 %i.qe, %i.rb
  %i.qw = load ptr, ptr %i.qu, align 8
  %i.qx = icmp eq ptr %i.qm, %i.qw
  %i.qy = select i1 %i.qv, i1 %i.qx, i1 false
  br i1 %i.qy, label %_ZNK4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EE4findERKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.dt, %bb.du
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.qz, %bb.du ], [ %i.ql, %bb.dt ]
  %i.qz = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !127 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit1119, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !130 ; 2 uses
  %i.rc = urem i64 %i.rb, %i.qg
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.rc, %i.qh
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.du, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.dv
  br label %.loopexit1119, !llvm.loop !3

.loopexit1119:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.dq, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.a, align 1, !tbaa !102
  %i.rd = call noundef zeroext i1 @_ZN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EE11insert_safeERKS4_RKb(ptr noundef nonnull align 8 dereferenceable(56) %i.pt, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.re = load i8, ptr %i.b, align 1, !tbaa !102, !range !120, !noundef !98
  %i.rf = zext nneg i8 %i.re to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.rg = load ptr, ptr %2, align 8, !tbaa !32, !noalias !586 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !noalias !586
  %i.rj = trunc i64 %i.ri to i32
  %i.rk = and i32 %i.rj, 1023                     ; 2 uses
  %i.rl = icmp eq i32 %i.rk, 1023
  %i.rm = select i1 %i.rl, i32 -1, i32 %i.rk
  %i.rn = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.rm)
          to label %.noexc420 unwind label %bb.ey

.noexc420:                                        ; preds = %.loopexit1119
  %i.ro = icmp eq i32 %i.rn, 2
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rq = zext i1 %i.ro to i64
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rq
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !30, !noalias !586 ; 5 uses
  store ptr %i.rs, ptr %71, align 8, !tbaa !32, !alias.scope !586
  %i.rt = load i64, ptr %i.rs, align 8, !noalias !586 ; 3 uses
  %i.ru = lshr i64 %i.rt, 40
  %i.rv = trunc nuw nsw i64 %i.ru to i32
  %i.rw = and i32 %i.rv, 1048575                  ; 3 uses
  %i.rx = icmp samesign ult i32 %i.rw, 1048574
  br i1 %i.rx, label %bb.dw, label %bb.dx, !prof !104

bb.dw:                                            ; preds = %.noexc420
  %i.ry = add nuw nsw i32 %i.rw, 1
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = shl nuw nsw i64 %i.rz, 40
  %i.sb = and i64 %i.rt, -1152920405095219201
  %i.sc = or i64 %i.sa, %i.sb
  store i64 %i.sc, ptr %i.rs, align 8, !noalias !586
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422

bb.dx:                                            ; preds = %.noexc420
  %i.sd = icmp eq i32 %i.rw, 1048574
  br i1 %i.sd, label %bb.dy, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422, !prof !103

bb.dy:                                            ; preds = %bb.dx
  %i.se = or i64 %i.rt, 1152920405095219200
  store i64 %i.se, ptr %i.rs, align 8, !noalias !586
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rs)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422 unwind label %bb.ey

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422: ; preds = %bb.dx, %bb.dw, %bb.dy
  %i.sf = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 8 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !106 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !108
  %.not.i.i423 = icmp eq ptr %i.sg, %i.si
  br i1 %.not.i.i423, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422
  %i.sj = load ptr, ptr %71, align 8, !tbaa !32   ; 5 uses
  store ptr %i.sj, ptr %i.sg, align 8, !tbaa !32
  %i.sk = load i64, ptr %i.sj, align 8            ; 3 uses
  %i.sl = lshr i64 %i.sk, 40
  %i.sm = trunc nuw nsw i64 %i.sl to i32
  %i.sn = and i32 %i.sm, 1048575                  ; 3 uses
  %i.so = icmp samesign ult i32 %i.sn, 1048574
  br i1 %i.so, label %bb.ea, label %bb.eb, !prof !104

bb.ea:                                            ; preds = %bb.dz
  %i.sp = add nuw nsw i32 %i.sn, 1
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl nuw nsw i64 %i.sq, 40
  %i.ss = and i64 %i.sk, -1152920405095219201
  %i.st = or i64 %i.sr, %i.ss
  store i64 %i.st, ptr %i.sj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i424

bb.eb:                                            ; preds = %bb.dz
  %i.su = icmp eq i32 %i.sn, 1048574
  br i1 %i.su, label %bb.ec, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i424, !prof !103

bb.ec:                                            ; preds = %bb.eb
  %i.sv = or i64 %i.sk, 1152920405095219200
  store i64 %i.sv, ptr %i.sj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i424 unwind label %bb.ez

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i424: ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.sw = load ptr, ptr %i.sf, align 8, !tbaa !106
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.sx, ptr %i.sf, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit427

bb.ed:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit422
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr %i.sg, ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit427 unwind label %bb.ez

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit427: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i424, %bb.ed
  %i.sy = load ptr, ptr %71, align 8, !tbaa !32   ; 3 uses
  %i.sz = load i64, ptr %i.sy, align 8            ; 3 uses
  %i.ta = and i64 %i.sz, 1152920405095219200
  %.not.i.i428 = icmp eq i64 %i.ta, 1152920405095219200
  br i1 %.not.i.i428, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit430, label %bb.ee, !prof !103

bb.ee:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit427
  %i.tb = add i64 %i.sz, 1152920405095219200
  %i.tc = and i64 %i.tb, 1152920405095219200      ; 2 uses
  %i.td = and i64 %i.sz, -1152920405095219201
  %i.te = or disjoint i64 %i.tc, %i.td
  store i64 %i.te, ptr %i.sy, align 8
  %i.tf = icmp eq i64 %i.tc, 0
  br i1 %i.tf, label %bb.ef, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit430, !prof !103

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit430 unwind label %bb.eg

bb.eg:                                            ; preds = %bb.ef
end_hunk_0
