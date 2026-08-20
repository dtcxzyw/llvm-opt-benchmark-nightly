inline.NumInlined: 607
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3opt7sortmaxclEv:bb.a
  %i.cf = icmp eq ptr %i.ca, null
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cg = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44 ; 5 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 -8 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %bb.x

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.cl = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc110 unwind label %.loopexit126 ; 3 uses

.noexc110:                                        ; preds = %bb.n
  store i32 2, ptr %i.cl, align 4, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 0, ptr %i.cm, align 4, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.x, align 8, !tbaa !43
  br label %.noexc80

bb.o:                                             ; preds = %bb.m
  %i.co = mul i32 %i.ch, 3
  %i.cp = add i32 %i.co, 1
  %i.cq = lshr i32 %i.cp, 1                       ; 3 uses
  %i.cr = shl i32 %i.cq, 3
  %i.cs = add i32 %i.cr, 8                        ; 2 uses
  %.not.i108 = icmp ugt i32 %i.cq, %i.ch
  br i1 %.not.i108, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = shl i32 %i.ch, 3
  %i.cu = add i32 %i.ct, 8
  %.not27.i = icmp ugt i32 %i.cs, %i.cu
  br i1 %.not27.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cv, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !85
  %i.cy = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !88 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !102
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !91
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !91
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i109 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !88
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.s
  %i.dg = phi i64 [ %i.dc, %bb.s ], [ %.pre.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !88
  store ptr %i.cz, ptr %1, align 8, !tbaa !102
  store i64 0, ptr %i.dh, align 8, !tbaa !88
  store i8 0, ptr %i.cz, align 8, !tbaa !91
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.w unwind label %bb.t

bb.t:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cz
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.t
  %i.dm = load i64, ptr %i.cz, align 8, !tbaa !91
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.body

bb.u:                                             ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.cv) #18
  br label %.body

bb.v:                                             ; preds = %bb.p
  %i.dp = zext i32 %i.cs to i64
  %i.dq = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ci, i64 noundef %i.dp)
          to label %.noexc111 unwind label %.loopexit126 ; 2 uses

.noexc111:                                        ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  store ptr %i.dr, ptr %i.x, align 8, !tbaa !43
  store i32 %i.cq, ptr %i.dq, align 4, !tbaa !44
  br label %.noexc80

bb.w:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc80:                                         ; preds = %.noexc111, %.noexc110
  %.pre.i.i = phi ptr [ %i.dr, %.noexc111 ], [ %i.cn, %.noexc110 ] ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !44
  br label %bb.x

bb.x:                                             ; preds = %.noexc80, %bb.m
  %i.ds = phi ptr [ %.pre.i.i, %.noexc80 ], [ %i.ca, %bb.m ] ; 4 uses
  %i.dt = phi i32 [ %.pre2.i.i, %.noexc80 ], [ %i.ch, %bb.m ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  store ptr %i.cb, ptr %i.dw, align 8, !tbaa !45
  %i.dx = add i32 %i.dt, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !44
  %i.dy = add i32 %.043138, -1                    ; 2 uses
  %.not71 = icmp eq i32 %i.dy, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph, !llvm.loop !103

.loopexit126:                                     ; preds = %bb.n, %bb.v
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp127:                            ; preds = %bb.k
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.x, %_ZNK8rational12get_unsignedEv.exit
  %i.dz = phi ptr [ %i.an, %_ZNK8rational12get_unsignedEv.exit ], [ %i.ds, %bb.x ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.045140, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ea, %i.ah
  br i1 %.not, label %._crit_edge142, label %.lr.ph141

bb.y:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.eb = load ptr, ptr %i.z, align 8, !tbaa !98, !nonnull !40, !align !41
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !99 ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.preheader, label %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82

_ZN6vectorIN3opt4softELb1EjE3endEv.exit82:        ; preds = %bb.y
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !44 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.eg, 56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  %.not63147 = icmp eq i32 %i.ef, 0
  br i1 %.not63147, label %.preheader, label %.lr.ph150

.preheader:                                       ; preds = %.loopexit120, %bb.y, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82
  %.042.lcssa = phi i32 [ 0, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82 ], [ 0, %bb.y ], [ %.2, %.loopexit120 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZN8rationalD2Ev.exit102, %.preheader
  %.059.ph = phi i32 [ %spec.select, %_ZN8rationalD2Ev.exit102 ], [ 1, %.preheader ]
  %.3.ph = phi i32 [ %indvars, %_ZN8rationalD2Ev.exit102 ], [ %.042.lcssa, %.preheader ] ; 2 uses
  %i.fe = zext i32 %.3.ph to i64                  ; 2 uses
  br label %bb.ad

bb.z:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph150:                                        ; preds = %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82, %.loopexit120
  %.041149 = phi ptr [ %i.fu, %.loopexit120 ], [ %i.ec, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82 ] ; 3 uses
  %.042148 = phi i32 [ %.2, %.loopexit120 ], [ 0, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit82 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.041149, i64 48
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !104
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.aa, label %.loopexit120

bb.aa:                                            ; preds = %.lr.ph150
  %i.fj = getelementptr inbounds nuw i8, ptr %.041149, i64 16
  %i.fk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66
  %i.fl = invoke noundef i64 @_ZNK11mpz_managerILb1EE10get_uint64ERK3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.fj)
          to label %_ZNK8rational12get_unsignedEv.exit84 unwind label %.loopexit.split-lp122

_ZNK8rational12get_unsignedEv.exit84:             ; preds = %bb.aa
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %.not65143 = icmp eq i32 %i.fm, 0
  br i1 %.not65143, label %.loopexit120, label %.lr.ph146

.lr.ph146:                                        ; preds = %_ZNK8rational12get_unsignedEv.exit84, %bb.ac
  %.0145 = phi i32 [ %i.ft, %bb.ac ], [ %i.fm, %_ZNK8rational12get_unsignedEv.exit84 ]
  %.1144 = phi i32 [ %i.fs, %bb.ac ], [ %.042148, %_ZNK8rational12get_unsignedEv.exit84 ] ; 2 uses
  %i.fn = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.ab unwind label %.loopexit121

bb.ab:                                            ; preds = %.lr.ph146
  %i.fo = load ptr, ptr %5, align 8, !tbaa !43
  %i.fp = zext i32 %.1144 to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !45
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.fn, ptr noundef %i.fr)
          to label %bb.ac unwind label %.loopexit121

bb.ac:                                            ; preds = %bb.ab
  %i.fs = add i32 %.1144, 1                       ; 2 uses
  %i.ft = add i32 %.0145, -1                      ; 2 uses
  %.not65 = icmp eq i32 %i.ft, 0
  br i1 %.not65, label %.loopexit120, label %.lr.ph146, !llvm.loop !107

.loopexit121:                                     ; preds = %.lr.ph146, %bb.ab
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp122:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit120:                                     ; preds = %bb.ac, %_ZNK8rational12get_unsignedEv.exit84, %.lr.ph150
  %.2 = phi i32 [ %.042148, %.lr.ph150 ], [ %.042148, %_ZNK8rational12get_unsignedEv.exit84 ], [ %i.fs, %bb.ac ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.041149, i64 56 ; 2 uses
  %.not63 = icmp eq ptr %i.fu, %i.ei
  br i1 %.not63, label %.preheader, label %.lr.ph150

bb.ad:                                            ; preds = %.outer, %_ZN11ast_manager3incEv.exit
  %.059 = phi i32 [ %spec.select, %_ZN11ast_manager3incEv.exit ], [ %.059.ph, %.outer ] ; 2 uses
  switch i32 %.059, label %.critedge [
    i32 1, label %bb.ae
    i32 -1, label %bb.bi
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.ae
  %i.fx = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !44
  %i.fz = icmp ult i32 %.3.ph, %i.fy
  br i1 %i.fz, label %bb.af, label %.critedge

bb.af:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ga = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  %i.gb = load i8, ptr %i.em, align 4
  %i.gc = and i8 %i.gb, 1
  %i.gd = icmp eq i8 %i.gc, 0
  %i.ge = load i32, ptr %i.el, align 8
  %i.gf = icmp eq i32 %i.ge, 1
  %i.gg = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %i.gg, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gh = load i8, ptr %i.eo, align 4
  %i.gi = and i8 %i.gh, 1
  %i.gj = icmp eq i8 %i.gi, 0
  %i.gk = load i32, ptr %i.en, align 8
  %i.gl = icmp eq i32 %i.gk, 1
  %i.gm = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %i.gm, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load i8, ptr %i.ep, align 4
  %i.go = and i8 %i.gn, 1
  %i.gp = icmp eq i8 %i.go, 0
  br i1 %i.gp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gq = load i8, ptr %i.eq, align 4
  %i.gr = and i8 %i.gq, 1
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %.split, label %bb.aj

.split:                                           ; preds = %bb.ai
  %i.gt = load i32, ptr %i.ej, align 8, !tbaa !108
  %i.gu = load i32, ptr %i.ek, align 8, !tbaa !108
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %bb.al, label %.critedge

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gw = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc86:                                         ; preds = %bb.aj
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.al, label %.critedge

bb.ak:                                            ; preds = %bb.ag, %bb.af
  %i.gy = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZltRK8rationalS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_ZltRK8rationalS1_.exit:                          ; preds = %bb.ak
  br i1 %i.gy, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.split, %.noexc86, %_ZltRK8rationalS1_.exit
  invoke void @_ZN3opt18maxsmt_solver_base12trace_boundsEPKc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull @.str)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gz = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr %5, align 8, !tbaa !43
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.fe
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !45
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gz, ptr noundef %i.hc)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.hd = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.he = invoke noundef i32 @_ZN6solver9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.hd, i32 noundef 0, ptr noundef null)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !40, !align !41
  %i.hg = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.hf)
          to label %_ZN11ast_manager3incEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_ZN11ast_manager3incEv.exit:                      ; preds = %bb.aq
  %spec.select = select i1 %i.hg, i32 %i.he, i32 0 ; 3 uses
  %i.hh = icmp eq i32 %spec.select, 1
  br i1 %i.hh, label %bb.ar, label %bb.ad, !llvm.loop !109

.loopexit:                                        ; preds = %bb.aw, %bb.ax, %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit: ; preds = %bb.aq, %bb.ak, %bb.aj, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.au, %bb.as, %_ZN8rationalD2Ev.exit102, %bb.ar
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bk, %bb.bm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %_ZN11ast_manager3incEv.exit
  %i.hi = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(88) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !110

.noexc90:                                         ; preds = %bb.as
  %i.hm = load ptr, ptr %i.er, align 8, !tbaa !53
  %.not4.i = icmp eq ptr %i.hm, null
  br i1 %.not4.i, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit, label %bb.at

bb.at:                                            ; preds = %.noexc90
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !111 ; 3 uses
  %.not.i89 = icmp eq ptr %i.ho, null
  br i1 %.not.i89, label %_ZN16check_sat_result9get_modelER3refI5modelE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(25) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZN16check_sat_result9get_modelER3refI5modelE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !110

_ZN16check_sat_result9get_modelER3refI5modelE.exit: ; preds = %bb.at, %.noexc90, %bb.au
  %i.hs = load ptr, ptr %i.z, align 8, !tbaa !98, !nonnull !40, !align !41
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !99 ; 4 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN3opt7sortmax17update_assignmentEv.exit.preheader, label %_ZN6vectorIN3opt4softELb1EjE3endEv.exit.i

_ZN6vectorIN3opt4softELb1EjE3endEv.exit.i:        ; preds = %_ZN16check_sat_result9get_modelER3refI5modelE.exit
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !44 ; 2 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = mul nuw nsw i64 %i.hx, 56
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hy
  %.not9.i = icmp eq i32 %i.hw, 0
  br i1 %.not9.i, label %_ZN3opt7sortmax17update_assignmentEv.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3opt4softELb1EjE3endEv.exit.i, %.noexc93
  %.010.i = phi ptr [ %i.if, %.noexc93 ], [ %i.ht, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit.i ] ; 3 uses
  %i.ia = load ptr, ptr %.010.i, align 8, !tbaa !96
  %i.ib = load ptr, ptr %i.er, align 8, !tbaa !53
  %i.ic = invoke noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160) %i.ib, ptr noundef %i.ia)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %.lr.ph.i
  %i.id = zext i1 %i.ic to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %.010.i, i64 48
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !104
  %i.if = getelementptr inbounds nuw i8, ptr %.010.i, i64 56 ; 2 uses
  %.not.i92 = icmp eq ptr %i.if, %i.hz
  br i1 %.not.i92, label %_ZN3opt7sortmax17update_assignmentEv.exit.preheader, label %.lr.ph.i

_ZN3opt7sortmax17update_assignmentEv.exit.preheader: ; preds = %.noexc93, %_ZN16check_sat_result9get_modelER3refI5modelE.exit, %_ZN6vectorIN3opt4softELb1EjE3endEv.exit.i
  br label %_ZN3opt7sortmax17update_assignmentEv.exit

_ZN3opt7sortmax17update_assignmentEv.exit:        ; preds = %_ZN3opt7sortmax17update_assignmentEv.exit.preheader, %bb.ax
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ %i.fe, %_ZN3opt7sortmax17update_assignmentEv.exit.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 3 uses
  %i.ig = load ptr, ptr %5, align 8, !tbaa !43    ; 4 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.critedge2.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit95

.critedge2.thread:                                ; preds = %_ZN3opt7sortmax17update_assignmentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit95:           ; preds = %_ZN3opt7sortmax17update_assignmentEv.exit
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !44
  %10 = icmp ugt i32 %i.ij, %indvars
  br i1 %10, label %bb.av, label %.critedge2.thread199

.critedge2.thread199:                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  br label %bb.ay

bb.av:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit95
  %11 = and i64 %indvars.iv.next, 4294967295      ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %11
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !45
  %i.im = load ptr, ptr %i.er, align 8, !tbaa !53
  %i.in = invoke noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160) %i.im, ptr noundef %i.il)
          to label %_ZN3opt7sortmax7is_trueEP4expr.exit unwind label %.loopexit

_ZN3opt7sortmax7is_trueEP4expr.exit:              ; preds = %bb.av
  br i1 %i.in, label %bb.aw, label %.critedge2

bb.aw:                                            ; preds = %_ZN3opt7sortmax7is_trueEP4expr.exit
  %i.io = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.ip = load ptr, ptr %5, align 8, !tbaa !43
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %11
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !45
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.io, ptr noundef %i.ir)
          to label %_ZN3opt7sortmax17update_assignmentEv.exit unwind label %.loopexit, !llvm.loop !114

.critedge2:                                       ; preds = %_ZN3opt7sortmax7is_trueEP4expr.exit
  %.pr.pre = load ptr, ptr %5, align 8, !tbaa !43 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.is = icmp eq ptr %.pr.pre, null
  br i1 %i.is, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98, label %bb.ay

bb.ay:                                            ; preds = %.critedge2.thread199, %.critedge2
  %.pr201 = phi ptr [ %i.ig, %.critedge2.thread199 ], [ %.pr.pre, %.critedge2 ]
  %i.it = getelementptr inbounds i8, ptr %.pr201, i64 -4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !44
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98:           ; preds = %.critedge2.thread, %.critedge2, %bb.ay
  %.0.i97 = phi i32 [ %i.iu, %bb.ay ], [ 0, %.critedge2 ], [ 0, %.critedge2.thread ]
  %i.iv = sub i32 %.0.i97, %indvars               ; 3 uses
  store i32 0, ptr %9, align 8, !tbaa !108
  %i.iw = load i8, ptr %i.es, align 4
  %i.ix = and i8 %i.iw, -4                        ; 2 uses
  store i8 %i.ix, ptr %i.es, align 4
  store ptr null, ptr %i.et, align 8, !tbaa !115
  store i32 1, ptr %i.eu, align 8, !tbaa !108
  %i.iy = load i8, ptr %i.ev, align 4
  %i.iz = and i8 %i.iy, -4
  store i8 %i.iz, ptr %i.ev, align 4
  store ptr null, ptr %i.ew, align 8, !tbaa !115
  %i.ja = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  %i.jb = icmp sgt i32 %i.iv, -1
  br i1 %i.jb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98
  store i32 %i.iv, ptr %9, align 8, !tbaa !108
  store i8 %i.ix, ptr %i.es, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpqj.exit.i

bb.ba:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit98
  %i.jc = zext i32 %i.iv to i64
  invoke void @_ZN11mpz_managerILb1EE11set_big_i64ER3mpzl(ptr noundef nonnull align 8 dereferenceable(728) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.jc)
          to label %_ZN11mpq_managerILb1EE3setER3mpqj.exit.i unwind label %bb.bf

_ZN11mpq_managerILb1EE3setER3mpqj.exit.i:         ; preds = %bb.ba, %bb.az
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpqj.exit.i
  store i32 1, ptr %i.eu, align 8, !tbaa !108
  %i.jd = load i8, ptr %i.ev, align 4
  %i.je = and i8 %i.jd, -2
  store i8 %i.je, ptr %i.ev, align 4
  invoke void @_ZplRK8rationalS1_(ptr dead_on_unwind nonnull writable sret(%class.rational) align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.jf = load i32, ptr %i.ek, align 8, !tbaa !44
  %i.jg = load i32, ptr %8, align 8, !tbaa !44
  store i32 %i.jg, ptr %i.ek, align 8, !tbaa !44
  store i32 %i.jf, ptr %8, align 8, !tbaa !44
  %i.jh = load ptr, ptr %i.ex, align 8, !tbaa !116
  %i.ji = load ptr, ptr %i.ey, align 8, !tbaa !116
  store ptr %i.ji, ptr %i.ex, align 8, !tbaa !116
  store ptr %i.jh, ptr %i.ey, align 8, !tbaa !116
  %i.jj = load i8, ptr %i.eq, align 4             ; 2 uses
  %i.jk = load i8, ptr %i.ez, align 4             ; 2 uses
  %i.jl = and i8 %i.jj, -4
  %i.jm = and i8 %i.jk, -4
  %i.jn = and i8 %i.jk, 3
  %i.jo = or disjoint i8 %i.jn, %i.jl
  store i8 %i.jo, ptr %i.eq, align 4
  %i.jp = and i8 %i.jj, 3
  %i.jq = or disjoint i8 %i.jm, %i.jp
  store i8 %i.jq, ptr %i.ez, align 4
  %i.jr = load i32, ptr %i.en, align 8, !tbaa !44
  %i.js = load i32, ptr %i.fa, align 8, !tbaa !44
  store i32 %i.js, ptr %i.en, align 8, !tbaa !44
  store i32 %i.jr, ptr %i.fa, align 8, !tbaa !44
  %i.jt = load ptr, ptr %i.fb, align 8, !tbaa !116
  %i.ju = load ptr, ptr %i.fc, align 8, !tbaa !116
  store ptr %i.ju, ptr %i.fb, align 8, !tbaa !116
  store ptr %i.jt, ptr %i.fc, align 8, !tbaa !116
  %i.jv = load i8, ptr %i.eo, align 4             ; 2 uses
  %i.jw = load i8, ptr %i.fd, align 4             ; 2 uses
  %i.jx = and i8 %i.jv, -4
  %i.jy = and i8 %i.jw, -4
  %i.jz = and i8 %i.jw, 3
  %i.ka = or disjoint i8 %i.jz, %i.jx
  store i8 %i.ka, ptr %i.eo, align 4
  %i.kb = and i8 %i.jv, 3
  %i.kc = or disjoint i8 %i.jy, %i.kb
  store i8 %i.kc, ptr %i.fd, align 4
  %i.kd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc.i unwind label %bb.bd

.noexc.i:                                         ; preds = %bb.bc
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kd, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %.noexc.i, %bb.bc
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #17
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.kg = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i101 unwind label %bb.be

.noexc.i101:                                      ; preds = %_ZN8rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %i.eu)
          to label %_ZN8rationalD2Ev.exit102 unwind label %bb.be

bb.be:                                            ; preds = %.noexc.i101, %_ZN8rationalD2Ev.exit
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #17
  unreachable

_ZN8rationalD2Ev.exit102:                         ; preds = %.noexc.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.kj = load ptr, ptr %i.n, align 8, !tbaa !68  ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.km = load ptr, ptr %i.kl, align 8
  invoke void %i.km(ptr noundef nonnull align 8 dereferenceable(80) %i.kj, ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.outer unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !llvm.loop !109

bb.bf:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpqj.exit.i, %bb.ba
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bb
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.ko, %bb.bg ], [ %i.kn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.bi:                                            ; preds = %bb.ad
  %i.kp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  %i.kq = load i8, ptr %i.eq, align 4
  %i.kr = and i8 %i.kq, 1
  %i.ks = icmp eq i8 %i.kr, 0
  br i1 %i.ks, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kt = load i32, ptr %i.ek, align 8, !tbaa !108
  store i32 %i.kt, ptr %i.ej, align 8, !tbaa !108
  %i.ku = load i8, ptr %i.ep, align 4
  %i.kv = and i8 %i.ku, -2
  store i8 %i.kv, ptr %i.ep, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.bk, %bb.bj
  %i.kw = load i8, ptr %i.eo, align 4
  %i.kx = and i8 %i.kw, 1
  %i.ky = icmp eq i8 %i.kx, 0
  br i1 %i.ky, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.kz = load i32, ptr %i.en, align 8, !tbaa !108
  store i32 %i.kz, ptr %i.el, align 8, !tbaa !108
  %i.la = load i8, ptr %i.em, align 4
  %i.lb = and i8 %i.la, -2
  store i8 %i.lb, ptr %i.em, align 4
  br label %.critedge

bb.bm:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.kp, ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %_ZltRK8rationalS1_.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %.noexc86, %.split, %bb.ad, %bb.bl, %bb.bm
  %.261.ph = phi i32 [ 1, %bb.bl ], [ 1, %bb.bm ], [ 1, %_ZltRK8rationalS1_.exit ], [ %.059, %bb.ad ], [ 1, %.split ], [ 1, %.noexc86 ], [ 1, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %.pr = load ptr, ptr %5, align 8, !tbaa !43     ; 2 uses
  %.not.i.i105 = icmp eq ptr %.pr, null
  br i1 %.not.i.i105, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.critedge
  %i.lc = getelementptr inbounds i8, ptr %.pr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.lc)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.ae, %.critedge, %bb.bn
  %.261204 = phi i32 [ %.261.ph, %bb.bn ], [ %.261.ph, %.critedge ], [ 1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lf = load ptr, ptr %4, align 8, !tbaa !96    ; 3 uses
  %.not.i.i106 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i106, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.lg = load ptr, ptr %i.y, align 8, !tbaa !117, !nonnull !40, !align !41
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !48
  %i.lj = add i32 %i.li, -1                       ; 2 uses
  store i32 %i.lj, ptr %i.lh, align 4, !tbaa !48
  %i.lk = icmp eq i32 %i.lj, 0
end_hunk_0
