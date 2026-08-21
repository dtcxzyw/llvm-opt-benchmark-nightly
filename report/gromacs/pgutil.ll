inline.NumInlined: 133
inline.NumDeleted: 80
begin_hunk_0_@_Z11search_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE:bb.a

bb.t:                                             ; preds = %.critedge4, %bb.s
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %i.a, %lftr.wideiv263
  br i1 %exitcond264.not, label %.critedge2, label %.lr.ph228, !llvm.loop !36

.critedge2:                                       ; preds = %bb.q, %bb.t, %.critedge96
  %.0286 = phi ptr [ %.0, %bb.t ], [ %.0, %.critedge96 ], [ %i.l, %bb.q ] ; 2 uses
  %.1284 = phi i32 [ %.1, %bb.t ], [ %.1, %.critedge96 ], [ %i.a, %bb.q ]
  %.0169283 = phi i32 [ %.0169, %bb.t ], [ %.0169, %.critedge96 ], [ %i.k, %bb.q ] ; 2 uses
  %.pre = sext i32 %.1284 to i64                  ; 3 uses
  br i1 %.not89, label %.critedge2.thread, label %bb.u

bb.u:                                             ; preds = %.critedge2
  %i.bx = getelementptr inbounds [36 x i8], ptr %i.c, i64 %.pre
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  %i.ca = sext i32 %i.a to i64
  %i.cb = getelementptr [36 x i8], ptr %i.c, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21
  %i.ce = icmp eq i32 %i.bz, %i.cd
  br i1 %i.ce, label %.loopexit, label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.r, %.critedge2, %bb.u
  %.0285 = phi ptr [ %.0286, %.critedge2 ], [ %.0286, %bb.u ], [ %.0, %bb.r ]
  %.0169282 = phi i32 [ %.0169283, %.critedge2 ], [ %.0169283, %bb.u ], [ %.0169, %bb.r ]
  %.pre-phi = phi i64 [ %.pre, %.critedge2 ], [ %.pre, %bb.u ], [ %i.bn, %bb.r ]
  %i.cf = getelementptr inbounds [36 x i8], ptr %i.c, i64 %.pre-phi
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37
  %i.ck = sext i32 %.0169282 to i64
  %i.cl = getelementptr inbounds [32 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !34
  tail call fastcc void @_ZL14atom_not_foundiPKciS0_iS0_S0_b(i32 noundef 156, ptr noundef nonnull %.0285, i32 noundef %i.ch, ptr noundef %i.cn, ptr noundef %3, i1 noundef zeroext %4)
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.cp = sext i32 %1 to i64
  %i.cq = getelementptr inbounds [36 x i8], ptr %i.c, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !21 ; 10 uses
  %.sroa.01.0.copyload.i104 = load ptr, ptr %5, align 8 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i105 = load ptr, ptr %i.ct, align 8 ; 4 uses
  %i.cu = icmp eq ptr %.sroa.01.0.copyload.i104, %.sroa.0.0.copyload.i105
  br i1 %i.cu, label %.critedge98, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = ptrtoint ptr %.sroa.0.0.copyload.i105 to i64 ; 2 uses
  %i.cw = ptrtoint ptr %.sroa.01.0.copyload.i104 to i64 ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = ashr i64 %i.cx, 4                       ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i.i119, label %._crit_edge.i.i.i108

.lr.ph.i.i.i119:                                  ; preds = %bb.w
  %i.da = and i64 %i.cx, -16
  %scevgep.i.i.i120 = getelementptr i8, ptr %.sroa.01.0.copyload.i104, i64 %i.da ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i.i.i119
  %.052.i.i.i121 = phi i64 [ %i.cy, %.lr.ph.i.i.i119 ], [ %i.dn, %bb.ab ] ; 2 uses
  %.sroa.034.051.i.i.i122 = phi ptr [ %.sroa.01.0.copyload.i104, %.lr.ph.i.i.i119 ], [ %i.dm, %bb.ab ] ; 9 uses
  %i.db = load i32, ptr %.sroa.034.051.i.i.i122, align 4, !tbaa !26
  %i.dc = icmp eq i32 %i.db, %i.cs
  br i1 %i.dc, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !26
  %i.df = icmp eq i32 %i.de, %i.cs
  br i1 %i.df, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !26
  %i.di = icmp eq i32 %i.dh, %i.cs
  br i1 %i.di, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit301, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !26
  %i.dl = icmp eq i32 %i.dk, %i.cs
  br i1 %i.dl, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit303, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 16
  %i.dn = add nsw i64 %.052.i.i.i121, -1
  %i.do = icmp sgt i64 %.052.i.i.i121, 1
  br i1 %i.do, label %bb.x, label %._crit_edge.loopexit.i.i.i123, !llvm.loop !27

._crit_edge.loopexit.i.i.i123:                    ; preds = %bb.ab
  %.pre59.i.i.i124 = ptrtoint ptr %scevgep.i.i.i120 to i64
  %.pre60.i.i.i125 = sub i64 %i.cv, %.pre59.i.i.i124
  br label %._crit_edge.i.i.i108

._crit_edge.i.i.i108:                             ; preds = %._crit_edge.loopexit.i.i.i123, %bb.w
  %.pre-phi61.i.i.i109 = phi i64 [ %.pre60.i.i.i125, %._crit_edge.loopexit.i.i.i123 ], [ %i.cx, %bb.w ]
  %.sroa.034.0.lcssa.i.i.i110 = phi ptr [ %scevgep.i.i.i120, %._crit_edge.loopexit.i.i.i123 ], [ %.sroa.01.0.copyload.i104, %bb.w ] ; 5 uses
  %i.dp = ashr exact i64 %.pre-phi61.i.i.i109, 2
  switch i64 %i.dp, label %.critedge98 [
    i64 3, label %bb.ac
    i64 2, label %._crit_edge._crit_edge.i.i.i116
    i64 1, label %._crit_edge._crit_edge57.i.i.i111
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i108
  %i.dq = load i32, ptr %.sroa.034.0.lcssa.i.i.i110, align 4, !tbaa !26
  %i.dr = icmp eq i32 %i.dq, %i.cs
  br i1 %i.dr, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i110, i64 4
  br label %._crit_edge._crit_edge.i.i.i116

._crit_edge._crit_edge.i.i.i116:                  ; preds = %._crit_edge.i.i.i108, %bb.ad
  %.sroa.034.1.i.i.i118 = phi ptr [ %i.ds, %bb.ad ], [ %.sroa.034.0.lcssa.i.i.i110, %._crit_edge.i.i.i108 ] ; 3 uses
  %i.dt = load i32, ptr %.sroa.034.1.i.i.i118, align 4, !tbaa !26
  %i.du = icmp eq i32 %i.dt, %i.cs
  br i1 %i.du, label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge._crit_edge.i.i.i116
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i118, i64 4
  br label %._crit_edge._crit_edge57.i.i.i111

._crit_edge._crit_edge57.i.i.i111:                ; preds = %._crit_edge.i.i.i108, %bb.ae
  %.sroa.034.2.i.i.i113 = phi ptr [ %i.dv, %bb.ae ], [ %.sroa.034.0.lcssa.i.i.i110, %._crit_edge.i.i.i108 ] ; 2 uses
  %i.dw = load i32, ptr %.sroa.034.2.i.i.i113, align 4, !tbaa !26
  %i.dx = icmp eq i32 %i.dw, %i.cs
  %spec.select.i.i.i114 = select i1 %i.dx, ptr %.sroa.034.2.i.i.i113, ptr %.sroa.0.0.copyload.i105
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit: ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 4
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit301: ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 8
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit303: ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i122, i64 12
  br label %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129

_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129: ; preds = %bb.x, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit301, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit303, %bb.ac, %._crit_edge._crit_edge.i.i.i116, %._crit_edge._crit_edge57.i.i.i111
  %.sroa.010.0.in.sroa.speculated.i.i.i115 = phi ptr [ %.sroa.034.1.i.i.i118, %._crit_edge._crit_edge.i.i.i116 ], [ %spec.select.i.i.i114, %._crit_edge._crit_edge57.i.i.i111 ], [ %.sroa.034.0.lcssa.i.i.i110, %bb.ac ], [ %i.ea, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit303 ], [ %i.dz, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit301 ], [ %i.dy, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i122, %bb.x ] ; 3 uses
  %.not190 = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i115, %.sroa.0.0.copyload.i105
  br i1 %.not190, label %.critedge98, label %bb.af

bb.af:                                            ; preds = %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129
  %i.eb = ptrtoint ptr %.sroa.010.0.in.sroa.speculated.i.i.i115 to i64
  %i.ec = sub i64 %i.eb, %i.cw
  %i.ed = and i64 %i.ec, 4
  %.not92 = icmp eq i64 %i.ed, 0
  br i1 %.not92, label %bb.ag, label %.critedge98

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i115, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.eg = icmp sgt i32 %i.a, 0
  br i1 %i.eg, label %.lr.ph.preheader, label %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134

.lr.ph.preheader:                                 ; preds = %bb.ag
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ah ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !21
  %i.ek = icmp eq i32 %i.ej, %i.ef
  br i1 %i.ek, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134, label %.lr.ph, !llvm.loop !29

bb.ai:                                            ; preds = %.lr.ph
  %i.el = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.em = tail call i64 @_Z11search_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE(ptr noundef nonnull %i.co, i32 noundef %i.el, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %6), !inline_history !30
  br label %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134

_Z15search_res_atomPKciPK7t_atomsS0_b.exit134:    ; preds = %bb.ah, %bb.ag, %bb.ai
  %.sroa.0166.0.insert.insert = phi i64 [ %i.em, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.8.0.extract.shift = and i64 %.sroa.0166.0.insert.insert, -1099511627776
  br label %.loopexit

.critedge98:                                      ; preds = %._crit_edge.i.i.i108, %bb.v, %bb.af, %_ZSt4findIN3gmx12ArrayRefIterIKiEEiET_S4_S4_RKT0_.exit129
  %i.en = icmp sgt i32 %1, -1
  br i1 %i.en, label %.lr.ph209.preheader, label %.critedge99

.lr.ph209.preheader:                              ; preds = %.critedge98
  %8 = zext nneg i32 %1 to i64
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %bb.aj
  %indvars.iv247 = phi i64 [ %8, %.lr.ph209.preheader ], [ %indvars.iv.next248, %bb.aj ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv247
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !21 ; 2 uses
  %i.er = icmp eq i32 %i.eq, %i.cs
  br i1 %i.er, label %bb.aj, label %.critedge6

bb.aj:                                            ; preds = %.lr.ph209
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, -1
  %i.es = icmp sgt i64 %indvars.iv247, 0
  br i1 %i.es, label %.lr.ph209, label %.critedge99, !llvm.loop !40

.critedge6:                                       ; preds = %.lr.ph209
  %9 = trunc nuw nsw i64 %indvars.iv247 to i32
  %i.et = add nuw nsw i32 %9, 1
  br label %.critedge99

.critedge99:                                      ; preds = %bb.aj, %.critedge98, %.critedge6
  %.1170 = phi i32 [ %i.eq, %.critedge6 ], [ %i.cs, %.critedge98 ], [ %i.cs, %bb.aj ] ; 2 uses
  %.3 = phi i32 [ %i.et, %.critedge6 ], [ %1, %.critedge98 ], [ -1, %bb.aj ] ; 3 uses
  %i.eu = zext i32 %.3 to i64                     ; 2 uses
  %i.ev = icmp sgt i32 %.3, 0
  br i1 %i.ev, label %.lr.ph338, label %.critedge8

bb.ak:                                            ; preds = %bb.al
  %i.ew = trunc nuw i64 %i.ey to i32
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph338, label %.critedge8, !llvm.loop !41

.lr.ph338:                                        ; preds = %.critedge99, %bb.ak
  %.in = phi i64 [ %i.ey, %bb.ak ], [ %i.eu, %.critedge99 ]
  %i.ey = add nsw i64 %.in, -1                    ; 5 uses
  %i.ez = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !21
  %i.fc = icmp eq i32 %i.fb, %.1170
  br i1 %i.fc, label %bb.al, label %.critedge8

bb.al:                                            ; preds = %.lr.ph338
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ey
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !34
  %i.fg = tail call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef nonnull %i.co, ptr noundef %i.ff)
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.loopexit, label %bb.ak, !llvm.loop !41

.critedge8:                                       ; preds = %.lr.ph338, %bb.ak, %.critedge99
  %i.fi = icmp sgt i32 %.3, 0
  br i1 %i.fi, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %.critedge8
  %i.fj = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %i.eu
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !37
  %i.fo = sext i32 %.1170 to i64
  %i.fp = getelementptr inbounds [32 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !38
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34
  tail call fastcc void @_ZL14atom_not_foundiPKciS0_iS0_S0_b(i32 noundef 195, ptr noundef nonnull %i.co, i32 noundef %i.fl, ptr noundef %i.fr, ptr noundef %3, i1 noundef zeroext %4)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.s, %.critedge2.thread, %bb.u, %bb.am, %.critedge8, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit
  %.sroa.8.sroa.0.0 = phi i64 [ %.sroa.8.0.extract.shift, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134 ], [ 0, %bb.s ], [ %.sroa.8.0.extract.shift162, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit ], [ 0, %.critedge2.thread ], [ 0, %.critedge8 ], [ 0, %bb.am ], [ 0, %bb.u ], [ 0, %bb.al ]
  %.sroa.5.0 = phi i64 [ %.sroa.0166.0.insert.insert, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134 ], [ 4294967296, %bb.s ], [ %.sroa.0164.0.insert.insert, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit ], [ 0, %.critedge2.thread ], [ 0, %.critedge8 ], [ 0, %bb.am ], [ 0, %bb.u ], [ 4294967296, %bb.al ]
  %.sroa.0158.0 = phi i64 [ %.sroa.0166.0.insert.insert, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit134 ], [ %indvars.iv260, %bb.s ], [ %.sroa.0164.0.insert.insert, %_Z15search_res_atomPKciPK7t_atomsS0_b.exit ], [ 0, %.critedge2.thread ], [ 0, %.critedge8 ], [ 0, %bb.am ], [ 0, %bb.u ], [ %i.ey, %bb.al ]
  %.sroa.5.0.insert.ext = and i64 %.sroa.5.0, 1095216660480
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.8.sroa.0.0
  %.sroa.0158.0.insert.ext = and i64 %.sroa.0158.0, 4294967295
  %.sroa.0158.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0158.0.insert.ext
  ret i64 %.sroa.0158.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i64 @_Z15search_res_atomPKciPK7t_atomsS0_b(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.gmx::ArrayRef", align 8     ; 2 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !29

bb.d:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.j = tail call i64 @_Z11search_atomPKciPK7t_atomsS0_bN3gmx8ArrayRefIKiEE(ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %5)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.sroa.0.0.insert.insert = phi i64 [ %i.j, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14atom_not_foundiPKciS0_iS0_S0_b(i32 noundef range(i32 156, 196) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  store ptr @.str, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(6) @.str.1) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(5) @.str.2) #10
  %.not13 = icmp eq i32 %i.d, 0
  %i.e = add nsw i32 %2, 1                        ; 2 uses
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.3, i32 noundef %i.e, ptr noundef %3, ptr noundef %1, ptr noundef nonnull %4) #11 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str.4, i32 noundef %i.e, ptr noundef %3, ptr noundef %1) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z11gmx_warningPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b) #12
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  resume { ptr, i32 } %i.h

bb.j:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @_Z11gmx_warningPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.c, ptr %i.a, align 8, !tbaa !44
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !46
  %i.g = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.g, ptr %i.d, align 8, !tbaa !48
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
end_hunk_0
