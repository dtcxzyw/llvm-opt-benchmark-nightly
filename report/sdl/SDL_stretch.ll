Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stretch?download=true
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
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !9

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
  br i1 %.not.i76.3, label %._crit_edge.i77, label %.lr.ph.i69.new, !llvm.loop !10

._crit_edge.i77:                                  ; preds = %.lr.ph.i69.new, %.prol.loopexit
  %.lcssa12 = phi ptr [ %.lcssa12.unr, %.prol.loopexit ], [ %i.gc, %.lr.ph.i69.new ]
  %i.gd = add i64 %.03340.i71, %i.ap
  %i.ge = getelementptr inbounds i8, ptr %.lcssa12, i64 %i.er
  %i.gf = add nuw nsw i32 %.03439.i72, 1          ; 2 uses
  %exitcond.not.i78 = icmp eq i32 %i.gf, %i.h
  br i1 %exitcond.not.i78, label %scale_mat_nearest_4.exit, label %.lr.ph.i69, !llvm.loop !11

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
  br i1 %prol.iter27.cmp.not, label %.prol.loopexit24, label %.prol.preheader23, !llvm.loop !12

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
  br i1 %.not.i89.3, label %._crit_edge.i90, label %.lr.ph.i82.new, !llvm.loop !13

._crit_edge.i90:                                  ; preds = %.lr.ph.i82.new, %.prol.loopexit24
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit24 ], [ %i.hp, %.lr.ph.i82.new ]
  %i.hq = add i64 %.03340.i84, %i.ap
  %i.hr = getelementptr inbounds i8, ptr %.lcssa, i64 %i.gj
  %i.hs = add nuw nsw i32 %.03439.i85, 1          ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.hs, %i.h
  br i1 %exitcond.not.i91, label %scale_mat_nearest_4.exit, label %.lr.ph.i82, !llvm.loop !14

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
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr i8, ptr %.24.val, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = mul i32 %i.q, %.16.val
  %i.s = sext i32 %i.r to i64                     ; 3 uses
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
  %2 = zext i32 %i.ad to i64                      ; 2 uses
  %min.iters.check = icmp eq i32 %i.ad, 1
  %scevgep3 = getelementptr i8, ptr %.24.val, i64 %i.s
  %scevgep5 = getelementptr i8, ptr %scevgep3, i64 %i.n
  %n.vec = and i64 %2, 4294967294                 ; 4 uses
  %i.be = trunc nuw i64 %n.vec to i32
  %i.bf = sub i32 %i.ad, %i.be
  %i.bg = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph85.i
  %.083.i = phi ptr [ %i.ar, %.lr.ph85.i ], [ %i.hb, %._crit_edge.i ] ; 8 uses
  %.06282.i = phi i32 [ 0, %.lr.ph85.i ], [ %i.hc, %._crit_edge.i ] ; 3 uses
  %i.bh = load i32, ptr %i.c, align 4
  %i.bi = icmp sge i32 %.06282.i, %i.bh           ; 2 uses
  %i.bj = load i32, ptr %i.d, align 4
  %i.bk = xor i32 %i.bj, -1
  %i.bl = add i32 %i.v, %i.bk
  %i.bm = icmp sle i32 %.06282.i, %i.bl
  %i.bn = select i1 %i.bi, i1 %i.bm, i1 false
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = lshr i32 %i.bp, 9
  %i.br = and i32 %i.bq, 127
  %i.bs = lshr i32 %i.bp, 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bt = select i1 %i.bi, i32 %i.au, i32 0
  %.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi i64 [ %i.bo, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bv = phi i64 [ %i.av, %bb.c ], [ 0, %bb.d ]  ; 2 uses
  %i.bw = phi i32 [ %i.br, %bb.c ], [ 0, %bb.d ]  ; 5 uses
  %i.bx = phi i32 [ %i.bs, %bb.c ], [ %i.bt, %bb.d ]
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.by, %i.av                ; 3 uses
  %i.ca = getelementptr i8, ptr %i.t, i64 %i.bz   ; 9 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bv  ; 8 uses
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i64 %i.bu, %i.cd
  store i64 %i.ce, ptr %i.a, align 8
  %i.cf = sub nuw nsw i32 128, %i.bw              ; 4 uses
  store i64 %i.ah, ptr %i.e, align 8
  store i32 %i.ai, ptr %i.h, align 4
  br i1 %.not70.i, label %.preheader69.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cm = getelementptr i8, ptr %.083.i, i64 %i.bd
  %3 = getelementptr i8, ptr %i.cm, i64 4         ; 2 uses
  %4 = getelementptr i8, ptr %.24.val, i64 %i.bv
  %5 = getelementptr i8, ptr %4, i64 %i.bz
  %scevgep = getelementptr i8, ptr %5, i64 %i.s
  %i.cn = getelementptr i8, ptr %scevgep, i64 %i.n
  %scevgep4 = getelementptr i8, ptr %i.cn, i64 4
  %scevgep6 = getelementptr i8, ptr %scevgep5, i64 %i.bz
  %6 = getelementptr i8, ptr %scevgep6, i64 4
  %bound0 = icmp ult ptr %.083.i, %scevgep4
  %bound1 = icmp ult ptr %i.cb, %3
  %found.conflict = and i1 %bound0, %bound1
  %bound07 = icmp ult ptr %.083.i, %6
  %bound18 = icmp ult ptr %i.ca, %3
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx = or i1 %found.conflict, %found.conflict9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert10 = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat11 = shufflevector <2 x i32> %broadcast.splatinsert10, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.co = getelementptr i8, ptr %.083.i, i64 %i.bg ; 2 uses
  %i.cp = load i8, ptr %i.ca, align 1, !alias.scope !25
  %broadcast.splatinsert12 = insertelement <2 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat13 = shufflevector <2 x i8> %broadcast.splatinsert12, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cq = zext <2 x i8> %broadcast.splat13 to <2 x i32>
  %i.cr = mul nuw nsw <2 x i32> %broadcast.splat11, %i.cq
  %i.cs = load i8, ptr %i.cb, align 1, !alias.scope !26
  %broadcast.splatinsert14 = insertelement <2 x i8> poison, i8 %i.cs, i64 0
  %broadcast.splat15 = shufflevector <2 x i8> %broadcast.splatinsert14, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.ct = zext <2 x i8> %broadcast.splat15 to <2 x i32>
  %i.cu = mul nuw nsw <2 x i32> %broadcast.splat, %i.ct
  %i.cv = add nuw nsw <2 x i32> %i.cu, %i.cr
  %i.cw = load i8, ptr %i.cg, align 1, !alias.scope !25
  %broadcast.splatinsert16 = insertelement <2 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat17 = shufflevector <2 x i8> %broadcast.splatinsert16, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.cx = zext <2 x i8> %broadcast.splat17 to <2 x i32>
  %i.cy = mul nuw nsw <2 x i32> %broadcast.splat11, %i.cx
  %i.cz = load i8, ptr %i.ch, align 1, !alias.scope !26
  %broadcast.splatinsert18 = insertelement <2 x i8> poison, i8 %i.cz, i64 0
  %broadcast.splat19 = shufflevector <2 x i8> %broadcast.splatinsert18, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.da = zext <2 x i8> %broadcast.splat19 to <2 x i32>
  %i.db = mul nuw nsw <2 x i32> %broadcast.splat, %i.da
  %i.dc = add nuw nsw <2 x i32> %i.db, %i.cy
  %i.dd = load i8, ptr %i.ci, align 1, !alias.scope !25
  %broadcast.splatinsert20 = insertelement <2 x i8> poison, i8 %i.dd, i64 0
  %broadcast.splat21 = shufflevector <2 x i8> %broadcast.splatinsert20, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.de = zext <2 x i8> %broadcast.splat21 to <2 x i32>
  %i.df = mul nuw nsw <2 x i32> %broadcast.splat11, %i.de
  %i.dg = load i8, ptr %i.cj, align 1, !alias.scope !26
  %broadcast.splatinsert22 = insertelement <2 x i8> poison, i8 %i.dg, i64 0
  %broadcast.splat23 = shufflevector <2 x i8> %broadcast.splatinsert22, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dh = zext <2 x i8> %broadcast.splat23 to <2 x i32>
  %i.di = mul nuw nsw <2 x i32> %broadcast.splat, %i.dh
  %i.dj = add nuw nsw <2 x i32> %i.di, %i.df
  %i.dk = load i8, ptr %i.ck, align 1, !alias.scope !25
  %broadcast.splatinsert24 = insertelement <2 x i8> poison, i8 %i.dk, i64 0
  %broadcast.splat25 = shufflevector <2 x i8> %broadcast.splatinsert24, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.dl = zext <2 x i8> %broadcast.splat25 to <2 x i32>
  %i.dm = mul nuw nsw <2 x i32> %broadcast.splat11, %i.dl
  %i.dn = load i8, ptr %i.cl, align 1, !alias.scope !26
  %broadcast.splatinsert26 = insertelement <2 x i8> poison, i8 %i.dn, i64 0
  %broadcast.splat27 = shufflevector <2 x i8> %broadcast.splatinsert26, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.do = zext <2 x i8> %broadcast.splat27 to <2 x i32>
  %i.dp = mul nuw nsw <2 x i32> %broadcast.splat, %i.do
  %i.dq = add nuw nsw <2 x i32> %i.dp, %i.dm
  %i.dr = shufflevector <2 x i32> %i.cv, <2 x i32> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = shufflevector <2 x i32> %i.dj, <2 x i32> %i.dq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <4 x i32> %i.dr, <4 x i32> %i.ds, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.du = lshr <8 x i32> %i.dt, splat (i32 7)
  %interleaved.vec = trunc nuw <8 x i32> %i.du to <8 x i8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.083.i, i64 %i.dv
  store <8 x i8> %interleaved.vec, ptr %next.gep, align 1, !alias.scope !27, !noalias !28
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader69.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.in.i.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.171.i.ph = phi ptr [ %.083.i, %vector.memcheck ], [ %.083.i, %.lr.ph.i ], [ %i.co, %middle.block ]
  %i.dx = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.dy = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dz = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.ea = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

.preheader69.i:                                   ; preds = %scalar.ph, %middle.block, %bb.e
  %.1.lcssa.i = phi ptr [ %.083.i, %bb.e ], [ %i.co, %middle.block ], [ %i.ep, %scalar.ph ] ; 2 uses
  br i1 %.not6573.i, label %.preheader.i, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %.preheader69.i
  %i.eb = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ed = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph76.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.in.i = phi i32 [ %i.ef, %scalar.ph ], [ %.in.i.ph, %scalar.ph.preheader ]
  %.171.i = phi ptr [ %i.ep, %scalar.ph ], [ %.171.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ef = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.eg = load <4 x i8>, ptr %i.ca, align 1
  %i.eh = zext <4 x i8> %i.eg to <4 x i32>
  %i.ei = mul nuw nsw <4 x i32> %i.dy, %i.eh
  %i.ej = load <4 x i8>, ptr %i.cb, align 1
  %i.ek = zext <4 x i8> %i.ej to <4 x i32>
  %i.el = mul nuw nsw <4 x i32> %i.ea, %i.ek
  %i.em = add nuw nsw <4 x i32> %i.el, %i.ei
  %i.en = lshr <4 x i32> %i.em, splat (i32 7)
  %i.eo = trunc <4 x i32> %i.en to <4 x i8>
  store <4 x i8> %i.eo, ptr %.171.i, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.171.i, i64 4 ; 2 uses
  %.not.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i, label %.preheader69.i, label %scalar.ph, !llvm.loop !21

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader69.i
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader69.i ], [ %i.go, %.lr.ph76.i ] ; 2 uses
  %i.eq = load i32, ptr %i.h, align 4             ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.h, align 4
  %.not6678.i = icmp eq i32 %i.eq, 0
  br i1 %.not6678.i, label %._crit_edge.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.preheader.i
  %i.es = getelementptr inbounds i8, ptr %i.ca, i64 %i.az
  %i.et = getelementptr inbounds i8, ptr %i.cb, i64 %i.az
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.ex = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ey = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %i.ez = shufflevector <4 x i32> %i.ey, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.f

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i
  %.275.i = phi ptr [ %i.go, %.lr.ph76.i ], [ %.1.lcssa.i, %.lr.ph76.i.preheader ] ; 2 uses
  %.06374.i = phi i32 [ %i.fa, %.lr.ph76.i ], [ %i.ak, %.lr.ph76.i.preheader ]
  %i.fa = add nsw i32 %.06374.i, -1               ; 2 uses
  %i.fb = load i64, ptr %i.e, align 8             ; 3 uses
  %i.fc = lshr i64 %i.fb, 14
  %i.fd = and i64 %i.fc, 262140                   ; 2 uses
  %i.fe = trunc i64 %i.fb to i32
  %i.ff = lshr i32 %i.fe, 9
  %i.fg = and i32 %i.ff, 127                      ; 2 uses
  %i.fh = add nsw i64 %i.fb, %i.aw
  store i64 %i.fh, ptr %i.e, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fd ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fd ; 2 uses
  %i.fk = sub nuw nsw i32 128, %i.fg
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fn = load <4 x i8>, ptr %i.fi, align 1
  %i.fo = zext <4 x i8> %i.fn to <4 x i32>
  %i.fp = mul nuw nsw <4 x i32> %i.ec, %i.fo
  %i.fq = load <4 x i8>, ptr %i.fj, align 1
  %i.fr = zext <4 x i8> %i.fq to <4 x i32>
  %i.fs = mul nuw nsw <4 x i32> %i.ee, %i.fr
  %i.ft = add nuw nsw <4 x i32> %i.fs, %i.fp
  %i.fu = lshr <4 x i32> %i.ft, splat (i32 7)
  %i.fv = load <4 x i8>, ptr %i.fl, align 1
  %i.fw = zext <4 x i8> %i.fv to <4 x i32>
  %i.fx = mul nuw nsw <4 x i32> %i.ec, %i.fw
  %i.fy = load <4 x i8>, ptr %i.fm, align 1
  %i.fz = zext <4 x i8> %i.fy to <4 x i32>
  %i.ga = mul nuw nsw <4 x i32> %i.ee, %i.fz
  %i.gb = add nuw nsw <4 x i32> %i.ga, %i.fx
  %i.gc = lshr <4 x i32> %i.gb, splat (i32 7)
  %i.gd = and <4 x i32> %i.fu, splat (i32 255)
  %i.ge = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gg = mul nuw nsw <4 x i32> %i.gd, %i.gf
  %i.gh = and <4 x i32> %i.gc, splat (i32 255)
  %i.gi = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %i.gj = shufflevector <4 x i32> %i.gi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gk = mul nuw nsw <4 x i32> %i.gh, %i.gj
  %i.gl = add nuw nsw <4 x i32> %i.gk, %i.gg
  %i.gm = lshr <4 x i32> %i.gl, splat (i32 7)
  %i.gn = trunc <4 x i32> %i.gm to <4 x i8>
  store <4 x i8> %i.gn, ptr %.275.i, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.275.i, i64 4 ; 2 uses
  %.not65.i = icmp eq i32 %i.fa, 0
  br i1 %.not65.i, label %.preheader.i, label %.lr.ph76.i, !llvm.loop !22

bb.f:                                             ; preds = %bb.f, %.lr.ph80.i
  %.379.i = phi ptr [ %.2.lcssa.i, %.lr.ph80.i ], [ %i.gy, %bb.f ] ; 2 uses
  %i.gp = load <4 x i8>, ptr %i.eu, align 1
  %i.gq = zext <4 x i8> %i.gp to <4 x i32>
  %i.gr = mul nuw nsw <4 x i32> %i.ez, %i.gq
  %i.gs = load <4 x i8>, ptr %i.ev, align 1
  %i.gt = zext <4 x i8> %i.gs to <4 x i32>
  %i.gu = mul nuw nsw <4 x i32> %i.ex, %i.gt
  %i.gv = add nuw nsw <4 x i32> %i.gu, %i.gr
  %i.gw = lshr <4 x i32> %i.gv, splat (i32 7)
  %i.gx = trunc <4 x i32> %i.gw to <4 x i8>
  store <4 x i8> %i.gx, ptr %.379.i, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.379.i, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ha = add nsw i32 %i.gz, -1
  store i32 %i.ha, ptr %i.h, align 4
  %.not66.i = icmp eq i32 %i.gz, 0
  br i1 %.not66.i, label %._crit_edge.i, label %bb.f, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader.i ], [ %i.gy, %bb.f ]
end_hunk_0
