inline.NumInlined: 766
inline.NumDeleted: 100
begin_hunk_0_@subs_STMultiIntern:bb.a
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gp, i8 0, i64 20, i1 false)
  %i.gq = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  store ptr null, ptr %i.gr, align 8
  %i.gs = add nsw i32 %i.gg, -2                   ; 2 uses
  store i32 %i.gs, ptr @cont_BINDINGS, align 4
  %i.gt = icmp sgt i32 %i.gg, 2
  br i1 %i.gt, label %.lr.ph.i119, label %._crit_edge.i117, !llvm.loop !7

._crit_edge.i117:                                 ; preds = %.lr.ph.i119.prol.loopexit, %.lr.ph.i119, %bb.v
  %i.gu = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i118 = icmp eq i32 %i.gu, 0
  br i1 %.not.i118, label %cont_BackTrack.exit, label %cont_BackTrack.exit.sink.split

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %i.r, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %fol_Atom.exit106, %fol_Atom.exit96
  %.pr.i122 = load i32, ptr @cont_BINDINGS, align 4 ; 5 uses
  %i.gv = icmp sgt i32 %.pr.i122, 0
  br i1 %i.gv, label %.lr.ph.i125.preheader, label %._crit_edge.i123

.lr.ph.i125.preheader:                            ; preds = %bb.x
  %xtraiter153 = and i32 %.pr.i122, 1
  %lcmp.mod154.not = icmp eq i32 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader
  %i.gw = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.gw, ptr @cont_CURRENTBINDING, align 8
  %i.gx = getelementptr i8, ptr %i.gw, i64 24
  %.val.i.i.i126.prol = load ptr, ptr %i.gx, align 8
  store ptr %.val.i.i.i126.prol, ptr @cont_LASTBINDING, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gy, i8 0, i64 20, i1 false)
  %i.gz = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr null, ptr %i.ha, align 8
  %i.hb = add nsw i32 %.pr.i122, -1               ; 2 uses
  store i32 %i.hb, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i125.prol.loopexit

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader
  %.unr155 = phi i32 [ %.pr.i122, %.lr.ph.i125.preheader ], [ %i.hb, %.lr.ph.i125.prol ]
  %i.hc = icmp eq i32 %.pr.i122, 1
  br i1 %i.hc, label %._crit_edge.i123, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %i.hd = phi i32 [ %i.hp, %.lr.ph.i125 ], [ %.unr155, %.lr.ph.i125.prol.loopexit ] ; 3 uses
  %i.he = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.he, ptr @cont_CURRENTBINDING, align 8
  %i.hf = getelementptr i8, ptr %i.he, i64 24
  %.val.i.i.i126 = load ptr, ptr %i.hf, align 8
  store ptr %.val.i.i.i126, ptr @cont_LASTBINDING, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hg, i8 0, i64 20, i1 false)
  %i.hh = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr null, ptr %i.hi, align 8
  %i.hj = add nsw i32 %i.hd, -1
  store i32 %i.hj, ptr @cont_BINDINGS, align 4
  %i.hk = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.hk, ptr @cont_CURRENTBINDING, align 8
  %i.hl = getelementptr i8, ptr %i.hk, i64 24
  %.val.i.i.i126.1 = load ptr, ptr %i.hl, align 8
  store ptr %.val.i.i.i126.1, ptr @cont_LASTBINDING, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hm, i8 0, i64 20, i1 false)
  %i.hn = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr null, ptr %i.ho, align 8
  %i.hp = add nsw i32 %i.hd, -2                   ; 2 uses
  store i32 %i.hp, ptr @cont_BINDINGS, align 4
  %i.hq = icmp sgt i32 %i.hd, 2
  br i1 %i.hq, label %.lr.ph.i125, label %._crit_edge.i123, !llvm.loop !7

._crit_edge.i123:                                 ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %bb.x
  %i.hr = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i124 = icmp eq i32 %i.hr, 0
  br i1 %.not.i124, label %cont_BackTrack.exit127, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i123
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  store i32 %i.hs, ptr @cont_STACKPOINTER, align 4
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4
  store i32 %i.hv, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit127

cont_BackTrack.exit127:                           ; preds = %fol_Atom.exit.thread, %bb.y, %._crit_edge.i123, %cont_BackTrack.exit77, %fol_Atom.exit, %fol_Atom.exit84, %bb.l, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cont_BackTrack.exit, label %bb.b, !llvm.loop !9

cont_BackTrack.exit.sink.split:                   ; preds = %._crit_edge.i117, %._crit_edge.i111, %._crit_edge.i67, %._crit_edge.i
  %.sink152 = phi i32 [ %i.fv, %._crit_edge.i111 ], [ %i.cd, %._crit_edge.i67 ], [ %i.be, %._crit_edge.i ], [ %i.gu, %._crit_edge.i117 ]
  %i.hw = add nsw i32 %.sink152, -1               ; 2 uses
  store i32 %i.hw, ptr @cont_STACKPOINTER, align 4
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4
  store i32 %i.hz, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit

cont_BackTrack.exit:                              ; preds = %cont_BackTrack.exit127, %cont_BackTrack.exit.sink.split, %bb.a, %._crit_edge.i117, %._crit_edge.i111, %._crit_edge.i67, %._crit_edge.i
  %.0 = phi i32 [ 1, %._crit_edge.i111 ], [ 1, %._crit_edge.i117 ], [ 0, %bb.a ], [ 1, %cont_BackTrack.exit.sink.split ], [ 1, %._crit_edge.i ], [ 1, %._crit_edge.i67 ], [ 0, %cont_BackTrack.exit127 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @subs_STMultiExcept(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add nsw i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add nsw i32 %i.c, %.val4.i               ; 5 uses
  %i.f = getelementptr i8, ptr %1, i64 64
  %.val.i28 = load i32, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 68
  %.val3.i29 = load i32, ptr %i.g, align 4
  %i.h = add nsw i32 %.val3.i29, %.val.i28
  %i.i = getelementptr i8, ptr %1, i64 72
  %.val4.i30 = load i32, ptr %i.i, align 8
  %i.j = add nsw i32 %i.h, %.val4.i30             ; 2 uses
  %i.k = icmp sgt i32 %i.e, %i.j
  br i1 %i.k, label %subs_TestlitsEqExcept.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 4
  %.val25 = load i32, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val23 = load ptr, ptr %i.m, align 8
  %i.n = sext i32 %2 to i64                       ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.val23, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val27 = load i32, ptr %i.q, align 4
  %i.r = sub i32 %.val25, %.val27
  %i.s = getelementptr i8, ptr %1, i64 4
  %.val24 = load i32, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %1, i64 56         ; 3 uses
  %.val = load ptr, ptr %i.t, align 8
  %i.u = sext i32 %3 to i64                       ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val26 = load i32, ptr %i.x, align 4
  %i.y = sub i32 %.val24, %.val26
  %i.z = icmp ugt i32 %i.r, %i.y
  br i1 %i.z, label %subs_TestlitsEqExcept.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr @stamp, align 4
  %i.ab = add i32 %i.aa, 1                        ; 3 uses
  store i32 %i.ab, ptr @stamp, align 4
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.c
  store i32 1, ptr @stamp, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @multvec_j, i8 0, i64 400, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @multvec_i, i8 0, i64 400, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ad = phi i32 [ 1, %.loopexit.loopexit ], [ %i.ab, %bb.c ] ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr @multvec_i, i64 %i.n
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds [4 x i8], ptr @multvec_j, i64 %i.u
  store i32 %i.ad, ptr %i.af, align 4
  %i.ag = icmp sgt i32 %i.e, 1
  br i1 %i.ag, label %bb.d, label %subs_TestlitsEqExcept.exit.thread

bb.d:                                             ; preds = %.loopexit
  %i.ah = zext nneg i32 %i.e to i64               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @multvec_i, i64 %indvars.iv.i
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.ad
  %i.al = icmp samesign ult i64 %indvars.iv.i, %i.ah
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.am, label %bb.e, label %.preheader106.i, !llvm.loop !10

.preheader106.i:                                  ; preds = %bb.e
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ao = icmp samesign ugt i32 %i.e, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %subs_TestlitsEqExcept.exit.thread

.lr.ph.i:                                         ; preds = %.preheader106.i, %bb.x
  %.140107.i = phi i64 [ %indvars.iv.next112.i, %bb.x ], [ %indvars.iv.i, %.preheader106.i ] ; 3 uses
  %.val56.i = load ptr, ptr %i.m, align 8
  %i.ap = getelementptr inbounds [8 x i8], ptr %.val56.i, i64 %.140107.i
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 24
  %.val1.i.i = load ptr, ptr %i.ar, align 8       ; 7 uses
  %i.as = getelementptr i8, ptr %.val1.i.i, i64 16 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %cont_BackTrack.exit.i, %.lr.ph.i
  %.042.i = phi i32 [ 0, %.lr.ph.i ], [ %.244.i, %cont_BackTrack.exit.i ] ; 6 uses
  %i.at = sext i32 %.042.i to i64                 ; 3 uses
  %i.au = getelementptr inbounds [4 x i8], ptr @multvec_j, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr @stamp, align 4
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = add nsw i32 %.042.i, 1
  br label %cont_BackTrack.exit.i

bb.h:                                             ; preds = %bb.f
  %.val55.i = load ptr, ptr %i.t, align 8
  %i.az = getelementptr inbounds [8 x i8], ptr %.val55.i, i64 %i.at
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %.val1.i70.i = load ptr, ptr %i.bb, align 8     ; 9 uses
  %i.bc = load i32, ptr @cont_BINDINGS, align 4
  %i.bd = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr @cont_STACKPOINTER, align 4
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.bf
  store i32 %i.bc, ptr %i.bg, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.bh = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.bi = tail call i32 @unify_MatchBindings(ptr noundef %i.bh, ptr noundef %.val1.i.i, ptr noundef %.val1.i70.i) #8
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %.val58.i = load i32, ptr %.val1.i.i, align 8   ; 4 uses
  %.val57.i = load i32, ptr %.val1.i70.i, align 8
  %.not103.i = icmp eq i32 %.val58.i, %.val57.i
  br i1 %.not103.i, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr @fol_NOT, align 4         ; 3 uses
  %i.bk = icmp eq i32 %.val58.i, %i.bj
  br i1 %i.bk, label %fol_Atom.exit.i, label %fol_Atom.exit.thread.i

fol_Atom.exit.i:                                  ; preds = %bb.j
  %.val4.i72.i = load ptr, ptr %i.as, align 8
  %i.bl = getelementptr i8, ptr %.val4.i72.i, i64 8
  %.val4.val.i.i = load ptr, ptr %i.bl, align 8
  %.val62.pre.i = load i32, ptr %.val4.val.i.i, align 8 ; 2 uses
  %i.bm = load i32, ptr @fol_EQUALITY, align 4
  %.not104.i = icmp eq i32 %.val62.pre.i, %i.bm
  br i1 %.not104.i, label %fol_Atom.exit77.i, label %bb.s

fol_Atom.exit.thread.i:                           ; preds = %bb.j
  %i.bn = load i32, ptr @fol_EQUALITY, align 4
  %.not104121.i = icmp eq i32 %.val58.i, %i.bn
  br i1 %.not104121.i, label %fol_Atom.exit77.thread.i, label %bb.s

fol_Atom.exit77.i:                                ; preds = %fol_Atom.exit.i
  %i.bo = getelementptr i8, ptr %.val1.i70.i, i64 16
  %.val4.i75.i = load ptr, ptr %i.bo, align 8
  %i.bp = getelementptr i8, ptr %.val4.i75.i, i64 8
  %.val4.val.i76.i = load ptr, ptr %i.bp, align 8
  %.val61.pre.i = load i32, ptr %.val4.val.i76.i, align 8
  %.not105.i = icmp eq i32 %.val61.pre.i, %.val62.pre.i
  br i1 %.not105.i, label %fol_Atom.exit77.thread.i, label %bb.s

fol_Atom.exit77.thread.i:                         ; preds = %fol_Atom.exit77.i, %fol_Atom.exit.thread.i
  %.val54.i = load ptr, ptr %i.m, align 8
  %i.bq = getelementptr inbounds [8 x i8], ptr %.val54.i, i64 %.140107.i
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %.val64.i = load i32, ptr %i.bs, align 8
  %.not.i.not.i = icmp eq i32 %.val64.i, 0
  br i1 %.not.i.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %fol_Atom.exit77.thread.i
  %.val.i31 = load ptr, ptr %i.t, align 8
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val.i31, i64 %i.at
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val63.i = load i32, ptr %i.bv, align 8
  %.not.i78.not.i = icmp eq i32 %.val63.i, 0
  br i1 %.not.i78.not.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k, %fol_Atom.exit77.thread.i
  %.pr.i.i = load i32, ptr @cont_BINDINGS, align 4 ; 5 uses
  %i.bw = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.bw, label %.lr.ph.i.i.preheader, label %cont_BackTrackAndStart.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %xtraiter = and i32 %.pr.i.i, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bx = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.bx, ptr @cont_CURRENTBINDING, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %.val.i.i.i.i.prol = load ptr, ptr %i.by, align 8
  store ptr %.val.i.i.i.i.prol, ptr @cont_LASTBINDING, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bz, i8 0, i64 20, i1 false)
  %i.ca = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr null, ptr %i.cb, align 8
  %i.cc = add nsw i32 %.pr.i.i, -1                ; 2 uses
  store i32 %i.cc, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.unr = phi i32 [ %.pr.i.i, %.lr.ph.i.i.preheader ], [ %i.cc, %.lr.ph.i.i.prol ]
  %i.cd = icmp eq i32 %.pr.i.i, 1
  br i1 %i.cd, label %cont_BackTrackAndStart.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ce = phi i32 [ %i.cq, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.cf = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cf, ptr @cont_CURRENTBINDING, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.cg, align 8
  store ptr %.val.i.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ch, i8 0, i64 20, i1 false)
  %i.ci = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr null, ptr %i.cj, align 8
  %i.ck = add nsw i32 %i.ce, -1
  store i32 %i.ck, ptr @cont_BINDINGS, align 4
  %i.cl = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cl, ptr @cont_CURRENTBINDING, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %.val.i.i.i.i.1 = load ptr, ptr %i.cm, align 8
  store ptr %.val.i.i.i.i.1, ptr @cont_LASTBINDING, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cn, i8 0, i64 20, i1 false)
  %i.co = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr null, ptr %i.cp, align 8
  %i.cq = add nsw i32 %i.ce, -2                   ; 2 uses
  store i32 %i.cq, ptr @cont_BINDINGS, align 4
  %i.cr = icmp sgt i32 %i.ce, 2
  br i1 %i.cr, label %.lr.ph.i.i, label %cont_BackTrackAndStart.exit.loopexit.i, !llvm.loop !6

cont_BackTrackAndStart.exit.loopexit.i:           ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val.i79.pre.i = load i32, ptr %.val1.i.i, align 8
  br label %cont_BackTrackAndStart.exit.i

cont_BackTrackAndStart.exit.i:                    ; preds = %cont_BackTrackAndStart.exit.loopexit.i, %bb.l
  %.val.i79.i = phi i32 [ %.val.i79.pre.i, %cont_BackTrackAndStart.exit.loopexit.i ], [ %.val58.i, %bb.l ]
  %i.cs = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.ct = icmp eq i32 %.val.i79.i, %i.bj
  br i1 %i.ct, label %bb.m, label %fol_Atom.exit83.i

bb.m:                                             ; preds = %cont_BackTrackAndStart.exit.i
  %.val4.i81.i = load ptr, ptr %i.as, align 8
  %i.cu = getelementptr i8, ptr %.val4.i81.i, i64 8
  %.val4.val.i82.i = load ptr, ptr %i.cu, align 8
  br label %fol_Atom.exit83.i

fol_Atom.exit83.i:                                ; preds = %bb.m, %cont_BackTrackAndStart.exit.i
  %.0.i80.i = phi ptr [ %.val4.val.i82.i, %bb.m ], [ %.val1.i.i, %cont_BackTrackAndStart.exit.i ]
  %i.cv = getelementptr i8, ptr %.0.i80.i, i64 16
  %.val60.i = load ptr, ptr %i.cv, align 8
  %i.cw = getelementptr i8, ptr %.val60.i, i64 8
  %.val60.val.i = load ptr, ptr %i.cw, align 8
  %.val.i84.i = load i32, ptr %.val1.i70.i, align 8
  %i.cx = icmp eq i32 %.val.i84.i, %i.bj
  br i1 %i.cx, label %bb.n, label %fol_Atom.exit88.i

bb.n:                                             ; preds = %fol_Atom.exit83.i
  %i.cy = getelementptr i8, ptr %.val1.i70.i, i64 16
  %.val4.i86.i = load ptr, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %.val4.i86.i, i64 8
  %.val4.val.i87.i = load ptr, ptr %i.cz, align 8
  br label %fol_Atom.exit88.i

fol_Atom.exit88.i:                                ; preds = %bb.n, %fol_Atom.exit83.i
  %.0.i85.i = phi ptr [ %.val4.val.i87.i, %bb.n ], [ %.val1.i70.i, %fol_Atom.exit83.i ]
  %i.da = getelementptr i8, ptr %.0.i85.i, i64 16
  %.val66.i = load ptr, ptr %i.da, align 8
  %.val66.val.i = load ptr, ptr %.val66.i, align 8
  %i.db = getelementptr i8, ptr %.val66.val.i, i64 8
  %.val66.val.val.i = load ptr, ptr %i.db, align 8
  %i.dc = tail call i32 @unify_MatchBindings(ptr noundef %i.cs, ptr noundef %.val60.val.i, ptr noundef %.val66.val.val.i) #8
  %.not51.i = icmp eq i32 %i.dc, 0
  br i1 %.not51.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %fol_Atom.exit88.i
  %i.dd = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val.i89.i = load i32, ptr %.val1.i.i, align 8
  %i.de = load i32, ptr @fol_NOT, align 4         ; 2 uses
  %i.df = icmp eq i32 %.val.i89.i, %i.de
  br i1 %i.df, label %bb.p, label %fol_Atom.exit93.i

bb.p:                                             ; preds = %bb.o
  %.val4.i91.i = load ptr, ptr %i.as, align 8
  %i.dg = getelementptr i8, ptr %.val4.i91.i, i64 8
  %.val4.val.i92.i = load ptr, ptr %i.dg, align 8
  br label %fol_Atom.exit93.i

fol_Atom.exit93.i:                                ; preds = %bb.p, %bb.o
  %.0.i90.i = phi ptr [ %.val4.val.i92.i, %bb.p ], [ %.val1.i.i, %bb.o ]
  %i.dh = getelementptr i8, ptr %.0.i90.i, i64 16
  %.val65.i = load ptr, ptr %i.dh, align 8
  %.val65.val.i = load ptr, ptr %.val65.i, align 8
  %i.di = getelementptr i8, ptr %.val65.val.i, i64 8
  %.val65.val.val.i = load ptr, ptr %i.di, align 8
  %.val.i94.i = load i32, ptr %.val1.i70.i, align 8
  %i.dj = icmp eq i32 %.val.i94.i, %i.de
  br i1 %i.dj, label %bb.q, label %fol_Atom.exit98.i

bb.q:                                             ; preds = %fol_Atom.exit93.i
  %i.dk = getelementptr i8, ptr %.val1.i70.i, i64 16
  %.val4.i96.i = load ptr, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %.val4.i96.i, i64 8
  %.val4.val.i97.i = load ptr, ptr %i.dl, align 8
  br label %fol_Atom.exit98.i

fol_Atom.exit98.i:                                ; preds = %bb.q, %fol_Atom.exit93.i
  %.0.i95.i = phi ptr [ %.val4.val.i97.i, %bb.q ], [ %.val1.i70.i, %fol_Atom.exit93.i ]
  %i.dm = getelementptr i8, ptr %.0.i95.i, i64 16
  %.val59.i = load ptr, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %.val59.i, i64 8
  %.val59.val.i = load ptr, ptr %i.dn, align 8
  %i.do = tail call i32 @unify_MatchBindings(ptr noundef %i.dd, ptr noundef %.val65.val.val.i, ptr noundef %.val59.val.i) #8
  %.not52.i = icmp eq i32 %i.do, 0
  br i1 %.not52.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %fol_Atom.exit98.i, %fol_Atom.exit88.i
  %i.dp = add nsw i32 %.042.i, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.k, %fol_Atom.exit77.i, %fol_Atom.exit.thread.i, %fol_Atom.exit.i, %bb.i
  %i.dq = add nsw i32 %.042.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %fol_Atom.exit98.i, %bb.h
  %.143.i = phi i32 [ %i.dq, %bb.s ], [ %.042.i, %bb.h ], [ %i.dp, %bb.r ], [ %.042.i, %fol_Atom.exit98.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.s ], [ 1, %bb.h ], [ 0, %bb.r ], [ 1, %fol_Atom.exit98.i ] ; 2 uses
  %.pr.i99.i = load i32, ptr @cont_BINDINGS, align 4 ; 5 uses
  %i.dr = icmp sgt i32 %.pr.i99.i, 0
  br i1 %i.dr, label %.lr.ph.i101.i.preheader, label %._crit_edge.i.i

.lr.ph.i101.i.preheader:                          ; preds = %bb.t
  %xtraiter39 = and i32 %.pr.i99.i, 1
  %lcmp.mod40.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i101.i.prol.loopexit, label %.lr.ph.i101.i.prol

.lr.ph.i101.i.prol:                               ; preds = %.lr.ph.i101.i.preheader
  %i.ds = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.ds, ptr @cont_CURRENTBINDING, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 24
  %.val.i.i.i102.i.prol = load ptr, ptr %i.dt, align 8
  store ptr %.val.i.i.i102.i.prol, ptr @cont_LASTBINDING, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.du, i8 0, i64 20, i1 false)
  %i.dv = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr null, ptr %i.dw, align 8
  %i.dx = add nsw i32 %.pr.i99.i, -1              ; 2 uses
  store i32 %i.dx, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i101.i.prol.loopexit

.lr.ph.i101.i.prol.loopexit:                      ; preds = %.lr.ph.i101.i.prol, %.lr.ph.i101.i.preheader
  %.unr41 = phi i32 [ %.pr.i99.i, %.lr.ph.i101.i.preheader ], [ %i.dx, %.lr.ph.i101.i.prol ]
  %i.dy = icmp eq i32 %.pr.i99.i, 1
  br i1 %i.dy, label %._crit_edge.i.i, label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %.lr.ph.i101.i.prol.loopexit, %.lr.ph.i101.i
  %i.dz = phi i32 [ %i.el, %.lr.ph.i101.i ], [ %.unr41, %.lr.ph.i101.i.prol.loopexit ] ; 3 uses
  %i.ea = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.ea, ptr @cont_CURRENTBINDING, align 8
  %i.eb = getelementptr i8, ptr %i.ea, i64 24
  %.val.i.i.i102.i = load ptr, ptr %i.eb, align 8
  store ptr %.val.i.i.i102.i, ptr @cont_LASTBINDING, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false)
  %i.ed = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr null, ptr %i.ee, align 8
  %i.ef = add nsw i32 %i.dz, -1
  store i32 %i.ef, ptr @cont_BINDINGS, align 4
  %i.eg = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.eg, ptr @cont_CURRENTBINDING, align 8
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  %.val.i.i.i102.i.1 = load ptr, ptr %i.eh, align 8
  store ptr %.val.i.i.i102.i.1, ptr @cont_LASTBINDING, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ei, i8 0, i64 20, i1 false)
  %i.ej = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr null, ptr %i.ek, align 8
  %i.el = add nsw i32 %i.dz, -2                   ; 2 uses
  store i32 %i.el, ptr @cont_BINDINGS, align 4
  %i.em = icmp sgt i32 %i.dz, 2
  br i1 %i.em, label %.lr.ph.i101.i, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %.lr.ph.i101.i.prol.loopexit, %.lr.ph.i101.i, %bb.t
  %i.en = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i100.i = icmp eq i32 %i.en, 0
  br i1 %.not.i100.i, label %cont_BackTrack.exit.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr @cont_STACKPOINTER, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4
  store i32 %i.er, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit.i

cont_BackTrack.exit.i:                            ; preds = %bb.u, %._crit_edge.i.i, %bb.g
  %.244.i = phi i32 [ %i.ay, %bb.g ], [ %.143.i, %._crit_edge.i.i ], [ %.143.i, %bb.u ] ; 2 uses
  %.2.i = phi i32 [ 0, %bb.g ], [ %.1.i, %._crit_edge.i.i ], [ %.1.i, %bb.u ]
  %.not53.i = icmp eq i32 %.2.i, 0                ; 2 uses
  %i.es = icmp slt i32 %.244.i, %i.j
  %i.et = select i1 %.not53.i, i1 %i.es, i1 false
  br i1 %i.et, label %bb.f, label %bb.v, !llvm.loop !11

bb.v:                                             ; preds = %cont_BackTrack.exit.i
  br i1 %.not53.i, label %subs_TestlitsEqExcept.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.eu = load i32, ptr @stamp, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader.i
  %indvars.iv111.i = phi i64 [ %.140107.i, %.preheader.i ], [ %indvars.iv.next112.i, %bb.w ]
  %indvars.iv.next112.i = add nsw i64 %indvars.iv111.i, 1 ; 5 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr @multvec_i, i64 %indvars.iv.next112.i
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = icmp eq i32 %i.ew, %i.eu
  %i.ey = icmp slt i64 %indvars.iv.next112.i, %i.ah
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %i.ez, label %bb.w, label %bb.x, !llvm.loop !12

bb.x:                                             ; preds = %bb.w
  %i.fa = trunc nsw i64 %indvars.iv.next112.i to i32
  %i.fb = icmp sgt i32 %i.e, %i.fa
  br i1 %i.fb, label %.lr.ph.i, label %subs_TestlitsEqExcept.exit.thread, !llvm.loop !13

subs_TestlitsEqExcept.exit.thread:                ; preds = %bb.x, %.preheader106.i, %.loopexit
  %i.fc = tail call fastcc i32 @subs_STMultiExceptIntern(ptr noundef %0, ptr noundef %1)
  br label %subs_TestlitsEqExcept.exit

subs_TestlitsEqExcept.exit:                       ; preds = %bb.v, %bb.a, %bb.b, %subs_TestlitsEqExcept.exit.thread
  %.021 = phi i32 [ 0, %bb.a ], [ %i.fc, %subs_TestlitsEqExcept.exit.thread ], [ 0, %bb.b ], [ 0, %bb.v ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @subs_STMultiExceptIntern(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 68
  %.val3.i = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3.i, %.val.i
  %i.d = getelementptr i8, ptr %1, i64 72
  %.val4.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, %.val4.i                   ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val.i80136 = load i32, ptr %i.f, align 8
  %.val3.i81137 = load i32, ptr %i.g, align 4
  %i.i = add nsw i32 %.val3.i81137, %.val.i80136
  %.val4.i82138 = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, %.val4.i82138
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %cont_BackTrack.exit

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.047141 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.h ] ; 3 uses
  %.049140 = phi i32 [ 0, %.lr.ph ], [ %.150, %bb.h ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @multvec_i, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr @stamp, align 4
  %.not63 = icmp eq i32 %i.n, %i.o
  br i1 %.not63, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %.047141, 0
  %.val79 = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %.val1.i = load ptr, ptr %i.s, align 8          ; 5 uses
  %.val6.val.i.i = load i32, ptr %.val1.i, align 8
  %i.t = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val6.val.i.i, %i.t    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %bb.e, label %clause_GetLiteralAtom.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.val1.i, i64 16
  %.val5.i.i = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val5.i.i, i64 8
  %.val5.val.i.i = load ptr, ptr %i.v, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %.val5.val.i.i, %bb.e ], [ %.val1.i, %bb.d ]
  %i.w = tail call i32 @term_NumberOfVarOccs(ptr noundef %.0.i.i) #8
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %bb.g, label %clause_GetLiteralAtom.exit89

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.val1.i, i64 16
  %.val5.i.i87 = load ptr, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val5.i.i87, i64 8
  %.val5.val.i.i88 = load ptr, ptr %i.z, align 8
  br label %clause_GetLiteralAtom.exit89

clause_GetLiteralAtom.exit89:                     ; preds = %bb.f, %bb.g
  %.0.i.i86 = phi ptr [ %.val5.val.i.i88, %bb.g ], [ %.val1.i, %bb.f ]
  %i.aa = tail call i32 @term_NumberOfVarOccs(ptr noundef %.0.i.i86) #8 ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, %.049140
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %.049140)
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select64 = select i1 %i.ab, i32 %i.ac, i32 %.047141
  br label %bb.h

bb.h:                                             ; preds = %clause_GetLiteralAtom.exit89, %clause_GetLiteralAtom.exit, %bb.b
  %.150 = phi i32 [ %i.w, %clause_GetLiteralAtom.exit ], [ %.049140, %bb.b ], [ %spec.select, %clause_GetLiteralAtom.exit89 ]
  %.1 = phi i32 [ %i.x, %clause_GetLiteralAtom.exit ], [ %.047141, %bb.b ], [ %spec.select64, %clause_GetLiteralAtom.exit89 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val.i80 = load i32, ptr %i.f, align 8
  %.val3.i81 = load i32, ptr %i.g, align 4
  %i.ad = add nsw i32 %.val3.i81, %.val.i80
  %.val4.i82 = load i32, ptr %i.h, align 8
  %i.ae = add nsw i32 %i.ad, %.val4.i82
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.h
  %i.ah = icmp slt i32 %.1, 0
  br i1 %i.ah, label %cont_BackTrack.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ai = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %.val67 = load ptr, ptr %i.ai, align 8
  %i.aj = zext nneg i32 %.1 to i64                ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val67, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %.val1.i90 = load ptr, ptr %i.am, align 8       ; 7 uses
  %i.an = load i32, ptr @stamp, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @multvec_i, i64 %i.aj ; 2 uses
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = icmp sgt i32 %i.e, 0
  br i1 %i.ap, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.ar = getelementptr i8, ptr %.val1.i90, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph144, %cont_BackTrack.exit132
  %indvars.iv147 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next148, %cont_BackTrack.exit132 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @multvec_j, i64 %indvars.iv147 ; 5 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load i32, ptr @stamp, align 4
  %.not = icmp eq i32 %i.at, %i.au
  br i1 %.not, label %cont_BackTrack.exit132, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val66 = load ptr, ptr %i.aq, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val66, i64 %indvars.iv147
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 24
  %.val1.i91 = load ptr, ptr %i.ax, align 8       ; 9 uses
  %i.ay = load i32, ptr @cont_BINDINGS, align 4
  %i.az = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr @cont_STACKPOINTER, align 4
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.bb
  store i32 %i.ay, ptr %i.bc, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.bd = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.be = tail call i32 @unify_MatchBindings(ptr noundef %i.bd, ptr noundef %.val1.i90, ptr noundef %.val1.i91) #8
  %.not53 = icmp eq i32 %i.be, 0
  br i1 %.not53, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr @stamp, align 4
  store i32 %i.bf, ptr %i.as, align 4
  %i.bg = tail call fastcc i32 @subs_STMultiExceptIntern(ptr noundef %0, ptr noundef nonnull %1)
  %.not54 = icmp eq i32 %i.bg, 0
  br i1 %.not54, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr.i = load i32, ptr @cont_BINDINGS, align 4  ; 5 uses
  %i.bh = icmp sgt i32 %.pr.i, 0
  br i1 %i.bh, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.m
  %xtraiter168 = and i32 %.pr.i, 1
  %lcmp.mod169.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bi = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.bi, ptr @cont_CURRENTBINDING, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %.val.i.i.i.prol = load ptr, ptr %i.bj, align 8
  store ptr %.val.i.i.i.prol, ptr @cont_LASTBINDING, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, i8 0, i64 20, i1 false)
  %i.bl = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr null, ptr %i.bm, align 8
  %i.bn = add nsw i32 %.pr.i, -1                  ; 2 uses
  store i32 %i.bn, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i.prol.loopexit
end_hunk_0
