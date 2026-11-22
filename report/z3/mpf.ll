Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpf?download=true
inline.NumInlined: 1714
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11mpf_manager17partial_remainderER3mpfRKS0_RKlb:bb.a
  %i.cv = load i8, ptr %i.cu, align 4
  %i.cw = and i8 %i.cv, -4
  store i8 %i.cw, ptr %i.cu, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !18
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %_ZN11mpz_managerILb0EE3incER3mpz.exit unwind label %bb.v

_ZN11mpz_managerILb0EE3incER3mpz.exit:            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN11mpz_managerILb0EE13machine_div2kERK3mpzjRS1_.exit

bb.v:                                             ; preds = %bb.u, %bb.r, %bb.o, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i89, %bb.g, %bb.k, %bb.x, %bb.w, %_ZN11mpz_managerILb0EE13machine_div2kERK3mpzjRS1_.exit, %bb.j, %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN11mpz_managerILb0EE13machine_div2kERK3mpzjRS1_.exit: ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i89, %_ZN11mpz_managerILb0EE3incER3mpz.exit, %bb.t, %bb.s
  %i.cz = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i32 noundef %i.bf)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %_ZN11mpz_managerILb0EE13machine_div2kERK3mpzjRS1_.exit
  %i.da = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i32 noundef %i.bb)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11mpf_manager11renormalizeEjjRlR3mpz(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 poison, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  %i.db = and i64 %i.h, 4294967295
  %i.dc = icmp eq i64 %i.db, 4294967295
  %or.cond4 = or i1 %4, %i.dc
  %i.dd = load i32, ptr %i.ar, align 8
  %i.de = icmp eq i32 %i.dd, 0
  %or.cond137 = select i1 %or.cond4, i1 %i.de, i1 false
  br i1 %or.cond137, label %bb.ca, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  store ptr %i.df, ptr %15, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 4
  %i.dj = and i8 %i.di, -4
  store i8 %i.dj, ptr %i.dh, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr null, ptr %i.dk, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = add nsw i64 %i.dn, %i.dl
  store i64 %i.do, ptr %i.b, align 8, !tbaa !21
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dp = add nsw i32 %i.ah, -1                   ; 2 uses
  invoke void @_ZN11mpf_manager11renormalizeEjjRlR3mpz(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 poison, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !17 ; 3 uses
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ds = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50 ; 6 uses
  store ptr %i.ds, ptr %16, align 8, !tbaa !23
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 16 uses
  store i32 0, ptr %i.dt, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 4 uses
  %i.dv = load i8, ptr %i.du, align 4
  %i.dw = and i8 %i.dv, -4
  store i8 %i.dw, ptr %i.du, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr null, ptr %i.dx, align 8, !tbaa !18
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.dz = sub nsw i64 %i.dr, %i.dy                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %i.ds, ptr %17, align 8, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  store i32 0, ptr %i.ea, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 4 uses
  %i.ec = load i8, ptr %i.eb, align 4
  %i.ed = and i8 %i.ec, -4
  store i8 %i.ed, ptr %i.eb, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr null, ptr %i.ee, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.ds, ptr %18, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 13 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !14
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 7 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = and i8 %i.eh, -4
  store i8 %i.ei, ptr %i.eg, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr null, ptr %i.ej, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.ds, ptr %19, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  store i32 0, ptr %i.ek, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 4 uses
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, -4                        ; 2 uses
  store i8 %i.en, ptr %i.el, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr null, ptr %i.eo, align 8, !tbaa !18
  %i.ep = load i8, ptr %i.aj, align 4
  %i.eq = and i8 %i.ep, 1
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = load i32, ptr %i.ag, align 8, !tbaa !14
  store i32 %i.es, ptr %i.ek, align 8, !tbaa !14
  store i8 %i.en, ptr %i.el, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i96

bb.ad:                                            ; preds = %bb.ab
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i96 unwind label %bb.ba

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i96:   ; preds = %bb.ad, %bb.ac
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.i)
          to label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit99 unwind label %bb.ba

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit99:  ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i96
  %i.et = load i8, ptr %i.el, align 4
  %i.eu = and i8 %i.et, 1
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit99
  %i.ew = load i32, ptr %i.ek, align 8, !tbaa !14
  store i32 %i.ew, ptr %i.ea, align 8, !tbaa !14
  %i.ex = load i8, ptr %i.eb, align 4
  %i.ey = and i8 %i.ex, -2
  store i8 %i.ey, ptr %i.eb, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.af:                                            ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit99
  %i.ez = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit unwind label %bb.ba

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.ae, %bb.af
  %i.fa = load i8, ptr %i.dh, align 4
  %i.fb = and i8 %i.fa, 1
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.fd = load i32, ptr %i.dg, align 8, !tbaa !14
  store i32 %i.fd, ptr %i.ef, align 8, !tbaa !14
  %i.fe = load i8, ptr %i.eg, align 4
  %i.ff = and i8 %i.fe, -2
  store i8 %i.ff, ptr %i.eg, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit102

bb.ah:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dg)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit102 unwind label %bb.ba

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit102:    ; preds = %bb.ag, %bb.ah
  %.not = icmp eq i64 %i.dr, %i.dy
  br i1 %.not, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit102
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.fh = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50 ; 3 uses
  store ptr %i.fh, ptr %20, align 8, !tbaa !23
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 4
  %i.fl = and i8 %i.fk, -4                        ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr null, ptr %i.fm, align 8, !tbaa !18
  store i32 0, ptr %i.fi, align 8, !tbaa !14
  store i8 %i.fl, ptr %i.fj, align 4
  %i.fn = add nuw nsw i32 %i.g, 5
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = icmp sgt i64 %i.dz, %i.fo
  br i1 %i.fp, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load i32, ptr %i.ef, align 8, !tbaa !19
  store i32 %i.fq, ptr %i.fi, align 8, !tbaa !19
  store i32 0, ptr %i.ef, align 8, !tbaa !19
  %i.fr = load ptr, ptr %i.ej, align 8, !tbaa !20
  store ptr %i.fr, ptr %i.fm, align 8, !tbaa !20
  store ptr null, ptr %i.ej, align 8, !tbaa !20
  %i.fs = load i8, ptr %i.eg, align 4             ; 2 uses
  %i.ft = and i8 %i.fs, 3
  %24 = or disjoint i8 %i.ft, %i.fl
  store i8 %24, ptr %i.fj, align 4
  %25 = and i8 %i.fs, -4
  store i8 %25, ptr %i.eg, align 4
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aa, %bb.z
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.al:                                            ; preds = %bb.as, %bb.ap, %bb.ao, %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.ch

bb.am:                                            ; preds = %bb.ai
  %i.fw = icmp sgt i64 %i.dz, 0
  br i1 %i.fw, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.fy = trunc nuw nsw i64 %i.dz to i32
  %i.fz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.fx, i32 noundef %i.fy, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11mpz_managerILb0EE15machine_div_remERK3mpzS3_RS1_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.fi)
          to label %bb.aq unwind label %bb.al

bb.ap:                                            ; preds = %bb.am
  %i.ga = trunc i64 %i.dz to i32
  %i.gb = sub i32 0, %i.ga
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i32 noundef %i.gb)
          to label %bb.aq unwind label %bb.al

bb.aq:                                            ; preds = %bb.aj, %bb.ap, %bb.ao
  %i.gc = load i32, ptr %i.fi, align 8, !tbaa !14
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = load i8, ptr %i.eg, align 4
  %i.gf = and i8 %i.ge, 1
  %i.gg = icmp eq i8 %i.gf, 0
  %i.gh = load ptr, ptr %i.ej, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.0.in.in.in.i = select i1 %i.gg, ptr %i.ef, ptr %i.gi
  %.0.in.in.i = load i32, ptr %.0.in.in.in.i, align 4, !tbaa !19
  %.0.in.i = and i32 %.0.in.in.i, 1
  %.0.i103 = icmp eq i32 %.0.in.i, 0
  br i1 %.0.i103, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 1, ptr %7, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 4
  %i.gm = and i8 %i.gl, -4
  store i8 %i.gm, ptr %i.gk, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.gn, align 8, !tbaa !18
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ef)
          to label %_ZN11mpz_managerILb0EE3incER3mpz.exit105 unwind label %bb.al

_ZN11mpz_managerILb0EE3incER3mpz.exit105:         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.at

bb.at:                                            ; preds = %_ZN11mpz_managerILb0EE3incER3mpz.exit105, %bb.ar, %bb.aq
  %i.go = load ptr, ptr %20, align 8, !tbaa !55, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.fi)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #24
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.av

bb.av:                                            ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit102
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gs = load i32, ptr %i.dt, align 8, !tbaa !14 ; 3 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gu = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  invoke void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.gu, ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %thread-pre-split unwind label %bb.ba

thread-pre-split:                                 ; preds = %bb.ax
  %.pr = load i32, ptr %i.dt, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split, %bb.aw
  %i.gv = phi i32 [ %.pr, %thread-pre-split ], [ %i.gs, %bb.aw ]
  %i.gw = load i32, ptr %1, align 8               ; 2 uses
  %i.gx = xor i32 %i.gw, %i.gs
  %i.gy = icmp eq i32 %i.gv, 0
  br i1 %i.gy, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gz = and i32 %i.gw, -2147483648              ; 2 uses
  %urem138 = and i32 %i.d, 2147483647
  %i.ha = or disjoint i32 %i.gz, %urem138
  store i32 %i.ha, ptr %1, align 8
  %i.hb = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.hd = add nsw i32 %i.e, -1
  %i.he = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers22m1Ejb(ptr noundef nonnull align 8 dereferenceable(104) %i.hc, i32 noundef %i.hd, i1 noundef zeroext true)
          to label %.noexc106 unwind label %bb.ba

.noexc106:                                        ; preds = %bb.az
  %i.hf = invoke noundef i64 @_ZNK11mpz_managerILb0EE9get_int64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.he)
          to label %_ZN11mpf_manager7mk_zeroEjjbR3mpf.exit unwind label %bb.ba

_ZN11mpf_manager7mk_zeroEjjbR3mpf.exit:           ; preds = %.noexc106
  store i64 %i.hf, ptr %i.dq, align 8, !tbaa !17
  store i32 0, ptr %i.ag, align 8, !tbaa !14
  %i.hg = load i8, ptr %i.aj, align 4
  %i.hh = and i8 %i.hg, -2
  store i8 %i.hh, ptr %i.aj, align 4
  %i.hi = load i32, ptr %1, align 8
  %i.hj = and i32 %i.hi, 2147483647
  %storemerge.i = or disjoint i32 %i.hj, %i.gz
  store i32 %storemerge.i, ptr %1, align 8
  br label %bb.bu

bb.ba:                                            ; preds = %.noexc106, %bb.az, %bb.ah, %bb.af, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i96, %bb.ad, %bb.ax, %bb.av, %bb.bb
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bb:                                            ; preds = %bb.ay
  invoke void @_ZN11mpf_manager11renormalizeEjjRlR3mpz(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 poison, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.dt)
          to label %bb.bc unwind label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.hl = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  store ptr %i.hl, ptr %21, align 8, !tbaa !23
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 7 uses
  store i32 0, ptr %i.hm, align 8, !tbaa !14
  %i.hn = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 4 uses
  %i.ho = load i8, ptr %i.hn, align 4
  %i.hp = and i8 %i.ho, -4
  store i8 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr null, ptr %i.hq, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.hs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11mpf_manager7powers2clEjb(ptr noundef nonnull align 8 dereferenceable(104) %i.hr, i32 noundef %i.i, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN11mpz_managerILb0EE15machine_div_remERK3mpzS3_RS1_S4_(ptr noundef nonnull align 8 dereferenceable(600) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %i.hm)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.ht = load ptr, ptr %i.k, align 8, !tbaa !48, !nonnull !49, !align !50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store i32 32, ptr %22, align 8, !tbaa !14
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 4 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 4
  %i.hw = and i8 %i.hv, -4
  store i8 %i.hw, ptr %i.hu, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.hx, align 8, !tbaa !18
  %i.hy = load i8, ptr %i.hn, align 4             ; 2 uses
  %i.hz = and i8 %i.hy, 1
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %.split, label %bb.bf

.split:                                           ; preds = %bb.be
  %i.ib = load i32, ptr %i.hm, align 8, !tbaa !14
  %i.ic = icmp eq i32 %i.ib, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %i.ic, label %bb.bg, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.id = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %22)
          to label %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit110 unwind label %bb.bj

_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit110:      ; preds = %bb.bf
  %i.ie = icmp eq i32 %i.id, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %i.ie, label %bb.bg, label %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit110._crit_edge

_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit110._crit_edge: ; preds = %_ZN11mpz_managerILb0EE2eqERK3mpzS3_.exit110
  %.pre140 = load ptr, ptr %i.k, align 8, !tbaa !48
  %.pre141 = load i8, ptr %i.hn, align 4
  br label %bb.bk
end_hunk_0
