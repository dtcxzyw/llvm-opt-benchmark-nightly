Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_context?download=true
inline.NumInlined: 3730
inline.NumDeleted: 1509
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_Z18for_each_expr_coreIN3opt7context5is_fdE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr:bb.a

.noexc126:                                        ; preds = %bb.z
  %i.fh = load i32, ptr %i.aw, align 8, !tbaa !568 ; 5 uses
  %.not.i.i111 = icmp eq i32 %i.fh, 0
  %.pre.i.i112 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i111, label %._crit_edge.i.i118, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.noexc126
  %wide.trip.count.i.i114 = zext i32 %i.fh to i64 ; 2 uses
  %xtraiter498 = and i64 %wide.trip.count.i.i114, 1
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %.epil.preheader497, label %.lr.ph.i.i113.new

.lr.ph.i.i113.new:                                ; preds = %.lr.ph.i.i113
  %unroll_iter501 = and i64 %wide.trip.count.i.i114, 4294967294
  br label %bb.ab

._crit_edge.i.i118.loopexit.unr-lcssa:            ; preds = %bb.ab
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %._crit_edge.i.i118, label %.epil.preheader497

.epil.preheader497:                               ; preds = %._crit_edge.i.i118.loopexit.unr-lcssa, %.lr.ph.i.i113
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.i.i113 ], [ %indvars.iv.next.i.i116.1, %._crit_edge.i.i118.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod500 = trunc i32 %i.fh to i1
  call void @llvm.assume(i1 %lcmp.mod500)
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.i.i115.epil.init
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i115.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false)
  br label %._crit_edge.i.i118

._crit_edge.i.i118:                               ; preds = %.epil.preheader497, %._crit_edge.i.i118.loopexit.unr-lcssa, %.noexc126
  %.not.i.i.i119 = icmp eq ptr %.pre.i.i112, %i.av
  %i.fl = icmp eq ptr %.pre.i.i112, null
  %or.cond.i.i.i120 = or i1 %.not.i.i.i119, %i.fl
  br i1 %or.cond.i.i.i120, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i118
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i112)
          to label %.noexc127 unwind label %bb.ac

.noexc127:                                        ; preds = %bb.aa
  %.pre2.pre.i121 = load i32, ptr %i.aw, align 8, !tbaa !568
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i113.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.i.i113.new ], [ %indvars.iv.next.i.i116.1, %bb.ab ] ; 4 uses
  %niter502 = phi i64 [ 0, %.lr.ph.i.i113.new ], [ %niter502.next.1, %bb.ab ]
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.i.i115
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false)
  %indvars.iv.next.i.i116 = or disjoint i64 %indvars.iv.i.i115, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i116
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 16, i1 false)
  %indvars.iv.next.i.i116.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter502.next.1 = add i64 %niter502, 2         ; 2 uses
  %niter502.ncmp.1 = icmp eq i64 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1, label %._crit_edge.i.i118.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !38

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i122: ; preds = %.noexc127, %._crit_edge.i.i118
  %.pre2.i123 = phi i32 [ %i.fh, %._crit_edge.i.i118 ], [ %.pre2.pre.i121, %.noexc127 ]
  store ptr %i.fg, ptr %3, align 8, !tbaa !566
  store i32 %i.fd, ptr %i.ax, align 4, !tbaa !567
  br label %_ZN3opt7context5is_fdclEP3app.exit141

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ad:                                            ; preds = %bb.n
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.164, i32 noundef 73, ptr noundef nonnull @.str.13)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN3opt7context5is_fdclEP3app.exit unwind label %.loopexit

_ZN3opt7context5is_fdclEP3app.exit:               ; preds = %.noexc108, %.noexc106, %bb.v, %_ZNK3app13get_family_idEv.exit.thread.i, %_ZNK3app13get_family_idEv.exit.i, %bb.ae, %bb.j
  %i.fr = load i32, ptr %i.bp, align 8, !tbaa !571 ; 2 uses
  %i.fs = icmp ult i32 %i.fr, %i.bo
  br i1 %i.fs, label %bb.i, label %._crit_edge275

._crit_edge275:                                   ; preds = %_ZN3opt7context5is_fdclEP3app.exit
  %.pre304 = load i32, ptr %i.aw, align 8, !tbaa !568
  %.pre305 = add i32 %.pre304, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge275
  %.pre-phi = phi i32 [ %.pre305, %._crit_edge275 ], [ %i.bg, %bb.h ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %.pre-phi, ptr %i.aw, align 8, !tbaa !568
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !435
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !141 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, null                 ; 2 uses
  br i1 %i.fz, label %_ZNK3app13get_family_idEv.exit.thread.i131, label %_ZNK3app13get_family_idEv.exit.i129

_ZNK3app13get_family_idEv.exit.i129:              ; preds = %._crit_edge
  %i.ga = load i32, ptr %i.fy, align 8, !tbaa !145 ; 2 uses
  %.not.i130 = icmp eq i32 %i.ga, 0
  br i1 %.not.i130, label %thread-pre-split, label %_ZNK3app13get_family_idEv.exit.thread.i131

_ZNK3app13get_family_idEv.exit.thread.i131:       ; preds = %_ZNK3app13get_family_idEv.exit.i129, %._crit_edge
  %i.gb = phi i32 [ %i.ga, %_ZNK3app13get_family_idEv.exit.i129 ], [ -1, %._crit_edge ] ; 2 uses
  %i.gc = load i32, ptr %i.bb, align 8, !tbaa !421
  %.not7.i132 = icmp eq i32 %i.gb, %i.gc
  br i1 %.not7.i132, label %thread-pre-split, label %bb.af

bb.af:                                            ; preds = %_ZNK3app13get_family_idEv.exit.thread.i131
  %i.gd = load i32, ptr %i.bc, align 8, !tbaa !312
  %.not8.i133 = icmp eq i32 %i.gb, %i.gd
  br i1 %.not8.i133, label %thread-pre-split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ge = load i32, ptr %i.ft, align 4
  %i.gf = and i32 %i.ge, 65535
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ah, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

bb.ah:                                            ; preds = %bb.ag
  %i.gh = load i32, ptr %i.fu, align 8, !tbaa !434
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ai, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fz, label %_Z17is_uninterp_constPK4expr.exit.thread10.i136, label %_Z17is_uninterp_constPK4expr.exit.i135

_Z17is_uninterp_constPK4expr.exit.i135:           ; preds = %bb.ai
  %i.gj = load i32, ptr %i.fy, align 8, !tbaa !145
  %i.gk = icmp eq i32 %i.gj, -1
  br i1 %i.gk, label %_Z17is_uninterp_constPK4expr.exit.thread10.i136, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

_Z17is_uninterp_constPK4expr.exit.thread10.i136:  ; preds = %_Z17is_uninterp_constPK4expr.exit.i135, %bb.ai
  %i.gl = load ptr, ptr %0, align 8, !tbaa !970, !nonnull !67, !align !68
  %i.gm = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gl, ptr noundef nonnull %i.bj)
          to label %.noexc137 unwind label %.loopexit226

.noexc137:                                        ; preds = %_Z17is_uninterp_constPK4expr.exit.thread10.i136
  br i1 %i.gm, label %thread-pre-split, label %bb.aj

bb.aj:                                            ; preds = %.noexc137
  %i.gn = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bj)
          to label %.noexc138 unwind label %.loopexit226

.noexc138:                                        ; preds = %bb.aj
  %i.go = invoke noundef zeroext i1 @_ZNK14bv_recognizers10is_bv_sortEPK4sort(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef %i.gn)
          to label %.noexc139 unwind label %.loopexit226

.noexc139:                                        ; preds = %.noexc138
  br i1 %i.go, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.thread.i134

_Z17is_uninterp_constPK4expr.exit.thread.i134:    ; preds = %.noexc139, %_Z17is_uninterp_constPK4expr.exit.i135, %bb.ah, %bb.ag
  %i.gp = call ptr @__cxa_allocate_exception(i64 1) #27
  invoke void @__cxa_throw(ptr %i.gp, ptr nonnull @_ZTIN3opt7context5is_fd8found_fdE, ptr null) #28
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
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !574 ; 3 uses
  %i.gs = add i32 %i.gr, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bj, i64 76
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !575
  %i.gv = add i32 %i.gs, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.pre = load i32, ptr %i.gw, align 8, !tbaa !571 ; 2 uses
  %i.ha = xor i32 %i.gr, -1
  %i.hb = icmp ult i32 %.pre, %i.gv
  br i1 %i.hb, label %.lr.ph427, label %._crit_edge428

bb.al:                                            ; preds = %bb.aq
  %i.hc = icmp ult i32 %i.hn, %i.gv
  br i1 %i.hc, label %.lr.ph427, label %._crit_edge428, !llvm.loop !965

.lr.ph427:                                        ; preds = %bb.ak, %bb.al
  %i.hd = phi i32 [ %i.hn, %bb.al ], [ %.pre, %bb.ak ] ; 5 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.lr.ph427
  %.not.i142 = icmp ugt i32 %i.hd, %i.gr
  %i.hf = load i32, ptr %i.gy, align 4, !tbaa !576
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hg
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hg ; 2 uses
  br i1 %.not.i142, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hh = add i32 %i.hd, -1
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hi
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.hk = add i32 %i.hd, %i.ha
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.hl
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph427, %bb.ao, %bb.an
  %.0.in.i = phi ptr [ %i.hm, %bb.ao ], [ %i.hj, %bb.an ], [ %i.gz, %.lr.ph427 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !63 ; 6 uses
  %i.hn = add nuw i32 %i.hd, 1                    ; 3 uses
  store i32 %i.hn, ptr %i.gw, align 8, !tbaa !571
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !70
  %i.hq = icmp ugt i32 %i.hp, 1
  br i1 %i.hq, label %bb.aq, label %.loopexit225

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = and i32 %i.hs, 65536
  %.not222 = icmp eq i32 %i.ht, 0
  br i1 %.not222, label %bb.at, label %bb.al, !llvm.loop !965

bb.ar:                                            ; preds = %._crit_edge428
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.as:                                            ; preds = %bb.av, %bb.au
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.at:                                            ; preds = %bb.aq
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hx = or disjoint i32 %i.hs, 65536
  store i32 %i.hx, ptr %i.hw, align 4
  %i.hy = load i32, ptr %i.ay, align 8, !tbaa !425 ; 2 uses
  %i.hz = load i32, ptr %i.az, align 4, !tbaa !426 ; 2 uses
  %.not.i.i144 = icmp ult i32 %i.hy, %i.hz
  br i1 %.not.i.i144, label %._crit_edge.i.i159, label %bb.au

._crit_edge.i.i159:                               ; preds = %bb.at
  %.pre.i.i160 = load ptr, ptr %1, align 8, !tbaa !424
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit163

bb.au:                                            ; preds = %bb.at
  %i.ia = shl i32 %i.hz, 1                        ; 2 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = shl nuw nsw i64 %i.ib, 3
  %i.id = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ic)
          to label %.noexc161 unwind label %bb.as ; 9 uses

.noexc161:                                        ; preds = %bb.au
  %i.ie = load i32, ptr %i.ay, align 8, !tbaa !425 ; 4 uses
  %.not.i.i.i145 = icmp eq i32 %i.ie, 0
  %.pre.i.i.i146 = load ptr, ptr %1, align 8, !tbaa !424 ; 10 uses
  br i1 %.not.i.i.i145, label %._crit_edge.i.i.i152, label %.lr.ph.i.i.i147

.lr.ph.i.i.i147:                                  ; preds = %.noexc161
  %.pre.i.i.i146449 = ptrtoaddr ptr %.pre.i.i.i146 to i64
  %i.if = ptrtoaddr ptr %i.id to i64
  %wide.trip.count.i.i.i148 = zext i32 %i.ie to i64 ; 5 uses
  %min.iters.check452 = icmp ult i32 %i.ie, 4
  %i.ig = sub i64 %.pre.i.i.i146449, %i.if
  %diff.check450 = icmp ugt i64 %i.ig, -32
  %or.cond464 = select i1 %min.iters.check452, i1 true, i1 %diff.check450
  br i1 %or.cond464, label %scalar.ph451.preheader, label %vector.ph453

vector.ph453:                                     ; preds = %.lr.ph.i.i.i147
  %n.vec454 = and i64 %wide.trip.count.i.i.i148, 4294967292 ; 3 uses
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph453
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next459, %vector.body455 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %index456 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %index456 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load457 = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !430
  %wide.load458 = load <2 x ptr>, ptr %i.ij, align 8, !tbaa !430
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x ptr> %wide.load457, ptr %i.ih, align 8, !tbaa !430
  store <2 x ptr> %wide.load458, ptr %i.ik, align 8, !tbaa !430
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.il, label %middle.block460, label %vector.body455, !llvm.loop !966

middle.block460:                                  ; preds = %vector.body455
  %cmp.n461 = icmp eq i64 %n.vec454, %wide.trip.count.i.i.i148
  br i1 %cmp.n461, label %._crit_edge.i.i.i152, label %scalar.ph451.preheader

scalar.ph451.preheader:                           ; preds = %.lr.ph.i.i.i147, %middle.block460
  %indvars.iv.i.i.i149.ph = phi i64 [ 0, %.lr.ph.i.i.i147 ], [ %n.vec454, %middle.block460 ] ; 3 uses
  %xtraiter488 = and i64 %wide.trip.count.i.i.i148, 3 ; 2 uses
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  br i1 %lcmp.mod489.not, label %scalar.ph451.prol.loopexit, label %scalar.ph451.prol

scalar.ph451.prol:                                ; preds = %scalar.ph451.preheader, %scalar.ph451.prol
  %indvars.iv.i.i.i149.prol = phi i64 [ %indvars.iv.next.i.i.i150.prol, %scalar.ph451.prol ], [ %indvars.iv.i.i.i149.ph, %scalar.ph451.preheader ] ; 3 uses
  %prol.iter490 = phi i64 [ %prol.iter490.next, %scalar.ph451.prol ], [ 0, %scalar.ph451.preheader ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.i.i149.prol
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.i.i.i149.prol
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !430
  store ptr %i.io, ptr %i.im, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.prol = add nuw nsw i64 %indvars.iv.i.i.i149.prol, 1 ; 2 uses
  %prol.iter490.next = add i64 %prol.iter490, 1   ; 2 uses
  %prol.iter490.cmp.not = icmp eq i64 %prol.iter490.next, %xtraiter488
  br i1 %prol.iter490.cmp.not, label %scalar.ph451.prol.loopexit, label %scalar.ph451.prol, !llvm.loop !967

scalar.ph451.prol.loopexit:                       ; preds = %scalar.ph451.prol, %scalar.ph451.preheader
  %indvars.iv.i.i.i149.unr = phi i64 [ %indvars.iv.i.i.i149.ph, %scalar.ph451.preheader ], [ %indvars.iv.next.i.i.i150.prol, %scalar.ph451.prol ]
  %i.ip = sub nsw i64 %indvars.iv.i.i.i149.ph, %wide.trip.count.i.i.i148
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %._crit_edge.i.i.i152, label %scalar.ph451

._crit_edge.i.i.i152:                             ; preds = %scalar.ph451.prol.loopexit, %scalar.ph451, %middle.block460, %.noexc161
  %.not.i.i.i.i153 = icmp eq ptr %.pre.i.i.i146, %i.ba
  %i.ir = icmp eq ptr %.pre.i.i.i146, null
  %or.cond.i.i.i.i154 = or i1 %.not.i.i.i.i153, %i.ir
  br i1 %or.cond.i.i.i.i154, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i.i152
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i146)
          to label %.noexc162 unwind label %bb.as

.noexc162:                                        ; preds = %bb.av
  %.pre2.pre.i.i155 = load i32, ptr %i.ay, align 8, !tbaa !425
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156

scalar.ph451:                                     ; preds = %scalar.ph451.prol.loopexit, %scalar.ph451
  %indvars.iv.i.i.i149 = phi i64 [ %indvars.iv.next.i.i.i150.3, %scalar.ph451 ], [ %indvars.iv.i.i.i149.unr, %scalar.ph451.prol.loopexit ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i.i.i149
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.i.i.i149
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !430
  store ptr %i.iu, ptr %i.is, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150 = add nuw nsw i64 %indvars.iv.i.i.i149, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.i.i.i150
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !430
  store ptr %i.ix, ptr %i.iv, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.1 = add nuw nsw i64 %indvars.iv.i.i.i149, 2 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.i.i.i150.1
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150.1
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !430
  store ptr %i.ja, ptr %i.iy, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.2 = add nuw nsw i64 %indvars.iv.i.i.i149, 3 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.i.i.i150.2
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i146, i64 %indvars.iv.next.i.i.i150.2
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !430
  store ptr %i.jd, ptr %i.jb, align 8, !tbaa !430
  %indvars.iv.next.i.i.i150.3 = add nuw nsw i64 %indvars.iv.i.i.i149, 4 ; 2 uses
  %exitcond.not.i.i.i151.3 = icmp eq i64 %indvars.iv.next.i.i.i150.3, %wide.trip.count.i.i.i148
  br i1 %exitcond.not.i.i.i151.3, label %._crit_edge.i.i.i152, label %scalar.ph451, !llvm.loop !968

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156:  ; preds = %.noexc162, %._crit_edge.i.i.i152
  %.pre2.i.i157 = phi i32 [ %i.ie, %._crit_edge.i.i.i152 ], [ %.pre2.pre.i.i155, %.noexc162 ]
  store ptr %i.id, ptr %1, align 8, !tbaa !424
  store i32 %i.ia, ptr %i.az, align 4, !tbaa !426
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit163

_ZN13ast_fast_markILj1EE4markEP3ast.exit163:      ; preds = %._crit_edge.i.i159, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156
  %i.je = phi i32 [ %i.hy, %._crit_edge.i.i159 ], [ %.pre2.i.i157, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156 ] ; 2 uses
  %i.jf = phi ptr [ %.pre.i.i160, %._crit_edge.i.i159 ], [ %i.id, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i156 ]
  %i.jg = zext i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jg
  store ptr %.0.i, ptr %i.jh, align 8, !tbaa !430
  %i.ji = add i32 %i.je, 1
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !425
  %.pre303 = load i32, ptr %i.aw, align 8, !tbaa !568
  br label %.loopexit225

.loopexit225:                                     ; preds = %bb.ap, %_ZN13ast_fast_markILj1EE4markEP3ast.exit163
  %i.jj = phi i32 [ %.pre303, %_ZN13ast_fast_markILj1EE4markEP3ast.exit163 ], [ %i.be, %bb.ap ] ; 2 uses
  %i.jk = load i32, ptr %i.ax, align 4, !tbaa !567 ; 2 uses
  %.not.i164 = icmp ult i32 %i.jj, %i.jk
  br i1 %.not.i164, label %._crit_edge.i178, label %bb.aw

._crit_edge.i178:                                 ; preds = %.loopexit225
  %.pre.i179 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context5is_fdclEP3app.exit141

bb.aw:                                            ; preds = %.loopexit225
  %i.jl = shl i32 %i.jk, 1                        ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = shl nuw nsw i64 %i.jm, 4
  %i.jo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.jn)
          to label %.noexc180 unwind label %bb.az ; 5 uses

.noexc180:                                        ; preds = %bb.aw
  %i.jp = load i32, ptr %i.aw, align 8, !tbaa !568 ; 5 uses
  %.not.i.i165 = icmp eq i32 %i.jp, 0
  %.pre.i.i166 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i165, label %._crit_edge.i.i172, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.noexc180
  %wide.trip.count.i.i168 = zext i32 %i.jp to i64 ; 2 uses
  %xtraiter491 = and i64 %wide.trip.count.i.i168, 1
  %i.jq = icmp eq i32 %i.jp, 1
  br i1 %i.jq, label %.epil.preheader, label %.lr.ph.i.i167.new

.lr.ph.i.i167.new:                                ; preds = %.lr.ph.i.i167
  %unroll_iter = and i64 %wide.trip.count.i.i168, 4294967294
  br label %bb.ay

end_hunk_0
begin_hunk_1_@_Z18for_each_expr_coreIN3opt7context19is_propositional_fnE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !434
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !435
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !141 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %_ZN3opt7context19is_propositional_fnclEP3app.exit, label %_ZNK3app13get_family_idEv.exit.i

_ZNK3app13get_family_idEv.exit.i:                 ; preds = %bb.u
  %i.ep = load i32, ptr %i.en, align 8, !tbaa !145
  %.off = add i32 %i.ep, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %.invoke, label %_ZN3opt7context19is_propositional_fnclEP3app.exit

bb.v:                                             ; preds = %bb.t
  %i.eq = load i32, ptr %i.aw, align 8, !tbaa !568 ; 2 uses
  %i.er = load i32, ptr %i.ax, align 4, !tbaa !567 ; 2 uses
  %.not.i107 = icmp ult i32 %i.eq, %i.er
  br i1 %.not.i107, label %._crit_edge.i121, label %bb.w

._crit_edge.i121:                                 ; preds = %bb.v
  %.pre.i122 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.w:                                             ; preds = %bb.v
  %i.es = shl i32 %i.er, 1                        ; 2 uses
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 4
  %i.ev = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.eu)
          to label %.noexc123 unwind label %bb.z  ; 5 uses

.noexc123:                                        ; preds = %bb.w
  %i.ew = load i32, ptr %i.aw, align 8, !tbaa !568 ; 5 uses
  %.not.i.i108 = icmp eq i32 %i.ew, 0
  %.pre.i.i109 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i108, label %._crit_edge.i.i115, label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %.noexc123
  %wide.trip.count.i.i111 = zext i32 %i.ew to i64 ; 2 uses
  %xtraiter480 = and i64 %wide.trip.count.i.i111, 1
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %.epil.preheader479, label %.lr.ph.i.i110.new

.lr.ph.i.i110.new:                                ; preds = %.lr.ph.i.i110
  %unroll_iter483 = and i64 %wide.trip.count.i.i111, 4294967294
  br label %bb.y

._crit_edge.i.i115.loopexit.unr-lcssa:            ; preds = %bb.y
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  br i1 %lcmp.mod481.not, label %._crit_edge.i.i115, label %.epil.preheader479

.epil.preheader479:                               ; preds = %._crit_edge.i.i115.loopexit.unr-lcssa, %.lr.ph.i.i110
  %indvars.iv.i.i112.epil.init = phi i64 [ 0, %.lr.ph.i.i110 ], [ %indvars.iv.next.i.i113.1, %._crit_edge.i.i115.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod482 = trunc i32 %i.ew to i1
  call void @llvm.assume(i1 %lcmp.mod482)
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i.i112.epil.init
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.i.i112.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false)
  br label %._crit_edge.i.i115

._crit_edge.i.i115:                               ; preds = %.epil.preheader479, %._crit_edge.i.i115.loopexit.unr-lcssa, %.noexc123
  %.not.i.i.i116 = icmp eq ptr %.pre.i.i109, %i.av
  %i.fa = icmp eq ptr %.pre.i.i109, null
  %or.cond.i.i.i117 = or i1 %.not.i.i.i116, %i.fa
  br i1 %or.cond.i.i.i117, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i115
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i109)
          to label %.noexc124 unwind label %bb.z

.noexc124:                                        ; preds = %bb.x
  %.pre2.pre.i118 = load i32, ptr %i.aw, align 8, !tbaa !568
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i110.new
  %indvars.iv.i.i112 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %indvars.iv.next.i.i113.1, %bb.y ] ; 4 uses
  %niter484 = phi i64 [ 0, %.lr.ph.i.i110.new ], [ %niter484.next.1, %bb.y ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.i.i112
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false)
  %indvars.iv.next.i.i113 = or disjoint i64 %indvars.iv.i.i112, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv.next.i.i113
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i109, i64 %indvars.iv.next.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false)
  %indvars.iv.next.i.i113.1 = add nuw nsw i64 %indvars.iv.i.i112, 2 ; 2 uses
  %niter484.next.1 = add i64 %niter484, 2         ; 2 uses
  %niter484.ncmp.1 = icmp eq i64 %niter484.next.1, %unroll_iter483
  br i1 %niter484.ncmp.1, label %._crit_edge.i.i115.loopexit.unr-lcssa, label %bb.y, !llvm.loop !38

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i119: ; preds = %.noexc124, %._crit_edge.i.i115
  %.pre2.i120 = phi i32 [ %i.ew, %._crit_edge.i.i115 ], [ %.pre2.pre.i118, %.noexc124 ]
  store ptr %i.ev, ptr %3, align 8, !tbaa !566
  store i32 %i.es, ptr %i.ax, align 4, !tbaa !567
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aa:                                            ; preds = %bb.n
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.164, i32 noundef 73, ptr noundef nonnull @.str.13)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN3opt7context19is_propositional_fnclEP3app.exit unwind label %.loopexit

_ZN3opt7context19is_propositional_fnclEP3app.exit: ; preds = %_ZNK3app13get_family_idEv.exit.i, %bb.u, %bb.ab, %bb.j
  %i.fg = load i32, ptr %i.bn, align 8, !tbaa !571 ; 2 uses
  %i.fh = icmp ult i32 %i.fg, %i.bm
  br i1 %i.fh, label %bb.i, label %._crit_edge261

._crit_edge261:                                   ; preds = %_ZN3opt7context19is_propositional_fnclEP3app.exit
  %.pre290 = load i32, ptr %i.aw, align 8, !tbaa !568
  %.pre292 = add i32 %.pre290, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %._crit_edge261
  %.pre-phi = phi i32 [ %.pre292, %._crit_edge261 ], [ %i.be, %bb.h ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %.pre-phi, ptr %i.aw, align 8, !tbaa !568
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !435
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !141 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null                 ; 2 uses
  br i1 %i.fo, label %_ZNK3app13get_family_idEv.exit.thread.i128, label %_ZNK3app13get_family_idEv.exit.i126

_ZNK3app13get_family_idEv.exit.i126:              ; preds = %._crit_edge
  %i.fp = load i32, ptr %i.fn, align 8, !tbaa !145
  %.not.i127 = icmp eq i32 %i.fp, 0
  br i1 %.not.i127, label %thread-pre-split, label %_ZNK3app13get_family_idEv.exit.thread.i128

_ZNK3app13get_family_idEv.exit.thread.i128:       ; preds = %_ZNK3app13get_family_idEv.exit.i126, %._crit_edge
  %i.fq = load i32, ptr %i.fi, align 4
  %i.fr = and i32 %i.fq, 65535
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ac, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

bb.ac:                                            ; preds = %_ZNK3app13get_family_idEv.exit.thread.i128
  %i.ft = load i32, ptr %i.fj, align 8, !tbaa !434
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ad, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.fo, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.i130

_Z17is_uninterp_constPK4expr.exit.i130:           ; preds = %bb.ad
  %i.fv = load i32, ptr %i.fn, align 8, !tbaa !145
  %i.fw = icmp eq i32 %i.fv, -1
  br i1 %i.fw, label %thread-pre-split, label %_Z17is_uninterp_constPK4expr.exit.thread.i129

_Z17is_uninterp_constPK4expr.exit.thread.i129:    ; preds = %_Z17is_uninterp_constPK4expr.exit.i130, %bb.ac, %_ZNK3app13get_family_idEv.exit.thread.i128
  %i.fx = call ptr @__cxa_allocate_exception(i64 1) #27
  invoke void @__cxa_throw(ptr %i.fx, ptr nonnull @_ZTIN3opt7context19is_propositional_fn5foundE, ptr null) #28
          to label %.noexc131 unwind label %bb.ae

.noexc131:                                        ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i129
  unreachable

bb.ae:                                            ; preds = %_Z17is_uninterp_constPK4expr.exit.thread.i129
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.af:                                            ; preds = %.preheader
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !574 ; 3 uses
  %i.gb = add i32 %i.ga, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bh, i64 76
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !575
  %i.ge = add i32 %i.gb, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.pre = load i32, ptr %i.gf, align 8, !tbaa !571 ; 2 uses
  %i.gj = xor i32 %i.ga, -1
  %i.gk = icmp ult i32 %.pre, %i.ge
  br i1 %i.gk, label %.lr.ph410, label %._crit_edge411

bb.ag:                                            ; preds = %bb.al
  %i.gl = icmp ult i32 %i.gw, %i.ge
  br i1 %i.gl, label %.lr.ph410, label %._crit_edge411, !llvm.loop !978

.lr.ph410:                                        ; preds = %bb.af, %bb.ag
  %i.gm = phi i32 [ %i.gw, %bb.ag ], [ %.pre, %bb.af ] ; 5 uses
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph410
  %.not.i133 = icmp ugt i32 %i.gm, %i.ga
  %i.go = load i32, ptr %i.gh, align 4, !tbaa !576
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gp
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gp ; 2 uses
  br i1 %.not.i133, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = add i32 %i.gm, -1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gr
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gt = add i32 %i.gm, %i.gj
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gu
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph410, %bb.aj, %bb.ai
  %.0.in.i = phi ptr [ %i.gv, %bb.aj ], [ %i.gs, %bb.ai ], [ %i.gi, %.lr.ph410 ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !63 ; 6 uses
  %i.gw = add nuw i32 %i.gm, 1                    ; 3 uses
  store i32 %i.gw, ptr %i.gf, align 8, !tbaa !571
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !70
  %i.gz = icmp ugt i32 %i.gy, 1
  br i1 %i.gz, label %bb.al, label %.loopexit216

bb.al:                                            ; preds = %bb.ak
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hb = load i32, ptr %i.ha, align 4            ; 2 uses
  %i.hc = and i32 %i.hb, 65536
  %.not213 = icmp eq i32 %i.hc, 0
  br i1 %.not213, label %bb.ao, label %bb.ag, !llvm.loop !978

bb.am:                                            ; preds = %._crit_edge411
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.an:                                            ; preds = %bb.aq, %bb.ap
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ao:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.hg = or disjoint i32 %i.hb, 65536
  store i32 %i.hg, ptr %i.hf, align 4
  %i.hh = load i32, ptr %i.ay, align 8, !tbaa !425 ; 2 uses
  %i.hi = load i32, ptr %i.az, align 4, !tbaa !426 ; 2 uses
  %.not.i.i135 = icmp ult i32 %i.hh, %i.hi
  br i1 %.not.i.i135, label %._crit_edge.i.i150, label %bb.ap

._crit_edge.i.i150:                               ; preds = %bb.ao
  %.pre.i.i151 = load ptr, ptr %1, align 8, !tbaa !424
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit154

bb.ap:                                            ; preds = %bb.ao
  %i.hj = shl i32 %i.hi, 1                        ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %i.hm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.hl)
          to label %.noexc152 unwind label %bb.an ; 9 uses

.noexc152:                                        ; preds = %bb.ap
  %i.hn = load i32, ptr %i.ay, align 8, !tbaa !425 ; 4 uses
  %.not.i.i.i136 = icmp eq i32 %i.hn, 0
  %.pre.i.i.i137 = load ptr, ptr %1, align 8, !tbaa !424 ; 10 uses
  br i1 %.not.i.i.i136, label %._crit_edge.i.i.i143, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %.noexc152
  %.pre.i.i.i137432 = ptrtoaddr ptr %.pre.i.i.i137 to i64
  %i.ho = ptrtoaddr ptr %i.hm to i64
  %wide.trip.count.i.i.i139 = zext i32 %i.hn to i64 ; 5 uses
  %min.iters.check435 = icmp ult i32 %i.hn, 4
  %i.hp = sub i64 %.pre.i.i.i137432, %i.ho
  %diff.check433 = icmp ugt i64 %i.hp, -32
  %or.cond447 = select i1 %min.iters.check435, i1 true, i1 %diff.check433
  br i1 %or.cond447, label %scalar.ph434.preheader, label %vector.ph436

vector.ph436:                                     ; preds = %.lr.ph.i.i.i138
  %n.vec437 = and i64 %wide.trip.count.i.i.i139, 4294967292 ; 3 uses
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438, %vector.ph436
  %index439 = phi i64 [ 0, %vector.ph436 ], [ %index.next442, %vector.body438 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %index439 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %index439 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load440 = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !430
  %wide.load441 = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !430
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <2 x ptr> %wide.load440, ptr %i.hq, align 8, !tbaa !430
  store <2 x ptr> %wide.load441, ptr %i.ht, align 8, !tbaa !430
  %index.next442 = add nuw i64 %index439, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.hu, label %middle.block443, label %vector.body438, !llvm.loop !979

middle.block443:                                  ; preds = %vector.body438
  %cmp.n444 = icmp eq i64 %n.vec437, %wide.trip.count.i.i.i139
  br i1 %cmp.n444, label %._crit_edge.i.i.i143, label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %.lr.ph.i.i.i138, %middle.block443
  %indvars.iv.i.i.i140.ph = phi i64 [ 0, %.lr.ph.i.i.i138 ], [ %n.vec437, %middle.block443 ] ; 3 uses
  %xtraiter470 = and i64 %wide.trip.count.i.i.i139, 3 ; 2 uses
  %lcmp.mod471.not = icmp eq i64 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol

scalar.ph434.prol:                                ; preds = %scalar.ph434.preheader, %scalar.ph434.prol
  %indvars.iv.i.i.i140.prol = phi i64 [ %indvars.iv.next.i.i.i141.prol, %scalar.ph434.prol ], [ %indvars.iv.i.i.i140.ph, %scalar.ph434.preheader ] ; 3 uses
  %prol.iter472 = phi i64 [ %prol.iter472.next, %scalar.ph434.prol ], [ 0, %scalar.ph434.preheader ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i.i.i140.prol
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.i.i.i140.prol
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !430
  store ptr %i.hx, ptr %i.hv, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.prol = add nuw nsw i64 %indvars.iv.i.i.i140.prol, 1 ; 2 uses
  %prol.iter472.next = add i64 %prol.iter472, 1   ; 2 uses
  %prol.iter472.cmp.not = icmp eq i64 %prol.iter472.next, %xtraiter470
  br i1 %prol.iter472.cmp.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol, !llvm.loop !980

scalar.ph434.prol.loopexit:                       ; preds = %scalar.ph434.prol, %scalar.ph434.preheader
  %indvars.iv.i.i.i140.unr = phi i64 [ %indvars.iv.i.i.i140.ph, %scalar.ph434.preheader ], [ %indvars.iv.next.i.i.i141.prol, %scalar.ph434.prol ]
  %i.hy = sub nsw i64 %indvars.iv.i.i.i140.ph, %wide.trip.count.i.i.i139
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %._crit_edge.i.i.i143, label %scalar.ph434

._crit_edge.i.i.i143:                             ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434, %middle.block443, %.noexc152
  %.not.i.i.i.i144 = icmp eq ptr %.pre.i.i.i137, %i.ba
  %i.ia = icmp eq ptr %.pre.i.i.i137, null
  %or.cond.i.i.i.i145 = or i1 %.not.i.i.i.i144, %i.ia
  br i1 %or.cond.i.i.i.i145, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i.i.i143
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i137)
          to label %.noexc153 unwind label %bb.an

.noexc153:                                        ; preds = %bb.aq
  %.pre2.pre.i.i146 = load i32, ptr %i.ay, align 8, !tbaa !425
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147

scalar.ph434:                                     ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i141.3, %scalar.ph434 ], [ %indvars.iv.i.i.i140.unr, %scalar.ph434.prol.loopexit ] ; 6 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.i.i.i140
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.i.i.i140
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !430
  store ptr %i.id, ptr %i.ib, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141 = add nuw nsw i64 %indvars.iv.i.i.i140, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.next.i.i.i141
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !430
  store ptr %i.ig, ptr %i.ie, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.1 = add nuw nsw i64 %indvars.iv.i.i.i140, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.next.i.i.i141.1
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141.1
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !430
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.2 = add nuw nsw i64 %indvars.iv.i.i.i140, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv.next.i.i.i141.2
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i137, i64 %indvars.iv.next.i.i.i141.2
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !430
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !430
  %indvars.iv.next.i.i.i141.3 = add nuw nsw i64 %indvars.iv.i.i.i140, 4 ; 2 uses
  %exitcond.not.i.i.i142.3 = icmp eq i64 %indvars.iv.next.i.i.i141.3, %wide.trip.count.i.i.i139
  br i1 %exitcond.not.i.i.i142.3, label %._crit_edge.i.i.i143, label %scalar.ph434, !llvm.loop !981

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147:  ; preds = %.noexc153, %._crit_edge.i.i.i143
  %.pre2.i.i148 = phi i32 [ %i.hn, %._crit_edge.i.i.i143 ], [ %.pre2.pre.i.i146, %.noexc153 ]
  store ptr %i.hm, ptr %1, align 8, !tbaa !424
  store i32 %i.hj, ptr %i.az, align 4, !tbaa !426
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit154

_ZN13ast_fast_markILj1EE4markEP3ast.exit154:      ; preds = %._crit_edge.i.i150, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147
  %i.in = phi i32 [ %i.hh, %._crit_edge.i.i150 ], [ %.pre2.i.i148, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147 ] ; 2 uses
  %i.io = phi ptr [ %.pre.i.i151, %._crit_edge.i.i150 ], [ %i.hm, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i147 ]
  %i.ip = zext i32 %i.in to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  store ptr %.0.i, ptr %i.iq, align 8, !tbaa !430
  %i.ir = add i32 %i.in, 1
  store i32 %i.ir, ptr %i.ay, align 8, !tbaa !425
  %.pre289 = load i32, ptr %i.aw, align 8, !tbaa !568
  br label %.loopexit216

.loopexit216:                                     ; preds = %bb.ak, %_ZN13ast_fast_markILj1EE4markEP3ast.exit154
  %i.is = phi i32 [ %.pre289, %_ZN13ast_fast_markILj1EE4markEP3ast.exit154 ], [ %i.bc, %bb.ak ] ; 2 uses
  %i.it = load i32, ptr %i.ax, align 4, !tbaa !567 ; 2 uses
  %.not.i155 = icmp ult i32 %i.is, %i.it
  br i1 %.not.i155, label %._crit_edge.i169, label %bb.ar

._crit_edge.i169:                                 ; preds = %.loopexit216
  %.pre.i170 = load ptr, ptr %3, align 8, !tbaa !566
  br label %_ZN3opt7context19is_propositional_fnclEP3app.exit132

bb.ar:                                            ; preds = %.loopexit216
  %i.iu = shl i32 %i.it, 1                        ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = shl nuw nsw i64 %i.iv, 4
  %i.ix = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.iw)
          to label %.noexc171 unwind label %bb.au ; 5 uses

.noexc171:                                        ; preds = %bb.ar
  %i.iy = load i32, ptr %i.aw, align 8, !tbaa !568 ; 5 uses
  %.not.i.i156 = icmp eq i32 %i.iy, 0
  %.pre.i.i157 = load ptr, ptr %3, align 8, !tbaa !566 ; 6 uses
  br i1 %.not.i.i156, label %._crit_edge.i.i163, label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.noexc171
  %wide.trip.count.i.i159 = zext i32 %i.iy to i64 ; 2 uses
  %xtraiter473 = and i64 %wide.trip.count.i.i159, 1
  %i.iz = icmp eq i32 %i.iy, 1
  br i1 %i.iz, label %.epil.preheader, label %.lr.ph.i.i158.new

.lr.ph.i.i158.new:                                ; preds = %.lr.ph.i.i158
  %unroll_iter = and i64 %wide.trip.count.i.i159, 4294967294
  br label %bb.at

end_hunk_1
