inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@SDL_StretchSurfaceUncheckedNearest:bb.a
  %i.ep = sext i32 %i.j to i64
  %i.eq = lshr i64 %i.at, 1                       ; 2 uses
  %.not35.i67 = icmp eq i32 %i.f, 0
  %i.er = sext i32 %i.eo to i64
  br i1 %.not35.i67, label %scale_mat_nearest_4.exit, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %.lr.ph43.i66
  %i.es = lshr i64 %i.ap, 1
  %xtraiter = and i32 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.et = icmp ult i32 %i.f, 4
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %._crit_edge.i77, %.lr.ph.preheader.i68
  %.041.i70 = phi ptr [ %i.ge, %._crit_edge.i77 ], [ %i.al, %.lr.ph.preheader.i68 ] ; 2 uses
  %.03340.i71 = phi i64 [ %i.gd, %._crit_edge.i77 ], [ %i.es, %.lr.ph.preheader.i68 ] ; 2 uses
  %.03439.i72 = phi i32 [ %i.gf, %._crit_edge.i77 ], [ 0, %.lr.ph.preheader.i68 ]
  %i.eu = lshr i64 %.03340.i71, 16
  %i.ev = mul i64 %i.eu, %i.ep
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ev ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i69, %.prol.preheader
  %.138.i73.prol = phi ptr [ %i.fd, %.prol.preheader ], [ %.041.i70, %.lr.ph.i69 ] ; 2 uses
  %.03137.i74.prol = phi i32 [ %i.ex, %.prol.preheader ], [ %i.f, %.lr.ph.i69 ]
  %.03236.i75.prol = phi i64 [ %i.fa, %.prol.preheader ], [ %i.eq, %.lr.ph.i69 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i69 ]
  %i.ex = add nsw i32 %.03137.i74.prol, -1        ; 2 uses
  %i.ey = lshr i64 %.03236.i75.prol, 15
  %i.ez = and i64 %i.ey, 562949953421310
  %i.fa = add i64 %.03236.i75.prol, %i.at         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ez
  %i.fc = load i16, ptr %i.fb, align 2
  store i16 %i.fc, ptr %.138.i73.prol, align 2
  %i.fd = getelementptr inbounds nuw i8, ptr %.138.i73.prol, i64 2 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i69
  %.lcssa12.unr = phi ptr [ poison, %.lr.ph.i69 ], [ %i.fd, %.prol.preheader ]
  %.138.i73.unr = phi ptr [ %.041.i70, %.lr.ph.i69 ], [ %i.fd, %.prol.preheader ]
  %.03137.i74.unr = phi i32 [ %i.f, %.lr.ph.i69 ], [ %i.ex, %.prol.preheader ]
  %.03236.i75.unr = phi i64 [ %i.eq, %.lr.ph.i69 ], [ %i.fa, %.prol.preheader ]
  br i1 %i.et, label %._crit_edge.i77, label %.lr.ph.i69.new

.lr.ph.i69.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i69.new
  %.138.i73 = phi ptr [ %i.gc, %.lr.ph.i69.new ], [ %.138.i73.unr, %.prol.loopexit ] ; 5 uses
  %.03137.i74 = phi i32 [ %i.fw, %.lr.ph.i69.new ], [ %.03137.i74.unr, %.prol.loopexit ]
  %.03236.i75 = phi i64 [ %i.fz, %.lr.ph.i69.new ], [ %.03236.i75.unr, %.prol.loopexit ] ; 2 uses
  %i.fe = lshr i64 %.03236.i75, 15
  %i.ff = and i64 %i.fe, 562949953421310
  %i.fg = add i64 %.03236.i75, %i.at              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  %i.fi = load i16, ptr %i.fh, align 2
  store i16 %i.fi, ptr %.138.i73, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.138.i73, i64 2
  %i.fk = lshr i64 %i.fg, 15
  %i.fl = and i64 %i.fk, 562949953421310
  %i.fm = add i64 %i.fg, %i.at                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fl
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fj, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.138.i73, i64 4
  %i.fq = lshr i64 %i.fm, 15
  %i.fr = and i64 %i.fq, 562949953421310
  %i.fs = add i64 %i.fm, %i.at                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fr
  %i.fu = load i16, ptr %i.ft, align 2
  store i16 %i.fu, ptr %i.fp, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.138.i73, i64 6
  %i.fw = add nsw i32 %.03137.i74, -4             ; 2 uses
  %i.fx = lshr i64 %i.fs, 15
  %i.fy = and i64 %i.fx, 562949953421310
  %i.fz = add i64 %i.fs, %i.at
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fy
  %i.gb = load i16, ptr %i.ga, align 2
  store i16 %i.gb, ptr %i.fv, align 2
  %i.gc = getelementptr inbounds nuw i8, ptr %.138.i73, i64 8 ; 2 uses
  %.not.i76.3 = icmp eq i32 %i.fw, 0
  br i1 %.not.i76.3, label %._crit_edge.i77, label %.lr.ph.i69.new, !llvm.loop !11

._crit_edge.i77:                                  ; preds = %.lr.ph.i69.new, %.prol.loopexit
  %.lcssa12 = phi ptr [ %.lcssa12.unr, %.prol.loopexit ], [ %i.gc, %.lr.ph.i69.new ]
  %i.gd = add i64 %.03340.i71, %i.ap
  %i.ge = getelementptr inbounds i8, ptr %.lcssa12, i64 %i.er
  %i.gf = add nuw nsw i32 %.03439.i72, 1          ; 2 uses
  %exitcond.not.i78 = icmp eq i32 %i.gf, %i.h
  br i1 %exitcond.not.i78, label %scale_mat_nearest_4.exit, label %.lr.ph.i69, !llvm.loop !12

bb.h:                                             ; preds = %switch.edge
  br i1 %i.au, label %.lr.ph43.i79, label %scale_mat_nearest_4.exit

.lr.ph43.i79:                                     ; preds = %bb.h
  %i.gg = sub i32 %i.l, %i.f
  %i.gh = sext i32 %i.j to i64
  %i.gi = lshr i64 %i.at, 1                       ; 2 uses
  %.not35.i80 = icmp eq i32 %i.f, 0
  %i.gj = sext i32 %i.gg to i64
  br i1 %.not35.i80, label %scale_mat_nearest_4.exit, label %.lr.ph.preheader.i81

.lr.ph.preheader.i81:                             ; preds = %.lr.ph43.i79
  %i.gk = lshr i64 %i.ap, 1
  %xtraiter25 = and i32 %i.f, 3                   ; 2 uses
  %lcmp.mod26.not = icmp eq i32 %xtraiter25, 0
  %i.gl = icmp ult i32 %i.f, 4
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %._crit_edge.i90, %.lr.ph.preheader.i81
  %.041.i83 = phi ptr [ %i.hr, %._crit_edge.i90 ], [ %i.al, %.lr.ph.preheader.i81 ] ; 2 uses
  %.03340.i84 = phi i64 [ %i.hq, %._crit_edge.i90 ], [ %i.gk, %.lr.ph.preheader.i81 ] ; 2 uses
  %.03439.i85 = phi i32 [ %i.hs, %._crit_edge.i90 ], [ 0, %.lr.ph.preheader.i81 ]
  %i.gm = lshr i64 %.03340.i84, 16
  %i.gn = mul i64 %i.gm, %i.gh
  %i.go = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.gn ; 5 uses
  br i1 %lcmp.mod26.not, label %.prol.loopexit24, label %.prol.preheader23

.prol.preheader23:                                ; preds = %.lr.ph.i82, %.prol.preheader23
  %.138.i86.prol = phi ptr [ %i.gu, %.prol.preheader23 ], [ %.041.i83, %.lr.ph.i82 ] ; 2 uses
  %.03137.i87.prol = phi i32 [ %i.gp, %.prol.preheader23 ], [ %i.f, %.lr.ph.i82 ]
  %.03236.i88.prol = phi i64 [ %i.gr, %.prol.preheader23 ], [ %i.gi, %.lr.ph.i82 ] ; 2 uses
  %prol.iter27 = phi i32 [ %prol.iter27.next, %.prol.preheader23 ], [ 0, %.lr.ph.i82 ]
  %i.gp = add nsw i32 %.03137.i87.prol, -1        ; 2 uses
  %i.gq = lshr i64 %.03236.i88.prol, 16
  %i.gr = add i64 %.03236.i88.prol, %i.at         ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1
  store i8 %i.gt, ptr %.138.i86.prol, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.138.i86.prol, i64 1 ; 3 uses
  %prol.iter27.next = add i32 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i32 %prol.iter27.next, %xtraiter25
  br i1 %prol.iter27.cmp.not, label %.prol.loopexit24, label %.prol.preheader23, !llvm.loop !13

.prol.loopexit24:                                 ; preds = %.prol.preheader23, %.lr.ph.i82
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i82 ], [ %i.gu, %.prol.preheader23 ]
  %.138.i86.unr = phi ptr [ %.041.i83, %.lr.ph.i82 ], [ %i.gu, %.prol.preheader23 ]
  %.03137.i87.unr = phi i32 [ %i.f, %.lr.ph.i82 ], [ %i.gp, %.prol.preheader23 ]
  %.03236.i88.unr = phi i64 [ %i.gi, %.lr.ph.i82 ], [ %i.gr, %.prol.preheader23 ]
  br i1 %i.gl, label %._crit_edge.i90, label %.lr.ph.i82.new

.lr.ph.i82.new:                                   ; preds = %.prol.loopexit24, %.lr.ph.i82.new
  %.138.i86 = phi ptr [ %i.hp, %.lr.ph.i82.new ], [ %.138.i86.unr, %.prol.loopexit24 ] ; 5 uses
  %.03137.i87 = phi i32 [ %i.hk, %.lr.ph.i82.new ], [ %.03137.i87.unr, %.prol.loopexit24 ]
  %.03236.i88 = phi i64 [ %i.hm, %.lr.ph.i82.new ], [ %.03236.i88.unr, %.prol.loopexit24 ] ; 2 uses
  %i.gv = lshr i64 %.03236.i88, 16
  %i.gw = add i64 %.03236.i88, %i.at              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1
  store i8 %i.gy, ptr %.138.i86, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.138.i86, i64 1
  %i.ha = lshr i64 %i.gw, 16
  %i.hb = add i64 %i.gw, %i.at                    ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ha
  %i.hd = load i8, ptr %i.hc, align 1
  store i8 %i.hd, ptr %i.gz, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.138.i86, i64 2
  %i.hf = lshr i64 %i.hb, 16
  %i.hg = add i64 %i.hb, %i.at                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hf
  %i.hi = load i8, ptr %i.hh, align 1
  store i8 %i.hi, ptr %i.he, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.138.i86, i64 3
  %i.hk = add nsw i32 %.03137.i87, -4             ; 2 uses
  %i.hl = lshr i64 %i.hg, 16
  %i.hm = add i64 %i.hg, %i.at
  %i.hn = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hl
  %i.ho = load i8, ptr %i.hn, align 1
  store i8 %i.ho, ptr %i.hj, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.138.i86, i64 4 ; 2 uses
  %.not.i89.3 = icmp eq i32 %i.hk, 0
  br i1 %.not.i89.3, label %._crit_edge.i90, label %.lr.ph.i82.new, !llvm.loop !14

._crit_edge.i90:                                  ; preds = %.lr.ph.i82.new, %.prol.loopexit24
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit24 ], [ %i.hp, %.lr.ph.i82.new ]
  %i.hq = add i64 %.03340.i84, %i.ap
  %i.hr = getelementptr inbounds i8, ptr %.lcssa, i64 %i.gj
  %i.hs = add nuw nsw i32 %.03439.i85, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.hs, %i.h
  br i1 %exitcond.not.i91, label %scale_mat_nearest_4.exit, label %.lr.ph.i82, !llvm.loop !15

scale_mat_nearest_4.exit:                         ; preds = %._crit_edge.i77, %._crit_edge.i64, %._crit_edge.i, %._crit_edge.i90, %.lr.ph43.i79, %bb.h, %.lr.ph43.i66, %bb.g, %.lr.ph47.i, %bb.f, %.lr.ph43.i, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @SDL_StretchSurfaceUncheckedLinear(i32 %.16.val, ptr nofree readonly captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 %.16.val1, ptr nofree writeonly captures(none) %.24.val3, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = load i32, ptr %0, align 4
  %i.m = shl i32 %i.l, 2
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr i8, ptr %.24.val, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.q, %.16.val
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call fastcc void @get_scaler_datas(i32 noundef %i.z, i32 noundef %i.v, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  call fastcc void @get_scaler_datas(i32 noundef %i.ab, i32 noundef %i.x, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h)
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = load i32, ptr %i.g, align 4             ; 9 uses
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
  %i.af = mul nsw i32 %i.ae, %i.ad
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ac, %i.ag
  %i.ai = load i32, ptr %i.h, align 4             ; 2 uses
  %i.aj = add i32 %i.ad, %i.ai
  %i.ak = sub i32 %i.x, %i.aj                     ; 2 uses
  %i.al = icmp sgt i32 %i.v, 0
  br i1 %i.al, label %.lr.ph85.i, label %scale_mat.exit

.lr.ph85.i:                                       ; preds = %bb.a
  %i.am = shl nsw i32 %i.i, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.24.val3, i64 %i.an
  %i.ap = mul nsw i32 %i.k, %.16.val1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  %i.as = shl nsw i32 %i.x, 2
  %i.at = sub nsw i32 %.16.val1, %i.as
  %i.au = add nsw i32 %i.z, -1
  %i.av = sext i32 %.16.val to i64                ; 2 uses
  %.not70.i = icmp eq i32 %i.ad, 0
  %.not6573.i = icmp eq i32 %i.ak, 0
  %i.aw = sext i32 %i.ae to i64
  %i.ax = shl i32 %i.ab, 2
  %i.ay = add i32 %i.ax, -8
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = sext i32 %i.at to i64
  %i.bb = add i32 %i.ad, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %2 = add nsw i64 %i.s, %i.n                     ; 2 uses
  %scevgep3 = getelementptr i8, ptr %.24.val, i64 %2
  %i.be = add nsw i64 %2, 4                       ; 2 uses
  %scevgep5 = getelementptr i8, ptr %.24.val, i64 %i.be
  %scevgep7 = getelementptr i8, ptr %.24.val, i64 %i.be
  %i.bf = zext i32 %i.ad to i64                   ; 2 uses
  %min.iters.check = icmp eq i32 %i.ad, 1
  %n.vec = and i64 %i.bf, 4294967294              ; 4 uses
  %i.bg = trunc nuw i64 %n.vec to i32
  %i.bh = sub i32 %i.ad, %i.bg
  %i.bi = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.bf
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph85.i
  %.083.i = phi ptr [ %i.ar, %.lr.ph85.i ], [ %i.hd, %._crit_edge.i ] ; 8 uses
  %.06282.i = phi i32 [ 0, %.lr.ph85.i ], [ %i.he, %._crit_edge.i ] ; 3 uses
  %i.bj = load i32, ptr %i.c, align 4
  %i.bk = icmp sge i32 %.06282.i, %i.bj           ; 2 uses
  %i.bl = load i32, ptr %i.d, align 4
  %i.bm = xor i32 %i.bl, -1
  %i.bn = add i32 %i.v, %i.bm
  %i.bo = icmp sle i32 %.06282.i, %i.bn
  %i.bp = select i1 %i.bk, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = load i64, ptr %i.a, align 8             ; 2 uses
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i32 %i.br, 9
  %i.bt = and i32 %i.bs, 127
  %i.bu = lshr i32 %i.br, 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bv = select i1 %i.bk, i32 %i.au, i32 0
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bw = phi i64 [ %i.bq, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bx = phi i64 [ %i.av, %bb.c ], [ 0, %bb.d ]  ; 2 uses
  %i.by = phi i32 [ %i.bt, %bb.c ], [ 0, %bb.d ]  ; 5 uses
  %i.bz = phi i32 [ %i.bu, %bb.c ], [ %i.bv, %bb.d ]
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, %i.av                ; 3 uses
  %i.cc = getelementptr i8, ptr %i.t, i64 %i.cb   ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bx ; 7 uses
  %i.ce = load i32, ptr %i.b, align 4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add nsw i64 %i.bw, %i.cf
  store i64 %i.cg, ptr %i.a, align 8
  %i.ch = sub nuw nsw i32 128, %i.by              ; 4 uses
  store i64 %i.ah, ptr %i.e, align 8
  store i32 %i.ai, ptr %i.h, align 4
  br i1 %.not70.i, label %.preheader69.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.co = getelementptr i8, ptr %.083.i, i64 %i.bd
  %scevgep = getelementptr i8, ptr %i.co, i64 4   ; 2 uses
  %i.cp = add i64 %i.bx, %i.cb                    ; 2 uses
  %scevgep4 = getelementptr i8, ptr %scevgep3, i64 %i.cp
  %scevgep6 = getelementptr i8, ptr %scevgep5, i64 %i.cp
  %scevgep8 = getelementptr i8, ptr %scevgep7, i64 %i.cb
  %bound0 = icmp ult ptr %.083.i, %scevgep6
  %bound1 = icmp ult ptr %scevgep4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound09 = icmp ult ptr %.083.i, %scevgep8
  %bound110 = icmp ult ptr %i.cc, %scevgep
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert12 = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat13 = shufflevector <2 x i32> %broadcast.splatinsert12, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cq = getelementptr i8, ptr %.083.i, i64 %i.bi ; 2 uses
  %i.cr = load i8, ptr %i.cc, align 1, !alias.scope !16
  %broadcast.splatinsert14 = insertelement <2 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat15 = shufflevector <2 x i8> %broadcast.splatinsert14, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cs = zext <2 x i8> %broadcast.splat15 to <2 x i32>
  %i.ct = mul nuw nsw <2 x i32> %broadcast.splat13, %i.cs
  %i.cu = load i8, ptr %i.cd, align 1, !alias.scope !19
  %broadcast.splatinsert16 = insertelement <2 x i8> poison, i8 %i.cu, i64 0
  %broadcast.splat17 = shufflevector <2 x i8> %broadcast.splatinsert16, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cv = zext <2 x i8> %broadcast.splat17 to <2 x i32>
  %i.cw = mul nuw nsw <2 x i32> %broadcast.splat, %i.cv
  %i.cx = add nuw nsw <2 x i32> %i.cw, %i.ct
  %i.cy = load i8, ptr %i.ci, align 1, !alias.scope !16
  %broadcast.splatinsert18 = insertelement <2 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat19 = shufflevector <2 x i8> %broadcast.splatinsert18, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cz = zext <2 x i8> %broadcast.splat19 to <2 x i32>
  %i.da = mul nuw nsw <2 x i32> %broadcast.splat13, %i.cz
  %i.db = load i8, ptr %i.cj, align 1, !alias.scope !19
  %broadcast.splatinsert20 = insertelement <2 x i8> poison, i8 %i.db, i64 0
  %broadcast.splat21 = shufflevector <2 x i8> %broadcast.splatinsert20, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dc = zext <2 x i8> %broadcast.splat21 to <2 x i32>
  %i.dd = mul nuw nsw <2 x i32> %broadcast.splat, %i.dc
  %i.de = add nuw nsw <2 x i32> %i.dd, %i.da
  %i.df = load i8, ptr %i.ck, align 1, !alias.scope !16
  %broadcast.splatinsert22 = insertelement <2 x i8> poison, i8 %i.df, i64 0
  %broadcast.splat23 = shufflevector <2 x i8> %broadcast.splatinsert22, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dg = zext <2 x i8> %broadcast.splat23 to <2 x i32>
  %i.dh = mul nuw nsw <2 x i32> %broadcast.splat13, %i.dg
  %i.di = load i8, ptr %i.cl, align 1, !alias.scope !19
  %broadcast.splatinsert24 = insertelement <2 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat25 = shufflevector <2 x i8> %broadcast.splatinsert24, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dj = zext <2 x i8> %broadcast.splat25 to <2 x i32>
  %i.dk = mul nuw nsw <2 x i32> %broadcast.splat, %i.dj
  %i.dl = add nuw nsw <2 x i32> %i.dk, %i.dh
  %i.dm = load i8, ptr %i.cm, align 1, !alias.scope !16
  %broadcast.splatinsert26 = insertelement <2 x i8> poison, i8 %i.dm, i64 0
  %broadcast.splat27 = shufflevector <2 x i8> %broadcast.splatinsert26, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dn = zext <2 x i8> %broadcast.splat27 to <2 x i32>
  %i.do = mul nuw nsw <2 x i32> %broadcast.splat13, %i.dn
  %i.dp = load i8, ptr %i.cn, align 1, !alias.scope !19
  %broadcast.splatinsert28 = insertelement <2 x i8> poison, i8 %i.dp, i64 0
  %broadcast.splat29 = shufflevector <2 x i8> %broadcast.splatinsert28, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dq = zext <2 x i8> %broadcast.splat29 to <2 x i32>
  %i.dr = mul nuw nsw <2 x i32> %broadcast.splat, %i.dq
  %i.ds = add nuw nsw <2 x i32> %i.dr, %i.do
  %i.dt = shufflevector <2 x i32> %i.cx, <2 x i32> %i.de, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.du = shufflevector <2 x i32> %i.dl, <2 x i32> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dv = shufflevector <4 x i32> %i.dt, <4 x i32> %i.du, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.dw = lshr <8 x i32> %i.dv, splat (i32 7)
  %interleaved.vec = trunc nuw <8 x i32> %i.dw to <8 x i8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.083.i, i64 %i.dx
  store <8 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !21, !noalias !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader69.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.in.i.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i ], [ %i.bh, %middle.block ]
  %.171.i.ph = phi ptr [ %.083.i, %vector.memcheck ], [ %.083.i, %.lr.ph.i ], [ %i.cq, %middle.block ]
  %i.dz = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eb = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

.preheader69.i:                                   ; preds = %scalar.ph, %middle.block, %bb.e
  %.1.lcssa.i = phi ptr [ %.083.i, %bb.e ], [ %i.cq, %middle.block ], [ %i.er, %scalar.ph ] ; 2 uses
  br i1 %.not6573.i, label %.preheader.i, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %.preheader69.i
  %i.ed = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ef = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph76.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.in.i = phi i32 [ %i.eh, %scalar.ph ], [ %.in.i.ph, %scalar.ph.preheader ]
  %.171.i = phi ptr [ %i.er, %scalar.ph ], [ %.171.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eh = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.ei = load <4 x i8>, ptr %i.cc, align 1
  %i.ej = zext <4 x i8> %i.ei to <4 x i32>
  %i.ek = mul nuw nsw <4 x i32> %i.ea, %i.ej
  %i.el = load <4 x i8>, ptr %i.cd, align 1
  %i.em = zext <4 x i8> %i.el to <4 x i32>
  %i.en = mul nuw nsw <4 x i32> %i.ec, %i.em
  %i.eo = add nuw nsw <4 x i32> %i.en, %i.ek
  %i.ep = lshr <4 x i32> %i.eo, splat (i32 7)
  %i.eq = trunc <4 x i32> %i.ep to <4 x i8>
  store <4 x i8> %i.eq, ptr %.171.i, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.171.i, i64 4 ; 2 uses
  %.not.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i, label %.preheader69.i, label %scalar.ph, !llvm.loop !27

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader69.i
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader69.i ], [ %i.gq, %.lr.ph76.i ] ; 2 uses
  %i.es = load i32, ptr %i.h, align 4             ; 2 uses
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.h, align 4
  %.not6678.i = icmp eq i32 %i.es, 0
  br i1 %.not6678.i, label %._crit_edge.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %i.eu = getelementptr inbounds i8, ptr %i.cc, i64 %i.az
  %i.ev = getelementptr inbounds i8, ptr %i.cd, i64 %i.az
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fa = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %i.fb = shufflevector <4 x i32> %i.fa, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.f

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i
  %.275.i = phi ptr [ %i.gq, %.lr.ph76.i ], [ %.1.lcssa.i, %.lr.ph76.i.preheader ] ; 2 uses
  %.06374.i = phi i32 [ %i.fc, %.lr.ph76.i ], [ %i.ak, %.lr.ph76.i.preheader ]
  %i.fc = add nsw i32 %.06374.i, -1               ; 2 uses
  %i.fd = load i64, ptr %i.e, align 8             ; 3 uses
  %i.fe = lshr i64 %i.fd, 14
  %i.ff = and i64 %i.fe, 262140                   ; 2 uses
  %i.fg = trunc i64 %i.fd to i32
  %i.fh = lshr i32 %i.fg, 9
  %i.fi = and i32 %i.fh, 127                      ; 2 uses
  %i.fj = add nsw i64 %i.fd, %i.aw
  store i64 %i.fj, ptr %i.e, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ff ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ff ; 2 uses
  %i.fm = sub nuw nsw i32 128, %i.fi
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fp = load <4 x i8>, ptr %i.fk, align 1
  %i.fq = zext <4 x i8> %i.fp to <4 x i32>
  %i.fr = mul nuw nsw <4 x i32> %i.ee, %i.fq
  %i.fs = load <4 x i8>, ptr %i.fl, align 1
  %i.ft = zext <4 x i8> %i.fs to <4 x i32>
  %i.fu = mul nuw nsw <4 x i32> %i.eg, %i.ft
  %i.fv = add nuw nsw <4 x i32> %i.fu, %i.fr
  %i.fw = lshr <4 x i32> %i.fv, splat (i32 7)
  %i.fx = load <4 x i8>, ptr %i.fn, align 1
  %i.fy = zext <4 x i8> %i.fx to <4 x i32>
  %i.fz = mul nuw nsw <4 x i32> %i.ee, %i.fy
  %i.ga = load <4 x i8>, ptr %i.fo, align 1
  %i.gb = zext <4 x i8> %i.ga to <4 x i32>
  %i.gc = mul nuw nsw <4 x i32> %i.eg, %i.gb
  %i.gd = add nuw nsw <4 x i32> %i.gc, %i.fz
  %i.ge = lshr <4 x i32> %i.gd, splat (i32 7)
  %i.gf = and <4 x i32> %i.fw, splat (i32 255)
  %i.gg = insertelement <4 x i32> poison, i32 %i.fm, i64 0
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gi = mul nuw nsw <4 x i32> %i.gf, %i.gh
  %i.gj = and <4 x i32> %i.ge, splat (i32 255)
  %i.gk = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.gl = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gm = mul nuw nsw <4 x i32> %i.gj, %i.gl
  %i.gn = add nuw nsw <4 x i32> %i.gm, %i.gi
  %i.go = lshr <4 x i32> %i.gn, splat (i32 7)
  %i.gp = trunc <4 x i32> %i.go to <4 x i8>
  store <4 x i8> %i.gp, ptr %.275.i, align 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.275.i, i64 4 ; 2 uses
  %.not65.i = icmp eq i32 %i.fc, 0
  br i1 %.not65.i, label %.preheader.i, label %.lr.ph76.i, !llvm.loop !28

bb.f:                                             ; preds = %bb.f, %.lr.ph80.i
  %.379.i = phi ptr [ %.2.lcssa.i, %.lr.ph80.i ], [ %i.ha, %bb.f ] ; 2 uses
  %i.gr = load <4 x i8>, ptr %i.ew, align 1
  %i.gs = zext <4 x i8> %i.gr to <4 x i32>
  %i.gt = mul nuw nsw <4 x i32> %i.fb, %i.gs
  %i.gu = load <4 x i8>, ptr %i.ex, align 1
  %i.gv = zext <4 x i8> %i.gu to <4 x i32>
  %i.gw = mul nuw nsw <4 x i32> %i.ez, %i.gv
  %i.gx = add nuw nsw <4 x i32> %i.gw, %i.gt
  %i.gy = lshr <4 x i32> %i.gx, splat (i32 7)
  %i.gz = trunc <4 x i32> %i.gy to <4 x i8>
  store <4 x i8> %i.gz, ptr %.379.i, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.379.i, i64 4 ; 2 uses
end_hunk_0
