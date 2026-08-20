inline.NumInlined: 902
inline.NumDeleted: 484
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL9add_h_lowPP7t_atomsS1_PSt6vectorIN3gmx11BasicVectorIfEESaIS5_EENS3_8ArrayRefIK21MoleculePatchDatabaseEEP8t_symtabiNS9_IKPSA_EESH_NS9_IKiEESJ_bSJ_:bb.a
  %i.mx = load float, ptr %i.mv, align 4, !tbaa !113
  store float %i.mx, ptr %i.mw, align 4, !tbaa !113
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 248
  %i.mz = load float, ptr %i.my, align 4, !tbaa !113
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  store float %i.mz, ptr %i.na, align 4, !tbaa !113
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 252
  br label %bb.aw

_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i: ; preds = %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i, %.critedge.i.i, %bb.ap
  %.842.i = phi i32 [ %.23657.i, %bb.ap ], [ %.23657.i, %.critedge.i.i ], [ %.8.i, %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.i ]
  br i1 %7, label %bb.at, label %.loopexit.i163

bb.at:                                            ; preds = %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA71_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(71) @.str, i8 noundef zeroext 2)
          to label %.noexc175 unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp

.noexc175:                                        ; preds = %bb.at
  %i.nc = load ptr, ptr %i.ig, align 8, !tbaa !86
  %i.nd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !55
  %i.nf = sext i32 %i.hl to i64
  %i.ng = getelementptr inbounds [32 x i8], ptr %i.ne, i64 %i.nf ; 3 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !114
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !59
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !115
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !56
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !59
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 404, ptr noundef nonnull @.str.22, ptr noundef %i.nc, ptr noundef %i.ni, i32 noundef %i.nk, ptr noundef %i.nn) #23
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc175
  unreachable

bb.av:                                            ; preds = %.noexc175
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.body176

_ZNKRSt8optionalIiE5valueEv.exit.i:               ; preds = %.noexc174
  %sext.i = shl i64 %i.ip, 32
  %i.np = ashr exact i64 %sext.i, 32
  %i.nq = getelementptr inbounds [12 x i8], ptr %i.gr, i64 %i.np ; 3 uses
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i167 ; 2 uses
  %i.ns = load float, ptr %i.nq, align 4, !tbaa !113
  store float %i.ns, ptr %i.nr, align 4, !tbaa !113
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !113
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store float %i.nu, ptr %i.nv, align 4, !tbaa !113
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKRSt8optionalIiE5valueEv.exit.i, %bb.as
  %.sink.in.i = phi ptr [ %i.nb, %bb.as ], [ %i.nw, %_ZNKRSt8optionalIiE5valueEv.exit.i ]
  %.9.i = phi i32 [ %.8.i, %bb.as ], [ %.23657.i, %_ZNKRSt8optionalIiE5valueEv.exit.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %indvars.iv.i167
  %.sink.i = load float, ptr %.sink.in.i, align 4, !tbaa !113
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store float %.sink.i, ptr %i.ny, align 4, !tbaa !113
  %indvars.iv.next.i168 = add nuw nsw i64 %indvars.iv.i167, 1 ; 2 uses
  %i.nz = load i32, ptr %i.ia, align 8, !tbaa !101
  %i.oa = sext i32 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next.i168, %i.oa
  br i1 %i.ob, label %bb.ak, label %.preheader44.i, !llvm.loop !116

.split.us.thread.i:                               ; preds = %.preheader44.i
  store <2 x float> splat (float -4.092030e+05), ptr %i.c, align 16, !tbaa !113
  store float -4.092030e+05, ptr %i.hd, align 8, !tbaa !113
  br label %.split.us.1.thread.i

.lr.ph65.preheader.i:                             ; preds = %.noexc178
  %wide.trip.count103.i = zext nneg i32 %i.of to i64 ; 2 uses
  %xtraiter167 = and i64 %wide.trip.count103.i, 3 ; 3 uses
  %i.oc = icmp ult i32 %i.of, 4
  br i1 %i.oc, label %.lr.ph65.i.epil.preheader, label %.lr.ph65.preheader.i.new

.lr.ph65.preheader.i.new:                         ; preds = %.lr.ph65.preheader.i
  %unroll_iter = and i64 %wide.trip.count103.i, 2147483644
  br label %.lr.ph65.i

.split.us.i:                                      ; preds = %.preheader44.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !tbaa !113
  %.not156.i = icmp eq i32 %i.ie, 1
  br i1 %.not156.i, label %.split.us.1.thread.i, label %.split.us.1.i

.split.us.1.thread.i:                             ; preds = %.split.us.i, %.split.us.thread.i
  store <2 x float> splat (float -4.092030e+05), ptr %scevgep.1130.i, align 4, !tbaa !113
  store float -4.092030e+05, ptr %i.he, align 4, !tbaa !113
  br label %.split.us.2.thread.i

.split.us.1.i:                                    ; preds = %.split.us.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1130.i, i8 0, i64 12, i1 false), !tbaa !113
  %i.od = icmp samesign ugt i32 %i.ie, 2
  br i1 %i.od, label %.split.us.2.i, label %.split.us.2.thread.i

.split.us.2.thread.i:                             ; preds = %.split.us.1.i, %.split.us.1.thread.i
  store <2 x float> splat (float -4.092030e+05), ptr %scevgep.2132.i, align 8, !tbaa !113
  store float -4.092030e+05, ptr %i.hf, align 16, !tbaa !113
  br label %.preheader.split.preheader.3.i

.split.us.2.i:                                    ; preds = %.split.us.1.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %scevgep.2132.i, i8 0, i64 12, i1 false), !tbaa !113
  %.not157.i = icmp eq i32 %i.ie, 3
  br i1 %.not157.i, label %.preheader.split.preheader.3.i, label %.preheader.split.us.preheader.3.i

.preheader.split.preheader.3.i:                   ; preds = %.split.us.2.i, %.split.us.2.thread.i
  store <2 x float> splat (float -4.092030e+05), ptr %scevgep.3134.i, align 4, !tbaa !113
  store float -4.092030e+05, ptr %i.hg, align 4, !tbaa !113
  br label %.split.us.3.i

.preheader.split.us.preheader.3.i:                ; preds = %.split.us.2.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.3134.i, i8 0, i64 12, i1 false), !tbaa !113
  br label %.split.us.3.i

.split.us.3.i:                                    ; preds = %.preheader.split.us.preheader.3.i, %.preheader.split.preheader.3.i
  %i.oe = load i32, ptr %i.hx, align 4, !tbaa !94
  invoke void @_Z10calc_h_posiPA3_fS0_Pi(i32 noundef %i.oe, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
          to label %.noexc178 unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit

.noexc178:                                        ; preds = %.split.us.3.i
  %i.of = load i32, ptr %.sroa.010.067.i, align 8, !tbaa !102 ; 3 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.lr.ph65.preheader.i, label %.loopexit.i163

.lr.ph65.i:                                       ; preds = %.lr.ph65.i, %.lr.ph65.preheader.i.new
  %indvars.iv100.i = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %indvars.iv.next101.i.3, %.lr.ph65.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %niter.next.3, %.lr.ph65.i ]
  %i.oh = getelementptr inbounds nuw [256 x i8], ptr %.sroa.010.067.i, i64 %indvars.iv100.i ; 4 uses
  %i.oi = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv100.i ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 244
  %i.ok = load float, ptr %i.oi, align 16, !tbaa !113
  store float %i.ok, ptr %i.oj, align 4, !tbaa !113
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !113
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 248
  store float %i.om, ptr %i.on, align 4, !tbaa !113
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.op = load float, ptr %i.oo, align 8, !tbaa !113
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 252
  store float %i.op, ptr %i.oq, align 4, !tbaa !113
  %i.or = getelementptr inbounds nuw i8, ptr %i.oh, i64 241
  store i8 1, ptr %i.or, align 1, !tbaa !117
  %indvars.iv.next101.i = or disjoint i64 %indvars.iv100.i, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [256 x i8], ptr %.sroa.010.067.i, i64 %indvars.iv.next101.i ; 4 uses
  %i.ot = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv.next101.i ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 244
  %i.ov = load float, ptr %i.ot, align 4, !tbaa !113
  store float %i.ov, ptr %i.ou, align 4, !tbaa !113
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ox = load float, ptr %i.ow, align 16, !tbaa !113
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 248
  store float %i.ox, ptr %i.oy, align 4, !tbaa !113
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !113
  %i.pb = getelementptr inbounds nuw i8, ptr %i.os, i64 252
  store float %i.pa, ptr %i.pb, align 4, !tbaa !113
  %i.pc = getelementptr inbounds nuw i8, ptr %i.os, i64 241
  store i8 1, ptr %i.pc, align 1, !tbaa !117
  %indvars.iv.next101.i.1 = or disjoint i64 %indvars.iv100.i, 2 ; 2 uses
  %i.pd = getelementptr inbounds nuw [256 x i8], ptr %.sroa.010.067.i, i64 %indvars.iv.next101.i.1 ; 4 uses
  %i.pe = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv.next101.i.1 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 244
  %i.pg = load float, ptr %i.pe, align 8, !tbaa !113
  store float %i.pg, ptr %i.pf, align 4, !tbaa !113
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !113
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pd, i64 248
  store float %i.pi, ptr %i.pj, align 4, !tbaa !113
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pl = load float, ptr %i.pk, align 16, !tbaa !113
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pd, i64 252
  store float %i.pl, ptr %i.pm, align 4, !tbaa !113
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 241
  store i8 1, ptr %i.pn, align 1, !tbaa !117
  %indvars.iv.next101.i.2 = or disjoint i64 %indvars.iv100.i, 3 ; 2 uses
  %i.po = getelementptr inbounds nuw [256 x i8], ptr %.sroa.010.067.i, i64 %indvars.iv.next101.i.2 ; 4 uses
  %i.pp = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv.next101.i.2 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 244
  %i.pr = load float, ptr %i.pp, align 4, !tbaa !113
  store float %i.pr, ptr %i.pq, align 4, !tbaa !113
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !113
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 248
  store float %i.pt, ptr %i.pu, align 4, !tbaa !113
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !113
  %i.px = getelementptr inbounds nuw i8, ptr %i.po, i64 252
  store float %i.pw, ptr %i.px, align 4, !tbaa !113
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 241
  store i8 1, ptr %i.py, align 1, !tbaa !117
  %indvars.iv.next101.i.3 = add nuw nsw i64 %indvars.iv100.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i163.loopexit.unr-lcssa, label %.lr.ph65.i, !llvm.loop !118

.loopexit.i163.loopexit.unr-lcssa:                ; preds = %.lr.ph65.i
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.loopexit.i163, label %.lr.ph65.i.epil.preheader

.lr.ph65.i.epil.preheader:                        ; preds = %.loopexit.i163.loopexit.unr-lcssa, %.lr.ph65.preheader.i
  %indvars.iv100.i.epil.init = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %indvars.iv.next101.i.3, %.loopexit.i163.loopexit.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph65.i.epil

.lr.ph65.i.epil:                                  ; preds = %.lr.ph65.i.epil, %.lr.ph65.i.epil.preheader
  %indvars.iv100.i.epil = phi i64 [ %indvars.iv100.i.epil.init, %.lr.ph65.i.epil.preheader ], [ %indvars.iv.next101.i.epil, %.lr.ph65.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph65.i.epil.preheader ], [ %epil.iter.next, %.lr.ph65.i.epil ]
  %i.pz = getelementptr inbounds nuw [256 x i8], ptr %.sroa.010.067.i, i64 %indvars.iv100.i.epil ; 4 uses
  %i.qa = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv100.i.epil ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 244
  %i.qc = load float, ptr %i.qa, align 4, !tbaa !113
  store float %i.qc, ptr %i.qb, align 4, !tbaa !113
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !113
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 248
  store float %i.qe, ptr %i.qf, align 4, !tbaa !113
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !113
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pz, i64 252
  store float %i.qh, ptr %i.qi, align 4, !tbaa !113
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pz, i64 241
  store i8 1, ptr %i.qj, align 1, !tbaa !117
  %indvars.iv.next101.i.epil = add nuw nsw i64 %indvars.iv100.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.loopexit.i163, label %.lr.ph65.i.epil, !llvm.loop !119

.loopexit.i163:                                   ; preds = %.loopexit.i163.loopexit.unr-lcssa, %.lr.ph65.i.epil, %.noexc178, %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i, %bb.aj, %.noexc173
  %.10.i = phi i32 [ %.13568.i, %.noexc173 ], [ %.842.i, %_ZL15hacksearch_atomPiS_PKcN3gmx8ArrayRefIKSt6vectorI13MoleculePatchSaIS5_EEEEiPK7t_atoms.exit.thread.i ], [ %.13568.i, %bb.aj ], [ %.236.lcssa126.i, %.noexc178 ], [ %.236.lcssa126.i, %.lr.ph65.i.epil ], [ %.236.lcssa126.i, %.loopexit.i163.loopexit.unr-lcssa ] ; 2 uses
  %i.qk = load i32, ptr %.sroa.010.067.i, align 8, !tbaa !102
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [256 x i8], ptr %.sroa.010.067.i, i64 %i.ql ; 2 uses
  %i.qn = load ptr, ptr %i.ho, align 8, !tbaa !71 ; 2 uses
  %.not.i164 = icmp eq ptr %i.qm, %i.qn
  br i1 %.not.i164, label %._crit_edge71.loopexit.i, label %.lr.ph70.i, !llvm.loop !121

.loopexit88:                                      ; preds = %._crit_edge71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.qo = icmp sgt i32 %i.hq, 0
  br i1 %i.qo, label %.lr.ph56.i, label %_ZSt4copyIP9t_resinfoS1_ET0_T_S3_S2_.exit.thread64

_ZSt4copyIP9t_resinfoS1_ET0_T_S3_S2_.exit.thread64: ; preds = %.loopexit88.thread, %.loopexit88
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.dv

.lr.ph56.i:                                       ; preds = %.loopexit88
  %i.qp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i184, %.lr.ph56.i
  %i.qr = phi i32 [ %i.hq, %.lr.ph56.i ], [ %i.ra, %._crit_edge.i184 ]
  %indvars.iv.i179 = phi i64 [ 0, %.lr.ph56.i ], [ %indvars.iv.next.i185, %._crit_edge.i184 ] ; 3 uses
  %.054.i = phi i32 [ 0, %.lr.ph56.i ], [ %.1.lcssa.i, %._crit_edge.i184 ] ; 2 uses
  %i.qs = load ptr, ptr %i.qp, align 8, !tbaa !76
  %i.qt = getelementptr inbounds nuw [36 x i8], ptr %i.qs, i64 %indvars.iv.i179
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !77
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %indvars.iv.i179 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !71 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !71
  %.not50.i = icmp eq ptr %i.qx, %i.qz
  br i1 %.not50.i, label %._crit_edge.i184, label %.lr.ph.i180

._crit_edge.loopexit.i:                           ; preds = %bb.bi
  %.pre.i183 = load i32, ptr %i.e, align 8, !tbaa !21
  br label %._crit_edge.i184

._crit_edge.i184:                                 ; preds = %._crit_edge.loopexit.i, %bb.ax
  %i.ra = phi i32 [ %i.qr, %bb.ax ], [ %.pre.i183, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.054.i, %bb.ax ], [ %.2.i181, %._crit_edge.loopexit.i ] ; 6 uses
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i179, 1 ; 2 uses
  %i.rb = sext i32 %i.ra to i64
  %i.rc = icmp slt i64 %indvars.iv.next.i185, %i.rb
  br i1 %i.rc, label %bb.ax, label %bb.bk, !llvm.loop !122

.lr.ph.i180:                                      ; preds = %bb.ax, %bb.bi
  %.152.i = phi i32 [ %.2.i181, %bb.bi ], [ %.054.i, %bb.ax ] ; 3 uses
  %.sroa.029.051.i = phi ptr [ %i.rx, %bb.bi ], [ %i.qx, %bb.ax ] ; 4 uses
  %i.rd = invoke noundef i32 @_ZNK13MoleculePatch4typeEv(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.029.051.i)
          to label %.noexc195 unwind label %.loopexit72

.noexc195:                                        ; preds = %.lr.ph.i180
  switch i32 %i.rd, label %bb.bc [
    i32 0, label %bb.ay
    i32 1, label %bb.bb
    i32 2, label %bb.bi
  ]

bb.ay:                                            ; preds = %.noexc195
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 40
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.rg = load i32, ptr %i.e, align 8, !tbaa !21  ; 3 uses
  %i.rh = icmp sgt i32 %i.rg, 0
  br i1 %i.rh, label %.lr.ph.i.i188, label %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i186

.lr.ph.i.i188:                                    ; preds = %bb.ay
  %i.ri = load ptr, ptr %i.qp, align 8, !tbaa !76
  %wide.trip.count.i.i189 = zext nneg i32 %i.rg to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i.i188
  %indvars.iv.i.i190 = phi i64 [ 0, %.lr.ph.i.i188 ], [ %indvars.iv.next.i.i192, %bb.ba ] ; 3 uses
  %i.rj = getelementptr inbounds nuw [36 x i8], ptr %i.ri, i64 %indvars.iv.i.i190
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !77
  %.not.i.i191 = icmp eq i32 %i.rl, %i.qv
  br i1 %.not.i.i191, label %.critedge.loopexit.split.loop.exit5.i.i194, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %indvars.iv.next.i.i192 = add nuw nsw i64 %indvars.iv.i.i190, 1 ; 2 uses
  %exitcond.not.i.i193 = icmp eq i64 %indvars.iv.next.i.i192, %wide.trip.count.i.i189
  br i1 %exitcond.not.i.i193, label %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i186, label %bb.az, !llvm.loop !103

.critedge.loopexit.split.loop.exit5.i.i194:       ; preds = %bb.az
  %i.rm = trunc nuw nsw i64 %indvars.iv.i.i190 to i32
  br label %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i186

_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i186: ; preds = %bb.ba, %.critedge.loopexit.split.loop.exit5.i.i194, %bb.ay
  %.0.lcssa.i.i187 = phi i32 [ 0, %bb.ay ], [ %i.rm, %.critedge.loopexit.split.loop.exit5.i.i194 ], [ %i.rg, %bb.ba ]
  store ptr %.0.val13, ptr %8, align 8, !tbaa !14
  store ptr %i.gw, ptr %i.qq, align 8, !tbaa !14
  %i.rn = invoke i64 @_Z11search_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE(ptr noundef %i.rf, i32 noundef %.0.lcssa.i.i187, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.21, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.gmx::ArrayRef.3") align 8 %8)
          to label %.noexc196 unwind label %.loopexit72

.noexc196:                                        ; preds = %_ZL15pdbasearch_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE.exit.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.3.0.extract.shift.i = lshr i64 %i.rn, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  %i.ro = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 240
  store i8 %.sroa.3.0.extract.trunc.i, ptr %i.rp, align 8, !tbaa !123
  %not..i = and i32 %i.ro, 1
  %i.rq = xor i32 %not..i, 1
  %spec.select.i = add nsw i32 %i.rq, %.152.i
  br label %bb.bi

bb.bb:                                            ; preds = %.noexc195
  %i.rr = add nsw i32 %.152.i, -1
  br label %bb.bi

bb.bc:                                            ; preds = %.noexc195
  %i.rs = call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull @.str.26)
          to label %bb.bd unwind label %.thread.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.be unwind label %.thread44.i

bb.be:                                            ; preds = %bb.bd
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %9, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %11, align 8, !tbaa !124
  %i.rt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @__PRETTY_FUNCTION__._ZL19check_atoms_presentPK7t_atomsN3gmx8ArrayRefISt6vectorI13MoleculePatchSaIS5_EEEENS3_IKiEE, ptr %i.rt, align 8, !tbaa !59
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr @.str, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !59
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 349, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !53
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.rs, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr %i.rs, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.bj unwind label %bb.bg

.thread.i:                                        ; preds = %bb.bc
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread44.i:                                      ; preds = %bb.bd
  %i.rv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #22
  br label %.sink.split.i

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.014.i = phi i1 [ false, %bb.bf ], [ true, %bb.be ]
  %i.rw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #22
end_hunk_0
begin_hunk_1_@_ZL21expand_hackblocks_oneRK21MoleculePatchDatabaseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI13MoleculePatchSaIS9_EEbb:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

._crit_edge135:                                   ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph134, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112
  %.087131 = phi i32 [ 0, %.lr.ph134 ], [ %i.hw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112 ] ; 2 uses
  %.sroa.0108.0130 = phi ptr [ %i.c, %.lr.ph134 ], [ %i.hx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112 ] ; 31 uses
  br i1 %3, label %.preheader113, label %.critedge

.preheader113:                                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 120
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader113
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.t = load i8, ptr %i.s, align 1, !tbaa !87
  %i.u = icmp eq i8 %i.t, 45                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 152
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i1 true, i1 %i.u
  br i1 %i.y, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !87
  %i.ac = icmp eq i8 %i.ab, 45                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 184
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i1 true, i1 %i.ac
  br i1 %i.ag, label %.critedge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !87
  %i.ak = icmp eq i8 %i.aj, 45                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 216
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = select i1 %i.an, i1 true, i1 %i.ak
  br i1 %i.ao, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 208
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !87
  %i.as = icmp eq i8 %i.ar, 45
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.preheader113
  %.1.ph.shrunk = phi i1 [ %i.as, %bb.f ], [ false, %.preheader113 ], [ %i.u, %bb.c ], [ %i.ak, %bb.e ], [ %i.ac, %bb.d ]
  %.1.ph = zext i1 %.1.ph.shrunk to i8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.1 = phi i8 [ 0, %bb.b ], [ %.1.ph, %.critedge.loopexit ] ; 3 uses
  br i1 %4, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 120
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = trunc nuw i8 %.1 to i1
  %i.ax = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %i.ax, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87
  %i.bb = icmp eq i8 %i.ba, 43                    ; 2 uses
  %i.bc = zext i1 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 152
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i1 true, i1 %i.bb
  br i1 %i.bg, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !87
  %i.bk = icmp eq i8 %i.bj, 43                    ; 2 uses
  %i.bl = zext i1 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 184
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !41
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = select i1 %i.bo, i1 true, i1 %i.bk
  br i1 %i.bp, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 176
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !86
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !87
  %i.bt = icmp eq i8 %i.bs, 43                    ; 2 uses
  %i.bu = zext i1 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 216
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !41
  %i.bx = icmp eq i64 %i.bw, 0
  %i.by = select i1 %i.bx, i1 true, i1 %i.bt
  br i1 %i.by, label %.critedge2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 208
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !86
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !87
  %i.cc = icmp eq i8 %i.cb, 43
  %i.cd = zext i1 %i.cc to i8
  br label %.critedge2

.critedge2:                                       ; preds = %.preheader, %bb.g, %bb.h, %bb.i, %bb.j, %.critedge
  %.3 = phi i8 [ %.1, %.critedge ], [ %i.cd, %bb.j ], [ %.1, %.preheader ], [ %i.bc, %bb.g ], [ %i.bu, %bb.i ], [ %i.bl, %bb.h ]
  %i.ce = trunc nuw i8 %.3 to i1
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112, label %bb.k

bb.k:                                             ; preds = %.critedge2
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 100 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !94 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %._crit_edge144, label %bb.l

._crit_edge144:                                   ; preds = %bb.k
  %.pre145 = load i64, ptr %i.f, align 8, !tbaa !41
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.ck = icmp eq i64 %i.cj, 0
  %.pre146 = load i64, ptr %i.f, align 8, !tbaa !41 ; 2 uses
  br i1 %i.ck, label %bb.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

bb.m:                                             ; preds = %._crit_edge144, %bb.l
  %i.cl = phi i64 [ %.pre145, %._crit_edge144 ], [ %.pre146, %bb.l ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 120
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !41
  %i.cp = icmp eq i64 %i.co, %i.cl
  br i1 %i.cp, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

bb.n:                                             ; preds = %bb.m
  %i.cq = icmp eq i64 %i.cl, 0
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.n
  %i.cr = load ptr, ptr %1, align 8, !tbaa !86
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !86
  %bcmp.i = call i32 @bcmp(ptr %i.cs, ptr %i.cr, i64 %i.cl)
  %i.ct = icmp eq i32 %bcmp.i, 0
  br i1 %i.ct, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111: ; preds = %bb.l, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cu = phi i64 [ %i.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.cl, %bb.m ], [ %.pre146, %bb.l ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !41
  %i.cy = icmp eq i64 %i.cx, %i.cu
  br i1 %i.cy, label %bb.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread111
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90: ; preds = %bb.o
  %i.da = load ptr, ptr %1, align 8, !tbaa !86
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !86
  %bcmp.i89 = call i32 @bcmp(ptr %i.db, ptr %i.da, i64 %i.cu)
  %i.dc = icmp eq i32 %bcmp.i89, 0
  br i1 %i.dc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.o, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dd = load i32, ptr %.sroa.0108.0130, align 8, !tbaa !102 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 40 ; 2 uses
  br label %bb.p

._crit_edge.loopexit:                             ; preds = %bb.aq
  %.pre143 = load i32, ptr %i.cf, align 4, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dg = phi i32 [ %i.gh, %._crit_edge.loopexit ], [ %i.dd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 3 uses
  %i.dh = phi i32 [ %.pre143, %._crit_edge.loopexit ], [ %i.cg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %bb.as, label %bb.ar

bb.p:                                             ; preds = %.lr.ph, %bb.aq
  %.083125 = phi i32 [ 0, %.lr.ph ], [ %i.gg, %bb.aq ] ; 4 uses
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !162 ; 3 uses
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN13MoleculePatchC2ERKS_(ptr noundef nonnull align 8 dereferenceable(256) %i.dj, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0108.0130)
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 256 ; 2 uses
  store ptr %i.dm, ptr %i.g, align 8, !tbaa !162
  br label %_ZNSt6vectorI13MoleculePatchSaIS0_EE9push_backERKS0_.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorI13MoleculePatchSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dj, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0108.0130)
  %.pre142 = load ptr, ptr %i.g, align 8, !tbaa !71
  br label %_ZNSt6vectorI13MoleculePatchSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI13MoleculePatchSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.q, %bb.r
  %i.dn = phi ptr [ %i.dm, %bb.q ], [ %.pre142, %bb.r ] ; 7 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -15
  store i8 0, ptr %i.do, align 1, !tbaa !117
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -216 ; 11 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -208 ; 6 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNSt6vectorI13MoleculePatchSaIS0_EE9push_backERKS0_.exit
  %i.dt = getelementptr inbounds i8, ptr %i.dn, i64 -240
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !41
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !86
  store i8 72, ptr %i.dw, align 1, !tbaa !87
  br label %bb.z

bb.u:                                             ; preds = %_ZNSt6vectorI13MoleculePatchSaIS0_EE9push_backERKS0_.exit
  %i.dx = load i8, ptr @gmx_debug_at, align 1, !tbaa !153, !range !151, !noundef !152
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dz = load ptr, ptr @debug, align 8, !tbaa !154
  %i.ea = load ptr, ptr %1, align 8, !tbaa !86
  %i.eb = load ptr, ptr %i.dp, align 8, !tbaa !86
  %i.ec = load ptr, ptr %i.df, align 8, !tbaa !86
  %i.ed = getelementptr inbounds i8, ptr %i.dn, i64 -240
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !41
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds i8, ptr %i.dn, i64 -248
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !86
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ei = phi ptr [ %i.eh, %bb.w ], [ @.str.7, %bb.v ]
  %i.ej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.11, ptr noundef %i.ea, i32 noundef %.087131, ptr noundef %i.eb, ptr noundef %i.ec, ptr noundef %i.ei) #22 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %bb.t, %bb.y
  %i.ek = load i32, ptr %i.cf, align 4, !tbaa !94 ; 2 uses
  %i.el = icmp eq i32 %i.ek, 10
  %i.em = icmp eq i32 %.083125, 2
  %or.cond = and i1 %i.em, %i.el
  br i1 %or.cond, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.dp, align 8, !tbaa !86 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !87
  %i.er = icmp eq i8 %i.eq, 72
  br i1 %i.er, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL21expand_hackblocks_oneRK21MoleculePatchDatabaseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI13MoleculePatchSaIS9_EEbbENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 252) #23
  unreachable

bb.ad:                                            ; preds = %bb.ab
  store i8 77, ptr %i.ep, align 1, !tbaa !87
  br label %bb.aq

bb.ae:                                            ; preds = %bb.z
  %i.es = icmp eq i32 %i.ek, 11
  %i.et = icmp samesign ugt i32 %.083125, 1
  %or.cond5 = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond5, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.12, i32 noundef -1)
  %i.eu = load ptr, ptr %i.dp, align 8, !tbaa !86 ; 6 uses
  %i.ev = getelementptr inbounds i8, ptr %i.dn, i64 -200 ; 4 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  %i.ex = load ptr, ptr %5, align 8, !tbaa !86    ; 6 uses
  %i.ey = icmp eq ptr %i.ex, %i.k                 ; 2 uses
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  br i1 %i.ey, label %bb.ag, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.af
  br i1 %i.ey, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ez = load i64, ptr %i.l, align 8, !tbaa !41  ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  %.not21.i.i = icmp eq ptr %5, %i.dp
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, label %bb.ah, !prof !160

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.ez, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load i8, ptr %i.ex, align 1, !tbaa !87
  store i8 %i.fb, ptr %i.eu, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ex, i64 %i.ez, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fc = load i64, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  store i64 %i.fc, ptr %i.dq, align 8, !tbaa !41
  %i.fd = load ptr, ptr %i.dp, align 8, !tbaa !86
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc
  store i8 0, ptr %i.fe, align 1, !tbaa !87
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ex, ptr %i.dp, align 8, !tbaa !86
  %i.ff = load i64, ptr %i.l, align 8, !tbaa !41
  store i64 %i.ff, ptr %i.dq, align 8, !tbaa !41
  %i.fg = load i64, ptr %i.k, align 8, !tbaa !87
  store i64 %i.fg, ptr %i.ev, align 8, !tbaa !87
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fh = load i64, ptr %i.ev, align 8, !tbaa !87
  store ptr %i.ex, ptr %i.dp, align 8, !tbaa !86
  %i.fi = load i64, ptr %i.l, align 8, !tbaa !41
  store i64 %i.fi, ptr %i.dq, align 8, !tbaa !41
  %i.fj = load i64, ptr %i.k, align 8, !tbaa !87
  store i64 %i.fj, ptr %i.ev, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.eu, ptr %5, align 8, !tbaa !86
  store i64 %i.fh, ptr %i.k, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.k, ptr %5, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ak, %bb.al
  %i.fk = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.eu, %bb.ak ], [ %i.k, %bb.al ], [ %i.ex, %bb.ag ]
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.fk, align 1, !tbaa !87
  %i.fl = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.k
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit
  %i.fn = load i64, ptr %i.k, align 8, !tbaa !87
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aq

bb.am:                                            ; preds = %bb.ae
  %i.fp = load i32, ptr %.sroa.0108.0130, align 8, !tbaa !102
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fr = add nuw nsw i32 %.083125, 1
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.13, i32 noundef %i.fr)
  %i.fs = load i64, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %i.ft = load i64, ptr %i.dq, align 8, !tbaa !41
  %i.fu = sub i64 4611686018427387903, %i.ft
  %i.fv = icmp ult i64 %i.fu, %i.fs
  br i1 %i.fv, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.an
  %i.fw = load ptr, ptr %6, align 8, !tbaa !86
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef %i.fw, i64 noundef %i.fs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.fy = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.j
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ga = load i64, ptr %i.j, align 8, !tbaa !87
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.aq

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gc = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.j
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.ap
  %i.ge = load i64, ptr %i.j, align 8, !tbaa !87
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.am, %bb.ad
  %i.gg = add nuw nsw i32 %.083125, 1             ; 2 uses
  %i.gh = load i32, ptr %.sroa.0108.0130, align 8, !tbaa !102 ; 2 uses
  %i.gi = icmp slt i32 %i.gg, %i.gh
  br i1 %i.gi, label %bb.p, label %._crit_edge.loopexit, !llvm.loop !172

bb.ar:                                            ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0108.0130, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !41
  %i.gl = icmp eq i64 %i.gk, 0
  %i.gm = icmp sgt i32 %i.dg, 0
  %or.cond188 = and i1 %i.gl, %i.gm
  br i1 %or.cond188, label %.lr.ph128.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112

bb.as:                                            ; preds = %._crit_edge
  %.old = icmp sgt i32 %i.dg, 0
  br i1 %.old, label %.lr.ph128.preheader, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit90.thread112

.lr.ph128.preheader:                              ; preds = %bb.ar, %bb.as
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ 0, %.lr.ph128.preheader ] ; 2 uses
  %i.gn = phi i32 [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.dg, %.lr.ph128.preheader ]
  %i.go = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.gp = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 8                 ; 3 uses
  %i.gu = sext i32 %i.gn to i64
  %i.gv = sub nsw i64 %i.gt, %i.gu
  %i.gw = add nsw i64 %i.gv, %indvars.iv          ; 3 uses
  %.not.i.i100 = icmp ult i64 %i.gw, %i.gt
  br i1 %.not.i.i100, label %_ZNSt6vectorI13MoleculePatchSaIS0_EE2atEm.exit, label %bb.at

bb.at:                                            ; preds = %.lr.ph128
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, i64 noundef %i.gw, i64 noundef %i.gt) #23
  unreachable

_ZNSt6vectorI13MoleculePatchSaIS0_EE2atEm.exit:   ; preds = %.lr.ph128
  %i.gx = getelementptr inbounds nuw [256 x i8], ptr %i.gp, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
end_hunk_1
