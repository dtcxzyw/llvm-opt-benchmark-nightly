Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 206
begin_hunk_0_@_ZN10polynomial7manager3imp34extract_and_init_lift_coefficientsERN11upolynomial12core_managerEPKNS_10polynomialEjjRKNS2_21scoped_numeral_vectorESA_RK3mpzR6vectorIPS8_Lb1EjESH_SH_:bb.a

.noexc71:                                         ; preds = %bb.ab
  %.pre.i69 = load ptr, ptr %8, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i70 = getelementptr inbounds i8, ptr %.pre.i69, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i70, align 4, !tbaa !70
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc71, %bb.aa
  %i.ev = phi i32 [ %.pre2.i, %.noexc71 ], [ %i.er, %bb.aa ] ; 2 uses
  %i.ew = phi ptr [ %.pre.i69, %.noexc71 ], [ %i.eo, %bb.aa ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ey = zext i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.y, ptr %i.ez, align 8, !tbaa !334
  %i.fa = add i32 %i.ev, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !70
  %i.fb = load ptr, ptr %11, align 8, !tbaa !110  ; 4 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !94
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !108
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fb, align 8, !tbaa !108
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fd, ptr noundef nonnull %i.fb)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.fj = add i32 %.049131, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.fj, %4
  br i1 %.not, label %.critedge61.preheader, label %bb.b, !llvm.loop !777

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn56.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bf

.critedge:                                        ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread109
  %i.fk = load ptr, ptr %11, align 8, !tbaa !110  ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i72, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !94
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !108
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !108
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ah, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fm, ptr noundef nonnull %i.fk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73: ; preds = %.critedge, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.be

bb.aj:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %i.fs = load ptr, ptr %5, align 8, !tbaa !162   ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75:             ; preds = %bb.aj, %bb.ak
  %.0.i74 = phi i32 [ %i.fv, %bb.ak ], [ 0, %bb.aj ]
  %i.fw = load ptr, ptr %9, align 8, !tbaa !332
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !334
  call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i74, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fy, ptr %13, align 8, !tbaa !201
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.fz, align 8, !tbaa !91
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 4
  %i.gc = and i8 %i.gb, -4                        ; 2 uses
  store i8 %i.gc, ptr %i.ga, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.gd, align 8, !tbaa !84
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gf = load i8, ptr %i.ge, align 4
  %i.gg = and i8 %i.gf, 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gi = load i32, ptr %7, align 8, !tbaa !91
  store i32 %i.gi, ptr %i.fz, align 8, !tbaa !91
  store i8 %i.gc, ptr %i.ga, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76

bb.am:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76 unwind label %bb.bb

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76:   ; preds = %bb.am, %bb.al
  %i.gk = load i8, ptr %i.i, align 8, !tbaa !183, !range !190, !noundef !99
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.bb

.critedge61.preheader:                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %.0133 = phi i32 [ %i.hq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85 ], [ 0, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit ] ; 2 uses
  %i.gm = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.gm, align 8, !tbaa !162
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.b, ptr %i.gn, align 8, !tbaa !201
  %i.go = load ptr, ptr %9, align 8, !tbaa !332   ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge61.preheader
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !70 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !70
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ap, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

bb.ap:                                            ; preds = %bb.ao, %.critedge61.preheader
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.pre.i79 = load ptr, ptr %9, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i80 = getelementptr inbounds i8, ptr %.pre.i79, i64 -4
  %.pre2.i81 = load i32, ptr %.phi.trans.insert.i80, align 4, !tbaa !70
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit: ; preds = %bb.ao, %bb.ap
  %i.gv = phi i32 [ %.pre2.i81, %bb.ap ], [ %i.gr, %bb.ao ] ; 2 uses
  %i.gw = phi ptr [ %.pre.i79, %bb.ap ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gy
  store ptr %i.gm, ptr %i.gz, align 8, !tbaa !334
  %i.ha = add i32 %i.gv, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !70
  %i.hb = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.hb, align 8, !tbaa !162
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.b, ptr %i.hc, align 8, !tbaa !201
  %i.hd = load ptr, ptr %10, align 8, !tbaa !332  ; 4 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !70 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !70
  %i.hj = icmp eq i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.ar, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

bb.ar:                                            ; preds = %bb.aq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.pre.i82 = load ptr, ptr %10, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i83 = getelementptr inbounds i8, ptr %.pre.i82, i64 -4
  %.pre2.i84 = load i32, ptr %.phi.trans.insert.i83, align 4, !tbaa !70
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85: ; preds = %bb.aq, %bb.ar
  %i.hk = phi i32 [ %.pre2.i84, %bb.ar ], [ %i.hg, %bb.aq ] ; 2 uses
  %i.hl = phi ptr [ %.pre.i82, %bb.ar ], [ %i.hd, %bb.aq ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -4
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hn
  store ptr %i.hb, ptr %i.ho, align 8, !tbaa !334
  %i.hp = add i32 %i.hk, 1
  store i32 %i.hp, ptr %i.hm, align 4, !tbaa !70
  %i.hq = add nuw i32 %.0133, 1
  %exitcond = icmp eq i32 %.0133, %4
  br i1 %exitcond, label %bb.aj, label %.critedge61.preheader, !llvm.loop !778

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store ptr null, ptr %14, align 8, !tbaa !162
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.hr, align 8, !tbaa !201
  %i.hs = load ptr, ptr %6, align 8, !tbaa !162   ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87, label %bb.as

bb.as:                                            ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87:             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, %bb.as
  %.0.i86 = phi i32 [ %i.hv, %bb.as ], [ 0, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit ]
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i86, ptr noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  invoke void @_ZN11upolynomial12core_manager3mulER7svectorI3mpzjERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.hw = load ptr, ptr %14, align 8, !tbaa !162  ; 3 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89:             ; preds = %bb.au, %bb.av
  %.0.i88 = phi i32 [ %i.hz, %bb.av ], [ 0, %bb.au ]
  %i.ia = load ptr, ptr %10, align 8, !tbaa !332
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !334
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i88, ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89
  %i.ic = load ptr, ptr %14, align 8, !tbaa !162  ; 3 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.aw
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !70 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i90, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %wide.trip.count.i.i = zext i32 %i.if to i64
  br label %bb.ax

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i91 = load ptr, ptr %14, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i91, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.ig = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4
  store i32 0, ptr %i.ig, align 4, !tbaa !70
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.ax:                                            ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.hr, align 8, !tbaa !292, !nonnull !99, !align !100
  %i.ii = load ptr, ptr %14, align 8, !tbaa !162
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.i.i
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %i.ij)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %bb.ax
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ax, !llvm.loop !34

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i91, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.ic, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.il = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.il)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #28
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #28
  unreachable

_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit: ; preds = %bb.aw, %._crit_edge.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.iq = load ptr, ptr %13, align 8, !tbaa !203, !nonnull !99, !align !100
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #28
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.be

bb.bb:                                            ; preds = %bb.an, %bb.am
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, %bb.at, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.bc ], [ %i.iu, %bb.bb ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bf

bb.be:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %.not121 = phi i1 [ false, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 ], [ true, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit ]
  ret i1 %.not121

bb.bf:                                            ; preds = %bb.bd, %.loopexit.split-lp.loopexit.split-lp
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.bd ]
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z7deallocIN11upolynomial21scoped_numeral_vectorEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  store i32 0, ptr %i.g, align 4, !tbaa !70
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.c:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !292, !nonnull !99, !align !100
  %i.i = load ptr, ptr %0, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !34

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.l = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
