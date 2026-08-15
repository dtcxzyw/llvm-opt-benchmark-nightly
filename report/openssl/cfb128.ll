inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @CRYPTO_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !8      ; 6 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit111, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %i.c = icmp ne i32 %i.a, 0
  %i.d = icmp ne i64 %2, 0
  %i.e = and i1 %i.c, %i.d                        ; 2 uses
  br i1 %.not, label %.preheader110, label %.preheader113

.preheader113:                                    ; preds = %bb.b
  br i1 %i.e, label %.lr.ph, label %.preheader112

.preheader110:                                    ; preds = %bb.b
  br i1 %i.e, label %.lr.ph139, label %.preheader

.preheader112:                                    ; preds = %.lr.ph, %.preheader113
  %.099.lcssa = phi i32 [ %i.a, %.preheader113 ], [ %i.aj, %.lr.ph ] ; 4 uses
  %.095.lcssa = phi i64 [ %2, %.preheader113 ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.091.lcssa = phi ptr [ %1, %.preheader113 ], [ %i.ag, %.lr.ph ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %.preheader113 ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.f = icmp ugt i64 %.095.lcssa, 15
  br i1 %i.f, label %.lr.ph127.peel, label %._crit_edge128

.lr.ph127.peel:                                   ; preds = %.preheader112
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %i.g = icmp samesign ult i32 %.099.lcssa, 16
  br i1 %i.g, label %.lr.ph122.peel, label %._crit_edge.peel

.lr.ph122.peel:                                   ; preds = %.lr.ph127.peel
  %i.h = zext nneg i32 %.099.lcssa to i64         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.h
  %i.j = load i64, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %i.h ; 2 uses
  %i.l = load i64, ptr %i.k, align 1, !tbaa !9
  %i.m = xor i64 %i.l, %i.j                       ; 2 uses
  store i64 %i.m, ptr %i.k, align 1, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 %i.h
  store i64 %i.m, ptr %i.n, align 1, !tbaa !9
  %i.o = icmp ult i32 %.099.lcssa, 8
  br i1 %i.o, label %.lr.ph122.1.peel, label %._crit_edge.peel

.lr.ph122.1.peel:                                 ; preds = %.lr.ph122.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.h, 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %i.q = load i64, ptr %i.p, align 1, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %i.s = load i64, ptr %i.r, align 1, !tbaa !9
  %i.t = xor i64 %i.s, %i.q                       ; 2 uses
  store i64 %i.t, ptr %i.r, align 1, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.t, ptr %i.u, align 1, !tbaa !9
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph122.peel, %.lr.ph122.1.peel, %.lr.ph127.peel
  %i.v = add i64 %.095.lcssa, -16                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.091.lcssa, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.y = icmp ugt i64 %i.v, 15
  br i1 %i.y, label %.lr.ph127.preheader.peel.newph, label %._crit_edge128

.lr.ph127.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph127

.lr.ph:                                           ; preds = %.preheader113, %.lr.ph
  %.0117 = phi ptr [ %i.aa, %.lr.ph ], [ %0, %.preheader113 ] ; 2 uses
  %.091116 = phi ptr [ %i.ag, %.lr.ph ], [ %1, %.preheader113 ] ; 2 uses
  %.095115 = phi i64 [ %i.ah, %.lr.ph ], [ %2, %.preheader113 ]
  %.099114 = phi i32 [ %i.aj, %.lr.ph ], [ %i.a, %.preheader113 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0117, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.0117, align 1, !tbaa !11
  %i.ac = zext nneg i32 %.099114 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.af = xor i8 %i.ae, %i.ab                     ; 2 uses
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.091116, i64 1 ; 2 uses
  store i8 %i.af, ptr %.091116, align 1, !tbaa !11
  %i.ah = add i64 %.095115, -1                    ; 3 uses
  %i.ai = add nuw i32 %.099114, 1
  %i.aj = and i32 %i.ai, 15                       ; 3 uses
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = icmp ne i64 %i.ah, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %.preheader112, !llvm.loop !12

.lr.ph127:                                        ; preds = %.lr.ph127.preheader.peel.newph, %.lr.ph127
  %.1126 = phi ptr [ %i.ax, %.lr.ph127 ], [ %i.x, %.lr.ph127.preheader.peel.newph ] ; 3 uses
  %.192125 = phi ptr [ %i.aw, %.lr.ph127 ], [ %i.w, %.lr.ph127.preheader.peel.newph ] ; 3 uses
  %.196124 = phi i64 [ %i.av, %.lr.ph127 ], [ %i.v, %.lr.ph127.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %i.an = load i64, ptr %.1126, align 1, !tbaa !9
  %i.ao = load i64, ptr %4, align 1, !tbaa !9
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  store i64 %i.ap, ptr %4, align 1, !tbaa !9
  store i64 %i.ap, ptr %.192125, align 1, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.1126, i64 8
  %i.ar = load i64, ptr %i.aq, align 1, !tbaa !9
  %i.as = load i64, ptr %i.z, align 1, !tbaa !9
  %i.at = xor i64 %i.as, %i.ar                    ; 2 uses
  store i64 %i.at, ptr %i.z, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.192125, i64 8
  store i64 %i.at, ptr %i.au, align 1, !tbaa !9
  %i.av = add i64 %.196124, -16                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.192125, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1126, i64 16 ; 2 uses
  %i.ay = icmp ugt i64 %i.av, 15
  br i1 %i.ay, label %.lr.ph127, label %._crit_edge128, !llvm.loop !14

._crit_edge128:                                   ; preds = %._crit_edge.peel, %.lr.ph127, %.preheader112
  %.1100.lcssa = phi i32 [ %.099.lcssa, %.preheader112 ], [ 0, %.lr.ph127 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.196.lcssa = phi i64 [ %.095.lcssa, %.preheader112 ], [ %i.v, %._crit_edge.peel ], [ %i.av, %.lr.ph127 ] ; 10 uses
  %.192.lcssa = phi ptr [ %.091.lcssa, %.preheader112 ], [ %i.w, %._crit_edge.peel ], [ %i.aw, %.lr.ph127 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader112 ], [ %i.x, %._crit_edge.peel ], [ %i.ax, %.lr.ph127 ] ; 6 uses
  %.not108 = icmp eq i64 %.196.lcssa, 0
  br i1 %.not108, label %.loopexit111, label %iter.check

iter.check:                                       ; preds = %._crit_edge128
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %min.iters.check = icmp samesign ult i64 %.196.lcssa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.az = add nsw i64 %.196.lcssa, -1             ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %.1100.lcssa, -1
  %i.bc = icmp ult i32 %i.bb, %i.ba
  %i.bd = icmp ugt i64 %i.az, 4294967295
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = zext i32 %.1100.lcssa to i64            ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.bf  ; 2 uses
  %i.bg = add nuw nsw i64 %.196.lcssa, %i.bf      ; 3 uses
  %scevgep215 = getelementptr i8, ptr %4, i64 %i.bg ; 2 uses
  %scevgep216 = getelementptr i8, ptr %.192.lcssa, i64 %i.bf ; 2 uses
  %scevgep217 = getelementptr i8, ptr %.192.lcssa, i64 %i.bg ; 2 uses
  %scevgep218 = getelementptr i8, ptr %.1.lcssa, i64 %i.bf ; 2 uses
  %scevgep219 = getelementptr i8, ptr %.1.lcssa, i64 %i.bg ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep217
  %bound1 = icmp ult ptr %scevgep216, %scevgep215
  %found.conflict = and i1 %bound0, %bound1
  %bound0220 = icmp ult ptr %scevgep, %scevgep219
  %bound1221 = icmp ult ptr %scevgep218, %scevgep215
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx = or i1 %found.conflict, %found.conflict222
  %bound0223 = icmp ult ptr %scevgep216, %scevgep219
  %bound1224 = icmp ult ptr %scevgep218, %scevgep217
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx, %found.conflict225
  br i1 %conflict.rdx226, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec232 = and i64 %.196.lcssa, 8              ; 3 uses
  %i.bh = and i64 %.196.lcssa, 7
  %i.bi = trunc nuw nsw i64 %n.vec232 to i32
  %i.bj = add i32 %.1100.lcssa, %i.bi             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index233 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = trunc i64 %index233 to i32
  %i.bl = add i32 %.1100.lcssa, %i.bk
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bm
  %wide.load234 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !11, !alias.scope !16
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm ; 2 uses
  %wide.load235 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !11, !alias.scope !19, !noalias !21
  %i.bp = xor <8 x i8> %wide.load235, %wide.load234 ; 2 uses
  store <8 x i8> %i.bp, ptr %i.bo, align 1, !tbaa !11, !alias.scope !19, !noalias !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.192.lcssa, i64 %i.bm
  store <8 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !11, !alias.scope !23, !noalias !16
  %index.next236 = add nuw i64 %index233, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %.196.lcssa, %n.vec232
  br i1 %cmp.n237, label %.loopexit111, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.297134.ph = phi i64 [ %.196.lcssa, %vector.scevcheck ], [ %.196.lcssa, %vector.memcheck ], [ %.196.lcssa, %iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 4 uses
  %.3102133.ph = phi i32 [ %.1100.lcssa, %vector.scevcheck ], [ %.1100.lcssa, %vector.memcheck ], [ %.1100.lcssa, %iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.297134.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bs = add nsw i64 %.297134.ph, -1
  %i.bt = zext i32 %.3102133.ph to i64            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = xor i8 %i.bx, %i.bv                     ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.192.lcssa, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !11
  %i.ca = add i32 %.3102133.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa298.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ca, %vec.epilog.scalar.ph.prol ]
  %.297134.unr = phi i64 [ %.297134.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bs, %vec.epilog.scalar.ph.prol ]
  %.3102133.unr = phi i32 [ %.3102133.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ca, %vec.epilog.scalar.ph.prol ]
  %i.cb = icmp eq i64 %.297134.ph, 1
  br i1 %i.cb, label %.loopexit111, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.297134 = phi i64 [ %i.ck, %vec.epilog.scalar.ph ], [ %.297134.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3102133 = phi i32 [ %i.cs, %vec.epilog.scalar.ph ], [ %.3102133.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.cc = zext i32 %.3102133 to i64               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.cc ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.ch = xor i8 %i.cg, %i.ce                     ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %.192.lcssa, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !11
  %i.cj = add i32 %.3102133, 1
  %i.ck = add i64 %.297134, -2                    ; 2 uses
  %i.cl = zext i32 %i.cj to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 %i.cl ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  %i.cq = xor i8 %i.cp, %i.cn                     ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.192.lcssa, i64 %i.cl
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !11
  %i.cs = add i32 %.3102133, 2                    ; 2 uses
  %.not109.1 = icmp eq i64 %i.ck, 0
  br i1 %.not109.1, label %.loopexit111, label %vec.epilog.scalar.ph, !llvm.loop !27

.preheader:                                       ; preds = %.lr.ph139, %.preheader110
  %.5104.lcssa = phi i32 [ %i.a, %.preheader110 ], [ %i.dx, %.lr.ph139 ] ; 4 uses
  %.398.lcssa = phi i64 [ %2, %.preheader110 ], [ %i.dv, %.lr.ph139 ] ; 3 uses
  %.293.lcssa = phi ptr [ %1, %.preheader110 ], [ %i.du, %.lr.ph139 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader110 ], [ %i.dr, %.lr.ph139 ] ; 4 uses
  %i.ct = icmp ugt i64 %.398.lcssa, 15
  br i1 %i.ct, label %.lr.ph152.peel, label %._crit_edge153

.lr.ph152.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %i.cu = icmp samesign ult i32 %.5104.lcssa, 16
  br i1 %i.cu, label %.lr.ph146.peel, label %._crit_edge147.peel

.lr.ph146.peel:                                   ; preds = %.lr.ph152.peel
  %i.cv = zext nneg i32 %.5104.lcssa to i64       ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 1, !tbaa !9  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 %i.cv ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !9
  %i.da = xor i64 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.293.lcssa, i64 %i.cv
  store i64 %i.da, ptr %i.db, align 1, !tbaa !9
  store i64 %i.cx, ptr %i.cy, align 1, !tbaa !9
  %i.dc = icmp ult i32 %.5104.lcssa, 8
  br i1 %i.dc, label %.lr.ph146.1.peel, label %._crit_edge147.peel

.lr.ph146.1.peel:                                 ; preds = %.lr.ph146.peel
  %indvars.iv.next177.peel = add nuw nsw i64 %i.cv, 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next177.peel
  %i.de = load i64, ptr %i.dd, align 1, !tbaa !9  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next177.peel ; 2 uses
  %i.dg = load i64, ptr %i.df, align 1, !tbaa !9
  %i.dh = xor i64 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.293.lcssa, i64 %indvars.iv.next177.peel
  store i64 %i.dh, ptr %i.di, align 1, !tbaa !9
  store i64 %i.de, ptr %i.df, align 1, !tbaa !9
  br label %._crit_edge147.peel

._crit_edge147.peel:                              ; preds = %.lr.ph146.peel, %.lr.ph146.1.peel, %.lr.ph152.peel
  %i.dj = add i64 %.398.lcssa, -16                ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.293.lcssa, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.dm = icmp ugt i64 %i.dj, 15
  br i1 %i.dm, label %.lr.ph152.preheader.peel.newph, label %._crit_edge153

.lr.ph152.preheader.peel.newph:                   ; preds = %._crit_edge147.peel
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph152

.lr.ph139:                                        ; preds = %.preheader110, %.lr.ph139
  %.2138 = phi ptr [ %i.dr, %.lr.ph139 ], [ %0, %.preheader110 ] ; 2 uses
  %.293137 = phi ptr [ %i.du, %.lr.ph139 ], [ %1, %.preheader110 ] ; 2 uses
  %.398136 = phi i64 [ %i.dv, %.lr.ph139 ], [ %2, %.preheader110 ]
  %.5104135 = phi i32 [ %i.dx, %.lr.ph139 ], [ %i.a, %.preheader110 ] ; 2 uses
  %i.do = zext nneg i32 %.5104135 to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %.2138, i64 1 ; 2 uses
  %i.ds = load i8, ptr %.2138, align 1, !tbaa !11 ; 2 uses
  %i.dt = xor i8 %i.ds, %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %.293137, i64 1 ; 2 uses
  store i8 %i.dt, ptr %.293137, align 1, !tbaa !11
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !11
  %i.dv = add i64 %.398136, -1                    ; 3 uses
  %i.dw = add nuw i32 %.5104135, 1
  %i.dx = and i32 %i.dw, 15                       ; 3 uses
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = icmp ne i64 %i.dv, 0
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph139, label %.preheader, !llvm.loop !28

.lr.ph152:                                        ; preds = %.lr.ph152.preheader.peel.newph, %.lr.ph152
  %.3151 = phi ptr [ %i.el, %.lr.ph152 ], [ %i.dl, %.lr.ph152.preheader.peel.newph ] ; 3 uses
  %.394150 = phi ptr [ %i.ek, %.lr.ph152 ], [ %i.dk, %.lr.ph152.preheader.peel.newph ] ; 3 uses
  %.4149 = phi i64 [ %i.ej, %.lr.ph152 ], [ %i.dj, %.lr.ph152.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %i.eb = load i64, ptr %.3151, align 1, !tbaa !9 ; 2 uses
  %i.ec = load i64, ptr %4, align 1, !tbaa !9
  %i.ed = xor i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %.394150, align 1, !tbaa !9
  store i64 %i.eb, ptr %4, align 1, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %.3151, i64 8
  %i.ef = load i64, ptr %i.ee, align 1, !tbaa !9  ; 2 uses
  %i.eg = load i64, ptr %i.dn, align 1, !tbaa !9
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %.394150, i64 8
  store i64 %i.eh, ptr %i.ei, align 1, !tbaa !9
  store i64 %i.ef, ptr %i.dn, align 1, !tbaa !9
  %i.ej = add i64 %.4149, -16                     ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.394150, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.3151, i64 16 ; 2 uses
  %i.em = icmp ugt i64 %i.ej, 15
  br i1 %i.em, label %.lr.ph152, label %._crit_edge153, !llvm.loop !29

._crit_edge153:                                   ; preds = %._crit_edge147.peel, %.lr.ph152, %.preheader
  %.6.lcssa = phi i32 [ %.5104.lcssa, %.preheader ], [ 0, %.lr.ph152 ], [ 0, %._crit_edge147.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.398.lcssa, %.preheader ], [ %i.dj, %._crit_edge147.peel ], [ %i.ej, %.lr.ph152 ] ; 10 uses
  %.394.lcssa = phi ptr [ %.293.lcssa, %.preheader ], [ %i.dk, %._crit_edge147.peel ], [ %i.ek, %.lr.ph152 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.dl, %._crit_edge147.peel ], [ %i.el, %.lr.ph152 ] ; 6 uses
  %.not106 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not106, label %.loopexit111, label %iter.check275

iter.check275:                                    ; preds = %._crit_edge153
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #3
  %min.iters.check259 = icmp samesign ult i64 %.4.lcssa, 8
  br i1 %min.iters.check259, label %vec.epilog.scalar.ph276.preheader, label %vector.scevcheck240

vector.scevcheck240:                              ; preds = %iter.check275
  %i.en = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = xor i32 %.6.lcssa, -1
  %i.eq = icmp ult i32 %i.ep, %i.eo
  %i.er = icmp ugt i64 %i.en, 4294967295
  %i.es = or i1 %i.eq, %i.er
  br i1 %i.es, label %vec.epilog.scalar.ph276.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %vector.scevcheck240
  %i.et = zext i32 %.6.lcssa to i64               ; 4 uses
  %scevgep242 = getelementptr i8, ptr %.394.lcssa, i64 %i.et ; 2 uses
  %i.eu = add nuw nsw i64 %.4.lcssa, %i.et        ; 3 uses
  %scevgep243 = getelementptr i8, ptr %.394.lcssa, i64 %i.eu ; 2 uses
  %scevgep244 = getelementptr i8, ptr %4, i64 %i.et ; 2 uses
  %scevgep245 = getelementptr i8, ptr %4, i64 %i.eu ; 2 uses
  %scevgep246 = getelementptr i8, ptr %.3.lcssa, i64 %i.et ; 2 uses
  %scevgep247 = getelementptr i8, ptr %.3.lcssa, i64 %i.eu ; 2 uses
  %bound0248 = icmp ult ptr %scevgep242, %scevgep245
  %bound1249 = icmp ult ptr %scevgep244, %scevgep243
  %found.conflict250 = and i1 %bound0248, %bound1249
  %bound0251 = icmp ult ptr %scevgep242, %scevgep247
  %bound1252 = icmp ult ptr %scevgep246, %scevgep243
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %found.conflict250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep244, %scevgep247
  %bound1256 = icmp ult ptr %scevgep246, %scevgep245
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  br i1 %conflict.rdx258, label %vec.epilog.scalar.ph276.preheader, label %vec.epilog.ph279

vec.epilog.ph279:                                 ; preds = %vector.memcheck241
  %n.vec280 = and i64 %.4.lcssa, 8                ; 3 uses
  %i.ev = and i64 %.4.lcssa, 7
  %i.ew = trunc nuw nsw i64 %n.vec280 to i32
  %i.ex = add i32 %.6.lcssa, %i.ew                ; 2 uses
  br label %vec.epilog.vector.body281

vec.epilog.vector.body281:                        ; preds = %vec.epilog.vector.body281, %vec.epilog.ph279
  %index282 = phi i64 [ 0, %vec.epilog.ph279 ], [ %index.next285, %vec.epilog.vector.body281 ] ; 2 uses
  %i.ey = trunc i64 %index282 to i32
  %i.ez = add i32 %.6.lcssa, %i.ey
  %i.fa = zext i32 %i.ez to i64                   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 %i.fa ; 2 uses
  %wide.load283 = load <8 x i8>, ptr %i.fb, align 1, !tbaa !11, !alias.scope !30, !noalias !33
  %i.fc = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fa
  %wide.load284 = load <8 x i8>, ptr %i.fc, align 1, !tbaa !11, !alias.scope !33 ; 2 uses
  %i.fd = xor <8 x i8> %wide.load284, %wide.load283
  %i.fe = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fa
  store <8 x i8> %i.fd, ptr %i.fe, align 1, !tbaa !11, !alias.scope !35, !noalias !37
  store <8 x i8> %wide.load284, ptr %i.fb, align 1, !tbaa !11, !alias.scope !30, !noalias !33
  %index.next285 = add nuw i64 %index282, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.ff, label %vec.epilog.middle.block286, label %vec.epilog.vector.body281, !llvm.loop !38

vec.epilog.middle.block286:                       ; preds = %vec.epilog.vector.body281
  %cmp.n287 = icmp eq i64 %.4.lcssa, %n.vec280
  br i1 %cmp.n287, label %.loopexit111, label %vec.epilog.scalar.ph276.preheader

vec.epilog.scalar.ph276.preheader:                ; preds = %vector.memcheck241, %vector.scevcheck240, %iter.check275, %vec.epilog.middle.block286
  %.5159.ph = phi i64 [ %.4.lcssa, %vector.scevcheck240 ], [ %.4.lcssa, %vector.memcheck241 ], [ %.4.lcssa, %iter.check275 ], [ %i.ev, %vec.epilog.middle.block286 ] ; 4 uses
  %.8158.ph = phi i32 [ %.6.lcssa, %vector.scevcheck240 ], [ %.6.lcssa, %vector.memcheck241 ], [ %.6.lcssa, %iter.check275 ], [ %i.ex, %vec.epilog.middle.block286 ] ; 3 uses
  %xtraiter308 = and i64 %.5159.ph, 1
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %vec.epilog.scalar.ph276.prol.loopexit, label %vec.epilog.scalar.ph276.prol

vec.epilog.scalar.ph276.prol:                     ; preds = %vec.epilog.scalar.ph276.preheader
  %i.fg = add nsw i64 %.5159.ph, -1
  %i.fh = zext i32 %.8158.ph to i64               ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11  ; 2 uses
  %i.fm = xor i8 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fh
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !11
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !11
  %i.fo = add i32 %.8158.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph276.prol.loopexit

vec.epilog.scalar.ph276.prol.loopexit:            ; preds = %vec.epilog.scalar.ph276.prol, %vec.epilog.scalar.ph276.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph276.preheader ], [ %i.fo, %vec.epilog.scalar.ph276.prol ]
  %.5159.unr = phi i64 [ %.5159.ph, %vec.epilog.scalar.ph276.preheader ], [ %i.fg, %vec.epilog.scalar.ph276.prol ]
  %.8158.unr = phi i32 [ %.8158.ph, %vec.epilog.scalar.ph276.preheader ], [ %i.fo, %vec.epilog.scalar.ph276.prol ]
  %i.fp = icmp eq i64 %.5159.ph, 1
  br i1 %i.fp, label %.loopexit111, label %vec.epilog.scalar.ph276

vec.epilog.scalar.ph276:                          ; preds = %vec.epilog.scalar.ph276.prol.loopexit, %vec.epilog.scalar.ph276
  %.5159 = phi i64 [ %i.fy, %vec.epilog.scalar.ph276 ], [ %.5159.unr, %vec.epilog.scalar.ph276.prol.loopexit ]
  %.8158 = phi i32 [ %i.gg, %vec.epilog.scalar.ph276 ], [ %.8158.unr, %vec.epilog.scalar.ph276.prol.loopexit ] ; 3 uses
  %i.fq = zext i32 %.8158 to i64                  ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11  ; 2 uses
  %i.fv = xor i8 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fq
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !11
  store i8 %i.fu, ptr %i.fr, align 1, !tbaa !11
  %i.fx = add i32 %.8158, 1
  %i.fy = add i64 %.5159, -2                      ; 2 uses
  %i.fz = zext i32 %i.fx to i64                   ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 %i.fz ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
  %i.gc = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !11  ; 2 uses
  %i.ge = xor i8 %i.gd, %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %.394.lcssa, i64 %i.fz
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !11
  store i8 %i.gd, ptr %i.ga, align 1, !tbaa !11
  %i.gg = add i32 %.8158, 2                       ; 2 uses
  %.not107.1 = icmp eq i64 %i.fy, 0
  br i1 %.not107.1, label %.loopexit111, label %vec.epilog.scalar.ph276, !llvm.loop !39

.loopexit111:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph276.prol.loopexit, %vec.epilog.scalar.ph276, %vec.epilog.middle.block, %vec.epilog.middle.block286, %._crit_edge153, %._crit_edge128, %bb.a
  %.9.sink = phi i32 [ %i.gg, %vec.epilog.scalar.ph276 ], [ -1, %bb.a ], [ %.1100.lcssa, %._crit_edge128 ], [ %.6.lcssa, %._crit_edge153 ], [ %i.ex, %vec.epilog.middle.block286 ], [ %i.bj, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph276.prol.loopexit ], [ %.lcssa298.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cs, %vec.epilog.scalar.ph ]
  store i32 %.9.sink, ptr %5, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @CRYPTO_cfb128_1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.032 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.b ] ; 3 uses
  %i.a = lshr i64 %.032, 3                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !11
  %i.d = zext i8 %i.c to i32
  %i.e = trunc i64 %.032 to i32
  %i.f = and i32 %i.e, 7                          ; 3 uses
  %i.g = lshr exact i32 128, %i.f
  %i.h = and i32 %i.g, %i.d
  %.not = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.j = load <16 x i8>, ptr %4, align 1          ; 2 uses
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !40
  %i.k = load i8, ptr %4, align 1, !tbaa !11
  %i.l = xor i8 %i.k, %i.i                        ; 2 uses
  %..i = select i1 %.not.i, i8 %i.i, i8 %i.l
  %i.m = insertelement <16 x i8> poison, i8 %..i, i64 0
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.m, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.o = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %i.j, <16 x i8> %i.n, <16 x i8> splat (i8 1))
  store <16 x i8> %i.o, ptr %4, align 1, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = zext i8 %i.q to i32
  %i.s = ashr i32 -129, %i.f
  %i.t = and i32 %i.s, %i.r
  %i.u = and i8 %i.l, -128
  %i.v = zext i8 %i.u to i32
  %i.w = lshr exact i32 %i.v, %i.f
  %i.x = or i32 %i.t, %i.w
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.p, align 1, !tbaa !11
  %i.z = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.010.us = phi i64 [ %i.f, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.010.us
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.010.us
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !40
  %i.c = load i8, ptr %i.a, align 1, !tbaa !11    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !11
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !42

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #3, !inline_history !40
  %i.i = load i8, ptr %i.g, align 1, !tbaa !11
  %i.j = load i8, ptr %4, align 1, !tbaa !11
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22, !17}
!22 = distinct !{!22, !18}
!23 = !{!22}
!24 = distinct !{!24, !13, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !13, !25}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13, !15}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!31, !34}
!38 = distinct !{!38, !13, !25, !26}
!39 = distinct !{!39, !13, !25}
!40 = distinct !{null}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
end_hunk_0
