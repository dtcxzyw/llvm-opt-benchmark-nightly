inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x86_cpu_enable_ssse3 = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local i64 @adler32_z(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ugt i64 %2, 63
  %or.cond = and i1 %i.a, %i.b
  %i.c = load i32, ptr @x86_cpu_enable_ssse3, align 4
  %i.d = icmp ne i32 %i.c, 0
  %or.cond3 = select i1 %or.cond, i1 %i.d, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %0 to i32
  %i.f = tail call i32 @adler32_simd_(i32 noundef %i.e, ptr noundef nonnull %1, i64 noundef %2) #3
  %i.g = zext i32 %i.f to i64
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %0, 16
  %i.i = and i64 %i.h, 65535                      ; 6 uses
  %i.j = and i64 %0, 65535                        ; 6 uses
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %1, align 1, !tbaa !9
  %i.m = zext i8 %i.l to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = icmp samesign ugt i64 %i.n, 65520
  %i.p = add nsw i64 %i.n, -65521
  %spec.select = select i1 %i.o, i64 %i.p, i64 %i.n ; 2 uses
  %i.q = add nuw nsw i64 %spec.select, %i.i       ; 2 uses
  %i.r = icmp ugt i64 %i.q, 65520
  %i.s = shl nsw i64 %i.q, 16                     ; 2 uses
  %i.t = add nsw i64 %i.s, -4293984256
  %i.u = select i1 %i.r, i64 %i.t, i64 %i.s
  %i.v = or i64 %i.u, %spec.select
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq ptr %1, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not210 = icmp eq i64 %2, 0
  br i1 %.not210, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  tail call void @cpu_check_features() #3
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.x = icmp ult i64 %2, 16
  br i1 %i.x, label %.preheader, label %.preheader214

.preheader214:                                    ; preds = %bb.h
  %i.y = icmp ugt i64 %2, 5551
  br i1 %i.y, label %.lr.ph, label %.lr.ph228.preheader

.preheader:                                       ; preds = %bb.h
  %.not209242 = icmp eq i64 %2, 0
  br i1 %.not209242, label %._crit_edge248, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %.preheader
  %xtraiter332 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph247.prol.loopexit, label %.lr.ph247.prol

.lr.ph247.prol:                                   ; preds = %.lr.ph247.preheader, %.lr.ph247.prol
  %.1246.prol = phi i64 [ %i.ae, %.lr.ph247.prol ], [ %i.i, %.lr.ph247.preheader ]
  %.0182245.prol = phi i64 [ %i.z, %.lr.ph247.prol ], [ %2, %.lr.ph247.preheader ]
  %.0186244.prol = phi ptr [ %i.aa, %.lr.ph247.prol ], [ %1, %.lr.ph247.preheader ] ; 2 uses
  %.1192243.prol = phi i64 [ %i.ad, %.lr.ph247.prol ], [ %i.j, %.lr.ph247.preheader ]
  %prol.iter334 = phi i64 [ %prol.iter334.next, %.lr.ph247.prol ], [ 0, %.lr.ph247.preheader ]
  %i.z = add i64 %.0182245.prol, -1               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0186244.prol, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.0186244.prol, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i64
  %i.ad = add i64 %.1192243.prol, %i.ac           ; 4 uses
  %i.ae = add i64 %i.ad, %.1246.prol              ; 3 uses
  %prol.iter334.next = add i64 %prol.iter334, 1   ; 2 uses
  %prol.iter334.cmp.not = icmp eq i64 %prol.iter334.next, %xtraiter332
  br i1 %prol.iter334.cmp.not, label %.lr.ph247.prol.loopexit, label %.lr.ph247.prol, !llvm.loop !10

.lr.ph247.prol.loopexit:                          ; preds = %.lr.ph247.prol, %.lr.ph247.preheader
  %.lcssa320.unr = phi i64 [ poison, %.lr.ph247.preheader ], [ %i.ad, %.lr.ph247.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph247.preheader ], [ %i.ae, %.lr.ph247.prol ]
  %.1246.unr = phi i64 [ %i.i, %.lr.ph247.preheader ], [ %i.ae, %.lr.ph247.prol ]
  %.0182245.unr = phi i64 [ %2, %.lr.ph247.preheader ], [ %i.z, %.lr.ph247.prol ]
  %.0186244.unr = phi ptr [ %1, %.lr.ph247.preheader ], [ %i.aa, %.lr.ph247.prol ]
  %.1192243.unr = phi i64 [ %i.j, %.lr.ph247.preheader ], [ %i.ad, %.lr.ph247.prol ]
  %i.af = icmp ult i64 %2, 4
  br i1 %i.af, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247
  %.1246 = phi i64 [ %i.ba, %.lr.ph247 ], [ %.1246.unr, %.lr.ph247.prol.loopexit ]
  %.0182245 = phi i64 [ %i.av, %.lr.ph247 ], [ %.0182245.unr, %.lr.ph247.prol.loopexit ]
  %.0186244 = phi ptr [ %i.aw, %.lr.ph247 ], [ %.0186244.unr, %.lr.ph247.prol.loopexit ] ; 5 uses
  %.1192243 = phi i64 [ %i.az, %.lr.ph247 ], [ %.1192243.unr, %.lr.ph247.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0186244, i64 1
  %i.ah = load i8, ptr %.0186244, align 1, !tbaa !9
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %.1192243, %i.ai                ; 2 uses
  %i.ak = add i64 %i.aj, %.1246
  %i.al = getelementptr inbounds nuw i8, ptr %.0186244, i64 2
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i64
  %i.ao = add i64 %i.aj, %i.an                    ; 2 uses
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %.0186244, i64 3
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ao, %i.as                    ; 2 uses
  %i.au = add i64 %i.at, %i.ap
  %i.av = add i64 %.0182245, -4                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0186244, i64 4
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  %i.az = add i64 %i.at, %i.ay                    ; 3 uses
  %i.ba = add i64 %i.az, %i.au                    ; 2 uses
  %.not209.3 = icmp eq i64 %i.av, 0
  br i1 %.not209.3, label %._crit_edge248, label %.lr.ph247, !llvm.loop !12

._crit_edge248:                                   ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247, %.preheader
  %.1192.lcssa = phi i64 [ %i.j, %.preheader ], [ %.lcssa320.unr, %.lr.ph247.prol.loopexit ], [ %i.az, %.lr.ph247 ] ; 3 uses
  %.1.lcssa = phi i64 [ %i.i, %.preheader ], [ %.lcssa.unr, %.lr.ph247.prol.loopexit ], [ %i.ba, %.lr.ph247 ]
  %i.bb = icmp ugt i64 %.1192.lcssa, 65520
  %i.bc = add i64 %.1192.lcssa, -65521
  %spec.select211 = select i1 %i.bb, i64 %i.bc, i64 %.1192.lcssa
  %i.bd = urem i64 %.1.lcssa, 65521
  %i.be = shl nuw nsw i64 %i.bd, 16
  %i.bf = or i64 %i.be, %spec.select211
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader214, %bb.j
  %.pn = phi ptr [ %indvars.iv, %bb.j ], [ %1, %.preheader214 ] ; 2 uses
  %.2220 = phi i64 [ %i.el, %bb.j ], [ %i.i, %.preheader214 ]
  %.1183219 = phi i64 [ %i.ej, %bb.j ], [ %2, %.preheader214 ]
  %.3194217 = phi i64 [ %i.ek, %bb.j ], [ %i.j, %.preheader214 ]
  %indvars.iv = getelementptr i8, ptr %.pn, i64 5552 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph
  %.4195 = phi i64 [ %.3194217, %.lr.ph ], [ %i.ef, %bb.i ]
  %.2188 = phi ptr [ %.pn, %.lr.ph ], [ %i.eh, %bb.i ] ; 17 uses
  %.3 = phi i64 [ %.2220, %.lr.ph ], [ %i.eg, %bb.i ]
  %.0 = phi i32 [ 347, %.lr.ph ], [ %i.ei, %bb.i ]
  %i.bg = load i8, ptr %.2188, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i64
  %i.bi = add i64 %.4195, %i.bh                   ; 2 uses
  %i.bj = add i64 %i.bi, %.3
  %i.bk = getelementptr inbounds nuw i8, ptr %.2188, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9
  %i.bm = zext i8 %i.bl to i64
  %i.bn = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bo = add i64 %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.2188, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  %i.bs = add i64 %i.bn, %i.br                    ; 2 uses
  %i.bt = add i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.2188, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add i64 %i.bs, %i.bw                    ; 2 uses
  %i.by = add i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.2188, i64 4
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add i64 %i.bx, %i.cb                    ; 2 uses
  %i.cd = add i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.2188, i64 5
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9
  %i.cg = zext i8 %i.cf to i64
  %i.ch = add i64 %i.cc, %i.cg                    ; 2 uses
  %i.ci = add i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.2188, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = zext i8 %i.ck to i64
  %i.cm = add i64 %i.ch, %i.cl                    ; 2 uses
  %i.cn = add i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.2188, i64 7
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = zext i8 %i.cp to i64
  %i.cr = add i64 %i.cm, %i.cq                    ; 2 uses
  %i.cs = add i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.2188, i64 8
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !9
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add i64 %i.cr, %i.cv                    ; 2 uses
  %i.cx = add i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.2188, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i64
  %i.db = add i64 %i.cw, %i.da                    ; 2 uses
  %i.dc = add i64 %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.2188, i64 10
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9
  %i.df = zext i8 %i.de to i64
  %i.dg = add i64 %i.db, %i.df                    ; 2 uses
  %i.dh = add i64 %i.dc, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.2188, i64 11
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9
  %i.dk = zext i8 %i.dj to i64
  %i.dl = add i64 %i.dg, %i.dk                    ; 2 uses
  %i.dm = add i64 %i.dh, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.2188, i64 12
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dp = zext i8 %i.do to i64
  %i.dq = add i64 %i.dl, %i.dp                    ; 2 uses
  %i.dr = add i64 %i.dm, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.2188, i64 13
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !9
  %i.du = zext i8 %i.dt to i64
  %i.dv = add i64 %i.dq, %i.du                    ; 2 uses
  %i.dw = add i64 %i.dr, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.2188, i64 14
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9
  %i.dz = zext i8 %i.dy to i64
  %i.ea = add i64 %i.dv, %i.dz                    ; 2 uses
  %i.eb = add i64 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.2188, i64 15
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !9
  %i.ee = zext i8 %i.ed to i64
  %i.ef = add i64 %i.ea, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.eb, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2188, i64 16
  %i.ei = add nsw i32 %.0, -1                     ; 2 uses
  %.not208 = icmp eq i32 %i.ei, 0
  br i1 %.not208, label %bb.j, label %bb.i, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.ej = add i64 %.1183219, -5552                ; 6 uses
  %i.ek = urem i64 %i.ef, 65521                   ; 4 uses
  %i.el = urem i64 %i.eg, 65521                   ; 4 uses
  %i.em = icmp ugt i64 %i.ej, 5551
  br i1 %i.em, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.j
  %.not = icmp eq i64 %i.ej, 0
  br i1 %.not, label %bb.k, label %.preheader213

.preheader213:                                    ; preds = %._crit_edge
  %i.en = icmp samesign ugt i64 %i.ej, 15
  br i1 %i.en, label %.lr.ph228.preheader, label %.lr.ph238.preheader

.lr.ph228.preheader:                              ; preds = %.preheader214, %.preheader213
  %.4227.ph = phi i64 [ %i.i, %.preheader214 ], [ %i.el, %.preheader213 ]
  %.2184226.ph = phi i64 [ %2, %.preheader214 ], [ %i.ej, %.preheader213 ]
  %.3189225.ph = phi ptr [ %1, %.preheader214 ], [ %indvars.iv, %.preheader213 ]
  %.5196224.ph = phi i64 [ %i.j, %.preheader214 ], [ %i.ek, %.preheader213 ]
  br label %.lr.ph228

.preheader212:                                    ; preds = %.lr.ph228
  %.not207233 = icmp eq i64 %i.ev, 0
  br i1 %.not207233, label %._crit_edge239, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %.preheader213, %.preheader212
  %.5237.ph = phi i64 [ %i.el, %.preheader213 ], [ %i.hw, %.preheader212 ] ; 2 uses
  %.3185236.ph = phi i64 [ %i.ej, %.preheader213 ], [ %i.ev, %.preheader212 ] ; 4 uses
  %.4190235.ph = phi ptr [ %indvars.iv, %.preheader213 ], [ %i.hx, %.preheader212 ] ; 2 uses
  %.6197234.ph = phi i64 [ %i.ek, %.preheader213 ], [ %i.hv, %.preheader212 ] ; 2 uses
  %xtraiter = and i64 %.3185236.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph238.prol.loopexit, label %.lr.ph238.prol

.lr.ph238.prol:                                   ; preds = %.lr.ph238.preheader, %.lr.ph238.prol
  %.5237.prol = phi i64 [ %i.et, %.lr.ph238.prol ], [ %.5237.ph, %.lr.ph238.preheader ]
  %.3185236.prol = phi i64 [ %i.eo, %.lr.ph238.prol ], [ %.3185236.ph, %.lr.ph238.preheader ]
  %.4190235.prol = phi ptr [ %i.ep, %.lr.ph238.prol ], [ %.4190235.ph, %.lr.ph238.preheader ] ; 2 uses
  %.6197234.prol = phi i64 [ %i.es, %.lr.ph238.prol ], [ %.6197234.ph, %.lr.ph238.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph238.prol ], [ 0, %.lr.ph238.preheader ]
  %i.eo = add i64 %.3185236.prol, -1              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.4190235.prol, i64 1 ; 2 uses
  %i.eq = load i8, ptr %.4190235.prol, align 1, !tbaa !9
  %i.er = zext i8 %i.eq to i64
  %i.es = add i64 %.6197234.prol, %i.er           ; 4 uses
  %i.et = add i64 %i.es, %.5237.prol              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph238.prol.loopexit, label %.lr.ph238.prol, !llvm.loop !16

.lr.ph238.prol.loopexit:                          ; preds = %.lr.ph238.prol, %.lr.ph238.preheader
  %.lcssa322.unr.a = phi i64 [ poison, %.lr.ph238.preheader ], [ %i.es, %.lr.ph238.prol ]
  %.lcssa321.unr = phi i64 [ poison, %.lr.ph238.preheader ], [ %i.et, %.lr.ph238.prol ]
  %.5237.unr = phi i64 [ %.5237.ph, %.lr.ph238.preheader ], [ %i.et, %.lr.ph238.prol ]
  %.3185236.unr = phi i64 [ %.3185236.ph, %.lr.ph238.preheader ], [ %i.eo, %.lr.ph238.prol ]
  %.4190235.unr = phi ptr [ %.4190235.ph, %.lr.ph238.preheader ], [ %i.ep, %.lr.ph238.prol ]
  %.6197234.unr = phi i64 [ %.6197234.ph, %.lr.ph238.preheader ], [ %i.es, %.lr.ph238.prol ]
  %i.eu = icmp ult i64 %.3185236.ph, 4
  br i1 %i.eu, label %._crit_edge239, label %.lr.ph238

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %.4227 = phi i64 [ %i.hw, %.lr.ph228 ], [ %.4227.ph, %.lr.ph228.preheader ]
  %.2184226 = phi i64 [ %i.ev, %.lr.ph228 ], [ %.2184226.ph, %.lr.ph228.preheader ]
  %.3189225 = phi ptr [ %i.hx, %.lr.ph228 ], [ %.3189225.ph, %.lr.ph228.preheader ] ; 17 uses
  %.5196224 = phi i64 [ %i.hv, %.lr.ph228 ], [ %.5196224.ph, %.lr.ph228.preheader ]
  %i.ev = add nsw i64 %.2184226, -16              ; 4 uses
  %i.ew = load i8, ptr %.3189225, align 1, !tbaa !9
  %i.ex = zext i8 %i.ew to i64
  %i.ey = add i64 %.5196224, %i.ex                ; 2 uses
  %i.ez = add i64 %i.ey, %.4227
  %i.fa = getelementptr inbounds nuw i8, ptr %.3189225, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = zext i8 %i.fb to i64
  %i.fd = add i64 %i.ey, %i.fc                    ; 2 uses
  %i.fe = add i64 %i.ez, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.3189225, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !9
  %i.fh = zext i8 %i.fg to i64
  %i.fi = add i64 %i.fd, %i.fh                    ; 2 uses
  %i.fj = add i64 %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.3189225, i64 3
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9
  %i.fm = zext i8 %i.fl to i64
  %i.fn = add i64 %i.fi, %i.fm                    ; 2 uses
  %i.fo = add i64 %i.fj, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.3189225, i64 4
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9
  %i.fr = zext i8 %i.fq to i64
  %i.fs = add i64 %i.fn, %i.fr                    ; 2 uses
  %i.ft = add i64 %i.fo, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.3189225, i64 5
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  %i.fw = zext i8 %i.fv to i64
  %i.fx = add i64 %i.fs, %i.fw                    ; 2 uses
  %i.fy = add i64 %i.ft, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %.3189225, i64 6
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !9
  %i.gb = zext i8 %i.ga to i64
  %i.gc = add i64 %i.fx, %i.gb                    ; 2 uses
  %i.gd = add i64 %i.fy, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.3189225, i64 7
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9
  %i.gg = zext i8 %i.gf to i64
  %i.gh = add i64 %i.gc, %i.gg                    ; 2 uses
  %i.gi = add i64 %i.gd, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %.3189225, i64 8
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i64
  %i.gm = add i64 %i.gh, %i.gl                    ; 2 uses
  %i.gn = add i64 %i.gi, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.3189225, i64 9
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gq = zext i8 %i.gp to i64
  %i.gr = add i64 %i.gm, %i.gq                    ; 2 uses
  %i.gs = add i64 %i.gn, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.3189225, i64 10
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gv = zext i8 %i.gu to i64
  %i.gw = add i64 %i.gr, %i.gv                    ; 2 uses
  %i.gx = add i64 %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.3189225, i64 11
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.ha = zext i8 %i.gz to i64
  %i.hb = add i64 %i.gw, %i.ha                    ; 2 uses
  %i.hc = add i64 %i.gx, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.3189225, i64 12
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = zext i8 %i.he to i64
  %i.hg = add i64 %i.hb, %i.hf                    ; 2 uses
  %i.hh = add i64 %i.hc, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.3189225, i64 13
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hk = zext i8 %i.hj to i64
  %i.hl = add i64 %i.hg, %i.hk                    ; 2 uses
  %i.hm = add i64 %i.hh, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %.3189225, i64 14
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  %i.hp = zext i8 %i.ho to i64
  %i.hq = add i64 %i.hl, %i.hp                    ; 2 uses
  %i.hr = add i64 %i.hm, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %.3189225, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = zext i8 %i.ht to i64
  %i.hv = add i64 %i.hq, %i.hu                    ; 4 uses
  %i.hw = add i64 %i.hr, %i.hv                    ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.3189225, i64 16 ; 2 uses
  %i.hy = icmp ugt i64 %i.ev, 15
  br i1 %i.hy, label %.lr.ph228, label %.preheader212, !llvm.loop !17

.lr.ph238:                                        ; preds = %.lr.ph238.prol.loopexit, %.lr.ph238
  %.5237 = phi i64 [ %i.it, %.lr.ph238 ], [ %.5237.unr, %.lr.ph238.prol.loopexit ]
  %.3185236 = phi i64 [ %i.io, %.lr.ph238 ], [ %.3185236.unr, %.lr.ph238.prol.loopexit ]
  %.4190235 = phi ptr [ %i.ip, %.lr.ph238 ], [ %.4190235.unr, %.lr.ph238.prol.loopexit ] ; 5 uses
  %.6197234 = phi i64 [ %i.is, %.lr.ph238 ], [ %.6197234.unr, %.lr.ph238.prol.loopexit ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.4190235, i64 1
  %i.ia = load i8, ptr %.4190235, align 1, !tbaa !9
  %i.ib = zext i8 %i.ia to i64
  %i.ic = add i64 %.6197234, %i.ib                ; 2 uses
  %i.id = add i64 %i.ic, %.5237
  %i.ie = getelementptr inbounds nuw i8, ptr %.4190235, i64 2
  %i.if = load i8, ptr %i.hz, align 1, !tbaa !9
  %i.ig = zext i8 %i.if to i64
  %i.ih = add i64 %i.ic, %i.ig                    ; 2 uses
  %i.ii = add i64 %i.ih, %i.id
  %i.ij = getelementptr inbounds nuw i8, ptr %.4190235, i64 3
  %i.ik = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.il = zext i8 %i.ik to i64
  %i.im = add i64 %i.ih, %i.il                    ; 2 uses
  %i.in = add i64 %i.im, %i.ii
  %i.io = add i64 %.3185236, -4                   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.4190235, i64 4
  %i.iq = load i8, ptr %i.ij, align 1, !tbaa !9
  %i.ir = zext i8 %i.iq to i64
  %i.is = add i64 %i.im, %i.ir                    ; 3 uses
  %i.it = add i64 %i.is, %i.in                    ; 2 uses
  %.not207.3 = icmp eq i64 %i.io, 0
  br i1 %.not207.3, label %._crit_edge239, label %.lr.ph238, !llvm.loop !18

._crit_edge239:                                   ; preds = %.lr.ph238.prol.loopexit, %.lr.ph238, %.preheader212
  %.6197.lcssa = phi i64 [ %i.hv, %.preheader212 ], [ %.lcssa322.unr.a, %.lr.ph238.prol.loopexit ], [ %i.is, %.lr.ph238 ]
  %.5.lcssa = phi i64 [ %i.hw, %.preheader212 ], [ %.lcssa321.unr, %.lr.ph238.prol.loopexit ], [ %i.it, %.lr.ph238 ]
  %i.iu = urem i64 %.6197.lcssa, 65521
  %i.iv = urem i64 %.5.lcssa, 65521
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge239, %._crit_edge
  %.7 = phi i64 [ %i.iu, %._crit_edge239 ], [ %i.ek, %._crit_edge ]
  %.6 = phi i64 [ %i.iv, %._crit_edge239 ], [ %i.el, %._crit_edge ]
  %i.iw = shl nuw nsw i64 %.6, 16
  %i.ix = or disjoint i64 %i.iw, %.7
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.k, %._crit_edge248, %bb.d, %bb.b
  %.0198 = phi i64 [ %i.g, %bb.b ], [ %i.v, %bb.d ], [ %i.ix, %bb.k ], [ %i.bf, %._crit_edge248 ], [ 1, %bb.g ], [ 1, %bb.f ]
  ret i64 %.0198
}

declare hidden i32 @adler32_simd_(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @cpu_check_features() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @adler32(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call i64 @adler32_z(i64 noundef %0, ptr noundef %1, i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @adler32_combine(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %adler32_combine_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = urem i64 %2, 65521                       ; 2 uses
  %i.c = and i64 %0, 65535                        ; 2 uses
  %i.d = mul nuw nsw i64 %i.b, %i.c
  %.lhs.trunc.i = trunc nuw i64 %i.d to i32
  %i.e = urem i32 %.lhs.trunc.i, 65521
  %.zext.i = zext nneg i32 %i.e to i64
  %i.f = and i64 %1, 65535
  %i.g = add nuw nsw i64 %i.c, 65520
  %i.h = add nuw nsw i64 %i.g, %i.f               ; 2 uses
  %i.i = lshr i64 %0, 16
  %i.j = and i64 %i.i, 65535
  %i.k = lshr i64 %1, 16
  %i.l = and i64 %i.k, 65535
end_hunk_0
