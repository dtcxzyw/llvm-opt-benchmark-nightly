Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/q_ematch?download=true
inline.NumInlined: 2397
inline.NumDeleted: 920
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN1q6ematch16mk_justificationEjjRNS_6clauseEPKPN3euf5enodeE:_ZN7obj_refI4expr11ast_managerED2Ev.exit55
  %.not.i.i56 = icmp eq ptr %i.t, null
  br i1 %.not.i.i56, label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58:      ; preds = %bb.a
  store ptr %i.t, ptr %5, align 8, !tbaa !347
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !334
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !334
  br label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i

_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i58, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !347  ; 4 uses
  %.not.i4.i = icmp eq ptr %i.y, null
  br i1 %.not.i4.i, label %_ZN1q3litaSERKS0_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i8.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i8.i:       ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i
  store ptr %i.y, ptr %i.m, align 8, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !334
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !334
  br label %_ZN1q3litaSERKS0_.exit

_ZN1q3litaSERKS0_.exit:                           ; preds = %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit.i, %_ZN11ast_manager7inc_refEP3ast.exit.i.i8.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !367, !range !300, !noundef !228 ; 2 uses
  store i8 %i.ad, ptr %i.o, align 8, !tbaa !367
  br label %bb.c

bb.b:                                             ; preds = %bb.f, %_ZN6vectorISt5tupleIJP3appS2_mbEELb0EjE5resetEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.c:                                             ; preds = %_ZN1q3litaSERKS0_.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit55
  %i.af = phi i8 [ %i.ad, %_ZN1q3litaSERKS0_.exit ], [ 0, %_ZN7obj_refI4expr11ast_managerED2Ev.exit55 ]
  %i.ag = phi ptr [ %i.y, %_ZN1q3litaSERKS0_.exit ], [ null, %_ZN7obj_refI4expr11ast_managerED2Ev.exit55 ] ; 4 uses
  %i.ah = phi ptr [ %i.t, %_ZN1q3litaSERKS0_.exit ], [ null, %_ZN7obj_refI4expr11ast_managerED2Ev.exit55 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2616 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !339 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN6vectorIPmLb0EjE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 0, ptr %i.ak, align 4, !tbaa !330
  br label %_ZN6vectorIPmLb0EjE5resetEv.exit

_ZN6vectorIPmLb0EjE5resetEv.exit:                 ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !338 ; 2 uses
  %.not.i61 = icmp eq ptr %i.am, null
  br i1 %.not.i61, label %_ZN6vectorISt5tupleIJP3appS2_mbEELb0EjE5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIPmLb0EjE5resetEv.exit
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  store i32 0, ptr %i.an, align 4, !tbaa !330
  br label %_ZN6vectorISt5tupleIJP3appS2_mbEELb0EjE5resetEv.exit

_ZN6vectorISt5tupleIJP3appS2_mbEELb0EjE5resetEv.exit: ; preds = %_ZN6vectorIPmLb0EjE5resetEv.exit, %bb.e
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 440
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8528) %i.ao)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %_ZN6vectorISt5tupleIJP3appS2_mbEELb0EjE5resetEv.exit
  invoke void @_ZN3euf6egraph13begin_explainEv(ptr noundef nonnull align 8 dereferenceable(536) %i.as)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !352, !nonnull !228, !align !229 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2392
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !339 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.av, null
  br i1 %.not.i.i62, label %_ZN3euf6solver13reset_explainEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  store i32 0, ptr %i.aw, align 4, !tbaa !330
  br label %_ZN3euf6solver13reset_explainEv.exit

_ZN3euf6solver13reset_explainEv.exit:             ; preds = %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !370 ; 2 uses
  %.not.i63 = icmp eq ptr %i.ay, null
  br i1 %.not.i63, label %_ZN3euf6solver8use_dratEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3euf6solver13reset_explainEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !382, !range !300, !noundef !228
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.j, label %_ZN3euf6solver8use_dratEv.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3euf6solver10init_proofEv(ptr noundef nonnull align 8 dereferenceable(8528) %i.at)
          to label %_ZN3euf6solver8use_dratEv.exit unwind label %bb.k

_ZN3euf6solver8use_dratEv.exit:                   ; preds = %_ZN3euf6solver13reset_explainEv.exit, %bb.i, %bb.j
  %i.bc = phi ptr [ %i.al, %bb.j ], [ null, %bb.i ], [ null, %_ZN3euf6solver13reset_explainEv.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !340 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %._crit_edge, label %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE3endEv.exit

_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE3endEv.exit: ; preds = %_ZN3euf6solver8use_dratEv.exit
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !330 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  %.not4570 = icmp eq i32 %i.bh, 0
  br i1 %.not4570, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %_ZN3euf6solver8use_dratEv.exit, %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE3endEv.exit
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 440
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8528) %i.bl)
          to label %bb.q unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.q, %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph:                                           ; preds = %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE3endEv.exit, %bb.p
  %.03571 = phi ptr [ %i.ch, %bb.p ], [ %i.be, %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE3endEv.exit ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03571, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %.03571, align 8, !tbaa !383 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !392
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !383 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !392
  %i.by = icmp eq ptr %i.bu, %i.bx
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !352, !nonnull !228, !align !229 ; 3 uses
  br i1 %i.by, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 440
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8528) %i.bz)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %.03571, align 8, !tbaa !383
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !383
  invoke void @_ZN3euf6egraph10explain_eqImEEvR10ptr_vectorIT_EP7svectorISt5tupleIJP3appS9_mbEEjEPNS_5enodeESE_(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.bc, ptr noundef %i.ce, ptr noundef %i.cf)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.o:                                             ; preds = %.lr.ph
  invoke void @_ZN3euf6solver13explain_diseqER10ptr_vectorImEP7svectorISt5tupleIJP3appS7_mbEEjEPNS_5enodeESC_(ptr noundef nonnull align 8 dereferenceable(8528) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.bc, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bv)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.03571, i64 16 ; 2 uses
  %.not45 = icmp eq ptr %i.ch, %i.bk
  br i1 %.not45, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZN3euf6egraph11end_explainEv(ptr noundef nonnull align 8 dereferenceable(536) %i.bp)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 432
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef nonnull align 8 dereferenceable(40) ptr %i.cl(ptr noundef nonnull align 8 dereferenceable(8528) %i.ci)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.ai, align 8, !tbaa !339 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !330
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  br label %_ZNK6vectorIPmLb0EjE4sizeEv.exit

_ZNK6vectorIPmLb0EjE4sizeEv.exit:                 ; preds = %bb.s, %bb.t
  %.0.i = phi i64 [ %i.cs, %bb.t ], [ 0, %bb.s ]
  %i.ct = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i64 noundef %.0.i)
          to label %bb.u unwind label %bb.v       ; 8 uses

bb.u:                                             ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit
  %6 = ptrtoaddr ptr %i.ct to i64
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !339 ; 10 uses
  %7 = ptrtoaddr ptr %i.cu to i64
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %._crit_edge75, label %_ZNK6vectorIPmLb0EjE4sizeEv.exit66

_ZNK6vectorIPmLb0EjE4sizeEv.exit66:               ; preds = %bb.u
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !330 ; 3 uses
  %.not4672 = icmp eq i32 %i.cx, 0
  br i1 %.not4672, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit66
  %i.cy = zext i32 %i.cx to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.cx, 8
  %i.cz = sub i64 %6, %7
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph74.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph74.preheader
  %n.vec = and i64 %i.cy, 4294967292              ; 2 uses
  %i.da = and i64 %i.cy, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = xor i64 %index, -1
  %i.dc = add i64 %i.db, %i.cy                    ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.de, align 8, !tbaa !394
  %wide.load94 = load <2 x ptr>, ptr %i.df, align 8, !tbaa !394
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dc ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -24
  store <2 x ptr> %wide.load, ptr %i.dh, align 8, !tbaa !394
  store <2 x ptr> %wide.load94, ptr %i.di, align 8, !tbaa !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cy
  br i1 %cmp.n, label %.loopexit, label %.lr.ph74.preheader95

.lr.ph74.preheader95:                             ; preds = %.lr.ph74.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cy, %.lr.ph74.preheader ], [ %i.da, %middle.block ] ; 4 uses
  %i.dk = add nsw i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %indvars.iv.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader95, %.lr.ph74.prol
  %indvars.iv.prol = phi i64 [ %i.dl, %.lr.ph74.prol ], [ %indvars.iv.ph, %.lr.ph74.preheader95 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader95 ]
  %i.dl = add nsw i64 %indvars.iv.prol, -1        ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !394
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !394
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !716

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader95
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph74.preheader95 ], [ %i.dl, %.lr.ph74.prol ]
  %i.dp = icmp ult i64 %i.dk, 3
  br i1 %i.dp, label %.loopexit, label %.lr.ph74

.loopexit:                                        ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block, %_ZNK6vectorIPmLb0EjE4sizeEv.exit66
  %i.dq = getelementptr inbounds i8, ptr %i.cu, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !330
  br label %._crit_edge75

bb.v:                                             ; preds = %_ZNK6vectorIPmLb0EjE4sizeEv.exit, %bb.r
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv = phi i64 [ %i.ef, %.lr.ph74 ], [ %indvars.iv.unr, %.lr.ph74.prol.loopexit ] ; 4 uses
  %i.dt = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !394
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dt
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !394
  %i.dx = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !394
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dx
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !394
  %i.eb = add nsw i64 %indvars.iv, -3             ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !394
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.eb
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !394
  %i.ef = add nsw i64 %indvars.iv, -4             ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !394
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.ef
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !394
  %.not46.wide.3 = icmp eq i64 %i.ef, 0
  br i1 %.not46.wide.3, label %.loopexit, label %.lr.ph74, !llvm.loop !717

._crit_edge75:                                    ; preds = %bb.u, %.loopexit
  %.0.i67 = phi i32 [ %i.dr, %.loopexit ], [ 0, %bb.u ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ah, ptr %i.ej, align 8, !tbaa !399
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ag, ptr %i.ek, align 8, !tbaa !400
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.af, ptr %i.el, align 8, !tbaa !401
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %2, ptr %i.em, align 4, !tbaa !402
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %.0.i67, ptr %i.en, align 8, !tbaa !403
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.ct, ptr %i.eo, align 8, !tbaa !404
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %3, ptr %i.ep, align 8, !tbaa !405
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %4, ptr %i.eq, align 8, !tbaa !406
  %.not.i.i.i69 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i69, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge75
  %i.er = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !334
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !tbaa !334
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.x, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull %i.ag)
          to label %._ZN7obj_refI4expr11ast_managerED2Ev.exit.i_crit_edge unwind label %bb.y

._ZN7obj_refI4expr11ast_managerED2Ev.exit.i_crit_edge: ; preds = %bb.x
  %.pre = load ptr, ptr %5, align 8, !tbaa !347
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  tail call void @__clang_call_terminate(ptr %i.ew) #19
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit.i:       ; preds = %._ZN7obj_refI4expr11ast_managerED2Ev.exit.i_crit_edge, %bb.w, %._crit_edge75
  %i.ex = phi ptr [ %.pre, %._ZN7obj_refI4expr11ast_managerED2Ev.exit.i_crit_edge ], [ %i.ah, %bb.w ], [ %i.ah, %._crit_edge75 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i1.i, label %_ZN1q3litD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i
  %i.ey = load ptr, ptr %i.l, align 8, !tbaa !348, !nonnull !228, !align !229
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !334
  %i.fb = add i32 %i.fa, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !334
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.aa, label %_ZN1q3litD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ey, ptr noundef nonnull %i.ex)
          to label %_ZN1q3litD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  tail call void @__clang_call_terminate(ptr %i.fe) #19
  unreachable

_ZN1q3litD2Ev.exit:                               ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i, %bb.z, %bb.aa
  %i.ff = ptrtoint ptr %i.g to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i64 %i.ff

bb.ac:                                            ; preds = %bb.k, %bb.n, %bb.v, %bb.b
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.b ], [ %i.bq, %bb.k ], [ %i.ds, %bb.v ], [ %i.cg, %bb.n ]
  call void @_ZN1q3litD2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn49.pn.pn
}

declare noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !347    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !348, !nonnull !228, !align !229
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !334
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !334
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN1q6ematch10init_watchEP4exprj:_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit
  %i.es = and i32 %i.er, -65537
  store i32 %i.es, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !342
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = and i32 %i.ew, -65537
  store i32 %i.ex, ptr %i.ev, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i49.3 = icmp eq ptr %i.ey, %i.dv
  br i1 %.not.i.i49.3, label %_ZN1q6ematch17scoped_mark_resetD2Ev.exit, label %.lr.ph.i.i48

_ZN1q6ematch17scoped_mark_resetD2Ev.exit:         ; preds = %.lr.ph.i.i48.prol.loopexit, %.lr.ph.i.i48, %bb.o
  store i32 0, ptr %i.e, align 8, !tbaa !247
  %i.ez = load ptr, ptr %3, align 8, !tbaa !458   ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.ez, %i.a
  %i.fa = icmp eq ptr %i.ez, null
  %or.cond.i.i.i51 = or i1 %.not.i.i.i50, %i.fa
  br i1 %or.cond.i.i.i51, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN1q6ematch17scoped_mark_resetD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ez)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #19
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %_ZN1q6ematch17scoped_mark_resetD2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.r:                                             ; preds = %bb.b, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.n ], [ %i.r, %bb.b ]
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !246 ; 3 uses
  %i.fe = load i32, ptr %i.e, align 8, !tbaa !247 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %.idx.i.i52 = shl nuw nsw i64 %i.ff, 3          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx.i.i52
  %.not8.i.i53 = icmp eq i32 %i.fe, 0
  br i1 %.not8.i.i53, label %_ZN1q6ematch17scoped_mark_resetD2Ev.exit57, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %bb.r
  %i.fh = add nsw i64 %.idx.i.i52, -8             ; 2 uses
  %i.fi = lshr exact i64 %i.fh, 3
  %i.fj = add nuw nsw i64 %i.fi, 1
  %xtraiter94 = and i64 %i.fj, 3                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol

.lr.ph.i.i54.prol:                                ; preds = %.lr.ph.i.i54.preheader, %.lr.ph.i.i54.prol
  %.09.i.i55.prol = phi ptr [ %i.fo, %.lr.ph.i.i54.prol ], [ %i.fd, %.lr.ph.i.i54.preheader ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph.i.i54.prol ], [ 0, %.lr.ph.i.i54.preheader ]
  %i.fk = load ptr, ptr %.09.i.i55.prol, align 8, !tbaa !342
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = and i32 %i.fm, -65537
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.09.i.i55.prol, i64 8 ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol, !llvm.loop !732

.lr.ph.i.i54.prol.loopexit:                       ; preds = %.lr.ph.i.i54.prol, %.lr.ph.i.i54.preheader
  %.09.i.i55.unr = phi ptr [ %i.fd, %.lr.ph.i.i54.preheader ], [ %i.fo, %.lr.ph.i.i54.prol ]
  %i.fp = icmp ult i64 %i.fh, 24
  br i1 %i.fp, label %_ZN1q6ematch17scoped_mark_resetD2Ev.exit57, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54
  %.09.i.i55 = phi ptr [ %i.gj, %.lr.ph.i.i54 ], [ %.09.i.i55.unr, %.lr.ph.i.i54.prol.loopexit ] ; 5 uses
  %i.fq = load ptr, ptr %.09.i.i55, align 8, !tbaa !342
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = and i32 %i.fs, -65537
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.09.i.i55, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !342
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, -65537
  store i32 %i.fy, ptr %i.fw, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.09.i.i55, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !342
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = and i32 %i.gc, -65537
  store i32 %i.gd, ptr %i.gb, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.09.i.i55, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !342
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = and i32 %i.gh, -65537
  store i32 %i.gi, ptr %i.gg, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.09.i.i55, i64 32 ; 2 uses
  %.not.i.i56.3 = icmp eq ptr %i.gj, %i.fg
  br i1 %.not.i.i56.3, label %_ZN1q6ematch17scoped_mark_resetD2Ev.exit57, label %.lr.ph.i.i54

_ZN1q6ematch17scoped_mark_resetD2Ev.exit57:       ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54, %bb.r
  store i32 0, ptr %i.e, align 8, !tbaa !247
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !458    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN1q6ematch10init_watchERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !466    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !363  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %_ZN6vectorIN1q3litELb1EjE3endEv.exit

_ZN6vectorIN1q3litELb1EjE3endEv.exit:             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !330  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a, %_ZN6vectorIN1q3litELb1EjE3endEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN6vectorIN1q3litELb1EjE3endEv.exit, %bb.c
  %.016 = phi ptr [ %i.aa, %bb.c ], [ %i.c, %_ZN6vectorIN1q3litELb1EjE3endEv.exit ] ; 3 uses
  %i.j = load ptr, ptr %.016, align 8, !tbaa !347 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65535
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_Z9is_groundPK4expr.exit, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit:                         ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 30
  %i.p = load i8, ptr %i.o, align 2
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit.thread:                  ; preds = %.lr.ph, %_Z9is_groundPK4expr.exit
  tail call void @_ZN1q6ematch10init_watchEP4exprj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.j, i32 noundef %i.a)
  br label %bb.b

bb.b:                                             ; preds = %_Z9is_groundPK4expr.exit.thread, %_Z9is_groundPK4expr.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !347  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 65535
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_Z9is_groundPK4expr.exit14, label %_Z9is_groundPK4expr.exit14.thread

_Z9is_groundPK4expr.exit14:                       ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 30
  %i.y = load i8, ptr %i.x, align 2
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %_Z9is_groundPK4expr.exit14.thread

_Z9is_groundPK4expr.exit14.thread:                ; preds = %bb.b, %_Z9is_groundPK4expr.exit14
  tail call void @_ZN1q6ematch10init_watchEP4exprj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.s, i32 noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %_Z9is_groundPK4expr.exit14.thread, %_Z9is_groundPK4expr.exit14
  %i.aa = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = ptrtoaddr ptr %3 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !364  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !237
  %i.g = icmp ugt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.d to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 48
  %i.k = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.j) ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !469
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %2, ptr %i.m, align 8, !tbaa !470
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !471
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !472
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 0, ptr %i.p, align 8, !tbaa !473
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236  ; 3 uses
  %.not.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i, label %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_Z7deallocIN1q7bindingEEvPT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
  br label %_Z7deallocIN1q7bindingEEvPT_.exit.i

_Z7deallocIN1q7bindingEEvPT_.exit.i:              ; preds = %bb.d, %bb.c
  store ptr %i.k, ptr %i.q, align 8, !tbaa !236
  br label %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit

_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit:        ; preds = %bb.b, %_Z7deallocIN1q7bindingEEvPT_.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !364  ; 2 uses
  store i32 %i.v, ptr %i.e, align 8, !tbaa !237
  br label %bb.e

bb.e:                                             ; preds = %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit, %bb.a
  %i.w = phi i32 [ %i.v, %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit ], [ %i.d, %bb.a ] ; 3 uses
  %.not13 = icmp eq i32 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !236 ; 5 uses
  %.pre19 = ptrtoaddr ptr %.pre to i64
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 6 uses
  %i.y = zext i32 %i.w to i64                     ; 6 uses
  %min.iters.check = icmp ult i32 %i.w, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.z = sub i64 %4, %.pre19
  %i.aa = add i64 %i.z, -49
  %diff.check = icmp ult i64 %i.aa, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4294967292               ; 2 uses
  %i.ab = and i64 %i.y, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = xor i64 %index, -1
  %i.ad = add i64 %i.ac, %i.y                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !383
  %wide.load20 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !383
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -24
  store <2 x ptr> %wide.load, ptr %i.ai, align 8, !tbaa !383
  store <2 x ptr> %wide.load20, ptr %i.aj, align 8, !tbaa !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !735

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.y
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph ], [ %i.ab, %middle.block ] ; 4 uses
  %i.al = add nsw i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %indvars.iv.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %i.am, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = add nsw i64 %indvars.iv.prol, -1        ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !383
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.am
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !383
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !736

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.aq = icmp ult i64 %i.al, 3
  br i1 %i.aq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store ptr %2, ptr %i.ar, align 8, !tbaa !470
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store ptr %1, ptr %i.as, align 8, !tbaa !469
  ret ptr %.pre

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %i.bf, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.at = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !383
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.at
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !383
  %i.ax = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !383
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ax
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !383
  %i.bb = add nsw i64 %indvars.iv, -3             ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !383
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bb
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !383
  %i.bf = add nsw i64 %indvars.iv, -4             ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !383
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bf
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !383
  %.not.wide.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.wide.3, label %._crit_edge, label %scalar.ph, !llvm.loop !737
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN1q6ematch13alloc_bindingERNS_6clauseEP3appPKPN3euf5enodeEjjj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !364  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !237
  %i.i = icmp ugt i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge40

._crit_edge40:                                    ; preds = %bb.a
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.pre.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !tbaa !236
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.f to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 48
  %i.m = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.l) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !469
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %2, ptr %i.o, align 8, !tbaa !470
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !471
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 0, ptr %i.q, align 4, !tbaa !472
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.r, align 8, !tbaa !473
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !236  ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, %i.m
  br i1 %.not.i.i, label %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_Z7deallocIN1q7bindingEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.t)
  br label %_Z7deallocIN1q7bindingEEvPT_.exit.i.i

_Z7deallocIN1q7bindingEEvPT_.exit.i.i:            ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %i.s, align 8, !tbaa !236
  br label %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i

_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i:      ; preds = %_Z7deallocIN1q7bindingEEvPT_.exit.i.i, %bb.b
  %.pre.i42 = phi ptr [ %i.m, %_Z7deallocIN1q7bindingEEvPT_.exit.i.i ], [ %i.t, %bb.b ]
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !364  ; 2 uses
  store i32 %i.x, ptr %i.g, align 8, !tbaa !237
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge40, %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i
  %.pre.i = phi ptr [ %.pre.i42, %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i ], [ %.pre.i.pre, %._crit_edge40 ] ; 5 uses
  %i.y = phi i32 [ %i.x, %_ZN10scoped_ptrIN1q7bindingEEaSEPS1_.exit.i ], [ %i.f, %._crit_edge40 ] ; 3 uses
  %.pre.i52 = ptrtoaddr ptr %.pre.i to i64
  %.not13.i = icmp eq i32 %i.y, 0
  br i1 %.not13.i, label %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 48 ; 6 uses
  %i.aa = zext i32 %i.y to i64                    ; 6 uses
  %min.iters.check = icmp ult i32 %i.y, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ab = sub i64 %7, %.pre.i52
  %i.ac = add i64 %i.ab, -49
  %diff.check = icmp ult i64 %i.ac, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4294967292              ; 2 uses
  %i.ad = and i64 %i.aa, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = xor i64 %index, -1
  %i.af = add i64 %i.ae, %i.aa                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !383
  %wide.load53 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !383
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.af ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -24
  store <2 x ptr> %wide.load, ptr %i.ak, align 8, !tbaa !383
  store <2 x ptr> %wide.load53, ptr %i.al, align 8, !tbaa !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !738

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aa
  br i1 %cmp.n, label %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i ], [ %i.ad, %middle.block ] ; 4 uses
  %i.an = add nsw i64 %indvars.iv.i.ph, -1
  %xtraiter = and i64 %indvars.iv.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %i.ao, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ao = add nsw i64 %indvars.iv.i.prol, -1      ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !383
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ao
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !383
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !739

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %i.as = icmp ult i64 %i.an, 3
  br i1 %i.as, label %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %i.bf, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.at = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !383
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.at
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !383
  %i.ax = add nsw i64 %indvars.iv.i, -2           ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !383
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ax
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !383
  %i.bb = add nsw i64 %indvars.iv.i, -3           ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !383
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bb
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !383
  %i.bf = add nsw i64 %indvars.iv.i, -4           ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !383
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bf
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !383
  %.not.wide.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.wide.i.3, label %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit, label %scalar.ph, !llvm.loop !740

_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store ptr %2, ptr %i.bj, align 8, !tbaa !470
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  store ptr %1, ptr %i.bk, align 8, !tbaa !469
  store ptr %.pre.i, ptr %i.b, align 8, !tbaa !474
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.bm = call noundef ptr @_ZNK14core_hashtableI14ptr_hash_entryIN1q7bindingEENS1_17binding_hash_procENS1_15binding_eq_procEE9find_coreERKPS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not28 = icmp eq ptr %i.bm, null
  br i1 %.not28, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !364 ; 3 uses
  %.not30 = icmp eq i32 %i.bp, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !474
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 5 uses
  %i.bs = zext i32 %i.bp to i64                   ; 3 uses
  %xtraiter69 = and i64 %i.bs, 3                  ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bt, %.prol.preheader ], [ %i.bs, %.lr.ph ]
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.bt = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !383
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !392
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !383
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !741

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bs, %.lr.ph ], [ %i.bt, %.prol.preheader ]
  %i.by = icmp ult i32 %i.bp, 4
  br i1 %i.by, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.f
  %i.bz = call noundef ptr @_ZNK14core_hashtableI14ptr_hash_entryIN1q7bindingEENS1_17binding_hash_procENS1_15binding_eq_procEE9find_coreERKPS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not29 = icmp eq ptr %i.bz, null
  br i1 %.not29, label %bb.g, label %bb.j

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.cp, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ca = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8     ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !383
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !392
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !383
  %i.cf = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !383
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !392
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !383
  %i.ck = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24    ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !383
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !392
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !383
  %i.cp = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !383
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !392
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !383
  %.not.wide.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.wide.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !742

bb.g:                                             ; preds = %._crit_edge
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !355
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !364 ; 4 uses
  %i.cx = shl i32 %i.cw, 3
  %i.cy = add i32 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 432
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef nonnull align 8 dereferenceable(40) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8528) %i.da)
  %i.df = zext i32 %i.cy to i64
  %i.dg = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.de, i64 noundef %i.df) ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %1, ptr %i.dh, align 8, !tbaa !469
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %2, ptr %i.di, align 8, !tbaa !470
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i32 %4, ptr %i.dj, align 8, !tbaa !471
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 36
  store i32 %5, ptr %i.dk, align 4, !tbaa !472
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 %6, ptr %i.dl, align 8, !tbaa !473
  store ptr %i.dg, ptr %i.b, align 8, !tbaa !474
  store ptr %i.dg, ptr %i.dg, align 8, !tbaa !475
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dg, ptr %i.dm, align 8, !tbaa !476
  %.not35 = icmp eq i32 %i.cw, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !474 ; 3 uses
  %.pre55 = ptrtoaddr ptr %.pre to i64
  br i1 %.not35, label %.noexc, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 6 uses
  %wide.trip.count = zext i32 %i.cw to i64        ; 5 uses
  %min.iters.check58 = icmp ult i32 %i.cw, 10
  br i1 %min.iters.check58, label %scalar.ph57.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph34
  %i.do = sub i64 %.pre55, %7
  %i.dp = add i64 %i.do, 47
  %diff.check56 = icmp ult i64 %i.dp, 31
  br i1 %diff.check56, label %scalar.ph57.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck54
  %n.vec60 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next65, %vector.body61 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index62 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load63 = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !383
  %wide.load64 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !383
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index62 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x ptr> %wide.load63, ptr %i.ds, align 8, !tbaa !383
  store <2 x ptr> %wide.load64, ptr %i.dt, align 8, !tbaa !383
  %index.next65 = add nuw i64 %index62, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.du, label %middle.block66, label %vector.body61, !llvm.loop !743

middle.block66:                                   ; preds = %vector.body61
  %cmp.n67 = icmp eq i64 %n.vec60, %wide.trip.count
  br i1 %cmp.n67, label %.noexc, label %scalar.ph57.preheader

scalar.ph57.preheader:                            ; preds = %vector.memcheck54, %.lr.ph34, %middle.block66
  %indvars.iv37.ph = phi i64 [ 0, %vector.memcheck54 ], [ 0, %.lr.ph34 ], [ %n.vec60, %middle.block66 ] ; 3 uses
  %xtraiter72 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %scalar.ph57.prol.loopexit, label %scalar.ph57.prol

scalar.ph57.prol:                                 ; preds = %scalar.ph57.preheader, %scalar.ph57.prol
  %indvars.iv37.prol = phi i64 [ %indvars.iv.next38.prol, %scalar.ph57.prol ], [ %indvars.iv37.ph, %scalar.ph57.preheader ] ; 3 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %scalar.ph57.prol ], [ 0, %scalar.ph57.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv37.prol
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !383
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv37.prol
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !383
  %indvars.iv.next38.prol = add nuw nsw i64 %indvars.iv37.prol, 1 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %scalar.ph57.prol.loopexit, label %scalar.ph57.prol, !llvm.loop !744

scalar.ph57.prol.loopexit:                        ; preds = %scalar.ph57.prol, %scalar.ph57.preheader
  %indvars.iv37.unr = phi i64 [ %indvars.iv37.ph, %scalar.ph57.preheader ], [ %indvars.iv.next38.prol, %scalar.ph57.prol ]
  %i.dy = sub nsw i64 %indvars.iv37.ph, %wide.trip.count
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.noexc, label %scalar.ph57

.noexc:                                           ; preds = %scalar.ph57.prol.loopexit, %scalar.ph57, %middle.block66, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %.pre, ptr %i.a, align 8, !tbaa !474
  call void @_ZN14core_hashtableI14ptr_hash_entryIN1q7bindingEENS1_17binding_hash_procENS1_15binding_eq_procEE6insertEOPS2_(ptr noundef nonnull align 8 dereferenceable(20) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ea = load ptr, ptr %i.cz, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !474
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 2184 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 2200
  %i.ee = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 noundef 24) ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV10insert_mapI13ptr_hashtableIN1q7bindingENS1_17binding_hash_procENS1_15binding_eq_procEEPS2_E, i64 16), ptr %i.ee, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.bl, ptr %i.ef, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr %i.eb, ptr %.sroa.6.8..sroa_idx, align 8
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !454 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.noexc27, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !330 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !330
  %i.em = icmp eq i32 %i.ej, %i.el
  br i1 %i.em, label %.noexc27, label %bb.i

.noexc27:                                         ; preds = %bb.h, %.noexc
  call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ec)
  %.pre.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !454 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !330
  br label %bb.i

scalar.ph57:                                      ; preds = %scalar.ph57.prol.loopexit, %scalar.ph57
  %indvars.iv37 = phi i64 [ %indvars.iv.next38.3, %scalar.ph57 ], [ %indvars.iv37.unr, %scalar.ph57.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv37
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !383
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv37
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !383
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next38
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !383
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next38
  store ptr %i.er, ptr %i.es, align 8, !tbaa !383
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next38.1
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !383
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next38.1
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !383
  %indvars.iv.next38.2 = add nuw nsw i64 %indvars.iv37, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next38.2
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !383
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next38.2
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !383
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next38.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.noexc, label %scalar.ph57, !llvm.loop !745

bb.i:                                             ; preds = %.noexc27, %bb.h
  %i.ez = phi i32 [ %.pre2.i.i.i, %.noexc27 ], [ %i.ej, %bb.h ] ; 2 uses
  %i.fa = phi ptr [ %.pre.i.i.i, %.noexc27 ], [ %i.eg, %bb.h ] ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fc = zext i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fc
  store ptr %i.ee, ptr %i.fd, align 8, !tbaa !456
  %i.fe = add i32 %i.ez, 1
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !330
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !474
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit, %bb.i
  %.0 = phi ptr [ %i.ff, %bb.i ], [ null, %_ZN1q6ematch11tmp_bindingERNS_6clauseEP3appPKPN3euf5enodeE.exit ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN1q6ematch10copy_nodesERNS_6clauseEPKPN3euf5enodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2688) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !364
  %i.e = shl i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8528) %i.g)
  %i.l = zext i32 %i.e to i64
  %i.m = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 noundef %i.l) ; 8 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !364  ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = ptrtoaddr ptr %i.m to i64
  %4 = ptrtoaddr ptr %2 to i64
  %wide.trip.count = zext i32 %i.p to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  %i.q = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x ptr>, ptr %i.r, align 8, !tbaa !383
  %wide.load12 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !383
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load, ptr %i.t, align 8, !tbaa !383
  store <2 x ptr> %wide.load12, ptr %i.u, align 8, !tbaa !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader13 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader13 ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !383
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  store ptr %i.x, ptr %i.y, align 8, !tbaa !383
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !747

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret ptr %i.m

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !383
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !383
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !383
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !383
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !383
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !383
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !383
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  store ptr %i.al, ptr %i.am, align 8, !tbaa !383
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !748
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN1q6ematch10on_bindingEP10quantifierP3appPKPN3euf5enodeEjjj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !477  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.f = load i32, ptr %i.e, align 8, !tbaa !239  ; 3 uses
  %i.g = add i32 %i.f, -1
  %i.h = and i32 %i.g, %i.d                       ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  %.not34.i.i.i.i = icmp eq i32 %i.h, %i.f
  br i1 %.not34.i.i.i.i, label %.lr.ph38.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.l = zext i32 %i.h to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.l, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.d
  %.035.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !479 ; 4 uses
  %i.o = icmp ult ptr %i.n, inttoptr (i64 2 to ptr)
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !477
  %i.r = icmp eq i32 %i.q, %i.d
  %i.s = icmp eq ptr %i.n, %1
  %or.cond.i.i.i.i = and i1 %i.s, %i.r
  br i1 %or.cond.i.i.i.i, label %_ZN7obj_mapI10quantifierjEixEPS0_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.k
  br i1 %.not.i.i.i.i, label %.lr.ph38.i.i.i.i.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph38.i.i.i.i.preheader:                       ; preds = %bb.d, %bb.a
  br label %.lr.ph38.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.lr.ph38.i.i.i.i.preheader, %.lr.ph38.backedge.i.i.i.i
  %.137.i.i.i.i = phi ptr [ %.pn.i.i, %.lr.ph38.backedge.i.i.i.i ], [ %i.i, %.lr.ph38.i.i.i.i.preheader ] ; 3 uses
  %i.u = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !479 ; 4 uses
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !477
  %i.y = icmp eq i32 %i.x, %i.d
  %i.z = icmp eq ptr %i.u, %1
  %or.cond31.i.i.i.i = and i1 %i.z, %i.y
  br i1 %or.cond31.i.i.i.i, label %_ZN7obj_mapI10quantifierjEixEPS0_.exit, label %.lr.ph38.backedge.i.i.i.i

bb.f:                                             ; preds = %.lr.ph38.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  br label %.lr.ph38.backedge.i.i.i.i

.lr.ph38.backedge.i.i.i.i:                        ; preds = %bb.f, %bb.e
  %.pn.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16
  br label %.lr.ph38.i.i.i.i, !llvm.loop !7

_ZN7obj_mapI10quantifierjEixEPS0_.exit:           ; preds = %bb.b, %bb.e
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.e ], [ %.035.i.i.i.i, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !330
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !405 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ah = tail call noundef ptr @_ZN1q6ematch13alloc_bindingERNS_6clauseEP3appPKPN3euf5enodeEjjj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) ; 14 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN7obj_mapI10quantifierjEixEPS0_.exit
  %i.ai = call noundef zeroext i1 @_ZN1q6ematch9propagateEbPKPN3euf5enodeEjRNS_6clauseERb(ptr noundef nonnull align 8 dereferenceable(2688) %0, i1 noundef zeroext false, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.ai, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 6 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !474 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !474
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !475
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ah, ptr %i.al, align 8, !tbaa !476
  br label %_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit

bb.j:                                             ; preds = %bb.h
  %.not26.i = icmp eq ptr %i.ak, %i.ah
  br i1 %.not26.i, label %_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !475 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !476 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !475
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !476
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !474
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !476
  store ptr %i.ah, ptr %i.as, align 8, !tbaa !475
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !474
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !476
  store ptr %i.av, ptr %i.an, align 8, !tbaa !476
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !474 ; 2 uses
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !475
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ah, ptr %i.ax, align 8, !tbaa !476
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !474
  br label %_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit

_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352, !nonnull !228, !align !229 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2184 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2200
  %i.bc = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 noundef 32) ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN1q6ematch14remove_bindingE, i64 16), ptr %i.bc, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.az, ptr %i.bd, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.ag, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ah, ptr %.sroa.7.8..sroa_idx, align 8
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !454 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.noexc18, label %bb.l

bb.l:                                             ; preds = %_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !330 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !330
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %.noexc18, label %bb.m

.noexc18:                                         ; preds = %bb.l, %_ZN8dll_baseIN1q7bindingEE13push_to_frontERPS1_S3_.exit
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ba)
  %.pre.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !454 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !330
  br label %bb.m

bb.m:                                             ; preds = %.noexc18, %bb.l
  %i.bl = phi i32 [ %.pre2.i.i.i, %.noexc18 ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bm = phi ptr [ %.pre.i.i.i, %.noexc18 ], [ %i.be, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = zext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  store ptr %i.bc, ptr %i.bp, align 8, !tbaa !456
  %i.bq = add i32 %i.bl, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !330
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !480
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !480
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %_ZN7obj_mapI10quantifierjEixEPS0_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN1q6ematch9propagateEbPKPN3euf5enodeEjRNS_6clauseERb(ptr noundef nonnull align 8 dereferenceable(2688) %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = ptrtoaddr ptr %2 to i64
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.c = load i8, ptr %i.b, align 8, !tbaa !255, !range !300, !noundef !228
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !352, !nonnull !228, !align !229
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !370
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3168
  %i.j = load i8, ptr %i.i, align 8, !tbaa !753, !range !300, !noundef !228
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 -1, ptr %i.a, align 4, !tbaa !330
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2592 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !340  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE5resetEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  store i32 0, ptr %i.n, align 4, !tbaa !330
  br label %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE5resetEv.exit

_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE5resetEv.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = call noundef i32 @_ZN1q4evalclEPKPN3euf5enodeERNS_6clauseERjR7svectorISt4pairIS3_S3_EjE(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 4 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE5resetEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2364 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !586
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !586
  br label %.loopexit

bb.f:                                             ; preds = %_ZN6vectorISt4pairIPN3euf5enodeES3_ELb0EjE5resetEv.exit
  %i.u = icmp eq i32 %i.p, 0                      ; 2 uses
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %4, align 8, !tbaa !466    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !351  ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %._crit_edge, label %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit

_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit:       ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !330 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g, %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !355
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !364 ; 2 uses
  %.not3845 = icmp eq i32 %i.aj, 0
  br i1 %.not3845, label %.loopexit, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %._crit_edge
  %i.ak = zext i32 %i.aj to i64
  br label %.lr.ph48

.lr.ph:                                           ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit, %.lr.ph
  %.03544 = phi ptr [ %i.am, %.lr.ph ], [ %i.z, %_ZNK6vectorIPN3euf5enodeELb0EjE3endEv.exit ] ; 2 uses
  %i.al = load ptr, ptr %.03544, align 8, !tbaa !383
  call void @_ZN1q6ematch9add_watchEPN3euf5enodeEj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.al, i32 noundef %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %.03544, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.af
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph48.preheader ], [ %i.an, %.lr.ph48 ]
  %i.an = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !383
  call void @_ZN1q6ematch9add_watchEPN3euf5enodeEj(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.ap, i32 noundef %i.x)
  %.not38.wide = icmp eq i64 %i.an, 0
  br i1 %.not38.wide, label %.loopexit, label %.lr.ph48, !llvm.loop !749

bb.h:                                             ; preds = %bb.f
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !249
  %i.as = icmp ugt i32 %3, %i.ar
  br i1 %i.as, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !355
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !364
  %i.ax = shl i32 %i.aw, 3
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !352, !nonnull !228, !align !229 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 432
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef nonnull align 8 dereferenceable(40) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(8528) %i.ay), !inline_history !754
  %i.bd = zext i32 %i.ax to i64
  %i.be = call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 noundef %i.bd) ; 8 uses
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !355
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !364 ; 3 uses
  %.not.i39 = icmp eq i32 %i.bh, 0
  br i1 %.not.i39, label %.loopexit42, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %7 = ptrtoaddr ptr %i.be to i64
  %wide.trip.count.i = zext i32 %i.bh to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %i.bh, 8
  %i.bi = sub i64 %6, %7
  %diff.check = icmp ugt i64 %i.bi, -32
  %or.cond59 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond59, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !383
  %wide.load58 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !383
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x ptr> %wide.load, ptr %i.bl, align 8, !tbaa !383
  store <2 x ptr> %wide.load58, ptr %i.bm, align 8, !tbaa !383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit42, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.prol
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !383
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i.prol
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !383
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !751

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.br = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %.loopexit42, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !383
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !383
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !383
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !383
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !383
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.1
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !383
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !383
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.2
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !383
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.loopexit42, label %.lr.ph.i, !llvm.loop !752

bb.l:                                             ; preds = %bb.j
  %i.cf = call noundef i64 @_ZN1q6ematch16mk_justificationEjjRNS_6clauseEPKPN3euf5enodeE(ptr noundef nonnull align 8 dereferenceable(2688) %0, i32 noundef %i.v, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %2)
  %i.cg = icmp eq i32 %i.p, -1
  call void @_ZN1q6ematch9propagateEbjm(ptr noundef nonnull align 8 dereferenceable(2688) %0, i1 noundef zeroext %i.cg, i32 poison, i64 noundef %i.cf)
  br label %bb.o

.loopexit42:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.k
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !330
  %i.ci = call noundef i64 @_ZN1q6ematch16mk_justificationEjjRNS_6clauseEPKPN3euf5enodeE(ptr noundef nonnull align 8 dereferenceable(2688) %0, i32 noundef %i.ch, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %i.be)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.ck = icmp eq i32 %i.p, -1
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !330
  %i.cm = zext i1 %i.ck to i8
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !238 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit42
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !330 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !330
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.n, label %_ZN6vectorIN1q6ematch4propELb0EjE9push_backEOS2_.exit

bb.n:                                             ; preds = %bb.m, %.loopexit42
  call void @_ZN6vectorIN1q6ematch4propELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  %.pre.i = load ptr, ptr %i.cj, align 8, !tbaa !238 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !330
  br label %_ZN6vectorIN1q6ematch4propELb0EjE9push_backEOS2_.exit

_ZN6vectorIN1q6ematch4propELb0EjE9push_backEOS2_.exit: ; preds = %bb.m, %bb.n
  %i.cu = phi i32 [ %.pre2.i, %bb.n ], [ %i.cq, %bb.m ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cw ; 3 uses
  store i8 %i.cm, ptr %i.cx, align 8, !tbaa !587
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.cl, ptr %.sroa.440.0..sroa_idx, align 4, !tbaa !330
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.ci, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !755
  %i.cy = getelementptr inbounds i8, ptr %i.cv, i64 -4
  %i.cz = add i32 %i.cu, 1
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !330
  br label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIN1q6ematch4propELb0EjE9push_backEOS2_.exit, %bb.l
  store i8 1, ptr %5, align 1, !tbaa !587
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph48, %._crit_edge, %bb.i, %bb.o, %bb.e
  %.034 = phi i1 [ true, %bb.e ], [ true, %bb.o ], [ false, %bb.i ], [ false, %._crit_edge ], [ false, %.lr.ph48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.1 = phi i1 [ false, %bb.a ], [ %.034, %.loopexit ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef i32 @_ZN1q4evalclEPKPN3euf5enodeERNS_6clauseERjR7svectorISt4pairIS3_S3_EjE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN1q6ematch9propagateEbjm(ptr noundef nonnull align 8 dereferenceable(2688) %0, i1 noundef zeroext %1, i32 %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.153, align 8         ; 13 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !588
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !588
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !589
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !589
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = inttoptr i64 %3 to ptr                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !410
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !407, !nonnull !228, !align !229
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.0.0.copyload = load i32, ptr %i.k, align 4, !tbaa !330
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = xor i32 %.sroa.0.0.copyload, 1
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !410 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !330 ; 2 uses
  %i.m = zext i32 %.pre2.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !330
  %i.o = add i32 %.pre2.i, 1
  store i32 %i.o, ptr %.phi.trans.insert.i, align 4, !tbaa !330
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !407, !nonnull !228, !align !229 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !363  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %_ZNK1q6clause4sizeEv.exit.lr.ph

_ZNK1q6clause4sizeEv.exit.lr.ph:                  ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !330
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %.lr.ph

_ZNK1q6clause4sizeEv.exit:                        ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !330
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
end_hunk_1
