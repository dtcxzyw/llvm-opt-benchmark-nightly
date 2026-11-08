Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/blocksort?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@fallbackSort:bb.a
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !10
  %i.dv = and i32 %i.du, %i.dq
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !10
  %i.dw = add nuw nsw i32 %.7163257, 1            ; 2 uses
  %exitcond335.not = icmp eq i32 %i.dw, 32
  br i1 %exitcond335.not, label %.preheader193, label %.preheader194, !llvm.loop !73

.backedge:                                        ; preds = %.backedge.backedge, %.preheader193
  %.0165 = phi i32 [ 1, %.preheader193 ], [ %.0165.be, %.backedge.backedge ] ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !12
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
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !10
  %i.ee = and i32 %i.dz, 31
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = and i32 %i.ed, %i.ef
  %.not181 = icmp eq i32 %i.eg, 0
  %spec.select = select i1 %.not181, i32 %.0152259, i32 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv336
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !10
  %i.ej = sub i32 %i.ei, %.0165                   ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  %i.el = select i1 %i.ek, i32 %3, i32 0
  %.0150 = add nsw i32 %i.el, %i.ej
  %i.em = sext i32 %.0150 to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %1, i64 %i.em
  store i32 %spec.select, ptr %i.en, align 4, !tbaa !10
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %.preheader192.preheader, label %.lr.ph261, !llvm.loop !74

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
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !10
  %i.es = and i32 %.1151, 31                      ; 2 uses
  %i.et = shl nuw i32 1, %i.es
  %i.eu = and i32 %i.et, %i.er
  %i.ev = icmp ne i32 %i.eu, 0                    ; 2 uses
  %i.ew = icmp ne i32 %i.es, 0
  %i.ex = and i1 %i.ew, %i.ev
  %i.ey = add nsw i32 %.1151, 1
  br i1 %i.ex, label %bb.e, label %bb.f, !llvm.loop !75

bb.f:                                             ; preds = %bb.e
  br i1 %i.ev, label %.preheader191, label %.loopexit190

.preheader191:                                    ; preds = %bb.f, %.preheader191
  %.2 = phi i32 [ %i.fe, %.preheader191 ], [ %.1151, %bb.f ] ; 3 uses
  %i.ez = ashr i32 %.2, 5
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !10
  %i.fd = icmp eq i32 %i.fc, -1
  %i.fe = add nsw i32 %.2, 32
  br i1 %i.fd, label %.preheader191, label %.preheader189, !llvm.loop !76

.preheader189:                                    ; preds = %.preheader191, %.preheader189
  %.3 = phi i32 [ %i.fm, %.preheader189 ], [ %.2, %.preheader191 ] ; 4 uses
  %i.ff = ashr i32 %.3, 5
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !10
  %i.fj = and i32 %.3, 31
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = and i32 %i.fk, %i.fi
  %.not = icmp eq i32 %i.fl, 0
  %i.fm = add nsw i32 %.3, 1
  br i1 %.not, label %.loopexit190, label %.preheader189, !llvm.loop !77

.loopexit190:                                     ; preds = %.preheader189, %bb.f
  %.4 = phi i32 [ %.1151, %bb.f ], [ %.3, %.preheader189 ] ; 6 uses
  %.not174.not = icmp sgt i32 %.4, %3
  br i1 %.not174.not, label %bb.ak, label %.preheader188

.preheader188:                                    ; preds = %.loopexit190, %.preheader188
  %.5 = phi i32 [ %i.fw, %.preheader188 ], [ %.4, %.loopexit190 ] ; 5 uses
  %i.fn = ashr i32 %.5, 5
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !10
  %i.fr = and i32 %.5, 31                         ; 2 uses
  %i.fs = shl nuw i32 1, %i.fr
  %i.ft = and i32 %i.fs, %i.fq
  %.not175 = icmp eq i32 %i.ft, 0                 ; 2 uses
  %i.fu = icmp ne i32 %i.fr, 0
  %i.fv = and i1 %i.fu, %.not175
  %i.fw = add nsw i32 %.5, 1
  br i1 %i.fv, label %.preheader188, label %bb.g, !llvm.loop !78

bb.g:                                             ; preds = %.preheader188
  br i1 %.not175, label %.preheader187, label %.loopexit186

.preheader187:                                    ; preds = %bb.g, %.preheader187
  %.6 = phi i32 [ %i.gc, %.preheader187 ], [ %.5, %bb.g ] ; 3 uses
  %i.fx = ashr i32 %.6, 5
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !10
  %i.gb = icmp eq i32 %i.ga, 0
  %i.gc = add nsw i32 %.6, 32
  br i1 %i.gb, label %.preheader187, label %.preheader185, !llvm.loop !79

.preheader185:                                    ; preds = %.preheader187, %.preheader185
  %.7 = phi i32 [ %i.gk, %.preheader185 ], [ %.6, %.preheader187 ] ; 4 uses
  %i.gd = ashr i32 %.7, 5
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !10
  %i.gh = and i32 %.7, 31
  %i.gi = shl nuw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not176 = icmp eq i32 %i.gj, 0
  %i.gk = add nsw i32 %.7, 1
  br i1 %.not176, label %.preheader185, label %.loopexit186, !llvm.loop !80

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
  store i32 %i.gm, ptr %i.a, align 16, !tbaa !10
  store i32 %i.gn, ptr %i.b, align 16, !tbaa !10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer191.backedge.i, %bb.i
  %.0178.ph260.i = phi i16 [ 0, %bb.i ], [ %i.jy, %.outer191.backedge.i ]
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
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !10 ; 14 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !10 ; 16 uses
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
  %i.hb = add nsw i32 %i.gw, -4
  %i.hc = sext i32 %i.gw to i64                   ; 2 uses
  %i.hd = sext i32 %i.hb to i64
  %i.he = sext i32 %i.gu to i64
  br label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %.critedge.loopexit.i.i, %.lr.ph67.preheader.i.i
  %indvars.iv82.i.i = phi i64 [ %i.hd, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next83.i.i, %.critedge.loopexit.i.i ] ; 4 uses
  %indvars.iv.i.i.a = phi i64 [ %i.hc, %.lr.ph67.preheader.i.i ], [ %indvars.iv.next.i.i, %.critedge.loopexit.i.i ] ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv82.i.i
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !10 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !10
  %i.hk = trunc nsw i64 %indvars.iv82.i.i to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph67.i.i
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.i.i.a, %.lr.ph67.i.i ], [ %indvars.iv.next80.i.i, %bb.o ] ; 3 uses
  %.0.in61.i.i = phi i32 [ %i.hk, %.lr.ph67.i.i ], [ %i.ht, %bb.o ] ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79.i.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !10 ; 2 uses
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !10
  %i.hq = icmp ugt i32 %i.hj, %i.hp
  br i1 %i.hq, label %bb.o, label %.critedge.loopexit.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.hr = sext i32 %.0.in61.i.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hr
  store i32 %i.hm, ptr %i.hs, align 4, !tbaa !10
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, 4 ; 2 uses
  %.not57.i.i = icmp sgt i64 %indvars.iv.next80.i.i, %i.hc
  %i.ht = trunc nsw i64 %indvars.iv79.i.i to i32  ; 2 uses
  br i1 %.not57.i.i, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !81

.critedge.loopexit.i.i:                           ; preds = %bb.o, %.lr.ph.i.i
  %.0.in.lcssa.ph.i.i = phi i32 [ %.0.in61.i.i, %.lr.ph.i.i ], [ %i.ht, %bb.o ]
  %i.hu = sext i32 %.0.in.lcssa.ph.i.i to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hu
  store i32 %i.hg, ptr %i.hv, align 4, !tbaa !10
  %indvars.iv.next83.i.i = add nsw i64 %indvars.iv82.i.i, -1
  %.not.not.i.i = icmp sgt i64 %indvars.iv82.i.i, %i.he
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i.a, -1
  br i1 %.not.not.i.i, label %.lr.ph67.i.i, label %.loopexit58.i.i, !llvm.loop !82

.loopexit58.i.i:                                  ; preds = %.critedge.loopexit.i.i, %bb.n
  %.not55.not75.i.i = icmp sgt i32 %i.gw, %i.gu
  br i1 %.not55.not75.i.i, label %.lr.ph78.preheader.i.i, label %fallbackSimpleSort.exit.i

.lr.ph78.preheader.i.i:                           ; preds = %.loopexit58.i.i
  %5 = sext i32 %i.gw to i64                      ; 5 uses
  %6 = add i32 %i.gw, 1                           ; 4 uses
  %i.hw = sext i32 %i.gu to i64                   ; 3 uses
  %i.hx = sext i32 %6 to i64                      ; 3 uses
  %i.hy = sub nsw i64 %5, %i.hw
  %xtraiter558 = and i64 %i.hy, 1
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.lr.ph78.i.i.prol.loopexit, label %.lr.ph78.i.i.prol

.lr.ph78.i.i.prol:                                ; preds = %.lr.ph78.preheader.i.i
  %indvars.iv.next87.i.i.prol = add nsw i64 %5, -1 ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i.prol
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !10 ; 2 uses
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !10
  br label %.lr.ph70.i.i.prol

.lr.ph70.i.i.prol:                                ; preds = %bb.p, %.lr.ph78.i.i.prol
  %indvars.iv88.i.i.prol = phi i64 [ %indvars.iv.next89.i.i.prol, %bb.p ], [ %5, %.lr.ph78.i.i.prol ] ; 3 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i.prol ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !10 ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !10
  %i.ij = icmp ugt i32 %i.id, %i.ii
  br i1 %i.ij, label %bb.p, label %.critedge2.loopexit.i.i.prol

bb.p:                                             ; preds = %.lr.ph70.i.i.prol
  %i.ik = getelementptr i8, ptr %i.ie, i64 -4
  store i32 %i.if, ptr %i.ik, align 4, !tbaa !10
  %indvars.iv.next89.i.i.prol = add nsw i64 %indvars.iv88.i.i.prol, 1 ; 2 uses
  %lftr.wideiv.i.i.prol = trunc i64 %indvars.iv.next89.i.i.prol to i32
  %exitcond.not.i.i.prol = icmp eq i32 %6, %lftr.wideiv.i.i.prol
  br i1 %exitcond.not.i.i.prol, label %.critedge2.loopexit.i.i.prol, label %.lr.ph70.i.i.prol, !llvm.loop !83

.critedge2.loopexit.i.i.prol:                     ; preds = %bb.p, %.lr.ph70.i.i.prol
  %.1.lcssa.ph.i.i.prol = phi i64 [ %i.hx, %bb.p ], [ %indvars.iv88.i.i.prol, %.lr.ph70.i.i.prol ]
  %i.il = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i.prol
  %i.im = getelementptr i8, ptr %i.il, i64 -4
  store i32 %i.ia, ptr %i.im, align 4, !tbaa !10
  br label %.lr.ph78.i.i.prol.loopexit

.lr.ph78.i.i.prol.loopexit:                       ; preds = %.critedge2.loopexit.i.i.prol, %.lr.ph78.preheader.i.i
  %indvars.iv86.i.i.unr = phi i64 [ %5, %.lr.ph78.preheader.i.i ], [ %indvars.iv.next87.i.i.prol, %.critedge2.loopexit.i.i.prol ]
  %i.in = add nsw i64 %5, -1
  %i.io = icmp eq i64 %i.in, %i.hw
  br i1 %i.io, label %fallbackSimpleSort.exit.i, label %.lr.ph78.i.i

.lr.ph78.i.i:                                     ; preds = %.lr.ph78.i.i.prol.loopexit, %.critedge2.loopexit.i.i.1
  %indvars.iv86.i.i = phi i64 [ %indvars.iv.next87.i.i.1, %.critedge2.loopexit.i.i.1 ], [ %indvars.iv86.i.i.unr, %.lr.ph78.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next87.i.i = add nsw i64 %indvars.iv86.i.i, -1 ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !10 ; 2 uses
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !10
  br label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.q, %.lr.ph78.i.i
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %bb.q ], [ %indvars.iv86.i.i, %.lr.ph78.i.i ] ; 3 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !10 ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !10
  %i.iz = icmp ugt i32 %i.it, %i.iy
  br i1 %i.iz, label %bb.q, label %.critedge2.loopexit.i.i

bb.q:                                             ; preds = %.lr.ph70.i.i
  %i.ja = getelementptr i8, ptr %i.iu, i64 -4
  store i32 %i.iv, ptr %i.ja, align 4, !tbaa !10
  %indvars.iv.next89.i.i = add nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next89.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %6, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.critedge2.loopexit.i.i, label %.lr.ph70.i.i, !llvm.loop !83

.critedge2.loopexit.i.i:                          ; preds = %bb.q, %.lr.ph70.i.i
  %.1.lcssa.ph.i.i = phi i64 [ %i.hx, %bb.q ], [ %indvars.iv88.i.i, %.lr.ph70.i.i ]
  %i.jb = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i
  %i.jc = getelementptr i8, ptr %i.jb, i64 -4
  store i32 %i.iq, ptr %i.jc, align 4, !tbaa !10
  %indvars.iv.next87.i.i.1 = add nsw i64 %indvars.iv86.i.i, -2 ; 3 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next87.i.i.1
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10 ; 2 uses
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !10
  br label %.lr.ph70.i.i.1

.lr.ph70.i.i.1:                                   ; preds = %bb.r, %.critedge2.loopexit.i.i
  %indvars.iv88.i.i.1 = phi i64 [ %indvars.iv.next89.i.i.1, %bb.r ], [ %indvars.iv.next87.i.i, %.critedge2.loopexit.i.i ] ; 3 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv88.i.i.1 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !10 ; 2 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !10
  %i.jn = icmp ugt i32 %i.jh, %i.jm
  br i1 %i.jn, label %bb.r, label %.critedge2.loopexit.i.i.1

bb.r:                                             ; preds = %.lr.ph70.i.i.1
  %i.jo = getelementptr i8, ptr %i.ji, i64 -4
  store i32 %i.jj, ptr %i.jo, align 4, !tbaa !10
  %indvars.iv.next89.i.i.1 = add nsw i64 %indvars.iv88.i.i.1, 1 ; 2 uses
  %lftr.wideiv.i.i.1 = trunc i64 %indvars.iv.next89.i.i.1 to i32
  %exitcond.not.i.i.1 = icmp eq i32 %6, %lftr.wideiv.i.i.1
  br i1 %exitcond.not.i.i.1, label %.critedge2.loopexit.i.i.1, label %.lr.ph70.i.i.1, !llvm.loop !83

.critedge2.loopexit.i.i.1:                        ; preds = %bb.r, %.lr.ph70.i.i.1
  %.1.lcssa.ph.i.i.1 = phi i64 [ %i.hx, %bb.r ], [ %indvars.iv88.i.i.1, %.lr.ph70.i.i.1 ]
  %i.jp = getelementptr [4 x i8], ptr %0, i64 %.1.lcssa.ph.i.i.1
  %i.jq = getelementptr i8, ptr %i.jp, i64 -4
  store i32 %i.je, ptr %i.jq, align 4, !tbaa !10
  %.not55.not.i.i.1 = icmp sgt i64 %indvars.iv.next87.i.i.1, %i.hw
  br i1 %.not55.not.i.i.1, label %.lr.ph78.i.i, label %fallbackSimpleSort.exit.i, !llvm.loop !84

fallbackSimpleSort.exit.i:                        ; preds = %.lr.ph78.i.i.prol.loopexit, %.critedge2.loopexit.i.i.1, %.loopexit58.i.i, %bb.m
  %i.jr = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.jr, label %bb.j, label %fallbackQSort3.exit, !llvm.loop !85

bb.s:                                             ; preds = %bb.l
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ju = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.jv = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.jw = mul i16 %.0178.ph260.i, 7621
  %i.jx = add i16 %i.jw, 1
  %i.jy = and i16 %i.jx, 32767                    ; 2 uses
  %i.jz = urem i16 %i.jy, 3
  switch i16 %i.jz, label %bb.u [
    i16 0, label %bb.v
    i16 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ka = add nsw i32 %i.gw, %i.gu
  %i.kb = ashr i32 %i.ka, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i = phi i32 [ %i.kb, %bb.t ], [ %i.gw, %bb.u ], [ %i.gu, %bb.s ]
  %i.kc = sext i32 %.sink.i to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !10
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kf
  %.0179.i = load i32, ptr %i.kg, align 4, !tbaa !10 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %bb.v
  %.0176.i = phi i32 [ %i.gw, %bb.v ], [ %i.lt, %bb.ad ] ; 2 uses
  %.0174.i = phi i32 [ %i.gu, %bb.v ], [ %.1175.ph.lcssa.i, %bb.ad ] ; 2 uses
  %.0169.i = phi i32 [ %i.gw, %bb.v ], [ %i.ly, %bb.ad ] ; 6 uses
  %.0.i = phi i32 [ %i.gu, %bb.v ], [ %i.lx, %bb.ad ] ; 3 uses
  %i.kh = icmp sgt i32 %.0.i, %.0169.i
  br i1 %i.kh, label %.outer190._crit_edge.i, label %.lr.ph213.preheader.i

.lr.ph213.preheader.i:                            ; preds = %bb.w
  %i.ki = sext i32 %.0174.i to i64
  br label %.lr.ph213.i

.lr.ph213.i:                                      ; preds = %.outer190.i, %.lr.ph213.preheader.i
  %indvars.iv313.i = phi i64 [ %i.ki, %.lr.ph213.preheader.i ], [ %indvars.iv.next314.i, %.outer190.i ] ; 4 uses
  %.1.ph222.i = phi i32 [ %.0.i, %.lr.ph213.preheader.i ], [ %i.kv, %.outer190.i ] ; 2 uses
  %i.kj = sext i32 %.1.ph222.i to i64
  %i.kk = tail call i32 @llvm.smax.i32(i32 %.1.ph222.i, i32 %.0169.i) ; 2 uses
  %smax312.i = sext i32 %i.kk to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph213.i
  %indvars.iv309.i = phi i64 [ %i.kj, %.lr.ph213.i ], [ %indvars.iv.next310.i, %bb.z ] ; 6 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !10 ; 2 uses
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !10 ; 2 uses
  %i.kq = icmp eq i32 %i.kp, %.0179.i
  br i1 %i.kq, label %.outer190.i, label %bb.y

.outer190.i:                                      ; preds = %bb.x
  %i.kr = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv309.i
  %i.ks = trunc nsw i64 %indvars.iv309.i to i32   ; 2 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv313.i ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !10
  store i32 %i.ku, ptr %i.kr, align 4, !tbaa !10
  store i32 %i.km, ptr %i.kt, align 4, !tbaa !10
  %indvars.iv.next314.i = add nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %i.kv = add nsw i32 %i.ks, 1                    ; 2 uses
  %.not261.i = icmp sgt i32 %.0169.i, %i.ks
  br i1 %.not261.i, label %.lr.ph213.i, label %.outer190._crit_edge.loopexit265.i

bb.y:                                             ; preds = %bb.x
  %i.kw = icmp sgt i32 %i.kp, %.0179.i
  br i1 %i.kw, label %.outer190._crit_edge.loopexit.split.loop.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next310.i = add nsw i64 %indvars.iv309.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv309.i, %smax312.i
  br i1 %exitcond.not.i, label %.outer190._crit_edge.loopexit.split.loop.exit392.i, label %bb.x

.outer190._crit_edge.loopexit265.i:               ; preds = %.outer190.i
  %i.kx = trunc nsw i64 %indvars.iv.next314.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.loopexit.split.loop.exit.i:  ; preds = %bb.y
  %i.ky = trunc nsw i64 %indvars.iv313.i to i32
  %i.kz = trunc nsw i64 %indvars.iv309.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.loopexit.split.loop.exit392.i: ; preds = %bb.z
  %i.la = add i32 %i.kk, 1
  %i.lb = trunc nsw i64 %indvars.iv313.i to i32
  br label %.outer190._crit_edge.i

.outer190._crit_edge.i:                           ; preds = %.outer190._crit_edge.loopexit.split.loop.exit392.i, %.outer190._crit_edge.loopexit.split.loop.exit.i, %.outer190._crit_edge.loopexit265.i, %bb.w
  %.1175.ph.lcssa.i = phi i32 [ %i.kx, %.outer190._crit_edge.loopexit265.i ], [ %.0174.i, %bb.w ], [ %i.ky, %.outer190._crit_edge.loopexit.split.loop.exit.i ], [ %i.lb, %.outer190._crit_edge.loopexit.split.loop.exit392.i ] ; 5 uses
  %.1.lcssa.i = phi i32 [ %i.kv, %.outer190._crit_edge.loopexit265.i ], [ %.0.i, %bb.w ], [ %i.kz, %.outer190._crit_edge.loopexit.split.loop.exit.i ], [ %i.la, %.outer190._crit_edge.loopexit.split.loop.exit392.i ] ; 9 uses
  %i.lc = icmp sgt i32 %.1.lcssa.i, %.0169.i
  br i1 %i.lc, label %.critedge.i, label %.lr.ph228.preheader.i

.lr.ph228.preheader.i:                            ; preds = %.outer190._crit_edge.i
  %i.ld = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.le = sext i32 %.0176.i to i64
  br label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %.outer.i, %.lr.ph228.preheader.i
  %indvars.iv319.i = phi i64 [ %i.le, %.lr.ph228.preheader.i ], [ %indvars.iv.next320.i, %.outer.i ] ; 4 uses
  %.1170.ph238.i = phi i32 [ %.0169.i, %.lr.ph228.preheader.i ], [ %i.lq, %.outer.i ] ; 2 uses
  %i.lf = sext i32 %.1170.ph238.i to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph228.i
  %indvars.iv316.i = phi i64 [ %i.lf, %.lr.ph228.i ], [ %indvars.iv.next317.i, %bb.ac ] ; 7 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv316.i
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !10 ; 3 uses
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !10 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, %.0179.i
  br i1 %i.ll, label %.outer.i, label %bb.ab

.outer.i:                                         ; preds = %bb.aa
  %i.lm = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv316.i
end_hunk_0
