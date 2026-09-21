Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/old_interval?download=true
inline.NumInlined: 496
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12old_interval3invEv:bb.a
  invoke void @_ZN11ext_numeral3invEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %_ZN11ext_numeralaSERKS_.exit20, %_ZN11ext_numeralD2Ev.exit
  %i.cb = load i32, ptr %1, align 8, !tbaa !15
  store i32 %i.cb, ptr %i.a, align 8, !tbaa !15
  %i.cc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.cd = load i8, ptr %i.m, align 4
  %i.ce = and i8 %i.cd, 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.k, align 8, !tbaa !18
  store i32 %i.cg, ptr %i.av, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = and i8 %i.ci, -2
  store i8 %i.cj, ptr %i.ch, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i21

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i21 unwind label %bb.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i21: ; preds = %bb.q, %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cl = load i8, ptr %i.r, align 4
  %i.cm = and i8 %i.cl, 1
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i21
  %i.co = load i32, ptr %i.q, align 8, !tbaa !18
  store i32 %i.co, ptr %i.ck, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = and i8 %i.cq, -2
  store i8 %i.cr, ptr %i.cp, align 4
  br label %_ZN11ext_numeralaSERKS_.exit24

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i21
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN11ext_numeralaSERKS_.exit24 unwind label %bb.i

_ZN11ext_numeralaSERKS_.exit24:                   ; preds = %bb.r, %bb.s
  %i.cs = load i32, ptr %2, align 8, !tbaa !15
  store i32 %i.cs, ptr %i.i, align 8, !tbaa !15
  %i.ct = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.cu = load i8, ptr %i.ak, align 4
  %i.cv = and i8 %i.cu, 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN11ext_numeralaSERKS_.exit24
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !18
  store i32 %i.cx, ptr %i.l, align 8, !tbaa !18
  %i.cy = load i8, ptr %i.w, align 4
  %i.cz = and i8 %i.cy, -2
  store i8 %i.cz, ptr %i.w, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i25

bb.u:                                             ; preds = %_ZN11ext_numeralaSERKS_.exit24
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i25 unwind label %bb.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i25: ; preds = %bb.u, %bb.t
  %i.da = load i8, ptr %i.ap, align 4
  %i.db = and i8 %i.da, 1
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i25
  %i.dd = load i32, ptr %i.ao, align 8, !tbaa !18
  store i32 %i.dd, ptr %i.ab, align 8, !tbaa !18
  %i.de = load i8, ptr %i.ac, align 4
  %i.df = and i8 %i.de, -2
  store i8 %i.df, ptr %i.ac, align 4
  br label %_ZN11ext_numeralaSERKS_.exit28

bb.w:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i25
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN11ext_numeralaSERKS_.exit28 unwind label %bb.i

_ZN11ext_numeralaSERKS_.exit28:                   ; preds = %bb.v, %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.di = load i8, ptr %i.dg, align 8, !tbaa !51, !range !38, !noundef !39
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !51, !range !38, !noundef !39
  store i8 %i.dj, ptr %i.dg, align 8, !tbaa !51
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 7 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !41, !nonnull !39, !align !42
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37 ; 6 uses
  %i.dp = icmp eq ptr %i.dl, null
  br i1 %i.dp, label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN11ext_numeralaSERKS_.exit28
  %i.dq = icmp eq ptr %i.do, null
  %i.dr = icmp eq ptr %i.dl, %i.do
  %or.cond.i.i = or i1 %i.dq, %i.dr
  br i1 %or.cond.i.i, label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i: ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.du = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, i64 noundef 24)
          to label %.noexc29 unwind label %bb.aa  ; 4 uses

.noexc29:                                         ; preds = %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i
  %i.dv = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dw = add i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 1073741823
  %i.dy = and i32 %i.dv, -1073741824
  %i.dz = or disjoint i32 %i.dx, %i.dy
  store i32 %i.dz, ptr %i.dl, align 4
  %i.ea = load i32, ptr %i.do, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  %i.ec = and i32 %i.eb, 1073741823
  %i.ed = and i32 %i.ea, -1073741824
  %i.ee = or disjoint i32 %i.ec, %i.ed
  store i32 %i.ee, ptr %i.do, align 4
  store i32 0, ptr %i.du, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dl, ptr %i.ef, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.do, ptr %i.eg, align 8, !tbaa !40
  br label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit

_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit: ; preds = %.noexc29, %bb.x, %_ZN11ext_numeralaSERKS_.exit28
  %.0.i.i = phi ptr [ %i.du, %.noexc29 ], [ %i.do, %_ZN11ext_numeralaSERKS_.exit28 ], [ %i.dl, %bb.x ]
  store ptr %.0.i.i, ptr %i.dk, align 8, !tbaa !36
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !37
  %i.eh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %.noexc.i.i30 unwind label %bb.y

.noexc.i.i30:                                     ; preds = %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN11ext_numeralD2Ev.exit31 unwind label %bb.y

bb.y:                                             ; preds = %.noexc.i.i30, %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #20
  unreachable

_ZN11ext_numeralD2Ev.exit31:                      ; preds = %.noexc.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ek = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i.i32 unwind label %bb.z

.noexc.i.i32:                                     ; preds = %_ZN11ext_numeralD2Ev.exit31
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN11ext_numeralD2Ev.exit33 unwind label %bb.z

bb.z:                                             ; preds = %.noexc.i.i32, %_ZN11ext_numeralD2Ev.exit31
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #20
  unreachable

_ZN11ext_numeralD2Ev.exit33:                      ; preds = %.noexc.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.bf

bb.aa:                                            ; preds = %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.i
  %.pn11 = phi { ptr, i32 } [ %i.en, %bb.aa ], [ %i.bn, %bb.i ]
  call void @_ZN11ext_numeralD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.h
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.ab ], [ %i.bm, %bb.h ]
  call void @_ZN11ext_numeralD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.bg

_ZNK12old_interval5is_P1Ev.exit.thread64:         ; preds = %bb.a, %_ZNK11ext_numeral6is_posEv.exit.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !15
  switch i32 %i.ep, label %_ZNK12old_interval5is_N1Ev.exit.thread66 [
    i32 0, label %_ZNK12old_interval5is_N1Ev.exit.thread
    i32 1, label %_ZNK11ext_numeral6is_negEv.exit.i
  ]

_ZNK11ext_numeral6is_negEv.exit.i:                ; preds = %_ZNK12old_interval5is_P1Ev.exit.thread64
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !18 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %_ZNK12old_interval5is_N1Ev.exit.thread, label %_ZNK12old_interval5is_N1Ev.exit

_ZNK12old_interval5is_N1Ev.exit:                  ; preds = %_ZNK11ext_numeral6is_negEv.exit.i
  %7 = icmp eq i32 %i.er, 0
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.eu = load i8, ptr %i.et, align 1, !range !38
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond71 = select i1 %7, i1 %i.ev, i1 false
  br i1 %or.cond71, label %_ZNK12old_interval5is_N1Ev.exit.thread, label %_ZNK12old_interval5is_N1Ev.exit.thread66

_ZNK12old_interval5is_N1Ev.exit.thread:           ; preds = %_ZNK12old_interval5is_N1Ev.exit, %_ZNK12old_interval5is_P1Ev.exit.thread64, %_ZNK11ext_numeral6is_negEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %i.b, ptr %4, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.ew, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 4
  %i.fa = and i8 %i.ez, -4                        ; 2 uses
  store i8 %i.fa, ptr %i.ey, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.fb, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store i32 1, ptr %i.fc, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %i.fe = load i8, ptr %i.fd, align 4
  %i.ff = and i8 %i.fe, -4
  store i8 %i.ff, ptr %i.fd, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.fg, align 8, !tbaa !19
  %i.fh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 4
  %i.fk = and i8 %i.fj, 1
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZNK12old_interval5is_N1Ev.exit.thread
  %i.fm = load i32, ptr %i.ex, align 8, !tbaa !18
  store i32 %i.fm, ptr %i.ew, align 8, !tbaa !18
  store i8 %i.fa, ptr %i.ey, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i34

bb.ae:                                            ; preds = %_ZNK12old_interval5is_N1Ev.exit.thread
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.ex)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i34

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i34: ; preds = %bb.ae, %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 4
  %i.fq = and i8 %i.fp, 1
  %i.fr = icmp eq i8 %i.fq, 0
  br i1 %i.fr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i34
  %i.fs = load i32, ptr %i.fn, align 8, !tbaa !18
  store i32 %i.fs, ptr %i.fc, align 8, !tbaa !18
  %i.ft = load i8, ptr %i.fd, align 4
  %i.fu = and i8 %i.ft, -2
  store i8 %i.fu, ptr %i.fd, align 4
  br label %_ZN11ext_numeralC2ERKS_.exit35

bb.ag:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i34
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.fn)
  br label %_ZN11ext_numeralC2ERKS_.exit35

_ZN11ext_numeralC2ERKS_.exit35:                   ; preds = %bb.af, %bb.ag
  invoke void @_ZN11ext_numeral3invEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN11ext_numeralC2ERKS_.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.fv, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.fx = load i8, ptr %i.fw, align 4
  %i.fy = and i8 %i.fx, -4                        ; 3 uses
  store i8 %i.fy, ptr %i.fw, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.fz, align 8, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store i32 1, ptr %i.ga, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 6 uses
  %i.gc = load i8, ptr %i.gb, align 4
  %i.gd = and i8 %i.gc, -4                        ; 2 uses
  store i8 %i.gd, ptr %i.gb, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.ge, align 8, !tbaa !19
  %i.gf = load i32, ptr %i.eo, align 8, !tbaa !15 ; 2 uses
  %i.gg = icmp eq i32 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 8            ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  %i.gk = select i1 %i.gg, i1 %i.gj, i1 false
  br i1 %i.gk, label %_ZN11ext_numeralaSERKS_.exit39, label %bb.al

_ZN11ext_numeralaSERKS_.exit39:                   ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 0, ptr %6, align 8, !tbaa !15
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.gl, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 4
  %i.go = and i8 %i.gn, -4
  store i8 %i.go, ptr %i.gm, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.gp, align 8, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i32 1, ptr %i.gq, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 4
  %i.gt = and i8 %i.gs, -4
  store i8 %i.gt, ptr %i.gr, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.gu, align 8, !tbaa !19
  store i32 0, ptr %5, align 8, !tbaa !15
  %i.gv = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  store i32 0, ptr %i.fv, align 8, !tbaa !18
  store i8 %i.fy, ptr %i.fw, align 4
  store i32 1, ptr %i.ga, align 8, !tbaa !18
  store i8 %i.gd, ptr %i.gb, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %i.gl)
          to label %.noexc.i.i40 unwind label %bb.ai

.noexc.i.i40:                                     ; preds = %_ZN11ext_numeralaSERKS_.exit39
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gq)
          to label %_ZN11ext_numeralD2Ev.exit41 unwind label %bb.ai

bb.ai:                                            ; preds = %.noexc.i.i40, %_ZN11ext_numeralaSERKS_.exit39
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #20
  unreachable

_ZN11ext_numeralD2Ev.exit41:                      ; preds = %.noexc.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.aq

bb.aj:                                            ; preds = %_ZN11ext_numeralC2ERKS_.exit35
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ak:                                            ; preds = %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.ap, %bb.an, %_ZN11ext_numeralaSERKS_.exit45
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.al:                                            ; preds = %bb.ah
  store i32 %i.gf, ptr %5, align 8, !tbaa !15
  %i.ha = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hc = load i8, ptr %i.hb, align 4
  %i.hd = and i8 %i.hc, 1
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %i.gi, ptr %i.fv, align 8, !tbaa !18
  store i8 %i.fy, ptr %i.fw, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i42

bb.an:                                            ; preds = %bb.al
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ha, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %i.gh)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i42 unwind label %bb.ak

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i42: ; preds = %bb.an, %bb.am
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = and i8 %i.hh, 1
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i42
  %i.hk = load i32, ptr %i.hf, align 8, !tbaa !18
  store i32 %i.hk, ptr %i.ga, align 8, !tbaa !18
  %i.hl = load i8, ptr %i.gb, align 4
  %i.hm = and i8 %i.hl, -2
  store i8 %i.hm, ptr %i.gb, align 4
  br label %_ZN11ext_numeralaSERKS_.exit45

bb.ap:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i42
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.hf)
          to label %_ZN11ext_numeralaSERKS_.exit45 unwind label %bb.ak

_ZN11ext_numeralaSERKS_.exit45:                   ; preds = %bb.ao, %bb.ap
  invoke void @_ZN11ext_numeral3invEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.aq unwind label %bb.ak

bb.aq:                                            ; preds = %_ZN11ext_numeralaSERKS_.exit45, %_ZN11ext_numeralD2Ev.exit41
  %i.hn = load i32, ptr %5, align 8, !tbaa !15
  store i32 %i.hn, ptr %i.a, align 8, !tbaa !15
  %i.ho = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.hp = load i8, ptr %i.fw, align 4
  %i.hq = and i8 %i.hp, 1
  %i.hr = icmp eq i8 %i.hq, 0
  br i1 %i.hr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hs = load i32, ptr %i.fv, align 8, !tbaa !18
  store i32 %i.hs, ptr %i.ex, align 8, !tbaa !18
  %i.ht = load i8, ptr %i.fi, align 4
  %i.hu = and i8 %i.ht, -2
  store i8 %i.hu, ptr %i.fi, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i46

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i46 unwind label %bb.ak

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i46: ; preds = %bb.as, %bb.ar
  %i.hv = load i8, ptr %i.gb, align 4
  %i.hw = and i8 %i.hv, 1
  %i.hx = icmp eq i8 %i.hw, 0
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i46
  %i.hy = load i32, ptr %i.ga, align 8, !tbaa !18
  store i32 %i.hy, ptr %i.fn, align 8, !tbaa !18
  %i.hz = load i8, ptr %i.fo, align 4
  %i.ia = and i8 %i.hz, -2
  store i8 %i.ia, ptr %i.fo, align 4
  br label %_ZN11ext_numeralaSERKS_.exit49

bb.au:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i46
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.ga)
          to label %_ZN11ext_numeralaSERKS_.exit49 unwind label %bb.ak

_ZN11ext_numeralaSERKS_.exit49:                   ; preds = %bb.at, %bb.au
  %i.ib = load i32, ptr %4, align 8, !tbaa !15
  store i32 %i.ib, ptr %i.eo, align 8, !tbaa !15
  %i.ic = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  %i.id = load i8, ptr %i.ey, align 4
  %i.ie = and i8 %i.id, 1
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN11ext_numeralaSERKS_.exit49
  %i.ig = load i32, ptr %i.ew, align 8, !tbaa !18
  store i32 %i.ig, ptr %i.gh, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 4
  %i.ij = and i8 %i.ii, -2
  store i8 %i.ij, ptr %i.ih, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i50

bb.aw:                                            ; preds = %_ZN11ext_numeralaSERKS_.exit49
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %i.ew)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i50 unwind label %bb.ak

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i50: ; preds = %bb.aw, %bb.av
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.il = load i8, ptr %i.fd, align 4
  %i.im = and i8 %i.il, 1
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i50
  %i.io = load i32, ptr %i.fc, align 8, !tbaa !18
  store i32 %i.io, ptr %i.ik, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 4
  %i.ir = and i8 %i.iq, -2
  store i8 %i.ir, ptr %i.ip, align 4
  br label %_ZN11ext_numeralaSERKS_.exit53

bb.ay:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i50
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %_ZN11ext_numeralaSERKS_.exit53 unwind label %bb.ak

_ZN11ext_numeralaSERKS_.exit53:                   ; preds = %bb.ax, %bb.ay
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.iu = load i8, ptr %i.is, align 8, !tbaa !51, !range !38, !noundef !39
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !51, !range !38, !noundef !39
  store i8 %i.iv, ptr %i.is, align 8, !tbaa !51
  store i8 %i.iu, ptr %i.it, align 1, !tbaa !51
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !37 ; 7 uses
  %i.iy = load ptr, ptr %0, align 8, !tbaa !41, !nonnull !39, !align !42
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !36 ; 6 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58, label %bb.az

bb.az:                                            ; preds = %_ZN11ext_numeralaSERKS_.exit53
  %i.jc = icmp eq ptr %i.ix, null
  %i.jd = icmp eq ptr %i.ja, %i.ix
  %or.cond.i.i54 = or i1 %i.jc, %i.jd
  br i1 %or.cond.i.i54, label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i55

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i55: ; preds = %bb.az
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.jg = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.jf, i64 noundef 24)
          to label %.noexc57 unwind label %bb.bc  ; 4 uses

.noexc57:                                         ; preds = %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i55
  %i.jh = load i32, ptr %i.ja, align 4            ; 2 uses
  %i.ji = add i32 %i.jh, 1
  %i.jj = and i32 %i.ji, 1073741823
  %i.jk = and i32 %i.jh, -1073741824
  %i.jl = or disjoint i32 %i.jj, %i.jk
  store i32 %i.jl, ptr %i.ja, align 4
  %i.jm = load i32, ptr %i.ix, align 4            ; 2 uses
  %i.jn = add i32 %i.jm, 1
  %i.jo = and i32 %i.jn, 1073741823
  %i.jp = and i32 %i.jm, -1073741824
  %i.jq = or disjoint i32 %i.jo, %i.jp
  store i32 %i.jq, ptr %i.ix, align 4
  store i32 0, ptr %i.jg, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.ja, ptr %i.jr, align 8, !tbaa !40
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.ix, ptr %i.js, align 8, !tbaa !40
  br label %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58

_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58: ; preds = %.noexc57, %bb.az, %_ZN11ext_numeralaSERKS_.exit53
  %.0.i.i56 = phi ptr [ %i.jg, %.noexc57 ], [ %i.ix, %_ZN11ext_numeralaSERKS_.exit53 ], [ %i.ja, %bb.az ]
  store ptr %.0.i.i56, ptr %i.iw, align 8, !tbaa !37
  store ptr %i.ix, ptr %i.iz, align 8, !tbaa !36
  %i.jt = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(32) %i.fv)
          to label %.noexc.i.i59 unwind label %bb.ba

.noexc.i.i59:                                     ; preds = %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jt, ptr noundef nonnull align 8 dereferenceable(16) %i.ga)
          to label %_ZN11ext_numeralD2Ev.exit60 unwind label %bb.ba

bb.ba:                                            ; preds = %.noexc.i.i59, %_ZN25scoped_dependency_managerIPvE7mk_joinEPN18dependency_managerINS1_6configEE10dependencyES6_.exit58
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #20
  unreachable

_ZN11ext_numeralD2Ev.exit60:                      ; preds = %.noexc.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.jw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !17 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.ew)
          to label %.noexc.i.i61 unwind label %bb.bb

.noexc.i.i61:                                     ; preds = %_ZN11ext_numeralD2Ev.exit60
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %_ZN11ext_numeralD2Ev.exit62 unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc.i.i61, %_ZN11ext_numeralD2Ev.exit60
  %i.jx = landingpad { ptr, i32 }
          catch ptr null
  %i.jy = extractvalue { ptr, i32 } %i.jx, 0
  call void @__clang_call_terminate(ptr %i.jy) #20
  unreachable

_ZN11ext_numeralD2Ev.exit62:                      ; preds = %.noexc.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bf

bb.bc:                                            ; preds = %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i55
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.jz, %bb.bc ], [ %i.gz, %bb.ak ]
  call void @_ZN11ext_numeralD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.gy, %bb.aj ]
  call void @_ZN11ext_numeralD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bg

_ZNK12old_interval5is_N1Ev.exit.thread66:         ; preds = %_ZNK12old_interval5is_P1Ev.exit.thread64, %_ZNK12old_interval5is_N1Ev.exit
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 562, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN11ext_numeralD2Ev.exit62, %_ZNK12old_interval5is_N1Ev.exit.thread66, %_ZN11ext_numeralD2Ev.exit33
  ret ptr %0

bb.bg:                                            ; preds = %bb.be, %bb.ac
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.ac ], [ %.pn.pn, %bb.be ]
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(112) ptr @_ZN12old_intervaldVERKS_(ptr noundef nonnull returned align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.old_interval, align 8        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %_ZNK12old_interval7is_zeroEv.exit, label %_ZNK12old_interval7is_zeroEv.exit.thread

_ZNK12old_interval7is_zeroEv.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %i.j = icmp eq i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.b, label %_ZNK12old_interval7is_zeroEv.exit.thread

bb.b:                                             ; preds = %_ZNK12old_interval7is_zeroEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !15
  switch i32 %i.p, label %_ZNK11ext_numeral6is_posEv.exit.thread24 [
    i32 0, label %_ZNK11ext_numeral6is_posEv.exit.thread.thread
    i32 1, label %_ZNK11ext_numeral6is_negEv.exit.i
  ]

_ZNK11ext_numeral6is_negEv.exit.i:                ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %or.cond = icmp sgt i32 %i.r, 0
  br i1 %or.cond, label %_ZNK11ext_numeral6is_posEv.exit.thread24, label %_ZNK11ext_numeral6is_posEv.exit.thread

_ZNK11ext_numeral6is_posEv.exit.thread:           ; preds = %_ZNK11ext_numeral6is_negEv.exit.i
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i8, ptr %i.t, align 8, !range !38
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond28 = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond28, label %_ZNK11ext_numeral6is_posEv.exit.thread24, label %_ZNK11ext_numeral6is_posEv.exit.thread.thread

_ZNK11ext_numeral6is_posEv.exit.thread24:         ; preds = %_ZNK11ext_numeral6is_posEv.exit.thread, %_ZNK11ext_numeral6is_negEv.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 6 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !41, !nonnull !39, !align !42 ; 3 uses
  %i.ab = icmp eq ptr %i.x, null
  br i1 %i.ab, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11ext_numeral6is_posEv.exit.thread24
  %i.ac = icmp eq ptr %i.z, null
  %i.ad = icmp eq ptr %i.x, %i.z
  %or.cond.i.i.i = or i1 %i.ac, %i.ad
  br i1 %or.cond.i.i.i, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.ag = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 noundef 24) ; 4 uses
  %i.ah = load i32, ptr %i.x, align 4             ; 2 uses
  %i.ai = add i32 %i.ah, 1
  %i.aj = and i32 %i.ai, 1073741823
  %i.ak = and i32 %i.ah, -1073741824
  %i.al = or disjoint i32 %i.aj, %i.ak
  store i32 %i.al, ptr %i.x, align 4
  %i.am = load i32, ptr %i.z, align 4             ; 2 uses
  %i.an = add i32 %i.am, 1
  %i.ao = and i32 %i.an, 1073741823
  %i.ap = and i32 %i.am, -1073741824
  %i.aq = or disjoint i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.z, align 4
  store i32 0, ptr %i.ag, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.x, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.z, ptr %i.as, align 8, !tbaa !40
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit

_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit: ; preds = %_ZNK11ext_numeral6is_posEv.exit.thread24, %bb.c, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i
  %i.at = phi ptr [ %.pre30, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i ], [ %i.aa, %_ZNK11ext_numeral6is_posEv.exit.thread24 ], [ %i.aa, %bb.c ]
  %.0.i.i.i = phi ptr [ %i.ag, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i ], [ %i.z, %_ZNK11ext_numeral6is_posEv.exit.thread24 ], [ %i.x, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.w, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37 ; 6 uses
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !36  ; 6 uses
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit15, label %bb.d

bb.d:                                             ; preds = %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit
  %i.ay = icmp eq ptr %i.aw, null
  %i.az = icmp eq ptr %i.av, %i.aw
  %or.cond.i.i.i12 = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i12, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit15, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i13

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i13: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.bc = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i64 noundef 24) ; 4 uses
  %i.bd = load i32, ptr %i.av, align 4            ; 2 uses
  %i.be = add i32 %i.bd, 1
  %i.bf = and i32 %i.be, 1073741823
  %i.bg = and i32 %i.bd, -1073741824
  %i.bh = or disjoint i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.av, align 4
  %i.bi = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.bj = add i32 %i.bi, 1
  %i.bk = and i32 %i.bj, 1073741823
  %i.bl = and i32 %i.bi, -1073741824
  %i.bm = or disjoint i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.aw, align 4
  store i32 0, ptr %i.bc, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.av, ptr %i.bn, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.aw, ptr %i.bo, align 8, !tbaa !40
  br label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit15

_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit15: ; preds = %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit, %bb.d, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i13
  %.0.i.i.i14 = phi ptr [ %i.bc, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i13 ], [ %i.aw, %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit ], [ %i.av, %bb.d ]
  store ptr %.0.i.i.i14, ptr %i.au, align 8, !tbaa !37
  br label %bb.l

_ZNK11ext_numeral6is_posEv.exit.thread.thread:    ; preds = %bb.b, %_ZNK11ext_numeral6is_posEv.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !37 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37 ; 8 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !41, !nonnull !39, !align !42 ; 3 uses
  %i.bw = icmp eq ptr %i.bs, null
  br i1 %i.bw, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit19, label %bb.e

bb.e:                                             ; preds = %_ZNK11ext_numeral6is_posEv.exit.thread.thread
  %i.bx = icmp eq ptr %i.bu, null
  %i.by = icmp eq ptr %i.bs, %i.bu
  %or.cond.i.i.i16 = or i1 %i.bx, %i.by
  br i1 %or.cond.i.i.i16, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit19, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.cb = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 noundef 24) ; 4 uses
  %i.cc = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.cd = add i32 %i.cc, 1
  %i.ce = and i32 %i.cd, 1073741823
  %i.cf = and i32 %i.cc, -1073741824
  %i.cg = or disjoint i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %i.bs, align 4
  %i.ch = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.ci = add i32 %i.ch, 1
  %i.cj = and i32 %i.ci, 1073741823
  %i.ck = and i32 %i.ch, -1073741824
  %i.cl = or disjoint i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.bu, align 4
  store i32 0, ptr %i.cb, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.bs, ptr %i.cm, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.bu, ptr %i.cn, align 8, !tbaa !40
  %.pre = load ptr, ptr %i.bt, align 8, !tbaa !37
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit19

_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit19: ; preds = %_ZNK11ext_numeral6is_posEv.exit.thread.thread, %bb.e, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17
  %i.co = phi ptr [ %.pre29, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17 ], [ %i.bv, %_ZNK11ext_numeral6is_posEv.exit.thread.thread ], [ %i.bv, %bb.e ]
  %i.cp = phi ptr [ %.pre, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17 ], [ %i.bu, %_ZNK11ext_numeral6is_posEv.exit.thread.thread ], [ %i.bu, %bb.e ] ; 6 uses
  %.0.i.i.i18 = phi ptr [ %i.cb, %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i17 ], [ %i.bu, %_ZNK11ext_numeral6is_posEv.exit.thread.thread ], [ %i.bs, %bb.e ]
  store ptr %.0.i.i.i18, ptr %i.bp, align 8, !tbaa !36
  %i.cq = icmp eq ptr %i.bq, null
  br i1 %i.cq, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit23, label %bb.f

bb.f:                                             ; preds = %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit19
  %i.cr = icmp eq ptr %i.cp, null
  %i.cs = icmp eq ptr %i.bq, %i.cp
  %or.cond.i.i.i20 = or i1 %i.cr, %i.cs
  br i1 %or.cond.i.i.i20, label %_ZN12old_interval4joinEPN18dependency_managerIN25scoped_dependency_managerIPvE6configEE10dependencyES7_.exit23, label %_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i21

_ZN18dependency_managerIN25scoped_dependency_managerIPvE6configEE7inc_refEPNS4_10dependencyE.exit17.i.i.i21: ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !50, !nonnull !39, !align !42
  %i.cv = tail call noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef 24) ; 4 uses
end_hunk_0
