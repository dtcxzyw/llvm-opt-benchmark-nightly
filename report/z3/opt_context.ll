Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_context?download=true
inline.NumInlined: 3730
inline.NumDeleted: 1509
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_Z18for_each_expr_coreIN3opt7context5is_fdE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr:bb.a

.noexc126:                                        ; preds = %bb.z
  %i.er = load i32, ptr %i.ag, align 8, !tbaa !568 ; 5 uses
  %.not.i.i111 = icmp eq i32 %i.er, 0
  %.pre.i.i112 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i111, label %._crit_edge.i.i118, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.noexc126
  %wide.trip.count.i.i114 = zext i32 %i.er to i64 ; 2 uses
  %xtraiter491 = and i64 %wide.trip.count.i.i114, 1
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %.epil.preheader490, label %.lr.ph.i.i113.new

.lr.ph.i.i113.new:                                ; preds = %.lr.ph.i.i113
  %unroll_iter494 = and i64 %wide.trip.count.i.i114, 4294967294
  br label %bb.ab

._crit_edge.i.i118.loopexit.unr-lcssa:            ; preds = %bb.ab
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %._crit_edge.i.i118, label %.epil.preheader490

.epil.preheader490:                               ; preds = %._crit_edge.i.i118.loopexit.unr-lcssa, %.lr.ph.i.i113
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.i.i113 ], [ %indvars.iv.next.i.i116.1, %._crit_edge.i.i118.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod493 = trunc i32 %i.er to i1
  call void @llvm.assume(i1 %lcmp.mod493)
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.i.i115.epil.init
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i115.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false)
  br label %._crit_edge.i.i118

._crit_edge.i.i118:                               ; preds = %.epil.preheader490, %._crit_edge.i.i118.loopexit.unr-lcssa, %.noexc126
  %.not.i.i.i119 = icmp eq ptr %.pre.i.i112, %i.af
  %i.ev = icmp eq ptr %.pre.i.i112, null
  %or.cond.i.i.i120 = or i1 %.not.i.i.i119, %i.ev
  br i1 %or.cond.i.i.i120, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i118
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i112)
          to label %.noexc127 unwind label %bb.ac

.noexc127:                                        ; preds = %bb.aa
  %.pre2.pre.i121 = load i32, ptr %i.ag, align 8, !tbaa !568
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i113.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.i.i113.new ], [ %indvars.iv.next.i.i116.1, %bb.ab ] ; 4 uses
  %niter495 = phi i64 [ 0, %.lr.ph.i.i113.new ], [ %niter495.next.1, %bb.ab ]
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.i.i115
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false)
  %indvars.iv.next.i.i116 = or disjoint i64 %indvars.iv.i.i115, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i116
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false)
  %indvars.iv.next.i.i116.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter495.next.1 = add i64 %niter495, 2         ; 2 uses
  %niter495.ncmp.1 = icmp eq i64 %niter495.next.1, %unroll_iter494
  br i1 %niter495.ncmp.1, label %._crit_edge.i.i118.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !38

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122: ; preds = %.noexc127, %._crit_edge.i.i118
  %.pre2.i123 = phi i32 [ %i.er, %._crit_edge.i.i118 ], [ %.pre2.pre.i121, %.noexc127 ]
  store ptr %i.eq, ptr %3, align 8, !tbaa !566
  store i32 %i.en, ptr %i.ah, align 4, !tbaa !567
  br label %_ZN3opt7context5is_fdclEP3app.exit141

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ad:                                            ; preds = %bb.n
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.164, i32 noundef 73, ptr noundef nonnull @.str.13)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN3opt7context5is_fdclEP3app.exit unwind label %.loopexit

_ZN3opt7context5is_fdclEP3app.exit:               ; preds = %.noexc108, %.noexc106, %bb.v, %_ZNK3app13get_family_idEv.exit.thread.i, %_ZNK3app13get_family_idEv.exit.i, %bb.ae, %bb.j
  %i.fb = load i32, ptr %i.az, align 8, !tbaa !571 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, %i.ay
  br i1 %i.fc, label %bb.i, label %._crit_edge275

._crit_edge275:                                   ; preds = %_ZN3opt7context5is_fdclEP3app.exit
  %.pre304 = load i32, ptr %i.ag, align 8, !tbaa !568
  %.pre305 = add i32 %.pre304, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge275
  %.pre-phi = phi i32 [ %.pre305, %._crit_edge275 ], [ %i.aq, %bb.h ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i32 %.pre-phi, ptr %i.ag, align 8, !tbaa !568
  %i.ff = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !435
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !141 ; 3 uses
  %i.fj = icmp eq ptr %i.fi, null                 ; 2 uses
  br i1 %i.fj, label %_ZNK3app13get_family_idEv.exit.thread.i131, label %_ZNK3app13get_family_idEv.exit.i129

_ZNK3app13get_family_idEv.exit.i129:              ; preds = %._crit_edge
  %i.fk = load i32, ptr %i.fi, align 8, !tbaa !145 ; 2 uses
  %.not.i130 = icmp eq i32 %i.fk, 0
  br i1 %.not.i130, label %thread-pre-split, label %_ZNK3app13get_family_idEv.exit.thread.i131

_ZNK3app13get_family_idEv.exit.thread.i131:       ; preds = %_ZNK3app13get_family_idEv.exit.i129, %._crit_edge
  %i.fl = phi i32 [ %i.fk, %_ZNK3app13get_family_idEv.exit.i129 ], [ -1, %._crit_edge ] ; 2 uses
  %i.fm = load i32, ptr %i.al, align 8, !tbaa !421
  %.not7.i132 = icmp eq i32 %i.fl, %i.fm
  br i1 %.not7.i132, label %thread-pre-split, label %bb.af

bb.af:                                            ; preds = %_ZNK3app13get_family_idEv.exit.thread.i131
  %i.fn = load i32, ptr %i.am, align 8, !tbaa !312
  %.not8.i133 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not8.i133, label %thread-pre-split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %i.fd, align 4
  %i.fp = and i32 %i.fo, 65535
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ah, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

bb.ah:                                            ; preds = %bb.ag
  %i.fr = load i32, ptr %i.fe, align 8, !tbaa !434
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ai, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fj, label %_Z17is_uninterp_constPK4expr.exit.thread10.i136, label %_Z17is_uninterp_constPK4expr.exit.i135

_Z17is_uninterp_constPK4expr.exit.i135:           ; preds = %bb.ai
  %i.ft = load i32, ptr %i.fi, align 8, !tbaa !145
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %_Z17is_uninterp_constPK4expr.exit.thread10.i136, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

_Z17is_uninterp_constPK4expr.exit.thread10.i136:  ; preds = %_Z17is_uninterp_constPK4expr.exit.i135, %bb.ai
  %i.fv = load ptr, ptr %0, align 8, !tbaa !968, !nonnull !67, !align !68
  %i.fw = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fv, ptr noundef nonnull %i.at)
          to label %.noexc137 unwind label %.loopexit226

.noexc137:                                        ; preds = %_Z17is_uninterp_constPK4expr.exit.thread10.i136
  br i1 %i.fw, label %thread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %.noexc137
  %i.fx = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.at)
          to label %.noexc138 unwind label %.loopexit226

.noexc138:                                        ; preds = %bb.aj
  %i.fy = invoke noundef zeroext i1 @_ZNK14bv_recognizers10is_bv_sortEPK4sort(ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef %i.fx)
          to label %.noexc139 unwind label %.loopexit226

.noexc139:                                        ; preds = %.noexc138
  br i1 %i.fy, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

_Z17is_uninterp_constPK4expr.exit.thread.i134:    ; preds = %.noexc139, %_Z17is_uninterp_constPK4expr.exit.i135, %bb.ah, %bb.ag
  %i.fz = call ptr @__cxa_allocate_exception(i64 1) #27
  invoke void @__cxa_throw(ptr %i.fz, ptr nonnull @_ZTIN3opt7context5is_fd8found_fdE, ptr null) #28
          to label %.noexc140 unwind label %.loopexit.split-lp227

.noexc140:                                        ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i134
  unreachable

.loopexit226:                                     ; preds = %_Z17is_uninterp_constPK4expr.exit.thread10.i136, %bb.aj, %.noexc138
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp227:                            ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i134
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ak:                                            ; preds = %.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !574 ; 3 uses
  %i.gc = add i32 %i.gb, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !575
  %i.gf = add i32 %i.gc, %i.ge                    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.gi = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.gj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.pre = load i32, ptr %i.gg, align 8, !tbaa !571 ; 2 uses
  %i.gk = xor i32 %i.gb, -1
  %i.gl = icmp ult i32 %.pre, %i.gf
  br i1 %i.gl, label %.lr.ph427, label %._crit_edge428

bb.al:                                            ; preds = %bb.aq
  %i.gm = icmp ult i32 %i.gx, %i.gf
  br i1 %i.gm, label %.lr.ph427, label %._crit_edge428, !llvm.loop !963

.lr.ph427:                                        ; preds = %bb.ak, %bb.al
  %i.gn = phi i32 [ %i.gx, %bb.al ], [ %.pre, %bb.ak ] ; 5 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph427
  %.not.i142 = icmp ugt i32 %i.gn, %i.gb
  %i.gp = load i32, ptr %i.gi, align 4, !tbaa !576
  %i.gq = zext i32 %i.gp to i64
  %.idx.i.i6.i = shl nuw nsw i64 %i.gq, 4
  %4 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.idx.i.i6.i ; 2 uses
  br i1 %.not.i142, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gr = add i32 %i.gn, -1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gu = add i32 %i.gn, %i.gk
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gv
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph427, %bb.ao, %bb.an
  %.0.in.i = phi ptr [ %i.gw, %bb.ao ], [ %i.gt, %bb.an ], [ %i.gj, %.lr.ph427 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !63 ; 6 uses
  %i.gx = add nuw i32 %i.gn, 1                    ; 3 uses
  store i32 %i.gx, ptr %i.gg, align 8, !tbaa !571
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !70
  %i.ha = icmp ugt i32 %i.gz, 1
  br i1 %i.ha, label %bb.aq, label %.loopexit225

bb.aq:                                            ; preds = %bb.ap
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hc = load i32, ptr %i.hb, align 4            ; 2 uses
  %i.hd = and i32 %i.hc, 65536
  %.not222 = icmp eq i32 %i.hd, 0
  br i1 %.not222, label %bb.at, label %bb.al, !llvm.loop !963

bb.ar:                                            ; preds = %._crit_edge428
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.as:                                            ; preds = %bb.av, %bb.au
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.at:                                            ; preds = %bb.aq
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hh = or disjoint i32 %i.hc, 65536
  store i32 %i.hh, ptr %i.hg, align 4
  %i.hi = load i32, ptr %i.ai, align 8, !tbaa !425 ; 2 uses
  %i.hj = load i32, ptr %i.aj, align 4, !tbaa !426 ; 2 uses
  %.not.i.i144 = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i.i144, label %._crit_edge.i.i159, label %bb.au

._crit_edge.i.i159:                               ; preds = %bb.at
  %.pre.i.i160 = load ptr, ptr %1, align 8, !tbaa !424
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit163

bb.au:                                            ; preds = %bb.at
  %i.hk = shl i32 %i.hj, 1                        ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hm)
          to label %.noexc161 unwind label %bb.as ; 9 uses

.noexc161:                                        ; preds = %bb.au
  %i.ho = load i32, ptr %i.ai, align 8, !tbaa !425 ; 4 uses
  %.not.i.i.i145 = icmp eq i32 %i.ho, 0
  %.pre.i.i.i146 = load ptr, ptr %1, align 8, !tbaa !424 ; 10 uses
  br i1 %.not.i.i.i145, label %._crit_edge.i.i.i152, label %.lr.ph.i.i.i147

.lr.ph.i.i.i147:                                  ; preds = %.noexc161
  %.pre.i.i.i146446 = ptrtoaddr ptr %.pre.i.i.i146 to i64
  %i.hp = ptrtoaddr ptr %i.hn to i64
  %wide.trip.count.i.i.i148 = zext i32 %i.ho to i64 ; 5 uses
  %min.iters.check449 = icmp ult i32 %i.ho, 4
  %i.hq = sub i64 %.pre.i.i.i146446, %i.hp
  %diff.check447 = icmp ugt i64 %i.hq, -32
  %or.cond460 = select i1 %min.iters.check449, i1 true, i1 %diff.check447
  br i1 %or.cond460, label %scalar.ph448.preheader, label %vector.ph450

vector.ph450:                                     ; preds = %.lr.ph.i.i.i147
  %n.vec451 = and i64 %wide.trip.count.i.i.i148, 4294967292 ; 3 uses
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph450
  %index453 = phi i64 [ 0, %vector.ph450 ], [ %index.next456, %vector.body452 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %index453 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %index453 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load454 = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !430
  %wide.load455 = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !430
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <2 x ptr> %wide.load454, ptr %i.hr, align 8, !tbaa !430
  store <2 x ptr> %wide.load455, ptr %i.hu, align 8, !tbaa !430
  %index.next456 = add nuw i64 %index453, 4       ; 2 uses
  %i.hv = icmp eq i64 %index.next456, %n.vec451
  br i1 %i.hv, label %middle.block457, label %vector.body452, !llvm.loop !964

middle.block457:                                  ; preds = %vector.body452
  %cmp.n458 = icmp eq i64 %n.vec451, %wide.trip.count.i.i.i148
  br i1 %cmp.n458, label %._crit_edge.i.i.i152, label %scalar.ph448.preheader

scalar.ph448.preheader:                           ; preds = %.lr.ph.i.i.i147, %middle.block457
  %indvars.iv.i.i.i149.ph = phi i64 [ 0, %.lr.ph.i.i.i147 ], [ %n.vec451, %middle.block457 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i148, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph448.prol.loopexit, label %scalar.ph448.prol

scalar.ph448.prol:                                ; preds = %scalar.ph448.preheader, %scalar.ph448.prol
  %indvars.iv.i.i.i149.prol = phi i64 [ %indvars.iv.next.i.i.i150.prol, %scalar.ph448.prol ], [ %indvars.iv.i.i.i149.ph, %scalar.ph448.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph448.prol ], [ 0, %scalar.ph448.preheader ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i.i.i149.prol
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.i.i.i149.prol
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !430
  store ptr %i.hy, ptr %i.hw, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.prol = add nuw nsw i64 %indvars.iv.i.i.i149.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph448.prol.loopexit, label %scalar.ph448.prol, !llvm.loop !965

scalar.ph448.prol.loopexit:                       ; preds = %scalar.ph448.prol, %scalar.ph448.preheader
  %indvars.iv.i.i.i149.unr = phi i64 [ %indvars.iv.i.i.i149.ph, %scalar.ph448.preheader ], [ %indvars.iv.next.i.i.i150.prol, %scalar.ph448.prol ]
  %i.hz = sub nsw i64 %indvars.iv.i.i.i149.ph, %wide.trip.count.i.i.i148
  %i.ia = icmp ugt i64 %i.hz, -4
  br i1 %i.ia, label %._crit_edge.i.i.i152, label %scalar.ph448

._crit_edge.i.i.i152:                             ; preds = %scalar.ph448.prol.loopexit, %scalar.ph448, %middle.block457, %.noexc161
  %.not.i.i.i.i153 = icmp eq ptr %.pre.i.i.i146, %i.ak
  %i.ib = icmp eq ptr %.pre.i.i.i146, null
  %or.cond.i.i.i.i154 = or i1 %.not.i.i.i.i153, %i.ib
  br i1 %or.cond.i.i.i.i154, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i.i152
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i146)
          to label %.noexc162 unwind label %bb.as

.noexc162:                                        ; preds = %bb.av
  %.pre2.pre.i.i155 = load i32, ptr %i.ai, align 8, !tbaa !425
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156

scalar.ph448:                                     ; preds = %scalar.ph448.prol.loopexit, %scalar.ph448
  %indvars.iv.i.i.i149 = phi i64 [ %indvars.iv.next.i.i.i150.3, %scalar.ph448 ], [ %indvars.iv.i.i.i149.unr, %scalar.ph448.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.i.i.i149
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.i.i.i149
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !430
  store ptr %i.ie, ptr %i.ic, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150 = add nuw nsw i64 %indvars.iv.i.i.i149, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i150
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !430
  store ptr %i.ih, ptr %i.if, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.1 = add nuw nsw i64 %indvars.iv.i.i.i149, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i150.1
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150.1
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !430
  store ptr %i.ik, ptr %i.ii, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.2 = add nuw nsw i64 %indvars.iv.i.i.i149, 3 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %indvars.iv.next.i.i.i150.2
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150.2
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !430
  store ptr %i.in, ptr %i.il, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.3 = add nuw nsw i64 %indvars.iv.i.i.i149, 4 ; 2 uses
  %exitcond.not.i.i.i151.3 = icmp eq i64 %indvars.iv.next.i.i.i150.3, %wide.trip.count.i.i.i148
  br i1 %exitcond.not.i.i.i151.3, label %._crit_edge.i.i.i152, label %scalar.ph448, !llvm.loop !966

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156:  ; preds = %.noexc162, %._crit_edge.i.i.i152
  %.pre2.i.i157 = phi i32 [ %i.ho, %._crit_edge.i.i.i152 ], [ %.pre2.pre.i.i155, %.noexc162 ]
  store ptr %i.hn, ptr %1, align 8, !tbaa !424
  store i32 %i.hk, ptr %i.aj, align 4, !tbaa !426
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit163

_ZN13ast_fast_markILj1EE4markEP3ast.exit163:      ; preds = %._crit_edge.i.i159, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156
  %i.io = phi i32 [ %i.hi, %._crit_edge.i.i159 ], [ %.pre2.i.i157, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156 ] ; 2 uses
  %i.ip = phi ptr [ %.pre.i.i160, %._crit_edge.i.i159 ], [ %i.hn, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156 ]
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  store ptr %.0.i, ptr %i.ir, align 8, !tbaa !430
  %i.is = add i32 %i.io, 1
  store i32 %i.is, ptr %i.ai, align 8, !tbaa !425
  %.pre303 = load i32, ptr %i.ag, align 8, !tbaa !568
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.ap, %_ZN13ast_fast_markILj1EE4markEP3ast.exit163
  %i.it = phi i32 [ %.pre303, %_ZN13ast_fast_markILj1EE4markEP3ast.exit163 ], [ %i.ao, %bb.ap ] ; 2 uses
  %i.iu = load i32, ptr %i.ah, align 4, !tbaa !567 ; 2 uses
  %.not.i164 = icmp ult i32 %i.it, %i.iu
  br i1 %.not.i164, label %._crit_edge.i178, label %bb.aw

._crit_edge.i178:                                 ; preds = %.loopexit225
  %.pre.i179 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context5is_fdclEP3app.exit141

bb.aw:                                            ; preds = %.loopexit225
  %i.iv = shl i32 %i.iu, 1                        ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = shl nuw nsw i64 %i.iw, 4
  %i.iy = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ix)
          to label %.noexc180 unwind label %bb.az ; 5 uses

.noexc180:                                        ; preds = %bb.aw
  %i.iz = load i32, ptr %i.ag, align 8, !tbaa !568 ; 5 uses
  %.not.i.i165 = icmp eq i32 %i.iz, 0
  %.pre.i.i166 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i165, label %._crit_edge.i.i172, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.noexc180
  %wide.trip.count.i.i168 = zext i32 %i.iz to i64 ; 2 uses
  %xtraiter484 = and i64 %wide.trip.count.i.i168, 1
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph.i.i167.new

.lr.ph.i.i167.new:                                ; preds = %.lr.ph.i.i167
  %unroll_iter = and i64 %wide.trip.count.i.i168, 4294967294
  br label %bb.ay

end_hunk_0
begin_hunk_1_@_Z18for_each_expr_coreIN3opt7context19is_propositional_fnE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !434
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !435
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !141 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN3opt7context19is_propositional_fnclEP3app.exit, label %_ZNK3app13get_family_idEv.exit.i

_ZNK3app13get_family_idEv.exit.i:                 ; preds = %bb.u
  %i.dz = load i32, ptr %i.dx, align 8, !tbaa !145
  %.off = add i32 %i.dz, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %.invoke, label %_ZN3opt7context19is_propositional_fnclEP3app.exit

bb.v:                                             ; preds = %bb.t
  %i.ea = load i32, ptr %i.ag, align 8, !tbaa !568 ; 2 uses
  %i.eb = load i32, ptr %i.ah, align 4, !tbaa !567 ; 2 uses
  %.not.i107 = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i107, label %._crit_edge.i121, label %bb.w

._crit_edge.i121:                                 ; preds = %bb.v
  %.pre.i122 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.w:                                             ; preds = %bb.v
  %i.ec = shl i32 %i.eb, 1                        ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 4
  %i.ef = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ee)
          to label %.noexc123 unwind label %bb.z  ; 5 uses

.noexc123:                                        ; preds = %bb.w
  %i.eg = load i32, ptr %i.ag, align 8, !tbaa !568 ; 5 uses
  %.not.i.i108 = icmp eq i32 %i.eg, 0
  %.pre.i.i109 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i108, label %._crit_edge.i.i115, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %.noexc123
  %wide.trip.count.i.i111 = zext i32 %i.eg to i64 ; 2 uses
  %xtraiter473 = and i64 %wide.trip.count.i.i111, 1
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %.epil.preheader472, label %.lr.ph.i.i110.new

.lr.ph.i.i110.new:                                ; preds = %.lr.ph.i.i110
  %unroll_iter476 = and i64 %wide.trip.count.i.i111, 4294967294
  br label %bb.y

._crit_edge.i.i115.loopexit.unr-lcssa:            ; preds = %bb.y
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %._crit_edge.i.i115, label %.epil.preheader472

.epil.preheader472:                               ; preds = %._crit_edge.i.i115.loopexit.unr-lcssa, %.lr.ph.i.i110
  %indvars.iv.i.i112.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %indvars.iv.next.i.i113.1, %._crit_edge.i.i115.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod475 = trunc i32 %i.eg to i1
  call void @llvm.assume(i1 %lcmp.mod475)
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.i112.epil.init
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.i.i112.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false)
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %.epil.preheader472, %._crit_edge.i.i115.loopexit.unr-lcssa, %.noexc123
  %.not.i.i.i116 = icmp eq ptr %.pre.i.i109, %i.af
  %i.ek = icmp eq ptr %.pre.i.i109, null
  %or.cond.i.i.i117 = or i1 %.not.i.i.i116, %i.ek
  br i1 %or.cond.i.i.i117, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i115
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i109)
          to label %.noexc124 unwind label %bb.z

.noexc124:                                        ; preds = %bb.x
  %.pre2.pre.i118 = load i32, ptr %i.ag, align 8, !tbaa !568
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i110.new
  %indvars.iv.i.i112 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %indvars.iv.next.i.i113.1, %bb.y ] ; 4 uses
  %niter477 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %niter477.next.1, %bb.y ]
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.i112
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
  %indvars.iv.next.i.i113 = or disjoint i64 %indvars.iv.i.i112, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i113
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.next.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  %indvars.iv.next.i.i113.1 = add nuw nsw i64 %indvars.iv.i.i112, 2 ; 2 uses
  %niter477.next.1 = add i64 %niter477, 2         ; 2 uses
  %niter477.ncmp.1 = icmp eq i64 %niter477.next.1, %unroll_iter476
  br i1 %niter477.ncmp.1, label %._crit_edge.i.i115.loopexit.unr-lcssa, label %bb.y, !llvm.loop !38

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119: ; preds = %.noexc124, %._crit_edge.i.i115
  %.pre2.i120 = phi i32 [ %i.eg, %._crit_edge.i.i115 ], [ %.pre2.pre.i118, %.noexc124 ]
  store ptr %i.ef, ptr %3, align 8, !tbaa !566
  store i32 %i.ec, ptr %i.ah, align 4, !tbaa !567
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aa:                                            ; preds = %bb.n
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.164, i32 noundef 73, ptr noundef nonnull @.str.13)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN3opt7context19is_propositional_fnclEP3app.exit unwind label %.loopexit

_ZN3opt7context19is_propositional_fnclEP3app.exit: ; preds = %_ZNK3app13get_family_idEv.exit.i, %bb.u, %bb.ab, %bb.j
  %i.eq = load i32, ptr %i.ax, align 8, !tbaa !571 ; 2 uses
  %i.er = icmp ult i32 %i.eq, %i.aw
  br i1 %i.er, label %bb.i, label %._crit_edge261

._crit_edge261:                                   ; preds = %_ZN3opt7context19is_propositional_fnclEP3app.exit
  %.pre290 = load i32, ptr %i.ag, align 8, !tbaa !568
  %.pre292 = add i32 %.pre290, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge261
  %.pre-phi = phi i32 [ %.pre292, %._crit_edge261 ], [ %i.ao, %bb.h ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i32 %.pre-phi, ptr %i.ag, align 8, !tbaa !568
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !435
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !141 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null                 ; 2 uses
  br i1 %i.ey, label %_ZNK3app13get_family_idEv.exit.thread.i128, label %_ZNK3app13get_family_idEv.exit.i126

_ZNK3app13get_family_idEv.exit.i126:              ; preds = %._crit_edge
  %i.ez = load i32, ptr %i.ex, align 8, !tbaa !145
  %.not.i127 = icmp eq i32 %i.ez, 0
  br i1 %.not.i127, label %thread-pre-split, label %_ZNK3app13get_family_idEv.exit.thread.i128

_ZNK3app13get_family_idEv.exit.thread.i128:       ; preds = %_ZNK3app13get_family_idEv.exit.i126, %._crit_edge
  %i.fa = load i32, ptr %i.es, align 4
  %i.fb = and i32 %i.fa, 65535
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ac, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

bb.ac:                                            ; preds = %_ZNK3app13get_family_idEv.exit.thread.i128
  %i.fd = load i32, ptr %i.et, align 8, !tbaa !434
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.ad, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ey, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.i130

_Z17is_uninterp_constPK4expr.exit.i130:           ; preds = %bb.ad
  %i.ff = load i32, ptr %i.ex, align 8, !tbaa !145
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

_Z17is_uninterp_constPK4expr.exit.thread.i129:    ; preds = %_Z17is_uninterp_constPK4expr.exit.i130, %bb.ac, %_ZNK3app13get_family_idEv.exit.thread.i128
  %i.fh = call ptr @__cxa_allocate_exception(i64 1) #27
  invoke void @__cxa_throw(ptr %i.fh, ptr nonnull @_ZTIN3opt7context19is_propositional_fn5foundE, ptr null) #28
          to label %.noexc131 unwind label %bb.ae

.noexc131:                                        ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i129
  unreachable

bb.ae:                                            ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i129
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.af:                                            ; preds = %.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !574 ; 3 uses
  %i.fl = add i32 %i.fk, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !575
  %i.fo = add i32 %i.fl, %i.fn                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.pre = load i32, ptr %i.fp, align 8, !tbaa !571 ; 2 uses
  %i.ft = xor i32 %i.fk, -1
  %i.fu = icmp ult i32 %.pre, %i.fo
  br i1 %i.fu, label %.lr.ph410, label %._crit_edge411

bb.ag:                                            ; preds = %bb.al
  %i.fv = icmp ult i32 %i.gg, %i.fo
  br i1 %i.fv, label %.lr.ph410, label %._crit_edge411, !llvm.loop !975

.lr.ph410:                                        ; preds = %bb.af, %bb.ag
  %i.fw = phi i32 [ %i.gg, %bb.ag ], [ %.pre, %bb.af ] ; 5 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph410
  %.not.i133 = icmp ugt i32 %i.fw, %i.fk
  %i.fy = load i32, ptr %i.fr, align 4, !tbaa !576
  %i.fz = zext i32 %i.fy to i64
  %.idx.i.i6.i = shl nuw nsw i64 %i.fz, 4
  %4 = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i6.i ; 2 uses
  br i1 %.not.i133, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = add i32 %i.fw, -1
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gb
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gd = add i32 %i.fw, %i.ft
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ge
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph410, %bb.aj, %bb.ai
  %.0.in.i = phi ptr [ %i.gf, %bb.aj ], [ %i.gc, %bb.ai ], [ %i.fs, %.lr.ph410 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !63 ; 6 uses
  %i.gg = add nuw i32 %i.fw, 1                    ; 3 uses
  store i32 %i.gg, ptr %i.fp, align 8, !tbaa !571
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !70
  %i.gj = icmp ugt i32 %i.gi, 1
  br i1 %i.gj, label %bb.al, label %.loopexit216

bb.al:                                            ; preds = %bb.ak
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %i.gm = and i32 %i.gl, 65536
  %.not213 = icmp eq i32 %i.gm, 0
  br i1 %.not213, label %bb.ao, label %bb.ag, !llvm.loop !975

bb.am:                                            ; preds = %._crit_edge411
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.an:                                            ; preds = %bb.aq, %bb.ap
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.gq = or disjoint i32 %i.gl, 65536
  store i32 %i.gq, ptr %i.gp, align 4
  %i.gr = load i32, ptr %i.ai, align 8, !tbaa !425 ; 2 uses
  %i.gs = load i32, ptr %i.aj, align 4, !tbaa !426 ; 2 uses
  %.not.i.i135 = icmp ult i32 %i.gr, %i.gs
  br i1 %.not.i.i135, label %._crit_edge.i.i150, label %bb.ap

._crit_edge.i.i150:                               ; preds = %bb.ao
  %.pre.i.i151 = load ptr, ptr %1, align 8, !tbaa !424
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit154

bb.ap:                                            ; preds = %bb.ao
  %i.gt = shl i32 %i.gs, 1                        ; 2 uses
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 3
  %i.gw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.gv)
          to label %.noexc152 unwind label %bb.an ; 9 uses

.noexc152:                                        ; preds = %bb.ap
  %i.gx = load i32, ptr %i.ai, align 8, !tbaa !425 ; 4 uses
  %.not.i.i.i136 = icmp eq i32 %i.gx, 0
  %.pre.i.i.i137 = load ptr, ptr %1, align 8, !tbaa !424 ; 10 uses
  br i1 %.not.i.i.i136, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %.noexc152
  %.pre.i.i.i137429 = ptrtoaddr ptr %.pre.i.i.i137 to i64
  %i.gy = ptrtoaddr ptr %i.gw to i64
  %wide.trip.count.i.i.i139 = zext i32 %i.gx to i64 ; 5 uses
  %min.iters.check432 = icmp ult i32 %i.gx, 4
  %i.gz = sub i64 %.pre.i.i.i137429, %i.gy
  %diff.check430 = icmp ugt i64 %i.gz, -32
  %or.cond443 = select i1 %min.iters.check432, i1 true, i1 %diff.check430
  br i1 %or.cond443, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph.i.i.i138
  %n.vec434 = and i64 %wide.trip.count.i.i.i139, 4294967292 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next439, %vector.body435 ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %index436 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %index436 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load437 = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !430
  %wide.load438 = load <2 x ptr>, ptr %i.hc, align 8, !tbaa !430
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <2 x ptr> %wide.load437, ptr %i.ha, align 8, !tbaa !430
  store <2 x ptr> %wide.load438, ptr %i.hd, align 8, !tbaa !430
  %index.next439 = add nuw i64 %index436, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.he, label %middle.block440, label %vector.body435, !llvm.loop !976

middle.block440:                                  ; preds = %vector.body435
  %cmp.n441 = icmp eq i64 %n.vec434, %wide.trip.count.i.i.i139
  br i1 %cmp.n441, label %._crit_edge.i.i.i143, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.lr.ph.i.i.i138, %middle.block440
  %indvars.iv.i.i.i140.ph = phi i64 [ 0, %.lr.ph.i.i.i138 ], [ %n.vec434, %middle.block440 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i139, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph431.prol.loopexit, label %scalar.ph431.prol

scalar.ph431.prol:                                ; preds = %scalar.ph431.preheader, %scalar.ph431.prol
  %indvars.iv.i.i.i140.prol = phi i64 [ %indvars.iv.next.i.i.i141.prol, %scalar.ph431.prol ], [ %indvars.iv.i.i.i140.ph, %scalar.ph431.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph431.prol ], [ 0, %scalar.ph431.preheader ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i.i140.prol
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.i.i.i140.prol
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !430
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.prol = add nuw nsw i64 %indvars.iv.i.i.i140.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph431.prol.loopexit, label %scalar.ph431.prol, !llvm.loop !977

scalar.ph431.prol.loopexit:                       ; preds = %scalar.ph431.prol, %scalar.ph431.preheader
  %indvars.iv.i.i.i140.unr = phi i64 [ %indvars.iv.i.i.i140.ph, %scalar.ph431.preheader ], [ %indvars.iv.next.i.i.i141.prol, %scalar.ph431.prol ]
  %i.hi = sub nsw i64 %indvars.iv.i.i.i140.ph, %wide.trip.count.i.i.i139
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %._crit_edge.i.i.i143, label %scalar.ph431

._crit_edge.i.i.i143:                             ; preds = %scalar.ph431.prol.loopexit, %scalar.ph431, %middle.block440, %.noexc152
  %.not.i.i.i.i144 = icmp eq ptr %.pre.i.i.i137, %i.ak
  %i.hk = icmp eq ptr %.pre.i.i.i137, null
  %or.cond.i.i.i.i145 = or i1 %.not.i.i.i.i144, %i.hk
  br i1 %or.cond.i.i.i.i145, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i.i.i143
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i137)
          to label %.noexc153 unwind label %bb.an

.noexc153:                                        ; preds = %bb.aq
  %.pre2.pre.i.i146 = load i32, ptr %i.ai, align 8, !tbaa !425
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147

scalar.ph431:                                     ; preds = %scalar.ph431.prol.loopexit, %scalar.ph431
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i141.3, %scalar.ph431 ], [ %indvars.iv.i.i.i140.unr, %scalar.ph431.prol.loopexit ] ; 6 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.i.i.i140
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.i.i.i140
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !430
  store ptr %i.hn, ptr %i.hl, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141 = add nuw nsw i64 %indvars.iv.i.i.i140, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i.i141
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !430
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.1 = add nuw nsw i64 %indvars.iv.i.i.i140, 2 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i.i141.1
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141.1
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !430
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.2 = add nuw nsw i64 %indvars.iv.i.i.i140, 3 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next.i.i.i141.2
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141.2
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !430
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.3 = add nuw nsw i64 %indvars.iv.i.i.i140, 4 ; 2 uses
  %exitcond.not.i.i.i142.3 = icmp eq i64 %indvars.iv.next.i.i.i141.3, %wide.trip.count.i.i.i139
  br i1 %exitcond.not.i.i.i142.3, label %._crit_edge.i.i.i143, label %scalar.ph431, !llvm.loop !978

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147:  ; preds = %.noexc153, %._crit_edge.i.i.i143
  %.pre2.i.i148 = phi i32 [ %i.gx, %._crit_edge.i.i.i143 ], [ %.pre2.pre.i.i146, %.noexc153 ]
  store ptr %i.gw, ptr %1, align 8, !tbaa !424
  store i32 %i.gt, ptr %i.aj, align 4, !tbaa !426
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit154

_ZN13ast_fast_markILj1EE4markEP3ast.exit154:      ; preds = %._crit_edge.i.i150, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147
  %i.hx = phi i32 [ %i.gr, %._crit_edge.i.i150 ], [ %.pre2.i.i148, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147 ] ; 2 uses
  %i.hy = phi ptr [ %.pre.i.i151, %._crit_edge.i.i150 ], [ %i.gw, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147 ]
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz
  store ptr %.0.i, ptr %i.ia, align 8, !tbaa !430
  %i.ib = add i32 %i.hx, 1
  store i32 %i.ib, ptr %i.ai, align 8, !tbaa !425
  %.pre289 = load i32, ptr %i.ag, align 8, !tbaa !568
  br label %.loopexit216

.loopexit216:                                     ; preds = %bb.ak, %_ZN13ast_fast_markILj1EE4markEP3ast.exit154
  %i.ic = phi i32 [ %.pre289, %_ZN13ast_fast_markILj1EE4markEP3ast.exit154 ], [ %i.am, %bb.ak ] ; 2 uses
  %i.id = load i32, ptr %i.ah, align 4, !tbaa !567 ; 2 uses
  %.not.i155 = icmp ult i32 %i.ic, %i.id
  br i1 %.not.i155, label %._crit_edge.i169, label %bb.ar

._crit_edge.i169:                                 ; preds = %.loopexit216
  %.pre.i170 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.ar:                                            ; preds = %.loopexit216
  %i.ie = shl i32 %i.id, 1                        ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 4
  %i.ih = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ig)
          to label %.noexc171 unwind label %bb.au ; 5 uses

.noexc171:                                        ; preds = %bb.ar
  %i.ii = load i32, ptr %i.ag, align 8, !tbaa !568 ; 5 uses
  %.not.i.i156 = icmp eq i32 %i.ii, 0
  %.pre.i.i157 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i156, label %._crit_edge.i.i163, label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.noexc171
  %wide.trip.count.i.i159 = zext i32 %i.ii to i64 ; 2 uses
  %xtraiter466 = and i64 %wide.trip.count.i.i159, 1
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %.epil.preheader, label %.lr.ph.i.i158.new

.lr.ph.i.i158.new:                                ; preds = %.lr.ph.i.i158
  %unroll_iter = and i64 %wide.trip.count.i.i159, 4294967294
  br label %bb.at

end_hunk_1
