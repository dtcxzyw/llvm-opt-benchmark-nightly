Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_base?download=true
inline.NumInlined: 7666
inline.NumDeleted: 1626
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN3sls10arith_baseI8rationalE5mk_opE13arith_op_kindP4exprS5_S5_:bb.a
  %i.bb = and i8 %i.ba, -4
  store i8 %i.bb, ptr %i.az, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.bc, align 8, !tbaa !82
  %i.bd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84
  store i32 0, ptr %6, align 8, !tbaa !81
  store i8 %i.aw, ptr %i.au, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_ZN8rationalC2Ei.exit unwind label %bb.y

_ZN8rationalC2Ei.exit:                            ; preds = %bb.i
  %i.be = load i8, ptr %i.az, align 4
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !372, !noalias !1345
  %i.bg = zext i32 %i.b to i64
  %i.bh = getelementptr inbounds nuw [304 x i8], ptr %i.bf, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  store i32 0, ptr %8, align 8, !tbaa !81, !alias.scope !1345
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 4, !alias.scope !1345
  %i.bl = and i8 %i.bk, -4                        ; 2 uses
  store i8 %i.bl, ptr %i.bj, align 4, !alias.scope !1345
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !82, !alias.scope !1345
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i32 1, ptr %i.bn, align 8, !tbaa !81, !alias.scope !1345
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 4, !alias.scope !1345
  %i.bq = and i8 %i.bp, -4
  store i8 %i.bq, ptr %i.bo, align 4, !alias.scope !1345
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.br, align 8, !tbaa !82, !alias.scope !1345
  %i.bs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1345 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bu = load i8, ptr %i.bt, align 4, !noalias !1345
  %i.bv = and i8 %i.bu, 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = load i32, ptr %i.bi, align 8, !tbaa !81, !noalias !1345
  store i32 %i.bx, ptr %8, align 8, !tbaa !81, !alias.scope !1345
  store i8 %i.bl, ptr %i.bj, align 4, !alias.scope !1345
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i136

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i136 unwind label %bb.z

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i136: ; preds = %bb.l, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 60
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, 1
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i136
  %i.cd = load i32, ptr %i.by, align 8, !tbaa !81
  store i32 %i.cd, ptr %i.bn, align 8, !tbaa !81, !alias.scope !1345
  %i.ce = load i8, ptr %i.bo, align 4, !alias.scope !1345
  %i.cf = and i8 %i.ce, -2
  store i8 %i.cf, ptr %i.bo, align 4, !alias.scope !1345
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit139

bb.n:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i136
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit139 unwind label %bb.z

_ZNK3sls10arith_baseI8rationalE5valueEj.exit139:  ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.cg = load ptr, ptr %i.r, align 8, !tbaa !372, !noalias !1346
  %i.ch = getelementptr inbounds nuw [304 x i8], ptr %i.cg, i64 %i.t ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  store i32 0, ptr %9, align 8, !tbaa !81, !alias.scope !1346
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 4, !alias.scope !1346
  %i.cl = and i8 %i.ck, -4                        ; 2 uses
  store i8 %i.cl, ptr %i.cj, align 4, !alias.scope !1346
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !82, !alias.scope !1346
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 1, ptr %i.cn, align 8, !tbaa !81, !alias.scope !1346
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.cp = load i8, ptr %i.co, align 4, !alias.scope !1346
  %i.cq = and i8 %i.cp, -4
  store i8 %i.cq, ptr %i.co, align 4, !alias.scope !1346
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.cr, align 8, !tbaa !82, !alias.scope !1346
  %i.cs = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1346 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %i.cu = load i8, ptr %i.ct, align 4, !noalias !1346
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit139
  %i.cx = load i32, ptr %i.ci, align 8, !tbaa !81, !noalias !1346
  store i32 %i.cx, ptr %9, align 8, !tbaa !81, !alias.scope !1346
  store i8 %i.cl, ptr %i.cj, align 4, !alias.scope !1346
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i140

bb.p:                                             ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit139
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i140 unwind label %bb.aa

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i140: ; preds = %bb.p, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 60
  %i.da = load i8, ptr %i.cz, align 4
  %i.db = and i8 %i.da, 1
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i140
  %i.dd = load i32, ptr %i.cy, align 8, !tbaa !81
  store i32 %i.dd, ptr %i.cn, align 8, !tbaa !81, !alias.scope !1346
  %i.de = load i8, ptr %i.co, align 4, !alias.scope !1346
  %i.df = and i8 %i.de, -2
  store i8 %i.df, ptr %i.co, align 4, !alias.scope !1346
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit143

bb.r:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i140
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit143 unwind label %bb.aa

_ZNK3sls10arith_baseI8rationalE5valueEj.exit143:  ; preds = %bb.q, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  store i32 0, ptr %6, align 8, !tbaa !81, !alias.scope !1347
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 4, !alias.scope !1347
  %i.di = and i8 %i.dh, -4
  store i8 %i.di, ptr %i.dg, align 4, !alias.scope !1347
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !82, !alias.scope !1347
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 1, ptr %i.dk, align 8, !tbaa !81, !alias.scope !1347
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 4, !alias.scope !1347
  %i.dn = and i8 %i.dm, -4
  store i8 %i.dn, ptr %i.dl, align 4, !alias.scope !1347
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr null, ptr %i.do, align 8, !tbaa !82, !alias.scope !1347
  %i.dp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1347 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3modERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i unwind label %.body

.noexc.i:                                         ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit143
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dk)
          to label %_Z3modRK8rationalS1_.exit unwind label %.body

.body:                                            ; preds = %.noexc.i, %_ZNK3sls10arith_baseI8rationalE5valueEj.exit143
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #24
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #24
  br label %bb.ab

_Z3modRK8rationalS1_.exit:                        ; preds = %.noexc.i
  %i.dr = load i8, ptr %i.dl, align 4, !alias.scope !1347
  br label %bb.s

bb.s:                                             ; preds = %_Z3modRK8rationalS1_.exit, %_ZN8rationalC2Ei.exit
  %.sink = phi i8 [ %i.dr, %_Z3modRK8rationalS1_.exit ], [ %i.be, %_ZN8rationalC2Ei.exit ] ; 2 uses
  %i.ds = load i32, ptr %5, align 8, !tbaa !128
  %i.dt = load i32, ptr %6, align 8, !tbaa !128
  store i32 %i.dt, ptr %5, align 8, !tbaa !128
  store i32 %i.ds, ptr %6, align 8, !tbaa !128
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.l, align 8, !tbaa !410
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !410
  store ptr %i.dw, ptr %i.l, align 8, !tbaa !410
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !410
  %i.dx = load i8, ptr %i.i, align 4              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 4             ; 2 uses
  %i.ea = and i8 %i.dx, -4
  %i.eb = and i8 %i.dz, -4
  %i.ec = and i8 %i.dz, 3
  %i.ed = or disjoint i8 %i.ec, %i.ea
  store i8 %i.ed, ptr %i.i, align 4
  %i.ee = and i8 %i.dx, 3
  %i.ef = or disjoint i8 %i.eb, %i.ee
  store i8 %i.ef, ptr %i.dy, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !128
  store i32 1, ptr %i.m, align 8, !tbaa !128
  store i32 %i.eh, ptr %i.eg, align 8, !tbaa !128
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !410
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !410
  store ptr %i.ek, ptr %i.q, align 8, !tbaa !410
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !410
  %i.el = load i8, ptr %i.n, align 4              ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.en = and i8 %.sink, 2
  %i.eo = and i8 %i.el, -4
  %30 = or disjoint i8 %i.en, %i.eo
  %31 = and i8 %.sink, -4
  store i8 %30, ptr %i.n, align 4
  %i.ep = and i8 %i.el, 3
  %i.eq = or disjoint i8 %31, %i.ep
  store i8 %i.eq, ptr %i.em, align 4
  %i.er = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i144 unwind label %bb.t

.noexc.i144:                                      ; preds = %bb.s
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.noexc.i144, %bb.s
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #26
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i144
  br i1 %i.at, label %.critedge125, label %.critedge

.critedge:                                        ; preds = %_ZN8rationalD2Ev.exit
  %i.eu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i145 unwind label %bb.u

.noexc.i145:                                      ; preds = %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev)
          to label %_ZN8rationalD2Ev.exit146 unwind label %bb.u

bb.u:                                             ; preds = %.noexc.i145, %.critedge
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #26
  unreachable

_ZN8rationalD2Ev.exit146:                         ; preds = %.noexc.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ey = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i147 unwind label %bb.v

.noexc.i147:                                      ; preds = %_ZN8rationalD2Ev.exit146
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ez)
          to label %_ZN8rationalD2Ev.exit148 unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i147, %_ZN8rationalD2Ev.exit146
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #26
  unreachable

_ZN8rationalD2Ev.exit148:                         ; preds = %.noexc.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge125

.critedge125:                                     ; preds = %_ZN8rationalD2Ev.exit, %_ZN8rationalD2Ev.exit148
  %i.fc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i149 unwind label %bb.w

.noexc.i149:                                      ; preds = %.critedge125
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_ZN8rationalD2Ev.exit150 unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i149, %.critedge125
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #26
  unreachable

_ZN8rationalD2Ev.exit150:                         ; preds = %.noexc.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.fn

bb.x:                                             ; preds = %bb.g, %bb.e
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %bb.i, %_ZNK3sls10arith_baseI8rationalE5valueEj.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.z:                                             ; preds = %bb.n, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r, %bb.p
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body
  %.pn114 = phi { ptr, i32 } [ %i.dq, %.body ], [ %i.fi, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.pn114.pn = phi { ptr, i32 } [ %.pn114, %bb.ab ], [ %i.fh, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.pn117 = phi { ptr, i32 } [ %i.fg, %bb.y ], [ %.pn114.pn, %bb.ac ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.x
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %bb.ad ], [ %i.ff, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ge

bb.af:                                            ; preds = %_ZNK6vectorIN3sls10arith_baseI8rationalE6op_defELb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !372, !noalias !1348
  %i.fl = zext i32 %i.c to i64                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [304 x i8], ptr %i.fk, i64 %i.fl ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 2 uses
  store i32 0, ptr %10, align 8, !tbaa !81, !alias.scope !1348
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 4, !alias.scope !1348
  %i.fq = and i8 %i.fp, -4                        ; 2 uses
  store i8 %i.fq, ptr %i.fo, align 4, !alias.scope !1348
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.fr, align 8, !tbaa !82, !alias.scope !1348
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i32 1, ptr %i.fs, align 8, !tbaa !81, !alias.scope !1348
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 4 uses
  %i.fu = load i8, ptr %i.ft, align 4, !alias.scope !1348
  %i.fv = and i8 %i.fu, -4
  store i8 %i.fv, ptr %i.ft, align 4, !alias.scope !1348
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.fw, align 8, !tbaa !82, !alias.scope !1348
  %i.fx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1348 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.fz = load i8, ptr %i.fy, align 4, !noalias !1348
  %i.ga = and i8 %i.fz, 1
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gc = load i32, ptr %i.fn, align 8, !tbaa !81, !noalias !1348
  store i32 %i.gc, ptr %10, align 8, !tbaa !81, !alias.scope !1348
  store i8 %i.fq, ptr %i.fo, align 4, !alias.scope !1348
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i151

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.fn)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i151 unwind label %bb.an

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i151: ; preds = %bb.ah, %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 56 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 60
  %i.gf = load i8, ptr %i.ge, align 4
  %i.gg = and i8 %i.gf, 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i151
  %i.gi = load i32, ptr %i.gd, align 8, !tbaa !81
  store i32 %i.gi, ptr %i.fs, align 8, !tbaa !81, !alias.scope !1348
  %i.gj = load i8, ptr %i.ft, align 4, !alias.scope !1348
  %i.gk = and i8 %i.gj, -2
  store i8 %i.gk, ptr %i.ft, align 4, !alias.scope !1348
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit154

bb.aj:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i151
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit154 unwind label %bb.an

_ZNK3sls10arith_baseI8rationalE5valueEj.exit154:  ; preds = %bb.ai, %bb.aj
  %i.gl = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit154
  %i.gm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i155 unwind label %bb.al

.noexc.i155:                                      ; preds = %bb.ak
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %_ZN8rationalD2Ev.exit156 unwind label %bb.al

bb.al:                                            ; preds = %.noexc.i155, %bb.ak
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #26
  unreachable
end_hunk_0
begin_hunk_1_@_ZN3sls10arith_baseI8rationalE5mk_opE13arith_op_kindP4exprS5_S5_:bb.a
  %i.lr = and i8 %i.lq, -4
  store i8 %i.lr, ptr %i.lp, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr null, ptr %i.ls, align 8, !tbaa !82
  %i.lt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84
  store i32 0, ptr %13, align 8, !tbaa !81
  store i8 %i.lm, ptr %i.lk, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.lt, ptr noundef nonnull align 8 dereferenceable(16) %i.lo)
          to label %_ZN8rationalC2Ei.exit177 unwind label %bb.cc

_ZN8rationalC2Ei.exit177:                         ; preds = %bb.bm
  %i.lu = load i8, ptr %i.lp, align 4
  br label %bb.bw

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.lv = load ptr, ptr %i.kh, align 8, !tbaa !372, !noalias !1352
  %i.lw = zext i32 %i.b to i64
  %i.lx = getelementptr inbounds nuw [304 x i8], ptr %i.lv, i64 %i.lw ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40 ; 2 uses
  store i32 0, ptr %15, align 8, !tbaa !81, !alias.scope !1352
  %i.lz = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.ma = load i8, ptr %i.lz, align 4, !alias.scope !1352
  %i.mb = and i8 %i.ma, -4                        ; 2 uses
  store i8 %i.mb, ptr %i.lz, align 4, !alias.scope !1352
  %i.mc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.mc, align 8, !tbaa !82, !alias.scope !1352
  %i.md = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store i32 1, ptr %i.md, align 8, !tbaa !81, !alias.scope !1352
  %i.me = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 4 uses
  %i.mf = load i8, ptr %i.me, align 4, !alias.scope !1352
  %i.mg = and i8 %i.mf, -4
  store i8 %i.mg, ptr %i.me, align 4, !alias.scope !1352
  %i.mh = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr null, ptr %i.mh, align 8, !tbaa !82, !alias.scope !1352
  %i.mi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1352 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 44
  %i.mk = load i8, ptr %i.mj, align 4, !noalias !1352
  %i.ml = and i8 %i.mk, 1
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mn = load i32, ptr %i.ly, align 8, !tbaa !81, !noalias !1352
  store i32 %i.mn, ptr %15, align 8, !tbaa !81, !alias.scope !1352
  store i8 %i.mb, ptr %i.lz, align 4, !alias.scope !1352
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i178

bb.bp:                                            ; preds = %bb.bn
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ly)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i178 unwind label %bb.cd

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i178: ; preds = %bb.bp, %bb.bo
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lx, i64 56 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lx, i64 60
  %i.mq = load i8, ptr %i.mp, align 4
  %i.mr = and i8 %i.mq, 1
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i178
  %i.mt = load i32, ptr %i.mo, align 8, !tbaa !81
  store i32 %i.mt, ptr %i.md, align 8, !tbaa !81, !alias.scope !1352
  %i.mu = load i8, ptr %i.me, align 4, !alias.scope !1352
  %i.mv = and i8 %i.mu, -2
  store i8 %i.mv, ptr %i.me, align 4, !alias.scope !1352
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit181

bb.br:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i178
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.mi, ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %i.mo)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit181 unwind label %bb.cd

_ZNK3sls10arith_baseI8rationalE5valueEj.exit181:  ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.mw = load ptr, ptr %i.kh, align 8, !tbaa !372, !noalias !1353
  %i.mx = getelementptr inbounds nuw [304 x i8], ptr %i.mw, i64 %i.kj ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 40 ; 2 uses
  store i32 0, ptr %16, align 8, !tbaa !81, !alias.scope !1353
  %i.mz = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  %i.na = load i8, ptr %i.mz, align 4, !alias.scope !1353
  %i.nb = and i8 %i.na, -4                        ; 2 uses
  store i8 %i.nb, ptr %i.mz, align 4, !alias.scope !1353
  %i.nc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.nc, align 8, !tbaa !82, !alias.scope !1353
  %i.nd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 1, ptr %i.nd, align 8, !tbaa !81, !alias.scope !1353
  %i.ne = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 4 uses
  %i.nf = load i8, ptr %i.ne, align 4, !alias.scope !1353
  %i.ng = and i8 %i.nf, -4
  store i8 %i.ng, ptr %i.ne, align 4, !alias.scope !1353
  %i.nh = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr null, ptr %i.nh, align 8, !tbaa !82, !alias.scope !1353
  %i.ni = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1353 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mx, i64 44
  %i.nk = load i8, ptr %i.nj, align 4, !noalias !1353
  %i.nl = and i8 %i.nk, 1
  %i.nm = icmp eq i8 %i.nl, 0
  br i1 %i.nm, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit181
  %i.nn = load i32, ptr %i.my, align 8, !tbaa !81, !noalias !1353
  store i32 %i.nn, ptr %16, align 8, !tbaa !81, !alias.scope !1353
  store i8 %i.nb, ptr %i.mz, align 4, !alias.scope !1353
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i182

bb.bt:                                            ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit181
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ni, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.my)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i182 unwind label %bb.ce

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i182: ; preds = %bb.bt, %bb.bs
  %i.no = getelementptr inbounds nuw i8, ptr %i.mx, i64 56 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.mx, i64 60
  %i.nq = load i8, ptr %i.np, align 4
  %i.nr = and i8 %i.nq, 1
  %i.ns = icmp eq i8 %i.nr, 0
  br i1 %i.ns, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i182
  %i.nt = load i32, ptr %i.no, align 8, !tbaa !81
  store i32 %i.nt, ptr %i.nd, align 8, !tbaa !81, !alias.scope !1353
  %i.nu = load i8, ptr %i.ne, align 4, !alias.scope !1353
  %i.nv = and i8 %i.nu, -2
  store i8 %i.nv, ptr %i.ne, align 4, !alias.scope !1353
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit185

bb.bv:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i182
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ni, ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(16) %i.no)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit185 unwind label %bb.ce

_ZNK3sls10arith_baseI8rationalE5valueEj.exit185:  ; preds = %bb.bu, %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  store i32 0, ptr %13, align 8, !tbaa !81, !alias.scope !1354
  %i.nw = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.nx = load i8, ptr %i.nw, align 4, !alias.scope !1354
  %i.ny = and i8 %i.nx, -4
  store i8 %i.ny, ptr %i.nw, align 4, !alias.scope !1354
  %i.nz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.nz, align 8, !tbaa !82, !alias.scope !1354
  %i.oa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store i32 1, ptr %i.oa, align 8, !tbaa !81, !alias.scope !1354
  %i.ob = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 3 uses
  %i.oc = load i8, ptr %i.ob, align 4, !alias.scope !1354
  %i.od = and i8 %i.oc, -4
  store i8 %i.od, ptr %i.ob, align 4, !alias.scope !1354
  %i.oe = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr null, ptr %i.oe, align 8, !tbaa !82, !alias.scope !1354
  %i.of = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1354 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i186 unwind label %.body187

.noexc.i186:                                      ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit185
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.of, ptr noundef nonnull align 8 dereferenceable(16) %i.oa)
          to label %_Z3divRK8rationalS1_.exit unwind label %.body187

.body187:                                         ; preds = %.noexc.i186, %_ZNK3sls10arith_baseI8rationalE5valueEj.exit185
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #24
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #24
  br label %bb.cf

_Z3divRK8rationalS1_.exit:                        ; preds = %.noexc.i186
  %i.oh = load i8, ptr %i.ob, align 4, !alias.scope !1354
  br label %bb.bw

bb.bw:                                            ; preds = %_Z3divRK8rationalS1_.exit, %_ZN8rationalC2Ei.exit177
  %.sink312 = phi i8 [ %i.oh, %_Z3divRK8rationalS1_.exit ], [ %i.lu, %_ZN8rationalC2Ei.exit177 ] ; 2 uses
  %i.oi = load i32, ptr %5, align 8, !tbaa !128
  %i.oj = load i32, ptr %13, align 8, !tbaa !128
  store i32 %i.oj, ptr %5, align 8, !tbaa !128
  store i32 %i.oi, ptr %13, align 8, !tbaa !128
  %i.ok = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.l, align 8, !tbaa !410
  %i.om = load ptr, ptr %i.ok, align 8, !tbaa !410
  store ptr %i.om, ptr %i.l, align 8, !tbaa !410
  store ptr %i.ol, ptr %i.ok, align 8, !tbaa !410
  %i.on = load i8, ptr %i.i, align 4              ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 4             ; 2 uses
  %i.oq = and i8 %i.on, -4
  %i.or = and i8 %i.op, -4
  %i.os = and i8 %i.op, 3
  %i.ot = or disjoint i8 %i.os, %i.oq
  store i8 %i.ot, ptr %i.i, align 4
  %i.ou = and i8 %i.on, 3
  %i.ov = or disjoint i8 %i.or, %i.ou
  store i8 %i.ov, ptr %i.oo, align 4
  %i.ow = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ox = load i32, ptr %i.m, align 8, !tbaa !128
  store i32 1, ptr %i.m, align 8, !tbaa !128
  store i32 %i.ox, ptr %i.ow, align 8, !tbaa !128
  %i.oy = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.oz = load ptr, ptr %i.q, align 8, !tbaa !410
  %i.pa = load ptr, ptr %i.oy, align 8, !tbaa !410
  store ptr %i.pa, ptr %i.q, align 8, !tbaa !410
  store ptr %i.oz, ptr %i.oy, align 8, !tbaa !410
  %i.pb = load i8, ptr %i.n, align 4              ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.pd = and i8 %.sink312, 2
  %i.pe = and i8 %i.pb, -4
  %32 = or disjoint i8 %i.pd, %i.pe
  %33 = and i8 %.sink312, -4
  store i8 %32, ptr %i.n, align 4
  %i.pf = and i8 %i.pb, 3
  %i.pg = or disjoint i8 %33, %i.pf
  store i8 %i.pg, ptr %i.pc, align 4
  %i.ph = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc.i189 unwind label %bb.bx

.noexc.i189:                                      ; preds = %bb.bw
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.ow)
          to label %_ZN8rationalD2Ev.exit190 unwind label %bb.bx

bb.bx:                                            ; preds = %.noexc.i189, %bb.bw
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #26
  unreachable

_ZN8rationalD2Ev.exit190:                         ; preds = %.noexc.i189
  br i1 %i.lj, label %.critedge129, label %.critedge127

.critedge127:                                     ; preds = %_ZN8rationalD2Ev.exit190
  %i.pk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc.i191 unwind label %bb.by

.noexc.i191:                                      ; preds = %.critedge127
  %i.pl = getelementptr inbounds nuw i8, ptr %16, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.pk, ptr noundef nonnull align 8 dereferenceable(16) %i.pl)
          to label %_ZN8rationalD2Ev.exit192 unwind label %bb.by

bb.by:                                            ; preds = %.noexc.i191, %.critedge127
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #26
  unreachable

_ZN8rationalD2Ev.exit192:                         ; preds = %.noexc.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.po = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.po, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc.i193 unwind label %bb.bz

.noexc.i193:                                      ; preds = %_ZN8rationalD2Ev.exit192
  %i.pp = getelementptr inbounds nuw i8, ptr %15, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.po, ptr noundef nonnull align 8 dereferenceable(16) %i.pp)
          to label %_ZN8rationalD2Ev.exit194 unwind label %bb.bz

bb.bz:                                            ; preds = %.noexc.i193, %_ZN8rationalD2Ev.exit192
  %i.pq = landingpad { ptr, i32 }
          catch ptr null
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0
  call void @__clang_call_terminate(ptr %i.pr) #26
  unreachable

_ZN8rationalD2Ev.exit194:                         ; preds = %.noexc.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.critedge129

.critedge129:                                     ; preds = %_ZN8rationalD2Ev.exit190, %_ZN8rationalD2Ev.exit194
  %i.ps = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc.i195 unwind label %bb.ca

.noexc.i195:                                      ; preds = %.critedge129
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ps, ptr noundef nonnull align 8 dereferenceable(16) %i.kq)
          to label %_ZN8rationalD2Ev.exit196 unwind label %bb.ca

bb.ca:                                            ; preds = %.noexc.i195, %.critedge129
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  call void @__clang_call_terminate(ptr %i.pu) #26
  unreachable

_ZN8rationalD2Ev.exit196:                         ; preds = %.noexc.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.fn

bb.cb:                                            ; preds = %bb.bk, %bb.bi
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cc:                                            ; preds = %bb.bm, %_ZNK3sls10arith_baseI8rationalE5valueEj.exit175
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %bb.br, %bb.bp
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bv, %bb.bt
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.body187
  %.pn104 = phi { ptr, i32 } [ %i.og, %.body187 ], [ %i.py, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.cf
  %.pn104.pn = phi { ptr, i32 } [ %.pn104, %bb.cf ], [ %i.px, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cc
  %.pn107 = phi { ptr, i32 } [ %i.pw, %bb.cc ], [ %.pn104.pn, %bb.cg ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #24
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cb
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.ch ], [ %i.pv, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ge

bb.cj:                                            ; preds = %_ZNK6vectorIN3sls10arith_baseI8rationalE6op_defELb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !372, !noalias !1355
  %i.qb = zext i32 %i.c to i64                    ; 2 uses
  %i.qc = getelementptr inbounds nuw [304 x i8], ptr %i.qa, i64 %i.qb ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 40 ; 2 uses
  store i32 0, ptr %18, align 8, !tbaa !81, !alias.scope !1355
  %i.qe = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 3 uses
  %i.qf = load i8, ptr %i.qe, align 4, !alias.scope !1355
  %i.qg = and i8 %i.qf, -4                        ; 2 uses
  store i8 %i.qg, ptr %i.qe, align 4, !alias.scope !1355
  %i.qh = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.qh, align 8, !tbaa !82, !alias.scope !1355
  %i.qi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store i32 1, ptr %i.qi, align 8, !tbaa !81, !alias.scope !1355
  %i.qj = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 4 uses
  %i.qk = load i8, ptr %i.qj, align 4, !alias.scope !1355
  %i.ql = and i8 %i.qk, -4
  store i8 %i.ql, ptr %i.qj, align 4, !alias.scope !1355
  %i.qm = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr null, ptr %i.qm, align 8, !tbaa !82, !alias.scope !1355
  %i.qn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !84, !noalias !1355 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qc, i64 44
  %i.qp = load i8, ptr %i.qo, align 4, !noalias !1355
  %i.qq = and i8 %i.qp, 1
  %i.qr = icmp eq i8 %i.qq, 0
  br i1 %i.qr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qs = load i32, ptr %i.qd, align 8, !tbaa !81, !noalias !1355
  store i32 %i.qs, ptr %18, align 8, !tbaa !81, !alias.scope !1355
  store i8 %i.qg, ptr %i.qe, align 4, !alias.scope !1355
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i197

bb.cl:                                            ; preds = %bb.cj
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.qn, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.qd)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i197 unwind label %bb.de

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i197: ; preds = %bb.cl, %bb.ck
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qc, i64 56 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 60
  %i.qv = load i8, ptr %i.qu, align 4
  %i.qw = and i8 %i.qv, 1
  %i.qx = icmp eq i8 %i.qw, 0
  br i1 %i.qx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i197
  %i.qy = load i32, ptr %i.qt, align 8, !tbaa !81
  store i32 %i.qy, ptr %i.qi, align 8, !tbaa !81, !alias.scope !1355
  %i.qz = load i8, ptr %i.qj, align 4, !alias.scope !1355
  %i.ra = and i8 %i.qz, -2
  store i8 %i.ra, ptr %i.qj, align 4, !alias.scope !1355
  br label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit200

bb.cn:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i197
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.qn, ptr noundef nonnull align 8 dereferenceable(16) %i.qi, ptr noundef nonnull align 8 dereferenceable(16) %i.qt)
          to label %_ZNK3sls10arith_baseI8rationalE5valueEj.exit200 unwind label %bb.de

_ZNK3sls10arith_baseI8rationalE5valueEj.exit200:  ; preds = %bb.cm, %bb.cn
  %i.rb = invoke noundef zeroext i1 @_ZeqRK8rationali(ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 0)
          to label %bb.co unwind label %bb.df     ; 2 uses

bb.co:                                            ; preds = %_ZNK3sls10arith_baseI8rationalE5valueEj.exit200
  br i1 %i.rb, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.rc = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 4
  %i.re = and i8 %i.rd, -4
  %i.rf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.rf, align 8, !tbaa !82
  %i.rg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store i32 1, ptr %i.rg, align 8, !tbaa !81
  %i.rh = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 3 uses
  %i.ri = load i8, ptr %i.rh, align 4
  %i.rj = and i8 %i.ri, -4
end_hunk_1
