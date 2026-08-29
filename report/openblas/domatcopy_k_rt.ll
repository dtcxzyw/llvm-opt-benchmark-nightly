Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/domatcopy_k_rt?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @domatcopy_k_rt(i64 noundef %0, i64 noundef %1, double noundef %2, ptr nofree noundef readonly %3, i64 noundef %4, ptr nofree noundef writeonly %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %0, 2                           ; 7 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit330, label %.preheader329

.preheader329:                                    ; preds = %bb.b
  %.idx = shl nsw i64 %4, 5                       ; 5 uses
  %i.d = lshr i64 %1, 2                           ; 2 uses
  %.not310 = icmp eq i64 %i.d, 0
  %i.e = and i64 %1, 2
  %.not311 = icmp eq i64 %i.e, 0                  ; 2 uses
  %i.f = and i64 %1, 1
  %.not313 = icmp eq i64 %i.f, 0                  ; 3 uses
  %i.g = shl nsw i64 %6, 2                        ; 4 uses
  %.idx312 = shl nsw i64 %6, 4                    ; 2 uses
  br i1 %.not310, label %.preheader329.split.us, label %.preheader327

.preheader329.split.us:                           ; preds = %.preheader329
  br i1 %.not311, label %.preheader329.split.us.split.us, label %.preheader329.split.us.split

.preheader329.split.us.split.us:                  ; preds = %.preheader329.split.us
  br i1 %.not313, label %.preheader329.split.us.split.us.split.us.preheader, label %.preheader329.split.us.split.us.split.preheader

.preheader329.split.us.split.us.split.preheader:  ; preds = %.preheader329.split.us.split.us
  %i.h = and i64 %0, 4
  %lcmp.mod.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not, label %.preheader329.split.us.split.us.split.prol.loopexit, label %.preheader329.split.us.split.us.split.prol

.preheader329.split.us.split.us.split.prol:       ; preds = %.preheader329.split.us.split.us.split.preheader
  %i.i = getelementptr inbounds [8 x i8], ptr %3, i64 %4 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %4 ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %4
  %i.l = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.n = load double, ptr %3, align 8, !tbaa !8
  %i.o = fmul double %2, %i.n
  store double %i.o, ptr %5, align 8, !tbaa !8
  %i.p = load double, ptr %i.i, align 8, !tbaa !8
  %i.q = fmul double %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.q, ptr %i.r, align 8, !tbaa !8
  %i.s = load double, ptr %i.j, align 8, !tbaa !8
  %i.t = fmul double %2, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.t, ptr %i.u, align 8, !tbaa !8
  %i.v = load double, ptr %i.k, align 8, !tbaa !8
  %i.w = fmul double %2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %i.w, ptr %i.x, align 8, !tbaa !8
  %i.y = add nsw i64 %i.c, -1
  br label %.preheader329.split.us.split.us.split.prol.loopexit

.preheader329.split.us.split.us.split.prol.loopexit: ; preds = %.preheader329.split.us.split.us.split.prol, %.preheader329.split.us.split.us.split.preheader
  %.0301.us.us.unr = phi i64 [ %i.c, %.preheader329.split.us.split.us.split.preheader ], [ %i.y, %.preheader329.split.us.split.us.split.prol ]
  %.0295.us.us.unr = phi ptr [ %3, %.preheader329.split.us.split.us.split.preheader ], [ %i.l, %.preheader329.split.us.split.us.split.prol ]
  %.0271.us.us.unr = phi ptr [ %5, %.preheader329.split.us.split.us.split.preheader ], [ %i.m, %.preheader329.split.us.split.us.split.prol ]
  %.lcssa427.unr = phi ptr [ poison, %.preheader329.split.us.split.us.split.preheader ], [ %i.l, %.preheader329.split.us.split.us.split.prol ]
  %.lcssa426.unr = phi ptr [ poison, %.preheader329.split.us.split.us.split.preheader ], [ %i.m, %.preheader329.split.us.split.us.split.prol ]
  %i.z = icmp eq i64 %i.c, 1
  br i1 %i.z, label %.loopexit330, label %.preheader329.split.us.split.us.split

.preheader329.split.us.split.us.split.us.preheader: ; preds = %.preheader329.split.us.split.us
  %i.aa = shl i64 %i.c, 5                         ; 2 uses
  %7 = mul i64 %4, %i.aa
  %scevgep = getelementptr i8, ptr %3, i64 %7
  %scevgep373 = getelementptr i8, ptr %5, i64 %i.aa
  br label %.loopexit330

.preheader329.split.us.split.us.split:            ; preds = %.preheader329.split.us.split.us.split.prol.loopexit, %.preheader329.split.us.split.us.split
  %.0301.us.us = phi i64 [ %i.bh, %.preheader329.split.us.split.us.split ], [ %.0301.us.us.unr, %.preheader329.split.us.split.us.split.prol.loopexit ] ; 2 uses
  %.0295.us.us = phi ptr [ %i.au, %.preheader329.split.us.split.us.split ], [ %.0295.us.us.unr, %.preheader329.split.us.split.us.split.prol.loopexit ] ; 3 uses
  %.0271.us.us = phi ptr [ %i.av, %.preheader329.split.us.split.us.split ], [ %.0271.us.us.unr, %.preheader329.split.us.split.us.split.prol.loopexit ] ; 9 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0295.us.us, i64 %4 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %4 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %4
  %i.ae = getelementptr inbounds i8, ptr %.0295.us.us, i64 %.idx ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 32
  %i.ag = load double, ptr %.0295.us.us, align 8, !tbaa !8
  %i.ah = fmul double %2, %i.ag
  store double %i.ah, ptr %.0271.us.us, align 8, !tbaa !8
  %i.ai = load double, ptr %i.ab, align 8, !tbaa !8
  %i.aj = fmul double %2, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 8
  store double %i.aj, ptr %i.ak, align 8, !tbaa !8
  %i.al = load double, ptr %i.ac, align 8, !tbaa !8
  %i.am = fmul double %2, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 16
  store double %i.am, ptr %i.an, align 8, !tbaa !8
  %i.ao = load double, ptr %i.ad, align 8, !tbaa !8
  %i.ap = fmul double %2, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 24
  store double %i.ap, ptr %i.aq, align 8, !tbaa !8
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %4 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %4 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %4
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 %.idx ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 64 ; 2 uses
  %i.aw = load double, ptr %i.ae, align 8, !tbaa !8
  %i.ax = fmul double %2, %i.aw
  store double %i.ax, ptr %i.af, align 8, !tbaa !8
  %i.ay = load double, ptr %i.ar, align 8, !tbaa !8
  %i.az = fmul double %2, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 40
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %i.bb = load double, ptr %i.as, align 8, !tbaa !8
  %i.bc = fmul double %2, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 48
  store double %i.bc, ptr %i.bd, align 8, !tbaa !8
  %i.be = load double, ptr %i.at, align 8, !tbaa !8
  %i.bf = fmul double %2, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.0271.us.us, i64 56
  store double %i.bf, ptr %i.bg, align 8, !tbaa !8
  %i.bh = add nsw i64 %.0301.us.us, -2
  %i.bi = icmp sgt i64 %.0301.us.us, 2
  br i1 %i.bi, label %.preheader329.split.us.split.us.split, label %.loopexit330, !llvm.loop !10

.preheader329.split.us.split:                     ; preds = %.preheader329.split.us, %bb.d
  %.0301.us = phi i64 [ %i.df, %bb.d ], [ %i.c, %.preheader329.split.us ] ; 2 uses
  %.0295.us = phi ptr [ %i.bm, %bb.d ], [ %3, %.preheader329.split.us ] ; 5 uses
  %.0271.us = phi ptr [ %i.bo, %bb.d ], [ %5, %.preheader329.split.us ] ; 7 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0295.us, i64 %4 ; 4 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %4 ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.0295.us, i64 %.idx ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0271.us, i64 %6 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0271.us, i64 32 ; 2 uses
  %i.bp = load double, ptr %.0295.us, align 8, !tbaa !8
  %i.bq = fmul double %2, %i.bp
  store double %i.bq, ptr %.0271.us, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %.0295.us, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8
  %i.bt = fmul double %2, %i.bs
  store double %i.bt, ptr %i.bn, align 8, !tbaa !8
  %i.bu = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bv = fmul double %2, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.0271.us, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !8
  %i.bz = fmul double %2, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.bz, ptr %i.ca, align 8, !tbaa !8
  %i.cb = load double, ptr %i.bk, align 8, !tbaa !8
  %i.cc = fmul double %2, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.0271.us, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !8
  %i.cg = fmul double %2, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store double %i.cg, ptr %i.ch, align 8, !tbaa !8
  %i.ci = load double, ptr %i.bl, align 8, !tbaa !8
  %i.cj = fmul double %2, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.0271.us, i64 24
  store double %i.cj, ptr %i.ck, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !8
  %i.cn = fmul double %2, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store double %i.cn, ptr %i.co, align 8, !tbaa !8
  br i1 %.not313, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader329.split.us.split
  %i.cp = getelementptr inbounds i8, ptr %.0271.us, i64 %.idx312 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.0295.us, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cv = fmul double %2, %i.cu
  store double %i.cv, ptr %i.cp, align 8, !tbaa !8
  %i.cw = load double, ptr %i.cs, align 8, !tbaa !8
  %i.cx = fmul double %2, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store double %i.cx, ptr %i.cy, align 8, !tbaa !8
  %i.cz = load double, ptr %i.cr, align 8, !tbaa !8
  %i.da = fmul double %2, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store double %i.da, ptr %i.db, align 8, !tbaa !8
  %i.dc = load double, ptr %i.cq, align 8, !tbaa !8
  %i.dd = fmul double %2, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store double %i.dd, ptr %i.de, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader329.split.us.split
  %i.df = add nsw i64 %.0301.us, -1
  %i.dg = icmp sgt i64 %.0301.us, 1
  br i1 %i.dg, label %.preheader329.split.us.split, label %.loopexit330, !llvm.loop !10

.preheader327:                                    ; preds = %.preheader329, %bb.i
  %.0301 = phi i64 [ %i.ht, %bb.i ], [ %i.c, %.preheader329 ] ; 2 uses
  %.0295 = phi ptr [ %i.gb, %bb.i ], [ %3, %.preheader329 ] ; 3 uses
  %.0271 = phi ptr [ %i.gc, %bb.i ], [ %5, %.preheader329 ] ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0295, i64 %4 ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %4 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %4
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0271, i64 %6 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %6 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %6
  br label %bb.e

bb.e:                                             ; preds = %.preheader327, %bb.e
  %.0298 = phi i64 [ %i.fz, %bb.e ], [ %i.d, %.preheader327 ] ; 2 uses
  %.0286 = phi ptr [ %i.fr, %bb.e ], [ %.0295, %.preheader327 ] ; 7 uses
  %.0280 = phi ptr [ %i.fs, %bb.e ], [ %i.dh, %.preheader327 ] ; 7 uses
  %.0277 = phi ptr [ %i.ft, %bb.e ], [ %i.di, %.preheader327 ] ; 7 uses
  %.0274 = phi ptr [ %i.fu, %bb.e ], [ %i.dj, %.preheader327 ] ; 7 uses
  %.0265 = phi ptr [ %i.fv, %bb.e ], [ %.0271, %.preheader327 ] ; 5 uses
  %.0262 = phi ptr [ %i.fw, %bb.e ], [ %i.dk, %.preheader327 ] ; 5 uses
  %.0259 = phi ptr [ %i.fx, %bb.e ], [ %i.dl, %.preheader327 ] ; 5 uses
  %.0 = phi ptr [ %i.fy, %bb.e ], [ %i.dm, %.preheader327 ] ; 5 uses
  %i.dn = load double, ptr %.0286, align 8, !tbaa !8
  %i.do = fmul double %2, %i.dn
  store double %i.do, ptr %.0265, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0286, i64 8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !8
  %i.dr = fmul double %2, %i.dq
  store double %i.dr, ptr %.0262, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0286, i64 16
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !8
  %i.du = fmul double %2, %i.dt
  store double %i.du, ptr %.0259, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %.0286, i64 24
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !8
  %i.dx = fmul double %2, %i.dw
  store double %i.dx, ptr %.0, align 8, !tbaa !8
  %i.dy = load double, ptr %.0280, align 8, !tbaa !8
  %i.dz = fmul double %2, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %.0265, i64 8
  store double %i.dz, ptr %i.ea, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw i8, ptr %.0280, i64 8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !8
  %i.ed = fmul double %2, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %.0262, i64 8
  store double %i.ed, ptr %i.ee, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %.0280, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = fmul double %2, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.0259, i64 8
  store double %i.eh, ptr %i.ei, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0280, i64 24
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = fmul double %2, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store double %i.el, ptr %i.em, align 8, !tbaa !8
  %i.en = load double, ptr %.0277, align 8, !tbaa !8
  %i.eo = fmul double %2, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.0265, i64 16
  store double %i.eo, ptr %i.ep, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0277, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8
  %i.es = fmul double %2, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.0262, i64 16
  store double %i.es, ptr %i.et, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %.0277, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = fmul double %2, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.0259, i64 16
  store double %i.ew, ptr %i.ex, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %.0277, i64 24
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !8
  %i.fa = fmul double %2, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store double %i.fa, ptr %i.fb, align 8, !tbaa !8
  %i.fc = load double, ptr %.0274, align 8, !tbaa !8
end_hunk_0
