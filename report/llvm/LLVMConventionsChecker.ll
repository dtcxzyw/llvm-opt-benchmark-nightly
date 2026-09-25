Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMConventionsChecker?download=true
inline.NumInlined: 1354
inline.NumDeleted: 746
begin_hunk_0_@_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_123StringRefCheckerVisitorEvJEE5VisitEPNS_4StmtE:bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.ku:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitDeclStmtEPN5clang8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1)
  br label %.critedge.thread

bb.kv:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.kw:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.kx:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.ky:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.kz:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.la:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.lb:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.lc:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.ld:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.le:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

bb.lf:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1), !inline_history !230
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ay, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitDeclStmtEPN5clang8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %4 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.llvm::ArrayRef.695", align 8 ; 4 uses
  tail call fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.b, null            ; 2 uses
  %i.f = select i1 %.not.i.i.i, ptr null, ptr %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = select i1 %.not.i.i.i, ptr null, ptr %i.g
  br label %_ZN5clang8DeclStmt5declsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !235
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  br label %_ZN5clang8DeclStmt5declsEv.exit

_ZN5clang8DeclStmt5declsEv.exit:                  ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %.0.i.i1.i = phi ptr [ %i.h, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %.0.i.i.i, %.0.i.i1.i
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang8DeclStmt5declsEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s, %_ZN5clang8DeclStmt5declsEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.018 = phi ptr [ %.0.i.i.i, %.lr.ph ], [ %i.cu, %bb.s ] ; 2 uses
  %i.v = load ptr, ptr %.018, align 8, !tbaa !236 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 127
  %i.z = add nsw i32 %i.y, -48
  %i.aa = icmp ult i32 %i.z, -7
  %.not1316 = icmp eq ptr %i.v, null
  %.not13 = or i1 %.not1316, %i.aa
  br i1 %.not13, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ab = call noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.v) #15 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ac, align 8, !tbaa !62
  %i.ad = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.ah = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !68 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 16
  %i.am = icmp ne i8 %i.al, 49
  %.not6.i.i = icmp eq ptr %i.aj, null
  %.not.i.i = or i1 %.not6.i.i, %i.am
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.an = ptrtoint ptr %i.aj to i64
  store i64 %i.an, ptr %3, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %i.ao = load ptr, ptr %2, align 8, !tbaa !239   ; 4 uses
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !240 ; 2 uses
  %.not.i.i.i14 = icmp eq i64 %i.ap, 15
  br i1 %.not.i.i.i14, label %bb.h, label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.ao, align 1
  %i.ar = xor i64 %i.aq, 8382079011695717475
  %i.as = getelementptr i8, ptr %i.ao, i64 7
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 7378394168703939188
  %i.av = or i64 %i.ar, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.i.i

_ZN4llvmeqENS_9StringRefES0_.exit.i.i:            ; preds = %bb.h, %bb.g
  %.0.i.i.i15 = phi i1 [ %i.ay, %bb.h ], [ false, %bb.g ]
  %i.az = icmp eq ptr %i.ao, %i.p
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.ba = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.ba)
  br label %_ZL15IsLLVMStringRefN5clang8QualTypeE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i.i
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !62
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.bc) #17
  br label %_ZL15IsLLVMStringRefN5clang8QualTypeE.exit.i

_ZL15IsLLVMStringRefN5clang8QualTypeE.exit.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.0.i.i.i15, label %bb.i, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.i:                                             ; preds = %_ZL15IsLLVMStringRefN5clang8QualTypeE.exit.i
  %i.bd = load i16, ptr %i.ab, align 8
  %i.be = and i16 %i.bd, 511
  %.not50.i = icmp eq i16 %i.be, 62
  br i1 %.not50.i, label %bb.j, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !245 ; 4 uses
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = and i16 %i.bh, 511                      ; 2 uses
  %i.bj = add nsw i16 %i.bi, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.bj, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !248
  %.not32.i = icmp eq i32 %i.bl, 1
  br i1 %.not32.i, label %bb.l, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i16 %i.bi, 118          ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.bg, ptr null
  %10 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %10, ptr %i.bm
  %i.bn = load ptr, ptr %spec.select.i.i.i.i, align 8, !tbaa !250 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = and i16 %i.bo, 511
  %.not53.i = icmp eq i16 %i.bp, 81
  br i1 %.not53.i, label %bb.m, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !252 ; 4 uses
  %i.bs = load i16, ptr %i.br, align 8
  %i.bt = and i16 %i.bs, 511                      ; 2 uses
  %i.bu = add nsw i16 %i.bt, -119
  %spec.select.i.i.i.i.i.i.i.i40.i = icmp ult i16 %i.bu, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i40.i, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !248
  %.not35.i = icmp eq i32 %i.bw, 1
  br i1 %.not35.i, label %bb.o, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i42.i = icmp eq i16 %i.bt, 118        ; 2 uses
  %spec.select.i.i.i.i.i43.i = select i1 %.not.i.i.i42.i, ptr %i.br, ptr null
  %11 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i43.i, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %spec.select.i.i.i44.i = select i1 %.not.i.i.i42.i, ptr %11, ptr %i.bx
  %i.by = load ptr, ptr %spec.select.i.i.i44.i, align 8, !tbaa !250 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = and i16 %i.bz, 511
  %.not56.i = icmp eq i16 %i.ca, 81
  br i1 %.not56.i, label %bb.p, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !252 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = and i16 %i.cd, 511
  %.not58.i = icmp eq i16 %i.ce, 120
  br i1 %.not58.i, label %bb.q, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.0.0.copyload.i47.i = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.cg = call fastcc noundef zeroext i1 @_ZL11IsStdStringN5clang8QualTypeE(i64 %.sroa.0.0.copyload.i47.i)
  br i1 %i.cg, label %bb.r, label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !253, !nonnull !20, !align !143
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !162, !nonnull !20, !align !143 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef nonnull align 8 dereferenceable(776) ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #15, !inline_history !231
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4DeclERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %4, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(776) %i.cn) #15
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !253, !nonnull !20, !align !143
  %i.cp = load ptr, ptr %0, align 8, !tbaa !167
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !168 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %spec.select.i = select i1 %i.cr, ptr null, ptr %i.cs
  store ptr @.str.18, ptr %5, align 8, !tbaa !164
  store i64 16, ptr %i.s, align 8, !tbaa !165
  store ptr @.str.19, ptr %6, align 8, !tbaa !164
  store i64 71, ptr %i.t, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ct = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #18
  store i64 %i.ct, ptr %8, align 8
  store ptr %8, ptr %7, align 8, !tbaa !256
  store i64 1, ptr %i.u, align 8, !tbaa !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN5clang4ento11BugReporter15EmitBasicReportEPKNS_4DeclEPKNS0_15CheckerFrontendEN4llvm9StringRefES9_S9_NS0_22PathDiagnosticLocationENS8_8ArrayRefINS_11SourceRangeEEENSB_INS_9FixItHintEEE(ptr noundef nonnull align 8 dereferenceable(120) %i.co, ptr noundef %i.cp, ptr noundef %spec.select.i, ptr nonnull @.str.19, i64 71, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7, ptr noundef nonnull byval(%"class.llvm::ArrayRef.695") align 8 %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit

_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit: ; preds = %bb.e, %bb.f, %_ZL15IsLLVMStringRefN5clang8QualTypeE.exit.i, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.s

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_123StringRefCheckerVisitor12VisitVarDeclEPN5clang7VarDeclE.exit, %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cu, %.0.i.i1.i
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_123StringRefCheckerVisitor13VisitChildrenEPN5clang4StmtE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.1060", align 8 ; 6 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.1060") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  %i.d = icmp ne ptr %i.c, %.sroa.0.0.copyload
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp ne i64 %i.e, %.sroa.4.0.copyload
  %.not3.i6 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not3.i6, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.g = phi i64 [ %i.u, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.s, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ], [ %i.c, %bb.a ]
  %i.i = and i64 %i.g, 3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %.lr.ph, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.h, %.lr.ph ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !258  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_123StringRefCheckerVisitorEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.n = load i64, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %i.o = and i64 %i.n, 3
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %3, align 8, !tbaa !62
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.n, 4
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #15
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.h:                                             ; preds = %bb.f
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) #15
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.s = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  %i.t = icmp ne ptr %i.s, %.sroa.0.0.copyload
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, %.sroa.4.0.copyload
  %.not3.i = select i1 %i.t, i1 true, i1 %i.v
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge
}

declare void @_ZN5clang4Stmt8childrenEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.1060") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN5clang7VarDecl7getInitEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

declare void @_ZNK5clang8QualType11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !31}
!1 = distinct !{!1, !31}
!2 = distinct !{null, null, null, null, null, null, null, null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
end_hunk_0
