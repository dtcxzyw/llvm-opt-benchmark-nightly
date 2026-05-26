inline.NumInlined: 970
inline.NumDeleted: 538
begin_hunk_0_@_ZNK6Assimp23SplitByBoneCountProcess9SplitMeshEPK6aiMeshRSt6vectorIPS1_SaIS5_EE:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph837, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ev = phi i32 [ %i.o, %.lr.ph837 ], [ %i.aji, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  %.0233836 = phi i32 [ 0, %.lr.ph837 ], [ %.3236, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ]
  %i.ew = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i.i313 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i313, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add nuw nsw i64 %i.ex, 63               ; 2 uses
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = and i64 %i.ez, 1073741816
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #22
          to label %.noexc317 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit402.thread ; 3 uses

.noexc317:                                        ; preds = %bb.p
  %i.fc = lshr i64 %i.ey, 6                       ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %.idx.i316 = shl nuw nsw i64 %i.fc, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fb, i8 0, i64 %.idx.i316, i1 false)
  br label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.o, %.noexc317
  %.sroa.0512.0 = phi ptr [ null, %bb.o ], [ %i.fb, %.noexc317 ] ; 7 uses
  %.sroa.17521.0 = phi ptr [ null, %bb.o ], [ %i.fd, %.noexc317 ] ; 4 uses
  %i.fe = zext i32 %i.ev to i64                   ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 2
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #22
          to label %.lr.ph790.preheader unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit398.thread ; 3 uses

.lr.ph790.preheader:                              ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fe
  br label %.lr.ph790

._crit_edge791:                                   ; preds = %bb.ai
  %i.fi = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22
          to label %bb.al unwind label %.loopexit594 ; 60 uses

bb.q:                                             ; preds = %bb.c
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit404

_ZNSt13_Bvector_baseISaIbEED2Ev.exit402.thread:   ; preds = %bb.p
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit402

_ZNSt6vectorIjSaIjEED2Ev.exit398.thread:          ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit400

.lr.ph790:                                        ; preds = %.lr.ph790.preheader, %bb.ai
  %i.fm = phi i32 [ %i.ev, %.lr.ph790.preheader ], [ %i.jp, %bb.ai ]
  %indvars.iv999 = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next1000, %bb.ai ] ; 5 uses
  %.1234788 = phi i32 [ %.0233836, %.lr.ph790.preheader ], [ %.3236, %bb.ai ] ; 3 uses
  %.0238787 = phi i32 [ 0, %.lr.ph790.preheader ], [ %.4242, %bb.ai ] ; 5 uses
  %.0243786 = phi i32 [ 0, %.lr.ph790.preheader ], [ %.2245, %bb.ai ] ; 3 uses
  %.sroa.0493.0784 = phi ptr [ %i.fg, %.lr.ph790.preheader ], [ %.sroa.0493.2, %bb.ai ] ; 7 uses
  %.sroa.14501.0783 = phi ptr [ %i.fg, %.lr.ph790.preheader ], [ %.sroa.14501.2, %bb.ai ] ; 8 uses
  %.sroa.23.0782 = phi ptr [ %i.fh, %.lr.ph790.preheader ], [ %.sroa.23.2, %bb.ai ] ; 5 uses
  %i.fn = trunc nuw i64 %indvars.iv999 to i32     ; 2 uses
  %i.fo = lshr i64 %indvars.iv999, 6
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.fo ; 3 uses
  %i.fq = and i64 %indvars.iv999, 63
  %i.fr = shl nuw i64 1, %i.fq                    ; 2 uses
  %i.fs = load i64, ptr %i.fp, align 8
  %i.ft = and i64 %i.fs, %i.fr
  %.not572 = icmp eq i64 %i.ft, 0
  br i1 %.not572, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %.lr.ph790
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 0, ptr %i.cs, align 8
  store ptr null, ptr %i.ct, align 8
  store ptr %i.cs, ptr %i.cu, align 8
  store ptr %i.cs, ptr %i.cv, align 8
  store i64 0, ptr %i.cw, align 8
  %i.fu = load ptr, ptr %i.cx, align 8
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %indvars.iv999 ; 4 uses
  %i.fw = load i32, ptr %i.fv, align 8            ; 2 uses
  %.not843 = icmp eq i32 %i.fw, 0
  br i1 %.not843, label %._crit_edge775, label %.lr.ph774

.lr.ph774:                                        ; preds = %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  br label %bb.s

._crit_edge775:                                   ; preds = %._crit_edge771, %bb.r
  %i.fy = phi i64 [ 0, %bb.r ], [ %i.gn, %._crit_edge771 ]
  %i.fz = zext i32 %.0238787 to i64
  %i.ga = add i64 %i.fy, %i.fz
  %i.gb = load i64, ptr %i.d, align 8
  %i.gc = icmp ugt i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ag, label %bb.y

bb.s:                                             ; preds = %.lr.ph774, %._crit_edge771
  %i.gd = phi i64 [ 0, %.lr.ph774 ], [ %i.gn, %._crit_edge771 ] ; 2 uses
  %i.ge = phi i32 [ %i.fw, %.lr.ph774 ], [ %i.go, %._crit_edge771 ]
  %indvars.iv996 = phi i64 [ 0, %.lr.ph774 ], [ %indvars.iv.next997, %._crit_edge771 ] ; 2 uses
  %i.gf = load ptr, ptr %i.fx, align 8
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv996
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0539.0, i64 %i.gi ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not844 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not844, label %._crit_edge771, label %.lr.ph770

._crit_edge771.loopexit:                          ; preds = %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %.pre1043 = load i32, ptr %i.fv, align 8
  br label %._crit_edge771

._crit_edge771:                                   ; preds = %._crit_edge771.loopexit, %bb.s
  %i.gn = phi i64 [ %i.hw, %._crit_edge771.loopexit ], [ %i.gd, %bb.s ] ; 2 uses
  %i.go = phi i32 [ %.pre1043, %._crit_edge771.loopexit ], [ %i.ge, %bb.s ] ; 2 uses
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 1 ; 2 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = icmp samesign ult i64 %indvars.iv.next997, %i.gp
  br i1 %i.gq, label %bb.s, label %._crit_edge775, !llvm.loop !20

.lr.ph770:                                        ; preds = %bb.s, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %i.gr = phi i64 [ %i.hw, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ], [ %i.gd, %bb.s ] ; 2 uses
  %i.gs = phi ptr [ %i.hx, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ], [ %i.gm, %bb.s ] ; 3 uses
  %i.gt = phi ptr [ %i.hy, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ], [ %i.gl, %bb.s ] ; 2 uses
  %i.gu = phi i64 [ %i.ia, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ], [ 0, %bb.s ]
  %.0249768 = phi i32 [ %i.hz, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit ], [ 0, %bb.s ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4            ; 6 uses
  %i.gx = lshr i32 %i.gw, 6
  %.zext555 = zext nneg i32 %i.gx to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0512.0, i64 %.zext555
  %i.gz = and i32 %i.gw, 63
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = load i64, ptr %i.gy, align 8
  %i.hd = and i64 %i.hb, %i.hc
  %.not576 = icmp eq i64 %i.hd, 0
  br i1 %.not576, label %bb.t, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

bb.t:                                             ; preds = %.lr.ph770
  %.02022.i.i.i = load ptr, ptr %i.ct, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.t ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.hf = load i32, ptr %i.he, align 4            ; 2 uses
  %i.hg = icmp ult i32 %i.gw, %i.hf               ; 2 uses
  %.in.v.i.i.i = select i1 %i.hg, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i326 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i326, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !21

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.hg, label %._crit_edge.thread.i.i.i, label %bb.v

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.t
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.cs, %bb.t ] ; 4 uses
  %i.hh = load ptr, ptr %i.cu, align 8
  %i.hi = icmp eq ptr %.019.lcssa29.i.i.i, %i.hh
  br i1 %i.hi, label %select.unfold.i.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.hj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #23
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i
  %i.hk = phi i32 [ %.pre.i.i, %bb.u ], [ %i.hf, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.u ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.hl = icmp ult i32 %i.hk, %i.gw
  %cond.fr.i.i = freeze i1 %i.hl
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i:                                ; preds = %bb.v, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.v ] ; 3 uses
  %i.hm = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.cs
  br i1 %i.hm, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %select.unfold.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = icmp ult i32 %i.gw, %i.ho
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.w, %select.unfold.i.i
  %i.hq = phi i1 [ %i.hp, %bb.w ], [ true, %select.unfold.i.i ]
  %i.hr = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22
          to label %.noexc327 unwind label %bb.x  ; 2 uses

.noexc327:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store i32 %i.gw, ptr %i.hs, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hq, ptr noundef nonnull %i.hr, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cs) #19
  %i.ht = load i64, ptr %i.cw, align 8
  %i.hu = add i64 %i.ht, 1                        ; 2 uses
  store i64 %i.hu, ptr %i.cw, align 8
  %.pre1041 = load ptr, ptr %i.gk, align 8
  %.pre1042 = load ptr, ptr %i.gj, align 8
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

bb.x:                                             ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit:      ; preds = %.noexc327, %bb.v, %.lr.ph770
  %i.hw = phi i64 [ %i.hu, %.noexc327 ], [ %i.gr, %bb.v ], [ %i.gr, %.lr.ph770 ] ; 2 uses
  %i.hx = phi ptr [ %.pre1042, %.noexc327 ], [ %i.gs, %bb.v ], [ %i.gs, %.lr.ph770 ] ; 2 uses
  %i.hy = phi ptr [ %.pre1041, %.noexc327 ], [ %i.gt, %bb.v ], [ %i.gt, %.lr.ph770 ] ; 2 uses
  %i.hz = add i32 %.0249768, 1                    ; 2 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 3
  %i.if = icmp ugt i64 %i.ie, %i.ia
  br i1 %i.if, label %.lr.ph770, label %._crit_edge771.loopexit, !llvm.loop !22

bb.y:                                             ; preds = %._crit_edge775
  %i.ig = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not573776 = icmp eq ptr %i.ig, %i.cs
  br i1 %.not573776, label %._crit_edge781, label %.lr.ph780

._crit_edge781:                                   ; preds = %bb.ae, %bb.y
  %.1239.lcssa = phi i32 [ %.0238787, %bb.y ], [ %.2240, %bb.ae ]
  %.not.i328 = icmp eq ptr %.sroa.14501.0783, %.sroa.23.0782
  br i1 %.not.i328, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge781
  store i32 %i.fn, ptr %.sroa.14501.0783, align 4
  br label %bb.af

bb.aa:                                            ; preds = %._crit_edge781
  %i.ih = ptrtoint ptr %.sroa.14501.0783 to i64
  %i.ii = ptrtoint ptr %.sroa.0493.0784 to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 6 uses
  %i.ik = icmp eq i64 %i.ij, 9223372036854775804
  br i1 %i.ik, label %bb.ab, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc331 unwind label %.loopexit.split-lp

.noexc331:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %i.il = ashr exact i64 %i.ij, 2                 ; 3 uses
  %.sroa.speculated.i.i.i329 = call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i329, %i.il ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 2305843009213693951)
  %i.ip = select i1 %i.in, i64 2305843009213693951, i64 %i.io ; 3 uses
  %.not.i.i.i330 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i330)
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #22
          to label %.noexc332 unwind label %.loopexit593 ; 4 uses

.noexc332:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 %i.ij ; 2 uses
  store i32 %i.fn, ptr %i.is, align 4
  %i.it = icmp sgt i64 %i.ij, 0
  br i1 %i.it, label %bb.ac, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

bb.ac:                                            ; preds = %.noexc332
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ir, ptr align 4 %.sroa.0493.0784, i64 %i.ij, i1 false)
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ac, %.noexc332
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0493.0784, i64 noundef %i.ij) #20
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  br label %bb.af

.lr.ph780:                                        ; preds = %bb.y, %bb.ae
  %.1239778 = phi i32 [ %.2240, %bb.ae ], [ %.0238787, %bb.y ] ; 2 uses
  %.sroa.0478.0777 = phi ptr [ %i.jg, %bb.ae ], [ %i.ig, %bb.y ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0478.0777, i64 32
  %i.iw = load i32, ptr %i.iv, align 4            ; 2 uses
  %i.ix = lshr i32 %i.iw, 6
  %.zext557 = zext nneg i32 %i.ix to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0512.0, i64 %.zext557 ; 2 uses
  %i.iz = and i32 %i.iw, 63
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw i64 1, %i.ja                    ; 2 uses
  %i.jc = load i64, ptr %i.iy, align 8            ; 2 uses
  %i.jd = and i64 %i.jb, %i.jc
  %.not575 = icmp eq i64 %i.jd, 0
  br i1 %.not575, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph780
  %i.je = or i64 %i.jb, %i.jc
  store i64 %i.je, ptr %i.iy, align 8
  %i.jf = add i32 %.1239778, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph780, %bb.ad
  %.2240 = phi i32 [ %i.jf, %bb.ad ], [ %.1239778, %.lr.ph780 ] ; 2 uses
  %i.jg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0478.0777) #23 ; 2 uses
  %.not573 = icmp eq ptr %i.jg, %i.cs
  br i1 %.not573, label %._crit_edge781, label %.lr.ph780, !llvm.loop !23

bb.af:                                            ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %.sroa.23.5 = phi ptr [ %i.iu, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.23.0782, %bb.z ]
  %.pn574 = phi ptr [ %i.is, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.14501.0783, %bb.z ]
  %.sroa.0493.5 = phi ptr [ %i.ir, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0493.0784, %bb.z ]
  %.sroa.14501.4 = getelementptr inbounds nuw i8, ptr %.pn574, i64 4
  %i.jh = load i32, ptr %i.fv, align 8
  %i.ji = add i32 %i.jh, %.0243786
  %i.jj = load i64, ptr %i.fp, align 8
  %i.jk = or i64 %i.jj, %i.fr
  store i64 %i.jk, ptr %i.fp, align 8
  %i.jl = add i32 %.1234788, 1
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge775, %bb.af
  %.sroa.23.1 = phi ptr [ %.sroa.23.0782, %._crit_edge775 ], [ %.sroa.23.5, %bb.af ]
  %.sroa.14501.1 = phi ptr [ %.sroa.14501.0783, %._crit_edge775 ], [ %.sroa.14501.4, %bb.af ]
  %.sroa.0493.1 = phi ptr [ %.sroa.0493.0784, %._crit_edge775 ], [ %.sroa.0493.5, %bb.af ]
  %.1244 = phi i32 [ %.0243786, %._crit_edge775 ], [ %i.ji, %bb.af ]
  %.3241 = phi i32 [ %.0238787, %._crit_edge775 ], [ %.1239.lcssa, %bb.af ]
  %.2235 = phi i32 [ %.1234788, %._crit_edge775 ], [ %i.jl, %bb.af ]
  %i.jm = load ptr, ptr %i.ct, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.jm)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #24
  unreachable

_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit:             ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pre1044 = load i32, ptr %i.n, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit, %.lr.ph790
  %i.jp = phi i32 [ %i.fm, %.lr.ph790 ], [ %.pre1044, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 2 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.0782, %.lr.ph790 ], [ %.sroa.23.1, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 10 uses
  %.sroa.14501.2 = phi ptr [ %.sroa.14501.0783, %.lr.ph790 ], [ %.sroa.14501.1, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 3 uses
  %.sroa.0493.2 = phi ptr [ %.sroa.0493.0784, %.lr.ph790 ], [ %.sroa.0493.1, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 13 uses
  %.2245 = phi i32 [ %.0243786, %.lr.ph790 ], [ %.1244, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 5 uses
  %.4242 = phi i32 [ %.0238787, %.lr.ph790 ], [ %.3241, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 2 uses
  %.3236 = phi i32 [ %.1234788, %.lr.ph790 ], [ %.2235, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit ] ; 3 uses
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = icmp samesign ult i64 %indvars.iv.next1000, %i.jq
  br i1 %i.jr, label %.lr.ph790, label %._crit_edge791, !llvm.loop !24

.loopexit593:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit593, %.loopexit.split-lp, %bb.x
  %.sroa.23.0782860 = phi ptr [ %.sroa.23.0782, %bb.x ], [ %.sroa.14501.0783, %.loopexit593 ], [ %.sroa.14501.0783, %.loopexit.split-lp ]
  %.pn297.pn = phi { ptr, i32 } [ %i.hv, %bb.x ], [ %lpad.loopexit, %.loopexit593 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.js = load ptr, ptr %i.ct, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.js)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit345 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
end_hunk_0
begin_hunk_1_@_ZNK6Assimp23SplitByBoneCountProcess9SplitMeshEPK6aiMeshRSt6vectorIPS1_SaIS5_EE:bb.a
  store i32 %i.lu, ptr %i.fi, align 8
  %i.lv = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.lw = load ptr, ptr %i.dp, align 8
  %.not.i351 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not.i351, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store ptr %i.fi, ptr %i.lv, align 8
  %i.lx = load ptr, ptr %i.da, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.ly, ptr %i.da, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.ax:                                            ; preds = %bb.av
  %i.lz = load ptr, ptr %2, align 8               ; 4 uses
  %i.ma = ptrtoint ptr %i.lv to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 6 uses
  %i.md = icmp eq i64 %i.mc, 9223372036854775800
  br i1 %i.md, label %bb.ay, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc355 unwind label %.loopexit.split-lp595

.noexc355:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ax
  %i.me = ashr exact i64 %i.mc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i352 = call i64 @llvm.umax.i64(i64 %i.me, i64 1)
  %i.mf = add nsw i64 %.sroa.speculated.i.i.i352, %i.me ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.me
  %i.mh = call i64 @llvm.umin.i64(i64 %i.mf, i64 1152921504606846975)
  %i.mi = select i1 %i.mg, i64 1152921504606846975, i64 %i.mh ; 3 uses
  %.not.i.i.i353 = icmp ne i64 %i.mi, 0
  call void @llvm.assume(i1 %.not.i.i.i353)
  %i.mj = shl nuw nsw i64 %i.mi, 3
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #22
          to label %.noexc356 unwind label %.loopexit594 ; 4 uses

.noexc356:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.mc ; 2 uses
  store ptr %i.fi, ptr %i.ml, align 8
  %i.mm = icmp sgt i64 %i.mc, 0
  br i1 %i.mm, label %bb.az, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.az:                                            ; preds = %.noexc356
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mk, ptr align 8 %i.lz, i64 %i.mc, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.az, %.noexc356
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %.not.i17.i.i354 = icmp eq ptr %i.lz, null
  br i1 %.not.i17.i.i354, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.mc) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.mk, ptr %2, align 8
  store ptr %i.mn, ptr %i.da, align 8
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.mi
  store ptr %i.mo, ptr %i.dp, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aw
  store i32 %.2245, ptr %i.jv, align 4
  %i.mp = ptrtoint ptr %.sroa.14501.2 to i64
  %i.mq = ptrtoint ptr %.sroa.0493.2 to i64       ; 2 uses
  %i.mr = sub i64 %i.mp, %i.mq                    ; 3 uses
  %i.ms = ashr exact i64 %i.mr, 2                 ; 5 uses
  %i.mt = trunc i64 %i.ms to i32
  store i32 %i.mt, ptr %i.jw, align 8
  %i.mu = zext i32 %.2245 to i64                  ; 14 uses
  %i.mv = mul nuw nsw i64 %i.mu, 12               ; 29 uses
  %i.mw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bb unwind label %.loopexit594 ; 2 uses

bb.bb:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit
  %i.mx = icmp eq i32 %.2245, 0                   ; 28 uses
  br i1 %i.mx, label %.loopexit592, label %.loopexit592.loopexit

.loopexit592.loopexit:                            ; preds = %bb.bb
  %i.my = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.mz = urem i64 %i.my, 12
  %i.na = sub nuw nsw i64 %i.my, %i.mz
  %i.nb = add nsw i64 %i.na, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mw, i8 0, i64 %i.nb, i1 false)
  br label %.loopexit592

.loopexit592:                                     ; preds = %.loopexit592.loopexit, %bb.bb
  store ptr %i.mw, ptr %i.jx, align 8
  %i.nc = load ptr, ptr %i.dq, align 8
  %.not.i357 = icmp ne ptr %i.nc, null
  %i.nd = load i32, ptr %i.f, align 4
  %i.ne = icmp ne i32 %i.nd, 0                    ; 18 uses
  %i.nf = select i1 %.not.i357, i1 %i.ne, i1 false
  br i1 %i.nf, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.loopexit592
  %i.ng = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bd unwind label %.loopexit594 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.mx, label %.loopexit591, label %.loopexit591.loopexit

.loopexit591.loopexit:                            ; preds = %bb.bd
  %i.nh = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.ni = urem i64 %i.nh, 12
  %i.nj = sub nuw nsw i64 %i.nh, %i.ni
  %i.nk = add nsw i64 %i.nj, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ng, i8 0, i64 %i.nk, i1 false)
  br label %.loopexit591

.loopexit591:                                     ; preds = %.loopexit591.loopexit, %bb.bd
  %i.nl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.ng, ptr %i.nl, align 8
  br label %bb.be

bb.be:                                            ; preds = %.loopexit591, %.loopexit592
  %i.nm = load ptr, ptr %i.dr, align 8
  %.not.i358 = icmp ne ptr %i.nm, null
  %i.nn = load ptr, ptr %i.ds, align 8
  %.not1.i = icmp ne ptr %i.nn, null
  %or.cond.i.not565 = select i1 %.not.i358, i1 %.not1.i, i1 false
  %brmerge.not = select i1 %or.cond.i.not565, i1 %i.ne, i1 false
  br i1 %brmerge.not, label %bb.bf, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.no = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bg unwind label %.loopexit594 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.mx, label %.loopexit590, label %.loopexit590.loopexit

.loopexit590.loopexit:                            ; preds = %bb.bg
  %i.np = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.nq = urem i64 %i.np, 12
  %i.nr = sub nuw nsw i64 %i.np, %i.nq
  %i.ns = add nsw i64 %i.nr, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.no, i8 0, i64 %i.ns, i1 false)
  br label %.loopexit590

.loopexit590:                                     ; preds = %.loopexit590.loopexit, %bb.bg
  %i.nt = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store ptr %i.no, ptr %i.nt, align 8
  %i.nu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bh unwind label %.loopexit594 ; 2 uses

bb.bh:                                            ; preds = %.loopexit590
  br i1 %i.mx, label %.loopexit589, label %.loopexit589.loopexit

.loopexit589.loopexit:                            ; preds = %bb.bh
  %i.nv = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.nw = urem i64 %i.nv, 12
  %i.nx = sub nuw nsw i64 %i.nv, %i.nw
  %i.ny = add nsw i64 %i.nx, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.nu, i8 0, i64 %i.ny, i1 false)
  br label %.loopexit589

.loopexit589:                                     ; preds = %.loopexit589.loopexit, %bb.bh
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  store ptr %i.nu, ptr %i.nz, align 8
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.be, %.loopexit589
  %i.oa = getelementptr inbounds nuw i8, ptr %i.fi, i64 112 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.fi, i64 176
  %i.oc = load ptr, ptr %i.dt, align 8
  %.not.i359 = icmp ne ptr %i.oc, null
  %i.od = select i1 %.not.i359, i1 %i.ne, i1 false
  br i1 %i.od, label %bb.bi, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

bb.bi:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.oe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bj unwind label %bb.bk     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.mx, label %.loopexit582, label %.loopexit582.loopexit

.loopexit582.loopexit:                            ; preds = %bb.bj
  %i.of = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.og = urem i64 %i.of, 12
  %i.oh = sub nuw nsw i64 %i.of, %i.og
  %i.oi = add nsw i64 %i.oh, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oe, i8 0, i64 %i.oi, i1 false)
  br label %.loopexit582

.loopexit582:                                     ; preds = %.loopexit582.loopexit, %bb.bj
  store ptr %i.oe, ptr %i.oa, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

bb.bk:                                            ; preds = %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bi
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit398

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %.loopexit582, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ok = load i32, ptr %i.du, align 8
  store i32 %i.ok, ptr %i.ob, align 8
  %i.ol = load ptr, ptr %i.ea, align 8
  %.not.i359.1 = icmp ne ptr %i.ol, null
  %i.om = select i1 %.not.i359.1, i1 %i.ne, i1 false
  br i1 %i.om, label %bb.bl, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

bb.bl:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.on = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bm unwind label %bb.bk     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.mx, label %.loopexit582.1, label %.loopexit582.loopexit.1

.loopexit582.loopexit.1:                          ; preds = %bb.bm
  %i.oo = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.op = urem i64 %i.oo, 12
  %i.oq = sub nuw nsw i64 %i.oo, %i.op
  %i.or = add nsw i64 %i.oq, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.on, i8 0, i64 %i.or, i1 false)
  br label %.loopexit582.1

.loopexit582.1:                                   ; preds = %.loopexit582.loopexit.1, %bb.bm
  %i.os = getelementptr inbounds nuw i8, ptr %i.fi, i64 120
  store ptr %i.on, ptr %i.os, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %.loopexit582.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.ot = load i32, ptr %i.eb, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.fi, i64 180
  store i32 %i.ot, ptr %i.ou, align 4
  %i.ov = load ptr, ptr %i.ec, align 8
  %.not.i359.2 = icmp ne ptr %i.ov, null
  %i.ow = select i1 %.not.i359.2, i1 %i.ne, i1 false
  br i1 %i.ow, label %bb.bn, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

bb.bn:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.ox = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bo unwind label %bb.bk     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.mx, label %.loopexit582.2, label %.loopexit582.loopexit.2

.loopexit582.loopexit.2:                          ; preds = %bb.bo
  %i.oy = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.oz = urem i64 %i.oy, 12
  %i.pa = sub nuw nsw i64 %i.oy, %i.oz
  %i.pb = add nsw i64 %i.pa, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ox, i8 0, i64 %i.pb, i1 false)
  br label %.loopexit582.2

.loopexit582.2:                                   ; preds = %.loopexit582.loopexit.2, %bb.bo
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  store ptr %i.ox, ptr %i.pc, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %.loopexit582.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.pd = load i32, ptr %i.ed, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  store i32 %i.pd, ptr %i.pe, align 8
  %i.pf = load ptr, ptr %i.ee, align 8
  %.not.i359.3 = icmp ne ptr %i.pf, null
  %i.pg = select i1 %.not.i359.3, i1 %i.ne, i1 false
  br i1 %i.pg, label %bb.bp, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

bb.bp:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.ph = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bq unwind label %bb.bk     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.mx, label %.loopexit582.3, label %.loopexit582.loopexit.3

.loopexit582.loopexit.3:                          ; preds = %bb.bq
  %i.pi = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.pj = urem i64 %i.pi, 12
  %i.pk = sub nuw nsw i64 %i.pi, %i.pj
  %i.pl = add nsw i64 %i.pk, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ph, i8 0, i64 %i.pl, i1 false)
  br label %.loopexit582.3

.loopexit582.3:                                   ; preds = %.loopexit582.loopexit.3, %bb.bq
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fi, i64 136
  store ptr %i.ph, ptr %i.pm, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %.loopexit582.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.pn = load i32, ptr %i.ef, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.fi, i64 188
  store i32 %i.pn, ptr %i.po, align 4
  %i.pp = load ptr, ptr %i.eg, align 8
  %.not.i359.4 = icmp ne ptr %i.pp, null
  %i.pq = select i1 %.not.i359.4, i1 %i.ne, i1 false
  br i1 %i.pq, label %bb.br, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

bb.br:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.pr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bs unwind label %bb.bk     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  br i1 %i.mx, label %.loopexit582.4, label %.loopexit582.loopexit.4

.loopexit582.loopexit.4:                          ; preds = %bb.bs
  %i.ps = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.pt = urem i64 %i.ps, 12
  %i.pu = sub nuw nsw i64 %i.ps, %i.pt
  %i.pv = add nsw i64 %i.pu, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pr, i8 0, i64 %i.pv, i1 false)
  br label %.loopexit582.4

.loopexit582.4:                                   ; preds = %.loopexit582.loopexit.4, %bb.bs
  %i.pw = getelementptr inbounds nuw i8, ptr %i.fi, i64 144
  store ptr %i.pr, ptr %i.pw, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %.loopexit582.4, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.px = load i32, ptr %i.eh, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  store i32 %i.px, ptr %i.py, align 8
  %i.pz = load ptr, ptr %i.ei, align 8
  %.not.i359.5 = icmp ne ptr %i.pz, null
  %i.qa = select i1 %.not.i359.5, i1 %i.ne, i1 false
  br i1 %i.qa, label %bb.bt, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

bb.bt:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.qb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bu unwind label %bb.bk     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.mx, label %.loopexit582.5, label %.loopexit582.loopexit.5

.loopexit582.loopexit.5:                          ; preds = %bb.bu
  %i.qc = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.qd = urem i64 %i.qc, 12
  %i.qe = sub nuw nsw i64 %i.qc, %i.qd
  %i.qf = add nsw i64 %i.qe, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qb, i8 0, i64 %i.qf, i1 false)
  br label %.loopexit582.5

.loopexit582.5:                                   ; preds = %.loopexit582.loopexit.5, %bb.bu
  %i.qg = getelementptr inbounds nuw i8, ptr %i.fi, i64 152
  store ptr %i.qb, ptr %i.qg, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %.loopexit582.5, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.qh = load i32, ptr %i.ej, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.fi, i64 196
  store i32 %i.qh, ptr %i.qi, align 4
  %i.qj = load ptr, ptr %i.ek, align 8
  %.not.i359.6 = icmp ne ptr %i.qj, null
  %i.qk = select i1 %.not.i359.6, i1 %i.ne, i1 false
  br i1 %i.qk, label %bb.bv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

bb.bv:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.ql = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.bw unwind label %bb.bk     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.mx, label %.loopexit582.6, label %.loopexit582.loopexit.6

.loopexit582.loopexit.6:                          ; preds = %bb.bw
  %i.qm = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.qn = urem i64 %i.qm, 12
  %i.qo = sub nuw nsw i64 %i.qm, %i.qn
  %i.qp = add nsw i64 %i.qo, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ql, i8 0, i64 %i.qp, i1 false)
  br label %.loopexit582.6

.loopexit582.6:                                   ; preds = %.loopexit582.loopexit.6, %bb.bw
  %i.qq = getelementptr inbounds nuw i8, ptr %i.fi, i64 160
  store ptr %i.ql, ptr %i.qq, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.7:           ; preds = %.loopexit582.6, %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.qr = load i32, ptr %i.el, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  store i32 %i.qr, ptr %i.qs, align 8
  %i.qt = load ptr, ptr %i.em, align 8
  %.not.i359.7 = icmp ne ptr %i.qt, null
  %i.qu = select i1 %.not.i359.7, i1 %i.ne, i1 false
  br i1 %i.qu, label %bb.bx, label %.preheader588

bb.bx:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.7
  %i.qv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mv) #22
          to label %bb.by unwind label %bb.bk     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  br i1 %i.mx, label %.loopexit582.7, label %.loopexit582.loopexit.7

.loopexit582.loopexit.7:                          ; preds = %bb.by
  %i.qw = add nsw i64 %i.mv, -12                  ; 2 uses
  %i.qx = urem i64 %i.qw, 12
  %i.qy = sub nuw nsw i64 %i.qw, %i.qx
  %i.qz = add nsw i64 %i.qy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qv, i8 0, i64 %i.qz, i1 false)
  br label %.loopexit582.7

.loopexit582.7:                                   ; preds = %.loopexit582.loopexit.7, %bb.by
  %i.ra = getelementptr inbounds nuw i8, ptr %i.fi, i64 168
  store ptr %i.qv, ptr %i.ra, align 8
  br label %.preheader588

.preheader588:                                    ; preds = %.loopexit582.7, %_ZNK6aiMesh16HasTextureCoordsEj.exit.7
  %i.rb = load i32, ptr %i.en, align 4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.fi, i64 204
  store i32 %i.rb, ptr %i.rc, align 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 2 uses
  %i.re = load ptr, ptr %i.dv, align 8
  %.not.i360 = icmp ne ptr %i.re, null
  %i.rf = select i1 %.not.i360, i1 %i.ne, i1 false
  br i1 %i.rf, label %bb.bz, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

bb.bz:                                            ; preds = %.preheader588
  %i.rg = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.rh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rg) #22
          to label %bb.ca unwind label %bb.cb     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.mx, label %.loopexit581, label %.loopexit581.loopexit

.loopexit581.loopexit:                            ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rh, i8 0, i64 %i.rg, i1 false)
  br label %.loopexit581

.loopexit581:                                     ; preds = %.loopexit581.loopexit, %bb.ca
  store ptr %i.rh, ptr %i.rd, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

bb.cb:                                            ; preds = %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.bz
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit398

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %.preheader588, %.loopexit581
  %i.rj = load ptr, ptr %i.eo, align 8
  %.not.i360.1 = icmp ne ptr %i.rj, null
  %i.rk = select i1 %.not.i360.1, i1 %i.ne, i1 false
  br i1 %i.rk, label %bb.cc, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

bb.cc:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.rl = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.rm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rl) #22
          to label %bb.cd unwind label %bb.cb     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.mx, label %.loopexit581.1, label %.loopexit581.loopexit.1

.loopexit581.loopexit.1:                          ; preds = %bb.cd
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rm, i8 0, i64 %i.rl, i1 false)
  br label %.loopexit581.1

.loopexit581.1:                                   ; preds = %.loopexit581.loopexit.1, %bb.cd
  %i.rn = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store ptr %i.rm, ptr %i.rn, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %.loopexit581.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.ro = load ptr, ptr %i.ep, align 8
  %.not.i360.2 = icmp ne ptr %i.ro, null
  %i.rp = select i1 %.not.i360.2, i1 %i.ne, i1 false
  br i1 %i.rp, label %bb.ce, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

bb.ce:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.rq = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.rr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rq) #22
          to label %bb.cf unwind label %bb.cb     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.mx, label %.loopexit581.2, label %.loopexit581.loopexit.2

.loopexit581.loopexit.2:                          ; preds = %bb.cf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rr, i8 0, i64 %i.rq, i1 false)
  br label %.loopexit581.2

.loopexit581.2:                                   ; preds = %.loopexit581.loopexit.2, %bb.cf
  %i.rs = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  store ptr %i.rr, ptr %i.rs, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %.loopexit581.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.rt = load ptr, ptr %i.eq, align 8
  %.not.i360.3 = icmp ne ptr %i.rt, null
  %i.ru = select i1 %.not.i360.3, i1 %i.ne, i1 false
  br i1 %i.ru, label %bb.cg, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

bb.cg:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.rv = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.rw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rv) #22
          to label %bb.ch unwind label %bb.cb     ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.mx, label %.loopexit581.3, label %.loopexit581.loopexit.3

.loopexit581.loopexit.3:                          ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rw, i8 0, i64 %i.rv, i1 false)
  br label %.loopexit581.3

.loopexit581.3:                                   ; preds = %.loopexit581.loopexit.3, %bb.ch
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  store ptr %i.rw, ptr %i.rx, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %.loopexit581.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ry = load ptr, ptr %i.er, align 8
  %.not.i360.4 = icmp ne ptr %i.ry, null
  %i.rz = select i1 %.not.i360.4, i1 %i.ne, i1 false
  br i1 %i.rz, label %bb.ci, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

bb.ci:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.sa = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.sb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sa) #22
          to label %bb.cj unwind label %bb.cb     ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.mx, label %.loopexit581.4, label %.loopexit581.loopexit.4

.loopexit581.loopexit.4:                          ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sb, i8 0, i64 %i.sa, i1 false)
  br label %.loopexit581.4

.loopexit581.4:                                   ; preds = %.loopexit581.loopexit.4, %bb.cj
  %i.sc = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  store ptr %i.sb, ptr %i.sc, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %.loopexit581.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.sd = load ptr, ptr %i.es, align 8
  %.not.i360.5 = icmp ne ptr %i.sd, null
  %i.se = select i1 %.not.i360.5, i1 %i.ne, i1 false
  br i1 %i.se, label %bb.ck, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

bb.ck:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.sf = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.sg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sf) #22
          to label %bb.cl unwind label %bb.cb     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.mx, label %.loopexit581.5, label %.loopexit581.loopexit.5

.loopexit581.loopexit.5:                          ; preds = %bb.cl
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sg, i8 0, i64 %i.sf, i1 false)
  br label %.loopexit581.5

.loopexit581.5:                                   ; preds = %.loopexit581.loopexit.5, %bb.cl
  %i.sh = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  store ptr %i.sg, ptr %i.sh, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit581.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.si = load ptr, ptr %i.et, align 8
  %.not.i360.6 = icmp ne ptr %i.si, null
  %i.sj = select i1 %.not.i360.6, i1 %i.ne, i1 false
  br i1 %i.sj, label %bb.cm, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.cm:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.sk = shl nuw nsw i64 %i.mu, 4                ; 2 uses
  %i.sl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sk) #22
          to label %bb.cn unwind label %bb.cb     ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.mx, label %.loopexit581.6, label %.loopexit581.loopexit.6

.loopexit581.loopexit.6:                          ; preds = %bb.cn
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.sl, i8 0, i64 %i.sk, i1 false)
  br label %.loopexit581.6

.loopexit581.6:                                   ; preds = %.loopexit581.loopexit.6, %bb.cn
  %i.sm = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  store ptr %i.sl, ptr %i.sm, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit581.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.sn = load ptr, ptr %i.eu, align 8
  %.not.i360.7 = icmp ne ptr %i.sn, null
  %i.so = select i1 %.not.i360.7, i1 %i.ne, i1 false
  br i1 %i.so, label %bb.co, label %bb.cq

end_hunk_1
