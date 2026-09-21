Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/blocksort?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@fallbackSort:bb.a
  %i.de = shl nuw nsw i32 %.7163257, 1
  %i.df = add nsw i32 %i.de, %3                   ; 3 uses
  %i.dg = and i32 %i.df, 31
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = ashr i32 %i.df, 5
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !9
  %i.dm = or i32 %i.dl, %i.dh
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !9
  %i.dn = add nsw i32 %i.df, 1                    ; 2 uses
  %i.do = and i32 %i.dn, 31
  %i.dp = shl nuw i32 1, %i.do
  %i.dq = xor i32 %i.dp, -1
  %i.dr = ashr i32 %i.dn, 5
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.dv = and i32 %i.du, %i.dq
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !9
  %i.dw = add nuw nsw i32 %.7163257, 1            ; 2 uses
  %exitcond335.not = icmp eq i32 %i.dw, 32
  br i1 %exitcond335.not, label %.preheader193, label %.preheader194, !llvm.loop !72

.backedge:                                        ; preds = %.backedge.backedge, %.preheader193
  %.0165 = phi i32 [ 1, %.preheader193 ], [ %.0165.be, %.backedge.backedge ] ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.3, i32 noundef %.0165) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.backedge
  br i1 %i.g, label %.lr.ph261, label %.preheader192.preheader

.lr.ph261:                                        ; preds = %bb.d, %.lr.ph261
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %.lr.ph261 ], [ 0, %bb.d ] ; 4 uses
  %.0152259 = phi i32 [ %spec.select, %.lr.ph261 ], [ 0, %bb.d ]
  %i.dz = trunc nuw nsw i64 %indvars.iv336 to i32 ; 2 uses
  %i.ea = lshr i64 %indvars.iv336, 5
  %i.eb = and i64 %i.ea, 134217727
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !9
  %i.ee = and i32 %i.dz, 31
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = and i32 %i.ed, %i.ef
  %.not181 = icmp eq i32 %i.eg, 0
  %spec.select = select i1 %.not181, i32 %.0152259, i32 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv336
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = sub i32 %i.ei, %.0165                   ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  %i.el = select i1 %i.ek, i32 %3, i32 0
  %.0150 = add nsw i32 %i.el, %i.ej
  %i.em = sext i32 %.0150 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %1, i64 %i.em
  store i32 %spec.select, ptr %i.en, align 4, !tbaa !9
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %.preheader192.preheader, label %.lr.ph261, !llvm.loop !73

.preheader192.preheader:                          ; preds = %.lr.ph261, %bb.d
  br label %.preheader192.outer

.preheader192.outer:                              ; preds = %.preheader192.outer.backedge, %.preheader192.preheader
  %.0149.ph = phi i32 [ 0, %.preheader192.preheader ], [ %.8, %.preheader192.outer.backedge ]
  %.0.ph = phi i32 [ 0, %.preheader192.preheader ], [ %i.gq, %.preheader192.outer.backedge ] ; 4 uses
  br label %.preheader192

.preheader192:                                    ; preds = %.preheader192.outer, %bb.h
  %.0149 = phi i32 [ %.8, %bb.h ], [ %.0149.ph, %.preheader192.outer ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader192
  %.1151 = phi i32 [ %.0149, %.preheader192 ], [ %i.ey, %bb.e ] ; 5 uses
  %i.eo = ashr i32 %.1151, 5
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !9
  %i.es = and i32 %.1151, 31                      ; 2 uses
  %i.et = shl nuw i32 1, %i.es
  %i.eu = and i32 %i.et, %i.er
  %i.ev = icmp ne i32 %i.eu, 0                    ; 2 uses
  %i.ew = icmp ne i32 %i.es, 0
  %i.ex = and i1 %i.ew, %i.ev
  %i.ey = add nsw i32 %.1151, 1
  br i1 %i.ex, label %bb.e, label %bb.f, !llvm.loop !74

bb.f:                                             ; preds = %bb.e
  br i1 %i.ev, label %.preheader191, label %.loopexit190

.preheader191:                                    ; preds = %bb.f, %.preheader191
  %.2 = phi i32 [ %i.fe, %.preheader191 ], [ %.1151, %bb.f ] ; 3 uses
  %i.ez = ashr i32 %.2, 5
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  %i.fd = icmp eq i32 %i.fc, -1
  %i.fe = add nsw i32 %.2, 32
  br i1 %i.fd, label %.preheader191, label %.preheader189, !llvm.loop !75

.preheader189:                                    ; preds = %.preheader191, %.preheader189
  %.3 = phi i32 [ %i.fm, %.preheader189 ], [ %.2, %.preheader191 ] ; 4 uses
  %i.ff = ashr i32 %.3, 5
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.fj = and i32 %.3, 31
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = and i32 %i.fk, %i.fi
  %.not = icmp eq i32 %i.fl, 0
  %i.fm = add nsw i32 %.3, 1
  br i1 %.not, label %.loopexit190, label %.preheader189, !llvm.loop !76

.loopexit190:                                     ; preds = %.preheader189, %bb.f
  %.4 = phi i32 [ %.1151, %bb.f ], [ %.3, %.preheader189 ] ; 6 uses
  %.not174.not = icmp sgt i32 %.4, %3
  br i1 %.not174.not, label %bb.ak, label %.preheader188

.preheader188:                                    ; preds = %.loopexit190, %.preheader188
  %.5 = phi i32 [ %i.fw, %.preheader188 ], [ %.4, %.loopexit190 ] ; 5 uses
  %i.fn = ashr i32 %.5, 5
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !9
  %i.fr = and i32 %.5, 31                         ; 2 uses
  %i.fs = shl nuw i32 1, %i.fr
  %i.ft = and i32 %i.fs, %i.fq
  %.not175 = icmp eq i32 %i.ft, 0                 ; 2 uses
  %i.fu = icmp ne i32 %i.fr, 0
  %i.fv = and i1 %i.fu, %.not175
  %i.fw = add nsw i32 %.5, 1
  br i1 %i.fv, label %.preheader188, label %bb.g, !llvm.loop !77

bb.g:                                             ; preds = %.preheader188
  br i1 %.not175, label %.preheader187, label %.loopexit186

.preheader187:                                    ; preds = %bb.g, %.preheader187
  %.6 = phi i32 [ %i.gc, %.preheader187 ], [ %.5, %bb.g ] ; 3 uses
  %i.fx = ashr i32 %.6, 5
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !9
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = add nsw i32 %.6, 32
  br i1 %i.gb, label %.preheader187, label %.preheader185, !llvm.loop !78

.preheader185:                                    ; preds = %.preheader187, %.preheader185
  %.7 = phi i32 [ %i.gk, %.preheader185 ], [ %.6, %.preheader187 ] ; 4 uses
  %i.gd = ashr i32 %.7, 5
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !9
  %i.gh = and i32 %.7, 31
  %i.gi = shl nuw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not176 = icmp eq i32 %i.gj, 0
  %i.gk = add nsw i32 %.7, 1
  br i1 %.not176, label %.preheader185, label %.loopexit186, !llvm.loop !79

.loopexit186:                                     ; preds = %.preheader185, %bb.g
  %.8 = phi i32 [ %.5, %bb.g ], [ %.7, %.preheader185 ] ; 8 uses
  %.not177.not = icmp sgt i32 %.8, %3
  br i1 %.not177.not, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %.loopexit186
  %i.gl = icmp sgt i32 %.8, %.4
  br i1 %i.gl, label %bb.i, label %.preheader192

bb.i:                                             ; preds = %bb.h
  %i.gm = add i32 %.4, -1                         ; 2 uses
  %i.gn = add nsw i32 %.8, -1
  %i.go = add i32 %.0.ph, 1
  %i.gp = sub i32 %i.go, %.4
  %i.gq = add i32 %i.gp, %.8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.gm, ptr %i.a, align 16, !tbaa !9
  store i32 %i.gn, ptr %i.b, align 16, !tbaa !9
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer191.backedge.i, %bb.i
  %.0178.ph260.i = phi i16 [ 0, %bb.i ], [ %i.jx, %.outer191.backedge.i ]
  %.0180.ph259.i = phi i32 [ 1, %bb.i ], [ %.0180.ph.be.i, %.outer191.backedge.i ]
  %i.gr = zext nneg i32 %.0180.ph259.i to i64
  br label %bb.j

bb.j:                                             ; preds = %fallbackSimpleSort.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.gr, %.lr.ph.i ], [ %indvars.iv.next.i, %fallbackSimpleSort.exit.i ] ; 6 uses
  %i.gs = icmp samesign ult i64 %indvars.iv.i, 99
  br i1 %i.gs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @BZ2_bz__AssertH__fail(i32 noundef 1004) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !9  ; 14 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !9  ; 16 uses
  %i.gx = sub nsw i32 %i.gw, %i.gu                ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 10
  br i1 %i.gy, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.gz = icmp eq i32 %i.gu, %i.gw
  br i1 %i.gz, label %fallbackSimpleSort.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ha = icmp slt i32 %i.gx, 4
  br i1 %i.ha, label %.loopexit58.i.i, label %.lr.ph67.preheader.i.i

.lr.ph67.preheader.i.i:                           ; preds = %bb.n
  %5 = add nsw i32 %i.gw, -4
  %i.hb = sext i32 %i.gw to i64                   ; 2 uses
  %i.hc = sext i32 %5 to i64
  %i.hd = sext i32 %i.gu to i64
  br label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph67.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.hc, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next83.i.i, %.critedge.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ %i.hb, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv82.i.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !9  ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !9
  %6 = trunc nsw i64 %indvars.iv82.i.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph67.i.i
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph67.i.i ], [ %indvars.iv.next80.i.i, %bb.o ] ; 3 uses
  %.0.in61.i.i = phi i32 [ %6, %.lr.ph67.i.i ], [ %i.hr, %bb.o ] ; 2 uses
  %i.hj = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79.i.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !9  ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !9
  %i.ho = icmp ugt i32 %i.hi, %i.hn
  br i1 %i.ho, label %bb.o, label %.critedge.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.hp = sext i32 %.0.in61.i.i to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hp
  store i32 %i.hk, ptr %i.hq, align 4, !tbaa !9
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, 4 ; 2 uses
  %.not57.i.i = icmp sgt i64 %indvars.iv.next80.i.i, %i.hb
  %i.hr = trunc nsw i64 %indvars.iv79.i.i to i32  ; 2 uses
  br i1 %.not57.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !80

.critedge.i.i:                                    ; preds = %bb.o, %.lr.ph.i.i
  %.0.in.lcssa.ph.i.i = phi i32 [ %.0.in61.i.i, %.lr.ph.i.i ], [ %i.hr, %bb.o ]
  %7 = sext i32 %.0.in.lcssa.ph.i.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %0, i64 %7
  store i32 %i.hf, ptr %i.hs, align 4, !tbaa !9
  %indvars.iv.next83.i.i = add nsw i64 %indvars.iv82.i.i, -1
  %.not.not.i.i = icmp sgt i64 %indvars.iv82.i.i, %i.hd
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  br i1 %.not.not.i.i, label %.lr.ph67.i.i, label %.loopexit58.i.i, !llvm.loop !81

.loopexit58.i.i:                                  ; preds = %.critedge.i.i, %bb.n
  %.not55.not75.i.i = icmp sgt i32 %i.gw, %i.gu
  br i1 %.not55.not75.i.i, label %.lr.ph78.preheader.i.i, label %fallbackSimpleSort.exit.i

.lr.ph78.preheader.i.i:                           ; preds = %.loopexit58.i.i
  %i.ht = sext i32 %i.gw to i64                   ; 5 uses
  %i.hu = add i32 %i.gw, 1                        ; 4 uses
  %i.hv = sext i32 %i.gu to i64                   ; 3 uses
  %i.hw = sext i32 %i.hu to i64                   ; 3 uses
  %i.hx = sub nsw i64 %i.ht, %i.hv
  %xtraiter556 = and i64 %i.hx, 1
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %.lr.ph78.i.i.prol.loopexit, label %.lr.ph78.i.i.prol

.lr.ph78.i.i.prol:                                ; preds = %.lr.ph78.preheader.i.i
  %indvars.iv.next87.i.i.prol = add nsw i64 %i.ht, -1 ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i.prol
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !9  ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !9
  br label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %bb.p, %.lr.ph78.i.i.prol
  %indvars.iv88.i.i.prol = phi i64 [ %indvars.iv.next89.i.i.prol, %bb.p ], [ %i.ht, %.lr.ph78.i.i.prol ] ; 3 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i.prol ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9  ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !9
  %i.ii = icmp ugt i32 %i.ic, %i.ih
  br i1 %i.ii, label %bb.p, label %.critedge2.loopexit.i.i.prol

bb.p:                                             ; preds = %.lr.ph70.i.i.prol
  %i.ij = getelementptr i8, ptr %i.id, i64 -4
  store i32 %i.ie, ptr %i.ij, align 4, !tbaa !9
  %indvars.iv.next89.i.i.prol = add nsw i64 %indvars.iv88.i.i.prol, 1 ; 2 uses
  %lftr.wideiv.i.i.prol = trunc i64 %indvars.iv.next89.i.i.prol to i32
  %exitcond.not.i.i.prol = icmp eq i32 %i.hu, %lftr.wideiv.i.i.prol
  br i1 %exitcond.not.i.i.prol, label %.critedge2.loopexit.i.i.prol, label %.lr.ph70.i.i.prol, !llvm.loop !82

.critedge2.loopexit.i.i.prol:                     ; preds = %bb.p, %.lr.ph70.i.i.prol
  %.1.lcssa.ph.i.i.prol = phi i64 [ %i.hw, %bb.p ], [ %indvars.iv88.i.i.prol, %.lr.ph70.i.i.prol ]
  %i.ik = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i.prol
  %i.il = getelementptr i8, ptr %i.ik, i64 -4
  store i32 %i.hz, ptr %i.il, align 4, !tbaa !9
  br label %.lr.ph78.i.i.prol.loopexit

.lr.ph78.i.i.prol.loopexit:                       ; preds = %.critedge2.loopexit.i.i.prol, %.lr.ph78.preheader.i.i
  %indvars.iv86.i.i.unr = phi i64 [ %i.ht, %.lr.ph78.preheader.i.i ], [ %indvars.iv.next87.i.i.prol, %.critedge2.loopexit.i.i.prol ]
  %i.im = add nsw i64 %i.ht, -1
  %i.in = icmp eq i64 %i.im, %i.hv
  br i1 %i.in, label %fallbackSimpleSort.exit.i, label %.lr.ph78.i.i

.lr.ph78.i.i:                                     ; preds = %.lr.ph78.i.i.prol.loopexit, %.critedge2.loopexit.i.i.1
  %indvars.iv86.i.i = phi i64 [ %indvars.iv.next87.i.i.1, %.critedge2.loopexit.i.i.1 ], [ %indvars.iv86.i.i.unr, %.lr.ph78.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next87.i.i = add nsw i64 %indvars.iv86.i.i, -1 ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !9  ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !9
  br label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.q, %.lr.ph78.i.i
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %bb.q ], [ %indvars.iv86.i.i, %.lr.ph78.i.i ] ; 3 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !9  ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !9
  %i.iy = icmp ugt i32 %i.is, %i.ix
  br i1 %i.iy, label %bb.q, label %.critedge2.loopexit.i.i

bb.q:                                             ; preds = %.lr.ph70.i.i
  %i.iz = getelementptr i8, ptr %i.it, i64 -4
  store i32 %i.iu, ptr %i.iz, align 4, !tbaa !9
  %indvars.iv.next89.i.i = add nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next89.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.hu, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.critedge2.loopexit.i.i, label %.lr.ph70.i.i, !llvm.loop !82

.critedge2.loopexit.i.i:                          ; preds = %bb.q, %.lr.ph70.i.i
  %.1.lcssa.ph.i.i = phi i64 [ %i.hw, %bb.q ], [ %indvars.iv88.i.i, %.lr.ph70.i.i ]
  %i.ja = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  store i32 %i.ip, ptr %i.jb, align 4, !tbaa !9
  %indvars.iv.next87.i.i.1 = add nsw i64 %indvars.iv86.i.i, -2 ; 3 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i.1
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9  ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !9
  br label %.lr.ph70.i.i.1

.lr.ph70.i.i.1:                                   ; preds = %bb.r, %.critedge2.loopexit.i.i
  %indvars.iv88.i.i.1 = phi i64 [ %indvars.iv.next89.i.i.1, %bb.r ], [ %indvars.iv.next87.i.i, %.critedge2.loopexit.i.i ] ; 3 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i.1 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !9  ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !9
  %i.jm = icmp ugt i32 %i.jg, %i.jl
  br i1 %i.jm, label %bb.r, label %.critedge2.loopexit.i.i.1

bb.r:                                             ; preds = %.lr.ph70.i.i.1
  %i.jn = getelementptr i8, ptr %i.jh, i64 -4
  store i32 %i.ji, ptr %i.jn, align 4, !tbaa !9
  %indvars.iv.next89.i.i.1 = add nsw i64 %indvars.iv88.i.i.1, 1 ; 2 uses
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next89.i.i.1 to i32
  %exitcond.not.i.i.1 = icmp eq i32 %i.hu, %lftr.wideiv.i.i.1
  br i1 %exitcond.not.i.i.1, label %.critedge2.loopexit.i.i.1, label %.lr.ph70.i.i.1, !llvm.loop !82

.critedge2.loopexit.i.i.1:                        ; preds = %bb.r, %.lr.ph70.i.i.1
  %.1.lcssa.ph.i.i.1 = phi i64 [ %i.hw, %bb.r ], [ %indvars.iv88.i.i.1, %.lr.ph70.i.i.1 ]
  %i.jo = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i.1
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i32 %i.jd, ptr %i.jp, align 4, !tbaa !9
  %.not55.not.i.i.1 = icmp sgt i64 %indvars.iv.next87.i.i.1, %i.hv
  br i1 %.not55.not.i.i.1, label %.lr.ph78.i.i, label %fallbackSimpleSort.exit.i, !llvm.loop !83

fallbackSimpleSort.exit.i:                        ; preds = %.lr.ph78.i.i.prol.loopexit, %.critedge2.loopexit.i.i.1, %.loopexit58.i.i, %bb.m
  %i.jq = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.jq, label %bb.j, label %fallbackQSort3.exit, !llvm.loop !84

bb.s:                                             ; preds = %bb.l
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.jt = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ju = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.jv = mul i16 %.0178.ph260.i, 7621
  %i.jw = add i16 %i.jv, 1
  %i.jx = and i16 %i.jw, 32767                    ; 2 uses
  %i.jy = urem i16 %i.jx, 3
  switch i16 %i.jy, label %bb.u [
    i16 0, label %bb.v
    i16 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.jz = add nsw i32 %i.gw, %i.gu
  %i.ka = ashr i32 %i.jz, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i = phi i32 [ %i.ka, %bb.t ], [ %i.gw, %bb.u ], [ %i.gu, %bb.s ]
  %i.kb = sext i32 %.sink.i to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !9
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ke
  %.0179.i = load i32, ptr %i.kf, align 4, !tbaa !9 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %bb.v
  %.0176.i = phi i32 [ %i.gw, %bb.v ], [ %i.ls, %bb.ad ] ; 2 uses
  %.0174.i = phi i32 [ %i.gu, %bb.v ], [ %.1175.ph.lcssa.i, %bb.ad ] ; 2 uses
  %.0169.i = phi i32 [ %i.gw, %bb.v ], [ %i.lx, %bb.ad ] ; 6 uses
  %.0.i = phi i32 [ %i.gu, %bb.v ], [ %i.lw, %bb.ad ] ; 3 uses
  %i.kg = icmp sgt i32 %.0.i, %.0169.i
  br i1 %i.kg, label %.outer190._crit_edge.i, label %.lr.ph213.preheader.i

.lr.ph213.preheader.i:                            ; preds = %bb.w
  %i.kh = sext i32 %.0174.i to i64
  br label %.lr.ph213.i

.lr.ph213.i:                                      ; preds = %.outer190.i, %.lr.ph213.preheader.i
  %indvars.iv313.i = phi i64 [ %i.kh, %.lr.ph213.preheader.i ], [ %indvars.iv.next314.i, %.outer190.i ] ; 4 uses
  %.1.ph222.i = phi i32 [ %.0.i, %.lr.ph213.preheader.i ], [ %i.ku, %.outer190.i ] ; 2 uses
  %i.ki = sext i32 %.1.ph222.i to i64
  %i.kj = tail call i32 @llvm.smax.i32(i32 %.1.ph222.i, i32 %.0169.i) ; 2 uses
  %smax312.i = sext i32 %i.kj to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph213.i
  %indvars.iv309.i = phi i64 [ %i.ki, %.lr.ph213.i ], [ %indvars.iv.next310.i, %bb.z ] ; 6 uses
  %i.kk = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !9  ; 2 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !9  ; 2 uses
  %i.kp = icmp eq i32 %i.ko, %.0179.i
  br i1 %i.kp, label %.outer190.i, label %bb.y

.outer190.i:                                      ; preds = %bb.x
  %i.kq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.kr = trunc nsw i64 %indvars.iv309.i to i32   ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv313.i ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !9
  store i32 %i.kt, ptr %i.kq, align 4, !tbaa !9
  store i32 %i.kl, ptr %i.ks, align 4, !tbaa !9
end_hunk_0
