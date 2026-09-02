Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a
  br label %.critedge28.preheader.i253

.critedge28.preheader.i253:                       ; preds = %.critedge28.preheader.loopexit.i252, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240
  %.026.lcssa.i254 = phi i32 [ 0, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ], [ %i.dd, %.critedge28.preheader.loopexit.i252 ] ; 3 uses
  %.0.lcssa.i255 = phi ptr [ %i.cu, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ], [ %i.dl, %.critedge28.preheader.loopexit.i252 ] ; 3 uses
  %i.de = icmp ult ptr %.0.lcssa.i255, %i.c
  br i1 %i.de, label %.lr.ph40.preheader.i256, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

.lr.ph40.preheader.i256:                          ; preds = %.critedge28.preheader.i253
  %.0.lcssa50.i257 = ptrtoaddr ptr %.0.lcssa.i255 to i64
  %i.df = zext i32 %.026.lcssa.i254 to i64
  %i.dg = add i32 %.026.lcssa.i254, %i.l
  %i.dh = trunc i64 %.0.lcssa50.i257 to i32
  %i.di = sub i32 %i.dg, %i.dh
  br label %.lr.ph40.i258

.lr.ph.i243:                                      ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240, %bb.j
  %indvars.iv.i244 = phi i64 [ %indvars.iv.next.i250, %bb.j ], [ 0, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 3 uses
  %.036.i245 = phi ptr [ %i.dl, %bb.j ], [ %i.cu, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit240 ] ; 2 uses
  %.0.copyload.i.i246 = load i64, ptr %.036.i245, align 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i244
  %.0.copyload.i29.i247 = load i64, ptr %i.dj, align 1 ; 2 uses
  %i.dk = icmp eq i64 %.0.copyload.i.i246, %.0.copyload.i29.i247
  br i1 %i.dk, label %bb.j, label %.critedge.i248

bb.j:                                             ; preds = %.lr.ph.i243
  %i.dl = getelementptr inbounds nuw i8, ptr %.036.i245, i64 8 ; 3 uses
  %indvars.iv.next.i250 = add nuw nsw i64 %indvars.iv.i244, 8 ; 2 uses
  %.not.i251 = icmp ugt ptr %i.dl, %i.k
  br i1 %.not.i251, label %.critedge28.preheader.loopexit.i252, label %.lr.ph.i243, !llvm.loop !134

.critedge.i248:                                   ; preds = %.lr.ph.i243
  %i.dm = trunc nuw nsw i64 %indvars.iv.i244 to i32
  %i.dn = xor i64 %.0.copyload.i29.i247, %.0.copyload.i.i246
  %i.do = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = or disjoint i32 %i.dq, %i.dm
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

.lr.ph40.i258:                                    ; preds = %.critedge28.i262, %.lr.ph40.preheader.i256
  %indvars.iv48.i259 = phi i64 [ %i.df, %.lr.ph40.preheader.i256 ], [ %indvars.iv.next49.i263, %.critedge28.i262 ] ; 3 uses
  %.139.i260 = phi ptr [ %.0.lcssa.i255, %.lr.ph40.preheader.i256 ], [ %i.dw, %.critedge28.i262 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv48.i259
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = load i8, ptr %.139.i260, align 1, !tbaa !16
  %i.dv = icmp eq i8 %i.dt, %i.du
  br i1 %i.dv, label %.critedge28.i262, label %.critedge2.loopexit.split.loop.exit.i261

.critedge28.i262:                                 ; preds = %.lr.ph40.i258
  %i.dw = getelementptr inbounds nuw i8, ptr %.139.i260, i64 1 ; 2 uses
  %indvars.iv.next49.i263 = add nuw nsw i64 %indvars.iv48.i259, 1
  %exitcond.not.i264 = icmp eq ptr %i.dw, %i.c
  br i1 %exitcond.not.i264, label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, label %.lr.ph40.i258, !llvm.loop !135

.critedge2.loopexit.split.loop.exit.i261:         ; preds = %.lr.ph40.i258
  %i.dx = trunc nuw i64 %indvars.iv48.i259 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265

_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265: ; preds = %.critedge28.i262, %.critedge28.preheader.i253, %.critedge.i248, %.critedge2.loopexit.split.loop.exit.i261
  %.2.i249 = phi i32 [ %i.dr, %.critedge.i248 ], [ %.026.lcssa.i254, %.critedge28.preheader.i253 ], [ %i.dx, %.critedge2.loopexit.split.loop.exit.i261 ], [ %i.di, %.critedge28.i262 ] ; 2 uses
  %i.dy = sext i32 %.2.i249 to i64
  %i.dz = zext i32 %i.ct to i64
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.k, label %.preheader

bb.k:                                             ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265
  store i16 %i.aj, ptr %i.cz, align 2, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit, %bb.k
  %.4196.ph = phi ptr [ %i.cu, %bb.k ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %.1193572, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3183.ph = phi ptr [ %i.dc, %bb.k ], [ %i.am, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.bv, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 3 uses
  %.3178.ph = phi i32 [ %.2.i249, %bb.k ], [ %i.bk, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit ], [ %i.ct, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit265 ] ; 2 uses
  %i.eb = icmp ugt ptr %.4196.ph, %.0192578
  %i.ec = icmp ugt ptr %.3183.ph, %0
  %or.cond397 = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond397, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.4179400 = phi i32 [ %i.ei, %bb.l ], [ %.3178.ph, %.preheader ] ; 2 uses
  %.4184399 = phi ptr [ %i.ef, %bb.l ], [ %.3183.ph, %.preheader ] ; 2 uses
  %.5197398 = phi ptr [ %i.ed, %bb.l ], [ %.4196.ph, %.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.5197398, i64 -1 ; 4 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ef = getelementptr inbounds i8, ptr %.4184399, i64 -1 ; 4 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.ei = add i32 %.4179400, 1                    ; 2 uses
  %i.ej = icmp ugt ptr %i.ed, %.0192578
  %i.ek = icmp ugt ptr %i.ef, %0
  %or.cond = and i1 %i.ej, %i.ek
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %.lr.ph, %bb.l, %.preheader
  %.5197.lcssa = phi ptr [ %.4196.ph, %.preheader ], [ %i.ed, %bb.l ], [ %.5197398, %.lr.ph ] ; 4 uses
  %.4184.lcssa = phi ptr [ %.3183.ph, %.preheader ], [ %i.ef, %bb.l ], [ %.4184399, %.lr.ph ]
  %.4179.lcssa = phi i32 [ %.3178.ph, %.preheader ], [ %i.ei, %bb.l ], [ %.4179400, %.lr.ph ]
  %i.el = ptrtoint ptr %.5197.lcssa to i64        ; 2 uses
  %i.em = sub i64 %i.el, %i.h
  %i.en = trunc i64 %i.em to i16                  ; 2 uses
  %i.eo = add i16 %i.en, 1                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 1 ; 2 uses
  %.0.copyload.i267 = load i64, ptr %i.ep, align 1
  %i.eq = mul i64 %.0.copyload.i267, 58295818150454627
  %i.er = lshr i64 %i.eq, 49
  %i.es = and i64 %i.er, %i.g
  %i.et = add i64 %i.es, %i.f
  %i.eu = inttoptr i64 %i.et to ptr
  store i16 %i.eo, ptr %i.eu, align 2, !tbaa !28
  %i.ev = add i16 %i.en, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.5197.lcssa, i64 2
  %.0.copyload.i268 = load i64, ptr %i.ew, align 1
  %i.ex = mul i64 %.0.copyload.i268, 58295818150454627
  %i.ey = lshr i64 %i.ex, 49
  %i.ez = and i64 %i.ey, %i.g
  %i.fa = add i64 %i.ez, %i.f
  %i.fb = inttoptr i64 %i.fa to ptr
  store i16 %i.ev, ptr %i.fb, align 2, !tbaa !28
  %.0.copyload.i269 = load i32, ptr %i.ep, align 1
  %i.fc = mul i32 %.0.copyload.i269, -1640531535
  %i.fd = lshr i32 %i.fc, 17
  %i.fe = and i32 %i.fd, %i.b
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = add i64 %i.ff, %i.i
  %i.fh = inttoptr i64 %i.fg to ptr
  store i16 %i.eo, ptr %i.fh, align 2, !tbaa !28
  %i.fi = ptrtoint ptr %.0192578 to i64
  %i.fj = sub i64 %i.el, %i.fi                    ; 4 uses
  %i.fk = icmp sgt i64 %i.fj, 0
  br i1 %i.fk, label %bb.m, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.m:                                             ; preds = %.critedge
  %i.fl = trunc i64 %i.fj to i32                  ; 3 uses
  %i.fm = add nsw i32 %i.fl, -1                   ; 4 uses
  %i.fn = icmp slt i32 %i.fl, 17
  br i1 %i.fn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.tr37.i = trunc i32 %i.fm to i8
  %i.fo = shl i8 %.tr37.i, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i8 %i.fo, ptr %.0201577, align 1, !tbaa !16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fp, ptr noundef nonnull readonly align 1 dereferenceable(16) %.0192578, i64 16, i1 false)
  %sext = shl i64 %i.fj, 32
  %i.fq = ashr exact i64 %sext, 32
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader

bb.o:                                             ; preds = %bb.m
  %i.fs = icmp samesign ult i32 %i.fl, 61
  br i1 %i.fs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.tr.i = trunc nuw nsw i32 %i.fm to i8
  %i.ft = shl nuw i8 %.tr.i, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.fu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fm, i1 true)
  %i.fv = lshr i32 %i.fu, 3
  %i.fw = xor i32 %i.fv, 3                        ; 2 uses
  %.tr38.i = trunc nuw nsw i32 %i.fw to i8
  %i.fx = shl nuw nsw i8 %.tr38.i, 2
  %i.fy = or disjoint i8 %i.fx, -16
  %i.fz = getelementptr inbounds nuw i8, ptr %.0201577, i64 1 ; 2 uses
  store i32 %i.fm, ptr %i.fz, align 1
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i = phi i8 [ %i.ft, %bb.p ], [ %i.fy, %bb.q ]
  %.pn.i = phi ptr [ %.0201577, %bb.p ], [ %i.gb, %bb.q ]
  store i8 %.sink.i, ptr %.0201577, align 1, !tbaa !16
  %.032.i = getelementptr i8, ptr %.pn.i, i64 1   ; 2 uses
  %i.gc = and i64 %i.fj, 2147483647
  %i.gd = getelementptr inbounds nuw i8, ptr %.032.i, i64 %i.gc ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.030.i = phi ptr [ %.032.i, %bb.r ], [ %i.ge, %bb.s ] ; 2 uses
  %.0.i = phi ptr [ %.0192578, %bb.r ], [ %i.gf, %bb.s ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.030.i, ptr noundef nonnull align 1 dereferenceable(16) %.0.i, i64 16, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.gg = icmp ult ptr %i.ge, %i.gd
  br i1 %i.gg, label %bb.s, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, !llvm.loop !0

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader: ; preds = %bb.s, %bb.n, %.critedge
  %.2203.ph = phi ptr [ %.0201577, %.critedge ], [ %i.fr, %bb.n ], [ %i.gd, %bb.s ]
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit:    ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306
  %.2203 = phi ptr [ %.3204, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.2203.ph, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 5 uses
  %.6198 = phi ptr [ %i.gi, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.5197.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 2 uses
  %.5185 = phi ptr [ %.7187, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4184.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ]
  %.5 = phi i32 [ %.7, %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306 ], [ %.4179.lcssa, %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit.preheader ] ; 4 uses
  %i.gh = zext i32 %.5 to i64                     ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.6198, i64 %i.gh ; 17 uses
  %i.gj = ptrtoint ptr %.6198 to i64
  %i.gk = ptrtoint ptr %.5185 to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 8 uses
  %i.gm = icmp ult i32 %.5, 12
  br i1 %i.gm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %7 = shl nuw nsw i32 %.5, 2
  %.tr = trunc i64 %i.gl to i32                   ; 2 uses
  %8 = shl i32 %.tr, 8
  %9 = or disjoint i32 %8, %7
  %i.gn = lshr i32 %.tr, 3
  %i.go = and i32 %i.gn, 224
  %i.gp = add nsw i32 %i.go, -15
  %i.gq = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.gr = select i1 %i.gq, i32 %i.gp, i32 -2
  %i.gs = add i32 %9, %i.gr
  store i32 %i.gs, ptr %.2203, align 1
  %i.gt = select i1 %i.gq, i64 2, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.2203, i64 %i.gt
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.u:                                             ; preds = %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit
  %i.gv = icmp ugt i32 %.5, 67
  br i1 %i.gv, label %.lr.ph.i273, label %._crit_edge.i, !prof !34

.lr.ph.i273:                                      ; preds = %bb.u
  %.tr21.i = trunc i64 %i.gl to i32
  %i.gw = shl i32 %.tr21.i, 8
  %i.gx = or disjoint i32 %i.gw, 254              ; 9 uses
  %i.gy = add nsw i64 %i.gh, -68                  ; 2 uses
  %i.gz = lshr i64 %i.gy, 6
  %i.ha = add nuw nsw i64 %i.gz, 1
  %xtraiter = and i64 %i.ha, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !prof !33

.prol.preheader:                                  ; preds = %.lr.ph.i273, %.prol.preheader
  %.023.i.prol = phi i64 [ %i.hc, %.prol.preheader ], [ %i.gh, %.lr.ph.i273 ]
  %.01522.i.prol = phi ptr [ %i.hb, %.prol.preheader ], [ %.2203, %.lr.ph.i273 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i273 ]
  store i32 %i.gx, ptr %.01522.i.prol, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %.01522.i.prol, i64 3 ; 3 uses
  %i.hc = add i64 %.023.i.prol, -64               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !prof !35, !llvm.loop !137

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i273
  %.023.i.unr = phi i64 [ %i.gh, %.lr.ph.i273 ], [ %i.hc, %.prol.preheader ]
  %.01522.i.unr = phi ptr [ %.2203, %.lr.ph.i273 ], [ %i.hb, %.prol.preheader ]
  %.lcssa609.unr = phi ptr [ poison, %.lr.ph.i273 ], [ %i.hb, %.prol.preheader ]
  %.lcssa608.unr = phi i64 [ poison, %.lr.ph.i273 ], [ %i.hc, %.prol.preheader ]
  %i.hd = icmp ult i64 %i.gy, 448
  br i1 %i.hd, label %._crit_edge.i, label %.lr.ph.i273.new, !prof !30

.lr.ph.i273.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i273.new
  %.023.i = phi i64 [ %i.hm, %.lr.ph.i273.new ], [ %.023.i.unr, %.prol.loopexit ]
  %.01522.i = phi ptr [ %i.hl, %.lr.ph.i273.new ], [ %.01522.i.unr, %.prol.loopexit ] ; 9 uses
  store i32 %i.gx, ptr %.01522.i, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.01522.i, i64 3
  store i32 %i.gx, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.01522.i, i64 6
  store i32 %i.gx, ptr %i.hf, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.01522.i, i64 9
  store i32 %i.gx, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %.01522.i, i64 12
  store i32 %i.gx, ptr %i.hh, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.01522.i, i64 15
  store i32 %i.gx, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.01522.i, i64 18
  store i32 %i.gx, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.01522.i, i64 21
  store i32 %i.gx, ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.01522.i, i64 24 ; 2 uses
  %i.hm = add i64 %.023.i, -512                   ; 3 uses
  %i.hn = icmp ugt i64 %i.hm, 67
  br i1 %i.hn, label %.lr.ph.i273.new, label %._crit_edge.i, !prof !37, !llvm.loop !138

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i273.new, %bb.u
  %.015.lcssa.i = phi ptr [ %.2203, %bb.u ], [ %.lcssa609.unr, %.prol.loopexit ], [ %i.hl, %.lr.ph.i273.new ] ; 5 uses
  %.0.lcssa.i270 = phi i64 [ %i.gh, %bb.u ], [ %.lcssa608.unr, %.prol.loopexit ], [ %i.hm, %.lr.ph.i273.new ] ; 5 uses
  %i.ho = icmp samesign ugt i64 %.0.lcssa.i270, 64
  br i1 %i.ho, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %._crit_edge.i
  %.tr.i272 = trunc i64 %i.gl to i32              ; 2 uses
  %i.hp = shl i32 %.tr.i272, 8
  %i.hq = or disjoint i32 %i.hp, 238
  store i32 %i.hq, ptr %.015.lcssa.i, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  %i.hs = add nsw i64 %.0.lcssa.i270, -60
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i
  %i.ht = icmp samesign ult i64 %.0.lcssa.i270, 12
  br i1 %i.ht, label %._crit_edge26.i, label %bb.x

._crit_edge26.i:                                  ; preds = %bb.v
  %.pre.i = trunc i64 %i.gl to i32
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge26.i, %.thread.i
  %.pre-phi.i = phi i32 [ %.pre.i, %._crit_edge26.i ], [ %.tr.i272, %.thread.i ]
  %.120.i = phi i64 [ %.0.lcssa.i270, %._crit_edge26.i ], [ %i.hs, %.thread.i ]
  %.11619.i = phi ptr [ %.015.lcssa.i, %._crit_edge26.i ], [ %i.hr, %.thread.i ] ; 2 uses
  %i.hu = shl nuw nsw i64 %.120.i, 2
  %i.hv = shl i64 %i.gl, 8
  %i.hw = add nuw i64 %i.hu, %i.hv
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = lshr i32 %.pre-phi.i, 3
  %i.hz = and i32 %i.hy, 224
  %i.ia = add nsw i32 %i.hz, -15
  %i.ib = icmp ult i64 %i.gl, 2048                ; 2 uses
  %i.ic = select i1 %i.ib, i32 %i.ia, i32 -2
  %i.id = add i32 %i.ic, %i.hx
  store i32 %i.id, ptr %.11619.i, align 1
  %i.ie = select i1 %i.ib, i64 2, i64 3
  %i.if = getelementptr inbounds nuw i8, ptr %.11619.i, i64 %i.ie
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

bb.x:                                             ; preds = %bb.v
  %i.ig = shl nuw nsw i64 %.0.lcssa.i270, 2
  %i.ih = shl i64 %i.gl, 8
  %i.ii = add i64 %i.ih, 4294967294
  %i.ij = add i64 %i.ii, %i.ig
  %i.ik = trunc i64 %i.ij to i32
  store i32 %i.ik, ptr %.015.lcssa.i, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 3
  br label %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit

_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit:          ; preds = %bb.x, %bb.w, %bb.t
  %.3204 = phi ptr [ %i.gu, %bb.t ], [ %i.if, %bb.w ], [ %i.il, %bb.x ] ; 4 uses
  %.not = icmp ult ptr %i.gi, %i.e
  br i1 %.not, label %bb.y, label %.thread351, !prof !26

bb.y:                                             ; preds = %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit
  %i.im = ptrtoint ptr %i.gi to i64
  %i.in = sub i64 %i.im, %i.h                     ; 2 uses
  %i.io = icmp sgt i64 %i.in, 7
  %i.ip = trunc i64 %i.in to i16                  ; 7 uses
  br i1 %i.io, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.iq = add i16 %i.ip, -7
  %i.ir = getelementptr inbounds i8, ptr %i.gi, i64 -7
  %.0.copyload.i274 = load i64, ptr %i.ir, align 1
  %i.is = mul i64 %.0.copyload.i274, 58295818150454627
  %i.it = lshr i64 %i.is, 49
  %i.iu = and i64 %i.it, %i.g
  %i.iv = add i64 %i.iu, %i.f
  %i.iw = inttoptr i64 %i.iv to ptr
  store i16 %i.iq, ptr %i.iw, align 2, !tbaa !28
  %i.ix = add i16 %i.ip, -4
  %i.iy = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %.0.copyload.i275 = load i64, ptr %i.iy, align 1
  %i.iz = mul i64 %.0.copyload.i275, 58295818150454627
  %i.ja = lshr i64 %i.iz, 49
  %i.jb = and i64 %i.ja, %i.g
  %i.jc = add i64 %i.jb, %i.f
  %i.jd = inttoptr i64 %i.jc to ptr
  store i16 %i.ix, ptr %i.jd, align 2, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.y, %bb.z
  %i.je = add i16 %i.ip, -3
  %i.jf = getelementptr inbounds i8, ptr %i.gi, i64 -3
  %.0.copyload.i276 = load i64, ptr %i.jf, align 1
  %i.jg = mul i64 %.0.copyload.i276, 58295818150454627
  %i.jh = lshr i64 %i.jg, 49
  %i.ji = and i64 %i.jh, %i.g
  %i.jj = add i64 %i.ji, %i.f
  %i.jk = inttoptr i64 %i.jj to ptr
  store i16 %i.je, ptr %i.jk, align 2, !tbaa !28
  %i.jl = add i16 %i.ip, -2                       ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.gi, i64 -2 ; 2 uses
  %.0.copyload.i277 = load i64, ptr %i.jm, align 1
  %i.jn = mul i64 %.0.copyload.i277, 58295818150454627
  %i.jo = lshr i64 %i.jn, 49
  %i.jp = and i64 %i.jo, %i.g
  %i.jq = add i64 %i.jp, %i.f
  %i.jr = inttoptr i64 %i.jq to ptr
  store i16 %i.jl, ptr %i.jr, align 2, !tbaa !28
  %.0.copyload.i278 = load i32, ptr %i.jm, align 1
  %i.js = mul i32 %.0.copyload.i278, -1640531535
  %i.jt = lshr i32 %i.js, 17
  %i.ju = and i32 %i.jt, %i.b
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = add i64 %i.jv, %i.i
  %i.jx = inttoptr i64 %i.jw to ptr
  store i16 %i.jl, ptr %i.jx, align 2, !tbaa !28
  %i.jy = add i16 %i.ip, -1
  %i.jz = getelementptr inbounds i8, ptr %i.gi, i64 -1
  %.0.copyload.i279 = load i32, ptr %i.jz, align 1
  %i.ka = mul i32 %.0.copyload.i279, -1640531535
  %i.kb = lshr i32 %i.ka, 17
  %i.kc = and i32 %i.kb, %i.b
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = add i64 %i.kd, %i.i
  %i.kf = inttoptr i64 %i.ke to ptr
  store i16 %i.jy, ptr %i.kf, align 2, !tbaa !28
  %.0.copyload.i280 = load i64, ptr %i.gi, align 1
  %i.kg = mul i64 %.0.copyload.i280, 58295818150454627
  %i.kh = lshr i64 %i.kg, 49
  %i.ki = and i64 %i.kh, %i.g
  %i.kj = add i64 %i.ki, %i.f
  %i.kk = inttoptr i64 %i.kj to ptr               ; 2 uses
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !28
  %i.km = zext i16 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 %i.km ; 6 uses
  store i16 %i.ip, ptr %i.kk, align 2, !tbaa !28
  %.0.copyload.i281 = load i32, ptr %i.gi, align 1 ; 2 uses
  %.0.copyload.i282 = load i32, ptr %i.kn, align 1
  %i.ko = icmp eq i32 %.0.copyload.i281, %.0.copyload.i282
  br i1 %i.ko, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_:bb.a
    i32 3, label %bb.t
  ], !prof !116

bb.e:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.af = lshr exact i32 %i.ad, 2
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ac, i64 noundef %i.al, i64 noundef %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge: ; preds = %bb.f, %bb.s, %bb.y, %bb.v
  %.0135.be = phi i32 [ %i.ei, %bb.y ], [ %i.dd, %bb.s ], [ %i.dv, %bb.v ], [ %i.ap, %bb.f ]
  %.1.be = phi ptr [ %.13, %bb.y ], [ %.8, %bb.s ], [ %i.du, %bb.v ], [ %i.an, %bb.f ]
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit, !llvm.loop !160

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %i.ad, 236
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i64 %i.ah, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = and i64 %i.as, 4294967288
  %i.au = shl nuw i64 4294967295, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %.0.copyload.i, %i.aw
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar ; 2 uses
  %.pre170 = ptrtoint ptr %i.ba to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre170, %bb.h ], [ %i.ak, %bb.g ]
  %.092 = phi i64 [ %i.az, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %.6 = phi ptr [ %i.ba, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %.pre-phi                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.092
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.0163 = phi i64 [ %i.cl, %bb.o ], [ %i.bd, %bb.i ] ; 4 uses
  %.7162 = phi ptr [ %i.ck, %bb.o ], [ %.6, %bb.i ]
  %.193161 = phi i64 [ %i.cm, %bb.o ], [ %.092, %bb.i ]
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !63
  %i.bg = add i64 %i.bf, %.0163
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !64
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %.thread148, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.not15.i.i = icmp eq i64 %.0163, 0
  br i1 %.not15.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !62
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bj = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 2 uses
  %.0917.i.i = phi ptr [ %.7162, %.lr.ph.i.i ], [ %i.bz, %bb.n ] ; 2 uses
  %storemerge16.i.i = phi i64 [ %.0163, %.lr.ph.i.i ], [ %i.ca, %bb.n ] ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %bb.k
  %.pre22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !61
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !57  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !56
  %.not11.i.i = icmp ult ptr %i.bm, %i.bn
  br i1 %.not11.i.i, label %bb.m, label %.thread148

bb.m:                                             ; preds = %bb.l
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !57
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !59 ; 2 uses
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !60 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge21.i.i
  %i.br = phi ptr [ %i.bo, %bb.m ], [ %.pre22.i.i, %._crit_edge21.i.i ]
  %i.bs = phi i64 [ %i.bq, %bb.m ], [ %i.bj, %._crit_edge21.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %storemerge16.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %.0917.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.speculated.i.i
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !61
  %i.bv = load i64, ptr %i.z, align 8, !tbaa !62
  %i.bw = sub i64 %i.bv, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bw, ptr %i.z, align 8, !tbaa !62
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !63
  %i.by = add i64 %i.bx, %.sroa.speculated.i.i
  store i64 %i.by, ptr %i.w, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 %.sroa.speculated.i.i
  %i.ca = sub nuw nsw i64 %storemerge16.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.k, !llvm.loop !5

.loopexit:                                        ; preds = %bb.n, %bb.j
  %i.cb = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cc = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.cc) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cg = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  store i64 %i.cl, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.cl, 0
  br i1 %.not119, label %.thread, label %bb.o

.thread:                                          ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread148

bb.o:                                             ; preds = %.loopexit
  %i.cm = sub nuw nsw i64 %.193161, %.0163        ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.cl, i64 4)
  %i.co = sub i64 0, %.sroa.speculated.i126
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store ptr %i.cp, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.cq = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %.193.lcssa = phi i64 [ %.092, %bb.i ], [ %i.cm, %bb.o ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.i ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cr = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.cr, label %bb.p, label %.thread148

bb.p:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.cs, %i.ct
  br i1 %.not118, label %bb.s, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !43
  %i.cu = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cu, label %bb.r, label %.thread148, !prof !26

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.cz, i64 4)
  %i.da = sub i64 0, %.sroa.speculated.i127
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 %i.da
  store ptr %i.db, ptr %i.l, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.cv, %bb.r ], [ %i.cs, %bb.p ] ; 2 uses
  %i.dc = load i8, ptr %.8, align 1, !tbaa !16
  %i.dd = zext i8 %i.dc to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %.0.copyload.i128 = load i32, ptr %i.ac, align 1
  %i.de = zext i32 %.0.copyload.i128 to i64
  %i.df = lshr i32 %i.ad, 2
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.de, i64 noundef %i.dh, ptr noundef nonnull %i.a)
  br i1 %i.di, label %bb.w, label %.thread148

bb.u:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.dj = zext nneg i32 %i.ad to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !28 ; 2 uses
  %2 = sext i16 %i.dl to i32
  %.0.copyload.i129 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.dm = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.dn = shl nsw i32 -1, %i.dm
  %i.do = xor i32 %i.dn, -1
  %i.dp = and i32 %.0.copyload.i129, %i.do
  %i.dq = and i16 %i.dl, 255                      ; 2 uses
  %3 = sub nsw i32 %i.dp, %2
  %4 = zext nneg i16 %i.dq to i64
  %5 = zext nneg i16 %i.dq to i32
  %.narrow = add nsw i32 %3, %5
  %i.dr = zext i32 %.narrow to i64
  %i.ds = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dr, i64 noundef %4, ptr noundef nonnull %i.a)
  br i1 %i.ds, label %bb.v, label %.thread148

bb.v:                                             ; preds = %bb.u
  %i.dt = zext nneg i32 %i.ae to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dt ; 3 uses
  %i.dv = lshr i32 %.0.copyload.i129, %i.dm
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not152 = icmp ult ptr %i.du, %i.dw
  br i1 %.not152, label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, label %.thread183, !prof !117

bb.w:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.dy = icmp ult ptr %i.dx, %.pre
  br i1 %i.dy, label %bb.y, label %.thread183, !prof !118

.thread183:                                       ; preds = %bb.v, %bb.w
  %.12186 = phi ptr [ %i.dx, %bb.w ], [ %i.du, %bb.v ]
  store ptr %.12186, ptr %i.c, align 8, !tbaa !43
  %i.dz = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dz, label %bb.x, label %.thread148, !prof !26

bb.x:                                             ; preds = %.thread183
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.ee, i64 4)
  %i.ef = sub i64 0, %.sroa.speculated.i130
  %i.eg = getelementptr inbounds i8, ptr %i.eb, i64 %i.ef
  store ptr %i.eg, ptr %i.l, align 8, !tbaa !114
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.13 = phi ptr [ %i.ea, %bb.x ], [ %i.dx, %bb.w ] ; 2 uses
  %i.eh = load i8, ptr %.13, align 1, !tbaa !16
  %i.ei = zext i8 %i.eh to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

.thread148:                                       ; preds = %bb.t, %._crit_edge, %bb.q, %bb.u, %.thread183, %.lr.ph, %bb.l, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = add nsw i64 %4, -64                      ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 130
  %i.h = icmp slt i64 %2, %i.c
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.thread154

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %1, i64 -129
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %0, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1, %bb.b
  %.0115 = phi ptr [ %i.j, %bb.b ], [ %i.ez, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 13 uses
  %.0108 = phi i64 [ %2, %bb.b ], [ %.4112140.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.0101 = phi ptr [ %i.b, %bb.b ], [ %.4105141.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 8 uses
  %.097 = phi i64 [ 0, %bb.b ], [ %.4142.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.eu, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0115, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.m, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.0
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28   ; 2 uses
  %i.p = sext i16 %i.o to i64                     ; 3 uses
  %i.q = lshr i64 %.0, 2                          ; 2 uses
  %i.r = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0) #23, !srcloc !119 ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0         ; 4 uses
  %i.t = extractvalue { i64, i8 } %i.r, 1         ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load volatile i8, ptr %i.w, align 1, !tbaa !16
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.s
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !16
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %i.ac = trunc nuw i8 %i.t to i1                 ; 2 uses
  %i.ad = select i1 %i.ac, i64 %i.y, i64 %i.ab    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0115, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.0115, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q
  %i.ai = select i1 %i.ac, ptr %i.ah, ptr %i.af   ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #24, !srcloc !120
  %.0.copyload.i = load i32, ptr %.0115, align 1
  %i.aj = and i64 %i.p, 255                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !18
  %i.ak = shl i64 %i.s, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %.0.copyload.i58 = load i16, ptr %i.al, align 2
  %i.am = zext i16 %.0.copyload.i58 to i32
  %i.an = and i32 %.0.copyload.i, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = sub nsw i64 %i.p, %i.ao                 ; 4 uses
  %i.aq = icmp sgt i64 %i.p, %i.ao
  br i1 %i.aq, label %bb.d, label %bb.k, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.ar = and i16 %i.o, 128
  %.not50 = icmp eq i16 %i.ar, 0
  br i1 %.not50, label %bb.e, label %.thread, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.as = add i64 %.097, %.0108                   ; 5 uses
  %i.at = sub i64 %i.as, %i.aj
  %i.au = add i64 %i.at, %i.ap
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.0108 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(32) %.0101, i64 32, i1 false)
  %i.aw = icmp samesign ugt i64 %.097, 32
  br i1 %i.aw, label %bb.f, label %_ZN6snappy9MemCopy64EPcPKvm.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0101, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ay, i64 32, i1 false)
  br label %_ZN6snappy9MemCopy64EPcPKvm.exit

_ZN6snappy9MemCopy64EPcPKvm.exit:                 ; preds = %bb.e, %bb.f
  %i.az = icmp slt i64 %i.au, 0
  br i1 %i.az, label %.thread.thread, label %bb.g, !prof !29

bb.g:                                             ; preds = %_ZN6snappy9MemCopy64EPcPKvm.exit
  %i.ba = getelementptr inbounds i8, ptr %3, i64 %i.as ; 22 uses
  %i.bb = sub nsw i64 %i.aj, %i.ap                ; 4 uses
  %i.bc = icmp ult i64 %i.bb, 16
  br i1 %i.bc, label %bb.h, label %.preheader168, !prof !26

.preheader168:                                    ; preds = %bb.g
  %i.bd = sub nsw i64 0, %i.bb                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %i.be, i64 16, i1 false)
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp eq i64 %i.aj, %i.ap
  br i1 %i.bf, label %.thread.thread, label %.preheader, !prof !29

.preheader:                                       ; preds = %bb.h
  %i.bg = sub nsw i64 0, %i.bb
  %i.bh = getelementptr inbounds i8, ptr %i.ba, i64 %i.bg ; 16 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  store i8 %i.bi, ptr %i.ba, align 1, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 11
end_hunk_1
begin_hunk_2_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !114 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !26

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !43
  %i.ad = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i125
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !16    ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !116

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.as, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  %i.az = shl nuw i64 4294967295, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.0.copyload.i, %i.bb
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.092 = phi i64 [ %i.be, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bf, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.6 to i64
  %i.bh = sub i64 %i.au, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.092
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.0213 = phi i64 [ %i.bv, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.193211 = phi i64 [ %i.bw, %bb.l ], [ %.092, %bb.j ]
  %.2146210 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0213, %.2146210               ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !77
  %.not199 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not199, label %.thread192, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !46
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bm) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bq = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  store i64 %i.bv, ptr %i.v, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.bv, 0
  br i1 %.not119, label %.thread172, label %bb.l

.thread172:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread192

bb.l:                                             ; preds = %bb.k
  %i.bw = sub nuw nsw i64 %.193211, %.0213        ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 3 uses
  store ptr %i.bx, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.bv, i64 4)
  %i.by = sub i64 0, %.sroa.speculated.i126       ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store ptr %i.bz, ptr %i.k, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ca = icmp ult i64 %i.bv, %i.bw
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !192

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.cc = phi ptr [ %i.al, %bb.j ], [ %i.cb, %._crit_edge.loopexit ]
  %.2146.lcssa = phi i64 [ %i.ab, %bb.j ], [ %i.bj, %._crit_edge.loopexit ]
  %.193.lcssa = phi i64 [ %.092, %bb.j ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.j ], [ %i.bu, %._crit_edge.loopexit ]
  %i.cd = add i64 %.193.lcssa, %.2146.lcssa       ; 5 uses
  %i.ce = load i64, ptr %1, align 8, !tbaa !77
  %.not198 = icmp ugt i64 %i.cd, %i.ce
  br i1 %.not198, label %.thread192, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %.not118 = icmp ult ptr %i.cf, %i.cc
  br i1 %.not118, label %.loopexit.backedge, label %bb.n, !prof !26

bb.n:                                             ; preds = %bb.m
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !43
  %i.cg = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cg, label %.loopexit.sink.split, label %.thread192, !prof !26

bb.o:                                             ; preds = %bb.g
  %.0.copyload.i128 = load i32, ptr %i.ao, align 1
  %i.ch = zext i32 %.0.copyload.i128 to i64
  %i.ci = add nsw i64 %i.ch, -1
  %.not.i = icmp ugt i64 %i.ab, %i.ci
  br i1 %.not.i, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.ck = lshr i32 %i.an, 2
  %i.cl = add nuw nsw i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = add i64 %i.ab, %i.cm                    ; 3 uses
  %i.co = load i64, ptr %1, align 8, !tbaa !77
  %.not197 = icmp ugt i64 %i.cn, %i.co
  br i1 %.not197, label %.thread192, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.cp = zext i8 %i.am to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !28 ; 2 uses
  %2 = sext i16 %i.cr to i32
  %.0.copyload.i129 = load i32, ptr %i.ao, align 1
  %i.cs = shl nuw nsw i32 %i.ap, 3
  %i.ct = shl nsw i32 -1, %i.cs
  %i.cu = xor i32 %i.ct, -1
  %i.cv = and i32 %.0.copyload.i129, %i.cu
  %i.cw = and i16 %i.cr, 255                      ; 2 uses
  %3 = sub nsw i32 %i.cv, %2
  %4 = zext nneg i16 %i.cw to i32
  %.narrow = add nsw i32 %3, %4
  %i.cx = zext i32 %.narrow to i64
  %i.cy = add nsw i64 %i.cx, -1
  %.not.i130 = icmp ugt i64 %i.ab, %i.cy
  br i1 %.not.i130, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132: ; preds = %bb.p
  %5 = zext nneg i16 %i.cw to i64
  %i.cz = add i64 %i.ab, %5                       ; 4 uses
  %i.da = load i64, ptr %1, align 8, !tbaa !77
  %.not200 = icmp ugt i64 %i.cz, %i.da
  br i1 %.not200, label %.thread192, label %bb.q

bb.q:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132
  %i.db = zext nneg i32 %i.ap to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.db ; 3 uses
  %.not201 = icmp ult ptr %i.dc, %i.al
  br i1 %.not201, label %.loopexit.backedge, label %bb.r

bb.r:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.q
  %.4 = phi i64 [ %i.cz, %bb.q ], [ %i.cn, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.12 = phi ptr [ %i.dc, %bb.q ], [ %i.cj, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.not117 = icmp ult ptr %.12, %i.al
  br i1 %.not117, label %.loopexit.backedge, label %bb.s, !prof !26

bb.s:                                             ; preds = %bb.r
  store ptr %.12, ptr %i.b, align 8, !tbaa !43
  %i.dd = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dd, label %.loopexit.sink.split, label %.thread192, !prof !26

.loopexit.sink.split:                             ; preds = %bb.s, %bb.n
  %.5148.ph = phi i64 [ %i.cd, %bb.n ], [ %.4, %bb.s ]
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  %.sroa.speculated.i133 = call i64 @llvm.smin.i64(i64 %i.di, i64 4)
  %i.dj = sub i64 0, %.sroa.speculated.i133
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 %i.dj
  store ptr %i.dk, ptr %i.k, align 8, !tbaa !114
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.sink.split, %bb.r, %bb.m, %bb.q
  %.0144.be = phi i64 [ %i.cd, %bb.m ], [ %i.cz, %bb.q ], [ %.4, %bb.r ], [ %.5148.ph, %.loopexit.sink.split ]
  %.1.be = phi ptr [ %i.cf, %bb.m ], [ %i.dc, %bb.q ], [ %.12, %bb.r ], [ %i.de, %.loopexit.sink.split ]
  br label %.loopexit

.thread192:                                       ; preds = %bb.n, %._crit_edge, %bb.p, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, %bb.o, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.s, %bb.e, %.lr.ph, %.thread172, %bb.b
  %.6149 = phi i64 [ %i.m, %bb.b ], [ %i.bj, %.thread172 ], [ %i.bj, %.lr.ph ], [ %i.cd, %bb.n ], [ %i.cd, %._crit_edge ], [ %i.cz, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132 ], [ %i.cn, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ], [ %.4, %bb.s ], [ %i.ab, %bb.o ], [ %i.ab, %bb.e ], [ %i.ab, %bb.p ]
  store i64 %.6149, ptr %i.l, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = add nsw i64 %4, -64                      ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 130
  %i.g = icmp slt i64 %2, %i.b
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.thread144

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -129
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %0, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %.0111 = phi ptr [ %i.i, %bb.b ], [ %i.bv, %bb.m ] ; 9 uses
  %.0104 = phi i64 [ %2, %bb.b ], [ %.4108132.1, %bb.m ] ; 4 uses
  %.093 = phi i64 [ 0, %bb.b ], [ %.4133.1, %bb.m ] ; 4 uses
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.bq, %bb.m ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0111, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.l, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.0
  %i.n = load i16, ptr %i.m, align 2, !tbaa !28   ; 2 uses
  %i.o = sext i16 %i.n to i64                     ; 3 uses
  %i.p = lshr i64 %.0, 2                          ; 2 uses
  %i.q = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0) #23, !srcloc !119 ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0         ; 4 uses
  %i.s = extractvalue { i64, i8 } %i.q, 1         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load volatile i8, ptr %i.v, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.r
  %i.z = load volatile i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = trunc nuw i8 %i.s to i1                 ; 2 uses
  %i.ac = select i1 %i.ab, i64 %i.x, i64 %i.aa    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.r
  %i.af = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.p
  %i.ah = select i1 %i.ab, ptr %i.ag, ptr %i.ae   ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #24, !srcloc !120
  %.0.copyload.i = load i32, ptr %.0111, align 1
  %i.ai = and i64 %i.o, 255                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !18
  %i.aj = shl i64 %i.r, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %.0.copyload.i58 = load i16, ptr %i.ak, align 2
  %i.al = zext i16 %.0.copyload.i58 to i32
  %i.am = and i32 %.0.copyload.i, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = sub nsw i64 %i.o, %i.an                 ; 3 uses
  %i.ap = icmp sgt i64 %i.o, %i.an
  br i1 %i.ap, label %bb.d, label %bb.f, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.aq = and i16 %i.n, 128
  %.not50 = icmp eq i16 %i.aq, 0
  br i1 %.not50, label %bb.e, label %.thread134.loopexit, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.ar = add i64 %.093, %.0104                   ; 3 uses
  %i.as = sub i64 %i.ar, %i.ai
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp slt i64 %i.at, 0
  %.not = icmp eq i64 %i.ai, %i.ao
  %or.cond156 = select i1 %i.au, i1 true, i1 %.not, !prof !122
  br i1 %or.cond156, label %.thread134.thread, label %.thread126, !prof !122

.thread126:                                       ; preds = %bb.e
  %i.av = add i64 %i.ai, %i.ar
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.aw = add i64 %.093, %.0104                   ; 3 uses
  %i.ax = sub i64 %i.aw, %i.ai
  %i.ay = add i64 %i.ax, %i.ao
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h, !prof !29

bb.g:                                             ; preds = %bb.f
  %.not49 = icmp eq i64 %i.r, 0
  br i1 %.not49, label %bb.h, label %.thread134.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread126
  %.4133 = phi i64 [ 0, %.thread126 ], [ %i.ai, %bb.f ], [ %i.ai, %bb.g ] ; 4 uses
  %.4108132 = phi i64 [ %i.av, %.thread126 ], [ %i.aw, %bb.f ], [ %i.aw, %bb.g ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ac
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !28 ; 2 uses
  %i.bc = sext i16 %i.bb to i64                   ; 3 uses
  %i.bd = lshr i64 %i.ac, 2                       ; 2 uses
  %i.be = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ac) #23, !srcloc !119 ; 2 uses
  %i.bf = extractvalue { i64, i8 } %i.be, 0       ; 4 uses
  %i.bg = extractvalue { i64, i8 } %i.be, 1       ; 2 uses
  %i.bh = icmp ult i8 %i.bg, 2
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load volatile i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf
  %i.bn = load volatile i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = zext i8 %i.bn to i64                    ; 2 uses
  %i.bp = trunc nuw i8 %i.bg to i1                ; 2 uses
  %i.bq = select i1 %i.bp, i64 %i.bl, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bf
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bd
  %i.bv = select i1 %i.bp, ptr %i.bu, ptr %i.bs   ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.bo) #24, !srcloc !120
  %.0.copyload.i.1 = load i32, ptr %i.ah, align 1
  %i.bw = and i64 %i.bc, 255                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !18
  %i.bx = shl i64 %i.bf, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %.0.copyload.i58.1 = load i16, ptr %i.by, align 2
  %i.bz = zext i16 %.0.copyload.i58.1 to i32
  %i.ca = and i32 %.0.copyload.i.1, %i.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = sub nsw i64 %i.bc, %i.cb                ; 3 uses
  %i.cd = icmp sgt i64 %i.bc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.ce = add i64 %.4133, %.4108132               ; 3 uses
  %i.cf = sub i64 %i.ce, %i.bw
  %i.cg = add i64 %i.cf, %i.cc
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %bb.m, !prof !29

bb.j:                                             ; preds = %bb.i
  %.not49.1 = icmp eq i64 %i.bf, 0
  br i1 %.not49.1, label %bb.m, label %.thread134.loopexit

bb.k:                                             ; preds = %bb.h
  %i.ci = and i16 %i.bb, 128
  %.not50.1 = icmp eq i16 %i.ci, 0
  br i1 %.not50.1, label %bb.l, label %.thread134.loopexit, !prof !26

bb.l:                                             ; preds = %bb.k
  %i.cj = add i64 %.4133, %.4108132               ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ba = lshr exact i32 %i.ay, 2
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.1147.ph to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = icmp samesign ult i32 %i.ay, 64
  %i.bm = icmp ugt i64 %i.bg, 20
  %or.cond.i129 = and i1 %i.bl, %i.bm
  %i.bn = icmp ugt i64 %i.bk, 15
  %or.cond3.i = select i1 %or.cond.i129, i1 %i.bn, i1 false
  br i1 %or.cond3.i, label %bb.k, label %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1147.ph, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = zext i8 %i.bq to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge: ; preds = %bb.k, %bb.s, %bb.af, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.0156.be = phi i32 [ %i.fy, %bb.af ], [ %i.fm, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.br, %bb.k ], [ %i.dl, %bb.s ]
  %.0146.be = phi ptr [ %.4, %bb.af ], [ %i.es, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bo, %bb.k ], [ %i.cz, %bb.s ]
  %.1.be = phi ptr [ %.13, %bb.af ], [ %i.fl, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bp, %bb.k ], [ %.8, %bb.s ]
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125, !llvm.loop !194

_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.j
  %i.bs = icmp samesign ugt i32 %i.ay, 236
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %i.bt = add nsw i64 %i.bc, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ax, align 1
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 4294967288
  %i.bw = shl nuw i64 4294967295, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i32 %.0.copyload.i, %i.by
  %i.ca = add i32 %i.bz, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bt ; 2 uses
  %.pre238 = ptrtoint ptr %i.cc to i64
  %.pre239 = sub i64 %i.be, %.pre238
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %.pre-phi240 = phi i64 [ %.pre239, %bb.l ], [ %i.bg, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cb, %bb.l ], [ %i.bc, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.cc, %bb.l ], [ %i.ax, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.cd = icmp ult i64 %.pre-phi240, %.092
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.0227 = phi i64 [ %i.ct, %bb.o ], [ %.pre-phi240, %bb.m ] ; 4 uses
  %.7226 = phi ptr [ %i.cs, %bb.o ], [ %.6, %bb.m ]
  %.193225 = phi i64 [ %i.cu, %bb.o ], [ %.092, %bb.m ]
  %.2148224 = phi ptr [ %i.ci, %bb.o ], [ %.1147.ph, %bb.m ] ; 4 uses
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %.2148224 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %.not215 = icmp ult i64 %i.ch, %.0227
  br i1 %.not215, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148224, ptr align 1 %.7226, i64 %.0227, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.2148224, i64 %.0227 ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ck = load i64, ptr %i.z, align 8, !tbaa !46
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.ck) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.co = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !18  ; 6 uses
  store i64 %i.ct, ptr %i.z, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.ct, 0
  br i1 %.not119, label %.thread183, label %bb.o

.thread183:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209

bb.o:                                             ; preds = %bb.n
  %i.cu = sub nuw nsw i64 %.193225, %.0227        ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct ; 2 uses
  store ptr %i.cv, ptr %i.d, align 8, !tbaa !44
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.ct, i64 4)
  %i.cw = sub i64 0, %.sroa.speculated.i130
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  store ptr %i.cx, ptr %i.k, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cy = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cy, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !70
  %.pre241 = ptrtoint ptr %.pre to i64
  %.pre243 = ptrtoint ptr %i.ci to i64
  %.pre245 = sub i64 %.pre241, %.pre243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi246 = phi i64 [ %.pre245, %._crit_edge.loopexit ], [ %i.bk, %bb.m ]
  %.2148.lcssa = phi ptr [ %i.ci, %._crit_edge.loopexit ], [ %.1147.ph, %bb.m ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.cu, %._crit_edge.loopexit ], [ %.092, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.cs, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not214 = icmp ult i64 %.pre-phi246, %.193.lcssa
  br i1 %.not214, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148.lcssa, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.2148.lcssa, i64 %.193.lcssa ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.db = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.da, %i.db
  br i1 %.not118, label %bb.s, label %bb.q, !prof !26

bb.q:                                             ; preds = %bb.p
  store ptr %i.da, ptr %i.b, align 8, !tbaa !43
  %i.dc = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dc, label %bb.r, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.sroa.speculated.i132 = call i64 @llvm.smin.i64(i64 %i.dh, i64 4)
  %i.di = sub i64 0, %.sroa.speculated.i132
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 %i.di
  store ptr %i.dj, ptr %i.k, align 8, !tbaa !114
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.dd, %bb.r ], [ %i.da, %bb.p ] ; 2 uses
  %i.dk = load i8, ptr %.8, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i133 = load i32, ptr %i.ax, align 1 ; 3 uses
  %i.dm = zext i32 %.0.copyload.i133 to i64       ; 3 uses
  %i.dn = lshr i32 %i.ay, 2                       ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 2 uses
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 4 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !68
  %i.dt = ptrtoint ptr %.1147.ph to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dm
  br i1 %i.dw, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.dy = icmp uge ptr %.1147.ph, %i.dx
  %i.dz = icmp ule i32 %.0.copyload.i133, %i.dn
  %i.ea = or i1 %i.dz, %i.dy
  br i1 %i.ea, label %bb.v, label %bb.x, !prof !29

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.ec = icmp ugt ptr %i.dr, %i.eb
  %i.ed = icmp eq i32 %.0.copyload.i133, 0
  %or.cond.i124 = or i1 %i.ed, %i.ec
  br i1 %or.cond.i124, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = sub nsw i64 0, %i.dm
  %i.ef = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.ee
  %i.eg = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ef, ptr noundef %.1147.ph, ptr noundef nonnull %i.dr, ptr noundef %i.eb) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.x:                                             ; preds = %bb.u
  %i.eh = sub nsw i64 0, %i.dm
  %i.ei = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.eh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.ei, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.y:                                             ; preds = %bb.i
  %i.ej = zext nneg i32 %i.ay to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !28 ; 2 uses
  %2 = sext i16 %i.el to i32
  %.0.copyload.i134 = load i32, ptr %i.ax, align 1 ; 2 uses
  %i.em = shl nuw nsw i32 %i.az, 3                ; 2 uses
  %i.en = shl nsw i32 -1, %i.em
  %i.eo = xor i32 %i.en, -1
  %i.ep = and i32 %.0.copyload.i134, %i.eo
  %i.eq = and i16 %i.el, 255                      ; 2 uses
  %3 = sub nsw i32 %i.ep, %2
  %4 = zext nneg i16 %i.eq to i64                 ; 2 uses
  %5 = zext nneg i16 %i.eq to i32
  %.narrow = add nsw i32 %3, %5                   ; 2 uses
  %i.er = zext i32 %.narrow to i64                ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %4 ; 4 uses
  %i.et = load ptr, ptr %1, align 8, !tbaa !68
  %i.eu = ptrtoint ptr %.1147.ph to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.er
  br i1 %i.ex, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.z, !prof !29

bb.z:                                             ; preds = %bb.y
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.ez = icmp uge ptr %.1147.ph, %i.ey
  %i.fa = icmp samesign ult i64 %i.er, %4
  %i.fb = or i1 %i.fa, %i.ez
  br i1 %i.fb, label %bb.aa, label %bb.ac, !prof !29

bb.aa:                                            ; preds = %bb.z
  %i.fc = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.fd = icmp ugt ptr %i.es, %i.fc
  %i.fe = icmp eq i32 %.narrow, 0
  %or.cond.i = or i1 %i.fe, %i.fd
  br i1 %or.cond.i, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = sub nsw i64 0, %i.er
  %i.fg = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.ff
  %i.fh = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fg, ptr noundef %.1147.ph, ptr noundef %i.es, ptr noundef %i.fc) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

bb.ac:                                            ; preds = %bb.z
  %i.fi = sub nsw i64 0, %i.er
  %i.fj = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.fj, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit: ; preds = %bb.ab, %bb.ac
  %i.fk = zext nneg i32 %i.az to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fk ; 3 uses
  %i.fm = lshr i32 %.0.copyload.i134, %i.em
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not216 = icmp ult ptr %i.fl, %i.fn
  br i1 %.not216, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194: ; preds = %bb.w, %bb.x, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.4 = phi ptr [ %i.es, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.dr, %bb.w ], [ %i.dr, %bb.x ] ; 2 uses
  %.12 = phi ptr [ %i.fl, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 3 uses
  %i.fo = load ptr, ptr %i.k, align 8, !tbaa !114
  %.not117 = icmp ult ptr %.12, %i.fo
  br i1 %.not117, label %bb.af, label %bb.ad, !prof !26

bb.ad:                                            ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  store ptr %.12, ptr %i.b, align 8, !tbaa !43
  %i.fp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fp, label %bb.ae, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !26

bb.ae:                                            ; preds = %bb.ad
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %.sroa.speculated.i135 = call i64 @llvm.smin.i64(i64 %i.fu, i64 4)
  %i.fv = sub i64 0, %.sroa.speculated.i135
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv
  store ptr %i.fw, ptr %i.k, align 8, !tbaa !114
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  %.13 = phi ptr [ %i.fq, %bb.ae ], [ %.12, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194 ] ; 2 uses
  %i.fx = load i8, ptr %.13, align 1, !tbaa !16
  %i.fy = zext i8 %i.fx to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209: ; preds = %bb.q, %._crit_edge, %bb.aa, %bb.y, %bb.t, %bb.v, %bb.ad, %bb.f, %.lr.ph, %.thread183, %bb.b
  %.6151 = phi ptr [ %i.m, %bb.b ], [ %i.ci, %.thread183 ], [ %.2148224, %.lr.ph ], [ %.2148.lcssa, %._crit_edge ], [ %i.cz, %bb.q ], [ %.1147.ph, %bb.y ], [ %.1147.ph, %bb.v ], [ %.1147.ph, %bb.t ], [ %.4, %bb.ad ], [ %i.al, %bb.f ], [ %.1147.ph, %bb.aa ]
  store ptr %.6151, ptr %i.l, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.n, ptr %i.a, align 8, !tbaa !115
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.o, label %bb.c, label %.thread178, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i124
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.091, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0141 = phi i32 [ %i.x, %bb.d ], [ %.0141.be, %.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !106 ; 4 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !123
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ah, i64 noundef %i.ak, ptr noundef nonnull %i.ac, i64 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !115
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not116 = icmp ult ptr %i.am, %i.ap
  br i1 %.not116, label %bb.i, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !43
  %i.aq = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.aq, label %bb.h, label %.thread178, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.av, i64 4)
  %i.aw = sub i64 0, %.sroa.speculated.i125
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.2 = phi ptr [ %i.ar, %bb.h ], [ %i.am, %bb.f ] ; 2 uses
  %i.ay = load i8, ptr %.2, align 1, !tbaa !16
  %i.az = zext i8 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.2143.ph = phi i32 [ %i.az, %bb.i ], [ %.0141, %bb.e ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.i ], [ %.1, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.bb = and i32 %.2143.ph, 255                  ; 5 uses
  %i.bc = and i32 %.2143.ph, 3                    ; 3 uses
  switch i32 %i.bc, label %bb.v [
    i32 0, label %bb.k
    i32 3, label %bb.u
  ], !prof !116

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr exact i32 %i.bb, 2
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !115 ; 4 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !124
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp samesign ult i32 %i.bb, 64
  %i.br = icmp ugt i64 %i.bj, 20
  %or.cond.i = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %i.bp, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.l, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !115
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = zext i8 %i.bv to i32
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.ad, %bb.aa
  %.0141.be = phi i32 [ %i.fv, %bb.ad ], [ %i.dw, %bb.t ], [ %i.fi, %bb.aa ], [ %i.bw, %bb.l ]
  %.1.be = phi ptr [ %.13, %bb.ad ], [ %.8, %bb.t ], [ %i.fh, %bb.aa ], [ %i.bu, %bb.l ]
  br label %bb.e, !llvm.loop !196

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.k
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !29

bb.m:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %i.by = add nsw i64 %i.bf, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ba, align 1
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = and i64 %i.bz, 4294967288
  %i.cb = shl nuw i64 4294967295, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %.0.copyload.i, %i.cd
  %i.cf = add i32 %i.ce, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by ; 2 uses
  %.pre198 = ptrtoint ptr %i.ch to i64
  %.pre199 = sub i64 %i.bh, %.pre198
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi200 = phi i64 [ %.pre199, %bb.m ], [ %i.bj, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cg, %bb.m ], [ %i.bf, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ch, %bb.m ], [ %i.ba, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ci = icmp ult i64 %.pre-phi200, %.092
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.0190 = phi i64 [ %i.db, %bb.p ], [ %.pre-phi200, %bb.n ] ; 5 uses
  %.7189 = phi ptr [ %i.da, %bb.p ], [ %.6, %bb.n ] ; 2 uses
  %.193188 = phi i64 [ %i.dc, %bb.p ], [ %.092, %bb.n ]
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !115 ; 4 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !124
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.not.i = icmp ugt i64 %.0190, %i.cn
  br i1 %.not.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.7189, i64 %.0190, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0190
  store ptr %i.co, ptr %i.a, align 8, !tbaa !115
  br label %bb.o

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !107
  %i.cp = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7189, i64 noundef %.0190)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !115
  br i1 %i.cp, label %bb.o, label %.thread178

bb.o:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cs = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 noundef %i.cs) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cw = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  store i64 %i.db, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.db, 0
  br i1 %.not119, label %.thread163, label %bb.p

.thread163:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread178

bb.p:                                             ; preds = %bb.o
  %i.dc = sub nuw nsw i64 %.193188, %.0190        ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.db, i64 4)
  %i.de = sub i64 0, %.sroa.speculated.i126
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  store ptr %i.df, ptr %i.l, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.dg = icmp ult i64 %i.db, %i.dc
  br i1 %i.dg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %.pre195 = load ptr, ptr %i.aa, align 8, !tbaa !124
  %.pre201 = ptrtoint ptr %.pre195 to i64
  %.pre203 = ptrtoint ptr %.pre to i64
  %.pre205 = sub i64 %.pre201, %.pre203
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi206 = phi i64 [ %.pre205, %._crit_edge.loopexit ], [ %i.bo, %bb.n ]
  %i.dh = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.n ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.dc, %._crit_edge.loopexit ], [ %.092, %bb.n ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.da, %._crit_edge.loopexit ], [ %.6, %bb.n ] ; 3 uses
  %.not.i127 = icmp ugt i64 %.193.lcssa, %.pre-phi206
  br i1 %.not.i127, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.193.lcssa
  store ptr %i.di, ptr %i.a, align 8, !tbaa !115
  br label %bb.q

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130: ; preds = %._crit_edge
  store ptr %i.dh, ptr %i.m, align 8, !tbaa !107
  %i.dj = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa)
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !115
  br i1 %i.dj, label %bb.q, label %.thread178

bb.q:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130
  %i.dl = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not118 = icmp ult ptr %i.dl, %i.dm
  br i1 %.not118, label %bb.t, label %bb.r, !prof !26

bb.r:                                             ; preds = %bb.q
  store ptr %i.dl, ptr %i.c, align 8, !tbaa !43
  %i.dn = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dn, label %bb.s, label %.thread178, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %.sroa.speculated.i131 = call i64 @llvm.smin.i64(i64 %i.ds, i64 4)
  %i.dt = sub i64 0, %.sroa.speculated.i131
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 %i.dt
  store ptr %i.du, ptr %i.l, align 8, !tbaa !114
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.do, %bb.s ], [ %i.dl, %bb.q ] ; 2 uses
  %i.dv = load i8, ptr %.8, align 1, !tbaa !16
  %i.dw = zext i8 %i.dv to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i132 = load i32, ptr %i.ba, align 1
  %i.dx = zext i32 %.0.copyload.i132 to i64
  %i.dy = lshr i32 %i.bb, 2
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dx, i64 noundef %i.ea, ptr noundef nonnull %i.a)
  br i1 %i.eb, label %bb.ab, label %.thread178

bb.v:                                             ; preds = %bb.j
  %i.ec = zext nneg i32 %i.bb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !28 ; 2 uses
  %2 = sext i16 %i.ee to i32
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ef = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.eg = shl nsw i32 -1, %i.ef
  %i.eh = xor i32 %i.eg, -1
  %i.ei = and i32 %.0.copyload.i133, %i.eh
  %i.ej = and i16 %i.ee, 255                      ; 2 uses
  %3 = sub nsw i32 %i.ei, %2
  %4 = zext nneg i16 %i.ej to i64                 ; 4 uses
  %5 = zext nneg i16 %i.ej to i32
  %.narrow = add nsw i32 %3, %5                   ; 2 uses
  %i.ek = zext i32 %.narrow to i64                ; 5 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !115 ; 9 uses
  %i.em = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.ek               ; 2 uses
  %i.er = load ptr, ptr %i.y, align 8
  %.not.i134 = icmp uge ptr %i.el, %i.er
  %or.cond.not.i = select i1 %i.eq, i1 true, i1 %.not.i134, !prof !122
  %i.es = icmp samesign ult i64 %i.ek, %4
  %i.et = or i1 %i.es, %or.cond.not.i
  br i1 %i.et, label %bb.w, label %bb.z, !prof !29

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp eq i32 %.narrow, 0
  br i1 %i.eu, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %4 ; 3 uses
  %i.ew = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ex = icmp ugt ptr %i.ev, %i.ew
  %or.cond35.i = select i1 %i.eq, i1 true, i1 %i.ex, !prof !122
  br i1 %or.cond35.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !122

bb.y:                                             ; preds = %bb.x
  %i.ey = sub nsw i64 0, %i.ek
  %i.ez = getelementptr inbounds i8, ptr %i.el, i64 %i.ey
  %i.fa = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ez, ptr noundef %i.el, ptr noundef %i.ev, ptr noundef %i.ew) ; 0 uses
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

bb.z:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 %4
  %i.fc = sub nsw i64 0, %i.ek
  %i.fd = getelementptr inbounds i8, ptr %i.el, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.el, ptr noundef nonnull align 1 dereferenceable(64) %i.fd, i64 64, i1 false)
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.ev, %bb.y ], [ %i.fb, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !115
  br label %bb.aa

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.el, ptr %i.m, align 8, !tbaa !107
  %i.fe = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ek, i64 noundef %4)
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !115
  br i1 %i.fe, label %bb.aa, label %.thread178

bb.aa:                                            ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168
  %i.fg = zext nneg i32 %i.bc to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fg ; 3 uses
  %i.fi = lshr i32 %.0.copyload.i133, %i.ef
  %i.fj = load ptr, ptr %i.l, align 8, !tbaa !114
  %.not182 = icmp ult ptr %i.fh, %i.fj
  br i1 %.not182, label %.backedge, label %.thread, !prof !117

bb.ab:                                            ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre197 = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.fl = icmp ult ptr %i.fk, %.pre197
  br i1 %i.fl, label %bb.ad, label %.thread, !prof !118

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.12226 = phi ptr [ %i.fk, %bb.ab ], [ %i.fh, %bb.aa ]
  store ptr %.12226, ptr %i.c, align 8, !tbaa !43
  %i.fm = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fm, label %bb.ac, label %.thread178, !prof !26

bb.ac:                                            ; preds = %.thread
  %i.fn = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %.sroa.speculated.i136 = call i64 @llvm.smin.i64(i64 %i.fr, i64 4)
  %i.fs = sub i64 0, %.sroa.speculated.i136
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs
  store ptr %i.ft, ptr %i.l, align 8, !tbaa !114
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.fn, %bb.ac ], [ %i.fk, %bb.ab ] ; 2 uses
  %i.fu = load i8, ptr %.13, align 1, !tbaa !16
  %i.fv = zext i8 %i.fu to i32
  br label %.backedge

.thread178:                                       ; preds = %bb.u, %bb.r, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, %bb.w, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread163, %bb.b
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !115
  store ptr %i.fw, ptr %i.m, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !115    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !122
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.e, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %or.cond35 = select i1 %i.g, i1 true, i1 %i.p, !prof !122
  br i1 %or.cond35, label %.critedge, label %bb.d, !prof !122

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.q, align 8, !tbaa !107
  %i.r = tail call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !107
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.t = sub i64 0, %1
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = tail call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.u, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.x = sub i64 0, %1
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.y, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.d, %bb.e
  %.sink = phi ptr [ %i.w, %bb.e ], [ %i.m, %bb.d ], [ %i.s, %.critedge ]
  %.0.ph = phi i1 [ true, %bb.e ], [ true, %bb.d ], [ %i.r, %.critedge ]
  store ptr %.sink, ptr %3, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !107
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !107
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !108
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !108
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN6snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 4 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !106
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !107
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !124
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !123
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !199 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !115
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !199
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !113 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
end_hunk_3
