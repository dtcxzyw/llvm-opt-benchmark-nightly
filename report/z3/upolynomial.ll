Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial7manager16root_upper_boundEjPK3mpzRS1_:bb.a
  %i.ck = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN13mpzzp_manager2gtERK3mpzS2_.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager2gtERK3mpzS2_.exit:             ; preds = %bb.v
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %_ZN13mpzzp_manager2gtERK3mpzS2_.exit._crit_edge, label %_ZN13mpzzp_manager3setER3mpzS1_.exit49

_ZN13mpzzp_manager2gtERK3mpzS2_.exit._crit_edge:  ; preds = %_ZN13mpzzp_manager2gtERK3mpzS2_.exit
  %.pre = load i8, ptr %i.al, align 4
  br label %bb.w

bb.w:                                             ; preds = %_ZN13mpzzp_manager2gtERK3mpzS2_.exit._crit_edge, %.split
  %i.cm = phi i8 [ %.pre, %_ZN13mpzzp_manager2gtERK3mpzS2_.exit._crit_edge ], [ %i.ce, %.split ]
  %i.cn = and i8 %i.cm, 1
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %i.ak, align 8, !tbaa !35
  store i32 %i.cp, ptr %i.b, align 8, !tbaa !35
  %i.cq = load i8, ptr %i.c, align 4
  %i.cr = and i8 %i.cq, -2
  store i8 %i.cr, ptr %i.c, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i46

bb.y:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i46 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i46:   ; preds = %bb.y, %bb.x
  %i.ct = load i8, ptr %i.ae, align 8, !tbaa !39, !range !40, !noundef !41
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN13mpzzp_manager3setER3mpzS1_.exit49, label %bb.z

bb.z:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i46
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN13mpzzp_manager3setER3mpzS1_.exit49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3setER3mpzS1_.exit49:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i46, %bb.z, %.split, %_ZN13mpzzp_manager2gtERK3mpzS2_.exit
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  %i.cw = load i8, ptr %i.al, align 4             ; 2 uses
  %i.cx = and i8 %i.cw, 1
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN13mpzzp_manager3setER3mpzS1_.exit49
  %i.cz = load i8, ptr %i.h, align 4
  %i.da = and i8 %i.cz, 1
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %.split71, label %bb.ab

.split71:                                         ; preds = %bb.aa
  %i.dc = load i32, ptr %i.ak, align 8, !tbaa !35
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !35
  %i.de = icmp slt i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.ac, label %_ZN13mpzzp_manager3setER3mpzS1_.exit44

bb.ab:                                            ; preds = %bb.aa, %_ZN13mpzzp_manager3setER3mpzS1_.exit49
  %i.df = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN13mpzzp_manager2ltERK3mpzS2_.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager2ltERK3mpzS2_.exit:             ; preds = %bb.ab
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %_ZN13mpzzp_manager2ltERK3mpzS2_.exit._crit_edge, label %_ZN13mpzzp_manager3setER3mpzS1_.exit44

_ZN13mpzzp_manager2ltERK3mpzS2_.exit._crit_edge:  ; preds = %_ZN13mpzzp_manager2ltERK3mpzS2_.exit
  %.pre76 = load i8, ptr %i.al, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN13mpzzp_manager2ltERK3mpzS2_.exit._crit_edge, %.split71
  %i.dh = phi i8 [ %.pre76, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit._crit_edge ], [ %i.cw, %.split71 ]
  %i.di = and i8 %i.dh, 1
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load i32, ptr %i.ak, align 8, !tbaa !35
  store i32 %i.dk, ptr %i.g, align 8, !tbaa !35
  %i.dl = load i8, ptr %i.h, align 4
  %i.dm = and i8 %i.dl, -2
  store i8 %i.dm, ptr %i.h, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51

bb.ae:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51:   ; preds = %bb.ae, %bb.ad
  %i.do = load i8, ptr %i.ae, align 8, !tbaa !39, !range !40, !noundef !41
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN13mpzzp_manager3setER3mpzS1_.exit44, label %.invoke

_ZN13mpzzp_manager3setER3mpzS1_.exit44:           ; preds = %.invoke, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51, %.split71, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i41, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit, %bb.h
  %.123 = phi i1 [ %.02273, %bb.h ], [ true, %.split71 ], [ true, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit ], [ true, %.invoke ], [ true, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i41 ], [ true, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i51 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !206

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit:        ; preds = %.noexc29, %bb.f
  invoke void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 1, ptr %9, align 8, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 4
  %i.ds = and i8 %i.dr, -4
  store i8 %i.ds, ptr %i.dq, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.dt, align 8, !tbaa !60
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc55 unwind label %bb.an

.noexc55:                                         ; preds = %bb.af
  %i.dv = load i8, ptr %i.ae, align 8, !tbaa !39, !range !40, !noundef !41
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit57, label %bb.ag

bb.ag:                                            ; preds = %.noexc55
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit57 unwind label %bb.an

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit57:      ; preds = %.noexc55, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit57
  %i.dy = load i8, ptr %i.ae, align 8, !tbaa !39, !range !40, !noundef !41
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit60, label %bb.ah

bb.ah:                                            ; preds = %.noexc58
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit60 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit60:      ; preds = %.noexc58, %bb.ah
  invoke void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 1, ptr %10, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 4
  %i.ec = and i8 %i.eb, -4
  store i8 %i.ec, ptr %i.ea, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ed, align 8, !tbaa !60
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %.noexc61 unwind label %bb.ao

.noexc61:                                         ; preds = %bb.ai
  %i.ef = load i8, ptr %i.ae, align 8, !tbaa !39, !range !40, !noundef !41
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit63, label %bb.aj

bb.aj:                                            ; preds = %.noexc61
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit63 unwind label %bb.ao

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit63:      ; preds = %.noexc61, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  %i.ei = load i8, ptr %i.r, align 4              ; 2 uses
  %i.ej = and i8 %i.ei, 1
  %i.ek = icmp eq i8 %i.ej, 0
  br i1 %i.ek, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit63
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.em = load i8, ptr %i.el, align 4             ; 2 uses
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %.split72, label %bb.al

.split72:                                         ; preds = %bb.ak
  %i.ep = load i32, ptr %i.q, align 8, !tbaa !35  ; 2 uses
  %i.eq = load i32, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.am, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit63
  %i.es = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager2ltERK3mpzS2_.exit66:           ; preds = %bb.al
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge, label %bb.ap

_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge: ; preds = %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66
  %.pre77 = load i32, ptr %3, align 8, !tbaa !52
  %.pre78 = load i32, ptr %i.q, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre79 = load i8, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.pre80 = load i8, ptr %i.r, align 4            ; 2 uses
  %.pre81 = and i8 %.pre79, 1
  %.pre82 = and i8 %.pre80, 1
  br label %bb.am

bb.am:                                            ; preds = %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge, %.split72
  %.pre-phi83 = phi i8 [ %.pre82, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ 0, %.split72 ]
  %.pre-phi = phi i8 [ %.pre81, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ 0, %.split72 ]
  %i.eu = phi i8 [ %.pre80, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ %i.ei, %.split72 ] ; 2 uses
  %i.ev = phi i8 [ %.pre79, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ %i.em, %.split72 ] ; 2 uses
  %i.ew = phi i32 [ %.pre78, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ %i.ep, %.split72 ]
  %i.ex = phi i32 [ %.pre77, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66._crit_edge ], [ %i.eq, %.split72 ]
  store i32 %i.ew, ptr %3, align 8, !tbaa !52
  store i32 %i.ex, ptr %i.q, align 8, !tbaa !52
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !62
  %i.fa = load ptr, ptr %i.u, align 8, !tbaa !62
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !62
  store ptr %i.ez, ptr %i.u, align 8, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %11 = and i8 %i.ev, 2
  %i.fc = and i8 %i.eu, 2
  %i.fd = and i8 %i.ev, -4
  %12 = or disjoint i8 %i.fc, %i.fd
  %i.fe = and i8 %i.eu, -4
  %i.ff = or disjoint i8 %i.fe, %11
  %13 = or disjoint i8 %12, %.pre-phi83
  store i8 %13, ptr %i.fb, align 4
  %i.fg = or disjoint i8 %i.ff, %.pre-phi
  store i8 %i.fg, ptr %i.r, align 4
  br label %bb.ap

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.k, %bb.l, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit34, %bb.m, %bb.p, %bb.q, %bb.s, %bb.v, %bb.y, %bb.z, %bb.ab, %bb.ae, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit60, %._crit_edge, %bb.f, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit57, %bb.ah, %bb.al
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.an:                                            ; preds = %bb.ag, %bb.af
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.aj, %bb.ai
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit.split-lp

bb.ap:                                            ; preds = %.split72, %bb.am, %_ZN13mpzzp_manager2ltERK3mpzS2_.exit66
  %i.fj = load ptr, ptr %8, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.fn = load ptr, ptr %7, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit67 unwind label %bb.ar

bb.ar:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit67: ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fr = load ptr, ptr %6, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit68 unwind label %bb.as

bb.as:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit67
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit68: ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fv = load ptr, ptr %5, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit69 unwind label %bb.at

bb.at:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit68
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit69: ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.fz = load ptr, ptr %4, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit70 unwind label %bb.au

bb.au:                                            ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit69
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit70: ; preds = %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.an ], [ %i.fi, %bb.ao ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp ], [ %i.as, %bb.g ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN11upolynomial7manager31knuth_positive_root_upper_boundEjPK3mpz(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57, !nonnull !41, !align !49 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZN11mpz_managerILb0EE4log2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN11mpz_managerILb0EE5mlog2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %i.i, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.not45 = icmp eq i32 %i.b, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %invariant.op = sub i32 1, %i.k
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.m
  %i.m = add i32 %.4, 1
  br label %._crit_edge

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.03946 = phi i32 [ 0, %.lr.ph ], [ %.4, %bb.m ] ; 4 uses
  %i.n = sub nuw nsw i64 %i.c, %indvars.iv
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = icmp sgt i32 %i.p, 0                     ; 2 uses
  %i.s = xor i1 %i.f, %i.r
  br i1 %i.s, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !57, !nonnull !41, !align !49 ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = tail call noundef i32 @_ZN11mpz_managerILb0EE4log2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = tail call noundef i32 @_ZN11mpz_managerILb0EE5mlog2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = phi i32 [ %i.u, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %i.x = icmp ugt i32 %i.k, %i.w
  br i1 %i.x, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.reass = add i32 %i.w, %invariant.op     ; 2 uses
  %i.y = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.z = urem i32 %.reass.reass, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = udiv i32 %.reass.reass, %i.y
  %i.ac = zext i1 %i.aa to i32
  %.0 = add i32 %i.ab, %i.ac
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.0, i32 %.03946)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.f
  %.4 = phi i32 [ %.03946, %bb.f ], [ %.03946, %bb.g ], [ %spec.select, %bb.l ], [ %.03946, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit, %bb.a
end_hunk_0
