inline.NumInlined: 199
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6Assimp15RemoveVCProcess11ProcessMeshEP6aiMesh:bb.a
  store ptr null, ptr %i.s, align 8
  br label %.split.4

bb.r:                                             ; preds = %bb.q
  %i.ei = add nuw nsw i32 %.161.2, 1              ; 2 uses
  %.pre234 = zext nneg i32 %i.ei to i64
  br label %.split.4

.split.4:                                         ; preds = %bb.r, %._crit_edge.3
  %.pre-phi235 = phi i64 [ %.pre234, %bb.r ], [ %.pre-phi233, %._crit_edge.3 ] ; 9 uses
  %.4.3 = phi i1 [ %.4.2, %bb.r ], [ true, %._crit_edge.3 ] ; 2 uses
  %.161.3 = phi i32 [ %i.ei, %bb.r ], [ %.161.2, %._crit_edge.3 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not73.4 = icmp eq ptr %i.ek, null
  br i1 %.not73.4, label %.split85.us, label %bb.s

bb.s:                                             ; preds = %.split.4
  %i.el = load i32, ptr %i.a, align 8
  %i.em = and i32 %i.el, 536870912
  %.not114.4 = icmp eq i32 %i.em, 0
  br i1 %.not114.4, label %bb.t, label %.lr.ph.preheader.4

.lr.ph.preheader.4:                               ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.ek) #14
  store ptr null, ptr %i.ej, align 8
  %.05878.4 = add nuw nsw i32 %.161.3, 1
  %i.en = zext nneg i32 %.05878.4 to i64          ; 7 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  store ptr %i.ep, ptr %i.eq, align 8
  %indvars.iv.next.4 = add nuw nsw i64 %i.en, 1   ; 2 uses
  %.not297 = icmp eq i64 %indvars.iv.next.4, 8
  br i1 %.not297, label %._crit_edge.4, label %.lr.ph.4.1

.lr.ph.4.1:                                       ; preds = %.lr.ph.preheader.4
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.es, ptr %i.eu, align 8
  %indvars.iv.next.4.1 = add nuw nsw i64 %i.en, 2 ; 2 uses
  %.not297.1 = icmp eq i64 %indvars.iv.next.4.1, 8
  br i1 %.not297.1, label %._crit_edge.4, label %.lr.ph.4.2

.lr.ph.4.2:                                       ; preds = %.lr.ph.4.1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4.1
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.ew, ptr %i.ey, align 8
  %indvars.iv.next.4.2 = add nuw nsw i64 %i.en, 3 ; 2 uses
  %.not297.2 = icmp eq i64 %indvars.iv.next.4.2, 8
  br i1 %.not297.2, label %._crit_edge.4, label %.lr.ph.4.3

.lr.ph.4.3:                                       ; preds = %.lr.ph.4.2
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4.2
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr %i.fa, ptr %i.fc, align 8
  %indvars.iv.next.4.3 = add nuw nsw i64 %i.en, 4 ; 2 uses
  %.not297.3 = icmp eq i64 %indvars.iv.next.4.3, 8
  br i1 %.not297.3, label %._crit_edge.4, label %.lr.ph.4.4

.lr.ph.4.4:                                       ; preds = %.lr.ph.4.3
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4.3
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store ptr %i.fe, ptr %i.fg, align 8
  %indvars.iv.next.4.4 = add nuw nsw i64 %i.en, 5 ; 2 uses
  %.not297.4 = icmp eq i64 %indvars.iv.next.4.4, 8
  br i1 %.not297.4, label %._crit_edge.4, label %.lr.ph.4.5

.lr.ph.4.5:                                       ; preds = %.lr.ph.4.4
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4.4
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  store ptr %i.fi, ptr %i.fk, align 8
  %indvars.iv.next.4.5 = add nuw nsw i64 %i.en, 6 ; 2 uses
  %.not297.5 = icmp eq i64 %indvars.iv.next.4.5, 8
  br i1 %.not297.5, label %._crit_edge.4, label %.lr.ph.4.6

.lr.ph.4.6:                                       ; preds = %.lr.ph.4.5
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.4.5
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi235
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store ptr %i.fm, ptr %i.fo, align 8
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %.lr.ph.4.6, %.lr.ph.4.5, %.lr.ph.4.4, %.lr.ph.4.3, %.lr.ph.4.2, %.lr.ph.4.1, %.lr.ph.preheader.4
  store ptr null, ptr %i.s, align 8
  br label %.split.5

bb.t:                                             ; preds = %bb.s
  %i.fp = add nuw nsw i32 %.161.3, 1              ; 2 uses
  %.pre236 = zext nneg i32 %i.fp to i64
  br label %.split.5

.split.5:                                         ; preds = %bb.t, %._crit_edge.4
  %.pre-phi237 = phi i64 [ %.pre236, %bb.t ], [ %.pre-phi235, %._crit_edge.4 ] ; 9 uses
  %.4.4 = phi i1 [ %.4.3, %bb.t ], [ true, %._crit_edge.4 ] ; 2 uses
  %.161.4 = phi i32 [ %i.fp, %bb.t ], [ %.161.3, %._crit_edge.4 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not73.5 = icmp eq ptr %i.fr, null
  br i1 %.not73.5, label %.split85.us, label %bb.u

bb.u:                                             ; preds = %.split.5
  %i.fs = load i32, ptr %i.a, align 8
  %i.ft = and i32 %i.fs, 1073741824
  %.not114.5 = icmp eq i32 %i.ft, 0
  br i1 %.not114.5, label %bb.v, label %.lr.ph.preheader.5

.lr.ph.preheader.5:                               ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.fr) #14
  store ptr null, ptr %i.fq, align 8
  %.05878.5 = add nuw nsw i32 %.161.4, 1
  %i.fu = zext nneg i32 %.05878.5 to i64          ; 7 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  store ptr %i.fw, ptr %i.fx, align 8
  %indvars.iv.next.5 = add nuw nsw i64 %i.fu, 1   ; 2 uses
  %.not298 = icmp eq i64 %indvars.iv.next.5, 8
  br i1 %.not298, label %._crit_edge.5, label %.lr.ph.5.1

.lr.ph.5.1:                                       ; preds = %.lr.ph.preheader.5
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.fz, ptr %i.gb, align 8
  %indvars.iv.next.5.1 = add nuw nsw i64 %i.fu, 2 ; 2 uses
  %.not298.1 = icmp eq i64 %indvars.iv.next.5.1, 8
  br i1 %.not298.1, label %._crit_edge.5, label %.lr.ph.5.2

.lr.ph.5.2:                                       ; preds = %.lr.ph.5.1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5.1
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.gd, ptr %i.gf, align 8
  %indvars.iv.next.5.2 = add nuw nsw i64 %i.fu, 3 ; 2 uses
  %.not298.2 = icmp eq i64 %indvars.iv.next.5.2, 8
  br i1 %.not298.2, label %._crit_edge.5, label %.lr.ph.5.3

.lr.ph.5.3:                                       ; preds = %.lr.ph.5.2
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5.2
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store ptr %i.gh, ptr %i.gj, align 8
  %indvars.iv.next.5.3 = add nuw nsw i64 %i.fu, 4 ; 2 uses
  %.not298.3 = icmp eq i64 %indvars.iv.next.5.3, 8
  br i1 %.not298.3, label %._crit_edge.5, label %.lr.ph.5.4

.lr.ph.5.4:                                       ; preds = %.lr.ph.5.3
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5.3
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store ptr %i.gl, ptr %i.gn, align 8
  %indvars.iv.next.5.4 = add nuw nsw i64 %i.fu, 5 ; 2 uses
  %.not298.4 = icmp eq i64 %indvars.iv.next.5.4, 8
  br i1 %.not298.4, label %._crit_edge.5, label %.lr.ph.5.5

.lr.ph.5.5:                                       ; preds = %.lr.ph.5.4
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5.4
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store ptr %i.gp, ptr %i.gr, align 8
  %indvars.iv.next.5.5 = add nuw nsw i64 %i.fu, 6 ; 2 uses
  %.not298.5 = icmp eq i64 %indvars.iv.next.5.5, 8
  br i1 %.not298.5, label %._crit_edge.5, label %.lr.ph.5.6

.lr.ph.5.6:                                       ; preds = %.lr.ph.5.5
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.5.5
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi237
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store ptr %i.gt, ptr %i.gv, align 8
  br label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5.6, %.lr.ph.5.5, %.lr.ph.5.4, %.lr.ph.5.3, %.lr.ph.5.2, %.lr.ph.5.1, %.lr.ph.preheader.5
  store ptr null, ptr %i.s, align 8
  br label %.split.6

bb.v:                                             ; preds = %bb.u
  %i.gw = add nuw nsw i32 %.161.4, 1              ; 2 uses
  %.pre238 = zext nneg i32 %i.gw to i64
  br label %.split.6

.split.6:                                         ; preds = %bb.v, %._crit_edge.5
  %.pre-phi239 = phi i64 [ %.pre238, %bb.v ], [ %.pre-phi237, %._crit_edge.5 ] ; 8 uses
  %.4.5 = phi i1 [ %.4.4, %bb.v ], [ true, %._crit_edge.5 ] ; 2 uses
  %.161.5 = phi i32 [ %i.gw, %bb.v ], [ %.161.4, %._crit_edge.5 ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 2 uses
  %.not73.6 = icmp eq ptr %i.gy, null
  br i1 %.not73.6, label %.split85.us, label %2

2:                                                ; preds = %.split.6
  %3 = load i32, ptr %i.a, align 8
  %.not114.6 = icmp sgt i32 %3, -1
  br i1 %.not114.6, label %.split85.us, label %.lr.ph.preheader.6

.lr.ph.preheader.6:                               ; preds = %2
  tail call void @_ZdaPv(ptr noundef nonnull %i.gy) #14
  store ptr null, ptr %i.gx, align 8
  %.05878.6 = add nuw nsw i32 %.161.5, 1
  %i.gz = zext nneg i32 %.05878.6 to i64          ; 7 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  store ptr %i.hb, ptr %i.hc, align 8
  %indvars.iv.next.6 = add nuw nsw i64 %i.gz, 1   ; 2 uses
  %.not299 = icmp eq i64 %indvars.iv.next.6, 8
  br i1 %.not299, label %._crit_edge.6, label %.lr.ph.6.1

.lr.ph.6.1:                                       ; preds = %.lr.ph.preheader.6
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.he, ptr %i.hg, align 8
  %indvars.iv.next.6.1 = add nuw nsw i64 %i.gz, 2 ; 2 uses
  %.not299.1 = icmp eq i64 %indvars.iv.next.6.1, 8
  br i1 %.not299.1, label %._crit_edge.6, label %.lr.ph.6.2

.lr.ph.6.2:                                       ; preds = %.lr.ph.6.1
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6.1
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr %i.hi, ptr %i.hk, align 8
  %indvars.iv.next.6.2 = add nuw nsw i64 %i.gz, 3 ; 2 uses
  %.not299.2 = icmp eq i64 %indvars.iv.next.6.2, 8
  br i1 %.not299.2, label %._crit_edge.6, label %.lr.ph.6.3

.lr.ph.6.3:                                       ; preds = %.lr.ph.6.2
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6.2
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.hm, ptr %i.ho, align 8
  %indvars.iv.next.6.3 = add nuw nsw i64 %i.gz, 4 ; 2 uses
  %.not299.3 = icmp eq i64 %indvars.iv.next.6.3, 8
  br i1 %.not299.3, label %._crit_edge.6, label %.lr.ph.6.4

.lr.ph.6.4:                                       ; preds = %.lr.ph.6.3
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6.3
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store ptr %i.hq, ptr %i.hs, align 8
  %indvars.iv.next.6.4 = add nuw nsw i64 %i.gz, 5 ; 2 uses
  %.not299.4 = icmp eq i64 %indvars.iv.next.6.4, 8
  br i1 %.not299.4, label %._crit_edge.6, label %.lr.ph.6.5

.lr.ph.6.5:                                       ; preds = %.lr.ph.6.4
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6.4
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store ptr %i.hu, ptr %i.hw, align 8
  %indvars.iv.next.6.5 = add nuw nsw i64 %i.gz, 6 ; 2 uses
  %.not299.5 = icmp eq i64 %indvars.iv.next.6.5, 8
  br i1 %.not299.5, label %._crit_edge.6, label %.lr.ph.6.6

.lr.ph.6.6:                                       ; preds = %.lr.ph.6.5
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.6.5
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre-phi239
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  store ptr %i.hy, ptr %i.ia, align 8
  br label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6.6, %.lr.ph.6.5, %.lr.ph.6.4, %.lr.ph.6.3, %.lr.ph.6.2, %.lr.ph.6.1, %.lr.ph.preheader.6
  store ptr null, ptr %i.s, align 8
  br label %.split85.us

.split85.us:                                      ; preds = %._crit_edge.6, %2, %.lr.ph89.preheader, %.lr.ph89.1, %.lr.ph89.2, %.lr.ph89.3, %.lr.ph89.4, %.lr.ph89.5, %.lr.ph89.6, %.split.preheader, %.split.1, %.split.2, %.split.3, %.split.4, %.split.5, %.split.6, %.split.us, %..split85.us_crit_edge
  %.us-phi = phi i1 [ true, %.lr.ph89.preheader ], [ %.163, %.split.us ], [ true, %..split85.us_crit_edge ], [ %.4.3, %.split.4 ], [ %.163, %.split.preheader ], [ %.4, %.split.1 ], [ true, %.lr.ph89.1 ], [ %.4.1, %.split.2 ], [ %.4.4, %.split.5 ], [ %.4.2, %.split.3 ], [ %.4.5, %.split.6 ], [ true, %.lr.ph89.6 ], [ true, %.lr.ph89.5 ], [ true, %.lr.ph89.4 ], [ true, %.lr.ph89.3 ], [ true, %.lr.ph89.2 ], [ true, %._crit_edge.6 ], [ %.4.5, %2 ] ; 3 uses
  %i.ib = load i32, ptr %i.a, align 8
  %.fr116 = freeze i32 %i.ib                      ; 2 uses
  %i.ic = and i32 %.fr116, 8
  %.not117 = icmp eq i32 %i.ic, 0
  %i.id = getelementptr i8, ptr %1, i64 48        ; 108 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 8 uses
  %i.if = load ptr, ptr %i.id, align 8            ; 3 uses
  %.not74 = icmp eq ptr %i.if, null               ; 2 uses
  br i1 %.not117, label %.split100.preheader, label %.split100.us

.split100.preheader:                              ; preds = %.split85.us
  br i1 %.not74, label %.split102.us, label %bb.w

.split100.us:                                     ; preds = %.split85.us
  br i1 %.not74, label %.split102.us, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %.split100.us
  tail call void @_ZdaPv(ptr noundef nonnull %i.if) #14
  store ptr null, ptr %i.id, align 8
  %i.ig = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not74.us = icmp eq ptr %i.ih, null
  br i1 %.not74.us, label %.split102.us, label %.lr.ph108.1

.lr.ph108.1:                                      ; preds = %.lr.ph108.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ih) #14
  store ptr null, ptr %i.ig, align 8
  %i.ii = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.not74.us.1 = icmp eq ptr %i.ij, null
  br i1 %.not74.us.1, label %.split102.us, label %.lr.ph108.2

.lr.ph108.2:                                      ; preds = %.lr.ph108.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.ij) #14
  store ptr null, ptr %i.ii, align 8
  %i.ik = getelementptr i8, ptr %1, i64 72        ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8            ; 2 uses
  %.not74.us.2 = icmp eq ptr %i.il, null
  br i1 %.not74.us.2, label %.split102.us, label %.lr.ph108.3

.lr.ph108.3:                                      ; preds = %.lr.ph108.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.il) #14
  store ptr null, ptr %i.ik, align 8
  %i.im = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %.not74.us.3 = icmp eq ptr %i.in, null
  br i1 %.not74.us.3, label %.split102.us, label %.lr.ph108.4

.lr.ph108.4:                                      ; preds = %.lr.ph108.3
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #14
  store ptr null, ptr %i.im, align 8
  %i.io = getelementptr i8, ptr %1, i64 88        ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %.not74.us.4 = icmp eq ptr %i.ip, null
  br i1 %.not74.us.4, label %.split102.us, label %.lr.ph108.5

.lr.ph108.5:                                      ; preds = %.lr.ph108.4
  tail call void @_ZdaPv(ptr noundef nonnull %i.ip) #14
  store ptr null, ptr %i.io, align 8
  %i.iq = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %.not74.us.5 = icmp eq ptr %i.ir, null
  br i1 %.not74.us.5, label %.split102.us, label %.lr.ph108.6

.lr.ph108.6:                                      ; preds = %.lr.ph108.5
  tail call void @_ZdaPv(ptr noundef nonnull %i.ir) #14
  store ptr null, ptr %i.iq, align 8
  %i.is = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8            ; 2 uses
  %.not74.us.6 = icmp eq ptr %i.it, null
  br i1 %.not74.us.6, label %.split102.us, label %..split102.us_crit_edge

..split102.us_crit_edge:                          ; preds = %.lr.ph108.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.it) #14
  store ptr null, ptr %i.is, align 8
  br label %.split102.us, !llvm.loop !12

bb.w:                                             ; preds = %.split100.preheader
  %i.iu = and i32 %.fr116, 1048576
  %.not118 = icmp eq i32 %i.iu, 0
  br i1 %.not118, label %.split100.1, label %._crit_edge96

._crit_edge96:                                    ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.if) #14
  %scevgep225 = getelementptr i8, ptr %1, i64 56
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.id, ptr noundef nonnull align 8 dereferenceable(56) %scevgep225, i64 56, i1 false)
  store ptr null, ptr %i.ie, align 8
  br label %.split100.1

.split100.1:                                      ; preds = %bb.w, %._crit_edge96
  %.7 = phi i1 [ true, %._crit_edge96 ], [ %.us-phi, %bb.w ] ; 2 uses
  %.1 = phi i32 [ 0, %._crit_edge96 ], [ 1, %bb.w ] ; 5 uses
  %i.iv = zext nneg i32 %.1 to i64                ; 9 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %.not74.1 = icmp eq ptr %i.ix, null
  br i1 %.not74.1, label %.split102.us, label %bb.x

bb.x:                                             ; preds = %.split100.1
  %i.iy = load i32, ptr %i.a, align 8
  %i.iz = shl nuw nsw i32 1048576, %.1
  %i.ja = and i32 %i.iy, %i.iz
  %.not118.1 = icmp eq i32 %i.ja, 0
  br i1 %.not118.1, label %bb.y, label %.lr.ph95.preheader.1

.lr.ph95.preheader.1:                             ; preds = %bb.x
  tail call void @_ZdaPv(ptr noundef nonnull %i.ix) #14
  store ptr null, ptr %i.iw, align 8
  %.092.1 = add nuw nsw i32 %.1, 1
  %i.jb = zext nneg i32 %.092.1 to i64            ; 7 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  store ptr %i.jd, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jb
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jh, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.jm, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jb
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  store ptr %i.jr, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.jb
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  store ptr %i.jw, ptr %i.jy, align 8
  %indvars.iv.next.1177.4 = add nuw nsw i64 %i.jb, 5 ; 2 uses
  %.not300.4 = icmp eq i64 %indvars.iv.next.1177.4, 8
  br i1 %.not300.4, label %._crit_edge96.1, label %.lr.ph95.1.5

.lr.ph95.1.5:                                     ; preds = %.lr.ph95.preheader.1
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.1177.4
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  store ptr %i.ka, ptr %i.kc, align 8
  %indvars.iv.next.1177.5 = add nuw nsw i64 %i.jb, 6 ; 2 uses
  %.not300.5 = icmp eq i64 %indvars.iv.next.1177.5, 8
  br i1 %.not300.5, label %._crit_edge96.1, label %.lr.ph95.1.6

.lr.ph95.1.6:                                     ; preds = %.lr.ph95.1.5
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.1177.5
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.iv
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  store ptr %i.ke, ptr %i.kg, align 8
  br label %._crit_edge96.1

._crit_edge96.1:                                  ; preds = %.lr.ph95.1.6, %.lr.ph95.1.5, %.lr.ph95.preheader.1
  store ptr null, ptr %i.ie, align 8
  br label %.split100.2

bb.y:                                             ; preds = %bb.x
  %i.kh = add nuw nsw i32 %.1, 1                  ; 2 uses
  %.pre242 = zext nneg i32 %i.kh to i64
  br label %.split100.2

.split100.2:                                      ; preds = %bb.y, %._crit_edge96.1
  %.pre-phi243 = phi i64 [ %.pre242, %bb.y ], [ %i.iv, %._crit_edge96.1 ] ; 9 uses
  %.7.1 = phi i1 [ %.7, %bb.y ], [ true, %._crit_edge96.1 ] ; 2 uses
  %.1.1 = phi i32 [ %i.kh, %bb.y ], [ %.1, %._crit_edge96.1 ] ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre-phi243 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %.not74.2 = icmp eq ptr %i.kj, null
  br i1 %.not74.2, label %.split102.us, label %bb.z

bb.z:                                             ; preds = %.split100.2
  %i.kk = load i32, ptr %i.a, align 8
  %i.kl = shl nuw nsw i32 1048576, %.1.1
  %i.km = and i32 %i.kk, %i.kl
  %.not118.2 = icmp eq i32 %i.km, 0
  br i1 %.not118.2, label %bb.aa, label %.lr.ph95.preheader.2

.lr.ph95.preheader.2:                             ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.kj) #14
  store ptr null, ptr %i.ki, align 8
  %.092.2 = add nuw nsw i32 %.1.1, 1
  %i.kn = zext nneg i32 %.092.2 to i64            ; 7 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre-phi243
  store ptr %i.kp, ptr %i.kq, align 8
  %indvars.iv.next.2179 = add nuw nsw i64 %i.kn, 1 ; 2 uses
  %.not301 = icmp eq i64 %indvars.iv.next.2179, 8
  br i1 %.not301, label %._crit_edge96.2, label %.lr.ph95.2.1

.lr.ph95.2.1:                                     ; preds = %.lr.ph95.preheader.2
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.next.2179
end_hunk_0
