Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_sham?download=true
inline.NumInlined: 399
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z8gmx_shamiPPc:bb.a
          to label %bb.z unwind label %bb.ag      ; 6 uses

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i72, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull %i.ds) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i73

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i73: ; preds = %bb.aa, %bb.z
  %i.dt = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i73
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !35
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit76

_ZNSt10filesystem7__cxx114pathD2Ev.exit76:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !23
  %.not57 = icmp eq ptr %i.dy, null
  %i.dz = load i32, ptr %i.g, align 4, !tbaa !9   ; 2 uses
  br i1 %.not57, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit76
  %.not60 = icmp eq i32 %i.dz, 1
  br i1 %.not60, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(64) @.str.97, i8 noundef zeroext 2)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !23
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1196, ptr noundef nonnull @.str.99, ptr noundef %i.ea) #20
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.v
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn55 = phi { ptr, i32 } [ %i.ec, %bb.ag ], [ %i.eb, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.ai:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn67 = phi { ptr, i32 } [ %i.ee, %bb.aj ], [ %i.ed, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body

bb.al:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit76
  %i.ef = add i32 %i.dz, -3
  %or.cond5 = icmp ult i32 %i.ef, -2
  br i1 %or.cond5, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(64) @.str.97, i8 noundef zeroext 2)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !23
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1203, ptr noundef nonnull @.str.100, ptr noundef %i.eg) #20
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn58 = phi { ptr, i32 } [ %i.ei, %bb.aq ], [ %i.eh, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %.body

bb.as:                                            ; preds = %bb.al, %bb.ab
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !9
  %i.ek = load i32, ptr %i.d, align 4, !tbaa !9
  %.not61 = icmp eq i32 %i.ej, %i.ek
  br i1 %.not61, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(64) @.str.97, i8 noundef zeroext 2)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.el = load i32, ptr %i.e, align 4, !tbaa !9
  %i.em = load i32, ptr %i.d, align 4, !tbaa !9
  %i.en = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.73, i32 noundef 12, ptr noundef nonnull %6)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1210, ptr noundef nonnull @.str.101, i32 noundef %i.el, i32 noundef %i.em, ptr noundef %i.en) #20
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %bb.au
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #18
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn65 = phi { ptr, i32 } [ %i.ep, %bb.ay ], [ %i.eo, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.body

bb.ba:                                            ; preds = %bb.as
  %i.eq = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.er = icmp ne ptr %i.eq, null
  %i.es = icmp ne ptr %i.dq, null
  %or.cond7 = and i1 %i.es, %i.er
  br i1 %or.cond7, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.et = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.81, i32 noundef 12, ptr noundef nonnull %6)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load i32, ptr %i.e, align 4, !tbaa !9   ; 6 uses
  %i.ev = load ptr, ptr %i.n, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.et, ptr %i.a, align 8, !tbaa !23
  %i.ew = sext i32 %i.eu to i64                   ; 2 uses
  %i.ex = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.97, i32 noundef 982, i64 noundef range(i64 -2147483648, 2147483648) %i.ew, i64 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp ; 7 uses

.noexc:                                           ; preds = %bb.bc
  %i.ey = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.97, i32 noundef 983, i64 noundef range(i64 -2147483648, 2147483648) %i.ew, i64 noundef 4)
          to label %.noexc79 unwind label %.loopexit.split-lp ; 2 uses

.noexc79:                                         ; preds = %.noexc
  %i.ez = icmp sgt i32 %i.eu, 1
  br i1 %i.ez, label %.preheader100.lr.ph.i, label %._crit_edge.i

.preheader100.lr.ph.i:                            ; preds = %.noexc79
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.dq, align 8, !tbaa !38
  %wide.trip.count129.i = zext nneg i32 %i.eu to i64
  br label %.preheader100.i

.preheader100.i:                                  ; preds = %bb.bg, %.preheader100.lr.ph.i
  %indvars.iv126.i = phi i64 [ 1, %.preheader100.lr.ph.i ], [ %indvars.iv.next127.i, %bb.bg ] ; 6 uses
  %.058107.i = phi i32 [ 0, %.preheader100.lr.ph.i ], [ %.159.i, %bb.bg ] ; 7 uses
  %.0105.i = phi float [ -1.000000e+08, %.preheader100.lr.ph.i ], [ %.sroa.speculated.i, %bb.bg ] ; 2 uses
  %.099104.i = phi float [ 1.000000e+08, %.preheader100.lr.ph.i ], [ %.sroa.speculated92.i, %bb.bg ] ; 2 uses
  %i.fc = icmp sgt i32 %.058107.i, 0
  br i1 %i.fc, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader100.i
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv126.i
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !28 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.058107.i to i64 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bf ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !28
  %i.fi = fcmp oeq float %i.fh, %i.ff
  br i1 %i.fi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv126.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !9
  br label %.loopexit.i

bb.bf:                                            ; preds = %bb.bd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %bb.bd, !llvm.loop !40

.loopexit.i:                                      ; preds = %bb.be, %.preheader100.i
  %.060102.i = phi i32 [ %i.fj, %bb.be ], [ 0, %.preheader100.i ]
  %i.fl = icmp eq i32 %.060102.i, %.058107.i
  br i1 %i.fl, label %.loopexit.i..loopexit.thread.i_crit_edge, label %bb.bg

.loopexit.i..loopexit.thread.i_crit_edge:         ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.fa, align 8, !tbaa !38
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv126.i
  %.pre149 = load float, ptr %.phi.trans.insert, align 4, !tbaa !28
  %.pre150 = zext nneg i32 %.058107.i to i64
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.bf, %.loopexit.i..loopexit.thread.i_crit_edge
  %.pre-phi = phi i64 [ %.pre150, %.loopexit.i..loopexit.thread.i_crit_edge ], [ %wide.trip.count.i, %bb.bf ]
  %i.fm = phi float [ %.pre149, %.loopexit.i..loopexit.thread.i_crit_edge ], [ %i.ff, %bb.bf ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv126.i
  store i32 %.058107.i, ptr %i.fn, align 4, !tbaa !9
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.pre-phi
  store float %i.fm, ptr %i.fo, align 4, !tbaa !28
  %i.fp = add i32 %.058107.i, 1
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.thread.i, %.loopexit.i
  %.159.i = phi i32 [ %i.fp, %.loopexit.thread.i ], [ %.058107.i, %.loopexit.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv126.i
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !28 ; 4 uses
  %i.fs = fcmp olt float %.099104.i, %i.fr
  %.sroa.speculated92.i = select i1 %i.fs, float %.099104.i, float %i.fr ; 2 uses
  %i.ft = fcmp olt float %i.fr, %.0105.i
  %.sroa.speculated.i = select i1 %i.ft, float %.0105.i, float %i.fr ; 2 uses
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next127.i, %wide.trip.count129.i
  br i1 %exitcond130.not.i, label %._crit_edge.i, label %.preheader100.i, !llvm.loop !42

._crit_edge.i:                                    ; preds = %bb.bg, %.noexc79
  %.099.lcssa.i = phi float [ 1.000000e+08, %.noexc79 ], [ %.sroa.speculated92.i, %bb.bg ] ; 8 uses
  %.0.lcssa.i = phi float [ -1.000000e+08, %.noexc79 ], [ %.sroa.speculated.i, %bb.bg ]
  %.058.lcssa.i = phi i32 [ 0, %.noexc79 ], [ %.159.i, %bb.bg ] ; 4 uses
  %i.fu = fsub float %.0.lcssa.i, %.099.lcssa.i
  %i.fv = fadd float %i.fu, 2.000000e+00
  %i.fw = fptosi float %i.fv to i32               ; 4 uses
  %i.fx = sext i32 %.058.lcssa.i to i64
  %i.fy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.97, i32 noundef 1006, i64 noundef range(i64 -2147483648, 2147483648) %i.fx, i64 noundef 8)
          to label %.noexc80 unwind label %.loopexit.split-lp ; 7 uses

.noexc80:                                         ; preds = %._crit_edge.i
  %i.fz = icmp sgt i32 %.058.lcssa.i, 0           ; 2 uses
  br i1 %i.fz, label %.lr.ph113.i, label %.preheader.i

.lr.ph113.i:                                      ; preds = %.noexc80
  %i.ga = sext i32 %i.fw to i64
  %wide.trip.count134.i = zext nneg i32 %.058.lcssa.i to i64
  br label %bb.bh

.preheader.i:                                     ; preds = %.noexc81, %.noexc80
  %i.gb = icmp sgt i32 %i.eu, 0
  br i1 %i.gb, label %.lr.ph115.i, label %._crit_edge.i.i.i

.lr.ph115.i:                                      ; preds = %.preheader.i
  %i.gc = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 5 uses
  %wide.trip.count139.i = zext nneg i32 %i.eu to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count139.i, 3    ; 3 uses
  %i.gd = icmp ult i32 %i.eu, 4
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph115.i.new

.lr.ph115.i.new:                                  ; preds = %.lr.ph115.i
  %unroll_iter = and i64 %wide.trip.count139.i, 2147483644
  br label %bb.bi

bb.bh:                                            ; preds = %.noexc81, %.lr.ph113.i
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph113.i ], [ %indvars.iv.next132.i, %.noexc81 ] ; 2 uses
  %i.ge = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.97, i32 noundef 1009, i64 noundef range(i64 -2147483648, 2147483648) %i.ga, i64 noundef 4)
          to label %.noexc81 unwind label %.loopexit

.noexc81:                                         ; preds = %bb.bh
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv131.i
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !43
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next132.i, %wide.trip.count134.i
  br i1 %exitcond135.not.i, label %.preheader.i, label %bb.bh, !llvm.loop !45

bb.bi:                                            ; preds = %bb.bi, %.lr.ph115.i.new
  %indvars.iv136.i = phi i64 [ 0, %.lr.ph115.i.new ], [ %indvars.iv.next137.i.3, %bb.bi ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph115.i.new ], [ %niter.next.3, %bb.bi ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv136.i
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !28
  %i.gi = fsub float %i.gh, %.099.lcssa.i
  %i.gj = fptosi float %i.gi to i32
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv136.i
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !9
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !43
  %i.gp = sext i32 %i.gj to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !9
  %indvars.iv.next137.i = or disjoint i64 %indvars.iv136.i, 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next137.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !28
  %i.gv = fsub float %i.gu, %.099.lcssa.i
  %i.gw = fptosi float %i.gv to i32
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next137.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !9
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !43
  %i.hc = sext i32 %i.gw to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !9
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !9
  %indvars.iv.next137.i.1 = or disjoint i64 %indvars.iv136.i, 2 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next137.i.1
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !28
  %i.hi = fsub float %i.hh, %.099.lcssa.i
  %i.hj = fptosi float %i.hi to i32
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next137.i.1
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !9
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !43
  %i.hp = sext i32 %i.hj to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !9
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !9
  %indvars.iv.next137.i.2 = or disjoint i64 %indvars.iv136.i, 3 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next137.i.2
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !28
  %i.hv = fsub float %i.hu, %.099.lcssa.i
  %i.hw = fptosi float %i.hv to i32
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next137.i.2
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !9
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !43
  %i.ic = sext i32 %i.hw to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.id, align 4, !tbaa !9
  %indvars.iv.next137.i.3 = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !46

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.bi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph115.i
  %indvars.iv136.i.epil.init = phi i64 [ 0, %.lr.ph115.i ], [ %indvars.iv.next137.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader
  %indvars.iv136.i.epil = phi i64 [ %indvars.iv136.i.epil.init, %.epil.preheader ], [ %indvars.iv.next137.i.epil, %bb.bj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bj ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv136.i.epil
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !28
  %i.ii = fsub float %i.ih, %.099.lcssa.i
  %i.ij = fptosi float %i.ii to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv136.i.epil
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !9
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !43
  %i.ip = sext i32 %i.ij to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !9
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !9
  %indvars.iv.next137.i.epil = add nuw nsw i64 %indvars.iv136.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %bb.bj, !llvm.loop !47

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.bj, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.it, ptr %3, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.it, ptr noundef nonnull align 1 dereferenceable(10) @.str.112, i64 10, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.iu, align 8, !tbaa !50
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.iv, align 2, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.iw, ptr %4, align 8, !tbaa !49
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ix, align 8, !tbaa !50
  store i8 0, ptr %i.iw, align 8, !tbaa !35
  %i.iy = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.111, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ev)
          to label %bb.bk unwind label %bb.bn     ; 6 uses

bb.bk:                                            ; preds = %.noexc82
  %i.iz = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.iw
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.bk
  %i.jb = load i64, ptr %i.iw, align 8, !tbaa !35
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.jd = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.it
end_hunk_0
