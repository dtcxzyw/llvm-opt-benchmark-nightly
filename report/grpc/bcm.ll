Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@CRYPTO_cfb128_encrypt:bb.a

.lr.ph131.peel:                                   ; preds = %.preheader116
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.f = icmp ult i32 %.0101.lcssa, 16
  br i1 %i.f, label %.lr.ph126.peel, label %._crit_edge.peel

.lr.ph126.peel:                                   ; preds = %.lr.ph131.peel
  %i.g = zext nneg i32 %.0101.lcssa to i64        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.g
  %.0.copyload.i111.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.peel, %.0.copyload.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa, 8
  br i1 %i.l, label %.lr.ph126.1.peel, label %._crit_edge.peel

.lr.ph126.1.peel:                                 ; preds = %.lr.ph126.peel
  %indvars.iv.next.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.peel ; 2 uses
  %.0.copyload.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %indvars.iv.next.peel
  %.0.copyload.i111.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.1.peel, %.0.copyload.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 %indvars.iv.next.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.peel

._crit_edge.peel:                                 ; preds = %.lr.ph126.peel, %.lr.ph126.1.peel, %.lr.ph131.peel
  %i.q = add i64 %.097.lcssa, -16                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.preheader.peel.newph, label %._crit_edge132

.lr.ph131.preheader.peel.newph:                   ; preds = %._crit_edge.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131

.lr.ph:                                           ; preds = %.preheader117, %.lr.ph
  %.0121 = phi ptr [ %i.v, %.lr.ph ], [ %0, %.preheader117 ] ; 2 uses
  %.093120 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %.preheader117 ] ; 2 uses
  %.097119 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %.preheader117 ]
  %.0101118 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %.preheader117 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121, align 1, !tbaa !80
  %i.x = zext i32 %.0101118 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120, align 1, !tbaa !80
  %i.ac = add i64 %.097119, -1                    ; 3 uses
  %i.ad = add i32 %.0101118, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader116, !llvm.loop !3

.lr.ph131:                                        ; preds = %.lr.ph131.preheader.peel.newph, %.lr.ph131
  %.1130 = phi ptr [ %i.ao, %.lr.ph131 ], [ %i.s, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.194129 = phi ptr [ %i.an, %.lr.ph131 ], [ %i.r, %.lr.ph131.preheader.peel.newph ] ; 3 uses
  %.198128 = phi i64 [ %i.am, %.lr.ph131 ], [ %i.q, %.lr.ph131.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %4, align 1
  %.0.copyload.i111 = load i64, ptr %.1130, align 1
  %i.ai = xor i64 %.0.copyload.i111, %.0.copyload.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129, align 1
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130, i64 8
  %.0.copyload.i111.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.1, %.0.copyload.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128, -16                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131, label %._crit_edge132, !llvm.loop !421

._crit_edge132:                                   ; preds = %._crit_edge.peel, %.lr.ph131, %.preheader116
  %.1102.lcssa = phi i32 [ %.0101.lcssa, %.preheader116 ], [ 0, %.lr.ph131 ], [ 0, %._crit_edge.peel ] ; 8 uses
  %.198.lcssa = phi i64 [ %.097.lcssa, %.preheader116 ], [ %i.q, %._crit_edge.peel ], [ %i.am, %.lr.ph131 ] ; 10 uses
  %.194.lcssa = phi ptr [ %.093.lcssa, %.preheader116 ], [ %i.r, %._crit_edge.peel ], [ %i.an, %.lr.ph131 ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader116 ], [ %i.s, %._crit_edge.peel ], [ %i.ao, %.lr.ph131 ] ; 6 uses
  %.not109 = icmp eq i64 %.198.lcssa, 0
  br i1 %.not109, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check = icmp samesign ult i64 %.198.lcssa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa, -1             ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa to i64            ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.aw  ; 2 uses
  %i.ax = add nuw nsw i64 %.198.lcssa, %i.aw      ; 3 uses
  %scevgep222 = getelementptr i8, ptr %4, i64 %i.ax ; 2 uses
  %scevgep223 = getelementptr i8, ptr %.194.lcssa, i64 %i.aw ; 2 uses
  %scevgep224 = getelementptr i8, ptr %.194.lcssa, i64 %i.ax ; 2 uses
  %scevgep225 = getelementptr i8, ptr %.1.lcssa, i64 %i.aw ; 2 uses
  %scevgep226 = getelementptr i8, ptr %.1.lcssa, i64 %i.ax ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep224
  %bound1 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict = and i1 %bound0, %bound1
  %bound0227 = icmp ult ptr %scevgep, %scevgep226
  %bound1228 = icmp ult ptr %scevgep225, %scevgep222
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx = or i1 %found.conflict, %found.conflict229
  %bound0230 = icmp ult ptr %scevgep223, %scevgep226
  %bound1231 = icmp ult ptr %scevgep225, %scevgep224
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx, %found.conflict232
  br i1 %conflict.rdx233, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec239 = and i64 %.198.lcssa, 8              ; 3 uses
  %i.ay = and i64 %.198.lcssa, 7
  %i.az = trunc nuw nsw i64 %n.vec239 to i32
  %i.ba = add i32 %.1102.lcssa, %i.az             ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = trunc i64 %index240 to i32
  %i.bc = add i32 %.1102.lcssa, %i.bb
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bd
  %wide.load241 = load <8 x i8>, ptr %i.be, align 1, !tbaa !80, !alias.scope !435
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.bd ; 2 uses
  %wide.load242 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !80, !alias.scope !436, !noalias !437
  %i.bg = xor <8 x i8> %wide.load242, %wide.load241 ; 2 uses
  store <8 x i8> %i.bg, ptr %i.bf, align 1, !tbaa !80, !alias.scope !436, !noalias !437
  %i.bh = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bd
  store <8 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !80, !alias.scope !438, !noalias !435
  %index.next243 = add nuw i64 %index240, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next243, %n.vec239
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !426

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %.198.lcssa, %n.vec239
  br i1 %cmp.n244, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.299138.ph = phi i64 [ %.198.lcssa, %vector.scevcheck ], [ %.198.lcssa, %vector.memcheck ], [ %.198.lcssa, %iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.ph = phi i32 [ %.1102.lcssa, %vector.scevcheck ], [ %.1102.lcssa, %vector.memcheck ], [ %.1102.lcssa, %iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bj = add nsw i64 %.299138.ph, -1
  %i.bk = zext i32 %.3104137.ph to i64            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !80
  %i.bp = xor i8 %i.bo, %i.bm                     ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !80
  %i.br = add i32 %.3104137.ph, 1                 ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa305.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph.prol ]
  %.299138.unr = phi i64 [ %.299138.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph.prol ]
  %.3104137.unr = phi i32 [ %.3104137.ph, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph.prol ]
  %i.bs = icmp eq i64 %.299138.ph, 1
  br i1 %i.bs, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138 = phi i64 [ %i.cb, %vec.epilog.scalar.ph ], [ %.299138.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137 = phi i32 [ %i.cj, %vec.epilog.scalar.ph ], [ %.3104137.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bt = zext i32 %.3104137 to i64               ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !80
  %i.by = xor i8 %i.bx, %i.bv                     ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !80
  %i.ca = add i32 %.3104137, 1
  %i.cb = add nsw i64 %.299138, -2                ; 2 uses
  %i.cc = zext i32 %i.ca to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.cc ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !80
  %i.ch = xor i8 %i.cg, %i.ce                     ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %.194.lcssa, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !80
  %i.cj = add i32 %.3104137, 2                    ; 2 uses
  %.not110.1 = icmp eq i64 %i.cb, 0
  br i1 %.not110.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !427

.preheader:                                       ; preds = %.lr.ph143, %.preheader114
  %.5106.lcssa = phi i32 [ %i.a, %.preheader114 ], [ %i.dk, %.lr.ph143 ] ; 4 uses
  %.3100.lcssa = phi i64 [ %2, %.preheader114 ], [ %i.di, %.lr.ph143 ] ; 3 uses
  %.295.lcssa = phi ptr [ %1, %.preheader114 ], [ %i.dh, %.lr.ph143 ] ; 4 uses
  %.2.lcssa = phi ptr [ %0, %.preheader114 ], [ %i.de, %.lr.ph143 ] ; 4 uses
  %i.ck = icmp ugt i64 %.3100.lcssa, 15
  br i1 %i.ck, label %.lr.ph156.peel, label %._crit_edge157

.lr.ph156.peel:                                   ; preds = %.preheader
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %i.cl = icmp ult i32 %.5106.lcssa, 16
  br i1 %i.cl, label %.lr.ph150.peel, label %._crit_edge151.peel

.lr.ph150.peel:                                   ; preds = %.lr.ph156.peel
  %i.cm = zext nneg i32 %.5106.lcssa to i64       ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %i.cm
  %.0.copyload.i112.peel = load i64, ptr %i.cn, align 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm ; 2 uses
  %.0.copyload.i113.peel = load i64, ptr %i.cp, align 1
  %i.cq = xor i64 %.0.copyload.i113.peel, %.0.copyload.i112.peel
  store i64 %i.cq, ptr %i.co, align 1
  store i64 %.0.copyload.i112.peel, ptr %i.cp, align 1
  %i.cr = icmp ult i32 %.5106.lcssa, 8
  br i1 %i.cr, label %.lr.ph150.1.peel, label %._crit_edge151.peel

.lr.ph150.1.peel:                                 ; preds = %.lr.ph150.peel
  %indvars.iv.next182.peel = add nuw nsw i64 %i.cm, 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 %indvars.iv.next182.peel
  %.0.copyload.i112.1.peel = load i64, ptr %i.cs, align 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 %indvars.iv.next182.peel
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.peel ; 2 uses
  %.0.copyload.i113.1.peel = load i64, ptr %i.cu, align 1
  %i.cv = xor i64 %.0.copyload.i113.1.peel, %.0.copyload.i112.1.peel
  store i64 %i.cv, ptr %i.ct, align 1
  store i64 %.0.copyload.i112.1.peel, ptr %i.cu, align 1
  br label %._crit_edge151.peel

._crit_edge151.peel:                              ; preds = %.lr.ph150.peel, %.lr.ph150.1.peel, %.lr.ph156.peel
  %i.cw = add i64 %.3100.lcssa, -16               ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 16 ; 2 uses
  %i.cz = icmp ugt i64 %i.cw, 15
  br i1 %i.cz, label %.lr.ph156.preheader.peel.newph, label %._crit_edge157

.lr.ph156.preheader.peel.newph:                   ; preds = %._crit_edge151.peel
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156

.lr.ph143:                                        ; preds = %.preheader114, %.lr.ph143
  %.2142 = phi ptr [ %i.de, %.lr.ph143 ], [ %0, %.preheader114 ] ; 2 uses
  %.295141 = phi ptr [ %i.dh, %.lr.ph143 ], [ %1, %.preheader114 ] ; 2 uses
  %.3100140 = phi i64 [ %i.di, %.lr.ph143 ], [ %2, %.preheader114 ]
  %.5106139 = phi i32 [ %i.dk, %.lr.ph143 ], [ %i.a, %.preheader114 ] ; 2 uses
  %i.db = zext i32 %.5106139 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %.2142, i64 1 ; 2 uses
  %i.df = load i8, ptr %.2142, align 1, !tbaa !80 ; 2 uses
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %.295141, i64 1 ; 2 uses
  store i8 %i.dg, ptr %.295141, align 1, !tbaa !80
  store i8 %i.df, ptr %i.dc, align 1, !tbaa !80
  %i.di = add i64 %.3100140, -1                   ; 3 uses
  %i.dj = add i32 %.5106139, 1
  %i.dk = and i32 %i.dj, 15                       ; 3 uses
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = icmp ne i64 %i.di, 0
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %.lr.ph143, label %.preheader, !llvm.loop !4

.lr.ph156:                                        ; preds = %.lr.ph156.preheader.peel.newph, %.lr.ph156
  %.3155 = phi ptr [ %i.du, %.lr.ph156 ], [ %i.cy, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.396154 = phi ptr [ %i.dt, %.lr.ph156 ], [ %i.cx, %.lr.ph156.preheader.peel.newph ] ; 3 uses
  %.4153 = phi i64 [ %i.ds, %.lr.ph156 ], [ %i.cw, %.lr.ph156.preheader.peel.newph ]
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i112 = load i64, ptr %.3155, align 1 ; 2 uses
  %.0.copyload.i113 = load i64, ptr %4, align 1
  %i.do = xor i64 %.0.copyload.i113, %.0.copyload.i112
  store i64 %i.do, ptr %.396154, align 1
  store i64 %.0.copyload.i112, ptr %4, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.3155, i64 8
  %.0.copyload.i112.1 = load i64, ptr %i.dp, align 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.396154, i64 8
  %.0.copyload.i113.1 = load i64, ptr %i.da, align 1
  %i.dr = xor i64 %.0.copyload.i113.1, %.0.copyload.i112.1
  store i64 %i.dr, ptr %i.dq, align 1
  store i64 %.0.copyload.i112.1, ptr %i.da, align 1
  %i.ds = add i64 %.4153, -16                     ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.396154, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.3155, i64 16 ; 2 uses
  %i.dv = icmp ugt i64 %i.ds, 15
  br i1 %i.dv, label %.lr.ph156, label %._crit_edge157, !llvm.loop !428

._crit_edge157:                                   ; preds = %._crit_edge151.peel, %.lr.ph156, %.preheader
  %.6.lcssa = phi i32 [ %.5106.lcssa, %.preheader ], [ 0, %.lr.ph156 ], [ 0, %._crit_edge151.peel ] ; 8 uses
  %.4.lcssa = phi i64 [ %.3100.lcssa, %.preheader ], [ %i.cw, %._crit_edge151.peel ], [ %i.ds, %.lr.ph156 ] ; 10 uses
  %.396.lcssa = phi ptr [ %.295.lcssa, %.preheader ], [ %i.cx, %._crit_edge151.peel ], [ %i.dt, %.lr.ph156 ] ; 6 uses
  %.3.lcssa = phi ptr [ %.2.lcssa, %.preheader ], [ %i.cy, %._crit_edge151.peel ], [ %i.du, %.lr.ph156 ] ; 6 uses
  %.not107 = icmp eq i64 %.4.lcssa, 0
  br i1 %.not107, label %.loopexit, label %iter.check282

iter.check282:                                    ; preds = %._crit_edge157
  tail call void %7(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %min.iters.check266 = icmp samesign ult i64 %.4.lcssa, 8
  br i1 %min.iters.check266, label %vec.epilog.scalar.ph283.preheader, label %vector.scevcheck247

vector.scevcheck247:                              ; preds = %iter.check282
  %i.dw = add nsw i64 %.4.lcssa, -1               ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = xor i32 %.6.lcssa, -1
  %i.dz = icmp ult i32 %i.dy, %i.dx
  %i.ea = icmp ugt i64 %i.dw, 4294967295
  %i.eb = or i1 %i.dz, %i.ea
  br i1 %i.eb, label %vec.epilog.scalar.ph283.preheader, label %vector.memcheck248

vector.memcheck248:                               ; preds = %vector.scevcheck247
  %i.ec = zext i32 %.6.lcssa to i64               ; 4 uses
  %scevgep249 = getelementptr i8, ptr %.396.lcssa, i64 %i.ec ; 2 uses
  %i.ed = add nuw nsw i64 %.4.lcssa, %i.ec        ; 3 uses
  %scevgep250 = getelementptr i8, ptr %.396.lcssa, i64 %i.ed ; 2 uses
  %scevgep251 = getelementptr i8, ptr %4, i64 %i.ec ; 2 uses
  %scevgep252 = getelementptr i8, ptr %4, i64 %i.ed ; 2 uses
  %scevgep253 = getelementptr i8, ptr %.3.lcssa, i64 %i.ec ; 2 uses
  %scevgep254 = getelementptr i8, ptr %.3.lcssa, i64 %i.ed ; 2 uses
  %bound0255 = icmp ult ptr %scevgep249, %scevgep252
  %bound1256 = icmp ult ptr %scevgep251, %scevgep250
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0258 = icmp ult ptr %scevgep249, %scevgep254
  %bound1259 = icmp ult ptr %scevgep253, %scevgep250
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %found.conflict257, %found.conflict260
  %bound0262 = icmp ult ptr %scevgep251, %scevgep254
  %bound1263 = icmp ult ptr %scevgep253, %scevgep252
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  br i1 %conflict.rdx265, label %vec.epilog.scalar.ph283.preheader, label %vec.epilog.ph286

vec.epilog.ph286:                                 ; preds = %vector.memcheck248
  %n.vec287 = and i64 %.4.lcssa, 8                ; 3 uses
  %i.ee = and i64 %.4.lcssa, 7
  %i.ef = trunc nuw nsw i64 %n.vec287 to i32
  %i.eg = add i32 %.6.lcssa, %i.ef                ; 2 uses
  br label %vec.epilog.vector.body288

vec.epilog.vector.body288:                        ; preds = %vec.epilog.vector.body288, %vec.epilog.ph286
  %index289 = phi i64 [ 0, %vec.epilog.ph286 ], [ %index.next292, %vec.epilog.vector.body288 ] ; 2 uses
  %i.eh = trunc i64 %index289 to i32
  %i.ei = add i32 %.6.lcssa, %i.eh
  %i.ej = zext i32 %i.ei to i64                   ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej ; 2 uses
  %wide.load290 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !80, !alias.scope !439, !noalias !440
  %i.el = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ej
  %wide.load291 = load <8 x i8>, ptr %i.el, align 1, !tbaa !80, !alias.scope !440 ; 2 uses
  %i.em = xor <8 x i8> %wide.load291, %wide.load290
  %i.en = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ej
  store <8 x i8> %i.em, ptr %i.en, align 1, !tbaa !80, !alias.scope !441, !noalias !442
  store <8 x i8> %wide.load291, ptr %i.ek, align 1, !tbaa !80, !alias.scope !439, !noalias !440
  %index.next292 = add nuw i64 %index289, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next292, %n.vec287
  br i1 %i.eo, label %vec.epilog.middle.block293, label %vec.epilog.vector.body288, !llvm.loop !433

vec.epilog.middle.block293:                       ; preds = %vec.epilog.vector.body288
  %cmp.n294 = icmp eq i64 %.4.lcssa, %n.vec287
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.scalar.ph283.preheader

vec.epilog.scalar.ph283.preheader:                ; preds = %vector.memcheck248, %vector.scevcheck247, %iter.check282, %vec.epilog.middle.block293
  %.5163.ph = phi i64 [ %.4.lcssa, %vector.scevcheck247 ], [ %.4.lcssa, %vector.memcheck248 ], [ %.4.lcssa, %iter.check282 ], [ %i.ee, %vec.epilog.middle.block293 ] ; 4 uses
  %.8162.ph = phi i32 [ %.6.lcssa, %vector.scevcheck247 ], [ %.6.lcssa, %vector.memcheck248 ], [ %.6.lcssa, %iter.check282 ], [ %i.eg, %vec.epilog.middle.block293 ] ; 3 uses
  %xtraiter315 = and i64 %.5163.ph, 1
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %vec.epilog.scalar.ph283.prol.loopexit, label %vec.epilog.scalar.ph283.prol

vec.epilog.scalar.ph283.prol:                     ; preds = %vec.epilog.scalar.ph283.preheader
  %i.ep = add nsw i64 %.5163.ph, -1
  %i.eq = zext i32 %.8162.ph to i64               ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 %i.eq ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !80
  %i.et = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !80  ; 2 uses
  %i.ev = xor i8 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.eq
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !80
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !80
  %i.ex = add i32 %.8162.ph, 1                    ; 2 uses
  br label %vec.epilog.scalar.ph283.prol.loopexit

vec.epilog.scalar.ph283.prol.loopexit:            ; preds = %vec.epilog.scalar.ph283.prol, %vec.epilog.scalar.ph283.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph283.preheader ], [ %i.ex, %vec.epilog.scalar.ph283.prol ]
  %.5163.unr = phi i64 [ %.5163.ph, %vec.epilog.scalar.ph283.preheader ], [ %i.ep, %vec.epilog.scalar.ph283.prol ]
  %.8162.unr = phi i32 [ %.8162.ph, %vec.epilog.scalar.ph283.preheader ], [ %i.ex, %vec.epilog.scalar.ph283.prol ]
  %i.ey = icmp eq i64 %.5163.ph, 1
  br i1 %i.ey, label %.loopexit, label %vec.epilog.scalar.ph283

vec.epilog.scalar.ph283:                          ; preds = %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283
  %.5163 = phi i64 [ %i.fh, %vec.epilog.scalar.ph283 ], [ %.5163.unr, %vec.epilog.scalar.ph283.prol.loopexit ]
  %.8162 = phi i32 [ %i.fp, %vec.epilog.scalar.ph283 ], [ %.8162.unr, %vec.epilog.scalar.ph283.prol.loopexit ] ; 3 uses
  %i.ez = zext i32 %.8162 to i64                  ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ez ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !80
  %i.fc = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !80  ; 2 uses
  %i.fe = xor i8 %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.ez
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !80
  store i8 %i.fd, ptr %i.fa, align 1, !tbaa !80
  %i.fg = add i32 %.8162, 1
  %i.fh = add nsw i64 %.5163, -2                  ; 2 uses
  %i.fi = zext i32 %i.fg to i64                   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !80
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.fi
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !80  ; 2 uses
  %i.fn = xor i8 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %.396.lcssa, i64 %i.fi
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !80
  store i8 %i.fm, ptr %i.fj, align 1, !tbaa !80
  %i.fp = add i32 %.8162, 2                       ; 2 uses
  %.not108.1 = icmp eq i64 %i.fh, 0
  br i1 %.not108.1, label %.loopexit, label %vec.epilog.scalar.ph283, !llvm.loop !434

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283, %vec.epilog.middle.block, %vec.epilog.middle.block293, %._crit_edge157, %._crit_edge132
  %storemerge = phi i32 [ %.1102.lcssa, %._crit_edge132 ], [ %i.fp, %vec.epilog.scalar.ph283 ], [ %.6.lcssa, %._crit_edge157 ], [ %i.eg, %vec.epilog.middle.block293 ], [ %i.ba, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph283.prol.loopexit ], [ %.lcssa305.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cj, %vec.epilog.scalar.ph ]
  store i32 %storemerge, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_1_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !80
  %i.d = zext i8 %i.c to i32
  %i.e = trunc i64 %.032 to i32
  %i.f = and i32 %i.e, 7                          ; 3 uses
  %i.g = lshr exact i32 128, %i.f
  %i.h = and i32 %i.g, %i.d
  %.not = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not, i8 0, i8 -128           ; 2 uses
  %i.j = load <16 x i8>, ptr %4, align 1          ; 2 uses
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !5
  %i.k = load i8, ptr %4, align 1, !tbaa !80
  %i.l = xor i8 %i.k, %i.i                        ; 2 uses
  %..i = select i1 %.not.i, i8 %i.i, i8 %i.l
  %i.m = insertelement <16 x i8> poison, i8 %..i, i64 0
  %i.n = shufflevector <16 x i8> %i.j, <16 x i8> %i.m, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.o = tail call <16 x i8> @llvm.fshl.v16i8(<16 x i8> %i.j, <16 x i8> %i.n, <16 x i8> splat (i8 1))
  store <16 x i8> %i.o, ptr %4, align 1, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = zext i8 %i.q to i32
  %i.s = ashr i32 -129, %i.f
  %i.t = and i32 %i.s, %i.r
  %i.u = and i8 %i.l, -128
  %i.v = zext i8 %i.u to i32
  %i.w = lshr exact i32 %i.v, %i.f
  %i.x = or i32 %i.t, %i.w
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.p, align 1, !tbaa !80
  %i.z = add nuw i64 %.032, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !443

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cfb128_8_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
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
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !5
  %i.c = load i8, ptr %i.a, align 1, !tbaa !80    ; 2 uses
  %i.d = load i8, ptr %4, align 1, !tbaa !80
  %i.e = xor i8 %i.d, %i.c
  store i8 %i.e, ptr %i.b, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.c, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.f = add nuw i64 %.010.us, 1                  ; 2 uses
  %exitcond12.not = icmp eq i64 %i.f, %2
  br i1 %exitcond12.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !444

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.010 = phi i64 [ %i.l, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.010
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %3) #36, !inline_history !5
  %i.i = load i8, ptr %i.g, align 1, !tbaa !80
  %i.j = load i8, ptr %4, align 1, !tbaa !80
  %i.k = xor i8 %i.j, %i.i                        ; 2 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.k, ptr %.sroa.4.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.l = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !444

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = load i32, ptr %6, align 4, !tbaa !82     ; 3 uses
  %i.c = icmp ne i32 %i.b, 0
  %i.d = icmp ne i64 %2, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05873 = phi i32 [ %i.o, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.06072 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.06271 = phi ptr [ %i.l, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.06470 = phi i64 [ %i.m, %.lr.ph ], [ %2, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.06072, i64 1 ; 2 uses
  %i.g = load i8, ptr %.06072, align 1, !tbaa !80
  %i.h = zext i32 %.05873 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %i.k = xor i8 %i.j, %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %.06271, i64 1 ; 2 uses
  store i8 %i.k, ptr %.06271, align 1, !tbaa !80
  %i.m = add i64 %.06470, -1                      ; 3 uses
  %i.n = add i32 %.05873, 1
  %i.o = and i32 %i.n, 15                         ; 3 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne i64 %i.m, 0
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !445

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.064.lcssa = phi i64 [ %2, %bb.a ], [ %i.m, %.lr.ph ] ; 3 uses
  %.062.lcssa = phi ptr [ %1, %bb.a ], [ %i.l, %.lr.ph ] ; 2 uses
  %.060.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ] ; 2 uses
  %.058.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.o, %.lr.ph ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.0.copyload.i = load i32, ptr %i.s, align 1
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.u = icmp ugt i64 %.064.lcssa, 15
  br i1 %i.u, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %bb.d
  %.05780 = phi i32 [ %i.t, %.lr.ph82 ], [ %spec.select, %bb.d ]
  %.16179 = phi ptr [ %.060.lcssa, %.lr.ph82 ], [ %i.cx, %bb.d ] ; 2 uses
  %.16378 = phi ptr [ %.062.lcssa, %.lr.ph82 ], [ %i.cw, %bb.d ] ; 2 uses
  %.16577 = phi i64 [ %.064.lcssa, %.lr.ph82 ], [ %i.cv, %bb.d ] ; 2 uses
  %i.ag = lshr i64 %.16577, 4
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 268435456) ; 3 uses
  %i.ah = trunc nuw nsw i64 %spec.store.select to i32
  %i.ai = add i32 %.05780, %i.ah                  ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp samesign ugt i64 %spec.store.select, %i.aj ; 2 uses
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ai ; 4 uses
  %i.al = select i1 %i.ak, i64 %i.aj, i64 0
  %spec.select69 = sub nuw nsw i64 %spec.store.select, %i.al ; 2 uses
  tail call void %7(ptr noundef %.16179, ptr noundef %.16378, i64 noundef %spec.select69, ptr noundef %3, ptr noundef nonnull %4) #36
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %spec.select)
  store i32 %i.am, ptr %i.s, align 1
  %i.an = icmp eq i32 %spec.select, 0
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = load i8, ptr %i.v, align 1, !tbaa !80
end_hunk_0
begin_hunk_1_@CRYPTO_ctr128_encrypt_ctr32:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cu = shl nuw nsw i64 %spec.select69, 4       ; 3 uses
  %i.cv = sub i64 %.16577, %i.cu                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.16378, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.16179, i64 %i.cu ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, 15
  br i1 %i.cy, label %bb.b, label %._crit_edge83, !llvm.loop !446

._crit_edge83:                                    ; preds = %bb.d, %._crit_edge
  %.165.lcssa = phi i64 [ %.064.lcssa, %._crit_edge ], [ %i.cv, %bb.d ] ; 9 uses
  %.163.lcssa = phi ptr [ %.062.lcssa, %._crit_edge ], [ %i.cw, %bb.d ] ; 5 uses
  %.161.lcssa = phi ptr [ %.060.lcssa, %._crit_edge ], [ %i.cx, %bb.d ] ; 5 uses
  %.057.lcssa = phi i32 [ %i.t, %._crit_edge ], [ %spec.select, %bb.d ]
  %.163.lcssa113 = ptrtoaddr ptr %.163.lcssa to i64 ; 2 uses
  %.161.lcssa114 = ptrtoaddr ptr %.161.lcssa to i64
  %.not = icmp eq i64 %.165.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  tail call void %7(ptr noundef nonnull %5, ptr noundef nonnull %5, i64 noundef 1, ptr noundef %3, ptr noundef nonnull %4) #36
  %i.cz = add i32 %.057.lcssa, 1                  ; 2 uses
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %i.s, align 1
  %i.db = icmp eq i32 %i.cz, 0
  br i1 %i.db, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.dc, align 1, !tbaa !80
  %i.dh = lshr i32 %i.df, 8
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !80
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dh, %i.dk            ; 2 uses
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.di, align 1, !tbaa !80
  %i.dn = lshr i32 %i.dl, 8
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !80
  %i.dq = zext i8 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dn, %i.dq            ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  store i8 %i.ds, ptr %i.do, align 1, !tbaa !80
  %i.dt = lshr i32 %i.dr, 8
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !80
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nuw nsw i32 %i.dt, %i.dw            ; 2 uses
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !80
  %i.dz = lshr i32 %i.dx, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !80
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.ea, align 1, !tbaa !80
  %i.ef = lshr i32 %i.ed, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !80
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.ef, %i.ei            ; 2 uses
  %i.ek = trunc i32 %i.ej to i8
  store i8 %i.ek, ptr %i.eg, align 1, !tbaa !80
  %i.el = lshr i32 %i.ej, 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !80
  %i.eo = zext i8 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo            ; 2 uses
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !80
  %i.er = lshr i32 %i.ep, 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !80
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nuw nsw i32 %i.er, %i.eu            ; 2 uses
  %i.ew = trunc i32 %i.ev to i8
  store i8 %i.ew, ptr %i.es, align 1, !tbaa !80
  %i.ex = lshr i32 %i.ev, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !80
  %i.fa = zext i8 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa            ; 2 uses
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.ey, align 1, !tbaa !80
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !80
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.fd, %i.fg            ; 2 uses
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !80
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !80
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm            ; 2 uses
  %i.fo = trunc i32 %i.fn to i8
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !80
  %i.fp = lshr i32 %i.fn, 8
  %i.fq = load i8, ptr %4, align 1, !tbaa !80
  %i.fr = trunc nuw nsw i32 %i.fp to i8
  %i.fs = add i8 %i.fq, %i.fr
  store i8 %i.fs, ptr %4, align 1, !tbaa !80
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.e
  %min.iters.check = icmp samesign ult i64 %.165.lcssa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ft = add nsw i64 %.165.lcssa, -1             ; 2 uses
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = xor i32 %.058.lcssa, -1
  %i.fw = icmp ult i32 %i.fv, %i.fu
  %i.fx = icmp ugt i64 %i.ft, 4294967295
  %i.fy = or i1 %i.fw, %i.fx
  br i1 %i.fy, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fz = sub i64 %.161.lcssa114, %.163.lcssa113
  %diff.check = icmp ugt i64 %i.fz, -32
  %i.ga = sub i64 %i.a, %.163.lcssa113
  %diff.check115 = icmp ugt i64 %i.ga, -32
  %conflict.rdx = or i1 %diff.check, %diff.check115
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec121 = and i64 %.165.lcssa, 8              ; 3 uses
  %i.gb = trunc nuw nsw i64 %n.vec121 to i32
  %i.gc = add i32 %.058.lcssa, %i.gb              ; 2 uses
  %i.gd = and i64 %.165.lcssa, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = trunc i64 %index122 to i32
  %i.gf = add i32 %.058.lcssa, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gg
  %wide.load123 = load <8 x i8>, ptr %i.gh, align 1, !tbaa !80
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 %i.gg
  %wide.load124 = load <8 x i8>, ptr %i.gi, align 1, !tbaa !80
  %i.gj = xor <8 x i8> %wide.load124, %wide.load123
  %i.gk = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gg
  store <8 x i8> %i.gj, ptr %i.gk, align 1, !tbaa !80
  %index.next125 = add nuw i64 %index122, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next125, %n.vec121
  br i1 %i.gl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !447

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n126 = icmp eq i64 %.165.lcssa, %n.vec121
  br i1 %cmp.n126, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.15989.ph = phi i32 [ %.058.lcssa, %vector.scevcheck ], [ %.058.lcssa, %vector.memcheck ], [ %.058.lcssa, %iter.check ], [ %i.gc, %vec.epilog.middle.block ] ; 3 uses
  %.26688.ph = phi i64 [ %.165.lcssa, %vector.scevcheck ], [ %.165.lcssa, %vector.memcheck ], [ %.165.lcssa, %iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.26688.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gm = add nsw i64 %.26688.ph, -1
  %i.gn = zext i32 %.15989.ph to i64              ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !80
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !80
  %i.gs = xor i8 %i.gr, %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gn
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !80
  %i.gu = add i32 %.15989.ph, 1                   ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.15989.unr = phi i32 [ %.15989.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gu, %vec.epilog.scalar.ph.prol ]
  %.26688.unr = phi i64 [ %.26688.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gm, %vec.epilog.scalar.ph.prol ]
  %i.gv = icmp eq i64 %.26688.ph, 1
  br i1 %i.gv, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15989 = phi i32 [ %i.hm, %vec.epilog.scalar.ph ], [ %.15989.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %.26688 = phi i64 [ %i.he, %vec.epilog.scalar.ph ], [ %.26688.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.gw = zext i32 %.15989 to i64                 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 %i.gw
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !80
  %i.hb = xor i8 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.gw
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !80
  %i.hd = add i32 %.15989, 1
  %i.he = add nsw i64 %.26688, -2                 ; 2 uses
  %i.hf = zext i32 %i.hd to i64                   ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.161.lcssa, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !80
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 %i.hf
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !80
  %i.hk = xor i8 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw i8, ptr %.163.lcssa, i64 %i.hf
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !80
  %i.hm = add i32 %.15989, 2                      ; 2 uses
  %.not68.1 = icmp eq i64 %i.he, 0
  br i1 %.not68.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !448

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %._crit_edge83
  %.2 = phi i32 [ %.058.lcssa, %._crit_edge83 ], [ %i.gc, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hm, %vec.epilog.scalar.ph ]
  store i32 %.2, ptr %6, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @CRYPTO_ghash_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.copyload.i5 = load i64, ptr %i.b, align 1
  %i.c = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.a, i64 %i.c, i64 1)
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.c, i64 %i.a, i64 1)
  store i64 %i.f, ptr %i.d, align 8, !tbaa !94
  %isneg.i = icmp slt i64 %i.a, 0
  %i.g = select i1 %isneg.i, i64 -4467570830351532032, i64 0
  %i.h = xor i64 %i.g, %i.e
  store i64 %i.h, ptr %2, align 8, !tbaa !95
  store ptr @gcm_gmult_nohw, ptr %0, align 8, !tbaa !84
  store ptr @gcm_ghash_nohw, ptr %1, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @gcm_init_nohw(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !94
  %i.d = load i64, ptr %1, align 8, !tbaa !96     ; 3 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.b, i64 1)
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.b, i64 %i.d, i64 1)
  store i64 %i.f, ptr %i.c, align 8, !tbaa !94
  %isneg = icmp slt i64 %i.d, 0
  %i.g = select i1 %isneg, i64 -4467570830351532032, i64 0
  %i.h = xor i64 %i.g, %i.e
  store i64 %i.h, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @gcm_gmult_nohw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.g, align 1
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i) ; 2 uses
  %.0.copyload.i6 = load i64, ptr %0, align 1
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i6) ; 2 uses
  %.val = load i64, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.j, align 8, !tbaa !94 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.h, i64 noundef %.val5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.i, i64 noundef %.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.k = xor i64 %i.i, %i.h
  %i.l = xor i64 %.val5, %.val
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.k, i64 noundef %i.l)
  %i.m = load i64, ptr %i.a, align 8, !tbaa !96   ; 8 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !96
  %i.p = load i64, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !96
  %i.s = shl i64 %i.m, 63
  %i.t = shl i64 %i.m, 62
  %i.u = shl i64 %i.m, 57
  %i.v = xor i64 %i.t, %i.s
  %i.w = xor i64 %i.v, %i.u
  %i.x = xor i64 %i.w, %i.o
  %i.y = xor i64 %i.x, %i.m
  %i.z = xor i64 %i.y, %i.n
  %i.aa = xor i64 %i.z, %i.p                      ; 7 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 63)
  %i.ac = lshr i64 %i.aa, 1
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 62)
  %i.ae = lshr i64 %i.aa, 2
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.m, i64 57)
  %i.ag = xor i64 %i.r, %i.ab
  %i.ah = xor i64 %i.ag, %i.ad
  %i.ai = xor i64 %i.ah, %i.af
  %i.aj = xor i64 %i.ai, %i.m
  %i.ak = xor i64 %i.aj, %i.n
  %i.al = xor i64 %i.ak, %i.p
  %i.am = xor i64 %i.al, %i.q
  %i.an = lshr i64 %i.aa, 7
  %i.ao = xor i64 %i.ae, %i.ac
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = xor i64 %i.ap, %i.q
  %i.ar = xor i64 %i.aq, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.as = tail call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  store i64 %i.as, ptr %0, align 1
  %i.at = tail call noundef i64 @llvm.bswap.i64(i64 %i.am)
  store i64 %i.at, ptr %i.g, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @gcm_ghash_nohw(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.g, align 1    ; 2 uses
  %.0.copyload.i11 = load i64, ptr %0, align 1    ; 2 uses
  %i.h = icmp ugt i64 %3, 15
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.j = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i11)
  %.val = load i64, ptr %1, align 8, !tbaa !95    ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val10 = load i64, ptr %i.k, align 8, !tbaa !94 ; 2 uses
  %i.l = xor i64 %.val10, %.val
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.021 = phi i64 [ %3, %.lr.ph ], [ %i.az, %bb.b ]
  %.0920 = phi ptr [ %2, %.lr.ph ], [ %i.ay, %bb.b ] ; 3 uses
  %.sroa.0.019 = phi i64 [ %i.i, %.lr.ph ], [ %i.as, %bb.b ]
  %.sroa.8.018 = phi i64 [ %i.j, %.lr.ph ], [ %i.ax, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0920, i64 8
  %.0.copyload.i12 = load i64, ptr %i.m, align 1
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i12)
  %i.o = xor i64 %i.n, %.sroa.0.019               ; 2 uses
  %.0.copyload.i13 = load i64, ptr %.0920, align 1
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i13)
  %i.q = xor i64 %i.p, %.sroa.8.018               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.a, ptr noundef %i.b, i64 noundef %i.o, i64 noundef %.val10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.c, ptr noundef %i.d, i64 noundef %i.q, i64 noundef %.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.r = xor i64 %i.q, %i.o
  call fastcc void @_ZL14gcm_mul64_nohwPmS_mm(ptr noundef %i.e, ptr noundef %i.f, i64 noundef %i.r, i64 noundef %i.l)
  %i.s = load i64, ptr %i.a, align 8, !tbaa !96   ; 8 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !96   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !96
  %i.v = load i64, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !96
  %i.y = shl i64 %i.s, 63
  %i.z = shl i64 %i.s, 62
  %i.aa = shl i64 %i.s, 57
  %i.ab = xor i64 %i.z, %i.y
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = xor i64 %i.ac, %i.u
  %i.ae = xor i64 %i.ad, %i.s
  %i.af = xor i64 %i.ae, %i.t
  %i.ag = xor i64 %i.af, %i.v                     ; 7 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.s, i64 63)
  %i.ai = lshr i64 %i.ag, 1
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.s, i64 62)
  %i.ak = lshr i64 %i.ag, 2
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.s, i64 57)
  %i.am = xor i64 %i.x, %i.ah
  %i.an = xor i64 %i.am, %i.aj
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = xor i64 %i.ao, %i.s
end_hunk_1
begin_hunk_2_@AES_unwrap_key_padded:bb.a
  %i.at = select i1 %isnotneg.i.i.inv.1, i1 true, i1 %i.as
  %i.au = extractelement <4 x i1> %i.ap, i64 2
  %i.av = select i1 %isnotneg.i.i.inv.2, i1 true, i1 %i.au
  %i.aw = extractelement <4 x i1> %i.ap, i64 3
  %i.ax = select i1 %isnotneg.i.i.inv.3, i1 true, i1 %i.aw
  %i.ay = add i64 %5, -11                         ; 2 uses
  %i.az = sub i64 %i.ay, %i.o
  %i.ba = sub i64 10, %5
  %i.bb = and i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !80
  %isnotneg.i.i.inv.4 = icmp slt i64 %i.bb, 0
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = select i1 %isnotneg.i.i.inv.4, i1 true, i1 %i.be
  %i.bg = add i64 %5, -10                         ; 2 uses
  %i.bh = sub i64 %i.bg, %i.o
  %i.bi = sub i64 9, %5
  %i.bj = and i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %isnotneg.i.i.inv.5 = icmp slt i64 %i.bj, 0
  %i.bm = icmp eq i8 %i.bl, 0
  %i.bn = select i1 %isnotneg.i.i.inv.5, i1 true, i1 %i.bm
  %i.bo = sub i64 %i.s, %i.o
  %i.bp = sub i64 8, %5
  %i.bq = and i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !80
  %isnotneg.i.i.inv.6 = icmp slt i64 %i.bq, 0
  %i.bt = icmp eq i8 %i.bs, 0
  %i.bu = select i1 %isnotneg.i.i.inv.6, i1 true, i1 %i.bt
  %i.bv = select i1 %i.bu, i1 %i.bn, i1 false
  %i.bw = select i1 %i.bv, i1 %i.bf, i1 false
  %i.bx = select i1 %i.bw, i1 %i.ax, i1 false
  %i.by = select i1 %i.bx, i1 %i.av, i1 false
  %i.bz = select i1 %i.by, i1 %i.at, i1 false
  %i.ca = select i1 %i.bz, i1 %i.ar, i1 false
  %i.cb = select i1 %i.ca, i64 %i.v, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %.032.lcssa = phi i64 [ %i.v, %bb.f ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.cc = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.lcssa) #38, !srcloc !108
  %i.cd = and i64 %i.cc, %i.o
  store i64 %i.cd, ptr %2, align 8, !tbaa !96
  %i.ce = trunc nsw i64 %.032.lcssa to i32
  %i.cf = and i32 %i.ce, 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %.033 = phi i32 [ 0, %bb.e ], [ %i.cf, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g
  %.1 = phi i32 [ %.033, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @AES_ctr128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull @aes_nohw_ctr32_encrypt_blocks)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @aes_nohw_encrypt(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @aes_nohw_decrypt(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_cbc_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @aes_nohw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !82     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.p, %.lr.ph.i ]
  %i.e = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.e, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.g, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.n, %.lr.ph.i ], [ %2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.03444.i, align 1, !tbaa !80
  %i.i = zext i32 %.045.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !80
  %i.l = xor i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.l, ptr %.03643.i, align 1, !tbaa !80
  %i.n = add i64 %.03842.i, -1                    ; 3 uses
  %i.o = add i32 %.045.i, 1
  %i.p = and i32 %i.o, 15                         ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne i64 %i.n, 0
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i, !llvm.loop !6

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.z, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.y, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.x, %bb.b ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.t, ptr %.13750.i, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.v, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.f, align 1
  %i.w = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.w, ptr %i.u, align 1
  %i.x = add i64 %.13949.i, -16                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %bb.b, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.x, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.y, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.z, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa.i, -1
  %i.ac = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !80
  %i.aj = add i32 %.1.lcssa.i, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.i.unr = phi i32 [ %.1.lcssa.i, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.i.unr = phi i64 [ %.139.lcssa.i, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa.i, 1
  br i1 %i.ak, label %CRYPTO_ofb128_encrypt.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258.i = phi i32 [ %i.bb, %.new ], [ %.258.i.unr, %.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.at, %.new ], [ %.24057.i.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258.i to i64                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add i32 %.258.i, 1
  %i.at = add nsw i64 %.24057.i, -2               ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %.new, !llvm.loop !8

CRYPTO_ofb128_encrypt.exit:                       ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3.i, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !82     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.038.lcssa = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.036.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %.034.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.p, %.lr.ph ]
  %i.e = icmp ugt i64 %.038.lcssa, 15
  br i1 %i.e, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.045 = phi i32 [ %i.p, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.03444 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.03643 = phi ptr [ %i.m, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03842 = phi i64 [ %i.n, %.lr.ph ], [ %2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.03444, i64 1 ; 2 uses
  %i.h = load i8, ptr %.03444, align 1, !tbaa !80
  %i.i = zext i32 %.045 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !80
  %i.l = xor i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.03643, i64 1 ; 2 uses
  store i8 %i.l, ptr %.03643, align 1, !tbaa !80
  %i.n = add i64 %.03842, -1                      ; 3 uses
  %i.o = add i32 %.045, 1
  %i.p = and i32 %i.o, 15                         ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne i64 %i.n, 0
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %.preheader, !llvm.loop !6

bb.b:                                             ; preds = %.lr.ph52, %bb.b
  %.13551 = phi ptr [ %.034.lcssa, %.lr.ph52 ], [ %i.z, %bb.b ] ; 3 uses
  %.13750 = phi ptr [ %.036.lcssa, %.lr.ph52 ], [ %i.y, %bb.b ] ; 3 uses
  %.13949 = phi i64 [ %.038.lcssa, %.lr.ph52 ], [ %i.x, %bb.b ]
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %.0.copyload.i.i = load i64, ptr %.13551, align 1
  %.0.copyload.i7.i = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.t, ptr %.13750, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.13750, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.13551, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.v, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.w = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.w, ptr %i.u, align 1
  %i.x = add i64 %.13949, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.13750, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13551, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.139.lcssa = phi i64 [ %.038.lcssa, %.preheader ], [ %i.x, %bb.b ] ; 5 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader ], [ %i.y, %bb.b ] ; 3 uses
  %.135.lcssa = phi ptr [ %.034.lcssa, %.preheader ], [ %i.z, %bb.b ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.139.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %6(ptr noundef %4, ptr noundef %4, ptr noundef %3) #36
  %xtraiter = and i64 %.139.lcssa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa, -1
  %i.ac = zext i32 %.1.lcssa to i64               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !80
  %i.aj = add i32 %.1.lcssa, 1                    ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.unr = phi i32 [ %.1.lcssa, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.unr = phi i64 [ %.139.lcssa, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa, 1
  br i1 %i.ak, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258 = phi i32 [ %i.bb, %.new ], [ %.258.unr, %.prol.loopexit ] ; 3 uses
  %.24057 = phi i64 [ %i.at, %.new ], [ %.24057.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258 to i64                   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add i32 %.258, 1
  %i.at = add nsw i64 %.24057, -2                 ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add i32 %.258, 2                        ; 2 uses
  %.not41.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.1, label %.loopexit, label %.new, !llvm.loop !8

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %.3 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_cfb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !82     ; 5 uses
  %.not.i = icmp eq i32 %6, 0
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b                        ; 2 uses
  br i1 %.not.i, label %.preheader114.i, label %.preheader117.i

.preheader117.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.i, label %.preheader116.i

.preheader114.i:                                  ; preds = %bb.a
  br i1 %i.d, label %.lr.ph143.i, label %.preheader.i

.preheader116.i:                                  ; preds = %.lr.ph.i, %.preheader117.i
  %.0101.lcssa.i = phi i32 [ %i.a, %.preheader117.i ], [ %i.ae, %.lr.ph.i ] ; 4 uses
  %.097.lcssa.i = phi i64 [ %2, %.preheader117.i ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %.093.lcssa.i = phi ptr [ %1, %.preheader117.i ], [ %i.ab, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi ptr [ %0, %.preheader117.i ], [ %i.v, %.lr.ph.i ] ; 4 uses
  %i.e = icmp ugt i64 %.097.lcssa.i, 15
  br i1 %i.e, label %.lr.ph131.i.peel, label %._crit_edge132.i

.lr.ph131.i.peel:                                 ; preds = %.preheader116.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.f = icmp ult i32 %.0101.lcssa.i, 16
  br i1 %i.f, label %.lr.ph126.i.peel, label %._crit_edge.i.peel

.lr.ph126.i.peel:                                 ; preds = %.lr.ph131.i.peel
  %i.g = zext nneg i32 %.0101.lcssa.i to i64      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 2 uses
  %.0.copyload.i.i.peel = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.g
  %.0.copyload.i111.i.peel = load i64, ptr %i.i, align 1
  %i.j = xor i64 %.0.copyload.i111.i.peel, %.0.copyload.i.i.peel ; 2 uses
  store i64 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %i.g
  store i64 %i.j, ptr %i.k, align 1
  %i.l = icmp ult i32 %.0101.lcssa.i, 8
  br i1 %i.l, label %.lr.ph126.i.1.peel, label %._crit_edge.i.peel

.lr.ph126.i.1.peel:                               ; preds = %.lr.ph126.i.peel
  %indvars.iv.next.i.peel = add nuw nsw i64 %i.g, 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.i.peel ; 2 uses
  %.0.copyload.i.i.1.peel = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %indvars.iv.next.i.peel
  %.0.copyload.i111.i.1.peel = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i111.i.1.peel, %.0.copyload.i.i.1.peel ; 2 uses
  store i64 %i.o, ptr %i.m, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 %indvars.iv.next.i.peel
  store i64 %i.o, ptr %i.p, align 1
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %.lr.ph126.i.peel, %.lr.ph126.i.1.peel, %.lr.ph131.i.peel
  %i.q = add i64 %.097.lcssa.i, -16               ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.093.lcssa.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  %i.t = icmp ugt i64 %i.q, 15
  br i1 %i.t, label %.lr.ph131.i.preheader.peel.newph, label %._crit_edge132.i

.lr.ph131.i.preheader.peel.newph:                 ; preds = %._crit_edge.i.peel
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph131.i

.lr.ph.i:                                         ; preds = %.preheader117.i, %.lr.ph.i
  %.0121.i = phi ptr [ %i.v, %.lr.ph.i ], [ %0, %.preheader117.i ] ; 2 uses
  %.093120.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %1, %.preheader117.i ] ; 2 uses
  %.097119.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %2, %.preheader117.i ]
  %.0101118.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.a, %.preheader117.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0121.i, i64 1 ; 2 uses
  %i.w = load i8, ptr %.0121.i, align 1, !tbaa !80
  %i.x = zext i32 %.0101118.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = xor i8 %i.z, %i.w                       ; 2 uses
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.093120.i, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.093120.i, align 1, !tbaa !80
  %i.ac = add i64 %.097119.i, -1                  ; 3 uses
  %i.ad = add i32 %.0101118.i, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i, label %.preheader116.i, !llvm.loop !3

.lr.ph131.i:                                      ; preds = %.lr.ph131.i.preheader.peel.newph, %.lr.ph131.i
  %.1130.i = phi ptr [ %i.ao, %.lr.ph131.i ], [ %i.s, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.194129.i = phi ptr [ %i.an, %.lr.ph131.i ], [ %i.r, %.lr.ph131.i.preheader.peel.newph ] ; 3 uses
  %.198128.i = phi i64 [ %i.am, %.lr.ph131.i ], [ %i.q, %.lr.ph131.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i.i = load i64, ptr %4, align 1
  %.0.copyload.i111.i = load i64, ptr %.1130.i, align 1
  %i.ai = xor i64 %.0.copyload.i111.i, %.0.copyload.i.i ; 2 uses
  store i64 %i.ai, ptr %4, align 1
  store i64 %i.ai, ptr %.194129.i, align 1
  %.0.copyload.i.i.1 = load i64, ptr %i.u, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.1130.i, i64 8
  %.0.copyload.i111.i.1 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i111.i.1, %.0.copyload.i.i.1 ; 2 uses
  store i64 %i.ak, ptr %i.u, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.194129.i, i64 8
  store i64 %i.ak, ptr %i.al, align 1
  %i.am = add i64 %.198128.i, -16                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.194129.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1130.i, i64 16 ; 2 uses
  %i.ap = icmp ugt i64 %i.am, 15
  br i1 %i.ap, label %.lr.ph131.i, label %._crit_edge132.i, !llvm.loop !499

._crit_edge132.i:                                 ; preds = %._crit_edge.i.peel, %.lr.ph131.i, %.preheader116.i
  %.1102.lcssa.i = phi i32 [ %.0101.lcssa.i, %.preheader116.i ], [ 0, %.lr.ph131.i ], [ 0, %._crit_edge.i.peel ] ; 8 uses
  %.198.lcssa.i = phi i64 [ %.097.lcssa.i, %.preheader116.i ], [ %i.q, %._crit_edge.i.peel ], [ %i.am, %.lr.ph131.i ] ; 10 uses
  %.194.lcssa.i = phi ptr [ %.093.lcssa.i, %.preheader116.i ], [ %i.r, %._crit_edge.i.peel ], [ %i.an, %.lr.ph131.i ] ; 6 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader116.i ], [ %i.s, %._crit_edge.i.peel ], [ %i.ao, %.lr.ph131.i ] ; 6 uses
  %.not109.i = icmp eq i64 %.198.lcssa.i, 0
  br i1 %.not109.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge132.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check = icmp samesign ult i64 %.198.lcssa.i, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.aq = add nsw i64 %.198.lcssa.i, -1           ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = xor i32 %.1102.lcssa.i, -1
  %i.at = icmp ult i32 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, 4294967295
  %i.av = or i1 %i.at, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1102.lcssa.i to i64          ; 4 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.aw  ; 2 uses
  %i.ax = add nuw nsw i64 %.198.lcssa.i, %i.aw    ; 3 uses
  %scevgep78 = getelementptr i8, ptr %4, i64 %i.ax ; 2 uses
  %scevgep79 = getelementptr i8, ptr %.194.lcssa.i, i64 %i.aw ; 2 uses
  %scevgep80 = getelementptr i8, ptr %.194.lcssa.i, i64 %i.ax ; 2 uses
  %scevgep81 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.aw ; 2 uses
  %scevgep82 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.ax ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep80
  %bound1 = icmp ult ptr %scevgep79, %scevgep78
  %found.conflict = and i1 %bound0, %bound1
  %bound083 = icmp ult ptr %scevgep, %scevgep82
  %bound184 = icmp ult ptr %scevgep81, %scevgep78
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %found.conflict, %found.conflict85
  %bound086 = icmp ult ptr %scevgep79, %scevgep82
  %bound187 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %conflict.rdx, %found.conflict88
  br i1 %conflict.rdx89, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec95 = and i64 %.198.lcssa.i, 8             ; 3 uses
  %i.ay = and i64 %.198.lcssa.i, 7
  %i.az = trunc nuw nsw i64 %n.vec95 to i32
  %i.ba = add i32 %.1102.lcssa.i, %i.az           ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next99, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = trunc i64 %index96 to i32
  %i.bc = add i32 %.1102.lcssa.i, %i.bb
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bd
  %wide.load97 = load <8 x i8>, ptr %i.be, align 1, !tbaa !80, !alias.scope !513
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.bd ; 2 uses
  %wide.load98 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !80, !alias.scope !514, !noalias !515
  %i.bg = xor <8 x i8> %wide.load98, %wide.load97 ; 2 uses
  store <8 x i8> %i.bg, ptr %i.bf, align 1, !tbaa !80, !alias.scope !514, !noalias !515
  %i.bh = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bd
  store <8 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !80, !alias.scope !516, !noalias !513
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.bi = icmp eq i64 %index.next99, %n.vec95
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !504

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n100 = icmp eq i64 %.198.lcssa.i, %n.vec95
  br i1 %cmp.n100, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.middle.block
  %.299138.i.ph = phi i64 [ %.198.lcssa.i, %vector.scevcheck ], [ %.198.lcssa.i, %vector.memcheck ], [ %.198.lcssa.i, %iter.check ], [ %i.ay, %vec.epilog.middle.block ] ; 4 uses
  %.3104137.i.ph = phi i32 [ %.1102.lcssa.i, %vector.scevcheck ], [ %.1102.lcssa.i, %vector.memcheck ], [ %.1102.lcssa.i, %iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299138.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.bj = add nsw i64 %.299138.i.ph, -1
  %i.bk = zext i32 %.3104137.i.ph to i64          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !80
  %i.bp = xor i8 %i.bo, %i.bm                     ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !80
  %i.br = add i32 %.3104137.i.ph, 1               ; 2 uses
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa161.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph.prol ]
  %.299138.i.unr = phi i64 [ %.299138.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph.prol ]
  %.3104137.i.unr = phi i32 [ %.3104137.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph.prol ]
  %i.bs = icmp eq i64 %.299138.i.ph, 1
  br i1 %i.bs, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.299138.i = phi i64 [ %i.cb, %vec.epilog.scalar.ph ], [ %.299138.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.3104137.i = phi i32 [ %i.cj, %vec.epilog.scalar.ph ], [ %.3104137.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.bt = zext i32 %.3104137.i to i64             ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !80
  %i.by = xor i8 %i.bx, %i.bv                     ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.bt
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !80
  %i.ca = add i32 %.3104137.i, 1
  %i.cb = add nsw i64 %.299138.i, -2              ; 2 uses
  %i.cc = zext i32 %i.ca to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %i.cc ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !80
  %i.ch = xor i8 %i.cg, %i.ce                     ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %.194.lcssa.i, i64 %i.cc
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !80
  %i.cj = add i32 %.3104137.i, 2                  ; 2 uses
  %.not110.i.1 = icmp eq i64 %i.cb, 0
  br i1 %.not110.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph, !llvm.loop !505

.preheader.i:                                     ; preds = %.lr.ph143.i, %.preheader114.i
  %.5106.lcssa.i = phi i32 [ %i.a, %.preheader114.i ], [ %i.dk, %.lr.ph143.i ] ; 4 uses
  %.3100.lcssa.i = phi i64 [ %2, %.preheader114.i ], [ %i.di, %.lr.ph143.i ] ; 3 uses
  %.295.lcssa.i = phi ptr [ %1, %.preheader114.i ], [ %i.dh, %.lr.ph143.i ] ; 4 uses
  %.2.lcssa.i = phi ptr [ %0, %.preheader114.i ], [ %i.de, %.lr.ph143.i ] ; 4 uses
  %i.ck = icmp ugt i64 %.3100.lcssa.i, 15
  br i1 %i.ck, label %.lr.ph156.i.peel, label %._crit_edge157.i

.lr.ph156.i.peel:                                 ; preds = %.preheader.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %i.cl = icmp ult i32 %.5106.lcssa.i, 16
  br i1 %i.cl, label %.lr.ph150.i.peel, label %._crit_edge151.i.peel

.lr.ph150.i.peel:                                 ; preds = %.lr.ph156.i.peel
  %i.cm = zext nneg i32 %.5106.lcssa.i to i64     ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %i.cm
  %.0.copyload.i112.i.peel = load i64, ptr %i.cn, align 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.cm ; 2 uses
  %.0.copyload.i113.i.peel = load i64, ptr %i.cp, align 1
  %i.cq = xor i64 %.0.copyload.i113.i.peel, %.0.copyload.i112.i.peel
  store i64 %i.cq, ptr %i.co, align 1
  store i64 %.0.copyload.i112.i.peel, ptr %i.cp, align 1
  %i.cr = icmp ult i32 %.5106.lcssa.i, 8
  br i1 %i.cr, label %.lr.ph150.i.1.peel, label %._crit_edge151.i.peel

.lr.ph150.i.1.peel:                               ; preds = %.lr.ph150.i.peel
  %indvars.iv.next182.i.peel = add nuw nsw i64 %i.cm, 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 %indvars.iv.next182.i.peel
  %.0.copyload.i112.i.1.peel = load i64, ptr %i.cs, align 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 %indvars.iv.next182.i.peel
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next182.i.peel ; 2 uses
  %.0.copyload.i113.i.1.peel = load i64, ptr %i.cu, align 1
  %i.cv = xor i64 %.0.copyload.i113.i.1.peel, %.0.copyload.i112.i.1.peel
  store i64 %i.cv, ptr %i.ct, align 1
  store i64 %.0.copyload.i112.i.1.peel, ptr %i.cu, align 1
  br label %._crit_edge151.i.peel

._crit_edge151.i.peel:                            ; preds = %.lr.ph150.i.peel, %.lr.ph150.i.1.peel, %.lr.ph156.i.peel
  %i.cw = add i64 %.3100.lcssa.i, -16             ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.295.lcssa.i, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.lcssa.i, i64 16 ; 2 uses
  %i.cz = icmp ugt i64 %i.cw, 15
  br i1 %i.cz, label %.lr.ph156.i.preheader.peel.newph, label %._crit_edge157.i

.lr.ph156.i.preheader.peel.newph:                 ; preds = %._crit_edge151.i.peel
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph156.i

.lr.ph143.i:                                      ; preds = %.preheader114.i, %.lr.ph143.i
  %.2142.i = phi ptr [ %i.de, %.lr.ph143.i ], [ %0, %.preheader114.i ] ; 2 uses
  %.295141.i = phi ptr [ %i.dh, %.lr.ph143.i ], [ %1, %.preheader114.i ] ; 2 uses
  %.3100140.i = phi i64 [ %i.di, %.lr.ph143.i ], [ %2, %.preheader114.i ]
  %.5106139.i = phi i32 [ %i.dk, %.lr.ph143.i ], [ %i.a, %.preheader114.i ] ; 2 uses
  %i.db = zext i32 %.5106139.i to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = getelementptr inbounds nuw i8, ptr %.2142.i, i64 1 ; 2 uses
  %i.df = load i8, ptr %.2142.i, align 1, !tbaa !80 ; 2 uses
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %.295141.i, i64 1 ; 2 uses
  store i8 %i.dg, ptr %.295141.i, align 1, !tbaa !80
  store i8 %i.df, ptr %i.dc, align 1, !tbaa !80
  %i.di = add i64 %.3100140.i, -1                 ; 3 uses
  %i.dj = add i32 %.5106139.i, 1
  %i.dk = and i32 %i.dj, 15                       ; 3 uses
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = icmp ne i64 %i.di, 0
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %.lr.ph143.i, label %.preheader.i, !llvm.loop !4

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.preheader.peel.newph, %.lr.ph156.i
  %.3155.i = phi ptr [ %i.du, %.lr.ph156.i ], [ %i.cy, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.396154.i = phi ptr [ %i.dt, %.lr.ph156.i ], [ %i.cx, %.lr.ph156.i.preheader.peel.newph ] ; 3 uses
  %.4153.i = phi i64 [ %i.ds, %.lr.ph156.i ], [ %i.cw, %.lr.ph156.i.preheader.peel.newph ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i112.i = load i64, ptr %.3155.i, align 1 ; 2 uses
  %.0.copyload.i113.i = load i64, ptr %4, align 1
  %i.do = xor i64 %.0.copyload.i113.i, %.0.copyload.i112.i
  store i64 %i.do, ptr %.396154.i, align 1
  store i64 %.0.copyload.i112.i, ptr %4, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.3155.i, i64 8
  %.0.copyload.i112.i.1 = load i64, ptr %i.dp, align 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.396154.i, i64 8
  %.0.copyload.i113.i.1 = load i64, ptr %i.da, align 1
  %i.dr = xor i64 %.0.copyload.i113.i.1, %.0.copyload.i112.i.1
  store i64 %i.dr, ptr %i.dq, align 1
  store i64 %.0.copyload.i112.i.1, ptr %i.da, align 1
  %i.ds = add i64 %.4153.i, -16                   ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.396154.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.3155.i, i64 16 ; 2 uses
  %i.dv = icmp ugt i64 %i.ds, 15
  br i1 %i.dv, label %.lr.ph156.i, label %._crit_edge157.i, !llvm.loop !506

._crit_edge157.i:                                 ; preds = %._crit_edge151.i.peel, %.lr.ph156.i, %.preheader.i
  %.6.lcssa.i = phi i32 [ %.5106.lcssa.i, %.preheader.i ], [ 0, %.lr.ph156.i ], [ 0, %._crit_edge151.i.peel ] ; 8 uses
  %.4.lcssa.i = phi i64 [ %.3100.lcssa.i, %.preheader.i ], [ %i.cw, %._crit_edge151.i.peel ], [ %i.ds, %.lr.ph156.i ] ; 10 uses
  %.396.lcssa.i = phi ptr [ %.295.lcssa.i, %.preheader.i ], [ %i.cx, %._crit_edge151.i.peel ], [ %i.dt, %.lr.ph156.i ] ; 6 uses
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader.i ], [ %i.cy, %._crit_edge151.i.peel ], [ %i.du, %.lr.ph156.i ] ; 6 uses
  %.not107.i = icmp eq i64 %.4.lcssa.i, 0
  br i1 %.not107.i, label %CRYPTO_cfb128_encrypt.exit, label %iter.check138

iter.check138:                                    ; preds = %._crit_edge157.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %min.iters.check122 = icmp samesign ult i64 %.4.lcssa.i, 8
  br i1 %min.iters.check122, label %vec.epilog.scalar.ph139.preheader, label %vector.scevcheck103

vector.scevcheck103:                              ; preds = %iter.check138
  %i.dw = add nsw i64 %.4.lcssa.i, -1             ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = xor i32 %.6.lcssa.i, -1
  %i.dz = icmp ult i32 %i.dy, %i.dx
  %i.ea = icmp ugt i64 %i.dw, 4294967295
  %i.eb = or i1 %i.dz, %i.ea
  br i1 %i.eb, label %vec.epilog.scalar.ph139.preheader, label %vector.memcheck104

vector.memcheck104:                               ; preds = %vector.scevcheck103
  %i.ec = zext i32 %.6.lcssa.i to i64             ; 4 uses
  %scevgep105 = getelementptr i8, ptr %.396.lcssa.i, i64 %i.ec ; 2 uses
  %i.ed = add nuw nsw i64 %.4.lcssa.i, %i.ec      ; 3 uses
  %scevgep106 = getelementptr i8, ptr %.396.lcssa.i, i64 %i.ed ; 2 uses
  %scevgep107 = getelementptr i8, ptr %4, i64 %i.ec ; 2 uses
  %scevgep108 = getelementptr i8, ptr %4, i64 %i.ed ; 2 uses
  %scevgep109 = getelementptr i8, ptr %.3.lcssa.i, i64 %i.ec ; 2 uses
  %scevgep110 = getelementptr i8, ptr %.3.lcssa.i, i64 %i.ed ; 2 uses
  %bound0111 = icmp ult ptr %scevgep105, %scevgep108
  %bound1112 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict113 = and i1 %bound0111, %bound1112
  %bound0114 = icmp ult ptr %scevgep105, %scevgep110
  %bound1115 = icmp ult ptr %scevgep109, %scevgep106
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %found.conflict113, %found.conflict116
  %bound0118 = icmp ult ptr %scevgep107, %scevgep110
  %bound1119 = icmp ult ptr %scevgep109, %scevgep108
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  br i1 %conflict.rdx121, label %vec.epilog.scalar.ph139.preheader, label %vec.epilog.ph142

vec.epilog.ph142:                                 ; preds = %vector.memcheck104
  %n.vec143 = and i64 %.4.lcssa.i, 8              ; 3 uses
  %i.ee = and i64 %.4.lcssa.i, 7
  %i.ef = trunc nuw nsw i64 %n.vec143 to i32
  %i.eg = add i32 %.6.lcssa.i, %i.ef              ; 2 uses
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ 0, %vec.epilog.ph142 ], [ %index.next148, %vec.epilog.vector.body144 ] ; 2 uses
  %i.eh = trunc i64 %index145 to i32
  %i.ei = add i32 %.6.lcssa.i, %i.eh
  %i.ej = zext i32 %i.ei to i64                   ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej ; 2 uses
  %wide.load146 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !80, !alias.scope !517, !noalias !518
  %i.el = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.ej
  %wide.load147 = load <8 x i8>, ptr %i.el, align 1, !tbaa !80, !alias.scope !518 ; 2 uses
  %i.em = xor <8 x i8> %wide.load147, %wide.load146
  %i.en = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.ej
  store <8 x i8> %i.em, ptr %i.en, align 1, !tbaa !80, !alias.scope !519, !noalias !520
  store <8 x i8> %wide.load147, ptr %i.ek, align 1, !tbaa !80, !alias.scope !517, !noalias !518
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.eo, label %vec.epilog.middle.block149, label %vec.epilog.vector.body144, !llvm.loop !511

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body144
  %cmp.n150 = icmp eq i64 %.4.lcssa.i, %n.vec143
  br i1 %cmp.n150, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph139.preheader

vec.epilog.scalar.ph139.preheader:                ; preds = %vector.memcheck104, %vector.scevcheck103, %iter.check138, %vec.epilog.middle.block149
  %.5163.i.ph = phi i64 [ %.4.lcssa.i, %vector.scevcheck103 ], [ %.4.lcssa.i, %vector.memcheck104 ], [ %.4.lcssa.i, %iter.check138 ], [ %i.ee, %vec.epilog.middle.block149 ] ; 4 uses
  %.8162.i.ph = phi i32 [ %.6.lcssa.i, %vector.scevcheck103 ], [ %.6.lcssa.i, %vector.memcheck104 ], [ %.6.lcssa.i, %iter.check138 ], [ %i.eg, %vec.epilog.middle.block149 ] ; 3 uses
  %xtraiter171 = and i64 %.5163.i.ph, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol

vec.epilog.scalar.ph139.prol:                     ; preds = %vec.epilog.scalar.ph139.preheader
  %i.ep = add nsw i64 %.5163.i.ph, -1
  %i.eq = zext i32 %.8162.i.ph to i64             ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 %i.eq ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !80
  %i.et = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !80  ; 2 uses
  %i.ev = xor i8 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.eq
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !80
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !80
  %i.ex = add i32 %.8162.i.ph, 1                  ; 2 uses
  br label %vec.epilog.scalar.ph139.prol.loopexit

vec.epilog.scalar.ph139.prol.loopexit:            ; preds = %vec.epilog.scalar.ph139.prol, %vec.epilog.scalar.ph139.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph139.preheader ], [ %i.ex, %vec.epilog.scalar.ph139.prol ]
  %.5163.i.unr = phi i64 [ %.5163.i.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.ep, %vec.epilog.scalar.ph139.prol ]
  %.8162.i.unr = phi i32 [ %.8162.i.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.ex, %vec.epilog.scalar.ph139.prol ]
  %i.ey = icmp eq i64 %.5163.i.ph, 1
  br i1 %i.ey, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph139

vec.epilog.scalar.ph139:                          ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139
  %.5163.i = phi i64 [ %i.fh, %vec.epilog.scalar.ph139 ], [ %.5163.i.unr, %vec.epilog.scalar.ph139.prol.loopexit ]
  %.8162.i = phi i32 [ %i.fp, %vec.epilog.scalar.ph139 ], [ %.8162.i.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 3 uses
  %i.ez = zext i32 %.8162.i to i64                ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ez ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !80
  %i.fc = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !80  ; 2 uses
  %i.fe = xor i8 %i.fd, %i.fb
  %i.ff = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.ez
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !80
  store i8 %i.fd, ptr %i.fa, align 1, !tbaa !80
  %i.fg = add i32 %.8162.i, 1
  %i.fh = add nsw i64 %.5163.i, -2                ; 2 uses
  %i.fi = zext i32 %i.fg to i64                   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !80
  %i.fl = getelementptr inbounds nuw i8, ptr %.3.lcssa.i, i64 %i.fi
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !80  ; 2 uses
  %i.fn = xor i8 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %.396.lcssa.i, i64 %i.fi
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !80
  store i8 %i.fm, ptr %i.fj, align 1, !tbaa !80
  %i.fp = add i32 %.8162.i, 2                     ; 2 uses
  %.not108.i.1 = icmp eq i64 %i.fh, 0
  br i1 %.not108.i.1, label %CRYPTO_cfb128_encrypt.exit, label %vec.epilog.scalar.ph139, !llvm.loop !512

CRYPTO_cfb128_encrypt.exit:                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139, %vec.epilog.middle.block, %vec.epilog.middle.block149, %._crit_edge132.i, %._crit_edge157.i
  %storemerge.i = phi i32 [ %.1102.lcssa.i, %._crit_edge132.i ], [ %i.fp, %vec.epilog.scalar.ph139 ], [ %.6.lcssa.i, %._crit_edge157.i ], [ %i.eg, %vec.epilog.middle.block149 ], [ %i.ba, %vec.epilog.middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph139.prol.loopexit ], [ %.lcssa161.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.cj, %vec.epilog.scalar.ph ]
  store i32 %storemerge.i, ptr %5, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq i32 %i.b, 0                   ; 2 uses
  %spec.select = select i1 %.not25, ptr %1, ptr %2 ; 4 uses
  %spec.select28 = select i1 %.not25, ptr %2, ptr %1 ; 4 uses
  %i.e = load ptr, ptr %spec.select, align 8, !tbaa !112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = sext i32 %i.g to i64                     ; 7 uses
  %i.i = load ptr, ptr %spec.select28, align 8, !tbaa !112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %spec.select28, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !113  ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 7 uses
  %i.m = icmp ult i32 %i.g, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l) ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.o = trunc i64 %i.am to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.b
  %.043.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.o, %._crit_edge.loopexit.i.i ] ; 3 uses
  br i1 %i.m, label %.preheader.i.i.preheader, label %bb.c

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.p = sub nsw i64 %i.l, %i.h                   ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.p, 4
  br i1 %min.iters.check82, label %.preheader.i.i.preheader98, label %vector.ph83

vector.ph83:                                      ; preds = %.preheader.i.i.preheader
  %n.vec84 = and i64 %i.p, -4                     ; 3 uses
  %i.q = add nsw i64 %n.vec84, %i.h
  %invariant.gep114 = getelementptr [8 x i8], ptr %i.i, i64 %i.h
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %vec.phi87 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.s, %vector.body85 ]
  %vec.phi88 = phi <2 x i64> [ zeroinitializer, %vector.ph83 ], [ %i.t, %vector.body85 ]
  %gep115 = getelementptr [8 x i8], ptr %invariant.gep114, i64 %index86 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep115, i64 16
  %wide.load89 = load <2 x i64>, ptr %gep115, align 8, !tbaa !96
  %wide.load90 = load <2 x i64>, ptr %i.r, align 8, !tbaa !96
  %i.s = or <2 x i64> %wide.load89, %vec.phi87    ; 2 uses
  %i.t = or <2 x i64> %wide.load90, %vec.phi88    ; 2 uses
  %index.next91 = add nuw i64 %index86, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.u, label %middle.block92, label %vector.body85, !llvm.loop !521

middle.block92:                                   ; preds = %vector.body85
  %bin.rdx93 = or <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx93) ; 2 uses
  %cmp.n94 = icmp eq i64 %i.p, %n.vec84
  br i1 %cmp.n94, label %.loopexit, label %.preheader.i.i.preheader98

.preheader.i.i.preheader98:                       ; preds = %.preheader.i.i.preheader, %middle.block92
  %.04157.i.i.ph = phi i64 [ %i.h, %.preheader.i.i.preheader ], [ %i.q, %middle.block92 ]
  %.04256.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.v, %middle.block92 ]
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.04353.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.04452.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04452.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96   ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04452.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96   ; 3 uses
  %i.aa = icmp eq i64 %i.x, %i.z
  %.neg.i.i.i.i.i = sext i1 %i.aa to i64
  %i.ab = xor i64 %i.z, %i.x
  %i.ac = sub i64 %i.x, %i.z
  %i.ad = xor i64 %i.ac, %i.x
  %i.ae = or i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, %i.x
  %.neg.i.i.i.i = ashr i64 %i.af, 63
  %i.ag = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !108
  %i.ah = or i64 %i.ag, 1
  %i.ai = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.aj = and i64 %i.ai, %.04353.i.i
  %i.ak = xor i64 %i.ai, -1
  %i.al = and i64 %i.ah, %i.ak
  %i.am = or disjoint i64 %i.aj, %i.al            ; 2 uses
  %i.an = add nuw i64 %.04452.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.an, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.preheader.i.i, %middle.block92
  %.lcssa = phi i64 [ %i.v, %middle.block92 ], [ %i.av, %.preheader.i.i ]
  %i.ao = icmp eq i64 %.lcssa, 0
  %.neg.i.i49.i.i = sext i1 %i.ao to i64
  %i.ap = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i49.i.i) #38, !srcloc !108
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -1
  %i.as = or i32 %.043.lcssa.i.i, %i.ar
  br label %BN_ucmp.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader98, %.preheader.i.i
  %.04157.i.i = phi i64 [ %i.aw, %.preheader.i.i ], [ %.04157.i.i.ph, %.preheader.i.i.preheader98 ] ; 2 uses
  %.04256.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ %.04256.i.i.ph, %.preheader.i.i.preheader98 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04157.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !96
  %i.av = or i64 %i.au, %.04256.i.i               ; 2 uses
  %i.aw = add nuw i64 %.04157.i.i, 1              ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.aw, %i.l
  br i1 %exitcond61.not.i.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !522

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ax = icmp ult i32 %i.k, %i.g
  br i1 %i.ax, label %.preheader51.i.i.preheader, label %BN_ucmp.exit

.preheader51.i.i.preheader:                       ; preds = %bb.c
  %i.ay = sub nsw i64 %i.h, %i.l                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %.preheader51.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.preheader51.i.i.preheader
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.az = add nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi79 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !96
  %wide.load80 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !96
  %i.bb = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.bc = or <2 x i64> %wide.load80, %vec.phi79   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.loopexit97, label %.preheader51.i.i.preheader102

.preheader51.i.i.preheader102:                    ; preds = %.preheader51.i.i.preheader, %middle.block
  %.055.i.i.ph = phi i64 [ %i.l, %.preheader51.i.i.preheader ], [ %i.az, %middle.block ]
  %.04054.i.i.ph = phi i64 [ 0, %.preheader51.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.preheader51.i.i

.loopexit97:                                      ; preds = %.preheader51.i.i, %middle.block
  %.lcssa77 = phi i64 [ %i.be, %middle.block ], [ %i.bp, %.preheader51.i.i ]
  %i.bf = icmp eq i64 %.lcssa77, 0
  %.neg.i.i50.i.i = sext i1 %i.bf to i64
  %i.bg = zext i32 %.043.lcssa.i.i to i64
  %i.bh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i50.i.i) #38, !srcloc !108 ; 2 uses
  %i.bi = and i64 %i.bh, %i.bg
  %i.bj = and i64 %i.bh, 1
  %i.bk = xor i64 %i.bj, 1
  %i.bl = or disjoint i64 %i.bk, %i.bi
  %i.bm = trunc nuw i64 %i.bl to i32
  br label %BN_ucmp.exit

.preheader51.i.i:                                 ; preds = %.preheader51.i.i.preheader102, %.preheader51.i.i
  %.055.i.i = phi i64 [ %i.bq, %.preheader51.i.i ], [ %.055.i.i.ph, %.preheader51.i.i.preheader102 ] ; 2 uses
  %.04054.i.i = phi i64 [ %i.bp, %.preheader51.i.i ], [ %.04054.i.i.ph, %.preheader51.i.i.preheader102 ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.055.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !96
  %i.bp = or i64 %i.bo, %.04054.i.i               ; 2 uses
  %i.bq = add nuw i64 %.055.i.i, 1                ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond60.not.i.i, label %.loopexit97, label %.preheader51.i.i, !llvm.loop !524

BN_ucmp.exit:                                     ; preds = %.loopexit, %bb.c, %.loopexit97
end_hunk_2
begin_hunk_3_@BN_uadd:bb.a

bn_minimal_width.exit.thread.i:                   ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !113
  br label %bb.e

bn_minimal_width.exit.i:                          ; preds = %bb.b
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bn_set_minimal_width.exit

bb.e:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !111
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bb.e, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread5.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bn_minimal_width.exit.thread5.i ], [ 1, %bn_minimal_width.exit.i ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_uadd_consttime(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !113
  %i.e = icmp slt i32 %i.b, %i.d                  ; 2 uses
  %spec.select = select i1 %i.e, ptr %2, ptr %1   ; 2 uses
  %spec.select29 = select i1 %i.e, ptr %1, ptr %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select29, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !113  ; 5 uses
  %i.j = add nsw i32 %i.g, 1                      ; 5 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !114
  %.not.i = icmp ugt i32 %i.j, %i.m
  br i1 %.not.i, label %bb.b, label %.bn_wexpand.exit_crit_edge

.bn_wexpand.exit_crit_edge:                       ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  br label %bn_wexpand.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i32 %i.j, 8388607
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !115
  %i.q = and i32 %i.p, 2
  %.not16.i = icmp eq i32 %i.q, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.r = tail call ptr @OPENSSL_calloc(i64 noundef %i.k, i64 noundef 8) #36 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bn_wexpand.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !113  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sext i32 %i.u to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.y, i64 %i.x, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.z) #36
  store ptr %i.r, ptr %0, align 8, !tbaa !112
  store i32 %i.j, ptr %i.l, align 4, !tbaa !114
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %.bn_wexpand.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.aa = phi ptr [ %.pre, %.bn_wexpand.exit_crit_edge ], [ %i.r, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.ab, align 8, !tbaa !113
  %i.ac = load ptr, ptr %spec.select, align 8, !tbaa !112 ; 5 uses
  %i.ad = icmp eq i32 %i.i, 0
  br i1 %i.ad, label %bn_add_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bn_wexpand.exit
  %i.ae = sext i32 %i.i to i64                    ; 2 uses
  %i.af = load ptr, ptr %spec.select29, align 8, !tbaa !112 ; 2 uses
  %.not43.i = icmp ult i32 %i.i, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.ae, %.preheader42.i ], [ %i.cg, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %i.af, %.preheader42.i ], [ %i.ce, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %i.ac, %.preheader42.i ], [ %i.cd, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %i.aa, %.preheader42.i ], [ %i.cf, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.cb, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.cg, 0
  br i1 %.not3453.i, label %bn_add_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.cg, %.lr.ph.i ], [ %i.ae, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.ce, %.lr.ph.i ], [ %i.af, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %i.ac, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %i.aa, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.cb, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.ag = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.ah = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.ai = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = extractvalue { i64, i1 } %i.ai, 0
  %i.al = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ak, i64 %.04044.i) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0
  %i.ao = or i1 %i.aj, %i.am
  %i.ap = zext i1 %i.ao to i64
  store i64 %i.an, ptr %.03045.i, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96
  %i.au = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 %i.at) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aw, i64 %i.ap) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %i.ba = or i1 %i.av, %i.ay
  %i.bb = zext i1 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !96
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.be, i64 %i.bg) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bj, i64 %i.bb) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %i.bn = or i1 %i.bi, %i.bl
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.bm, ptr %i.bp, align 8, !tbaa !96
  %i.bq = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !96
  %i.bu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.br, i64 %i.bt) ; 2 uses
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  %i.bw = extractvalue { i64, i1 } %i.bu, 0
  %i.bx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bw, i64 %i.bo) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  %i.ca = or i1 %i.bv, %i.by
  %i.cb = zext i1 %i.ca to i64                    ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.bz, ptr %i.cc, align 8, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.cg = add i64 %.048.i, -4                     ; 4 uses
  %.not.i30 = icmp ult i64 %i.cg, 4
  br i1 %.not.i30, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.cu, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.cs, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.cr, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.ct, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.cq, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.ch = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.ci = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.cj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ch, i64 %i.ci) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = extractvalue { i64, i1 } %i.cj, 0
  %i.cm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cl, i64 %.14154.i) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  %i.cp = or i1 %i.ck, %i.cn
  %i.cq = zext i1 %i.cp to i64                    ; 2 uses
  store i64 %i.co, ptr %.13155.i, align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.cu = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.cu, 0
  br i1 %.not34.i, label %bn_add_words.exit, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i, %bn_wexpand.exit, %.preheader.i
  %.032.i = phi i64 [ 0, %bn_wexpand.exit ], [ %i.cb, %.preheader.i ], [ %i.cq, %.lr.ph59.i ] ; 3 uses
  %i.cv = icmp slt i32 %i.i, %i.g
  br i1 %i.cv, label %.lr.ph.preheader, label %bn_add_words.exit.._crit_edge_crit_edge

bn_add_words.exit.._crit_edge_crit_edge:          ; preds = %bn_add_words.exit
  %.pre49 = sext i32 %i.g to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit
  %i.cw = sext i32 %i.i to i64                    ; 6 uses
  %wide.trip.count = sext i32 %i.g to i64         ; 5 uses
  %i.cx = sub nsw i64 %wide.trip.count, %i.cw
  %xtraiter = and i64 %i.cx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !96
  %i.da = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cz, i64 %.032.i) ; 2 uses
  %i.db = extractvalue { i64, i1 } %i.da, 1
  %i.dc = extractvalue { i64, i1 } %i.da, 0
  %i.dd = zext i1 %i.db to i64                    ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cw
  store i64 %i.dc, ptr %i.de, align 8, !tbaa !96
  %indvars.iv.next.prol = add nsw i64 %i.cw, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.dd, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.cw, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.03240.unr = phi i64 [ %.032.i, %.lr.ph.preheader ], [ %i.dd, %.lr.ph.prol ]
  %i.df = add nsw i64 %wide.trip.count, -1
  %i.dg = icmp eq i64 %i.df, %i.cw
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre49, %bn_add_words.exit.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %.032.lcssa = phi i64 [ %.032.i, %bn_add_words.exit.._crit_edge_crit_edge ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.du, %.lr.ph ]
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.pre-phi
  store i64 %.032.lcssa, ptr %i.dh, align 8, !tbaa !96
  br label %bn_wexpand.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.03240 = phi i64 [ %i.du, %.lr.ph ], [ %.03240.unr, %.lr.ph.prol.loopexit ]
  %i.di = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !96
  %i.dk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dj, i64 %.03240) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !96
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !96
  %i.dr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dq, i64 %i.dn) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  %i.dt = extractvalue { i64, i1 } %i.dr, 0
  %i.du = zext i1 %i.ds to i64                    ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !96
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !529

bn_wexpand.exit.thread:                           ; preds = %bb.f, %bb.e, %bb.c, %._crit_edge
  %.025 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i32 %.025
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_wexpand(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114
  %i.c = sext i32 %i.b to i64
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 8388607
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !115
  %i.g = and i32 %i.f, 2
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.h = tail call ptr @OPENSSL_calloc(i64 noundef %1, i64 noundef 8) #36 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !113  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = sext i32 %i.k to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.o, i64 %i.n, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.g, %bb.h
  %i.p = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.p) #36
  store ptr %i.h, ptr %0, align 8, !tbaa !112
  %i.q = trunc nuw nsw i64 %1 to i32
  store i32 %i.q, ptr %i.a, align 4, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.a, %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.e, %bb.c
  %.0 = phi i32 [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 0, 2) i64 @bn_add_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.loopexit, label %.preheader42

.preheader42:                                     ; preds = %bb.a
  %.not43 = icmp ult i64 %3, 4
  br i1 %.not43, label %.lr.ph59.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not3453 = icmp eq i64 %i.bb, 0
  br i1 %.not3453, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader42, %.preheader
  %.158.ph = phi i64 [ %3, %.preheader42 ], [ %i.bb, %.preheader ]
  %.12757.ph = phi ptr [ %2, %.preheader42 ], [ %i.az, %.preheader ]
  %.12956.ph = phi ptr [ %1, %.preheader42 ], [ %i.ay, %.preheader ]
  %.13155.ph = phi ptr [ %0, %.preheader42 ], [ %i.ba, %.preheader ]
  %.14154.ph = phi i64 [ 0, %.preheader42 ], [ %i.aw, %.preheader ]
  br label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader42, %.lr.ph
  %.048 = phi i64 [ %i.bb, %.lr.ph ], [ %3, %.preheader42 ]
  %.02647 = phi ptr [ %i.az, %.lr.ph ], [ %2, %.preheader42 ] ; 5 uses
  %.02846 = phi ptr [ %i.ay, %.lr.ph ], [ %1, %.preheader42 ] ; 5 uses
  %.03045 = phi ptr [ %i.ba, %.lr.ph ], [ %0, %.preheader42 ] ; 5 uses
  %.04044 = phi i64 [ %i.aw, %.lr.ph ], [ 0, %.preheader42 ]
  %i.b = load i64, ptr %.02846, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 %.04044) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045, i64 32 ; 2 uses
  %i.bb = add i64 %.048, -4                       ; 4 uses
  %.not = icmp ult i64 %i.bb, 4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !11

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.158 = phi i64 [ %i.bp, %.lr.ph59 ], [ %.158.ph, %.lr.ph59.preheader ]
  %.12757 = phi ptr [ %i.bn, %.lr.ph59 ], [ %.12757.ph, %.lr.ph59.preheader ] ; 2 uses
  %.12956 = phi ptr [ %i.bm, %.lr.ph59 ], [ %.12956.ph, %.lr.ph59.preheader ] ; 2 uses
  %.13155 = phi ptr [ %i.bo, %.lr.ph59 ], [ %.13155.ph, %.lr.ph59.preheader ] ; 2 uses
  %.14154 = phi i64 [ %i.bl, %.lr.ph59 ], [ %.14154.ph, %.lr.ph59.preheader ]
  %i.bc = load i64, ptr %.12956, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 %.14154) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  store i64 %i.bj, ptr %.13155, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155, i64 8
  %i.bp = add nsw i64 %.158, -1                   ; 2 uses
  %.not34 = icmp eq i64 %i.bp, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph59, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph59, %.preheader, %bb.a
  %.032 = phi i64 [ 0, %bb.a ], [ %i.aw, %.preheader ], [ %i.bl, %.lr.ph59 ]
  ret i64 %.032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @bn_set_minimal_width(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %bn_minimal_width.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.05.i = phi i32 [ %i.b, %.lr.ph.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05.i to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bn_minimal_width.exit.thread5

bn_minimal_width.exit.thread5:                    ; preds = %bb.b
  store i32 %.05.i, ptr %i.a, align 8, !tbaa !113
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05.i, -1
  %i.k = icmp sgt i32 %.05.i, 1
  br i1 %i.k, label %bb.b, label %bn_minimal_width.exit.thread, !llvm.loop !10

bn_minimal_width.exit.thread:                     ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !113
  br label %bb.d

bn_minimal_width.exit:                            ; preds = %bb.a
  %i.l = icmp eq i32 %i.b, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bn_minimal_width.exit.thread, %bn_minimal_width.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bn_minimal_width.exit.thread5, %bb.d, %bn_minimal_width.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_add_word(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.critedge42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 8 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %BN_is_zero.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !96
  %wide.load77 = load <2 x i64>, ptr %i.f, align 8, !tbaa !96
  %i.g = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.h = or <2 x i64> %wide.load77, %vec.phi76    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %BN_is_zero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.n, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.m, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = or i64 %i.l, %.078.i.i                   ; 2 uses
  %i.n = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.c
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !531

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa72 = phi i64 [ %i.j, %middle.block ], [ %i.m, %scalar.ph ]
  %.not55 = icmp eq i64 %.lcssa72, 0
  br i1 %.not55, label %BN_is_zero.exit.thread, label %bb.h

BN_is_zero.exit.thread:                           ; preds = %bb.b, %BN_is_zero.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %.bn_wexpand.exit_crit_edge.i

.bn_wexpand.exit_crit_edge.i:                     ; preds = %BN_is_zero.exit.thread
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !112
  br label %bn_wexpand.exit.i

bb.c:                                             ; preds = %BN_is_zero.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !115
  %i.s = and i32 %i.r, 2
  %.not16.i.i = icmp eq i32 %i.s, 0
  br i1 %.not16.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %.critedge42

bb.e:                                             ; preds = %bb.c
  %i.t = tail call ptr @OPENSSL_calloc(i64 noundef 1, i64 noundef 8) #36 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.critedge42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sext i32 %i.v to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %i.z, i64 %i.y, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i.i:               ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.aa) #36
  store ptr %i.t, ptr %0, align 8, !tbaa !112
  store i32 1, ptr %i.o, align 4, !tbaa !114
  br label %bn_wexpand.exit.i

bn_wexpand.exit.i:                                ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i, %.bn_wexpand.exit_crit_edge.i
  %i.ab = phi ptr [ %.pre.i, %.bn_wexpand.exit_crit_edge.i ], [ %i.t, %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !111
  store i64 %1, ptr %i.ab, align 8, !tbaa !96
  store i32 1, ptr %i.a, align 8, !tbaa !113
  br label %.critedge42

bb.h:                                             ; preds = %BN_is_zero.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !111
  %.not37 = icmp eq i32 %i.ae, 0
  br i1 %.not37, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %bb.h
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not73 = icmp eq i32 %smax, 0
  br i1 %exitcond.not73, label %.critedge, label %.lr.ph.peel

.lr.ph.peel:                                      ; preds = %.preheader.preheader
  %i.af = load i64, ptr %i.d, align 8, !tbaa !96
  %i.ag = add i64 %i.af, %1                       ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !96
  %i.ah = icmp ugt i64 %1, %i.ag
  br i1 %i.ah, label %.preheader.peel, label %.critedge42, !llvm.loop !532

.preheader.peel:                                  ; preds = %.lr.ph.peel
  %exitcond.not.peel = icmp eq i32 %i.b, 1
  br i1 %exitcond.not.peel, label %.critedge, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ad, align 8, !tbaa !111
  %i.ai = tail call i32 @BN_sub_word(ptr noundef nonnull %0, i64 noundef %1) ; 3 uses
  %i.aj = load i32, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %.not.i43 = icmp eq i32 %i.aj, 0
  br i1 %.not.i43, label %.critedge42, label %.lr.ph.i.i44
end_hunk_3
begin_hunk_4_@bn_usub_consttime:bb.a
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %bn_fits_in_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ %i.h, %.lr.ph.i ], [ %i.k, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.t, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i = phi i64 [ %i.s, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96
  %i.s = or i64 %i.r, %.078.i                     ; 2 uses
  %i.t = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.f
  br i1 %exitcond.not.i, label %bn_fits_in_words.exit, label %scalar.ph, !llvm.loop !546

bn_fits_in_words.exit:                            ; preds = %scalar.ph, %middle.block
  %.lcssa75 = phi i64 [ %i.p, %middle.block ], [ %i.s, %scalar.ph ]
  %.not = icmp eq i64 %.lcssa75, 0
  br i1 %.not, label %bn_fits_in_words.exit.thread, label %bb.c

bb.c:                                             ; preds = %bn_fits_in_words.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str, i32 noundef 188) #36
  br label %bn_wexpand.exit.thread

bn_fits_in_words.exit.thread:                     ; preds = %bb.b, %bn_fits_in_words.exit, %bb.a
  %.023 = phi i32 [ %i.b, %bb.a ], [ %i.d, %bn_fits_in_words.exit ], [ %i.d, %bb.b ] ; 5 uses
  %i.u = zext nneg i32 %i.d to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !114
  %.not.i = icmp ugt i32 %i.d, %i.w
  br i1 %.not.i, label %bb.d, label %bn_fits_in_words.exit.thread.bn_wexpand.exit_crit_edge

bn_fits_in_words.exit.thread.bn_wexpand.exit_crit_edge: ; preds = %bn_fits_in_words.exit.thread
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  br label %bn_wexpand.exit

bb.d:                                             ; preds = %bn_fits_in_words.exit.thread
  %i.x = icmp ugt i32 %i.d, 8388607
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !115
  %i.aa = and i32 %i.z, 2
  %.not16.i = icmp eq i32 %i.aa, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = tail call ptr @OPENSSL_calloc(i64 noundef %i.u, i64 noundef 8) #36 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bn_wexpand.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !113 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = sext i32 %i.ae to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %i.ai, i64 %i.ah, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.aj = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.aj) #36
  store ptr %i.ab, ptr %0, align 8, !tbaa !112
  store i32 %i.d, ptr %i.v, align 4, !tbaa !114
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %bn_fits_in_words.exit.thread.bn_wexpand.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.ak = phi ptr [ %.pre, %bn_fits_in_words.exit.thread.bn_wexpand.exit_crit_edge ], [ %i.ab, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 5 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !112   ; 5 uses
  %i.am = icmp eq i32 %.023, 0
  br i1 %i.am, label %bn_sub_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bn_wexpand.exit
  %i.an = sext i32 %.023 to i64                   ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !112   ; 2 uses
  %.not43.i = icmp ult i32 %.023, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i30

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.an, %.preheader42.i ], [ %i.cp, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %i.ao, %.preheader42.i ], [ %i.cn, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %i.al, %.preheader42.i ], [ %i.cm, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %i.ak, %.preheader42.i ], [ %i.co, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.ck, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i30
  %.not3453.i = icmp eq i64 %i.cp, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i30:                                       ; preds = %.preheader42.i, %.lr.ph.i30
  %.048.i = phi i64 [ %i.cp, %.lr.ph.i30 ], [ %i.an, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.cn, %.lr.ph.i30 ], [ %i.ao, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.cm, %.lr.ph.i30 ], [ %i.al, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.co, %.lr.ph.i30 ], [ %i.ak, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.ck, %.lr.ph.i30 ], [ 0, %.preheader42.i ]
  %i.ap = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.aq = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.ar = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ap, i64 %i.aq) ; 2 uses
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  %i.at = extractvalue { i64, i1 } %i.ar, 0
  %i.au = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.at, i64 %.04044.i) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = or i1 %i.as, %i.av
  %i.ay = zext i1 %i.ax to i64
  store i64 %i.aw, ptr %.03045.i, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.bd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ba, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %i.bg = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bf, i64 %i.ay) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0
  %i.bj = or i1 %i.be, %i.bh
  %i.bk = zext i1 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.bi, ptr %i.bl, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !96
  %i.bq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bn, i64 %i.bp) ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  %i.bs = extractvalue { i64, i1 } %i.bq, 0
  %i.bt = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bs, i64 %i.bk) ; 2 uses
  %i.bu = extractvalue { i64, i1 } %i.bt, 1
  %i.bv = extractvalue { i64, i1 } %i.bt, 0
  %i.bw = or i1 %i.br, %i.bu
  %i.bx = zext i1 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !96
  %i.cb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !96
  %i.cd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ca, i64 %i.cc) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cf, i64 %i.bx) ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  %i.cj = or i1 %i.ce, %i.ch
  %i.ck = zext i1 %i.cj to i64                    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.ci, ptr %i.cl, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.cp = add i64 %.048.i, -4                     ; 4 uses
  %.not.i31 = icmp ult i64 %i.cp, 4
  br i1 %.not.i31, label %.preheader.i, label %.lr.ph.i30, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.dd, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.db, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.da, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.dc, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.cz, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.cq = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.cr = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.cs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cq, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cu, i64 %.14154.i) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  %i.cx = extractvalue { i64, i1 } %i.cv, 0
  %i.cy = or i1 %i.ct, %i.cw
  %i.cz = zext i1 %i.cy to i64                    ; 2 uses
  store i64 %i.cx, ptr %.13155.i, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.dd = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.dd, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !14

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %bn_wexpand.exit, %.preheader.i
  %.032.i = phi i64 [ 0, %bn_wexpand.exit ], [ %i.ck, %.preheader.i ], [ %i.cz, %.lr.ph59.i ] ; 3 uses
  %i.de = load i32, ptr %i.c, align 8, !tbaa !113 ; 3 uses
  %i.df = icmp slt i32 %.023, %i.de
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bn_sub_words.exit
  %i.dg = sext i32 %.023 to i64                   ; 6 uses
  %wide.trip.count = sext i32 %i.de to i64        ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count, %i.dg
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.di = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !96
  %i.dk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dj, i64 %.032.i) ; 2 uses
  %i.dl = extractvalue { i64, i1 } %i.dk, 1
  %i.dm = extractvalue { i64, i1 } %i.dk, 0
  %i.dn = zext i1 %i.dl to i64                    ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.dg
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !96
  %indvars.iv.next.prol = add nsw i64 %i.dg, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.dn, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.dg, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.03345.unr = phi i64 [ %.032.i, %.lr.ph.preheader ], [ %i.dn, %.lr.ph.prol ]
  %i.dp = add nsw i64 %wide.trip.count, -1
  %i.dq = icmp eq i64 %i.dp, %i.dg
  br i1 %i.dq, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_sub_words.exit
  %.033.lcssa = phi i64 [ %.032.i, %bn_sub_words.exit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ed, %.lr.ph ]
  %.not29 = icmp eq i64 %.033.lcssa, 0
  br i1 %.not29, label %bb.l, label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.03345 = phi i64 [ %i.ed, %.lr.ph ], [ %.03345.unr, %.lr.ph.prol.loopexit ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !96
  %i.dt = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ds, i64 %.03345) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = zext i1 %i.du to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv
  store i64 %i.dv, ptr %i.dx, align 8, !tbaa !96
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !96
  %i.ea = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dz, i64 %i.dw) ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  %i.ec = extractvalue { i64, i1 } %i.ea, 0
  %i.ed = zext i1 %i.eb to i64                    ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv.next
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !96
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !547

bb.k:                                             ; preds = %._crit_edge
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str, i32 noundef 204) #36
  br label %bn_wexpand.exit.thread

bb.l:                                             ; preds = %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.de, ptr %i.ef, align 8, !tbaa !113
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.eg, align 8, !tbaa !111
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.h, %bb.g, %bb.e, %bb.k, %bb.l, %bb.c
  %.1 = phi i32 [ 1, %bb.l ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @bn_fits_in_words(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.f = sub nuw i64 %i.c, %1                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  %i.g = add i64 %1, %n.vec
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi11 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !96
  %wide.load12 = load <2 x i64>, ptr %i.j, align 8, !tbaa !96
  %i.k = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.l = or <2 x i64> %wide.load12, %vec.phi11    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.09.ph = phi i64 [ %1, %.lr.ph ], [ %i.g, %middle.block ]
  %.078.ph = phi i64 [ 0, %.lr.ph ], [ %i.n, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.s, %scalar.ph ]
  %i.o = icmp eq i64 %.lcssa, 0
  %i.p = zext i1 %i.o to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.07.lcssa = phi i32 [ 1, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  ret i32 %.07.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09 = phi i64 [ %i.t, %scalar.ph ], [ %.09.ph, %scalar.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.s, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.09
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96
  %i.s = or i64 %i.r, %.078                       ; 2 uses
  %i.t = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !549
}

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 0, 2) i64 @bn_sub_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.loopexit, label %.preheader42

.preheader42:                                     ; preds = %bb.a
  %.not43 = icmp ult i64 %3, 4
  br i1 %.not43, label %.lr.ph59.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not3453 = icmp eq i64 %i.bb, 0
  br i1 %.not3453, label %.loopexit, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %.preheader42, %.preheader
  %.158.ph = phi i64 [ %3, %.preheader42 ], [ %i.bb, %.preheader ]
  %.12757.ph = phi ptr [ %2, %.preheader42 ], [ %i.az, %.preheader ]
  %.12956.ph = phi ptr [ %1, %.preheader42 ], [ %i.ay, %.preheader ]
  %.13155.ph = phi ptr [ %0, %.preheader42 ], [ %i.ba, %.preheader ]
  %.14154.ph = phi i64 [ 0, %.preheader42 ], [ %i.aw, %.preheader ]
  br label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader42, %.lr.ph
  %.048 = phi i64 [ %i.bb, %.lr.ph ], [ %3, %.preheader42 ]
  %.02647 = phi ptr [ %i.az, %.lr.ph ], [ %2, %.preheader42 ] ; 5 uses
  %.02846 = phi ptr [ %i.ay, %.lr.ph ], [ %1, %.preheader42 ] ; 5 uses
  %.03045 = phi ptr [ %i.ba, %.lr.ph ], [ %0, %.preheader42 ] ; 5 uses
  %.04044 = phi i64 [ %i.aw, %.lr.ph ], [ 0, %.preheader42 ]
  %i.b = load i64, ptr %.02846, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 %.04044) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045, i64 32 ; 2 uses
  %i.bb = add i64 %.048, -4                       ; 4 uses
  %.not = icmp ult i64 %i.bb, 4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !13

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %.lr.ph59
  %.158 = phi i64 [ %i.bp, %.lr.ph59 ], [ %.158.ph, %.lr.ph59.preheader ]
  %.12757 = phi ptr [ %i.bn, %.lr.ph59 ], [ %.12757.ph, %.lr.ph59.preheader ] ; 2 uses
  %.12956 = phi ptr [ %i.bm, %.lr.ph59 ], [ %.12956.ph, %.lr.ph59.preheader ] ; 2 uses
  %.13155 = phi ptr [ %i.bo, %.lr.ph59 ], [ %.13155.ph, %.lr.ph59.preheader ] ; 2 uses
  %.14154 = phi i64 [ %i.bl, %.lr.ph59 ], [ %.14154.ph, %.lr.ph59.preheader ]
  %i.bc = load i64, ptr %.12956, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bg, i64 %.14154) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  store i64 %i.bj, ptr %.13155, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155, i64 8
  %i.bp = add nsw i64 %.158, -1                   ; 2 uses
  %.not34 = icmp eq i64 %i.bp, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph59, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph59, %.preheader, %bb.a
  %.032 = phi i64 [ 0, %bb.a ], [ %i.aw, %.preheader ], [ %i.bl, %.lr.ph59 ]
  ret i64 %.032
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @BN_set_negative(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %BN_is_zero.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %BN_is_zero.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.c, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi8 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !96
  %wide.load9 = load <2 x i64>, ptr %i.f, align 8, !tbaa !96
  %i.g = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.h = or <2 x i64> %wide.load9, %vec.phi8      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %BN_is_zero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.n, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.m, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = or i64 %i.l, %.078.i.i                   ; 2 uses
  %i.n = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.c
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !551

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.j, %middle.block ], [ %i.m, %scalar.ph ]
  %.not6 = icmp eq i64 %.lcssa, 0
  br i1 %.not6, label %BN_is_zero.exit.thread, label %bb.c

BN_is_zero.exit.thread:                           ; preds = %bb.b, %BN_is_zero.exit, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %BN_is_zero.exit, %BN_is_zero.exit.thread
  %.sink = phi i32 [ 0, %BN_is_zero.exit.thread ], [ 1, %BN_is_zero.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.o, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @bn_minimal_width(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.05 = phi i32 [ %i.b, %.lr.ph ], [ %i.j, %bb.c ] ; 4 uses
  %i.e = zext nneg i32 %.05 to i64
  %i.f = getelementptr [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.05, -1
  %i.k = icmp sgt i32 %.05, 1
  br i1 %i.k, label %bb.b, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ 0, %bb.c ], [ %.05, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.c, align 4, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_secure_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %BN_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.a, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.c, align 4, !tbaa !115
  br label %BN_new.exit

BN_new.exit:                                      ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #14 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @BN_free(ptr noundef %0) #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !115  ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.f) #36
  %.pre = load i32, ptr %i.b, align 4, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @BN_clear_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %BN_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !115  ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
end_hunk_4
begin_hunk_5_@BN_div:bb.a

bn_minimal_width.exit.thread5.i146:               ; preds = %bb.ao
  store i32 %.05.i.i145, ptr %i.fx, align 8, !tbaa !113
  br label %bn_set_minimal_width.exit148

bb.ap:                                            ; preds = %bb.ao
  %i.hf = add nsw i32 %.05.i.i145, -1
  %i.hg = icmp sgt i32 %.05.i.i145, 1
  br i1 %i.hg, label %bb.ao, label %bn_minimal_width.exit.thread.i147, !llvm.loop !10

bn_minimal_width.exit.thread.i147:                ; preds = %bb.ap
  store i32 0, ptr %i.fx, align 8, !tbaa !113
  br label %bb.aq

bn_minimal_width.exit.i143:                       ; preds = %bn_set_minimal_width.exit142
  %i.hh = icmp eq i32 %i.gx, 0
  br i1 %i.hh, label %bb.aq, label %bn_set_minimal_width.exit148

bb.aq:                                            ; preds = %bn_minimal_width.exit.i143, %bn_minimal_width.exit.thread.i147
  store i32 0, ptr %i.ep, align 8, !tbaa !111
  br label %bn_set_minimal_width.exit148

bn_set_minimal_width.exit148:                     ; preds = %bn_minimal_width.exit.thread5.i146, %bn_minimal_width.exit.i143, %bb.aq
  %.not115 = icmp eq ptr %1, null
  br i1 %.not115, label %bb.ax, label %bb.aw

bb.ar:                                            ; preds = %.lr.ph227, %bn_sub_words.exit.thread
  %indvars.iv = phi i64 [ %i.gl, %.lr.ph227 ], [ %indvars.iv.next, %bn_sub_words.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.next ; 8 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.ga ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !96 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %i.dz
  br i1 %i.hl, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.dx
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !96 ; 2 uses
  %i.ho = zext i64 %i.hk to i128
  %i.hp = shl nuw i128 %i.ho, 64
  %i.hq = zext i64 %i.hn to i128
  %i.hr = or disjoint i128 %i.hp, %i.hq
  %i.hs = udiv i128 %i.hr, %i.gb                  ; 2 uses
  %i.ht = trunc i128 %i.hs to i64                 ; 4 uses
  br i1 %i.gc, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.hu = mul i64 %i.dz, %i.ht
  %i.hv = sub i64 %i.hn, %i.hu                    ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %i.hi, i64 %i.gd
  %i.hx = getelementptr i8, ptr %i.hw, i64 -16
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !96
  %i.hz = and i128 %i.hs, 18446744073709551615
  %i.ia = mul nuw i128 %i.hz, %i.ge               ; 2 uses
  %i.ib = zext i64 %i.hy to i128                  ; 2 uses
  %i.ic = zext i64 %i.hv to i128
  %i.id = shl nuw i128 %i.ic, 64
  %i.ie = or disjoint i128 %i.id, %i.ib
  %.not117219 = icmp ugt i128 %i.ia, %i.ie
  br i1 %.not117219, label %.lr.ph, label %.preheader50.i

bb.au:                                            ; preds = %.lr.ph
  %i.if = sub i128 %.0222, %i.ge                  ; 2 uses
  %i.ig = zext i64 %i.ik to i128
  %i.ih = shl nuw i128 %i.ig, 64
  %i.ii = or disjoint i128 %i.ih, %i.ib
  %.not117 = icmp ugt i128 %i.if, %i.ii
  br i1 %.not117, label %.lr.ph, label %.loopexit, !llvm.loop !612

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %.0222 = phi i128 [ %i.if, %bb.au ], [ %i.ia, %bb.at ]
  %.0186221 = phi i64 [ %i.ik, %bb.au ], [ %i.hv, %bb.at ]
  %.0187220 = phi i64 [ %i.ij, %bb.au ], [ %i.ht, %bb.at ]
  %i.ij = add i64 %.0187220, -1                   ; 3 uses
  %i.ik = add i64 %.0186221, %i.dz                ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.dz
  br i1 %i.il, label %.loopexit, label %bb.au

.loopexit:                                        ; preds = %.lr.ph, %bb.au, %bb.ar, %bb.as
  %.1188 = phi i64 [ %i.ht, %bb.as ], [ -1, %bb.ar ], [ %i.ij, %bb.au ], [ %i.ij, %.lr.ph ] ; 2 uses
  br i1 %i.gh, label %.preheader42.i.thread, label %.preheader50.i

.preheader42.i.thread:                            ; preds = %.loopexit
  store i64 0, ptr %i.gi, align 8, !tbaa !96
  br label %.lr.ph59.preheader.i

.preheader50.i:                                   ; preds = %bb.at, %.loopexit
  %.1188288 = phi i64 [ %.1188, %.loopexit ], [ %i.ht, %bb.at ] ; 5 uses
  %.pre = zext i64 %.1188288 to i128              ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.kg, 0
  br i1 %.not4959.i, label %bn_mul_words.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.163.i.ph = phi ptr [ %i.gf, %.preheader50.i ], [ %i.kf, %.preheader.i ] ; 3 uses
  %.14362.i.ph = phi ptr [ %i.gg, %.preheader50.i ], [ %i.ke, %.preheader.i ] ; 3 uses
  %.14561.i.ph = phi i64 [ %i.ga, %.preheader50.i ], [ %i.kg, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.kd, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.im = load i64, ptr %.14362.i.ph, align 8, !tbaa !96
  %i.in = zext i64 %i.im to i128
  %i.io = mul nuw i128 %.pre, %i.in
  %i.ip = zext i64 %.14760.i.ph to i128
  %i.iq = add nuw i128 %i.io, %i.ip               ; 2 uses
  %i.ir = trunc i128 %i.iq to i64
  store i64 %i.ir, ptr %.163.i.ph, align 8, !tbaa !96
  %i.is = lshr i128 %i.iq, 64
  %i.it = trunc nuw i128 %i.is to i64             ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.163.i.ph, i64 8
  %i.iw = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa347.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.it, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.163.i.ph, %.lr.ph64.i.preheader ], [ %i.iv, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.iu, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.iw, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.it, %.lr.ph64.i.prol ]
  %i.ix = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.ix, label %bn_mul_words.exit, label %.lr.ph64.i

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.kf, %.lr.ph.i ], [ %i.gf, %.preheader50.i ] ; 5 uses
  %.04254.i = phi ptr [ %i.ke, %.lr.ph.i ], [ %i.gg, %.preheader50.i ] ; 5 uses
  %.04453.i = phi i64 [ %i.kg, %.lr.ph.i ], [ %i.ga, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.kd, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.iy = load i64, ptr %.04254.i, align 8, !tbaa !96
  %i.iz = zext i64 %i.iy to i128
  %i.ja = mul nuw i128 %i.iz, %.pre
  %i.jb = zext i64 %.04652.i to i128
  %i.jc = add nuw i128 %i.ja, %i.jb               ; 2 uses
  %i.jd = trunc i128 %i.jc to i64
  store i64 %i.jd, ptr %.04155.i, align 8, !tbaa !96
  %i.je = lshr i128 %i.jc, 64
  %i.jf = getelementptr inbounds nuw i8, ptr %.04254.i, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !96
  %i.jh = zext i64 %i.jg to i128
  %i.ji = mul nuw i128 %i.jh, %.pre
  %i.jj = add nuw i128 %i.ji, %i.je               ; 2 uses
  %i.jk = trunc i128 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !96
  %i.jm = lshr i128 %i.jj, 64
  %i.jn = getelementptr inbounds nuw i8, ptr %.04254.i, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !96
  %i.jp = zext i64 %i.jo to i128
  %i.jq = mul nuw i128 %i.jp, %.pre
  %i.jr = add nuw i128 %i.jq, %i.jm               ; 2 uses
  %i.js = trunc i128 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !96
  %i.ju = lshr i128 %i.jr, 64
  %i.jv = getelementptr inbounds nuw i8, ptr %.04254.i, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !96
  %i.jx = zext i64 %i.jw to i128
  %i.jy = mul nuw i128 %i.jx, %.pre
  %i.jz = add nuw i128 %i.jy, %i.ju               ; 2 uses
  %i.ka = trunc i128 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !96
  %i.kc = lshr i128 %i.jz, 64
  %i.kd = trunc nuw i128 %i.kc to i64             ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.04254.i, i64 32 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.kg = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i149 = icmp ult i64 %i.kg, 4
  br i1 %.not.i149, label %.preheader.i, label %.lr.ph.i, !llvm.loop !17

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.ky, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.kx, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.kz, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.kw, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.kh = load i64, ptr %.14362.i, align 8, !tbaa !96
  %i.ki = zext i64 %i.kh to i128
  %i.kj = mul nuw i128 %.pre, %i.ki
  %i.kk = zext i64 %.14760.i to i128
  %i.kl = add nuw i128 %i.kj, %i.kk               ; 2 uses
  %i.km = trunc i128 %i.kl to i64
  store i64 %i.km, ptr %.163.i, align 8, !tbaa !96
  %i.kn = lshr i128 %i.kl, 64
  %i.ko = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !96
  %i.kr = zext i64 %i.kq to i128
  %i.ks = mul nuw i128 %.pre, %i.kr
  %i.kt = add nuw i128 %i.ks, %i.kn               ; 2 uses
  %i.ku = trunc i128 %i.kt to i64
  store i64 %i.ku, ptr %i.kp, align 8, !tbaa !96
  %i.kv = lshr i128 %i.kt, 64
  %i.kw = trunc nuw i128 %i.kv to i64             ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.14362.i, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %.163.i, i64 16
  %i.kz = add nsw i64 %.14561.i, -2               ; 2 uses
  %.not49.i.1 = icmp eq i64 %i.kz, 0
  br i1 %.not49.i.1, label %bn_mul_words.exit, label %.lr.ph64.i, !llvm.loop !18

bn_mul_words.exit:                                ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i, %.preheader.i
  %.0.i150 = phi i64 [ %i.kd, %.preheader.i ], [ %.lcssa347.unr, %.lr.ph64.i.prol.loopexit ], [ %i.kw, %.lr.ph64.i ]
  store i64 %.0.i150, ptr %i.gi, align 8, !tbaa !96
  br i1 %i.gj, label %bn_sub_words.exit.thread, label %.preheader42.i

.preheader42.i:                                   ; preds = %bn_mul_words.exit
  br i1 %.not43.i, label %.lr.ph59.preheader.i, label %.lr.ph.i151

.preheader.i153:                                  ; preds = %.lr.ph.i151
  %.not3453.i = icmp eq i64 %i.mw, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.preheader.i

.lr.ph59.preheader.i:                             ; preds = %.preheader42.i.thread, %.preheader.i153, %.preheader42.i
  %.1188289292295 = phi i64 [ %.1188288, %.preheader.i153 ], [ %.1188288, %.preheader42.i ], [ %.1188, %.preheader42.i.thread ]
  %.0.lcssa77.i = phi i64 [ %i.mw, %.preheader.i153 ], [ %i.fh, %.preheader42.i ], [ 1, %.preheader42.i.thread ]
  %.026.lcssa76.i = phi ptr [ %i.mv, %.preheader.i153 ], [ %i.gf, %.preheader42.i ], [ %i.gf, %.preheader42.i.thread ]
  %.028.lcssa75.i = phi ptr [ %i.mu, %.preheader.i153 ], [ %i.hi, %.preheader42.i ], [ %i.hi, %.preheader42.i.thread ] ; 2 uses
  %.040.lcssa73.i = phi i64 [ %i.mt, %.preheader.i153 ], [ 0, %.preheader42.i ], [ 0, %.preheader42.i.thread ]
  br label %.lr.ph59.i

.lr.ph.i151:                                      ; preds = %.preheader42.i, %.lr.ph.i151
  %.048.i = phi i64 [ %i.mw, %.lr.ph.i151 ], [ %i.fh, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.mv, %.lr.ph.i151 ], [ %i.gf, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.mu, %.lr.ph.i151 ], [ %i.hi, %.preheader42.i ] ; 6 uses
  %.04044.i = phi i64 [ %i.mt, %.lr.ph.i151 ], [ 0, %.preheader42.i ]
  %i.la = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.lb = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.lc = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.la, i64 %i.lb) ; 2 uses
  %i.ld = extractvalue { i64, i1 } %i.lc, 1
  %i.le = extractvalue { i64, i1 } %i.lc, 0
  %i.lf = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.le, i64 %.04044.i) ; 2 uses
  %i.lg = extractvalue { i64, i1 } %i.lf, 1
  %i.lh = extractvalue { i64, i1 } %i.lf, 0
  %i.li = or i1 %i.ld, %i.lg
  %i.lj = zext i1 %i.li to i64
  store i64 %i.lh, ptr %.02846.i, align 8, !tbaa !96
  %i.lk = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !96
  %i.lm = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !96
  %i.lo = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ll, i64 %i.ln) ; 2 uses
  %i.lp = extractvalue { i64, i1 } %i.lo, 1
  %i.lq = extractvalue { i64, i1 } %i.lo, 0
  %i.lr = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.lq, i64 %i.lj) ; 2 uses
  %i.ls = extractvalue { i64, i1 } %i.lr, 1
  %i.lt = extractvalue { i64, i1 } %i.lr, 0
  %i.lu = or i1 %i.lp, %i.ls
  %i.lv = zext i1 %i.lu to i64
  store i64 %i.lt, ptr %i.lk, align 8, !tbaa !96
  %i.lw = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !96
  %i.ly = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !96
  %i.ma = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.lx, i64 %i.lz) ; 2 uses
  %i.mb = extractvalue { i64, i1 } %i.ma, 1
  %i.mc = extractvalue { i64, i1 } %i.ma, 0
  %i.md = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.mc, i64 %i.lv) ; 2 uses
  %i.me = extractvalue { i64, i1 } %i.md, 1
  %i.mf = extractvalue { i64, i1 } %i.md, 0
  %i.mg = or i1 %i.mb, %i.me
  %i.mh = zext i1 %i.mg to i64
  store i64 %i.mf, ptr %i.lw, align 8, !tbaa !96
  %i.mi = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !96
  %i.mk = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !96
  %i.mm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.mj, i64 %i.ml) ; 2 uses
  %i.mn = extractvalue { i64, i1 } %i.mm, 1
  %i.mo = extractvalue { i64, i1 } %i.mm, 0
  %i.mp = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.mo, i64 %i.mh) ; 2 uses
  %i.mq = extractvalue { i64, i1 } %i.mp, 1
  %i.mr = extractvalue { i64, i1 } %i.mp, 0
  %i.ms = or i1 %i.mn, %i.mq
  %i.mt = zext i1 %i.ms to i64                    ; 3 uses
  store i64 %i.mr, ptr %i.mi, align 8, !tbaa !96
  %i.mu = getelementptr i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.mw = add i64 %.048.i, -4                     ; 4 uses
  %.not.i152 = icmp ult i64 %i.mw, 4
  br i1 %.not.i152, label %.preheader.i153, label %.lr.ph.i151, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i, %.lr.ph59.preheader.i
  %.158.i = phi i64 [ %i.nk, %.lr.ph59.i ], [ %.0.lcssa77.i, %.lr.ph59.preheader.i ]
  %.12757.i = phi ptr [ %i.ni, %.lr.ph59.i ], [ %.026.lcssa76.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.nh, %.lr.ph59.i ], [ %.028.lcssa75.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.nj, %.lr.ph59.i ], [ %.028.lcssa75.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.ng, %.lr.ph59.i ], [ %.040.lcssa73.i, %.lr.ph59.preheader.i ]
  %i.mx = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.my = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.mz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.mx, i64 %i.my) ; 2 uses
  %i.na = extractvalue { i64, i1 } %i.mz, 1
  %i.nb = extractvalue { i64, i1 } %i.mz, 0
  %i.nc = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.nb, i64 %.14154.i) ; 2 uses
  %i.nd = extractvalue { i64, i1 } %i.nc, 1
  %i.ne = extractvalue { i64, i1 } %i.nc, 0
  %i.nf = or i1 %i.na, %i.nd
  %i.ng = zext i1 %i.nf to i64                    ; 2 uses
  store i64 %i.ne, ptr %.13155.i, align 8, !tbaa !96
  %i.nh = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.nk = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.nk, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !14

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i153
  %.1188289292294 = phi i64 [ %.1188288, %.preheader.i153 ], [ %.1188289292295, %.lr.ph59.i ] ; 2 uses
  %.032.i = phi i64 [ %i.mt, %.preheader.i153 ], [ %i.ng, %.lr.ph59.i ]
  %.not118 = icmp eq i64 %.032.i, 0
  br i1 %.not118, label %bn_sub_words.exit.thread, label %bb.av

bb.av:                                            ; preds = %bn_sub_words.exit
  %i.nl = add i64 %.1188289292294, -1
  br i1 %i.gh, label %bn_add_words.exit, label %.preheader42.i154

.preheader42.i154:                                ; preds = %bb.av
  br i1 %.not51.i, label %.lr.ph59.i171.preheader, label %.lr.ph.i156

.lr.ph59.i171.preheader:                          ; preds = %.preheader.i163, %.preheader42.i154
  %.158.i172.ph = phi i64 [ %i.ga, %.preheader42.i154 ], [ %i.pi, %.preheader.i163 ]
  %.12757.i173.ph = phi ptr [ %i.gg, %.preheader42.i154 ], [ %i.ph, %.preheader.i163 ]
  %.13155.i175.ph = phi ptr [ %i.hi, %.preheader42.i154 ], [ %i.pg, %.preheader.i163 ] ; 2 uses
  %.14154.i176.ph = phi i64 [ 0, %.preheader42.i154 ], [ %i.pf, %.preheader.i163 ]
  br label %.lr.ph59.i171

.preheader.i163:                                  ; preds = %.lr.ph.i156
  %.not3453.i164 = icmp eq i64 %i.pi, 0
  br i1 %.not3453.i164, label %bn_add_words.exit, label %.lr.ph59.i171.preheader

.lr.ph.i156:                                      ; preds = %.preheader42.i154, %.lr.ph.i156
  %.048.i157 = phi i64 [ %i.pi, %.lr.ph.i156 ], [ %i.ga, %.preheader42.i154 ]
  %.02647.i158 = phi ptr [ %i.ph, %.lr.ph.i156 ], [ %i.gg, %.preheader42.i154 ] ; 5 uses
  %.02846.i159 = phi ptr [ %i.pg, %.lr.ph.i156 ], [ %i.hi, %.preheader42.i154 ] ; 6 uses
  %.04044.i161 = phi i64 [ %i.pf, %.lr.ph.i156 ], [ 0, %.preheader42.i154 ]
  %i.nm = load i64, ptr %.02846.i159, align 8, !tbaa !96
  %i.nn = load i64, ptr %.02647.i158, align 8, !tbaa !96
  %i.no = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nm, i64 %i.nn) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  %i.nq = extractvalue { i64, i1 } %i.no, 0
  %i.nr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nq, i64 %.04044.i161) ; 2 uses
  %i.ns = extractvalue { i64, i1 } %i.nr, 1
  %i.nt = extractvalue { i64, i1 } %i.nr, 0
  %i.nu = or i1 %i.np, %i.ns
  %i.nv = zext i1 %i.nu to i64
  store i64 %i.nt, ptr %.02846.i159, align 8, !tbaa !96
  %i.nw = getelementptr inbounds nuw i8, ptr %.02846.i159, i64 8 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !96
  %i.ny = getelementptr inbounds nuw i8, ptr %.02647.i158, i64 8
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !96
  %i.oa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nx, i64 %i.nz) ; 2 uses
  %i.ob = extractvalue { i64, i1 } %i.oa, 1
  %i.oc = extractvalue { i64, i1 } %i.oa, 0
  %i.od = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oc, i64 %i.nv) ; 2 uses
  %i.oe = extractvalue { i64, i1 } %i.od, 1
  %i.of = extractvalue { i64, i1 } %i.od, 0
  %i.og = or i1 %i.ob, %i.oe
  %i.oh = zext i1 %i.og to i64
  store i64 %i.of, ptr %i.nw, align 8, !tbaa !96
  %i.oi = getelementptr inbounds nuw i8, ptr %.02846.i159, i64 16 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !96
  %i.ok = getelementptr inbounds nuw i8, ptr %.02647.i158, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !96
  %i.om = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oj, i64 %i.ol) ; 2 uses
  %i.on = extractvalue { i64, i1 } %i.om, 1
  %i.oo = extractvalue { i64, i1 } %i.om, 0
  %i.op = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oo, i64 %i.oh) ; 2 uses
  %i.oq = extractvalue { i64, i1 } %i.op, 1
  %i.or = extractvalue { i64, i1 } %i.op, 0
  %i.os = or i1 %i.on, %i.oq
  %i.ot = zext i1 %i.os to i64
  store i64 %i.or, ptr %i.oi, align 8, !tbaa !96
  %i.ou = getelementptr inbounds nuw i8, ptr %.02846.i159, i64 24 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !96
  %i.ow = getelementptr inbounds nuw i8, ptr %.02647.i158, i64 24
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !96
  %i.oy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ov, i64 %i.ox) ; 2 uses
  %i.oz = extractvalue { i64, i1 } %i.oy, 1
  %i.pa = extractvalue { i64, i1 } %i.oy, 0
  %i.pb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pa, i64 %i.ot) ; 2 uses
  %i.pc = extractvalue { i64, i1 } %i.pb, 1
  %i.pd = extractvalue { i64, i1 } %i.pb, 0
  %i.pe = or i1 %i.oz, %i.pc
  %i.pf = zext i1 %i.pe to i64                    ; 3 uses
  store i64 %i.pd, ptr %i.ou, align 8, !tbaa !96
  %i.pg = getelementptr i8, ptr %.02846.i159, i64 32 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.02647.i158, i64 32 ; 2 uses
  %i.pi = add i64 %.048.i157, -4                  ; 4 uses
  %.not.i162 = icmp ult i64 %i.pi, 4
  br i1 %.not.i162, label %.preheader.i163, label %.lr.ph.i156, !llvm.loop !11

.lr.ph59.i171:                                    ; preds = %.lr.ph59.i171.preheader, %.lr.ph59.i171
  %.158.i172 = phi i64 [ %i.pw, %.lr.ph59.i171 ], [ %.158.i172.ph, %.lr.ph59.i171.preheader ]
  %.12757.i173 = phi ptr [ %i.pu, %.lr.ph59.i171 ], [ %.12757.i173.ph, %.lr.ph59.i171.preheader ] ; 2 uses
  %.12956.i174 = phi ptr [ %i.pt, %.lr.ph59.i171 ], [ %.13155.i175.ph, %.lr.ph59.i171.preheader ] ; 2 uses
  %.13155.i175 = phi ptr [ %i.pv, %.lr.ph59.i171 ], [ %.13155.i175.ph, %.lr.ph59.i171.preheader ] ; 2 uses
  %.14154.i176 = phi i64 [ %i.ps, %.lr.ph59.i171 ], [ %.14154.i176.ph, %.lr.ph59.i171.preheader ]
  %i.pj = load i64, ptr %.12956.i174, align 8, !tbaa !96
  %i.pk = load i64, ptr %.12757.i173, align 8, !tbaa !96
  %i.pl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pj, i64 %i.pk) ; 2 uses
  %i.pm = extractvalue { i64, i1 } %i.pl, 1
  %i.pn = extractvalue { i64, i1 } %i.pl, 0
  %i.po = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pn, i64 %.14154.i176) ; 2 uses
  %i.pp = extractvalue { i64, i1 } %i.po, 1
  %i.pq = extractvalue { i64, i1 } %i.po, 0
  %i.pr = or i1 %i.pm, %i.pp
  %i.ps = zext i1 %i.pr to i64                    ; 2 uses
  store i64 %i.pq, ptr %.13155.i175, align 8, !tbaa !96
  %i.pt = getelementptr inbounds nuw i8, ptr %.12956.i174, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %.12757.i173, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.13155.i175, i64 8
  %i.pw = add nsw i64 %.158.i172, -1              ; 2 uses
  %.not34.i177 = icmp eq i64 %i.pw, 0
  br i1 %.not34.i177, label %bn_add_words.exit, label %.lr.ph59.i171, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i171, %bb.av, %.preheader.i163
  %.032.i178 = phi i64 [ 0, %bb.av ], [ %i.pf, %.preheader.i163 ], [ %i.ps, %.lr.ph59.i171 ]
  %i.px = load i64, ptr %i.hj, align 8, !tbaa !96
  %i.py = add i64 %i.px, %.032.i178
  store i64 %i.py, ptr %i.hj, align 8, !tbaa !96
  br label %bn_sub_words.exit.thread

bn_sub_words.exit.thread:                         ; preds = %bn_mul_words.exit, %bn_add_words.exit, %bn_sub_words.exit
  %.2 = phi i64 [ %.1188289292294, %bn_sub_words.exit ], [ %i.nl, %bn_add_words.exit ], [ %.1188288, %bn_mul_words.exit ]
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next
  store i64 %.2, ptr %i.pz, align 8, !tbaa !96
  %i.qa = icmp sgt i64 %indvars.iv, 1
  br i1 %i.qa, label %bb.ar, label %._crit_edge, !llvm.loop !613

bb.aw:                                            ; preds = %bn_set_minimal_width.exit148
  %i.qb = tail call i32 @BN_rshift(ptr noundef nonnull %1, ptr noundef nonnull %i.ao, i32 noundef %.0.i)
  %.not116 = icmp eq i32 %i.qb, 0
  br i1 %.not116, label %bn_wexpand.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bn_set_minimal_width.exit148
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ab, %bb.aa, %bb.y, %bb.aw, %bb.v, %BN_num_bits.exit, %bb.m, %bb.i, %bb.ax
  %.097 = phi i32 [ 0, %bb.i ], [ 1, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.v ], [ 0, %BN_num_bits.exit ], [ 0, %bb.m ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ai ] ; 2 uses
  %i.qc = load i8, ptr %i.o, align 8, !tbaa !121
  %.not.i.i179 = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i179, label %bb.ay, label %_ZN4bssl11BN_CTXScopeD2Ev.exit

bb.ay:                                            ; preds = %bn_wexpand.exit.thread
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !123
  %i.qg = add i64 %i.qf, -1                       ; 2 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !123
  %i.qh = load ptr, ptr %i.qd, align 8, !tbaa !120
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %i.qg
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !96
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.qj, ptr %i.qk, align 8, !tbaa !122
  br label %_ZN4bssl11BN_CTXScopeD2Ev.exit

_ZN4bssl11BN_CTXScopeD2Ev.exit:                   ; preds = %bb.ay, %bn_wexpand.exit.thread, %BN_is_zero.exit.thread
  %.1 = phi i32 [ 0, %BN_is_zero.exit.thread ], [ %.097, %bn_wexpand.exit.thread ], [ %.097, %bb.ay ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_lshift(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.12, i32 noundef 31) #36
  br label %bn_set_minimal_width.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !111
  %i.e = lshr i32 %2, 6                           ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = add nuw nsw i32 %i.e, 1
  %i.i = add i32 %i.h, %i.g                       ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !114
  %.not.i = icmp ugt i32 %i.i, %i.l
  br i1 %.not.i, label %bb.d, label %.bn_wexpand.exit_crit_edge

.bn_wexpand.exit_crit_edge:                       ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  br label %bn_wexpand.exit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i32 %i.i, 8388607
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_set_minimal_width.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !115
  %i.p = and i32 %i.o, 2
  %.not16.i = icmp eq i32 %i.p, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_set_minimal_width.exit

bb.h:                                             ; preds = %bb.f
  %i.q = tail call ptr @OPENSSL_calloc(i64 noundef %i.j, i64 noundef 8) #36 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bn_set_minimal_width.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !113  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr readonly align 1 %i.x, i64 %i.w, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.y) #36
  store ptr %i.q, ptr %0, align 8, !tbaa !112
  store i32 %i.i, ptr %i.k, align 4, !tbaa !114
  %.pre61 = load i32, ptr %i.f, align 8, !tbaa !113
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %.bn_wexpand.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.z = phi i32 [ %i.g, %.bn_wexpand.exit_crit_edge ], [ %.pre61, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 6 uses
  %i.aa = phi ptr [ %.pre, %.bn_wexpand.exit_crit_edge ], [ %i.q, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 7 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = and i32 %2, 63                          ; 3 uses
  %i.ad = sub nuw nsw i32 64, %i.ac
  %i.ae = load ptr, ptr %1, align 8, !tbaa !112   ; 6 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = add nsw i32 %i.z, %i.e                  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ah
  store i64 0, ptr %i.ai, align 8, !tbaa !96
  %i.aj = icmp eq i32 %i.ac, 0
  %i.ak = icmp sgt i32 %i.z, 0                    ; 2 uses
  br i1 %i.aj, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bn_wexpand.exit
  br i1 %i.ak, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader49
  %i.al = zext nneg i32 %i.ad to i64              ; 3 uses
  %i.am = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.an = zext nneg i32 %i.z to i64               ; 5 uses
  %i.ao = zext nneg i32 %i.e to i64               ; 2 uses
  %i.ap = zext nneg i32 %i.e to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao ; 3 uses
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.aa, i64 %i.ap ; 3 uses
  %i.aq = add nuw nsw i64 %i.ao, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ar
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.an, -1   ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.prol
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %i.au = lshr i64 %i.at, %i.al
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.an
  %i.av = or i64 %load_initial, %i.au
  store i64 %i.av, ptr %gep.prol, align 8, !tbaa !96
  %i.aw = shl i64 %i.at, %i.am                    ; 2 uses
  %gep73.prol = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next.prol
  store i64 %i.aw, ptr %gep73.prol, align 8, !tbaa !96
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph ], [ %i.aw, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ax = icmp eq i32 %i.z, 1
  br i1 %i.ax, label %.loopexit, label %.lr.ph.new

.preheader:                                       ; preds = %bn_wexpand.exit
  br i1 %i.ak, label %.lr.ph54.preheader, label %.loopexit

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.ay = zext nneg i32 %i.z to i64               ; 6 uses
  %i.az = zext nneg i32 %i.e to i64               ; 2 uses
  %invariant.gep74 = getelementptr [8 x i8], ptr %i.aa, i64 %i.az ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 14
  br i1 %min.iters.check, label %.lr.ph54.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph54.preheader
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add i64 %i.ba, %i.ab
  %i.bc = sub i64 %i.bb, %i.af
  %diff.check = icmp ugt i64 %i.bc, -32
  br i1 %diff.check, label %.lr.ph54.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ay, 2147483644              ; 2 uses
  %i.bd = and i64 %i.ay, 3
  br label %vector.body

end_hunk_5
begin_hunk_6_@BN_lshift:bb.a
  store i64 %i.bt, ptr %gep, align 8, !tbaa !96
  %i.bu = shl i64 %i.br, %i.am                    ; 2 uses
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next
  store i64 %i.bu, ptr %gep73, align 8, !tbaa !96
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.1
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !96 ; 2 uses
  %i.bx = lshr i64 %i.bw, %i.al
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.by = or i64 %i.bu, %i.bx
  store i64 %i.by, ptr %gep.1, align 8, !tbaa !96
  %i.bz = shl i64 %i.bw, %i.am                    ; 2 uses
  %gep73.1 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv.next.1
  store i64 %i.bz, ptr %gep73.1, align 8, !tbaa !96
  %i.ca = icmp sgt i64 %indvars.iv, 2
  br i1 %i.ca, label %.lr.ph.new, label %.loopexit, !llvm.loop !616

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.lr.ph54, %middle.block, %.preheader49, %.preheader
  %i.cb = icmp eq i32 %i.e, 0
  br i1 %i.cb, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cc = shl nuw nsw i32 %i.e, 3
  %i.cd = zext nneg i32 %i.cc to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.cd, i1 false)
  %.pre62 = load i32, ptr %i.f, align 8, !tbaa !113
  %.pre63 = add nsw i32 %.pre62, %i.e
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %.loopexit, %bb.k
  %.pre-phi = phi i32 [ %i.ag, %.loopexit ], [ %.pre63, %bb.k ] ; 2 uses
  %i.ce = add nsw i32 %.pre-phi, 1                ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !113
  %i.cg = icmp sgt i32 %.pre-phi, -1
  br i1 %i.cg, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ce, %.lr.ph.i.i ], [ %i.cn, %bb.m ] ; 4 uses
  %i.ci = zext nneg i32 %.05.i.i to i64
  %i.cj = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !96
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.m, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.l
  store i32 %.05.i.i, ptr %i.cf, align 8, !tbaa !113
  br label %bn_set_minimal_width.exit

bb.m:                                             ; preds = %bb.l
  %i.cn = add nsw i32 %.05.i.i, -1
  %i.co = icmp sgt i32 %.05.i.i, 1
  br i1 %i.co, label %bb.l, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.m
  store i32 0, ptr %i.cf, align 8, !tbaa !113
  br label %bb.n

bn_minimal_width.exit.i:                          ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.cp = icmp eq i32 %i.ce, 0
  br i1 %i.cp, label %bb.n, label %bn_set_minimal_width.exit

bb.n:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.d, align 8, !tbaa !111
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bb.h, %bb.g, %bb.e, %bb.n, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread5.i, %bb.b
  %.044 = phi i32 [ 0, %bb.b ], [ 1, %bb.n ], [ 1, %bn_minimal_width.exit.thread5.i ], [ 1, %bn_minimal_width.exit.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 0, -1) i64 @bn_mul_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader50

.preheader50:                                     ; preds = %bb.a
  %.not51 = icmp ult i64 %2, 4
  br i1 %.not51, label %.lr.ph64, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.b = zext i64 %3 to i128                      ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %.not4959 = icmp eq i64 %i.ax, 0
  br i1 %.not4959, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader50, %.preheader
  %.041.lcssa80 = phi ptr [ %i.aw, %.preheader ], [ %0, %.preheader50 ] ; 3 uses
  %.042.lcssa79 = phi ptr [ %i.av, %.preheader ], [ %1, %.preheader50 ] ; 3 uses
  %.044.lcssa78 = phi i64 [ %i.ax, %.preheader ], [ %2, %.preheader50 ] ; 4 uses
  %.046.lcssa77 = phi i64 [ %i.au, %.preheader ], [ 0, %.preheader50 ] ; 2 uses
  %i.c = zext i64 %3 to i128                      ; 3 uses
  %xtraiter = and i64 %.044.lcssa78, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph64
  %i.d = load i64, ptr %.042.lcssa79, align 8, !tbaa !96
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, %i.c
  %i.g = zext i64 %.046.lcssa77 to i128
  %i.h = add nuw i128 %i.f, %i.g                  ; 2 uses
  %i.i = trunc i128 %i.h to i64
  store i64 %i.i, ptr %.041.lcssa80, align 8, !tbaa !96
  %i.j = lshr i128 %i.h, 64
  %i.k = trunc nuw i128 %i.j to i64               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.042.lcssa79, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.041.lcssa80, i64 8
  %i.n = add nsw i64 %.044.lcssa78, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph64
  %.lcssa.unr = phi i64 [ poison, %.lr.ph64 ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %.163.unr = phi ptr [ %.041.lcssa80, %.lr.ph64 ], [ %i.m, %.prol.loopexit.unr-lcssa ]
  %.14362.unr = phi ptr [ %.042.lcssa79, %.lr.ph64 ], [ %i.l, %.prol.loopexit.unr-lcssa ]
  %.14561.unr = phi i64 [ %.044.lcssa78, %.lr.ph64 ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.14760.unr = phi i64 [ %.046.lcssa77, %.lr.ph64 ], [ %i.k, %.prol.loopexit.unr-lcssa ]
  %i.o = icmp eq i64 %.044.lcssa78, 1
  br i1 %i.o, label %.loopexit, label %.lr.ph64.new

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04155 = phi ptr [ %0, %.lr.ph ], [ %i.aw, %bb.b ] ; 5 uses
  %.04254 = phi ptr [ %1, %.lr.ph ], [ %i.av, %bb.b ] ; 5 uses
  %.04453 = phi i64 [ %2, %.lr.ph ], [ %i.ax, %bb.b ]
  %.04652 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.b ]
  %i.p = load i64, ptr %.04254, align 8, !tbaa !96
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, %i.b
  %i.s = zext i64 %.04652 to i128
  %i.t = add nuw i128 %i.r, %i.s                  ; 2 uses
  %i.u = trunc i128 %i.t to i64
  store i64 %i.u, ptr %.04155, align 8, !tbaa !96
  %i.v = lshr i128 %i.t, 64
  %i.w = getelementptr inbounds nuw i8, ptr %.04254, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96
  %i.y = zext i64 %i.x to i128
  %i.z = mul nuw i128 %i.y, %i.b
  %i.aa = add nuw i128 %i.z, %i.v                 ; 2 uses
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.04155, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !96
  %i.ad = lshr i128 %i.aa, 64
  %i.ae = getelementptr inbounds nuw i8, ptr %.04254, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !96
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw i128 %i.ag, %i.b
  %i.ai = add nuw i128 %i.ah, %i.ad               ; 2 uses
  %i.aj = trunc i128 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.04155, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !96
  %i.al = lshr i128 %i.ai, 64
  %i.am = getelementptr inbounds nuw i8, ptr %.04254, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !96
  %i.ao = zext i64 %i.an to i128
  %i.ap = mul nuw i128 %i.ao, %i.b
  %i.aq = add nuw i128 %i.ap, %i.al               ; 2 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.04155, i64 24
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !96
  %i.at = lshr i128 %i.aq, 64
  %i.au = trunc nuw i128 %i.at to i64             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04254, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.04155, i64 32 ; 2 uses
  %i.ax = add i64 %.04453, -4                     ; 4 uses
  %.not = icmp ult i64 %i.ax, 4
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !17

.lr.ph64.new:                                     ; preds = %.prol.loopexit, %.lr.ph64.new
  %.163 = phi ptr [ %i.bp, %.lr.ph64.new ], [ %.163.unr, %.prol.loopexit ] ; 3 uses
  %.14362 = phi ptr [ %i.bo, %.lr.ph64.new ], [ %.14362.unr, %.prol.loopexit ] ; 3 uses
  %.14561 = phi i64 [ %i.bq, %.lr.ph64.new ], [ %.14561.unr, %.prol.loopexit ]
  %.14760 = phi i64 [ %i.bn, %.lr.ph64.new ], [ %.14760.unr, %.prol.loopexit ]
  %i.ay = load i64, ptr %.14362, align 8, !tbaa !96
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw i128 %i.az, %i.c
  %i.bb = zext i64 %.14760 to i128
  %i.bc = add nuw i128 %i.ba, %i.bb               ; 2 uses
  %i.bd = trunc i128 %i.bc to i64
  store i64 %i.bd, ptr %.163, align 8, !tbaa !96
  %i.be = lshr i128 %i.bc, 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.14362, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.163, i64 8
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !96
  %i.bi = zext i64 %i.bh to i128
  %i.bj = mul nuw i128 %i.bi, %i.c
  %i.bk = add nuw i128 %i.bj, %i.be               ; 2 uses
  %i.bl = trunc i128 %i.bk to i64
  store i64 %i.bl, ptr %i.bg, align 8, !tbaa !96
  %i.bm = lshr i128 %i.bk, 64
  %i.bn = trunc nuw i128 %i.bm to i64             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.14362, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.163, i64 16
  %i.bq = add nsw i64 %.14561, -2                 ; 2 uses
  %.not49.1 = icmp eq i64 %i.bq, 0
  br i1 %.not49.1, label %.loopexit, label %.lr.ph64.new, !llvm.loop !18

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph64.new, %.preheader, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.au, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bn, %.lr.ph64.new ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_rshift(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.12, i32 noundef 116) #36
  br label %bn_set_minimal_width.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114
  %.not.i = icmp ugt i32 %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %.bn_wexpand.exit_crit_edge

.bn_wexpand.exit_crit_edge:                       ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  br label %bn_wexpand.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ugt i32 %i.c, 8388607
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_set_minimal_width.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !115
  %i.j = and i32 %i.i, 2
  %.not16.i = icmp eq i32 %i.j, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_set_minimal_width.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call ptr @OPENSSL_calloc(i64 noundef %i.d, i64 noundef 8) #36 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bn_set_minimal_width.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !113  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %i.r, i64 %i.q, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.s) #36
  store ptr %i.k, ptr %0, align 8, !tbaa !112
  store i32 %i.c, ptr %i.e, align 4, !tbaa !114
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !113 ; 2 uses
  %.pre19 = sext i32 %.pre18 to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %.bn_wexpand.exit_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre-phi = phi i64 [ %i.d, %.bn_wexpand.exit_crit_edge ], [ %.pre19, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 8 uses
  %i.t = phi i32 [ %i.c, %.bn_wexpand.exit_crit_edge ], [ %.pre18, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.u = phi ptr [ %.pre, %.bn_wexpand.exit_crit_edge ], [ %i.k, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 10 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !112    ; 12 uses
  %i.w = and i32 %2, 63                           ; 3 uses
  %i.x = lshr i32 %2, 6                           ; 3 uses
  %i.y = zext nneg i32 %i.x to i64                ; 15 uses
  %.not.i13 = icmp ugt i32 %i.t, %i.x
  br i1 %.not.i13, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bn_wexpand.exit
  %i.z = icmp eq i32 %i.t, 0
  br i1 %i.z, label %bn_rshift_words.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.aa, i1 false)
  br label %bn_rshift_words.exit

bb.m:                                             ; preds = %bn_wexpand.exit
  %i.ab = icmp eq i32 %i.w, 0
  br i1 %i.ab, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.ac = add nsw i64 %.pre-phi, -1               ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, %i.y
  %i.ae = zext nneg i32 %i.w to i64               ; 5 uses
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = sub nuw nsw i32 64, %i.w
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = xor i64 %i.y, -1
  %i.ai = add nsw i64 %.pre-phi, %i.ah            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.aj = shl nsw i64 %.pre-phi, 3                ; 2 uses
  %i.ak = add nsw i64 %i.aj, -8
  %i.al = shl nuw nsw i64 %i.y, 3                 ; 2 uses
  %i.am = sub nsw i64 %i.ak, %i.al
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.am
  %scevgep33 = getelementptr i8, ptr %i.v, i64 %i.al
  %scevgep34 = getelementptr i8, ptr %i.v, i64 %i.aj
  %bound0 = icmp ult ptr %i.u, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.y
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat36 = shufflevector <2 x i64> %broadcast.splatinsert35, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = add nuw i64 %index, %i.y                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !96, !alias.scope !622
  %wide.load37 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !96, !alias.scope !622
  %i.ar = lshr <2 x i64> %wide.load, %broadcast.splat36
  %i.as = lshr <2 x i64> %wide.load37, %broadcast.splat36
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ao ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %wide.load38 = load <2 x i64>, ptr %i.au, align 8, !tbaa !96, !alias.scope !622
  %wide.load39 = load <2 x i64>, ptr %i.av, align 8, !tbaa !96, !alias.scope !622
  %i.aw = shl <2 x i64> %wide.load38, %broadcast.splat
  %i.ax = shl <2 x i64> %wide.load39, %broadcast.splat
  %i.ay = or <2 x i64> %i.aw, %i.ar
  %i.az = or <2 x i64> %i.ax, %i.as
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %i.ay, ptr %i.ba, align 8, !tbaa !96, !alias.scope !623, !noalias !622
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !96, !alias.scope !623, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.039.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i ], [ %i.an, %middle.block ] ; 6 uses
  %i.bd = add nsw i64 %.pre-phi, -2
  %i.be = sub nsw i64 %.039.i.ph, %.pre-phi
  %i.bf = and i64 %i.be, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.039.i.ph
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !96
  %i.bi = lshr i64 %i.bh, %i.ae
  %i.bj = add nuw nsw i64 %.039.i.ph, 1           ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !96
  %i.bm = shl i64 %i.bl, %i.ag
  %i.bn = or i64 %i.bm, %i.bi
  %i.bo = sub nuw nsw i64 %.039.i.ph, %i.y
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bo
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !96
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.039.i.unr = phi i64 [ %.039.i.ph, %scalar.ph.preheader ], [ %i.bj, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %i.bd, %.039.i.ph
  br i1 %i.bq, label %._crit_edge.i, label %scalar.ph

bb.n:                                             ; preds = %bb.m
  %i.br = sub nuw nsw i64 %.pre-phi, %i.y
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %i.bt, i64 %i.bs, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i
end_hunk_6
begin_hunk_7_@BN_rshift:bb.a
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.p
  store i32 %.05.i.i, ptr %i.dc, align 8, !tbaa !113
  br label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bb.p
  %i.dk = add nsw i32 %.05.i.i, -1
  %i.dl = icmp sgt i32 %.05.i.i, 1
  br i1 %i.dl, label %bb.p, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.q
  store i32 0, ptr %i.dc, align 8, !tbaa !113
  br label %bb.r

bn_minimal_width.exit.i:                          ; preds = %bn_rshift_words.exit
  %i.dm = icmp eq i32 %i.db, 0
  br i1 %i.dm, label %bb.r, label %bn_set_minimal_width.exit

bb.r:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.da, align 8, !tbaa !111
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bb.h, %bb.g, %bb.e, %bb.r, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread5.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.r ], [ 1, %bn_minimal_width.exit.thread5.i ], [ 1, %bn_minimal_width.exit.i ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_nnmod(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %BN_usub.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !111
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %BN_usub.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @bn_usub_consttime(ptr noundef nonnull %0, ptr noundef readonly %2, ptr noundef nonnull readonly %0)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %BN_usub.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.h = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i ], [ %i.n, %bb.f ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bn_minimal_width.exit.thread5.i.i

bn_minimal_width.exit.thread5.i.i:                ; preds = %bb.e
  store i32 %.05.i.i.i, ptr %i.e, align 8, !tbaa !113
  br label %BN_usub.exit

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %.05.i.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.o, label %bb.e, label %bn_minimal_width.exit.thread.i.i, !llvm.loop !10

bn_minimal_width.exit.thread.i.i:                 ; preds = %bb.f
  store i32 0, ptr %i.e, align 8, !tbaa !113
  br label %bb.g

bn_minimal_width.exit.i.i:                        ; preds = %bb.d
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.g, label %BN_usub.exit

bb.g:                                             ; preds = %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread.i.i
  store i32 0, ptr %i.b, align 8, !tbaa !111
  br label %BN_usub.exit

BN_usub.exit:                                     ; preds = %bb.g, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread5.i.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bn_minimal_width.exit.thread5.i.i ], [ 1, %bn_minimal_width.exit.i.i ], [ 1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define hidden i64 @bn_reduce_once(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %4, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %4, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.lr.ph.i11, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %4, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bb = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bp, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bm, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bl, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bc = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bg, i64 %.14154.i) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  store i64 %i.bj, ptr %.13155.i, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bp = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bp, 0
  br i1 %.not34.i, label %.lr.ph.i11, label %.lr.ph59.i, !llvm.loop !14

.lr.ph.i11:                                       ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i.ph = phi i64 [ %i.aw, %.preheader.i ], [ %i.bl, %.lr.ph59.i ]
  %i.bq = sub i64 %2, %.032.i.ph                  ; 4 uses
  %i.br = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq) #38, !srcloc !108 ; 5 uses
  %i.bs = xor i64 %i.br, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %4, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11
  %i.bt = shl i64 %4, 3                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bt
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.bt
  %bound0 = icmp ult ptr %0, %scevgep34
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat36 = shufflevector <2 x i64> %broadcast.splatinsert35, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !96, !alias.scope !629
  %wide.load37 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !96, !alias.scope !629
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load38 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !96, !alias.scope !630, !noalias !629
  %wide.load39 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !96, !alias.scope !630, !noalias !629
  %i.by = and <2 x i64> %wide.load, %broadcast.splat
  %i.bz = and <2 x i64> %wide.load37, %broadcast.splat
  %i.ca = and <2 x i64> %wide.load38, %broadcast.splat36
  %i.cb = and <2 x i64> %wide.load39, %broadcast.splat36
  %i.cc = or disjoint <2 x i64> %i.ca, %i.by
  %i.cd = or disjoint <2 x i64> %i.cb, %i.bz
  store <2 x i64> %i.cc, ptr %i.bw, align 8, !tbaa !96, !alias.scope !630, !noalias !629
  store <2 x i64> %i.cd, ptr %i.bx, align 8, !tbaa !96, !alias.scope !630, !noalias !629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %bn_select_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.ph
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.ph ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !96
  %i.cj = and i64 %i.cg, %i.br
  %i.ck = and i64 %i.ci, %i.bs
  %i.cl = or disjoint i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !96
  %i.cm = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.cn = icmp eq i64 %4, %.neg
  br i1 %i.cn, label %bn_select_words.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.dd, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = and i64 %i.cp, %i.br
  %i.ct = and i64 %i.cr, %i.bs
  %i.cu = or disjoint i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !96
  %i.cv = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !96
  %i.da = and i64 %i.cx, %i.br
  %i.db = and i64 %i.cz, %i.bs
  %i.dc = or disjoint i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !96
  %i.dd = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dd, %4
  br i1 %exitcond.not.i.1, label %bn_select_words.exit, label %scalar.ph, !llvm.loop !628

bn_select_words.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.de = phi i64 [ %2, %bb.a ], [ %i.bq, %middle.block ], [ %i.bq, %scalar.ph ], [ %i.bq, %scalar.ph.prol.loopexit ]
  ret i64 %i.de
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define hidden i64 @bn_reduce_once_in_place(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %4, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %4, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.lr.ph.i11, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %4, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bb = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bp, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bm, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bl, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bc = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bg, i64 %.14154.i) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  store i64 %i.bj, ptr %.13155.i, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bp = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bp, 0
  br i1 %.not34.i, label %.lr.ph.i11, label %.lr.ph59.i, !llvm.loop !14

.lr.ph.i11:                                       ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i.ph = phi i64 [ %i.aw, %.preheader.i ], [ %i.bl, %.lr.ph59.i ]
  %i.bq = sub i64 %1, %.032.i.ph                  ; 4 uses
  %i.br = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq) #38, !srcloc !108 ; 5 uses
  %i.bs = xor i64 %i.br, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %4, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11
  %i.bt = shl i64 %4, 3                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bt
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.bt
  %bound0 = icmp ult ptr %0, %scevgep34
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat36 = shufflevector <2 x i64> %broadcast.splatinsert35, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bu, align 8, !tbaa !96, !alias.scope !636, !noalias !637
  %wide.load37 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !96, !alias.scope !636, !noalias !637
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !96, !alias.scope !637
  %wide.load39 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !96, !alias.scope !637
  %i.by = and <2 x i64> %wide.load, %broadcast.splat
  %i.bz = and <2 x i64> %wide.load37, %broadcast.splat
  %i.ca = and <2 x i64> %wide.load38, %broadcast.splat36
  %i.cb = and <2 x i64> %wide.load39, %broadcast.splat36
  %i.cc = or disjoint <2 x i64> %i.ca, %i.by
  %i.cd = or disjoint <2 x i64> %i.cb, %i.bz
  store <2 x i64> %i.cc, ptr %i.bu, align 8, !tbaa !96, !alias.scope !636, !noalias !637
  store <2 x i64> %i.cd, ptr %i.bv, align 8, !tbaa !96, !alias.scope !636, !noalias !637
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %bn_select_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.ph ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.ph
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !96
  %i.cj = and i64 %i.cg, %i.br
  %i.ck = and i64 %i.ci, %i.bs
  %i.cl = or disjoint i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.cf, align 8, !tbaa !96
  %i.cm = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.cn = icmp eq i64 %4, %.neg
  br i1 %i.cn, label %bn_select_words.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.dd, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = and i64 %i.cp, %i.br
  %i.ct = and i64 %i.cr, %i.bs
  %i.cu = or disjoint i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.co, align 8, !tbaa !96
  %i.cv = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cv
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !96
  %i.da = and i64 %i.cx, %i.br
  %i.db = and i64 %i.cz, %i.bs
  %i.dc = or disjoint i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !96
  %i.dd = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dd, %4
  br i1 %exitcond.not.i.1, label %bn_select_words.exit, label %scalar.ph, !llvm.loop !635

bn_select_words.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.de = phi i64 [ %1, %bb.a ], [ %i.bq, %middle.block ], [ %i.bq, %scalar.ph ], [ %i.bq, %scalar.ph.prol.loopexit ]
  ret i64 %i.de
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_mod_sub_words(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %5, 4                  ; 2 uses
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %5, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.preheader42.i12.thread, label %.lr.ph59.i.preheader

.preheader42.i12.thread:                          ; preds = %.preheader.i
  %.032.i.ph.neg69 = sext i1 %i.av to i64
  br label %.lr.ph.i14.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %5, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at                      ; 2 uses
  %i.aw = zext i1 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bb = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bp, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bm, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bl, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bc = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bg, i64 %.14154.i) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi                      ; 2 uses
  %i.bl = zext i1 %i.bk to i64
  store i64 %i.bj, ptr %.13155.i, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bp = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bp, 0
  br i1 %.not34.i, label %.preheader42.i12, label %.lr.ph59.i, !llvm.loop !14

.preheader42.i12:                                 ; preds = %.lr.ph59.i
  %.032.i.ph.neg = sext i1 %i.bk to i64           ; 2 uses
  br i1 %.not43.i, label %.lr.ph59.preheader.i23, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %.preheader42.i12.thread, %.preheader42.i12
  %.032.i.ph.neg72 = phi i64 [ %.032.i.ph.neg69, %.preheader42.i12.thread ], [ %.032.i.ph.neg, %.preheader42.i12 ] ; 2 uses
  br label %.lr.ph.i14

.preheader.i21:                                   ; preds = %.lr.ph.i14
  %.not3453.i22 = icmp eq i64 %i.dq, 0
  br i1 %.not3453.i22, label %.lr.ph.i38, label %.lr.ph59.preheader.i23

.lr.ph59.preheader.i23:                           ; preds = %.preheader.i21, %.preheader42.i12
  %.032.i.ph.neg70 = phi i64 [ %.032.i.ph.neg72, %.preheader.i21 ], [ %.032.i.ph.neg, %.preheader42.i12 ]
  %.0.lcssa77.i24 = phi i64 [ %i.dq, %.preheader.i21 ], [ %5, %.preheader42.i12 ]
  %.026.lcssa76.i25 = phi ptr [ %i.do, %.preheader.i21 ], [ %3, %.preheader42.i12 ]
  %.028.lcssa75.i26 = phi ptr [ %i.dn, %.preheader.i21 ], [ %0, %.preheader42.i12 ]
  %.030.lcssa74.i27 = phi ptr [ %i.dp, %.preheader.i21 ], [ %4, %.preheader42.i12 ]
  %.040.lcssa73.i28 = phi i64 [ %i.dl, %.preheader.i21 ], [ 0, %.preheader42.i12 ]
  br label %.lr.ph59.i29

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %.048.i15 = phi i64 [ %i.dq, %.lr.ph.i14 ], [ %5, %.lr.ph.i14.preheader ]
  %.02647.i16 = phi ptr [ %i.do, %.lr.ph.i14 ], [ %3, %.lr.ph.i14.preheader ] ; 5 uses
  %.02846.i17 = phi ptr [ %i.dn, %.lr.ph.i14 ], [ %0, %.lr.ph.i14.preheader ] ; 5 uses
  %.03045.i18 = phi ptr [ %i.dp, %.lr.ph.i14 ], [ %4, %.lr.ph.i14.preheader ] ; 5 uses
  %.04044.i19 = phi i64 [ %i.dl, %.lr.ph.i14 ], [ 0, %.lr.ph.i14.preheader ]
  %i.bq = load i64, ptr %.02846.i17, align 8, !tbaa !96
  %i.br = load i64, ptr %.02647.i16, align 8, !tbaa !96
  %i.bs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bq, i64 %i.br) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = extractvalue { i64, i1 } %i.bs, 0
  %i.bv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bu, i64 %.04044.i19) ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  %i.bx = extractvalue { i64, i1 } %i.bv, 0
  %i.by = or i1 %i.bt, %i.bw
  %i.bz = zext i1 %i.by to i64
  store i64 %i.bx, ptr %.03045.i18, align 8, !tbaa !96
  %i.ca = getelementptr inbounds nuw i8, ptr %.02846.i17, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !96
  %i.cc = getelementptr inbounds nuw i8, ptr %.02647.i16, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cb, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  %i.ch = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cg, i64 %i.bz) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  %i.ck = or i1 %i.cf, %i.ci
  %i.cl = zext i1 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.03045.i18, i64 8
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw i8, ptr %.02846.i17, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %.02647.i16, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !96
  %i.cr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.co, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %i.cu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ct, i64 %i.cl) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  %i.cw = extractvalue { i64, i1 } %i.cu, 0
  %i.cx = or i1 %i.cs, %i.cv
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.03045.i18, i64 16
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %.02846.i17, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !96
  %i.dc = getelementptr inbounds nuw i8, ptr %.02647.i16, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !96
  %i.de = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.db, i64 %i.dd) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  %i.dg = extractvalue { i64, i1 } %i.de, 0
  %i.dh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dg, i64 %i.cy) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 1
  %i.dj = extractvalue { i64, i1 } %i.dh, 0
  %i.dk = or i1 %i.df, %i.di
  %i.dl = zext i1 %i.dk to i64                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.03045.i18, i64 24
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %.02846.i17, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02647.i16, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.03045.i18, i64 32 ; 2 uses
  %i.dq = add i64 %.048.i15, -4                   ; 4 uses
  %.not.i20 = icmp ult i64 %i.dq, 4
  br i1 %.not.i20, label %.preheader.i21, label %.lr.ph.i14, !llvm.loop !11

.lr.ph59.i29:                                     ; preds = %.lr.ph59.i29, %.lr.ph59.preheader.i23
  %.158.i30 = phi i64 [ %i.ee, %.lr.ph59.i29 ], [ %.0.lcssa77.i24, %.lr.ph59.preheader.i23 ]
  %.12757.i31 = phi ptr [ %i.ec, %.lr.ph59.i29 ], [ %.026.lcssa76.i25, %.lr.ph59.preheader.i23 ] ; 2 uses
  %.12956.i32 = phi ptr [ %i.eb, %.lr.ph59.i29 ], [ %.028.lcssa75.i26, %.lr.ph59.preheader.i23 ] ; 2 uses
  %.13155.i33 = phi ptr [ %i.ed, %.lr.ph59.i29 ], [ %.030.lcssa74.i27, %.lr.ph59.preheader.i23 ] ; 2 uses
  %.14154.i34 = phi i64 [ %i.ea, %.lr.ph59.i29 ], [ %.040.lcssa73.i28, %.lr.ph59.preheader.i23 ]
  %i.dr = load i64, ptr %.12956.i32, align 8, !tbaa !96
  %i.ds = load i64, ptr %.12757.i31, align 8, !tbaa !96
  %i.dt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dr, i64 %i.ds) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dv, i64 %.14154.i34) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0
  %i.dz = or i1 %i.du, %i.dx
  %i.ea = zext i1 %i.dz to i64
  store i64 %i.dy, ptr %.13155.i33, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %.12956.i32, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.12757.i31, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.13155.i33, i64 8
  %i.ee = add nsw i64 %.158.i30, -1               ; 2 uses
  %.not34.i35 = icmp eq i64 %i.ee, 0
  br i1 %.not34.i35, label %.lr.ph.i38, label %.lr.ph59.i29, !llvm.loop !12

.lr.ph.i38:                                       ; preds = %.lr.ph59.i29, %.preheader.i21
  %.032.i.ph.neg71 = phi i64 [ %.032.i.ph.neg72, %.preheader.i21 ], [ %.032.i.ph.neg70, %.lr.ph59.i29 ]
  %i.ef = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i.ph.neg71) #38, !srcloc !108 ; 5 uses
  %i.eg = xor i64 %i.ef, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %5, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i38
  %i.eh = shl i64 %5, 3                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.eh
  %scevgep95 = getelementptr i8, ptr %4, i64 %i.eh
  %bound0 = icmp ult ptr %0, %scevgep95
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ef, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert96 = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat97 = shufflevector <2 x i64> %broadcast.splatinsert96, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <2 x i64>, ptr %i.ei, align 8, !tbaa !96, !alias.scope !643
  %wide.load98 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !96, !alias.scope !643
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load99 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !96, !alias.scope !644, !noalias !643
  %wide.load100 = load <2 x i64>, ptr %i.el, align 8, !tbaa !96, !alias.scope !644, !noalias !643
  %i.em = and <2 x i64> %wide.load, %broadcast.splat
  %i.en = and <2 x i64> %wide.load98, %broadcast.splat
  %i.eo = and <2 x i64> %wide.load99, %broadcast.splat97
  %i.ep = and <2 x i64> %wide.load100, %broadcast.splat97
  %i.eq = or disjoint <2 x i64> %i.eo, %i.em
  %i.er = or disjoint <2 x i64> %i.ep, %i.en
  store <2 x i64> %i.eq, ptr %i.ek, align 8, !tbaa !96, !alias.scope !644, !noalias !643
  store <2 x i64> %i.er, ptr %i.el, align 8, !tbaa !96, !alias.scope !644, !noalias !643
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !641

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %bn_select_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i38, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i38 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.09.i.ph
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !96
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.ph ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !96
  %i.ex = and i64 %i.eu, %i.ef
  %i.ey = and i64 %i.ew, %i.eg
  %i.ez = or disjoint i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !96
  %i.fa = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.fa, %scalar.ph.prol ]
  %i.fb = icmp eq i64 %5, %.neg
  br i1 %i.fb, label %bn_select_words.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.fr, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.09.i
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !96
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !96
  %i.fg = and i64 %i.fd, %i.ef
  %i.fh = and i64 %i.ff, %i.eg
  %i.fi = or disjoint i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.fe, align 8, !tbaa !96
  %i.fj = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !96
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fj ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !96
  %i.fo = and i64 %i.fl, %i.ef
  %i.fp = and i64 %i.fn, %i.eg
  %i.fq = or disjoint i64 %i.fp, %i.fo
  store i64 %i.fq, ptr %i.fm, align 8, !tbaa !96
  %i.fr = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.fr, %5
  br i1 %exitcond.not.i.1, label %bn_select_words.exit, label %scalar.ph, !llvm.loop !642

bn_select_words.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_mod_add_words(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %5, 0
  br i1 %i.a, label %bn_reduce_once_in_place.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %5, 4                  ; 2 uses
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %5, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.lr.ph.i.i.preheader, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %5, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bb = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bp, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bm, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bl, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bc = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 %.14154.i) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 3 uses
  store i64 %i.bj, ptr %.13155.i, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bp = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bp, 0
  br i1 %.not34.i, label %.preheader42.i.i, label %.lr.ph59.i, !llvm.loop !12

.preheader42.i.i:                                 ; preds = %.lr.ph59.i
  br i1 %.not43.i, label %.lr.ph59.preheader.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i.i
  %.032.i.ph36 = phi i64 [ %i.bl, %.preheader42.i.i ], [ %i.aw, %.preheader.i ] ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.not3453.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.preheader.i.i

.lr.ph59.preheader.i.i:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.032.i.ph37 = phi i64 [ %.032.i.ph36, %.preheader.i.i ], [ %i.bl, %.preheader42.i.i ]
  %.0.lcssa77.i.i = phi i64 [ %i.dq, %.preheader.i.i ], [ %5, %.preheader42.i.i ]
  %.026.lcssa76.i.i = phi ptr [ %i.do, %.preheader.i.i ], [ %3, %.preheader42.i.i ]
  %.028.lcssa75.i.i = phi ptr [ %i.dn, %.preheader.i.i ], [ %0, %.preheader42.i.i ]
  %.030.lcssa74.i.i = phi ptr [ %i.dp, %.preheader.i.i ], [ %4, %.preheader42.i.i ]
  %.040.lcssa73.i.i = phi i64 [ %i.dl, %.preheader.i.i ], [ 0, %.preheader42.i.i ]
  br label %.lr.ph59.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.048.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %5, %.lr.ph.i.i.preheader ]
  %.02647.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %0, %.lr.ph.i.i.preheader ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %4, %.lr.ph.i.i.preheader ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.dl, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bq = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.br = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.bs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bq, i64 %i.br) ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  %i.bu = extractvalue { i64, i1 } %i.bs, 0
  %i.bv = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bu, i64 %.04044.i.i) ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  %i.bx = extractvalue { i64, i1 } %i.bv, 0
  %i.by = or i1 %i.bt, %i.bw
  %i.bz = zext i1 %i.by to i64
  store i64 %i.bx, ptr %.03045.i.i, align 8, !tbaa !96
  %i.ca = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !96
  %i.cc = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cb, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  %i.ch = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cg, i64 %i.bz) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  %i.ck = or i1 %i.cf, %i.ci
  %i.cl = zext i1 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !96
  %i.cr = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.co, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %i.cu = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ct, i64 %i.cl) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  %i.cw = extractvalue { i64, i1 } %i.cu, 0
  %i.cx = or i1 %i.cs, %i.cv
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.cw, ptr %i.cz, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !96
  %i.dc = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !96
  %i.de = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.db, i64 %i.dd) ; 2 uses
  %i.df = extractvalue { i64, i1 } %i.de, 1
  %i.dg = extractvalue { i64, i1 } %i.de, 0
  %i.dh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dg, i64 %i.cy) ; 2 uses
  %i.di = extractvalue { i64, i1 } %i.dh, 1
  %i.dj = extractvalue { i64, i1 } %i.dh, 0
  %i.dk = or i1 %i.df, %i.di
  %i.dl = zext i1 %i.dk to i64                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !96
  %i.dn = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.dq = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i = icmp ult i64 %i.dq, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i, %.lr.ph59.preheader.i.i
  %.158.i.i = phi i64 [ %i.ee, %.lr.ph59.i.i ], [ %.0.lcssa77.i.i, %.lr.ph59.preheader.i.i ]
  %.12757.i.i = phi ptr [ %i.ec, %.lr.ph59.i.i ], [ %.026.lcssa76.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.eb, %.lr.ph59.i.i ], [ %.028.lcssa75.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.ed, %.lr.ph59.i.i ], [ %.030.lcssa74.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.ea, %.lr.ph59.i.i ], [ %.040.lcssa73.i.i, %.lr.ph59.preheader.i.i ]
  %i.dr = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.ds = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.dt = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dr, i64 %i.ds) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dv, i64 %.14154.i.i) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0
  %i.dz = or i1 %i.du, %i.dx
  %i.ea = zext i1 %i.dz to i64                    ; 2 uses
  store i64 %i.dy, ptr %.13155.i.i, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.ee = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph35 = phi i64 [ %.032.i.ph36, %.preheader.i.i ], [ %.032.i.ph37, %.lr.ph59.i.i ]
  %.032.i.ph.i = phi i64 [ %i.dl, %.preheader.i.i ], [ %i.ea, %.lr.ph59.i.i ]
  %i.ef = sub nsw i64 %.032.i.ph35, %.032.i.ph.i
  %i.eg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ef) #38, !srcloc !108 ; 5 uses
  %i.eh = xor i64 %i.eg, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %5, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11.i
  %i.ei = shl i64 %5, 3                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ei
  %scevgep60 = getelementptr i8, ptr %4, i64 %i.ei
  %bound0 = icmp ult ptr %0, %scevgep60
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %5, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert61 = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %broadcast.splat62 = shufflevector <2 x i64> %broadcast.splatinsert61, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ej, align 8, !tbaa !96, !alias.scope !650, !noalias !651
  %wide.load63 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !96, !alias.scope !650, !noalias !651
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load64 = load <2 x i64>, ptr %i.el, align 8, !tbaa !96, !alias.scope !651
  %wide.load65 = load <2 x i64>, ptr %i.em, align 8, !tbaa !96, !alias.scope !651
  %i.en = and <2 x i64> %wide.load, %broadcast.splat
  %i.eo = and <2 x i64> %wide.load63, %broadcast.splat
  %i.ep = and <2 x i64> %wide.load64, %broadcast.splat62
  %i.eq = and <2 x i64> %wide.load65, %broadcast.splat62
  %i.er = or disjoint <2 x i64> %i.ep, %i.en
  %i.es = or disjoint <2 x i64> %i.eq, %i.eo
  store <2 x i64> %i.er, ptr %i.ej, align 8, !tbaa !96, !alias.scope !650, !noalias !651
  store <2 x i64> %i.es, ptr %i.ek, align 8, !tbaa !96, !alias.scope !650, !noalias !651
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %bn_reduce_once_in_place.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.ph, 1
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.ph ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !96
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.09.i.i.ph
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !96
  %i.ey = and i64 %i.ev, %i.eg
  %i.ez = and i64 %i.ex, %i.eh
  %i.fa = or disjoint i64 %i.ez, %i.ey
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !96
  %i.fb = or disjoint i64 %.09.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph.preheader ], [ %i.fb, %scalar.ph.prol ]
  %i.fc = icmp eq i64 %5, %.neg
  br i1 %i.fc, label %bn_reduce_once_in_place.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i = phi i64 [ %i.fs, %scalar.ph ], [ %.09.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !96
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.09.i.i
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !96
  %i.fh = and i64 %i.fe, %i.eg
  %i.fi = and i64 %i.fg, %i.eh
  %i.fj = or disjoint i64 %i.fi, %i.fh
  store i64 %i.fj, ptr %i.fd, align 8, !tbaa !96
  %i.fk = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !96
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fk
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !96
  %i.fp = and i64 %i.fm, %i.eg
  %i.fq = and i64 %i.fo, %i.eh
  %i.fr = or disjoint i64 %i.fq, %i.fp
  store i64 %i.fr, ptr %i.fl, align 8, !tbaa !96
  %i.fs = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.fs, %5
  br i1 %exitcond.not.i.i.1, label %bn_reduce_once_in_place.exit, label %scalar.ph, !llvm.loop !649

bn_reduce_once_in_place.exit:                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_div_consttime(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !111
  %.not120 = icmp eq i32 %i.b, 0
  br i1 %.not120, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.3, i32 noundef 401) #36
  br label %_ZN4bssl11BN_CTXScopeD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_is_zero.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.h = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi196 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !96
  %wide.load197 = load <2 x i64>, ptr %i.j, align 8, !tbaa !96
  %i.k = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.l = or <2 x i64> %wide.load197, %vec.phi196  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %BN_is_zero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.n, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.r, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i.i = phi i64 [ %i.q, %scalar.ph ], [ %.078.i.i.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.09.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = or i64 %i.p, %.078.i.i                   ; 2 uses
  %i.r = add nuw i64 %.09.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !653

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa195 = phi i64 [ %i.n, %middle.block ], [ %i.q, %scalar.ph ]
  %.not121 = icmp eq i64 %.lcssa195, 0
  br i1 %.not121, label %BN_is_zero.exit.thread, label %bb.e

BN_is_zero.exit.thread:                           ; preds = %bb.d, %BN_is_zero.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str.3, i32 noundef 405) #36
  br label %_ZN4bssl11BN_CTXScopeD2Ev.exit

bb.e:                                             ; preds = %BN_is_zero.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !121
  %.not.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %_ZN4bssl11BN_CTXScopeC2EP10bignum_ctx.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !122
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123  ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %._crit_edge.i.i.i
end_hunk_7
begin_hunk_8_@bn_div_consttime:bb.a
  br i1 %.not98, label %bn_wexpand.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load i32, ptr %i.bf, align 8, !tbaa !113 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = sext i32 %i.cd to i64
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = load ptr, ptr %.080, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 0, i64 %i.cg, i1 false)
  %.pre = load i32, ptr %i.bf, align 8, !tbaa !113
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.x, %bb.y
  %i.ci = phi i32 [ 0, %bb.x ], [ %.pre, %bb.y ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.080, i64 8
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.080, i64 16
  store i32 0, ptr %i.ck, align 8, !tbaa !111
  %i.cl = load i32, ptr %i.e, align 8, !tbaa !113 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZL14OPENSSL_memsetPvim.exit109, label %bb.z

bb.z:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.cn = sext i32 %i.cl to i64
  %i.co = shl nsw i64 %i.cn, 3
  %i.cp = load ptr, ptr %.085, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cp, i8 0, i64 %i.co, i1 false)
  %.pre152 = load i32, ptr %i.e, align 8, !tbaa !113
  br label %_ZL14OPENSSL_memsetPvim.exit109

_ZL14OPENSSL_memsetPvim.exit109:                  ; preds = %_ZL14OPENSSL_memsetPvim.exit, %bb.z
  %i.cq = phi i32 [ 0, %_ZL14OPENSSL_memsetPvim.exit ], [ %.pre152, %bb.z ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.085, i64 8
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.085, i64 16
  store i32 0, ptr %i.cs, align 8, !tbaa !111
  %.not99 = icmp eq i32 %4, 0
  %.pre154 = load i32, ptr %i.bf, align 8, !tbaa !113 ; 4 uses
  br i1 %.not99, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_ZL14OPENSSL_memsetPvim.exit109
  %i.ct = add i32 %4, -1
  %i.cu = lshr i32 %i.ct, 6
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %.pre154) ; 3 uses
  %i.cv = icmp eq i32 %spec.select, 0
  br i1 %i.cv, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sext i32 %spec.select to i64            ; 2 uses
  %i.cx = shl nsw i64 %i.cw, 3
  %i.cy = load ptr, ptr %2, align 8, !tbaa !112
  %i.cz = sext i32 %.pre154 to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cz
  %i.db = sub nsw i64 0, %i.cw
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %.085, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr nonnull readonly align 1 %i.dc, i64 %i.cx, i1 false)
  %.pre153.pre = load i32, ptr %i.bf, align 8, !tbaa !113
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.aa, %bb.ab
  %.pre153 = phi i32 [ %.pre154, %bb.aa ], [ %.pre153.pre, %bb.ab ]
  %i.de = xor i32 %spec.select, -1
  br label %bb.ac

bb.ac:                                            ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %_ZL14OPENSSL_memsetPvim.exit109
  %i.df = phi i32 [ %.pre153, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %.pre154, %_ZL14OPENSSL_memsetPvim.exit109 ]
  %.184 = phi i32 [ %i.de, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ -1, %_ZL14OPENSSL_memsetPvim.exit109 ]
  %i.dg = add i32 %i.df, %.184                    ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.ac
  %i.di = load ptr, ptr %.085, align 8, !tbaa !112 ; 14 uses
  %i.dj = load i32, ptr %i.e, align 8, !tbaa !113 ; 5 uses
  %i.dk = sext i32 %i.dj to i64                   ; 9 uses
  %i.dl = icmp eq i32 %i.dj, 0
  %i.dm = load ptr, ptr %2, align 8, !tbaa !112
  %i.dn = load ptr, ptr %i.bb, align 8, !tbaa !112 ; 8 uses
  %.not43.i = icmp ult i32 %i.dj, 4               ; 2 uses
  %i.do = zext nneg i32 %i.dg to i64
  %i.dp = shl nsw i64 %i.dk, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.di, i64 %i.dp
  %scevgep198 = getelementptr i8, ptr %i.dn, i64 %i.dp
  %min.iters.check200 = icmp ult i32 %i.dj, 4
  %bound0 = icmp ult ptr %i.di, %scevgep198
  %bound1 = icmp ult ptr %i.dn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec202 = and i64 %i.dk, -4                   ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec202, %i.dk
  %i.dq = and i32 %i.dj, 1
  %lcmp.mod.not = icmp eq i32 %i.dq, 0
  %i.dr = add nsw i64 %i.dk, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ad
  %indvars.iv149 = phi i64 [ %i.do, %.preheader.lr.ph ], [ %indvars.iv.next150, %bb.ad ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv149 ; 2 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  br i1 %i.ar, label %bb.ag, label %bb.af

bb.ad:                                            ; preds = %bn_reduce_once_in_place.exit
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, -1
  %i.dt = icmp sgt i64 %indvars.iv149, 0
  br i1 %i.dt, label %.preheader, label %._crit_edge, !llvm.loop !654

bb.ae:                                            ; preds = %.preheader, %bn_reduce_once_in_place.exit
  %indvars.iv = phi i64 [ 63, %.preheader ], [ %indvars.iv.next, %bn_reduce_once_in_place.exit ] ; 5 uses
  br i1 %i.dl, label %bn_add_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.ae
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.dk, %.preheader42.i ], [ %i.fi, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %i.di, %.preheader42.i ], [ %i.fh, %.preheader.i ] ; 3 uses
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.fg, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.fi, 0
  br i1 %.not3453.i, label %.preheader42.i.i, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.fi, %.lr.ph.i ], [ %i.dk, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %i.di, %.preheader42.i ] ; 6 uses
  %.04044.i = phi i64 [ %i.fg, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.du = load i64, ptr %.02647.i, align 8, !tbaa !96 ; 2 uses
  %i.dv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.du, i64 %i.du) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  %i.dx = extractvalue { i64, i1 } %i.dv, 0
  %i.dy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dx, i64 %.04044.i) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = extractvalue { i64, i1 } %i.dy, 0
  %i.eb = or i1 %i.dw, %i.dz
  %i.ec = zext i1 %i.eb to i64
  store i64 %i.ea, ptr %.02647.i, align 8, !tbaa !96
  %i.ed = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !96 ; 2 uses
  %i.ef = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ee, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eh, i64 %i.ec) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64
  store i64 %i.ek, ptr %i.ed, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !96 ; 2 uses
  %i.ep = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eo, i64 %i.eo) ; 2 uses
  %i.eq = extractvalue { i64, i1 } %i.ep, 1
  %i.er = extractvalue { i64, i1 } %i.ep, 0
  %i.es = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.er, i64 %i.em) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  %i.ev = or i1 %i.eq, %i.et
  %i.ew = zext i1 %i.ev to i64
  store i64 %i.eu, ptr %i.en, align 8, !tbaa !96
  %i.ex = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !96 ; 2 uses
  %i.ez = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ey, i64 %i.ey) ; 2 uses
  %i.fa = extractvalue { i64, i1 } %i.ez, 1
  %i.fb = extractvalue { i64, i1 } %i.ez, 0
  %i.fc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fb, i64 %i.ew) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  %i.fe = extractvalue { i64, i1 } %i.fc, 0
  %i.ff = or i1 %i.fa, %i.fd
  %i.fg = zext i1 %i.ff to i64                    ; 3 uses
  store i64 %i.fe, ptr %i.ex, align 8, !tbaa !96
  %i.fh = getelementptr i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.fi = add i64 %.048.i, -4                     ; 4 uses
  %.not.i110 = icmp ult i64 %i.fi, 4
  br i1 %.not.i110, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.fw, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.fu, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.ft, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.fv, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.fs, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.fj = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.fk = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.fl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fj, i64 %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  %i.fn = extractvalue { i64, i1 } %i.fl, 0
  %i.fo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fn, i64 %.14154.i) ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  %i.fq = extractvalue { i64, i1 } %i.fo, 0
  %i.fr = or i1 %i.fm, %i.fp
  %i.fs = zext i1 %i.fr to i64                    ; 2 uses
  store i64 %i.fq, ptr %.13155.i, align 8, !tbaa !96
  %i.ft = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.fw = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.fw, 0
  br i1 %.not34.i, label %.preheader42.i.i, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %bb.ae
  %i.fx = load i64, ptr %i.ds, align 8, !tbaa !96
  %i.fy = lshr i64 %i.fx, %indvars.iv
  %i.fz = and i64 %i.fy, 1
  %i.ga = load i64, ptr %i.di, align 8, !tbaa !96
  %i.gb = or i64 %i.fz, %i.ga
  store i64 %i.gb, ptr %i.di, align 8, !tbaa !96
  br label %bn_reduce_once_in_place.exit

.preheader42.i.i:                                 ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i.ph = phi i64 [ %i.fg, %.preheader.i ], [ %i.fs, %.lr.ph59.i ]
  %i.gc = load i64, ptr %i.ds, align 8, !tbaa !96
  %i.gd = lshr i64 %i.gc, %indvars.iv
  %i.ge = and i64 %i.gd, 1
  %i.gf = load i64, ptr %i.di, align 8, !tbaa !96
  %i.gg = or i64 %i.ge, %i.gf
  store i64 %i.gg, ptr %i.di, align 8, !tbaa !96
  %i.gh = load ptr, ptr %3, align 8, !tbaa !112   ; 2 uses
  br i1 %.not43.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i111

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %i.dk, %.preheader42.i.i ], [ %i.ii, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.gh, %.preheader42.i.i ], [ %i.ig, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %i.di, %.preheader42.i.i ], [ %i.if, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %i.dn, %.preheader42.i.i ], [ %i.ih, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.id, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i111
  %.not3453.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i111:                                    ; preds = %.preheader42.i.i, %.lr.ph.i.i111
  %.048.i.i = phi i64 [ %i.ii, %.lr.ph.i.i111 ], [ %i.dk, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.ig, %.lr.ph.i.i111 ], [ %i.gh, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.if, %.lr.ph.i.i111 ], [ %i.di, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.ih, %.lr.ph.i.i111 ], [ %i.dn, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.id, %.lr.ph.i.i111 ], [ 0, %.preheader42.i.i ]
  %i.gi = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.gj = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.gk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gi, i64 %i.gj) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %i.gn = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gm, i64 %.04044.i.i) ; 2 uses
  %i.go = extractvalue { i64, i1 } %i.gn, 1
  %i.gp = extractvalue { i64, i1 } %i.gn, 0
  %i.gq = or i1 %i.gl, %i.go
  %i.gr = zext i1 %i.gq to i64
  store i64 %i.gp, ptr %.03045.i.i, align 8, !tbaa !96
  %i.gs = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !96
  %i.gu = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !96
  %i.gw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gt, i64 %i.gv) ; 2 uses
  %i.gx = extractvalue { i64, i1 } %i.gw, 1
  %i.gy = extractvalue { i64, i1 } %i.gw, 0
  %i.gz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gy, i64 %i.gr) ; 2 uses
  %i.ha = extractvalue { i64, i1 } %i.gz, 1
  %i.hb = extractvalue { i64, i1 } %i.gz, 0
  %i.hc = or i1 %i.gx, %i.ha
  %i.hd = zext i1 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.hb, ptr %i.he, align 8, !tbaa !96
  %i.hf = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !96
  %i.hh = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !96
  %i.hj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hg, i64 %i.hi) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  %i.hl = extractvalue { i64, i1 } %i.hj, 0
  %i.hm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hl, i64 %i.hd) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 1
  %i.ho = extractvalue { i64, i1 } %i.hm, 0
  %i.hp = or i1 %i.hk, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !96
  %i.hw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ht, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hy, i64 %i.hq) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64                    ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.ib, ptr %i.ie, align 8, !tbaa !96
  %i.if = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.ii = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i112 = icmp ult i64 %i.ii, 4
  br i1 %.not.i.i112, label %.preheader.i.i, label %.lr.ph.i.i111, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.iw, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.iu, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.it, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.iv, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.is, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.ij = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.ik = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.il = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ij, i64 %i.ik) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0
  %i.io = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.in, i64 %.14154.i.i) ; 2 uses
  %i.ip = extractvalue { i64, i1 } %i.io, 1
  %i.iq = extractvalue { i64, i1 } %i.io, 0
  %i.ir = or i1 %i.im, %i.ip
  %i.is = zext i1 %i.ir to i64                    ; 2 uses
  store i64 %i.iq, ptr %.13155.i.i, align 8, !tbaa !96
  %i.it = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.iw = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i = phi i64 [ %i.id, %.preheader.i.i ], [ %i.is, %.lr.ph59.i.i ]
  %i.ix = sub nsw i64 %.032.i.ph, %.032.i.ph.i    ; 2 uses
  %i.iy = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ix) #38, !srcloc !108 ; 5 uses
  %i.iz = xor i64 %i.iy, -1                       ; 4 uses
  %brmerge = select i1 %min.iters.check200, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph199.preheader, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.i11.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <2 x i64> poison, i64 %i.iz, i64 0
  %broadcast.splat204 = shufflevector <2 x i64> %broadcast.splatinsert203, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next211, %vector.body205 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index206 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 2 uses
  %wide.load207 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !96, !alias.scope !661, !noalias !662
  %wide.load208 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !96, !alias.scope !661, !noalias !662
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index206 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load209 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !96, !alias.scope !662
  %wide.load210 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !96, !alias.scope !662
  %i.je = and <2 x i64> %wide.load207, %broadcast.splat
  %i.jf = and <2 x i64> %wide.load208, %broadcast.splat
  %i.jg = and <2 x i64> %wide.load209, %broadcast.splat204
  %i.jh = and <2 x i64> %wide.load210, %broadcast.splat204
  %i.ji = or disjoint <2 x i64> %i.jg, %i.je
  %i.jj = or disjoint <2 x i64> %i.jh, %i.jf
  store <2 x i64> %i.ji, ptr %i.ja, align 8, !tbaa !96, !alias.scope !661, !noalias !662
  store <2 x i64> %i.jj, ptr %i.jb, align 8, !tbaa !96, !alias.scope !661, !noalias !662
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next211, %n.vec202
  br i1 %i.jk, label %middle.block212, label %vector.body205, !llvm.loop !658

middle.block212:                                  ; preds = %vector.body205
  br i1 %cmp.n213, label %bn_reduce_once_in_place.exit.loopexit, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %.lr.ph.i11.i, %middle.block212
  %.09.i.i113.ph = phi i64 [ %n.vec202, %middle.block212 ], [ 0, %.lr.ph.i11.i ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph199.prol.loopexit, label %scalar.ph199.prol

scalar.ph199.prol:                                ; preds = %scalar.ph199.preheader
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.09.i.i113.ph ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !96
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.09.i.i113.ph
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !96
  %i.jp = and i64 %i.jm, %i.iy
  %i.jq = and i64 %i.jo, %i.iz
  %i.jr = or disjoint i64 %i.jq, %i.jp
  store i64 %i.jr, ptr %i.jl, align 8, !tbaa !96
  %i.js = or disjoint i64 %.09.i.i113.ph, 1
  br label %scalar.ph199.prol.loopexit

scalar.ph199.prol.loopexit:                       ; preds = %scalar.ph199.prol, %scalar.ph199.preheader
  %.09.i.i113.unr = phi i64 [ %.09.i.i113.ph, %scalar.ph199.preheader ], [ %i.js, %scalar.ph199.prol ]
  %i.jt = icmp eq i64 %.09.i.i113.ph, %i.dr
  br i1 %i.jt, label %bn_reduce_once_in_place.exit.loopexit, label %scalar.ph199

scalar.ph199:                                     ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199
  %.09.i.i113 = phi i64 [ %i.kj, %scalar.ph199 ], [ %.09.i.i113.unr, %scalar.ph199.prol.loopexit ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.09.i.i113 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !96
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.09.i.i113
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !96
  %i.jy = and i64 %i.jv, %i.iy
  %i.jz = and i64 %i.jx, %i.iz
  %i.ka = or disjoint i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %i.ju, align 8, !tbaa !96
  %i.kb = add nuw i64 %.09.i.i113, 1              ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.kb ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !96
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.kb
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !96
  %i.kg = and i64 %i.kd, %i.iy
  %i.kh = and i64 %i.kf, %i.iz
  %i.ki = or disjoint i64 %i.kh, %i.kg
  store i64 %i.ki, ptr %i.kc, align 8, !tbaa !96
  %i.kj = add nuw i64 %.09.i.i113, 2              ; 2 uses
  %exitcond.not.i.i114.1 = icmp eq i64 %i.kj, %i.dk
  br i1 %exitcond.not.i.i114.1, label %bn_reduce_once_in_place.exit.loopexit, label %scalar.ph199, !llvm.loop !659

bn_reduce_once_in_place.exit.loopexit:            ; preds = %scalar.ph199.prol.loopexit, %scalar.ph199, %middle.block212
  %i.kk = and i64 %i.ix, 1
  %i.kl = xor i64 %i.kk, 1
  br label %bn_reduce_once_in_place.exit

bn_reduce_once_in_place.exit:                     ; preds = %bn_reduce_once_in_place.exit.loopexit, %bn_add_words.exit
  %i.km = phi i64 [ 1, %bn_add_words.exit ], [ %i.kl, %bn_reduce_once_in_place.exit.loopexit ]
  %i.kn = shl nuw i64 %i.km, %indvars.iv
  %i.ko = load ptr, ptr %.080, align 8, !tbaa !112
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv149 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !96
  %i.kr = or i64 %i.kn, %i.kq
  store i64 %i.kr, ptr %i.kp, align 8, !tbaa !96
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not173 = icmp eq i64 %indvars.iv, 0
  br i1 %.not173, label %bb.ad, label %bb.ae, !llvm.loop !660

bb.af:                                            ; preds = %._crit_edge
  %i.ks = tail call ptr @BN_copy(ptr noundef nonnull %0, ptr noundef nonnull %.080)
  %.not101 = icmp eq ptr %i.ks, null
  br i1 %.not101, label %bn_wexpand.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  br i1 %i.aw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kt = tail call ptr @BN_copy(ptr noundef nonnull %1, ptr noundef nonnull %.085)
  %.not103 = icmp eq ptr %i.kt, null
  br i1 %.not103, label %bn_wexpand.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.t, %bb.s, %bb.q, %bb.af, %bb.ah, %bb.n, %bn_wexpand.exit, %bb.w, %bb.ai
  %.0 = phi i32 [ 0, %bb.n ], [ 1, %bb.ai ], [ 0, %bb.w ], [ 0, %bn_wexpand.exit ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.ku = load i8, ptr %i.s, align 8, !tbaa !121
  %.not.i.i115 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i115, label %bb.aj, label %_ZN4bssl11BN_CTXScopeD2Ev.exit

bb.aj:                                            ; preds = %bn_wexpand.exit.thread
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !123
  %i.ky = add i64 %i.kx, -1                       ; 2 uses
  store i64 %i.ky, ptr %i.kw, align 8, !tbaa !123
  %i.kz = load ptr, ptr %i.kv, align 8, !tbaa !120
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !96
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !122
  br label %_ZN4bssl11BN_CTXScopeD2Ev.exit

_ZN4bssl11BN_CTXScopeD2Ev.exit:                   ; preds = %bb.aj, %bn_wexpand.exit.thread, %BN_is_zero.exit.thread, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %BN_is_zero.exit.thread ], [ %.0, %bn_wexpand.exit.thread ], [ %.0, %bb.aj ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_add(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_add(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %BN_nnmod.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @BN_div(ptr noundef null, ptr noundef %0, ptr noundef readonly %0, ptr noundef readonly %3, ptr noundef %4)
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %BN_nnmod.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %BN_nnmod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @bn_usub_consttime(ptr noundef nonnull %0, ptr noundef readonly %3, ptr noundef nonnull readonly %0)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %BN_nnmod.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.i = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.o, %bb.g ] ; 4 uses
  %i.j = zext nneg i32 %.05.i.i.i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bn_minimal_width.exit.thread5.i.i.i

bn_minimal_width.exit.thread5.i.i.i:              ; preds = %bb.f
  store i32 %.05.i.i.i.i, ptr %i.f, align 8, !tbaa !113
  br label %BN_nnmod.exit

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %.05.i.i.i.i, -1
  %i.p = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.p, label %bb.f, label %bn_minimal_width.exit.thread.i.i.i, !llvm.loop !10

bn_minimal_width.exit.thread.i.i.i:               ; preds = %bb.g
  store i32 0, ptr %i.f, align 8, !tbaa !113
  br label %bb.h

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.e
end_hunk_8
begin_hunk_9_@bn_mod_exp_mont_small:bb.a
  br i1 %exitcond.not.1, label %._crit_edge149.loopexit, label %.lr.ph148.2

.lr.ph148.2:                                      ; preds = %.thread.1
  %i.dj = add i64 %.us-phi, -3                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 6                       ; 2 uses
  %.not.i104.2 = icmp ult i64 %i.dk, %.091139
  br i1 %.not.i104.2, label %bn_is_bit_set_words.exit106.2, label %.thread.2

bn_is_bit_set_words.exit106.2:                    ; preds = %.lr.ph148.2
  %i.dl = and i64 %i.dj, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dk
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.do = shl nuw i64 1, %i.dl
  %i.dp = and i64 %i.dn, %i.do
  %.fr.2 = freeze i64 %i.dp
  %i.dq = icmp eq i64 %.fr.2, 0
  br i1 %i.dq, label %.thread.2, label %bb.o

bb.o:                                             ; preds = %bn_is_bit_set_words.exit106.2
  %i.dr = sub nsw i32 3, %i.di
  %i.ds = shl i32 %i.dh, %i.dr
  %i.dt = or i32 %i.ds, 1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.o, %bn_is_bit_set_words.exit106.2, %.lr.ph148.2
  %i.du = phi i32 [ %i.dt, %bb.o ], [ %i.dh, %.lr.ph148.2 ], [ %i.dh, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %i.dv = phi i32 [ 3, %bb.o ], [ %i.di, %.lr.ph148.2 ], [ %i.di, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %exitcond.not.2 = icmp eq i64 %i.ch, 3
  br i1 %exitcond.not.2, label %._crit_edge149.loopexit, label %.lr.ph148.3

.lr.ph148.3:                                      ; preds = %.thread.2
  %i.dw = add i64 %.us-phi, -4                    ; 2 uses
  %i.dx = lshr i64 %i.dw, 6                       ; 2 uses
  %.not.i104.3 = icmp ult i64 %i.dx, %.091139
  br i1 %.not.i104.3, label %bn_is_bit_set_words.exit106.3, label %._crit_edge149.loopexit

bn_is_bit_set_words.exit106.3:                    ; preds = %.lr.ph148.3
  %i.dy = and i64 %i.dw, 63
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !96
  %i.eb = shl nuw i64 1, %i.dy
  %i.ec = and i64 %i.ea, %i.eb
  %.fr.3 = freeze i64 %i.ec
  %i.ed = icmp eq i64 %.fr.3, 0
  br i1 %i.ed, label %._crit_edge149.loopexit, label %bb.p

bb.p:                                             ; preds = %bn_is_bit_set_words.exit106.3
  %i.ee = sub nsw i32 4, %i.dv
  %i.ef = shl i32 %i.du, %i.ee
  %i.eg = or i32 %i.ef, 1
  br label %._crit_edge149.loopexit

.preheader:                                       ; preds = %._crit_edge149, %bn_mod_mul_montgomery_small.exit
  %.082151 = phi i32 [ %i.lr, %bn_mod_mul_montgomery_small.exit ], [ 0, %._crit_edge149 ]
  %i.eh = load i32, ptr %i.f, align 8, !tbaa !132 ; 3 uses
  %i.ei = sext i32 %i.eh to i64
  %.not152 = icmp eq i64 %2, %i.ei
  br i1 %.not152, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader
  call void @abort() #37
  unreachable

bb.r:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  switch i64 %2, label %bb.u [
    i64 4, label %bb.s
    i64 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @bn_sqr_comba4(ptr noundef nonnull %i.b, ptr noundef readonly %0)
  br label %bn_sqr_small.exit.i

bb.t:                                             ; preds = %bb.r
  call void @bn_sqr_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %0)
  br label %bn_sqr_small.exit.i

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef nonnull %i.b, ptr noundef readonly %0, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.bk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.pre = load i32, ptr %i.f, align 8, !tbaa !132
  br label %bn_sqr_small.exit.i

bn_sqr_small.exit.i:                              ; preds = %bb.u, %bb.t, %bb.s
  %i.ej = phi i32 [ %.pre, %bb.u ], [ %i.eh, %bb.t ], [ %i.eh, %bb.s ] ; 3 uses
  %i.ek = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 4 uses
  %i.el = sext i32 %i.ej to i64
  %.not.i110 = icmp eq i64 %2, %i.el
  br i1 %.not.i110, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bn_sqr_small.exit.i
  %i.em = load i64, ptr %i.bm, align 8, !tbaa !96
  %.not55.i113 = icmp eq i32 %i.ej, 0
  br i1 %.not55.i113, label %bn_mod_mul_montgomery_small.exit, label %.lr.ph.i

.preheader42.i.i.i:                               ; preds = %bn_mul_add_words.exit
  %.not43.i.i.i = icmp ult i32 %i.ej, 4
  br i1 %.not43.i.i.i, label %.lr.ph59.i.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph59.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %.preheader42.i.i.i
  %.158.i.i.i.ph = phi i64 [ %2, %.preheader42.i.i.i ], [ %i.gn, %.preheader.i.i.i ]
  %.12757.i.i.i.ph = phi ptr [ %i.ek, %.preheader42.i.i.i ], [ %i.gl, %.preheader.i.i.i ]
  %.12956.i.i.i.ph = phi ptr [ %i.bn, %.preheader42.i.i.i ], [ %i.gk, %.preheader.i.i.i ]
  %.13155.i.i.i.ph = phi ptr [ %0, %.preheader42.i.i.i ], [ %i.gm, %.preheader.i.i.i ]
  %.14154.i.i.i.ph = phi i64 [ 0, %.preheader42.i.i.i ], [ %i.gi, %.preheader.i.i.i ]
  br label %.lr.ph59.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not3453.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not3453.i.i.i, label %.lr.ph.i11.i.i, label %.lr.ph59.i.i.i.preheader

.lr.ph.i.i.i:                                     ; preds = %.preheader42.i.i.i, %.lr.ph.i.i.i
  %.048.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i ], [ %2, %.preheader42.i.i.i ]
  %.02647.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i ], [ %i.ek, %.preheader42.i.i.i ] ; 5 uses
  %.02846.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i ], [ %i.bn, %.preheader42.i.i.i ] ; 5 uses
  %.03045.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i ], [ %0, %.preheader42.i.i.i ] ; 5 uses
  %.04044.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i ], [ 0, %.preheader42.i.i.i ]
  %i.en = load i64, ptr %.02846.i.i.i, align 8, !tbaa !96
  %i.eo = load i64, ptr %.02647.i.i.i, align 8, !tbaa !96
  %i.ep = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.en, i64 %i.eo) ; 2 uses
  %i.eq = extractvalue { i64, i1 } %i.ep, 1
  %i.er = extractvalue { i64, i1 } %i.ep, 0
  %i.es = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.er, i64 %.04044.i.i.i) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  %i.ev = or i1 %i.eq, %i.et
  %i.ew = zext i1 %i.ev to i64
  store i64 %i.eu, ptr %.03045.i.i.i, align 8, !tbaa !96
  %i.ex = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !96
  %i.ez = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !96
  %i.fb = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ey, i64 %i.fa) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  %i.fd = extractvalue { i64, i1 } %i.fb, 0
  %i.fe = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fd, i64 %i.ew) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = or i1 %i.fc, %i.ff
  %i.fi = zext i1 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 8
  store i64 %i.fg, ptr %i.fj, align 8, !tbaa !96
  %i.fk = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !96
  %i.fm = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !96
  %i.fo = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fl, i64 %i.fn) ; 2 uses
  %i.fp = extractvalue { i64, i1 } %i.fo, 1
  %i.fq = extractvalue { i64, i1 } %i.fo, 0
  %i.fr = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fq, i64 %i.fi) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %i.fu = or i1 %i.fp, %i.fs
  %i.fv = zext i1 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 16
  store i64 %i.ft, ptr %i.fw, align 8, !tbaa !96
  %i.fx = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !96
  %i.fz = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !96
  %i.gb = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fy, i64 %i.ga) ; 2 uses
  %i.gc = extractvalue { i64, i1 } %i.gb, 1
  %i.gd = extractvalue { i64, i1 } %i.gb, 0
  %i.ge = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gd, i64 %i.fv) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %i.gh = or i1 %i.gc, %i.gf
  %i.gi = zext i1 %i.gh to i64                    ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 24
  store i64 %i.gg, ptr %i.gj, align 8, !tbaa !96
  %i.gk = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 32 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 32 ; 2 uses
  %i.gn = add i64 %.048.i.i.i, -4                 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.gn, 4
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

.lr.ph59.i.i.i:                                   ; preds = %.lr.ph59.i.i.i.preheader, %.lr.ph59.i.i.i
  %.158.i.i.i = phi i64 [ %i.hb, %.lr.ph59.i.i.i ], [ %.158.i.i.i.ph, %.lr.ph59.i.i.i.preheader ]
  %.12757.i.i.i = phi ptr [ %i.gz, %.lr.ph59.i.i.i ], [ %.12757.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.12956.i.i.i = phi ptr [ %i.gy, %.lr.ph59.i.i.i ], [ %.12956.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.13155.i.i.i = phi ptr [ %i.ha, %.lr.ph59.i.i.i ], [ %.13155.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.14154.i.i.i = phi i64 [ %i.gx, %.lr.ph59.i.i.i ], [ %.14154.i.i.i.ph, %.lr.ph59.i.i.i.preheader ]
  %i.go = load i64, ptr %.12956.i.i.i, align 8, !tbaa !96
  %i.gp = load i64, ptr %.12757.i.i.i, align 8, !tbaa !96
  %i.gq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.go, i64 %i.gp) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 1
  %i.gs = extractvalue { i64, i1 } %i.gq, 0
  %i.gt = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gs, i64 %.14154.i.i.i) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = extractvalue { i64, i1 } %i.gt, 0
  %i.gw = or i1 %i.gr, %i.gu
  %i.gx = zext i1 %i.gw to i64                    ; 2 uses
  store i64 %i.gv, ptr %.13155.i.i.i, align 8, !tbaa !96
  %i.gy = getelementptr inbounds nuw i8, ptr %.12956.i.i.i, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.12757.i.i.i, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.13155.i.i.i, i64 8
  %i.hb = add nsw i64 %.158.i.i.i, -1             ; 2 uses
  %.not34.i.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not34.i.i.i, label %.lr.ph.i11.i.i, label %.lr.ph59.i.i.i, !llvm.loop !14

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph59.i.i.i, %.preheader.i.i.i
  %.032.i.ph.i.i = phi i64 [ %i.gi, %.preheader.i.i.i ], [ %i.gx, %.lr.ph59.i.i.i ]
  %i.hc = sub nsw i64 %i.lp, %.032.i.ph.i.i
  %i.hd = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hc) #38, !srcloc !108 ; 3 uses
  %i.he = xor i64 %i.hd, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i11.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.he, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <2 x i64>, ptr %i.hf, align 8, !tbaa !96
  %wide.load239 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !96
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load240 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !96
  %wide.load241 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !96
  %i.hj = and <2 x i64> %wide.load, %broadcast.splat
  %i.hk = and <2 x i64> %wide.load239, %broadcast.splat
  %i.hl = and <2 x i64> %wide.load240, %broadcast.splat238
  %i.hm = and <2 x i64> %wide.load241, %broadcast.splat238
  %i.hn = or disjoint <2 x i64> %i.hl, %i.hj
  %i.ho = or disjoint <2 x i64> %i.hm, %i.hk
  store <2 x i64> %i.hn, ptr %i.hh, align 8, !tbaa !96
  store <2 x i64> %i.ho, ptr %i.hi, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i11.i.i, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i = phi i64 [ %i.hx, %scalar.ph ], [ %.09.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.09.i.i.i
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = and i64 %i.hr, %i.hd
  %i.hv = and i64 %i.ht, %i.he
  %i.hw = or disjoint i64 %i.hv, %i.hu
  store i64 %i.hw, ptr %i.hs, align 8, !tbaa !96
  %i.hx = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hx, %2
  br i1 %exitcond.not.i.i.i, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph, !llvm.loop !686

.lr.ph.i:                                         ; preds = %bb.v, %bn_mul_add_words.exit
  %.04354.i = phi i64 [ %i.lq, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %.04453.i = phi i64 [ %i.lp, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04354.i ; 4 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !96
  %i.ia = mul i64 %i.hz, %i.em
  %.pre171 = zext i64 %i.ia to i128               ; 7 uses
  br i1 %.not56.i, label %.lr.ph69.i.preheader, label %.lr.ph.i114

.preheader.i:                                     ; preds = %.lr.ph.i114
  %.not5464.i = icmp eq i64 %i.kk, 0
  br i1 %.not5464.i, label %bn_mul_add_words.exit, label %.lr.ph69.i.preheader

.lr.ph69.i.preheader:                             ; preds = %.lr.ph.i, %.preheader.i
  %.168.i.ph = phi ptr [ %i.hy, %.lr.ph.i ], [ %i.kj, %.preheader.i ] ; 4 uses
  %.14867.i.ph = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.ki, %.preheader.i ] ; 3 uses
  %.15066.i.ph = phi i64 [ %2, %.lr.ph.i ], [ %i.kk, %.preheader.i ] ; 4 uses
  %.15265.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.kh, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.15066.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol

.lr.ph69.i.prol:                                  ; preds = %.lr.ph69.i.preheader
  %i.ib = load i64, ptr %.14867.i.ph, align 8, !tbaa !96
  %i.ic = zext i64 %i.ib to i128
  %i.id = mul nuw i128 %.pre171, %i.ic
  %i.ie = load i64, ptr %.168.i.ph, align 8, !tbaa !96
  %i.if = zext i64 %i.ie to i128
  %i.ig = zext i64 %.15265.i.ph to i128
  %i.ih = add nuw nsw i128 %i.if, %i.ig
  %i.ii = add nuw i128 %i.ih, %i.id               ; 2 uses
  %i.ij = trunc i128 %i.ii to i64
  store i64 %i.ij, ptr %.168.i.ph, align 8, !tbaa !96
  %i.ik = lshr i128 %i.ii, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.14867.i.ph, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.168.i.ph, i64 8
  %i.io = add nsw i64 %.15066.i.ph, -1
  br label %.lr.ph69.i.prol.loopexit

.lr.ph69.i.prol.loopexit:                         ; preds = %.lr.ph69.i.prol, %.lr.ph69.i.preheader
  %.lcssa252.unr = phi i64 [ poison, %.lr.ph69.i.preheader ], [ %i.il, %.lr.ph69.i.prol ]
  %.168.i.unr = phi ptr [ %.168.i.ph, %.lr.ph69.i.preheader ], [ %i.in, %.lr.ph69.i.prol ]
  %.14867.i.unr = phi ptr [ %.14867.i.ph, %.lr.ph69.i.preheader ], [ %i.im, %.lr.ph69.i.prol ]
  %.15066.i.unr = phi i64 [ %.15066.i.ph, %.lr.ph69.i.preheader ], [ %i.io, %.lr.ph69.i.prol ]
  %.15265.i.unr = phi i64 [ %.15265.i.ph, %.lr.ph69.i.preheader ], [ %i.il, %.lr.ph69.i.prol ]
  %i.ip = icmp eq i64 %.15066.i.ph, 1
  br i1 %i.ip, label %bn_mul_add_words.exit, label %.lr.ph69.i

.lr.ph.i114:                                      ; preds = %.lr.ph.i, %.lr.ph.i114
  %.04660.i = phi ptr [ %i.kj, %.lr.ph.i114 ], [ %i.hy, %.lr.ph.i ] ; 6 uses
  %.04759.i = phi ptr [ %i.ki, %.lr.ph.i114 ], [ %i.ek, %.lr.ph.i ] ; 5 uses
  %.04958.i = phi i64 [ %i.kk, %.lr.ph.i114 ], [ %2, %.lr.ph.i ]
  %.05157.i = phi i64 [ %i.kh, %.lr.ph.i114 ], [ 0, %.lr.ph.i ]
  %i.iq = load i64, ptr %.04759.i, align 8, !tbaa !96
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.ir, %.pre171
  %i.it = load i64, ptr %.04660.i, align 8, !tbaa !96
  %i.iu = zext i64 %i.it to i128
  %i.iv = zext i64 %.05157.i to i128
  %i.iw = add nuw nsw i128 %i.iu, %i.iv
  %i.ix = add nuw i128 %i.iw, %i.is               ; 2 uses
  %i.iy = trunc i128 %i.ix to i64
  store i64 %i.iy, ptr %.04660.i, align 8, !tbaa !96
  %i.iz = lshr i128 %i.ix, 64
  %i.ja = getelementptr inbounds nuw i8, ptr %.04759.i, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !96
  %i.jc = zext i64 %i.jb to i128
  %i.jd = mul nuw i128 %i.jc, %.pre171
  %i.je = getelementptr inbounds nuw i8, ptr %.04660.i, i64 8 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !96
  %i.jg = zext i64 %i.jf to i128
  %i.jh = add nuw i128 %i.jd, %i.jg
  %i.ji = add nuw i128 %i.jh, %i.iz               ; 2 uses
  %i.jj = trunc i128 %i.ji to i64
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !96
  %i.jk = lshr i128 %i.ji, 64
  %i.jl = getelementptr inbounds nuw i8, ptr %.04759.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !96
  %i.jn = zext i64 %i.jm to i128
  %i.jo = mul nuw i128 %i.jn, %.pre171
  %i.jp = getelementptr inbounds nuw i8, ptr %.04660.i, i64 16 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !96
  %i.jr = zext i64 %i.jq to i128
  %i.js = add nuw i128 %i.jo, %i.jr
  %i.jt = add nuw i128 %i.js, %i.jk               ; 2 uses
  %i.ju = trunc i128 %i.jt to i64
  store i64 %i.ju, ptr %i.jp, align 8, !tbaa !96
  %i.jv = lshr i128 %i.jt, 64
  %i.jw = getelementptr inbounds nuw i8, ptr %.04759.i, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !96
  %i.jy = zext i64 %i.jx to i128
  %i.jz = mul nuw i128 %i.jy, %.pre171
  %i.ka = getelementptr inbounds nuw i8, ptr %.04660.i, i64 24 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !96
  %i.kc = zext i64 %i.kb to i128
  %i.kd = add nuw i128 %i.jz, %i.kc
  %i.ke = add nuw i128 %i.kd, %i.jv               ; 2 uses
  %i.kf = trunc i128 %i.ke to i64
  store i64 %i.kf, ptr %i.ka, align 8, !tbaa !96
  %i.kg = lshr i128 %i.ke, 64
  %i.kh = trunc nuw i128 %i.kg to i64             ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.04759.i, i64 32 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.04660.i, i64 32 ; 2 uses
  %i.kk = add i64 %.04958.i, -4                   ; 4 uses
  %.not.i115 = icmp ult i64 %i.kk, 4
  br i1 %.not.i115, label %.preheader.i, label %.lr.ph.i114, !llvm.loop !21

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i
  %.168.i = phi ptr [ %i.li, %.lr.ph69.i ], [ %.168.i.unr, %.lr.ph69.i.prol.loopexit ] ; 4 uses
  %.14867.i = phi ptr [ %i.lh, %.lr.ph69.i ], [ %.14867.i.unr, %.lr.ph69.i.prol.loopexit ] ; 3 uses
  %.15066.i = phi i64 [ %i.lj, %.lr.ph69.i ], [ %.15066.i.unr, %.lr.ph69.i.prol.loopexit ]
  %.15265.i = phi i64 [ %i.lg, %.lr.ph69.i ], [ %.15265.i.unr, %.lr.ph69.i.prol.loopexit ]
  %i.kl = load i64, ptr %.14867.i, align 8, !tbaa !96
  %i.km = zext i64 %i.kl to i128
  %i.kn = mul nuw i128 %.pre171, %i.km
  %i.ko = load i64, ptr %.168.i, align 8, !tbaa !96
  %i.kp = zext i64 %i.ko to i128
  %i.kq = zext i64 %.15265.i to i128
  %i.kr = add nuw nsw i128 %i.kp, %i.kq
  %i.ks = add nuw i128 %i.kr, %i.kn               ; 2 uses
  %i.kt = trunc i128 %i.ks to i64
  store i64 %i.kt, ptr %.168.i, align 8, !tbaa !96
  %i.ku = lshr i128 %i.ks, 64
  %i.kv = getelementptr inbounds nuw i8, ptr %.14867.i, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.168.i, i64 8 ; 2 uses
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !96
  %i.ky = zext i64 %i.kx to i128
  %i.kz = mul nuw i128 %.pre171, %i.ky
  %i.la = load i64, ptr %i.kw, align 8, !tbaa !96
  %i.lb = zext i64 %i.la to i128
  %i.lc = add nuw nsw i128 %i.ku, %i.lb
  %i.ld = add nuw i128 %i.lc, %i.kz               ; 2 uses
  %i.le = trunc i128 %i.ld to i64
  store i64 %i.le, ptr %i.kw, align 8, !tbaa !96
  %i.lf = lshr i128 %i.ld, 64
  %i.lg = trunc nuw i128 %i.lf to i64             ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.14867.i, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %.168.i, i64 16
  %i.lj = add nsw i64 %.15066.i, -2               ; 2 uses
  %.not54.i116.1 = icmp eq i64 %i.lj, 0
  br i1 %.not54.i116.1, label %bn_mul_add_words.exit, label %.lr.ph69.i, !llvm.loop !22

bn_mul_add_words.exit:                            ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i, %.preheader.i
  %.0.i117 = phi i64 [ %i.kh, %.preheader.i ], [ %.lcssa252.unr, %.lr.ph69.i.prol.loopexit ], [ %i.lg, %.lr.ph69.i ]
  %i.lk = getelementptr [8 x i8], ptr %i.hy, i64 %2 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !96 ; 2 uses
  %i.lm = add i64 %.0.i117, %.04453.i             ; 2 uses
  %i.ln = add i64 %i.lm, %i.ll                    ; 2 uses
  %i.lo = icmp ne i64 %i.lm, 0
  %.not47.i = icmp ule i64 %i.ln, %i.ll
  %.044.tr.i = trunc nuw i64 %.04453.i to i1
  %.narrow.i = or i1 %i.lo, %.044.tr.i
  %narrow.i = select i1 %.not47.i, i1 %.narrow.i, i1 false
  %i.lp = zext i1 %narrow.i to i64                ; 2 uses
  store i64 %i.ln, ptr %i.lk, align 8, !tbaa !96
  %i.lq = add nuw i64 %.04354.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lq, %2
  br i1 %exitcond.not.i, label %.preheader42.i.i.i, label %.lr.ph.i, !llvm.loop !23

bb.w:                                             ; preds = %bn_sqr_small.exit.i
  call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.8, i32 noundef 197) #36
  call void @abort() #37
  unreachable

bn_mod_mul_montgomery_small.exit:                 ; preds = %scalar.ph, %middle.block, %bb.v
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.bk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.lr = add i32 %.082151, 1                     ; 2 uses
  %.not97 = icmp ugt i32 %i.lr, %.084.lcssa
  br i1 %.not97, label %bb.y, label %.preheader, !llvm.loop !687

.critedge100:                                     ; preds = %._crit_edge149
  br i1 %i.az, label %_ZL14OPENSSL_memcpyPvPKvm.exit109, label %bb.x

bb.x:                                             ; preds = %.critedge100
  %i.ls = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 8 %i.ls, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

bb.y:                                             ; preds = %bn_mod_mul_montgomery_small.exit
  %i.lt = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.lt, i64 noundef %2, ptr noundef %5)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

_ZL14OPENSSL_memcpyPvPKvm.exit109:                ; preds = %bb.x, %.critedge100, %bb.y
  %i.lu = zext nneg i32 %.084.lcssa to i64
  %i.lv = icmp eq i64 %.us-phi, %i.lu
  %i.lw = add nuw i32 %.084.lcssa, 1
  %i.lx = zext i32 %i.lw to i64
  %i.ly = sub i64 %.us-phi, %i.lx
  br i1 %i.lv, label %.loopexit, label %.outer

.loopexit:                                        ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit109, %bn_is_bit_set_words.exit.thread, %bn_is_bit_set_words.exit.thread.us
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1152) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bn_from_montgomery_small.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_from_montgomery_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ne i64 %1, %i.d
  %i.f = icmp ugt i64 %1, 9
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %1, 1                    ; 2 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @abort() #37
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, i8 0, i64 144, i1 false)
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %3, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %2, i64 %i.j, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.d, %bb.e
  %i.k = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  tail call void @abort() #37
  unreachable

bb.g:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.l = shl nuw nsw i64 %1, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_mod_mul_montgomery_small(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = alloca [18 x i64], align 16              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !132
  %i.e = sext i32 %i.d to i64
  %i.f = icmp ne i64 %3, %i.e
  %i.g = icmp ugt i64 %3, 9
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i64 %3, label %bb.g [
    i64 4, label %bb.e
    i64 8, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @bn_sqr_comba4(ptr noundef nonnull %i.b, ptr noundef readonly %1)
  br label %bn_sqr_small.exit

bb.f:                                             ; preds = %bb.d
  call void @bn_sqr_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %1)
  br label %bn_sqr_small.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef nonnull %i.b, ptr noundef readonly %1, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.i = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bn_sqr_small.exit

bb.h:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %3, 8
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @bn_mul_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %1, ptr noundef readonly %2)
  br label %bn_sqr_small.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.b, ptr noundef readonly %1, i64 noundef %3, ptr noundef readonly %2, i64 noundef %3)
  br label %bn_sqr_small.exit

bn_sqr_small.exit:                                ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.k = shl nuw nsw i64 %3, 1
  %i.l = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef %0, i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef %i.k, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bn_sqr_small.exit
  call void @abort() #37
  unreachable

bb.l:                                             ; preds = %bn_sqr_small.exit
  %i.m = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @bn_is_bit_set_words(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 2 uses
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 63
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = lshr i64 %i.d, %i.b
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_9
begin_hunk_10_@_ZL16bn_gcd_consttimeP9bignum_stPjPKS_S3_P10bignum_ctx:bb.a
  %bound0215 = icmp ult ptr %i.ay, %scevgep
  %bound1216 = icmp ult ptr %.pre172, %scevgep214
  %found.conflict217 = and i1 %bound0215, %bound1216
  %n.vec221 = and i64 %i.az, -4                   ; 3 uses
  %cmp.n230 = icmp eq i64 %i.az, %n.vec221
  %i.bo = add nsw i64 %i.e, 3
  %xtraiter357 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  %min.iters.check = icmp ult i32 %., 4
  %bound0 = icmp ult ptr %.pre172, %scevgep207
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  %i.bp = and i32 %., 1
  %lcmp.mod361.not = icmp eq i32 %i.bp, 0
  %i.bq = add nsw i64 %i.e, -1
  br label %.preheader42.i

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.6, i32 noundef 80) #36
  br label %bb.p

.preheader:                                       ; preds = %_ZL19maybe_rshift1_wordsPmmS_m.exit143, %.preheader145
  %.088.lcssa = phi i32 [ 0, %.preheader145 ], [ %i.le, %_ZL19maybe_rshift1_wordsPmmS_m.exit143 ]
  %min.iters.check324 = icmp ult i32 %., 8
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.preheader
  %i.br = shl nsw i64 %i.e, 3                     ; 2 uses
  %scevgep318 = getelementptr i8, ptr %.pre172, i64 %i.br
  %scevgep319 = getelementptr i8, ptr %.pre, i64 %i.br
  %bound0320 = icmp ult ptr %.pre172, %scevgep319
  %bound1321 = icmp ult ptr %.pre, %scevgep318
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck317
  %n.vec326 = and i64 %i.e, -4                    ; 3 uses
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index328 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load329 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !96, !alias.scope !832
  %wide.load330 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !96, !alias.scope !832
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %index328 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %wide.load331 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !96, !alias.scope !833, !noalias !832
  %wide.load332 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !96, !alias.scope !833, !noalias !832
  %i.bw = or <2 x i64> %wide.load331, %wide.load329
  %i.bx = or <2 x i64> %wide.load332, %wide.load330
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !96, !alias.scope !833, !noalias !832
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !96, !alias.scope !833, !noalias !832
  %index.next333 = add nuw i64 %index328, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.by, label %middle.block334, label %vector.body327, !llvm.loop !796

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %n.vec326, %i.e
  br i1 %cmp.n335, label %.loopexit, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %vector.memcheck317, %.preheader, %middle.block334
  %.0158.ph = phi i64 [ 0, %vector.memcheck317 ], [ 0, %.preheader ], [ %n.vec326, %middle.block334 ] ; 3 uses
  %xtraiter363 = and i64 %i.e, 3
  %i.bz = and i32 %., 3
  %lcmp.mod364.not = icmp eq i32 %i.bz, 0
  br i1 %lcmp.mod364.not, label %scalar.ph323.prol.loopexit, label %scalar.ph323.prol

scalar.ph323.prol:                                ; preds = %scalar.ph323.preheader, %scalar.ph323.prol
  %.0158.prol = phi i64 [ %i.cf, %scalar.ph323.prol ], [ %.0158.ph, %scalar.ph323.preheader ] ; 3 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %scalar.ph323.prol ], [ 0, %scalar.ph323.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0158.prol
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !96
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %.0158.prol ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = or i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !96
  %i.cf = add nuw i64 %.0158.prol, 1              ; 2 uses
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %scalar.ph323.prol.loopexit, label %scalar.ph323.prol, !llvm.loop !797

scalar.ph323.prol.loopexit:                       ; preds = %scalar.ph323.prol, %scalar.ph323.preheader
  %.0158.unr = phi i64 [ %.0158.ph, %scalar.ph323.preheader ], [ %i.cf, %scalar.ph323.prol ]
  %i.cg = sub nsw i64 %.0158.ph, %i.e
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.loopexit, label %scalar.ph323

.preheader42.i:                                   ; preds = %.preheader42.i.lr.ph, %_ZL19maybe_rshift1_wordsPmmS_m.exit143
  %.087157 = phi i32 [ 0, %.preheader42.i.lr.ph ], [ %i.rx, %_ZL19maybe_rshift1_wordsPmmS_m.exit143 ]
  %.088156 = phi i32 [ 0, %.preheader42.i.lr.ph ], [ %i.le, %_ZL19maybe_rshift1_wordsPmmS_m.exit143 ]
  %i.ci = load i64, ptr %.pre, align 8, !tbaa !96
  %i.cj = and i64 %i.ci, 1
  %i.ck = load i64, ptr %.pre172, align 8, !tbaa !96
  %i.cl = and i64 %i.ck, 1
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = icmp eq i64 %i.cj, 0
  %i.co = select i1 %i.cn, i64 0, i64 %i.cm       ; 2 uses
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.e, %.preheader42.i ], [ %i.ep, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %.pre172, %.preheader42.i ], [ %i.en, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %.pre, %.preheader42.i ], [ %i.em, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %i.ay, %.preheader42.i ], [ %i.eo, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.ek, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.ep, 0
  br i1 %.not3453.i, label %.lr.ph.i102, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.ep, %.lr.ph.i ], [ %i.e, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.en, %.lr.ph.i ], [ %.pre172, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.em, %.lr.ph.i ], [ %.pre, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.ay, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.ek, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.cp = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.cq = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.cr = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cp, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %i.cu = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ct, i64 %.04044.i) ; 2 uses
  %i.cv = extractvalue { i64, i1 } %i.cu, 1
  %i.cw = extractvalue { i64, i1 } %i.cu, 0
  %i.cx = or i1 %i.cs, %i.cv
  %i.cy = zext i1 %i.cx to i64
  store i64 %i.cw, ptr %.03045.i, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !96
  %i.dd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.da, i64 %i.dc) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  %i.df = extractvalue { i64, i1 } %i.dd, 0
  %i.dg = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.df, i64 %i.cy) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  %i.dj = or i1 %i.de, %i.dh
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !96
  %i.dm = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.do = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !96
  %i.dq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dn, i64 %i.dp) ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  %i.ds = extractvalue { i64, i1 } %i.dq, 0
  %i.dt = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ds, i64 %i.dk) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = or i1 %i.dr, %i.du
  %i.dx = zext i1 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.dv, ptr %i.dy, align 8, !tbaa !96
  %i.dz = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !96
  %i.eb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !96
  %i.ed = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ea, i64 %i.ec) ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 1
  %i.ef = extractvalue { i64, i1 } %i.ed, 0
  %i.eg = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ef, i64 %i.dx) ; 2 uses
  %i.eh = extractvalue { i64, i1 } %i.eg, 1
  %i.ei = extractvalue { i64, i1 } %i.eg, 0
  %i.ej = or i1 %i.ee, %i.eh
  %i.ek = zext i1 %i.ej to i64                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.ei, ptr %i.el, align 8, !tbaa !96
  %i.em = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.ep = add i64 %.048.i, -4                     ; 4 uses
  %.not.i100 = icmp ult i64 %i.ep, 4
  br i1 %.not.i100, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.fd, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.fb, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.fa, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.fc, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.ez, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.eq = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.er = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.es = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.eq, i64 %i.er) ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  %i.eu = extractvalue { i64, i1 } %i.es, 0
  %i.ev = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.eu, i64 %.14154.i) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  %i.ex = extractvalue { i64, i1 } %i.ev, 0
  %i.ey = or i1 %i.et, %i.ew
  %i.ez = zext i1 %i.ey to i64                    ; 2 uses
  store i64 %i.ex, ptr %.13155.i, align 8, !tbaa !96
  %i.fa = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.fd = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.fd, 0
  br i1 %.not34.i, label %.lr.ph.i102, label %.lr.ph59.i, !llvm.loop !14

.lr.ph.i102:                                      ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.ek, %.preheader.i ], [ %i.ez, %.lr.ph59.i ] ; 2 uses
  %i.fe = icmp eq i64 %.032.i, 0
  %i.ff = select i1 %i.fe, i64 %i.co, i64 0
  %i.fg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ff) #38, !srcloc !108 ; 5 uses
  %i.fh = xor i64 %i.fg, -1                       ; 4 uses
  %brmerge = select i1 %min.iters.check300, i1 true, i1 %found.conflict298
  br i1 %brmerge, label %scalar.ph299.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.i102
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.fg, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert305 = insertelement <2 x i64> poison, i64 %i.fh, i64 0
  %broadcast.splat306 = shufflevector <2 x i64> %broadcast.splatinsert305, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph301
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next313, %vector.body307 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index308 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load309 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !96, !alias.scope !834
  %wide.load310 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !96, !alias.scope !834
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index308 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %wide.load311 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !96, !alias.scope !835, !noalias !834
  %wide.load312 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !96, !alias.scope !835, !noalias !834
  %i.fm = and <2 x i64> %wide.load309, %broadcast.splat304
  %i.fn = and <2 x i64> %wide.load310, %broadcast.splat304
  %i.fo = and <2 x i64> %wide.load311, %broadcast.splat306
  %i.fp = and <2 x i64> %wide.load312, %broadcast.splat306
  %i.fq = or disjoint <2 x i64> %i.fo, %i.fm
  %i.fr = or disjoint <2 x i64> %i.fp, %i.fn
  store <2 x i64> %i.fq, ptr %i.fk, align 8, !tbaa !96, !alias.scope !835, !noalias !834
  store <2 x i64> %i.fr, ptr %i.fl, align 8, !tbaa !96, !alias.scope !835, !noalias !834
  %index.next313 = add nuw i64 %index308, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next313, %n.vec302
  br i1 %i.fs, label %middle.block314, label %vector.body307, !llvm.loop !801

middle.block314:                                  ; preds = %vector.body307
  br i1 %cmp.n315, label %.preheader42.i103, label %scalar.ph299.preheader

scalar.ph299.preheader:                           ; preds = %.lr.ph.i102, %middle.block314
  %.09.i.ph = phi i64 [ %n.vec302, %middle.block314 ], [ 0, %.lr.ph.i102 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph299.prol.loopexit, label %scalar.ph299.prol

scalar.ph299.prol:                                ; preds = %scalar.ph299.preheader
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.09.i.ph
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !96
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.09.i.ph ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !96
  %i.fx = and i64 %i.fu, %i.fg
  %i.fy = and i64 %i.fw, %i.fh
  %i.fz = or disjoint i64 %i.fy, %i.fx
  store i64 %i.fz, ptr %i.fv, align 8, !tbaa !96
  %i.ga = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph299.prol.loopexit

scalar.ph299.prol.loopexit:                       ; preds = %scalar.ph299.prol, %scalar.ph299.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph299.preheader ], [ %i.ga, %scalar.ph299.prol ]
  %i.gb = icmp eq i64 %.09.i.ph, %i.bi
  br i1 %i.gb, label %.preheader42.i103, label %scalar.ph299

scalar.ph299:                                     ; preds = %scalar.ph299.prol.loopexit, %scalar.ph299
  %.09.i = phi i64 [ %i.gr, %scalar.ph299 ], [ %.09.i.unr, %scalar.ph299.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.09.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !96
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.09.i ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !96
  %i.gg = and i64 %i.gd, %i.fg
  %i.gh = and i64 %i.gf, %i.fh
  %i.gi = or disjoint i64 %i.gh, %i.gg
  store i64 %i.gi, ptr %i.ge, align 8, !tbaa !96
  %i.gj = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !96
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.gj ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !96
  %i.go = and i64 %i.gl, %i.fg
  %i.gp = and i64 %i.gn, %i.fh
  %i.gq = or disjoint i64 %i.gp, %i.go
  store i64 %i.gq, ptr %i.gm, align 8, !tbaa !96
  %i.gr = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gr, %i.e
  br i1 %exitcond.not.i.1, label %.preheader42.i103, label %scalar.ph299, !llvm.loop !802

.preheader42.i103:                                ; preds = %scalar.ph299.prol.loopexit, %scalar.ph299, %middle.block314
  %i.gs = sub nsw i64 0, %.032.i
  br i1 %.not43.i, label %.lr.ph59.i120.preheader, label %.lr.ph.i105

.lr.ph59.i120.preheader:                          ; preds = %.preheader.i112, %.preheader42.i103
  %.158.i121.ph = phi i64 [ %i.e, %.preheader42.i103 ], [ %i.it, %.preheader.i112 ]
  %.12757.i122.ph = phi ptr [ %.pre, %.preheader42.i103 ], [ %i.ir, %.preheader.i112 ]
  %.12956.i123.ph = phi ptr [ %.pre172, %.preheader42.i103 ], [ %i.iq, %.preheader.i112 ]
  %.13155.i124.ph = phi ptr [ %i.ay, %.preheader42.i103 ], [ %i.is, %.preheader.i112 ]
  %.14154.i125.ph = phi i64 [ 0, %.preheader42.i103 ], [ %i.io, %.preheader.i112 ]
  br label %.lr.ph59.i120

.preheader.i112:                                  ; preds = %.lr.ph.i105
  %.not3453.i113 = icmp eq i64 %i.it, 0
  br i1 %.not3453.i113, label %.lr.ph.i130, label %.lr.ph59.i120.preheader

.lr.ph.i105:                                      ; preds = %.preheader42.i103, %.lr.ph.i105
  %.048.i106 = phi i64 [ %i.it, %.lr.ph.i105 ], [ %i.e, %.preheader42.i103 ]
  %.02647.i107 = phi ptr [ %i.ir, %.lr.ph.i105 ], [ %.pre, %.preheader42.i103 ] ; 5 uses
  %.02846.i108 = phi ptr [ %i.iq, %.lr.ph.i105 ], [ %.pre172, %.preheader42.i103 ] ; 5 uses
  %.03045.i109 = phi ptr [ %i.is, %.lr.ph.i105 ], [ %i.ay, %.preheader42.i103 ] ; 5 uses
  %.04044.i110 = phi i64 [ %i.io, %.lr.ph.i105 ], [ 0, %.preheader42.i103 ]
  %i.gt = load i64, ptr %.02846.i108, align 8, !tbaa !96
  %i.gu = load i64, ptr %.02647.i107, align 8, !tbaa !96
  %i.gv = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gt, i64 %i.gu) ; 2 uses
  %i.gw = extractvalue { i64, i1 } %i.gv, 1
  %i.gx = extractvalue { i64, i1 } %i.gv, 0
  %i.gy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gx, i64 %.04044.i110) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  %i.ha = extractvalue { i64, i1 } %i.gy, 0
  %i.hb = or i1 %i.gw, %i.gz
  %i.hc = zext i1 %i.hb to i64
  store i64 %i.ha, ptr %.03045.i109, align 8, !tbaa !96
  %i.hd = getelementptr inbounds nuw i8, ptr %.02846.i108, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !96
  %i.hf = getelementptr inbounds nuw i8, ptr %.02647.i107, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !96
  %i.hh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.he, i64 %i.hg) ; 2 uses
  %i.hi = extractvalue { i64, i1 } %i.hh, 1
  %i.hj = extractvalue { i64, i1 } %i.hh, 0
  %i.hk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hj, i64 %i.hc) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  %i.hm = extractvalue { i64, i1 } %i.hk, 0
  %i.hn = or i1 %i.hi, %i.hl
  %i.ho = zext i1 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.03045.i109, i64 8
  store i64 %i.hm, ptr %i.hp, align 8, !tbaa !96
  %i.hq = getelementptr inbounds nuw i8, ptr %.02846.i108, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %.02647.i107, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hr, i64 %i.ht) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  %i.hw = extractvalue { i64, i1 } %i.hu, 0
  %i.hx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hw, i64 %i.ho) ; 2 uses
  %i.hy = extractvalue { i64, i1 } %i.hx, 1
  %i.hz = extractvalue { i64, i1 } %i.hx, 0
  %i.ia = or i1 %i.hv, %i.hy
  %i.ib = zext i1 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %.03045.i109, i64 16
  store i64 %i.hz, ptr %i.ic, align 8, !tbaa !96
  %i.id = getelementptr inbounds nuw i8, ptr %.02846.i108, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !96
  %i.if = getelementptr inbounds nuw i8, ptr %.02647.i107, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !96
  %i.ih = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ie, i64 %i.ig) ; 2 uses
  %i.ii = extractvalue { i64, i1 } %i.ih, 1
  %i.ij = extractvalue { i64, i1 } %i.ih, 0
  %i.ik = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ij, i64 %i.ib) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 1
  %i.im = extractvalue { i64, i1 } %i.ik, 0
  %i.in = or i1 %i.ii, %i.il
  %i.io = zext i1 %i.in to i64                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.03045.i109, i64 24
  store i64 %i.im, ptr %i.ip, align 8, !tbaa !96
  %i.iq = getelementptr inbounds nuw i8, ptr %.02846.i108, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.02647.i107, i64 32 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.03045.i109, i64 32 ; 2 uses
  %i.it = add i64 %.048.i106, -4                  ; 4 uses
  %.not.i111 = icmp ult i64 %i.it, 4
  br i1 %.not.i111, label %.preheader.i112, label %.lr.ph.i105, !llvm.loop !13

.lr.ph59.i120:                                    ; preds = %.lr.ph59.i120.preheader, %.lr.ph59.i120
  %.158.i121 = phi i64 [ %i.jh, %.lr.ph59.i120 ], [ %.158.i121.ph, %.lr.ph59.i120.preheader ]
  %.12757.i122 = phi ptr [ %i.jf, %.lr.ph59.i120 ], [ %.12757.i122.ph, %.lr.ph59.i120.preheader ] ; 2 uses
  %.12956.i123 = phi ptr [ %i.je, %.lr.ph59.i120 ], [ %.12956.i123.ph, %.lr.ph59.i120.preheader ] ; 2 uses
  %.13155.i124 = phi ptr [ %i.jg, %.lr.ph59.i120 ], [ %.13155.i124.ph, %.lr.ph59.i120.preheader ] ; 2 uses
  %.14154.i125 = phi i64 [ %i.jd, %.lr.ph59.i120 ], [ %.14154.i125.ph, %.lr.ph59.i120.preheader ]
  %i.iu = load i64, ptr %.12956.i123, align 8, !tbaa !96
  %i.iv = load i64, ptr %.12757.i122, align 8, !tbaa !96
  %i.iw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iu, i64 %i.iv) ; 2 uses
  %i.ix = extractvalue { i64, i1 } %i.iw, 1
  %i.iy = extractvalue { i64, i1 } %i.iw, 0
  %i.iz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iy, i64 %.14154.i125) ; 2 uses
  %i.ja = extractvalue { i64, i1 } %i.iz, 1
  %i.jb = extractvalue { i64, i1 } %i.iz, 0
  %i.jc = or i1 %i.ix, %i.ja
  %i.jd = zext i1 %i.jc to i64
  store i64 %i.jb, ptr %.13155.i124, align 8, !tbaa !96
  %i.je = getelementptr inbounds nuw i8, ptr %.12956.i123, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.12757.i122, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %.13155.i124, i64 8
  %i.jh = add nsw i64 %.158.i121, -1              ; 2 uses
  %.not34.i126 = icmp eq i64 %i.jh, 0
  br i1 %.not34.i126, label %.lr.ph.i130, label %.lr.ph59.i120, !llvm.loop !14

.lr.ph.i130:                                      ; preds = %.lr.ph59.i120, %.preheader.i112
  %i.ji = and i64 %i.co, %i.gs
  %i.jj = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ji) #38, !srcloc !108 ; 5 uses
  %i.jk = xor i64 %i.jj, -1                       ; 4 uses
  %brmerge380 = select i1 %min.iters.check278, i1 true, i1 %found.conflict276
  br i1 %brmerge380, label %scalar.ph277.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph.i130
  %broadcast.splatinsert281 = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %broadcast.splat282 = shufflevector <2 x i64> %broadcast.splatinsert281, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert283 = insertelement <2 x i64> poison, i64 %i.jk, i64 0
  %broadcast.splat284 = shufflevector <2 x i64> %broadcast.splatinsert283, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph279
  %index286 = phi i64 [ 0, %vector.ph279 ], [ %index.next291, %vector.body285 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index286 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %wide.load287 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !96, !alias.scope !836
  %wide.load288 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !96, !alias.scope !836
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %index286 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load289 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !96, !alias.scope !837, !noalias !836
  %wide.load290 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !96, !alias.scope !837, !noalias !836
  %i.jp = and <2 x i64> %wide.load287, %broadcast.splat282
  %i.jq = and <2 x i64> %wide.load288, %broadcast.splat282
  %i.jr = and <2 x i64> %wide.load289, %broadcast.splat284
  %i.js = and <2 x i64> %wide.load290, %broadcast.splat284
  %i.jt = or disjoint <2 x i64> %i.jr, %i.jp
  %i.ju = or disjoint <2 x i64> %i.js, %i.jq
  store <2 x i64> %i.jt, ptr %i.jn, align 8, !tbaa !96, !alias.scope !837, !noalias !836
  store <2 x i64> %i.ju, ptr %i.jo, align 8, !tbaa !96, !alias.scope !837, !noalias !836
  %index.next291 = add nuw i64 %index286, 4       ; 2 uses
  %i.jv = icmp eq i64 %index.next291, %n.vec280
  br i1 %i.jv, label %middle.block292, label %vector.body285, !llvm.loop !806

middle.block292:                                  ; preds = %vector.body285
  br i1 %cmp.n293, label %.preheader.i.i, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %.lr.ph.i130, %middle.block292
  %.09.i131.ph = phi i64 [ %n.vec280, %middle.block292 ], [ 0, %.lr.ph.i130 ] ; 5 uses
  br i1 %lcmp.mod351.not, label %scalar.ph277.prol.loopexit, label %scalar.ph277.prol

scalar.ph277.prol:                                ; preds = %scalar.ph277.preheader
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.09.i131.ph
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !96
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %.09.i131.ph ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !96
  %i.ka = and i64 %i.jx, %i.jj
  %i.kb = and i64 %i.jz, %i.jk
  %i.kc = or disjoint i64 %i.kb, %i.ka
  store i64 %i.kc, ptr %i.jy, align 8, !tbaa !96
  %i.kd = or disjoint i64 %.09.i131.ph, 1
  br label %scalar.ph277.prol.loopexit

scalar.ph277.prol.loopexit:                       ; preds = %scalar.ph277.prol, %scalar.ph277.preheader
  %.09.i131.unr = phi i64 [ %.09.i131.ph, %scalar.ph277.preheader ], [ %i.kd, %scalar.ph277.prol ]
  %i.ke = icmp eq i64 %.09.i131.ph, %i.bk
  br i1 %i.ke, label %.preheader.i.i, label %scalar.ph277

scalar.ph277:                                     ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277
  %.09.i131 = phi i64 [ %i.ku, %scalar.ph277 ], [ %.09.i131.unr, %scalar.ph277.prol.loopexit ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.09.i131
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !96
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %.09.i131 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !96
  %i.kj = and i64 %i.kg, %i.jj
  %i.kk = and i64 %i.ki, %i.jk
  %i.kl = or disjoint i64 %i.kk, %i.kj
  store i64 %i.kl, ptr %i.kh, align 8, !tbaa !96
  %i.km = add nuw i64 %.09.i131, 1                ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !96
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.pre172, i64 %i.km ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !96
  %i.kr = and i64 %i.ko, %i.jj
  %i.ks = and i64 %i.kq, %i.jk
  %i.kt = or disjoint i64 %i.ks, %i.kr
  store i64 %i.kt, ptr %i.kp, align 8, !tbaa !96
  %i.ku = add nuw i64 %.09.i131, 2                ; 2 uses
  %exitcond.not.i132.1 = icmp eq i64 %i.ku, %i.e
  br i1 %exitcond.not.i132.1, label %.preheader.i.i, label %scalar.ph277, !llvm.loop !807

.preheader.i.i:                                   ; preds = %scalar.ph277.prol.loopexit, %scalar.ph277, %middle.block292
  %i.kv = load i64, ptr %.pre, align 8, !tbaa !96
  %i.kw = and i64 %i.kv, 1
  %i.kx = load i64, ptr %.pre172, align 8, !tbaa !96
  %i.ky = and i64 %i.kx, 1
  %i.kz = add nsw i64 %i.kw, -1                   ; 2 uses
  %i.la = add nsw i64 %i.ky, -1                   ; 2 uses
  %i.lb = and i64 %i.la, %i.kz
  %i.lc = trunc nsw i64 %i.lb to i32
  %i.ld = and i32 %i.lc, 1
  %i.le = add i32 %i.ld, %.088156                 ; 2 uses
  br i1 %.not.i.i134, label %.lr.ph.i8.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %brmerge381 = select i1 %min.iters.check260, i1 true, i1 %found.conflict258
  br i1 %brmerge381, label %.lr.ph.i.i.preheader338, label %vector.body263

vector.body263:                                   ; preds = %.lr.ph.i.i.preheader, %vector.body263
  %index264 = phi i64 [ %index.next269, %vector.body263 ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index264 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load265 = load <2 x i64>, ptr %i.lf, align 8, !tbaa !96, !alias.scope !838
  %wide.load266 = load <2 x i64>, ptr %i.lg, align 8, !tbaa !96, !alias.scope !838
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index264 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %wide.load267 = load <2 x i64>, ptr %i.li, align 8, !tbaa !96, !alias.scope !838
  %wide.load268 = load <2 x i64>, ptr %i.lj, align 8, !tbaa !96, !alias.scope !838
  %i.lk = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load267, <2 x i64> %wide.load265, <2 x i64> splat (i64 63))
  %i.ll = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load268, <2 x i64> %wide.load266, <2 x i64> splat (i64 63))
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index264 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <2 x i64> %i.lk, ptr %i.lm, align 8, !tbaa !96, !alias.scope !839, !noalias !838
  store <2 x i64> %i.ll, ptr %i.ln, align 8, !tbaa !96, !alias.scope !839, !noalias !838
  %index.next269 = add nuw i64 %index264, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next269, %n.vec262
  br i1 %i.lo, label %middle.block270, label %vector.body263, !llvm.loop !811

middle.block270:                                  ; preds = %vector.body263
  br i1 %cmp.n271, label %.lr.ph.i8.i, label %.lr.ph.i.i.preheader338

.lr.ph.i.i.preheader338:                          ; preds = %.lr.ph.i.i.preheader, %middle.block270
  %.015.i.i.ph = phi i64 [ %n.vec262, %middle.block270 ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.lp = sub nsw i64 %i.bf, %.015.i.i.ph
  br i1 %lcmp.mod353.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader338, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi i64 [ %i.ls, %.lr.ph.i.i.prol ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader338 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader338 ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.015.i.i.prol
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !96
  %i.ls = add nuw i64 %.015.i.i.prol, 1           ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !96
  %i.lv = tail call i64 @llvm.fshl.i64(i64 %i.lu, i64 %i.lr, i64 63)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.015.i.i.prol
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !96
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter352
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !812

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader338
  %.015.i.i.unr = phi i64 [ %.015.i.i.ph, %.lr.ph.i.i.preheader338 ], [ %i.ls, %.lr.ph.i.i.prol ]
  %i.lx = icmp ult i64 %i.lp, 3
  br i1 %i.lx, label %.lr.ph.i8.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.mv, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.015.i.i
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !96
  %i.ma = add nuw i64 %.015.i.i, 1                ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ma
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !96
  %i.md = tail call i64 @llvm.fshl.i64(i64 %i.mc, i64 %i.lz, i64 63)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.015.i.i
  store i64 %i.md, ptr %i.me, align 8, !tbaa !96
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ma
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !96
  %i.mh = add nuw i64 %.015.i.i, 2                ; 3 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mh
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !96
  %i.mk = tail call i64 @llvm.fshl.i64(i64 %i.mj, i64 %i.mg, i64 63)
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ma
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !96
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mh
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !96
  %i.mo = add nuw i64 %.015.i.i, 3                ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mo
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !96
  %i.mr = tail call i64 @llvm.fshl.i64(i64 %i.mq, i64 %i.mn, i64 63)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.mh
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !96
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mo
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !96
  %i.mv = add nuw i64 %.015.i.i, 4                ; 3 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.mv
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !96
  %i.my = tail call i64 @llvm.fshl.i64(i64 %i.mx, i64 %i.mu, i64 63)
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.mo
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !96
  %exitcond.not.i.i.3 = icmp eq i64 %i.mv, %i.az
  br i1 %exitcond.not.i.i.3, label %.lr.ph.i8.i, label %.lr.ph.i.i, !llvm.loop !813

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block270, %.preheader.i.i
  %i.na = load i64, ptr %i.ba, align 8, !tbaa !96
  %i.nb = lshr i64 %i.na, 1
  store i64 %i.nb, ptr %i.bb, align 8, !tbaa !96
  %i.nc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.kz) #38, !srcloc !108 ; 5 uses
  %i.nd = xor i64 %i.nc, -1                       ; 4 uses
  %brmerge382 = select i1 %min.iters.check238, i1 true, i1 %found.conflict236
  br i1 %brmerge382, label %scalar.ph237.preheader, label %vector.ph239

vector.ph239:                                     ; preds = %.lr.ph.i8.i
  %broadcast.splatinsert241 = insertelement <2 x i64> poison, i64 %i.nc, i64 0
end_hunk_10
begin_hunk_11_@_ZL19maybe_rshift1_wordsPmmS_m:bb.a
  %scevgep17 = getelementptr i8, ptr %0, i64 %i.bh
  %scevgep18 = getelementptr i8, ptr %2, i64 %i.bh
  %bound019 = icmp ult ptr %0, %scevgep18
  %bound120 = icmp ult ptr %2, %scevgep17
  %found.conflict21 = and i1 %bound019, %bound120
  br i1 %found.conflict21, label %scalar.ph22.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck16
  %n.vec25 = and i64 %3, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert26 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat27 = shufflevector <2 x i64> %broadcast.splatinsert26, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph24
  %index29 = phi i64 [ 0, %vector.ph24 ], [ %index.next34, %vector.body28 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load30 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !96, !alias.scope !876
  %wide.load31 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !96, !alias.scope !876
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index29 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load32 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !96, !alias.scope !877, !noalias !876
  %wide.load33 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !96, !alias.scope !877, !noalias !876
  %i.bm = and <2 x i64> %wide.load30, %broadcast.splat
  %i.bn = and <2 x i64> %wide.load31, %broadcast.splat
  %i.bo = and <2 x i64> %wide.load32, %broadcast.splat27
  %i.bp = and <2 x i64> %wide.load33, %broadcast.splat27
  %i.bq = or disjoint <2 x i64> %i.bo, %i.bm
  %i.br = or disjoint <2 x i64> %i.bp, %i.bn
  store <2 x i64> %i.bq, ptr %i.bk, align 8, !tbaa !96, !alias.scope !877, !noalias !876
  store <2 x i64> %i.br, ptr %i.bl, align 8, !tbaa !96, !alias.scope !877, !noalias !876
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next34, %n.vec25
  br i1 %i.bs, label %middle.block35, label %vector.body28, !llvm.loop !872

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %3, %n.vec25
  br i1 %cmp.n36, label %bn_select_words.exit, label %scalar.ph22.preheader

scalar.ph22.preheader:                            ; preds = %vector.memcheck16, %.lr.ph.i8, %middle.block35
  %.09.i.ph = phi i64 [ 0, %vector.memcheck16 ], [ 0, %.lr.ph.i8 ], [ %n.vec25, %middle.block35 ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter39 = and i64 %3, 1
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %scalar.ph22.prol.loopexit, label %scalar.ph22.prol

scalar.ph22.prol:                                 ; preds = %scalar.ph22.preheader
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09.i.ph
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !96
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.ph ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !96
  %i.bx = and i64 %i.bu, %i.bf
  %i.by = and i64 %i.bw, %i.bg
  %i.bz = or disjoint i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !96
  %i.ca = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph22.prol.loopexit

scalar.ph22.prol.loopexit:                        ; preds = %scalar.ph22.prol, %scalar.ph22.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph22.preheader ], [ %i.ca, %scalar.ph22.prol ]
  %i.cb = icmp eq i64 %3, %.neg
  br i1 %i.cb, label %bn_select_words.exit, label %scalar.ph22

scalar.ph22:                                      ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22
  %.09.i = phi i64 [ %i.cr, %scalar.ph22 ], [ %.09.i.unr, %scalar.ph22.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.09.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !96
  %i.cg = and i64 %i.cd, %i.bf
  %i.ch = and i64 %i.cf, %i.bg
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ce, align 8, !tbaa !96
  %i.cj = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !96
  %i.co = and i64 %i.cl, %i.bf
  %i.cp = and i64 %i.cn, %i.bg
  %i.cq = or disjoint i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !96
  %i.cr = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i9.1 = icmp eq i64 %i.cr, %3
  br i1 %exitcond.not.i9.1, label %bn_select_words.exit, label %scalar.ph22, !llvm.loop !873

bn_select_words.exit:                             ; preds = %scalar.ph22.prol.loopexit, %scalar.ph22, %middle.block35, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 0, 2) i64 @_ZL15maybe_add_wordsPmmPKmS_m(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bn_select_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i64 %4, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %4, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.ay, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.aw, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bb, 0
  br i1 %.not3453.i, label %.lr.ph.i11, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %4, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.az, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.b = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.c = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.b, i64 %i.c) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 %.04044.i) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  %i.j = or i1 %i.e, %i.h
  %i.k = zext i1 %i.j to i64
  store i64 %i.i, ptr %.03045.i, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 %i.k) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  %i.u = extractvalue { i64, i1 } %i.s, 0
  %i.v = or i1 %i.q, %i.t
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.u, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.z, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ae, i64 %i.w) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  %i.ai = or i1 %i.ad, %i.ag
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = extractvalue { i64, i1 } %i.ap, 0
  %i.as = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 %i.aj) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  %i.au = extractvalue { i64, i1 } %i.as, 0
  %i.av = or i1 %i.aq, %i.at
  %i.aw = zext i1 %i.av to i64                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.au, ptr %i.ax, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bb = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bp, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bm, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bl, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bc = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bd = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.be = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 %.14154.i) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %i.bk = or i1 %i.bf, %i.bi
  %i.bl = zext i1 %i.bk to i64                    ; 2 uses
  store i64 %i.bj, ptr %.13155.i, align 8, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bp = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bp, 0
  br i1 %.not34.i, label %.lr.ph.i11, label %.lr.ph59.i, !llvm.loop !12

.lr.ph.i11:                                       ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i.ph = phi i64 [ %i.aw, %.preheader.i ], [ %i.bl, %.lr.ph59.i ]
  %i.bq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %1) #38, !srcloc !108 ; 5 uses
  %i.br = xor i64 %i.bq, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %4, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11
  %i.bs = shl nsw i64 %4, 3                       ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bs
  %scevgep36 = getelementptr i8, ptr %3, i64 %i.bs
  %bound0 = icmp ult ptr %0, %scevgep36
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert37 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat38 = shufflevector <2 x i64> %broadcast.splatinsert37, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load = load <2 x i64>, ptr %i.bt, align 8, !tbaa !96, !alias.scope !883
  %wide.load39 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !96, !alias.scope !883
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !96, !alias.scope !884, !noalias !883
  %wide.load41 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !96, !alias.scope !884, !noalias !883
  %i.bx = and <2 x i64> %wide.load, %broadcast.splat
  %i.by = and <2 x i64> %wide.load39, %broadcast.splat
  %i.bz = and <2 x i64> %wide.load40, %broadcast.splat38
  %i.ca = and <2 x i64> %wide.load41, %broadcast.splat38
  %i.cb = or disjoint <2 x i64> %i.bz, %i.bx
  %i.cc = or disjoint <2 x i64> %i.ca, %i.by
  store <2 x i64> %i.cb, ptr %i.bv, align 8, !tbaa !96, !alias.scope !884, !noalias !883
  store <2 x i64> %i.cc, ptr %i.bw, align 8, !tbaa !96, !alias.scope !884, !noalias !883
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !881

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %bn_select_words.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.ph
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !96
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.ph ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !96
  %i.ci = and i64 %i.cf, %i.bq
  %i.cj = and i64 %i.ch, %i.br
  %i.ck = or disjoint i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !96
  %i.cl = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.cl, %scalar.ph.prol ]
  %i.cm = icmp eq i64 %4, %.neg
  br i1 %i.cm, label %bn_select_words.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.dc, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !96
  %i.cr = and i64 %i.co, %i.bq
  %i.cs = and i64 %i.cq, %i.br
  %i.ct = or disjoint i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.cp, align 8, !tbaa !96
  %i.cu = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96
  %i.cz = and i64 %i.cw, %i.bq
  %i.da = and i64 %i.cy, %i.br
  %i.db = or disjoint i64 %i.da, %i.cz
  store i64 %i.db, ptr %i.cx, align 8, !tbaa !96
  %i.dc = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dc, %4
  br i1 %exitcond.not.i.1, label %bn_select_words.exit.loopexit, label %scalar.ph, !llvm.loop !882

bn_select_words.exit.loopexit:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dd = and i64 %.032.i.ph, %1
  br label %bn_select_words.exit

bn_select_words.exit:                             ; preds = %bn_select_words.exit.loopexit, %bb.a
  %.032.i14 = phi i64 [ 0, %bb.a ], [ %i.dd, %bn_select_words.exit.loopexit ]
  ret i64 %.032.i14
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL25maybe_rshift1_words_carryPmmmS_m(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef range(i64 -1, 1) %2, ptr nofree noundef captures(none) %3, i64 noundef range(i64 -2147483648, 2147483648) %4) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %_ZL19maybe_rshift1_wordsPmmS_m.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.b = add nsw i64 %4, -1                       ; 6 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph.i8.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %min.iters.check = icmp ult i64 %4, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.c = shl nsw i64 %4, 3                        ; 2 uses
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.d, i64 -8
  %scevgep10 = getelementptr i8, ptr %0, i64 %i.c
  %bound0 = icmp ult ptr %3, %scevgep10
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !96, !alias.scope !896
  %wide.load11 = load <2 x i64>, ptr %i.f, align 8, !tbaa !96, !alias.scope !896
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %wide.load12 = load <2 x i64>, ptr %i.h, align 8, !tbaa !96, !alias.scope !896
  %wide.load13 = load <2 x i64>, ptr %i.i, align 8, !tbaa !96, !alias.scope !896
  %i.j = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load12, <2 x i64> %wide.load, <2 x i64> splat (i64 63))
  %i.k = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %wide.load13, <2 x i64> %wide.load11, <2 x i64> splat (i64 63))
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 8, !tbaa !96, !alias.scope !897, !noalias !896
  store <2 x i64> %i.k, ptr %i.m, align 8, !tbaa !96, !alias.scope !897, !noalias !896
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !888

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.lr.ph.i8.i, label %.lr.ph.i.i.preheader36

.lr.ph.i.i.preheader36:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %i.o = add nsw i64 %4, 3
  %i.p = add nsw i64 %4, -2
  %i.q = sub i64 %i.p, %.015.i.i.ph
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader36, %.lr.ph.i.i.prol
  %.015.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.prol ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader36 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader36 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.i.i.prol
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96
  %i.t = add nuw i64 %.015.i.i.prol, 1            ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !96
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.s, i64 63)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.015.i.i.prol
  store i64 %i.w, ptr %i.x, align 8, !tbaa !96
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !889

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader36
  %.015.i.i.unr = phi i64 [ %.015.i.i.ph, %.lr.ph.i.i.preheader36 ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.y = icmp ult i64 %i.q, 3
  br i1 %i.y, label %.lr.ph.i8.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = add nuw i64 %.015.i.i, 1                ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.aa, i64 63)
end_hunk_11
begin_hunk_12_@_ZL25maybe_rshift1_words_carryPmmmS_m:bb.a

scalar.ph20.prol:                                 ; preds = %scalar.ph20.preheader
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.i.ph
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !96
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.ph ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !96
  %i.bx = and i64 %i.bu, %i.bf
  %i.by = and i64 %i.bw, %i.bg
  %i.bz = or disjoint i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !96
  %i.ca = or disjoint i64 %.09.i.i.ph, 1
  br label %scalar.ph20.prol.loopexit

scalar.ph20.prol.loopexit:                        ; preds = %scalar.ph20.prol, %scalar.ph20.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph20.preheader ], [ %i.ca, %scalar.ph20.prol ]
  %i.cb = icmp eq i64 %4, %.neg
  br i1 %i.cb, label %_ZL19maybe_rshift1_wordsPmmS_m.exit, label %scalar.ph20

scalar.ph20:                                      ; preds = %scalar.ph20.prol.loopexit, %scalar.ph20
  %.09.i.i = phi i64 [ %i.cr, %scalar.ph20 ], [ %.09.i.i.unr, %scalar.ph20.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !96
  %i.cg = and i64 %i.cd, %i.bf
  %i.ch = and i64 %i.cf, %i.bg
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.ce, align 8, !tbaa !96
  %i.cj = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !96
  %i.co = and i64 %i.cl, %i.bf
  %i.cp = and i64 %i.cn, %i.bg
  %i.cq = or disjoint i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.cm, align 8, !tbaa !96
  %i.cr = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %exitcond.not.i9.i.1 = icmp eq i64 %i.cr, %4
  br i1 %exitcond.not.i9.i.1, label %_ZL19maybe_rshift1_wordsPmmS_m.exit, label %scalar.ph20, !llvm.loop !895

_ZL19maybe_rshift1_wordsPmmS_m.exit:              ; preds = %scalar.ph20.prol.loopexit, %scalar.ph20, %middle.block33
  %i.cs = and i64 %2, %1
  %i.ct = shl i64 %i.cs, 63
  %i.cu = getelementptr [8 x i8], ptr %0, i64 %4
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8     ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !96
  %i.cx = or i64 %i.cw, %i.ct
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !96
  br label %_ZL19maybe_rshift1_wordsPmmS_m.exit.thread

_ZL19maybe_rshift1_wordsPmmS_m.exit.thread:       ; preds = %bb.a, %_ZL19maybe_rshift1_wordsPmmS_m.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i64 @bn_mul_add_words(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader55

.preheader55:                                     ; preds = %bb.a
  %.not56 = icmp ult i64 %2, 4
  br i1 %.not56, label %.lr.ph69, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader55
  %i.b = zext i64 %3 to i128                      ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %.not5464 = icmp eq i64 %i.bm, 0
  br i1 %.not5464, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader55, %.preheader
  %.046.lcssa85 = phi ptr [ %i.bl, %.preheader ], [ %0, %.preheader55 ] ; 4 uses
  %.047.lcssa84 = phi ptr [ %i.bk, %.preheader ], [ %1, %.preheader55 ] ; 3 uses
  %.049.lcssa83 = phi i64 [ %i.bm, %.preheader ], [ %2, %.preheader55 ] ; 4 uses
  %.051.lcssa82 = phi i64 [ %i.bj, %.preheader ], [ 0, %.preheader55 ] ; 2 uses
  %i.c = zext i64 %3 to i128                      ; 3 uses
  %xtraiter = and i64 %.049.lcssa83, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph69
  %i.d = load i64, ptr %.047.lcssa84, align 8, !tbaa !96
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, %i.c
  %i.g = load i64, ptr %.046.lcssa85, align 8, !tbaa !96
  %i.h = zext i64 %i.g to i128
  %i.i = zext i64 %.051.lcssa82 to i128
  %i.j = add nuw nsw i128 %i.h, %i.i
  %i.k = add nuw i128 %i.j, %i.f                  ; 2 uses
  %i.l = trunc i128 %i.k to i64
  store i64 %i.l, ptr %.046.lcssa85, align 8, !tbaa !96
  %i.m = lshr i128 %i.k, 64
  %i.n = trunc nuw i128 %i.m to i64               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.047.lcssa84, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.046.lcssa85, i64 8
  %i.q = add nsw i64 %.049.lcssa83, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph69
  %.lcssa.unr = phi i64 [ poison, %.lr.ph69 ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %.168.unr = phi ptr [ %.046.lcssa85, %.lr.ph69 ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  %.14867.unr = phi ptr [ %.047.lcssa84, %.lr.ph69 ], [ %i.o, %.prol.loopexit.unr-lcssa ]
  %.15066.unr = phi i64 [ %.049.lcssa83, %.lr.ph69 ], [ %i.q, %.prol.loopexit.unr-lcssa ]
  %.15265.unr = phi i64 [ %.051.lcssa82, %.lr.ph69 ], [ %i.n, %.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %.049.lcssa83, 1
  br i1 %i.r, label %.loopexit, label %.lr.ph69.new

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.04660 = phi ptr [ %0, %.lr.ph ], [ %i.bl, %bb.b ] ; 6 uses
  %.04759 = phi ptr [ %1, %.lr.ph ], [ %i.bk, %bb.b ] ; 5 uses
  %.04958 = phi i64 [ %2, %.lr.ph ], [ %i.bm, %bb.b ]
  %.05157 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.b ]
  %i.s = load i64, ptr %.04759, align 8, !tbaa !96
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, %i.b
  %i.v = load i64, ptr %.04660, align 8, !tbaa !96
  %i.w = zext i64 %i.v to i128
  %i.x = zext i64 %.05157 to i128
  %i.y = add nuw nsw i128 %i.w, %i.x
  %i.z = add nuw i128 %i.y, %i.u                  ; 2 uses
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %.04660, align 8, !tbaa !96
  %i.ab = lshr i128 %i.z, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.04759, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %i.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.04660, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %i.ai = zext i64 %i.ah to i128
  %i.aj = add nuw i128 %i.af, %i.ai
  %i.ak = add nuw i128 %i.aj, %i.ab               ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !96
  %i.am = lshr i128 %i.ak, 64
  %i.an = getelementptr inbounds nuw i8, ptr %.04759, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, %i.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.04660, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !96
  %i.at = zext i64 %i.as to i128
  %i.au = add nuw i128 %i.aq, %i.at
  %i.av = add nuw i128 %i.au, %i.am               ; 2 uses
  %i.aw = trunc i128 %i.av to i64
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !96
  %i.ax = lshr i128 %i.av, 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.04759, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !96
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, %i.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.04660, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !96
  %i.be = zext i64 %i.bd to i128
  %i.bf = add nuw i128 %i.bb, %i.be
  %i.bg = add nuw i128 %i.bf, %i.ax               ; 2 uses
  %i.bh = trunc i128 %i.bg to i64
  store i64 %i.bh, ptr %i.bc, align 8, !tbaa !96
  %i.bi = lshr i128 %i.bg, 64
  %i.bj = trunc nuw i128 %i.bi to i64             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04759, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04660, i64 32 ; 2 uses
  %i.bm = add i64 %.04958, -4                     ; 4 uses
  %.not = icmp ult i64 %i.bm, 4
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !21

.lr.ph69.new:                                     ; preds = %.prol.loopexit, %.lr.ph69.new
  %.168 = phi ptr [ %i.ck, %.lr.ph69.new ], [ %.168.unr, %.prol.loopexit ] ; 4 uses
  %.14867 = phi ptr [ %i.cj, %.lr.ph69.new ], [ %.14867.unr, %.prol.loopexit ] ; 3 uses
  %.15066 = phi i64 [ %i.cl, %.lr.ph69.new ], [ %.15066.unr, %.prol.loopexit ]
  %.15265 = phi i64 [ %i.ci, %.lr.ph69.new ], [ %.15265.unr, %.prol.loopexit ]
  %i.bn = load i64, ptr %.14867, align 8, !tbaa !96
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %i.bo, %i.c
  %i.bq = load i64, ptr %.168, align 8, !tbaa !96
  %i.br = zext i64 %i.bq to i128
  %i.bs = zext i64 %.15265 to i128
  %i.bt = add nuw nsw i128 %i.br, %i.bs
  %i.bu = add nuw i128 %i.bt, %i.bp               ; 2 uses
  %i.bv = trunc i128 %i.bu to i64
  store i64 %i.bv, ptr %.168, align 8, !tbaa !96
  %i.bw = lshr i128 %i.bu, 64
  %i.bx = getelementptr inbounds nuw i8, ptr %.14867, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.168, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !96
  %i.ca = zext i64 %i.bz to i128
  %i.cb = mul nuw i128 %i.ca, %i.c
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !96
  %i.cd = zext i64 %i.cc to i128
  %i.ce = add nuw nsw i128 %i.bw, %i.cd
  %i.cf = add nuw i128 %i.ce, %i.cb               ; 2 uses
  %i.cg = trunc i128 %i.cf to i64
  store i64 %i.cg, ptr %i.by, align 8, !tbaa !96
  %i.ch = lshr i128 %i.cf, 64
  %i.ci = trunc nuw i128 %i.ch to i64             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.14867, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.168, i64 16
  %i.cl = add nsw i64 %.15066, -2                 ; 2 uses
  %.not54.1 = icmp eq i64 %i.cl, 0
  br i1 %.not54.1, label %.loopexit, label %.lr.ph69.new, !llvm.loop !22

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph69.new, %.preheader, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bj, %.preheader ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ci, %.lr.ph69.new ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_sqr_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.preheader44

.preheader44:                                     ; preds = %bb.a
  %.not45 = icmp ult i64 %2, 4
  br i1 %.not45, label %.lr.ph55.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not4351 = icmp eq i64 %i.aw, 0
  br i1 %.not4351, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader44, %.preheader
  %.154.ph = phi ptr [ %0, %.preheader44 ], [ %i.av, %.preheader ] ; 4 uses
  %.13953.ph = phi ptr [ %1, %.preheader44 ], [ %i.au, %.preheader ] ; 3 uses
  %.14152.ph = phi i64 [ %2, %.preheader44 ], [ %i.aw, %.preheader ] ; 4 uses
  %xtraiter = and i64 %.14152.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader
  %i.b = load i64, ptr %.13953.ph, align 8, !tbaa !96
  %i.c = zext i64 %i.b to i128                    ; 2 uses
  %i.d = mul nuw i128 %i.c, %i.c                  ; 2 uses
  %i.e = trunc i128 %i.d to i64
  store i64 %i.e, ptr %.154.ph, align 8, !tbaa !96
  %i.f = lshr i128 %i.d, 64
  %i.g = trunc nuw i128 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %.154.ph, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %.13953.ph, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.154.ph, i64 16
  %i.k = add nsw i64 %.14152.ph, -1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol, %.lr.ph55.preheader
  %.154.unr = phi ptr [ %.154.ph, %.lr.ph55.preheader ], [ %i.j, %.lr.ph55.prol ]
  %.13953.unr = phi ptr [ %.13953.ph, %.lr.ph55.preheader ], [ %i.i, %.lr.ph55.prol ]
  %.14152.unr = phi i64 [ %.14152.ph, %.lr.ph55.preheader ], [ %i.k, %.lr.ph55.prol ]
  %i.l = icmp eq i64 %.14152.ph, 1
  br i1 %i.l, label %.loopexit, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader44, %.lr.ph
  %.048 = phi ptr [ %i.av, %.lr.ph ], [ %0, %.preheader44 ] ; 9 uses
  %.03847 = phi ptr [ %i.au, %.lr.ph ], [ %1, %.preheader44 ] ; 5 uses
  %.04046 = phi i64 [ %i.aw, %.lr.ph ], [ %2, %.preheader44 ]
  %i.m = load i64, ptr %.03847, align 8, !tbaa !96
  %i.n = zext i64 %i.m to i128                    ; 2 uses
  %i.o = mul nuw i128 %i.n, %i.n                  ; 2 uses
  %i.p = trunc i128 %i.o to i64
  store i64 %i.p, ptr %.048, align 8, !tbaa !96
  %i.q = lshr i128 %i.o, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %.03847, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96
  %i.v = zext i64 %i.u to i128                    ; 2 uses
  %i.w = mul nuw i128 %i.v, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.048, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !96
  %i.z = lshr i128 %i.w, 64
  %i.aa = trunc nuw i128 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.048, i64 24
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %.03847, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = zext i64 %i.ad to i128                  ; 2 uses
  %i.af = mul nuw i128 %i.ae, %i.ae               ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.048, i64 32
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !96
  %i.ai = lshr i128 %i.af, 64
  %i.aj = trunc nuw i128 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.048, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %.03847, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !96
  %i.an = zext i64 %i.am to i128                  ; 2 uses
  %i.ao = mul nuw i128 %i.an, %i.an               ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.048, i64 48
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !96
  %i.ar = lshr i128 %i.ao, 64
  %i.as = trunc nuw i128 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.048, i64 56
  store i64 %i.as, ptr %i.at, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %.03847, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.048, i64 64 ; 2 uses
  %i.aw = add i64 %.04046, -4                     ; 4 uses
  %.not = icmp ult i64 %i.aw, 4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !24

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55
  %.154 = phi ptr [ %i.bo, %.lr.ph55 ], [ %.154.unr, %.lr.ph55.prol.loopexit ] ; 5 uses
  %.13953 = phi ptr [ %i.bn, %.lr.ph55 ], [ %.13953.unr, %.lr.ph55.prol.loopexit ] ; 3 uses
  %.14152 = phi i64 [ %i.bp, %.lr.ph55 ], [ %.14152.unr, %.lr.ph55.prol.loopexit ]
  %i.ax = load i64, ptr %.13953, align 8, !tbaa !96
  %i.ay = zext i64 %i.ax to i128                  ; 2 uses
  %i.az = mul nuw i128 %i.ay, %i.ay               ; 2 uses
  %i.ba = trunc i128 %i.az to i64
  store i64 %i.ba, ptr %.154, align 8, !tbaa !96
  %i.bb = lshr i128 %i.az, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.154, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %.13953, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.154, i64 16
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !96
  %i.bh = zext i64 %i.bg to i128                  ; 2 uses
  %i.bi = mul nuw i128 %i.bh, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !96
  %i.bk = lshr i128 %i.bi, 64
  %i.bl = trunc nuw i128 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.154, i64 24
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !96
  %i.bn = getelementptr inbounds nuw i8, ptr %.13953, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.154, i64 32
  %i.bp = add nsw i64 %.14152, -2                 ; 2 uses
  %.not43.1 = icmp eq i64 %i.bp, 0
  br i1 %.not43.1, label %.loopexit, label %.lr.ph55, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @bn_mul_comba8(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !96
  %i.b = zext i64 %i.a to i128
  %i.c = load i64, ptr %2, align 8, !tbaa !96
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw i128 %i.d, %i.b                  ; 2 uses
  %i.f = trunc i128 %i.e to i64
  %i.g = lshr i128 %i.e, 64
  store i64 %i.f, ptr %0, align 8, !tbaa !96
  %i.h = load i64, ptr %1, align 8, !tbaa !96
  %i.i = zext i64 %i.h to i128
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !96
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw i128 %i.l, %i.i
  %i.n = add nuw i128 %i.m, %i.g                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = trunc nuw i128 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96
  %i.s = zext i64 %i.r to i128
  %i.t = load i64, ptr %2, align 8, !tbaa !96
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw i128 %i.u, %i.s
  %i.w = and i128 %i.n, 18446744073709551615
  %i.x = add nuw i128 %i.v, %i.w                  ; 2 uses
  %i.y = trunc i128 %i.x to i64
  %i.z = lshr i128 %i.x, 64
  %i.aa = trunc nuw i128 %i.z to i64              ; 2 uses
  %i.ab = add i64 %i.aa, %i.p                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !96
  %i.ah = zext i64 %i.ag to i128
  %i.ai = load i64, ptr %2, align 8, !tbaa !96
  %i.aj = zext i64 %i.ai to i128
  %i.ak = mul nuw i128 %i.aj, %i.ah
  %i.al = zext i64 %i.ab to i128
  %i.am = add nuw i128 %i.ak, %i.al               ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = trunc nuw i128 %i.an to i64             ; 2 uses
  %i.ap = add i64 %i.ao, %i.ad                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = zext i1 %i.aq to i64
  %i.as = load i64, ptr %i.q, align 8, !tbaa !96
  %i.at = zext i64 %i.as to i128
  %i.au = load i64, ptr %i.j, align 8, !tbaa !96
  %i.av = zext i64 %i.au to i128
  %i.aw = mul nuw i128 %i.av, %i.at
  %i.ax = and i128 %i.am, 18446744073709551615
  %i.ay = add nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 2 uses
  %i.bb = add i64 %i.ap, %i.ba                    ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, %i.ar
  %i.bf = load i64, ptr %1, align 8, !tbaa !96
  %i.bg = zext i64 %i.bf to i128
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !96
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, %i.bg
  %i.bl = and i128 %i.ay, 18446744073709551615
  %i.bm = add nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = trunc i128 %i.bm to i64
  %i.bo = lshr i128 %i.bm, 64
  %i.bp = trunc nuw i128 %i.bo to i64             ; 2 uses
  %i.bq = add i64 %i.bb, %i.bp                    ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = zext i1 %i.br to i64
  %i.bt = add nuw nsw i64 %i.be, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bu, align 8, !tbaa !96
  %i.bv = load i64, ptr %1, align 8, !tbaa !96
  %i.bw = zext i64 %i.bv to i128
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !96
  %i.bz = zext i64 %i.by to i128
  %i.ca = mul nuw i128 %i.bz, %i.bw
  %i.cb = zext i64 %i.bq to i128
  %i.cc = add nuw i128 %i.ca, %i.cb               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = trunc nuw i128 %i.cd to i64             ; 2 uses
  %i.cf = add i64 %i.bt, %i.ce                    ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = zext i1 %i.cg to i64
  %i.ci = load i64, ptr %i.q, align 8, !tbaa !96
  %i.cj = zext i64 %i.ci to i128
  %i.ck = load i64, ptr %i.bh, align 8, !tbaa !96
  %i.cl = zext i64 %i.ck to i128
  %i.cm = mul nuw i128 %i.cl, %i.cj
  %i.cn = and i128 %i.cc, 18446744073709551615
  %i.co = add nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64             ; 2 uses
  %i.cr = add i64 %i.cf, %i.cq                    ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, %i.ch
  %i.cv = load i64, ptr %i.af, align 8, !tbaa !96
  %i.cw = zext i64 %i.cv to i128
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !96
  %i.cy = zext i64 %i.cx to i128
  %i.cz = mul nuw i128 %i.cy, %i.cw
  %i.da = and i128 %i.co, 18446744073709551615
  %i.db = add nuw i128 %i.da, %i.cz               ; 2 uses
  %i.dc = lshr i128 %i.db, 64
  %i.dd = trunc nuw i128 %i.dc to i64             ; 2 uses
  %i.de = add i64 %i.cr, %i.dd                    ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = zext i1 %i.df to i64
  %i.dh = add nuw nsw i64 %i.cu, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !96
  %i.dk = zext i64 %i.dj to i128
  %i.dl = load i64, ptr %2, align 8, !tbaa !96
  %i.dm = zext i64 %i.dl to i128
  %i.dn = mul nuw i128 %i.dm, %i.dk
  %i.do = and i128 %i.db, 18446744073709551615
  %i.dp = add nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %i.ds = trunc nuw i128 %i.dr to i64             ; 2 uses
  %i.dt = add i64 %i.de, %i.ds                    ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = zext i1 %i.du to i64
  %i.dw = add nuw nsw i64 %i.dh, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dq, ptr %i.dx, align 8, !tbaa !96
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !96
  %i.ea = zext i64 %i.dz to i128
  %i.eb = load i64, ptr %2, align 8, !tbaa !96
  %i.ec = zext i64 %i.eb to i128
  %i.ed = mul nuw i128 %i.ec, %i.ea
  %i.ee = zext i64 %i.dt to i128
  %i.ef = add nuw i128 %i.ed, %i.ee               ; 2 uses
  %i.eg = lshr i128 %i.ef, 64
  %i.eh = trunc nuw i128 %i.eg to i64             ; 2 uses
  %i.ei = add i64 %i.dw, %i.eh                    ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = zext i1 %i.ej to i64
  %i.el = load i64, ptr %i.di, align 8, !tbaa !96
  %i.em = zext i64 %i.el to i128
  %i.en = load i64, ptr %i.j, align 8, !tbaa !96
  %i.eo = zext i64 %i.en to i128
  %i.ep = mul nuw i128 %i.eo, %i.em
  %i.eq = and i128 %i.ef, 18446744073709551615
  %i.er = add nuw i128 %i.eq, %i.ep               ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = trunc nuw i128 %i.es to i64             ; 2 uses
  %i.eu = add i64 %i.ei, %i.et                    ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = zext i1 %i.ev to i64
  %i.ex = add nuw nsw i64 %i.ew, %i.ek
  %i.ey = load i64, ptr %i.af, align 8, !tbaa !96
  %i.ez = zext i64 %i.ey to i128
  %i.fa = load i64, ptr %i.bh, align 8, !tbaa !96
  %i.fb = zext i64 %i.fa to i128
  %i.fc = mul nuw i128 %i.fb, %i.ez
  %i.fd = and i128 %i.er, 18446744073709551615
  %i.fe = add nuw i128 %i.fd, %i.fc               ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw i128 %i.ff to i64             ; 2 uses
  %i.fh = add i64 %i.eu, %i.fg                    ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = zext i1 %i.fi to i64
  %i.fk = add nuw nsw i64 %i.ex, %i.fj
  %i.fl = load i64, ptr %i.q, align 8, !tbaa !96
  %i.fm = zext i64 %i.fl to i128
  %i.fn = load i64, ptr %i.bx, align 8, !tbaa !96
  %i.fo = zext i64 %i.fn to i128
  %i.fp = mul nuw i128 %i.fo, %i.fm
  %i.fq = and i128 %i.fe, 18446744073709551615
  %i.fr = add nuw i128 %i.fq, %i.fp               ; 2 uses
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = trunc nuw i128 %i.fs to i64             ; 2 uses
  %i.fu = add i64 %i.fh, %i.ft                    ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = zext i1 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fk, %i.fw
  %i.fy = load i64, ptr %1, align 8, !tbaa !96
  %i.fz = zext i64 %i.fy to i128
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !96
  %i.gc = zext i64 %i.gb to i128
  %i.gd = mul nuw i128 %i.gc, %i.fz
end_hunk_12
begin_hunk_13_@bn_less_than_montgomery_R:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp ult i32 %i.d, %i.f
  br i1 %i.h, label %.lr.ph.i, label %bn_fits_in_words.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = sext i32 %i.d to i64                     ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.k = sub nsw i64 %i.g, %i.i                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.k, -4                       ; 3 uses
  %i.l = add nsw i64 %n.vec, %i.i
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi4 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !96
  %wide.load5 = load <2 x i64>, ptr %i.m, align 8, !tbaa !96
  %i.n = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.o = or <2 x i64> %wide.load5, %vec.phi4      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ %i.i, %.lr.ph.i ], [ %i.l, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.q, %middle.block ], [ %i.v, %scalar.ph ]
  %i.r = icmp eq i64 %.lcssa, 0
  %i.s = zext i1 %i.r to i32
  br label %bn_fits_in_words.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.w, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.078.i = phi i64 [ %i.v, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.09.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96
  %i.v = or i64 %i.u, %.078.i                     ; 2 uses
  %i.w = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %scalar.ph, !llvm.loop !910

bn_fits_in_words.exit:                            ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.a
  %i.x = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.s, %._crit_edge.loopexit.i ]
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_to_montgomery_small(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !133
  tail call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, i64 noundef %2, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr nofree noundef captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr nofree noundef captures(none) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !132  ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %.not = icmp eq i64 %1, %i.e
  %i.f = shl nsw i64 %i.e, 1
  %.not46 = icmp eq i64 %3, %i.f
  %or.cond = select i1 %.not, i1 %.not46, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.8, i32 noundef 197) #36
  br label %bn_reduce_once.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !96
  %.not55 = icmp eq i32 %i.d, 0
  br i1 %.not55, label %bn_reduce_once.exit, label %.lr.ph

.preheader42.i.i:                                 ; preds = %.lr.ph
  %i.i = getelementptr [8 x i8], ptr %2, i64 %1   ; 7 uses
  %.not43.i.i = icmp ult i32 %i.d, 4
  br i1 %.not43.i.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %1, %.preheader42.i.i ], [ %i.bj, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.b, %.preheader42.i.i ], [ %i.bh, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %i.i, %.preheader42.i.i ], [ %i.bg, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %0, %.preheader42.i.i ], [ %i.bi, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.be, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.not3453.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i:                                       ; preds = %.preheader42.i.i, %.lr.ph.i.i
  %.048.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %1, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.b, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.i, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %0, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ 0, %.preheader42.i.i ]
  %i.j = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.k = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.l = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.n, i64 %.04044.i.i) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = or i1 %i.m, %i.p
  %i.s = zext i1 %i.r to i64
  store i64 %i.q, ptr %.03045.i.i, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !96
  %i.x = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.s) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = or i1 %i.y, %i.ab
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !96
  %i.ag = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %i.ai = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !96
  %i.ak = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ae) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %i.aq = or i1 %i.al, %i.ao
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !96
  %i.ax = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.au, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %i.ba = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.az, i64 %i.ar) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  %i.bc = extractvalue { i64, i1 } %i.ba, 0
  %i.bd = or i1 %i.ay, %i.bb
  %i.be = zext i1 %i.bd to i64                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !96
  %i.bg = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.bj = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i = icmp ult i64 %i.bj, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.bx, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.bv, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.bu, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.bw, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.bt, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.bk = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.bl = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.bm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bk, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bo, i64 %.14154.i.i) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  %i.br = extractvalue { i64, i1 } %i.bp, 0
  %i.bs = or i1 %i.bn, %i.bq
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  store i64 %i.br, ptr %.13155.i.i, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.bx = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i = phi i64 [ %i.be, %.preheader.i.i ], [ %i.bt, %.lr.ph59.i.i ]
  %i.by = sub nsw i64 %i.dw, %.032.i.ph.i
  %i.bz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.by) #38, !srcloc !108 ; 5 uses
  %i.ca = xor i64 %i.bz, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11.i
  %i.cb = shl nsw i64 %1, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.cb
  %i.cc = shl nsw i64 %1, 4
  %scevgep78 = getelementptr i8, ptr %2, i64 %i.cc
  %bound0 = icmp ult ptr %0, %scevgep78
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !96, !alias.scope !916
  %wide.load81 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !96, !alias.scope !916
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %wide.load83 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %i.ch = and <2 x i64> %wide.load, %broadcast.splat
  %i.ci = and <2 x i64> %wide.load81, %broadcast.splat
  %i.cj = and <2 x i64> %wide.load82, %broadcast.splat80
  %i.ck = and <2 x i64> %wide.load83, %broadcast.splat80
  %i.cl = or disjoint <2 x i64> %i.cj, %i.ch
  %i.cm = or disjoint <2 x i64> %i.ck, %i.ci
  store <2 x i64> %i.cl, ptr %i.cf, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  store <2 x i64> %i.cm, ptr %i.cg, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !914

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %bn_reduce_once.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i.ph
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.ph ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = and i64 %i.cp, %i.bz
  %i.ct = and i64 %i.cr, %i.ca
  %i.cu = or disjoint i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !96
  %i.cv = or disjoint i64 %.09.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %1, %.neg
  br i1 %i.cw, label %bn_reduce_once.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i = phi i64 [ %i.dm, %scalar.ph ], [ %.09.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = and i64 %i.cy, %i.bz
  %i.dc = and i64 %i.da, %i.ca
  %i.dd = or disjoint i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !96
  %i.de = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !96
  %i.dj = and i64 %i.dg, %i.bz
  %i.dk = and i64 %i.di, %i.ca
  %i.dl = or disjoint i64 %i.dk, %i.dj
  store i64 %i.dl, ptr %i.dh, align 8, !tbaa !96
  %i.dm = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dm, %1
  br i1 %exitcond.not.i.i.1, label %bn_reduce_once.exit, label %scalar.ph, !llvm.loop !915

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04354 = phi i64 [ %i.dx, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.04453 = phi i64 [ %i.dw, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04354 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !96
  %i.dp = mul i64 %i.do, %i.h
  %i.dq = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.dn, ptr noundef %i.b, i64 noundef %1, i64 noundef %i.dp)
  %i.dr = getelementptr [8 x i8], ptr %i.dn, i64 %1 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !96 ; 2 uses
  %i.dt = add i64 %i.dq, %.04453                  ; 2 uses
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  %i.dv = icmp ne i64 %i.dt, 0
  %.not47 = icmp ule i64 %i.du, %i.ds
  %.044.tr = trunc nuw i64 %.04453 to i1
  %.narrow = or i1 %i.dv, %.044.tr
  %narrow = select i1 %.not47, i1 %.narrow, i1 false
  %i.dw = zext i1 %narrow to i64                  ; 2 uses
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !96
  %i.dx = add nuw i64 %.04354, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dx, %1
  br i1 %exitcond.not, label %.preheader42.i.i, label %.lr.ph, !llvm.loop !23

bn_reduce_once.exit:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %middle.block ], [ 1, %scalar.ph ], [ 1, %scalar.ph.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_sqr_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = shl i64 %3, 1
  %i.c = icmp ne i64 %1, %i.b
  %i.d = icmp ugt i64 %3, 9
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.f [
    i64 4, label %bb.d
    i64 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba4(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba8(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.e = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @bn_mul_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %5, %3
  %.not = icmp eq i64 %1, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 8
  %i.c = icmp eq i64 %5, 8
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %2, ptr noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @bn_mont_n0(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
end_hunk_13
begin_hunk_14_@_ZL11bn_mul_implP9bignum_stPKS_S2_P10bignum_ctx:bb.a
_ZL14OPENSSL_memcpyPvPKvm.exit.i135:              ; preds = %bb.at, %bb.as
  %i.fd = load ptr, ptr %.092, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.fd) #36
  store ptr %i.ev, ptr %.092, align 8, !tbaa !112
  store i32 %i.bm, ptr %i.ep, align 4, !tbaa !114
  br label %bn_wexpand.exit136

bn_wexpand.exit136:                               ; preds = %.bn_wexpand.exit136_crit_edge, %_ZL14OPENSSL_memcpyPvPKvm.exit.i135
  %i.fe = phi ptr [ %.pre, %.bn_wexpand.exit136_crit_edge ], [ %i.ev, %_ZL14OPENSSL_memcpyPvPKvm.exit.i135 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.092, i64 8
  store i32 %i.bm, ptr %i.ff, align 8, !tbaa !113
  %i.fg = load ptr, ptr %1, align 8, !tbaa !112
  %i.fh = sext i32 %i.b to i64
  %i.fi = load ptr, ptr %2, align 8, !tbaa !112
  %i.fj = sext i32 %i.d to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %i.fe, ptr noundef %i.fg, i64 noundef %i.fh, ptr noundef %i.fi, i64 noundef %i.fj)
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %bn_wexpand.exit136, %bn_wexpand.exit
  %.not109 = icmp eq ptr %0, %.092
  br i1 %.not109, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %.092)
  %.not110 = icmp eq ptr %i.fk, null
  br i1 %.not110, label %bn_wexpand.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.ah, %bb.ag, %bb.ae, %bb.y, %bb.x, %bb.v, %bn_wexpand.exit131, %bn_wexpand.exit126, %bb.r, %bb.m, %bb.n, %bb.av, %bb.i, %bb.aw
  %.093 = phi i32 [ 0, %bb.i ], [ 1, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.ah ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bn_wexpand.exit126 ], [ 0, %bn_wexpand.exit131 ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %i.fl = load i8, ptr %i.i, align 8, !tbaa !121
  %.not.i137 = icmp eq i8 %i.fl, 0
  br i1 %.not.i137, label %bb.ax, label %BN_CTX_end.exit

bb.ax:                                            ; preds = %bn_wexpand.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !123
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !123
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !120
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !96
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !122
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.ax, %bn_wexpand.exit.thread, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %.093, %bn_wexpand.exit.thread ], [ %.093, %bb.ax ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i64 %2, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.049 = phi i64 [ %4, %bb.b ], [ %2, %bb.a ]    ; 10 uses
  %.047 = phi ptr [ %1, %bb.b ], [ %3, %bb.a ]    ; 2 uses
  %.046 = phi i64 [ %2, %bb.b ], [ %4, %bb.a ]    ; 3 uses
  %.045 = phi ptr [ %3, %bb.b ], [ %1, %bb.a ]    ; 6 uses
  %i.b = icmp eq i64 %.046, 0
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = shl i64 %.049, 3                         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.c, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.f:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.049 ; 2 uses
  %i.f = icmp eq i64 %.049, 0
  br i1 %i.f, label %bn_mul_words.exit, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.f
  %i.g = load i64, ptr %.047, align 8, !tbaa !96
  %.not51.i = icmp ult i64 %.049, 4
  %.pre = zext i64 %i.g to i128                   ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.bb, 0
  br i1 %.not4959.i, label %bn_mul_words.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.163.i.ph = phi ptr [ %0, %.preheader50.i ], [ %i.ba, %.preheader.i ] ; 3 uses
  %.14362.i.ph = phi ptr [ %.045, %.preheader50.i ], [ %i.az, %.preheader.i ] ; 3 uses
  %.14561.i.ph = phi i64 [ %.049, %.preheader50.i ], [ %i.bb, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.ay, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.h = load i64, ptr %.14362.i.ph, align 8, !tbaa !96
  %i.i = zext i64 %i.h to i128
  %i.j = mul nuw i128 %.pre, %i.i
  %i.k = zext i64 %.14760.i.ph to i128
  %i.l = add nuw i128 %i.j, %i.k                  ; 2 uses
  %i.m = trunc i128 %i.l to i64
  store i64 %i.m, ptr %.163.i.ph, align 8, !tbaa !96
  %i.n = lshr i128 %i.l, 64
  %i.o = trunc nuw i128 %i.n to i64               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.163.i.ph, i64 8
  %i.r = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.o, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.163.i.ph, %.lr.ph64.i.preheader ], [ %i.q, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.r, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.o, %.lr.ph64.i.prol ]
  %i.s = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.s, label %bn_mul_words.exit, label %.lr.ph64.i

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %0, %.preheader50.i ] ; 5 uses
  %.04254.i = phi ptr [ %i.az, %.lr.ph.i ], [ %.045, %.preheader50.i ] ; 5 uses
  %.04453.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.049, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.t = load i64, ptr %.04254.i, align 8, !tbaa !96
  %i.u = zext i64 %i.t to i128
  %i.v = mul nuw i128 %i.u, %.pre
  %i.w = zext i64 %.04652.i to i128
  %i.x = add nuw i128 %i.v, %i.w                  ; 2 uses
  %i.y = trunc i128 %i.x to i64
  store i64 %i.y, ptr %.04155.i, align 8, !tbaa !96
  %i.z = lshr i128 %i.x, 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.04254.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %.pre
  %i.ae = add nuw i128 %i.ad, %i.z                ; 2 uses
  %i.af = trunc i128 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !96
  %i.ah = lshr i128 %i.ae, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.04254.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !96
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw i128 %i.ak, %.pre
  %i.am = add nuw i128 %i.al, %i.ah               ; 2 uses
  %i.an = trunc i128 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !96
  %i.ap = lshr i128 %i.am, 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.04254.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !96
  %i.as = zext i64 %i.ar to i128
  %i.at = mul nuw i128 %i.as, %.pre
  %i.au = add nuw i128 %i.at, %i.ap               ; 2 uses
  %i.av = trunc i128 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !96
  %i.ax = lshr i128 %i.au, 64
  %i.ay = trunc nuw i128 %i.ax to i64             ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04254.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.bb = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i = icmp ult i64 %i.bb, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !17

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.bt, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.bs, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.bu, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.br, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.bc = load i64, ptr %.14362.i, align 8, !tbaa !96
  %i.bd = zext i64 %i.bc to i128
  %i.be = mul nuw i128 %.pre, %i.bd
  %i.bf = zext i64 %.14760.i to i128
  %i.bg = add nuw i128 %i.be, %i.bf               ; 2 uses
  %i.bh = trunc i128 %i.bg to i64
  store i64 %i.bh, ptr %.163.i, align 8, !tbaa !96
  %i.bi = lshr i128 %i.bg, 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !96
  %i.bm = zext i64 %i.bl to i128
  %i.bn = mul nuw i128 %.pre, %i.bm
  %i.bo = add nuw i128 %i.bn, %i.bi               ; 2 uses
  %i.bp = trunc i128 %i.bo to i64
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !96
  %i.bq = lshr i128 %i.bo, 64
  %i.br = trunc nuw i128 %i.bq to i64             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.14362.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.163.i, i64 16
  %i.bu = add nsw i64 %.14561.i, -2               ; 2 uses
  %.not49.i.1 = icmp eq i64 %i.bu, 0
  br i1 %.not49.i.1, label %bn_mul_words.exit, label %.lr.ph64.i, !llvm.loop !18

bn_mul_words.exit:                                ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i, %bb.f, %.preheader.i
  %.0.i = phi i64 [ 0, %bb.f ], [ %i.ay, %.preheader.i ], [ %.lcssa.unr, %.lr.ph64.i.prol.loopexit ], [ %i.br, %.lr.ph64.i ]
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !96
  %i.bv = icmp eq i64 %.046, 1
  br i1 %i.bv, label %_ZL14OPENSSL_memsetPvim.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bn_mul_words.exit, %bb.i
  %.065 = phi ptr [ %i.ct, %bb.i ], [ %i.e, %bn_mul_words.exit ] ; 4 uses
  %.04464 = phi ptr [ %i.cp, %bb.i ], [ %0, %bn_mul_words.exit ] ; 4 uses
  %.163 = phi i64 [ %i.cn, %bb.i ], [ %.046, %bn_mul_words.exit ] ; 3 uses
  %.14862 = phi ptr [ %i.cq, %bb.i ], [ %.047, %bn_mul_words.exit ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.04464, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.14862, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !96
  %i.bz = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.bw, ptr noundef %.045, i64 noundef %.049, i64 noundef %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.065, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !96
  %i.cb = icmp eq i64 %.163, 2
  br i1 %i.cb, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.04464, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.14862, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !96
  %i.cf = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.cc, ptr noundef %.045, i64 noundef %.049, i64 noundef %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %.065, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !96
  %i.ch = icmp eq i64 %.163, 3
  br i1 %i.ch, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %.04464, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %.14862, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !96
  %i.cl = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.ci, ptr noundef %.045, i64 noundef %.049, i64 noundef %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %.065, i64 24
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !96
  %i.cn = add i64 %.163, -4                       ; 3 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = getelementptr inbounds nuw i8, ptr %.04464, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.14862, i64 32 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.cp, ptr noundef %.045, i64 noundef %.049, i64 noundef %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %.065, i64 32 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !96
  %i.cu = icmp eq i64 %i.cn, 1
  br i1 %i.cu, label %_ZL14OPENSSL_memsetPvim.exit, label %.lr.ph, !llvm.loop !925

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.i, %.lr.ph, %bb.g, %bb.h, %bn_mul_words.exit, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_mul_word(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bn_wexpand.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %.preheader50.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !111
  store i32 0, ptr %i.a, align 8, !tbaa !113
  br label %bn_wexpand.exit.thread

.preheader50.i:                                   ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.f = sext i32 %i.b to i64                     ; 3 uses
  %.not51.i = icmp ult i32 %i.b, 4
  %.pre33 = zext i64 %1 to i128                   ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.aw, 0
  br i1 %.not4959.i, label %bn_mul_words.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.14362.i.ph = phi ptr [ %i.e, %.preheader50.i ], [ %i.av, %.preheader.i ] ; 6 uses
  %.14561.i.ph = phi i64 [ %i.f, %.preheader50.i ], [ %i.aw, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.au, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.g = load i64, ptr %.14362.i.ph, align 8, !tbaa !96
  %i.h = zext i64 %i.g to i128
  %i.i = mul nuw i128 %.pre33, %i.h
  %i.j = zext i64 %.14760.i.ph to i128
  %i.k = add nuw i128 %i.i, %i.j                  ; 2 uses
  %i.l = trunc i128 %i.k to i64
  store i64 %i.l, ptr %.14362.i.ph, align 8, !tbaa !96
  %i.m = lshr i128 %i.k, 64
  %i.n = trunc nuw i128 %i.m to i64               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.q = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.n, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.o, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.q, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.n, %.lr.ph64.i.prol ]
  %i.r = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.r, label %bn_mul_words.exit, label %.lr.ph64.i

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.e, %.preheader50.i ] ; 6 uses
  %.04453.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.f, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.s = load i64, ptr %.04155.i, align 8, !tbaa !96
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, %.pre33
  %i.v = zext i64 %.04652.i to i128
  %i.w = add nuw i128 %i.u, %i.v                  ; 2 uses
  %i.x = trunc i128 %i.w to i64
  store i64 %i.x, ptr %.04155.i, align 8, !tbaa !96
  %i.y = lshr i128 %i.w, 64
  %i.z = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = zext i64 %i.aa to i128
  %i.ac = mul nuw i128 %i.ab, %.pre33
  %i.ad = add nuw i128 %i.ac, %i.y                ; 2 uses
  %i.ae = trunc i128 %i.ad to i64
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !96
  %i.af = lshr i128 %i.ad, 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw i128 %i.ai, %.pre33
  %i.ak = add nuw i128 %i.aj, %i.af               ; 2 uses
  %i.al = trunc i128 %i.ak to i64
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !96
  %i.am = lshr i128 %i.ak, 64
  %i.an = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !96
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, %.pre33
  %i.ar = add nuw i128 %i.aq, %i.am               ; 2 uses
  %i.as = trunc i128 %i.ar to i64
  store i64 %i.as, ptr %i.an, align 8, !tbaa !96
  %i.at = lshr i128 %i.ar, 64
  %i.au = trunc nuw i128 %i.at to i64             ; 3 uses
  %i.av = getelementptr i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.aw = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i = icmp ult i64 %i.aw, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !17

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.bo, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.bn, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.bp, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.bm, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.ax = load i64, ptr %.14362.i, align 8, !tbaa !96
  %i.ay = zext i64 %i.ax to i128
  %i.az = mul nuw i128 %.pre33, %i.ay
  %i.ba = zext i64 %.14760.i to i128
  %i.bb = add nuw i128 %i.az, %i.ba               ; 2 uses
  %i.bc = trunc i128 %i.bb to i64
  store i64 %i.bc, ptr %.163.i, align 8, !tbaa !96
  %i.bd = lshr i128 %i.bb, 64
  %i.be = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !96
  %i.bh = zext i64 %i.bg to i128
  %i.bi = mul nuw i128 %.pre33, %i.bh
  %i.bj = add nuw i128 %i.bi, %i.bd               ; 2 uses
  %i.bk = trunc i128 %i.bj to i64
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !96
  %i.bl = lshr i128 %i.bj, 64
  %i.bm = trunc nuw i128 %i.bl to i64             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.14362.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.163.i, i64 16
  %i.bp = add nsw i64 %.14561.i, -2               ; 2 uses
  %.not49.i.1 = icmp eq i64 %i.bp, 0
  br i1 %.not49.i.1, label %bn_mul_words.exit, label %.lr.ph64.i, !llvm.loop !18

bn_mul_words.exit:                                ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i, %.preheader.i
  %.0.i = phi i64 [ %i.au, %.preheader.i ], [ %.lcssa.unr, %.lr.ph64.i.prol.loopexit ], [ %i.bm, %.lr.ph64.i ] ; 2 uses
  %.not16 = icmp eq i64 %.0.i, 0
  br i1 %.not16, label %bn_wexpand.exit.thread, label %bb.d

bb.d:                                             ; preds = %bn_mul_words.exit
  %i.bq = add nsw i32 %i.b, 1                     ; 5 uses
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !114
  %.not.i18 = icmp ugt i32 %i.bq, %i.bt
  br i1 %.not.i18, label %bb.e, label %bn_wexpand.exit

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp ugt i32 %i.bq, 8388607
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !115
  %i.bx = and i32 %i.bw, 2
  %.not16.i = icmp eq i32 %i.bx, 0
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.by = tail call ptr @OPENSSL_calloc(i64 noundef %i.br, i64 noundef 8) #36 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bn_wexpand.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load i32, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = sext i32 %i.ca to i64
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr readonly align 1 %i.ce, i64 %i.cd, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.k, %bb.j
  %i.cf = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.cf) #36
  store ptr %i.by, ptr %0, align 8, !tbaa !112
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !114
  %.pre = load i32, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  %.pre30 = add nsw i32 %.pre, 1
  %.pre31 = sext i32 %.pre to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.d
  %.pre-phi32 = phi i64 [ %.pre31, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.f, %bb.d ]
  %.pre-phi = phi i32 [ %.pre30, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.bq, %bb.d ]
  %i.cg = phi ptr [ %i.by, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.e, %bb.d ]
  store i32 %.pre-phi, ptr %i.a, align 8, !tbaa !113
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %.pre-phi32
  store i64 %.0.i, ptr %i.ch, align 8, !tbaa !96
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.i, %bb.h, %bb.f, %bn_wexpand.exit, %bn_mul_words.exit, %bb.a, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 1, %bn_mul_words.exit ], [ 1, %bn_wexpand.exit ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_sqr_consttime(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 10 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !111
  br label %BN_CTX_end.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !121
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %BN_CTX_start.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !124
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !120
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.q = mul i64 %i.m, 3
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %.not.i.i, i64 32, i64 %i.r    ; 4 uses
  %i.t = icmp ule i64 %i.s, %i.m
  %i.u = icmp samesign ugt i64 %i.s, 2305843009213693951
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.w = shl nuw i64 %i.s, 3
  %i.x = tail call ptr @OPENSSL_realloc(ptr noundef %i.v, i64 noundef %i.w) #36 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.x, ptr %i.i, align 8, !tbaa !120
  store i64 %i.s, ptr %i.n, align 8, !tbaa !124
  %.pre26.i.i = load i64, ptr %i.l, align 8, !tbaa !123
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.g, %._crit_edge.i.i
  %i.z = phi i64 [ %i.m, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.g ]
  %i.aa = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.x, %bb.g ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !96
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !123
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !123
  br label %BN_CTX_start.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.g, align 8, !tbaa !121
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 41
  store i8 1, ptr %i.ae, align 1, !tbaa !125
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.c, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.h
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %BN_CTX_start.exit
  %i.af = tail call ptr @BN_CTX_get(ptr noundef nonnull %2)
  br label %bb.j

bb.j:                                             ; preds = %BN_CTX_start.exit, %bb.i
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %0, %BN_CTX_start.exit ] ; 16 uses
  %i.ah = tail call ptr @BN_CTX_get(ptr noundef nonnull %2) ; 5 uses
  %i.ai = icmp ne ptr %i.ag, null
  %i.aj = icmp ne ptr %i.ah, null
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.k, label %bn_wexpand.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i32 %i.c, 1                 ; 4 uses
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !114
  %.not.i60 = icmp ugt i32 %i.ak, %i.an
  br i1 %.not.i60, label %bb.l, label %bn_wexpand.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ugt i32 %i.c, 4194303
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !115
  %i.ar = and i32 %i.aq, 2
  %.not16.i = icmp eq i32 %i.ar, 0
  br i1 %.not16.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.as = tail call ptr @OPENSSL_calloc(i64 noundef %i.al, i64 noundef 8) #36 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bn_wexpand.exit.thread, label %bb.q

end_hunk_14
begin_hunk_15_@bn_sqr_consttime:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !112
  %i.bp = load ptr, ptr %1, align 8, !tbaa !112
  %i.bq = zext nneg i32 %i.c to i64
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !112
  tail call fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef %i.bo, ptr noundef %i.bp, i64 noundef %i.bq, ptr noundef %i.br)
  br label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bs = tail call i32 @bn_wexpand(ptr noundef nonnull %i.ah, i64 noundef %i.al)
  %.not56 = icmp eq i32 %i.bs, 0
  br i1 %.not56, label %bn_wexpand.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = load ptr, ptr %i.ag, align 8, !tbaa !112
  %i.bu = load ptr, ptr %1, align 8, !tbaa !112
  %i.bv = zext nneg i32 %i.c to i64
  %i.bw = load ptr, ptr %i.ah, align 8, !tbaa !112
  tail call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %i.bt, ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %i.bw)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.y, %bb.aa, %bb.v, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.bx, align 8, !tbaa !111
  %i.by = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ak, ptr %i.by, align 8, !tbaa !113
  %.not58 = icmp eq ptr %i.ag, %0
  br i1 %.not58, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %i.ag)
  %.not59 = icmp eq ptr %i.bz, null
  br i1 %.not59, label %bn_wexpand.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %bn_wexpand.exit.thread

bn_wexpand.exit.thread:                           ; preds = %bb.p, %bb.o, %bb.m, %bb.ac, %bb.z, %bb.x, %bb.j, %bb.ad
  %.0 = phi i32 [ 1, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.ca = load i8, ptr %i.g, align 8, !tbaa !121
  %.not.i61 = icmp eq i8 %i.ca, 0
  br i1 %.not.i61, label %bb.ae, label %BN_CTX_end.exit

bb.ae:                                            ; preds = %bn_wexpand.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !123
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !123
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !120
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !122
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.ae, %bn_wexpand.exit.thread, %bb.b
  %.050 = phi i32 [ 1, %bb.b ], [ %.0, %bn_wexpand.exit.thread ], [ %.0, %bb.ae ]
  ret i32 %.050
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 2147483648) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bn_add_words.exit77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i64 %2, 1                    ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  store i64 0, ptr %i.d, align 8, !tbaa !96
  store i64 0, ptr %0, align 8, !tbaa !96
  %.not = icmp eq i64 %2, 1                       ; 2 uses
  br i1 %.not, label %.lr.ph59.i.preheader, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = add nsw i64 %2, -1                       ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !96
  %.not51.i = icmp samesign ult i64 %2, 5
  %.pre = zext i64 %i.h to i128                   ; 7 uses
  br i1 %.not51.i, label %.lr.ph64.i.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not4959.i = icmp eq i64 %i.bd, 0
  br i1 %.not4959.i, label %.thread80, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %.preheader50.i, %.preheader.i
  %.163.i.ph = phi ptr [ %i.e, %.preheader50.i ], [ %i.bc, %.preheader.i ] ; 3 uses
  %.14362.i.ph = phi ptr [ %i.f, %.preheader50.i ], [ %i.bb, %.preheader.i ] ; 3 uses
  %.14561.i.ph = phi i64 [ %i.g, %.preheader50.i ], [ %i.bd, %.preheader.i ] ; 4 uses
  %.14760.i.ph = phi i64 [ 0, %.preheader50.i ], [ %i.ba, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.14561.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.prol.loopexit, label %.lr.ph64.i.prol

.lr.ph64.i.prol:                                  ; preds = %.lr.ph64.i.preheader
  %i.i = load i64, ptr %.14362.i.ph, align 8, !tbaa !96
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %.pre, %i.j
  %i.l = zext i64 %.14760.i.ph to i128
  %i.m = add nuw i128 %i.k, %i.l                  ; 2 uses
  %i.n = trunc i128 %i.m to i64
  store i64 %i.n, ptr %.163.i.ph, align 8, !tbaa !96
  %i.o = lshr i128 %i.m, 64
  %i.p = trunc nuw i128 %i.o to i64               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.14362.i.ph, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.163.i.ph, i64 8
  %i.s = add nsw i64 %.14561.i.ph, -1
  br label %.lr.ph64.i.prol.loopexit

.lr.ph64.i.prol.loopexit:                         ; preds = %.lr.ph64.i.prol, %.lr.ph64.i.preheader
  %.lcssa163.unr = phi i64 [ poison, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %.163.i.unr = phi ptr [ %.163.i.ph, %.lr.ph64.i.preheader ], [ %i.r, %.lr.ph64.i.prol ]
  %.14362.i.unr = phi ptr [ %.14362.i.ph, %.lr.ph64.i.preheader ], [ %i.q, %.lr.ph64.i.prol ]
  %.14561.i.unr = phi i64 [ %.14561.i.ph, %.lr.ph64.i.preheader ], [ %i.s, %.lr.ph64.i.prol ]
  %.14760.i.unr = phi i64 [ %.14760.i.ph, %.lr.ph64.i.preheader ], [ %i.p, %.lr.ph64.i.prol ]
  %i.t = icmp eq i64 %.14561.i.ph, 1
  br i1 %i.t, label %.unr-lcssa, label %.lr.ph64.i

.thread80:                                        ; preds = %.preheader.i
  %i.u = getelementptr [8 x i8], ptr %0, i64 %2
  store i64 %i.ba, ptr %i.u, align 8, !tbaa !96
  br label %.lr.ph.preheader

.lr.ph.i:                                         ; preds = %.preheader50.i, %.lr.ph.i
  %.04155.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.e, %.preheader50.i ] ; 5 uses
  %.04254.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.f, %.preheader50.i ] ; 5 uses
  %.04453.i = phi i64 [ %i.bd, %.lr.ph.i ], [ %i.g, %.preheader50.i ]
  %.04652.i = phi i64 [ %i.ba, %.lr.ph.i ], [ 0, %.preheader50.i ]
  %i.v = load i64, ptr %.04254.i, align 8, !tbaa !96
  %i.w = zext i64 %i.v to i128
  %i.x = mul nuw i128 %i.w, %.pre
  %i.y = zext i64 %.04652.i to i128
  %i.z = add nuw i128 %i.x, %i.y                  ; 2 uses
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %.04155.i, align 8, !tbaa !96
  %i.ab = lshr i128 %i.z, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %.04254.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, %.pre
  %i.ag = add nuw i128 %i.af, %i.ab               ; 2 uses
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.04155.i, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !96
  %i.aj = lshr i128 %i.ag, 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.04254.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !96
  %i.am = zext i64 %i.al to i128
  %i.an = mul nuw i128 %i.am, %.pre
  %i.ao = add nuw i128 %i.an, %i.aj               ; 2 uses
  %i.ap = trunc i128 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.04155.i, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !96
  %i.ar = lshr i128 %i.ao, 64
  %i.as = getelementptr inbounds nuw i8, ptr %.04254.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96
  %i.au = zext i64 %i.at to i128
  %i.av = mul nuw i128 %i.au, %.pre
  %i.aw = add nuw i128 %i.av, %i.ar               ; 2 uses
  %i.ax = trunc i128 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.04155.i, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !96
  %i.az = lshr i128 %i.aw, 64
  %i.ba = trunc nuw i128 %i.az to i64             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04254.i, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04155.i, i64 32 ; 2 uses
  %i.bd = add i64 %.04453.i, -4                   ; 4 uses
  %.not.i = icmp ult i64 %i.bd, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !17

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.prol.loopexit, %.lr.ph64.i
  %.163.i = phi ptr [ %i.bv, %.lr.ph64.i ], [ %.163.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14362.i = phi ptr [ %i.bu, %.lr.ph64.i ], [ %.14362.i.unr, %.lr.ph64.i.prol.loopexit ] ; 3 uses
  %.14561.i = phi i64 [ %i.bw, %.lr.ph64.i ], [ %.14561.i.unr, %.lr.ph64.i.prol.loopexit ]
  %.14760.i = phi i64 [ %i.bt, %.lr.ph64.i ], [ %.14760.i.unr, %.lr.ph64.i.prol.loopexit ]
  %i.be = load i64, ptr %.14362.i, align 8, !tbaa !96
  %i.bf = zext i64 %i.be to i128
  %i.bg = mul nuw i128 %.pre, %i.bf
  %i.bh = zext i64 %.14760.i to i128
  %i.bi = add nuw i128 %i.bg, %i.bh               ; 2 uses
  %i.bj = trunc i128 %i.bi to i64
  store i64 %i.bj, ptr %.163.i, align 8, !tbaa !96
  %i.bk = lshr i128 %i.bi, 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.14362.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.163.i, i64 8
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !96
  %i.bo = zext i64 %i.bn to i128
  %i.bp = mul nuw i128 %.pre, %i.bo
  %i.bq = add nuw i128 %i.bp, %i.bk               ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !96
  %i.bs = lshr i128 %i.bq, 64
  %i.bt = trunc nuw i128 %i.bs to i64             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.14362.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.163.i, i64 16
  %i.bw = add nsw i64 %.14561.i, -2               ; 2 uses
  %.not49.i.1 = icmp eq i64 %i.bw, 0
  br i1 %.not49.i.1, label %.unr-lcssa, label %.lr.ph64.i, !llvm.loop !18

.unr-lcssa:                                       ; preds = %.lr.ph64.i, %.lr.ph64.i.prol.loopexit
  %.lcssa163 = phi i64 [ %.lcssa163.unr, %.lr.ph64.i.prol.loopexit ], [ %i.bt, %.lr.ph64.i ]
  %i.bx = getelementptr [8 x i8], ptr %0, i64 %2
  store i64 %.lcssa163, ptr %i.bx, align 8, !tbaa !96
  %or.cond = icmp samesign ult i64 %2, 3
  br i1 %or.cond, label %.lr.ph.i44.preheader, label %.lr.ph.preheader

.lr.ph.i44.preheader:                             ; preds = %.lr.ph, %.unr-lcssa
  br label %.lr.ph.i44

.lr.ph.preheader:                                 ; preds = %.thread80, %.unr-lcssa
  %.1102.ph = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0103.ph = add nsw i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0103 = phi i64 [ %i.cd, %.lr.ph ], [ %.0103.ph, %.lr.ph.preheader ] ; 3 uses
  %.1102 = phi ptr [ %i.cc, %.lr.ph ], [ %.1102.ph, %.lr.ph.preheader ] ; 3 uses
  %.141101 = phi ptr [ %i.by, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.141101, i64 8 ; 2 uses
  %i.bz = load i64, ptr %.141101, align 8, !tbaa !96
  %i.ca = tail call i64 @bn_mul_add_words(ptr noundef nonnull %.1102, ptr noundef nonnull %i.by, i64 noundef %.0103, i64 noundef %i.bz)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.1102, i64 %.0103
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !96
  %i.cc = getelementptr inbounds nuw i8, ptr %.1102, i64 16
  %i.cd = add nsw i64 %.0103, -1                  ; 2 uses
  %.not43 = icmp eq i64 %i.cd, 0
  br i1 %.not43, label %.lr.ph.i44.preheader, label %.lr.ph, !llvm.loop !926

.preheader.i46:                                   ; preds = %.lr.ph.i44
  %.not3453.i = icmp eq i64 %i.ds, 0
  br i1 %.not3453.i, label %.preheader44.i, label %.lr.ph59.i.preheader

.lr.ph59.i.preheader:                             ; preds = %bb.b, %.preheader.i46
  %.158.i.ph = phi i64 [ 2, %bb.b ], [ %i.ds, %.preheader.i46 ]
  %.13155.i.ph = phi ptr [ %0, %bb.b ], [ %i.dr, %.preheader.i46 ] ; 3 uses
  %.14154.i.ph = phi i64 [ 0, %bb.b ], [ %i.dq, %.preheader.i46 ]
  br label %.lr.ph59.i

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader, %.lr.ph.i44
  %.048.i = phi i64 [ %i.ds, %.lr.ph.i44 ], [ %i.b, %.lr.ph.i44.preheader ]
  %.02647.i = phi ptr [ %i.dr, %.lr.ph.i44 ], [ %0, %.lr.ph.i44.preheader ] ; 6 uses
  %.04044.i = phi i64 [ %i.dq, %.lr.ph.i44 ], [ 0, %.lr.ph.i44.preheader ]
  %i.ce = load i64, ptr %.02647.i, align 8, !tbaa !96 ; 2 uses
  %i.cf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ce, i64 %i.ce) ; 2 uses
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  %i.ch = extractvalue { i64, i1 } %i.cf, 0
  %i.ci = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ch, i64 %.04044.i) ; 2 uses
  %i.cj = extractvalue { i64, i1 } %i.ci, 1
  %i.ck = extractvalue { i64, i1 } %i.ci, 0
  %i.cl = or i1 %i.cg, %i.cj
  %i.cm = zext i1 %i.cl to i64
  store i64 %i.ck, ptr %.02647.i, align 8, !tbaa !96
  %i.cn = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !96 ; 2 uses
  %i.cp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.co, i64 %i.co) ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = extractvalue { i64, i1 } %i.cp, 0
  %i.cs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cr, i64 %i.cm) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = or i1 %i.cq, %i.ct
  %i.cw = zext i1 %i.cv to i64
  store i64 %i.cu, ptr %i.cn, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96 ; 2 uses
  %i.cz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cy, i64 %i.cy) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.db, i64 %i.cw) ; 2 uses
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  %i.de = extractvalue { i64, i1 } %i.dc, 0
  %i.df = or i1 %i.da, %i.dd
  %i.dg = zext i1 %i.df to i64
  store i64 %i.de, ptr %i.cx, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !96 ; 2 uses
  %i.dj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.di, i64 %i.di) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  %i.dl = extractvalue { i64, i1 } %i.dj, 0
  %i.dm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dl, i64 %i.dg) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  %i.do = extractvalue { i64, i1 } %i.dm, 0
  %i.dp = or i1 %i.dk, %i.dn
  %i.dq = zext i1 %i.dp to i64                    ; 2 uses
  store i64 %i.do, ptr %i.dh, align 8, !tbaa !96
  %i.dr = getelementptr i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.ds = add i64 %.048.i, -4                     ; 4 uses
  %.not.i45 = icmp ult i64 %i.ds, 4
  br i1 %.not.i45, label %.preheader.i46, label %.lr.ph.i44, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.eg, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.ee, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.ed, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.ef, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.ec, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.dt = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.du = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.dv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dt, i64 %i.du) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  %i.dx = extractvalue { i64, i1 } %i.dv, 0
  %i.dy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dx, i64 %.14154.i) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = extractvalue { i64, i1 } %i.dy, 0
  %i.eb = or i1 %i.dw, %i.dz
  %i.ec = zext i1 %i.eb to i64
  store i64 %i.ea, ptr %.13155.i, align 8, !tbaa !96
  %i.ed = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.eg = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.eg, 0
  br i1 %.not34.i, label %.preheader44.i, label %.lr.ph59.i, !llvm.loop !12

.preheader44.i:                                   ; preds = %.lr.ph59.i, %.preheader.i46
  %.not45.i = icmp samesign ult i64 %2, 4
  br i1 %.not45.i, label %.lr.ph55.i.preheader, label %.lr.ph.i47

.lr.ph55.i.preheader:                             ; preds = %.preheader.i50, %.preheader44.i
  %.154.i.ph = phi ptr [ %3, %.preheader44.i ], [ %i.gb, %.preheader.i50 ] ; 4 uses
  %.13953.i.ph = phi ptr [ %1, %.preheader44.i ], [ %i.ga, %.preheader.i50 ] ; 3 uses
  %.14152.i.ph = phi i64 [ %2, %.preheader44.i ], [ %i.gc, %.preheader.i50 ] ; 4 uses
  %xtraiter168 = and i64 %.14152.i.ph, 1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph55.i.prol.loopexit, label %.lr.ph55.i.prol

.lr.ph55.i.prol:                                  ; preds = %.lr.ph55.i.preheader
  %i.eh = load i64, ptr %.13953.i.ph, align 8, !tbaa !96
  %i.ei = zext i64 %i.eh to i128                  ; 2 uses
  %i.ej = mul nuw i128 %i.ei, %i.ei               ; 2 uses
  %i.ek = trunc i128 %i.ej to i64
  store i64 %i.ek, ptr %.154.i.ph, align 8, !tbaa !96
  %i.el = lshr i128 %i.ej, 64
  %i.em = trunc nuw i128 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %.154.i.ph, i64 8
  store i64 %i.em, ptr %i.en, align 8, !tbaa !96
  %i.eo = getelementptr inbounds nuw i8, ptr %.13953.i.ph, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.154.i.ph, i64 16
  %i.eq = add nsw i64 %.14152.i.ph, -1
  br label %.lr.ph55.i.prol.loopexit

.lr.ph55.i.prol.loopexit:                         ; preds = %.lr.ph55.i.prol, %.lr.ph55.i.preheader
  %.154.i.unr = phi ptr [ %.154.i.ph, %.lr.ph55.i.preheader ], [ %i.ep, %.lr.ph55.i.prol ]
  %.13953.i.unr = phi ptr [ %.13953.i.ph, %.lr.ph55.i.preheader ], [ %i.eo, %.lr.ph55.i.prol ]
  %.14152.i.unr = phi i64 [ %.14152.i.ph, %.lr.ph55.i.preheader ], [ %i.eq, %.lr.ph55.i.prol ]
  %i.er = icmp eq i64 %.14152.i.ph, 1
  br i1 %i.er, label %.preheader42.i52, label %.lr.ph55.i

.preheader.i50:                                   ; preds = %.lr.ph.i47
  %.not4351.i = icmp eq i64 %i.gc, 0
  br i1 %.not4351.i, label %.lr.ph.i54.preheader, label %.lr.ph55.i.preheader

.lr.ph.i47:                                       ; preds = %.preheader44.i, %.lr.ph.i47
  %.048.i48 = phi ptr [ %i.gb, %.lr.ph.i47 ], [ %3, %.preheader44.i ] ; 9 uses
  %.03847.i = phi ptr [ %i.ga, %.lr.ph.i47 ], [ %1, %.preheader44.i ] ; 5 uses
  %.04046.i = phi i64 [ %i.gc, %.lr.ph.i47 ], [ %2, %.preheader44.i ]
  %i.es = load i64, ptr %.03847.i, align 8, !tbaa !96
  %i.et = zext i64 %i.es to i128                  ; 2 uses
  %i.eu = mul nuw i128 %i.et, %i.et               ; 2 uses
  %i.ev = trunc i128 %i.eu to i64
  store i64 %i.ev, ptr %.048.i48, align 8, !tbaa !96
  %i.ew = lshr i128 %i.eu, 64
  %i.ex = trunc nuw i128 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.048.i48, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !96
  %i.ez = getelementptr inbounds nuw i8, ptr %.03847.i, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !96
  %i.fb = zext i64 %i.fa to i128                  ; 2 uses
  %i.fc = mul nuw i128 %i.fb, %i.fb               ; 2 uses
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %.048.i48, i64 16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !96
  %i.ff = lshr i128 %i.fc, 64
  %i.fg = trunc nuw i128 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.048.i48, i64 24
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !96
  %i.fi = getelementptr inbounds nuw i8, ptr %.03847.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !96
  %i.fk = zext i64 %i.fj to i128                  ; 2 uses
  %i.fl = mul nuw i128 %i.fk, %i.fk               ; 2 uses
  %i.fm = trunc i128 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.048.i48, i64 32
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !96
  %i.fo = lshr i128 %i.fl, 64
  %i.fp = trunc nuw i128 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.048.i48, i64 40
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !96
  %i.fr = getelementptr inbounds nuw i8, ptr %.03847.i, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !96
  %i.ft = zext i64 %i.fs to i128                  ; 2 uses
  %i.fu = mul nuw i128 %i.ft, %i.ft               ; 2 uses
  %i.fv = trunc i128 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.048.i48, i64 48
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !96
  %i.fx = lshr i128 %i.fu, 64
  %i.fy = trunc nuw i128 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %.048.i48, i64 56
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !96
  %i.ga = getelementptr inbounds nuw i8, ptr %.03847.i, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.048.i48, i64 64 ; 2 uses
  %i.gc = add i64 %.04046.i, -4                   ; 4 uses
  %.not.i49 = icmp ult i64 %i.gc, 4
  br i1 %.not.i49, label %.preheader.i50, label %.lr.ph.i47, !llvm.loop !24

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.prol.loopexit, %.lr.ph55.i
  %.154.i = phi ptr [ %i.gu, %.lr.ph55.i ], [ %.154.i.unr, %.lr.ph55.i.prol.loopexit ] ; 5 uses
  %.13953.i = phi ptr [ %i.gt, %.lr.ph55.i ], [ %.13953.i.unr, %.lr.ph55.i.prol.loopexit ] ; 3 uses
  %.14152.i = phi i64 [ %i.gv, %.lr.ph55.i ], [ %.14152.i.unr, %.lr.ph55.i.prol.loopexit ]
  %i.gd = load i64, ptr %.13953.i, align 8, !tbaa !96
  %i.ge = zext i64 %i.gd to i128                  ; 2 uses
  %i.gf = mul nuw i128 %i.ge, %i.ge               ; 2 uses
  %i.gg = trunc i128 %i.gf to i64
  store i64 %i.gg, ptr %.154.i, align 8, !tbaa !96
  %i.gh = lshr i128 %i.gf, 64
  %i.gi = trunc nuw i128 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.154.i, i64 8
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !96
  %i.gk = getelementptr inbounds nuw i8, ptr %.13953.i, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.154.i, i64 16
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !96
  %i.gn = zext i64 %i.gm to i128                  ; 2 uses
  %i.go = mul nuw i128 %i.gn, %i.gn               ; 2 uses
  %i.gp = trunc i128 %i.go to i64
  store i64 %i.gp, ptr %i.gl, align 8, !tbaa !96
  %i.gq = lshr i128 %i.go, 64
  %i.gr = trunc nuw i128 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %.154.i, i64 24
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !96
  %i.gt = getelementptr inbounds nuw i8, ptr %.13953.i, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.154.i, i64 32
  %i.gv = add nsw i64 %.14152.i, -2               ; 2 uses
  %.not43.i51.1 = icmp eq i64 %i.gv, 0
  br i1 %.not43.i51.1, label %.preheader42.i52, label %.lr.ph55.i, !llvm.loop !25

.preheader42.i52:                                 ; preds = %.lr.ph55.i, %.lr.ph55.i.prol.loopexit
  br i1 %.not, label %.lr.ph59.i69.preheader, label %.lr.ph.i54.preheader

.lr.ph.i54.preheader:                             ; preds = %.preheader.i50, %.preheader42.i52
  br label %.lr.ph.i54

.lr.ph59.i69.preheader:                           ; preds = %.preheader.i61, %.preheader42.i52
  %.158.i70.ph = phi i64 [ 2, %.preheader42.i52 ], [ %i.is, %.preheader.i61 ]
  %.12757.i71.ph = phi ptr [ %3, %.preheader42.i52 ], [ %i.ir, %.preheader.i61 ]
  %.13155.i73.ph = phi ptr [ %0, %.preheader42.i52 ], [ %i.iq, %.preheader.i61 ] ; 2 uses
  %.14154.i74.ph = phi i64 [ 0, %.preheader42.i52 ], [ %i.ip, %.preheader.i61 ]
  br label %.lr.ph59.i69

.preheader.i61:                                   ; preds = %.lr.ph.i54
  %.not3453.i62 = icmp eq i64 %i.is, 0
  br i1 %.not3453.i62, label %bn_add_words.exit77, label %.lr.ph59.i69.preheader

.lr.ph.i54:                                       ; preds = %.lr.ph.i54.preheader, %.lr.ph.i54
  %.048.i55 = phi i64 [ %i.is, %.lr.ph.i54 ], [ %i.b, %.lr.ph.i54.preheader ]
  %.02647.i56 = phi ptr [ %i.ir, %.lr.ph.i54 ], [ %3, %.lr.ph.i54.preheader ] ; 5 uses
  %.02846.i57 = phi ptr [ %i.iq, %.lr.ph.i54 ], [ %0, %.lr.ph.i54.preheader ] ; 6 uses
  %.04044.i59 = phi i64 [ %i.ip, %.lr.ph.i54 ], [ 0, %.lr.ph.i54.preheader ]
  %i.gw = load i64, ptr %.02846.i57, align 8, !tbaa !96
  %i.gx = load i64, ptr %.02647.i56, align 8, !tbaa !96
  %i.gy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gw, i64 %i.gx) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  %i.ha = extractvalue { i64, i1 } %i.gy, 0
  %i.hb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ha, i64 %.04044.i59) ; 2 uses
  %i.hc = extractvalue { i64, i1 } %i.hb, 1
  %i.hd = extractvalue { i64, i1 } %i.hb, 0
  %i.he = or i1 %i.gz, %i.hc
  %i.hf = zext i1 %i.he to i64
  store i64 %i.hd, ptr %.02846.i57, align 8, !tbaa !96
  %i.hg = getelementptr inbounds nuw i8, ptr %.02846.i57, i64 8 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !96
  %i.hi = getelementptr inbounds nuw i8, ptr %.02647.i56, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !96
  %i.hk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hh, i64 %i.hj) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  %i.hm = extractvalue { i64, i1 } %i.hk, 0
  %i.hn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hm, i64 %i.hf) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 1
  %i.hp = extractvalue { i64, i1 } %i.hn, 0
  %i.hq = or i1 %i.hl, %i.ho
  %i.hr = zext i1 %i.hq to i64
  store i64 %i.hp, ptr %i.hg, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %.02846.i57, i64 16 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = getelementptr inbounds nuw i8, ptr %.02647.i56, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !96
  %i.hw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ht, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hy, i64 %i.hr) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64
  store i64 %i.ib, ptr %i.hs, align 8, !tbaa !96
  %i.ie = getelementptr inbounds nuw i8, ptr %.02846.i57, i64 24 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %.02647.i56, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !96
  %i.ii = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.if, i64 %i.ih) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  %i.il = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ik, i64 %i.id) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0
  %i.io = or i1 %i.ij, %i.im
  %i.ip = zext i1 %i.io to i64                    ; 2 uses
  store i64 %i.in, ptr %i.ie, align 8, !tbaa !96
  %i.iq = getelementptr i8, ptr %.02846.i57, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.02647.i56, i64 32 ; 2 uses
  %i.is = add i64 %.048.i55, -4                   ; 4 uses
  %.not.i60 = icmp ult i64 %i.is, 4
  br i1 %.not.i60, label %.preheader.i61, label %.lr.ph.i54, !llvm.loop !11

.lr.ph59.i69:                                     ; preds = %.lr.ph59.i69.preheader, %.lr.ph59.i69
  %.158.i70 = phi i64 [ %i.jg, %.lr.ph59.i69 ], [ %.158.i70.ph, %.lr.ph59.i69.preheader ]
  %.12757.i71 = phi ptr [ %i.je, %.lr.ph59.i69 ], [ %.12757.i71.ph, %.lr.ph59.i69.preheader ] ; 2 uses
  %.12956.i72 = phi ptr [ %i.jd, %.lr.ph59.i69 ], [ %.13155.i73.ph, %.lr.ph59.i69.preheader ] ; 2 uses
  %.13155.i73 = phi ptr [ %i.jf, %.lr.ph59.i69 ], [ %.13155.i73.ph, %.lr.ph59.i69.preheader ] ; 2 uses
  %.14154.i74 = phi i64 [ %i.jc, %.lr.ph59.i69 ], [ %.14154.i74.ph, %.lr.ph59.i69.preheader ]
  %i.it = load i64, ptr %.12956.i72, align 8, !tbaa !96
  %i.iu = load i64, ptr %.12757.i71, align 8, !tbaa !96
  %i.iv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.it, i64 %i.iu) ; 2 uses
  %i.iw = extractvalue { i64, i1 } %i.iv, 1
  %i.ix = extractvalue { i64, i1 } %i.iv, 0
  %i.iy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ix, i64 %.14154.i74) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  %i.ja = extractvalue { i64, i1 } %i.iy, 0
  %i.jb = or i1 %i.iw, %i.iz
  %i.jc = zext i1 %i.jb to i64
  store i64 %i.ja, ptr %.13155.i73, align 8, !tbaa !96
  %i.jd = getelementptr inbounds nuw i8, ptr %.12956.i72, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %.12757.i71, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %.13155.i73, i64 8
  %i.jg = add nsw i64 %.158.i70, -1               ; 2 uses
  %.not34.i75 = icmp eq i64 %i.jg, 0
  br i1 %.not34.i75, label %bn_add_words.exit77, label %.lr.ph59.i69, !llvm.loop !12

bn_add_words.exit77:                              ; preds = %.lr.ph59.i69, %.preheader.i61, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 8, 2147483648) %2, ptr noundef %3) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i64 %2, 8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bn_sqr_comba8(ptr noundef %0, ptr noundef %1)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 16
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.c = lshr i64 %2, 1                           ; 14 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c ; 3 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.idx = shl nuw nsw i64 %2, 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %.not3453.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not3453.i.i, label %bn_sub_words.exit.i, label %.lr.ph59.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.e
  %.048.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %i.c, %bb.e ]
  %.02647.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %i.d, %bb.e ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %1, %bb.e ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.e, %bb.e ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.g = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.h = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.i = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.k, i64 %.04044.i.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = or i1 %i.j, %i.m
  %i.p = zext i1 %i.o to i64
  store i64 %i.n, ptr %.03045.i.i, align 8, !tbaa !96
  %i.q = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !96
  %i.u = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  %i.w = extractvalue { i64, i1 } %i.u, 0
  %i.x = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.w, i64 %i.p) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = or i1 %i.v, %i.y
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !96
  %i.af = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !96
  %i.ah = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ae, i64 %i.ag) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  %i.aj = extractvalue { i64, i1 } %i.ah, 0
  %i.ak = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.aj, i64 %i.ab) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = or i1 %i.ai, %i.al
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !96
  %i.au = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ar, i64 %i.at) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  %i.ax = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.aw, i64 %i.ao) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %i.ba = or i1 %i.av, %i.ay                      ; 2 uses
  %i.bb = zext i1 %i.ba to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.bg = add nsw i64 %.048.i.i, -4               ; 4 uses
  %.not.i.i = icmp ult i64 %i.bg, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.bu, %.lr.ph59.i.i ], [ %i.bg, %.preheader.i.i ]
  %.12757.i.i = phi ptr [ %i.bs, %.lr.ph59.i.i ], [ %i.be, %.preheader.i.i ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.br, %.lr.ph59.i.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.bt, %.lr.ph59.i.i ], [ %i.bf, %.preheader.i.i ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.bq, %.lr.ph59.i.i ], [ %i.bb, %.preheader.i.i ]
  %i.bh = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.bi = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.bj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bh, i64 %i.bi) ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %i.bm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bl, i64 %.14154.i.i) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = or i1 %i.bk, %i.bn                      ; 2 uses
  %i.bq = zext i1 %i.bp to i64
  store i64 %i.bo, ptr %.13155.i.i, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.bu = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not34.i.i, label %bn_sub_words.exit.i, label %.lr.ph59.i.i, !llvm.loop !14

bn_sub_words.exit.i:                              ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.neg.in.i = phi i1 [ %i.ba, %.preheader.i.i ], [ %i.bp, %.lr.ph59.i.i ]
  br label %.lr.ph.i12.i

.preheader.i19.i:                                 ; preds = %.lr.ph.i12.i
  %.032.i.neg.i = sext i1 %.032.i.neg.in.i to i64
  %.not3453.i20.i = icmp eq i64 %i.dv, 0
  br i1 %.not3453.i20.i, label %bn_sub_words.exit30.i, label %.lr.ph59.i22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %bn_sub_words.exit.i
  %.048.i13.i = phi i64 [ %i.dv, %.lr.ph.i12.i ], [ %i.c, %bn_sub_words.exit.i ]
  %.02647.i14.i = phi ptr [ %i.dt, %.lr.ph.i12.i ], [ %1, %bn_sub_words.exit.i ] ; 5 uses
  %.02846.i15.i = phi ptr [ %i.ds, %.lr.ph.i12.i ], [ %i.d, %bn_sub_words.exit.i ] ; 5 uses
  %.03045.i16.i = phi ptr [ %i.du, %.lr.ph.i12.i ], [ %3, %bn_sub_words.exit.i ] ; 5 uses
  %.04044.i17.i = phi i64 [ %i.dq, %.lr.ph.i12.i ], [ 0, %bn_sub_words.exit.i ]
  %i.bv = load i64, ptr %.02846.i15.i, align 8, !tbaa !96
  %i.bw = load i64, ptr %.02647.i14.i, align 8, !tbaa !96
  %i.bx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bv, i64 %i.bw) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  %i.ca = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bz, i64 %.04044.i17.i) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = or i1 %i.by, %i.cb
  %i.ce = zext i1 %i.cd to i64
  store i64 %i.cc, ptr %.03045.i16.i, align 8, !tbaa !96
  %i.cf = getelementptr inbounds nuw i8, ptr %.02846.i15.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %.02647.i14.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !96
  %i.cj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cg, i64 %i.ci) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = extractvalue { i64, i1 } %i.cj, 0
  %i.cm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cl, i64 %i.ce) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  %i.cp = or i1 %i.ck, %i.cn
  %i.cq = zext i1 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %.03045.i16.i, i64 8
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !96
  %i.cs = getelementptr inbounds nuw i8, ptr %.02846.i15.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !96
  %i.cu = getelementptr inbounds nuw i8, ptr %.02647.i14.i, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !96
  %i.cw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ct, i64 %i.cv) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0
  %i.cz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cy, i64 %i.cq) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = or i1 %i.cx, %i.da
  %i.dd = zext i1 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.03045.i16.i, i64 16
  store i64 %i.db, ptr %i.de, align 8, !tbaa !96
  %i.df = getelementptr inbounds nuw i8, ptr %.02846.i15.i, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %.02647.i14.i, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !96
  %i.dj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dg, i64 %i.di) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 1
  %i.dl = extractvalue { i64, i1 } %i.dj, 0
  %i.dm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dl, i64 %i.dd) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  %i.do = extractvalue { i64, i1 } %i.dm, 0
  %i.dp = or i1 %i.dk, %i.dn
  %i.dq = zext i1 %i.dp to i64                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.03045.i16.i, i64 24
  store i64 %i.do, ptr %i.dr, align 8, !tbaa !96
  %i.ds = getelementptr inbounds nuw i8, ptr %.02846.i15.i, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02647.i14.i, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.03045.i16.i, i64 32 ; 2 uses
  %i.dv = add nsw i64 %.048.i13.i, -4             ; 4 uses
  %.not.i18.i = icmp ult i64 %i.dv, 4
  br i1 %.not.i18.i, label %.preheader.i19.i, label %.lr.ph.i12.i, !llvm.loop !13

.lr.ph59.i22.i:                                   ; preds = %.preheader.i19.i, %.lr.ph59.i22.i
  %.158.i23.i = phi i64 [ %i.ej, %.lr.ph59.i22.i ], [ %i.dv, %.preheader.i19.i ]
  %.12757.i24.i = phi ptr [ %i.eh, %.lr.ph59.i22.i ], [ %i.dt, %.preheader.i19.i ] ; 2 uses
  %.12956.i25.i = phi ptr [ %i.eg, %.lr.ph59.i22.i ], [ %i.ds, %.preheader.i19.i ] ; 2 uses
  %.13155.i26.i = phi ptr [ %i.ei, %.lr.ph59.i22.i ], [ %i.du, %.preheader.i19.i ] ; 2 uses
  %.14154.i27.i = phi i64 [ %i.ef, %.lr.ph59.i22.i ], [ %i.dq, %.preheader.i19.i ]
  %i.dw = load i64, ptr %.12956.i25.i, align 8, !tbaa !96
  %i.dx = load i64, ptr %.12757.i24.i, align 8, !tbaa !96
  %i.dy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dw, i64 %i.dx) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = extractvalue { i64, i1 } %i.dy, 0
  %i.eb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ea, i64 %.14154.i27.i) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  %i.ed = extractvalue { i64, i1 } %i.eb, 0
  %i.ee = or i1 %i.dz, %i.ec
  %i.ef = zext i1 %i.ee to i64
  store i64 %i.ed, ptr %.13155.i26.i, align 8, !tbaa !96
  %i.eg = getelementptr inbounds nuw i8, ptr %.12956.i25.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.12757.i24.i, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.13155.i26.i, i64 8
  %i.ej = add nsw i64 %.158.i23.i, -1             ; 2 uses
  %.not34.i28.i = icmp eq i64 %i.ej, 0
  br i1 %.not34.i28.i, label %bn_sub_words.exit30.i, label %.lr.ph59.i22.i, !llvm.loop !14

bn_sub_words.exit30.i:                            ; preds = %.lr.ph59.i22.i, %.preheader.i19.i
  %i.ek = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i.neg.i) #38, !srcloc !108 ; 3 uses
  %i.el = xor i64 %i.ek, -1                       ; 2 uses
  %n.vec = and i64 %i.c, 1073741820               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ek, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert236 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat237 = shufflevector <2 x i64> %broadcast.splatinsert236, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bn_sub_words.exit30.i
  %index = phi i64 [ 0, %bn_sub_words.exit30.i ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.em, align 8, !tbaa !96
  %wide.load238 = load <2 x i64>, ptr %i.en, align 8, !tbaa !96
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load239 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !96
  %wide.load240 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !96
  %i.eq = and <2 x i64> %wide.load, %broadcast.splat
  %i.er = and <2 x i64> %wide.load238, %broadcast.splat
  %i.es = and <2 x i64> %wide.load239, %broadcast.splat237
  %i.et = and <2 x i64> %wide.load240, %broadcast.splat237
  %i.eu = or disjoint <2 x i64> %i.es, %i.eq
  %i.ev = or disjoint <2 x i64> %i.et, %i.er
  store <2 x i64> %i.eu, ptr %i.em, align 8, !tbaa !96
  store <2 x i64> %i.ev, ptr %i.en, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.09.i.i = phi i64 [ %i.fe, %scalar.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09.i.i ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !96
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.09.i.i
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !96
  %i.fb = and i64 %i.ey, %i.ek
  %i.fc = and i64 %i.fa, %i.el
  %i.fd = or disjoint i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !96
  %i.fe = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fe, %i.c
  br i1 %exitcond.not.i.i, label %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit, label %scalar.ph, !llvm.loop !928

_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit:            ; preds = %scalar.ph, %middle.block
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %2 ; 3 uses
  tail call fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef nonnull %i.ff, ptr noundef nonnull %3, i64 noundef %i.c, ptr noundef nonnull %i.f)
  tail call fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull %i.f)
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  tail call fastcc void @_ZL16bn_sqr_recursivePmPKmmS_(ptr noundef nonnull %i.fg, ptr noundef %i.d, i64 noundef %i.c, ptr noundef nonnull %i.f)
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.hh, 0
  br i1 %.not3453.i, label %bn_add_words.exit, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit, %.lr.ph.i
  %.048.i = phi i64 [ %i.hh, %.lr.ph.i ], [ %2, %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit ]
  %.02647.i = phi ptr [ %i.hf, %.lr.ph.i ], [ %i.fg, %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit ] ; 5 uses
  %.02846.i = phi ptr [ %i.he, %.lr.ph.i ], [ %0, %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit ] ; 5 uses
  %.03045.i = phi ptr [ %i.hg, %.lr.ph.i ], [ %3, %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit ] ; 5 uses
  %.04044.i = phi i64 [ %i.hc, %.lr.ph.i ], [ 0, %_ZL16bn_abs_sub_wordsPmPKmS1_mS_.exit ]
  %i.fh = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.fi = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.fj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fh, i64 %i.fi) ; 2 uses
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  %i.fl = extractvalue { i64, i1 } %i.fj, 0
  %i.fm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fl, i64 %.04044.i) ; 2 uses
  %i.fn = extractvalue { i64, i1 } %i.fm, 1
  %i.fo = extractvalue { i64, i1 } %i.fm, 0
  %i.fp = or i1 %i.fk, %i.fn
  %i.fq = zext i1 %i.fp to i64
  store i64 %i.fo, ptr %.03045.i, align 8, !tbaa !96
  %i.fr = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !96
  %i.ft = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !96
  %i.fv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fs, i64 %i.fu) ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  %i.fx = extractvalue { i64, i1 } %i.fv, 0
  %i.fy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fx, i64 %i.fq) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  %i.ga = extractvalue { i64, i1 } %i.fy, 0
  %i.gb = or i1 %i.fw, %i.fz
  %i.gc = zext i1 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !96
  %i.ge = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !96
  %i.gi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gf, i64 %i.gh) ; 2 uses
  %i.gj = extractvalue { i64, i1 } %i.gi, 1
  %i.gk = extractvalue { i64, i1 } %i.gi, 0
  %i.gl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gk, i64 %i.gc) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  %i.gn = extractvalue { i64, i1 } %i.gl, 0
  %i.go = or i1 %i.gj, %i.gm
  %i.gp = zext i1 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.gn, ptr %i.gq, align 8, !tbaa !96
  %i.gr = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !96
  %i.gt = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !96
  %i.gv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gs, i64 %i.gu) ; 2 uses
  %i.gw = extractvalue { i64, i1 } %i.gv, 1
  %i.gx = extractvalue { i64, i1 } %i.gv, 0
  %i.gy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gx, i64 %i.gp) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1
  %i.ha = extractvalue { i64, i1 } %i.gy, 0
  %i.hb = or i1 %i.gw, %i.gz
  %i.hc = zext i1 %i.hb to i64                    ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.ha, ptr %i.hd, align 8, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.hh = add nsw i64 %.048.i, -4                 ; 4 uses
  %.not.i = icmp ult i64 %i.hh, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.preheader.i, %.lr.ph59.i
  %.158.i = phi i64 [ %i.hv, %.lr.ph59.i ], [ %i.hh, %.preheader.i ]
  %.12757.i = phi ptr [ %i.ht, %.lr.ph59.i ], [ %i.hf, %.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.hs, %.lr.ph59.i ], [ %i.he, %.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.hu, %.lr.ph59.i ], [ %i.hg, %.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.hr, %.lr.ph59.i ], [ %i.hc, %.preheader.i ]
  %i.hi = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.hj = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.hk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hi, i64 %i.hj) ; 2 uses
  %i.hl = extractvalue { i64, i1 } %i.hk, 1
  %i.hm = extractvalue { i64, i1 } %i.hk, 0
  %i.hn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hm, i64 %.14154.i) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 1
  %i.hp = extractvalue { i64, i1 } %i.hn, 0
  %i.hq = or i1 %i.hl, %i.ho
  %i.hr = zext i1 %i.hq to i64                    ; 2 uses
  store i64 %i.hp, ptr %.13155.i, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.hv = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.hv, 0
  br i1 %.not34.i, label %bn_add_words.exit, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.hc, %.preheader.i ], [ %i.hr, %.lr.ph59.i ]
  br label %.lr.ph.i72

.preheader.i79:                                   ; preds = %.lr.ph.i72
  %.not3453.i80 = icmp eq i64 %i.js, 0
  br i1 %.not3453.i80, label %bn_sub_words.exit, label %.lr.ph59.i82

.lr.ph.i72:                                       ; preds = %bn_add_words.exit, %.lr.ph.i72
  %.048.i73 = phi i64 [ %i.js, %.lr.ph.i72 ], [ %2, %bn_add_words.exit ]
  %.02647.i74 = phi ptr [ %i.jr, %.lr.ph.i72 ], [ %i.ff, %bn_add_words.exit ] ; 6 uses
  %.02846.i75 = phi ptr [ %i.jq, %.lr.ph.i72 ], [ %3, %bn_add_words.exit ] ; 5 uses
  %.04044.i77 = phi i64 [ %i.jp, %.lr.ph.i72 ], [ 0, %bn_add_words.exit ]
  %i.hw = load i64, ptr %.02846.i75, align 8, !tbaa !96
  %i.hx = load i64, ptr %.02647.i74, align 8, !tbaa !96
  %i.hy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hw, i64 %i.hx) ; 2 uses
  %i.hz = extractvalue { i64, i1 } %i.hy, 1
  %i.ia = extractvalue { i64, i1 } %i.hy, 0
  %i.ib = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ia, i64 %.04044.i77) ; 2 uses
  %i.ic = extractvalue { i64, i1 } %i.ib, 1
  %i.id = extractvalue { i64, i1 } %i.ib, 0
  %i.ie = or i1 %i.hz, %i.ic
  %i.if = zext i1 %i.ie to i64
  store i64 %i.id, ptr %.02647.i74, align 8, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %.02846.i75, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !96
  %i.ii = getelementptr inbounds nuw i8, ptr %.02647.i74, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !96
  %i.ik = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ih, i64 %i.ij) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 1
  %i.im = extractvalue { i64, i1 } %i.ik, 0
  %i.in = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.im, i64 %i.if) ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 1
  %i.ip = extractvalue { i64, i1 } %i.in, 0
  %i.iq = or i1 %i.il, %i.io
  %i.ir = zext i1 %i.iq to i64
  store i64 %i.ip, ptr %i.ii, align 8, !tbaa !96
  %i.is = getelementptr inbounds nuw i8, ptr %.02846.i75, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !96
  %i.iu = getelementptr inbounds nuw i8, ptr %.02647.i74, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !96
  %i.iw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.it, i64 %i.iv) ; 2 uses
  %i.ix = extractvalue { i64, i1 } %i.iw, 1
  %i.iy = extractvalue { i64, i1 } %i.iw, 0
  %i.iz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iy, i64 %i.ir) ; 2 uses
  %i.ja = extractvalue { i64, i1 } %i.iz, 1
  %i.jb = extractvalue { i64, i1 } %i.iz, 0
  %i.jc = or i1 %i.ix, %i.ja
  %i.jd = zext i1 %i.jc to i64
  store i64 %i.jb, ptr %i.iu, align 8, !tbaa !96
  %i.je = getelementptr inbounds nuw i8, ptr %.02846.i75, i64 24
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !96
  %i.jg = getelementptr inbounds nuw i8, ptr %.02647.i74, i64 24 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !96
  %i.ji = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.jf, i64 %i.jh) ; 2 uses
  %i.jj = extractvalue { i64, i1 } %i.ji, 1
  %i.jk = extractvalue { i64, i1 } %i.ji, 0
  %i.jl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.jk, i64 %i.jd) ; 2 uses
  %i.jm = extractvalue { i64, i1 } %i.jl, 1
  %i.jn = extractvalue { i64, i1 } %i.jl, 0
  %i.jo = or i1 %i.jj, %i.jm                      ; 2 uses
  %i.jp = zext i1 %i.jo to i64                    ; 2 uses
  store i64 %i.jn, ptr %i.jg, align 8, !tbaa !96
  %i.jq = getelementptr inbounds nuw i8, ptr %.02846.i75, i64 32 ; 2 uses
  %i.jr = getelementptr i8, ptr %.02647.i74, i64 32 ; 2 uses
  %i.js = add nsw i64 %.048.i73, -4               ; 4 uses
  %.not.i78 = icmp ult i64 %i.js, 4
  br i1 %.not.i78, label %.preheader.i79, label %.lr.ph.i72, !llvm.loop !13

.lr.ph59.i82:                                     ; preds = %.preheader.i79, %.lr.ph59.i82
  %.158.i83 = phi i64 [ %i.kf, %.lr.ph59.i82 ], [ %i.js, %.preheader.i79 ]
  %.12757.i84 = phi ptr [ %i.ke, %.lr.ph59.i82 ], [ %i.jr, %.preheader.i79 ] ; 3 uses
  %.12956.i85 = phi ptr [ %i.kd, %.lr.ph59.i82 ], [ %i.jq, %.preheader.i79 ] ; 2 uses
  %.14154.i87 = phi i64 [ %i.kc, %.lr.ph59.i82 ], [ %i.jp, %.preheader.i79 ]
  %i.jt = load i64, ptr %.12956.i85, align 8, !tbaa !96
  %i.ju = load i64, ptr %.12757.i84, align 8, !tbaa !96
  %i.jv = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.jt, i64 %i.ju) ; 2 uses
  %i.jw = extractvalue { i64, i1 } %i.jv, 1
  %i.jx = extractvalue { i64, i1 } %i.jv, 0
  %i.jy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.jx, i64 %.14154.i87) ; 2 uses
  %i.jz = extractvalue { i64, i1 } %i.jy, 1
  %i.ka = extractvalue { i64, i1 } %i.jy, 0
  %i.kb = or i1 %i.jw, %i.jz                      ; 2 uses
  %i.kc = zext i1 %i.kb to i64
  store i64 %i.ka, ptr %.12757.i84, align 8, !tbaa !96
  %i.kd = getelementptr inbounds nuw i8, ptr %.12956.i85, i64 8
  %i.ke = getelementptr i8, ptr %.12757.i84, i64 8
  %i.kf = add nsw i64 %.158.i83, -1               ; 2 uses
  %.not34.i88 = icmp eq i64 %i.kf, 0
  br i1 %.not34.i88, label %bn_sub_words.exit, label %.lr.ph59.i82, !llvm.loop !14

bn_sub_words.exit:                                ; preds = %.lr.ph59.i82, %.preheader.i79
  %.032.i89.neg141.in = phi i1 [ %i.jo, %.preheader.i79 ], [ %i.kb, %.lr.ph59.i82 ]
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  br label %.lr.ph.i90

.preheader.i97:                                   ; preds = %.lr.ph.i90
  %.032.i89.neg141 = sext i1 %.032.i89.neg141.in to i64
  %i.kh = add nsw i64 %.032.i, %.032.i89.neg141
  %.not3453.i98 = icmp eq i64 %i.me, 0
  br i1 %.not3453.i98, label %bn_add_words.exit108, label %.lr.ph59.i100

.lr.ph.i90:                                       ; preds = %bn_sub_words.exit, %.lr.ph.i90
  %.048.i91 = phi i64 [ %i.me, %.lr.ph.i90 ], [ %2, %bn_sub_words.exit ]
  %.02647.i92 = phi ptr [ %i.md, %.lr.ph.i90 ], [ %i.ff, %bn_sub_words.exit ] ; 5 uses
  %.02846.i93 = phi ptr [ %i.mc, %.lr.ph.i90 ], [ %i.kg, %bn_sub_words.exit ] ; 6 uses
  %.04044.i95 = phi i64 [ %i.mb, %.lr.ph.i90 ], [ 0, %bn_sub_words.exit ]
  %i.ki = load i64, ptr %.02846.i93, align 8, !tbaa !96
  %i.kj = load i64, ptr %.02647.i92, align 8, !tbaa !96
  %i.kk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ki, i64 %i.kj) ; 2 uses
  %i.kl = extractvalue { i64, i1 } %i.kk, 1
  %i.km = extractvalue { i64, i1 } %i.kk, 0
  %i.kn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.km, i64 %.04044.i95) ; 2 uses
  %i.ko = extractvalue { i64, i1 } %i.kn, 1
  %i.kp = extractvalue { i64, i1 } %i.kn, 0
  %i.kq = or i1 %i.kl, %i.ko
  %i.kr = zext i1 %i.kq to i64
  store i64 %i.kp, ptr %.02846.i93, align 8, !tbaa !96
  %i.ks = getelementptr inbounds nuw i8, ptr %.02846.i93, i64 8 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !96
  %i.ku = getelementptr inbounds nuw i8, ptr %.02647.i92, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !96
  %i.kw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kt, i64 %i.kv) ; 2 uses
  %i.kx = extractvalue { i64, i1 } %i.kw, 1
  %i.ky = extractvalue { i64, i1 } %i.kw, 0
  %i.kz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ky, i64 %i.kr) ; 2 uses
  %i.la = extractvalue { i64, i1 } %i.kz, 1
  %i.lb = extractvalue { i64, i1 } %i.kz, 0
  %i.lc = or i1 %i.kx, %i.la
  %i.ld = zext i1 %i.lc to i64
  store i64 %i.lb, ptr %i.ks, align 8, !tbaa !96
  %i.le = getelementptr inbounds nuw i8, ptr %.02846.i93, i64 16 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !96
  %i.lg = getelementptr inbounds nuw i8, ptr %.02647.i92, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !96
  %i.li = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lf, i64 %i.lh) ; 2 uses
  %i.lj = extractvalue { i64, i1 } %i.li, 1
  %i.lk = extractvalue { i64, i1 } %i.li, 0
  %i.ll = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lk, i64 %i.ld) ; 2 uses
  %i.lm = extractvalue { i64, i1 } %i.ll, 1
  %i.ln = extractvalue { i64, i1 } %i.ll, 0
  %i.lo = or i1 %i.lj, %i.lm
  %i.lp = zext i1 %i.lo to i64
  store i64 %i.ln, ptr %i.le, align 8, !tbaa !96
  %i.lq = getelementptr inbounds nuw i8, ptr %.02846.i93, i64 24 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !96
  %i.ls = getelementptr inbounds nuw i8, ptr %.02647.i92, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !96
  %i.lu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lr, i64 %i.lt) ; 2 uses
  %i.lv = extractvalue { i64, i1 } %i.lu, 1
  %i.lw = extractvalue { i64, i1 } %i.lu, 0
  %i.lx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lw, i64 %i.lp) ; 2 uses
  %i.ly = extractvalue { i64, i1 } %i.lx, 1
  %i.lz = extractvalue { i64, i1 } %i.lx, 0
  %i.ma = or i1 %i.lv, %i.ly
  %i.mb = zext i1 %i.ma to i64                    ; 3 uses
  store i64 %i.lz, ptr %i.lq, align 8, !tbaa !96
  %i.mc = getelementptr i8, ptr %.02846.i93, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.02647.i92, i64 32 ; 2 uses
  %i.me = add nsw i64 %.048.i91, -4               ; 4 uses
  %.not.i96 = icmp ult i64 %i.me, 4
  br i1 %.not.i96, label %.preheader.i97, label %.lr.ph.i90, !llvm.loop !11

.lr.ph59.i100:                                    ; preds = %.preheader.i97, %.lr.ph59.i100
  %.158.i101 = phi i64 [ %i.mr, %.lr.ph59.i100 ], [ %i.me, %.preheader.i97 ]
  %.12757.i102 = phi ptr [ %i.mq, %.lr.ph59.i100 ], [ %i.md, %.preheader.i97 ] ; 2 uses
  %.12956.i103 = phi ptr [ %i.mp, %.lr.ph59.i100 ], [ %i.mc, %.preheader.i97 ] ; 3 uses
  %.14154.i105 = phi i64 [ %i.mo, %.lr.ph59.i100 ], [ %i.mb, %.preheader.i97 ]
  %i.mf = load i64, ptr %.12956.i103, align 8, !tbaa !96
  %i.mg = load i64, ptr %.12757.i102, align 8, !tbaa !96
  %i.mh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mf, i64 %i.mg) ; 2 uses
  %i.mi = extractvalue { i64, i1 } %i.mh, 1
  %i.mj = extractvalue { i64, i1 } %i.mh, 0
  %i.mk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mj, i64 %.14154.i105) ; 2 uses
  %i.ml = extractvalue { i64, i1 } %i.mk, 1
  %i.mm = extractvalue { i64, i1 } %i.mk, 0
  %i.mn = or i1 %i.mi, %i.ml
  %i.mo = zext i1 %i.mn to i64                    ; 2 uses
  store i64 %i.mm, ptr %.12956.i103, align 8, !tbaa !96
  %i.mp = getelementptr i8, ptr %.12956.i103, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %.12757.i102, i64 8
  %i.mr = add nsw i64 %.158.i101, -1              ; 2 uses
  %.not34.i106 = icmp eq i64 %i.mr, 0
  br i1 %.not34.i106, label %bn_add_words.exit108, label %.lr.ph59.i100, !llvm.loop !12

bn_add_words.exit108:                             ; preds = %.lr.ph59.i100, %.preheader.i97
  %.032.i107 = phi i64 [ %i.mb, %.preheader.i97 ], [ %i.mo, %.lr.ph59.i100 ]
  %i.ms = add nuw nsw i64 %i.c, %2                ; 4 uses
  %i.mt = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.mu = icmp samesign ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit108
  %i.mv = add nsw i64 %i.kh, %.032.i107           ; 2 uses
  %i.mw = sub nsw i64 %2, %i.c
  %.neg = add nuw nsw i64 %i.c, 1
  %xtraiter = and i64 %i.mw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ms ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !96 ; 2 uses
  %i.mz = add i64 %i.my, %i.mv                    ; 2 uses
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !96
  %i.na = icmp ult i64 %i.mz, %i.my
  %i.nb = zext i1 %i.na to i64
  %i.nc = add nuw nsw i64 %i.ms, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0139.unr = phi i64 [ %i.ms, %.lr.ph.preheader ], [ %i.nc, %.lr.ph.prol ]
  %.070138.unr = phi i64 [ %i.mv, %.lr.ph.preheader ], [ %i.nb, %.lr.ph.prol ]
  %i.nd = icmp eq i64 %2, %.neg
  br i1 %i.nd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0139 = phi i64 [ %i.np, %.lr.ph ], [ %.0139.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.070138 = phi i64 [ %i.no, %.lr.ph ], [ %.070138.unr, %.lr.ph.prol.loopexit ]
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0139 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !96 ; 2 uses
  %i.ng = add i64 %i.nf, %.070138                 ; 2 uses
  store i64 %i.ng, ptr %i.ne, align 8, !tbaa !96
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = zext i1 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0139
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !96 ; 2 uses
  %i.nm = add i64 %i.nl, %i.ni                    ; 2 uses
  store i64 %i.nm, ptr %i.nk, align 8, !tbaa !96
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = zext i1 %i.nn to i64
  %i.np = add nuw nsw i64 %.0139, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.np, %i.mt
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !929

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit108, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_GENCB_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 16) #36
  ret ptr %i.a
}

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @BN_GENCB_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !136
  store ptr %2, ptr %0, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @BN_GENCB_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef i32 %i.b(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BN_GENCB_get_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_generate_prime_ex(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %1, 3746
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 1344
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 475
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %1, 399
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %1, 346
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %1, 307
  br i1 %i.i, label %.thread, label %_ZL24BN_prime_checks_for_sizei.exit

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.ph = phi i32 [ 7, %bb.e ], [ 6, %bb.d ], [ 5, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ], [ 8, %bb.f ]
  %i.j = icmp ne i32 %2, 0
  br label %bb.j

_ZL24BN_prime_checks_for_sizei.exit:              ; preds = %bb.f
  %i.k = icmp slt i32 %1, 2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL24BN_prime_checks_for_sizei.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 300) #36
  br label %_ZL14probable_primeP9bignum_sti.exit.thread112

bb.h:                                             ; preds = %_ZL24BN_prime_checks_for_sizei.exit
  %i.l = icmp samesign ugt i32 %1, 54
  %..i = select i1 %i.l, i32 27, i32 34
  %i.m = icmp eq i32 %1, 2
  %i.n = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 304) #36
  br label %_ZL14probable_primeP9bignum_sti.exit.thread112

bb.j:                                             ; preds = %.thread, %bb.h
  %i.o = phi i1 [ %i.j, %.thread ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i98101 = phi i32 [ %.0.i.ph, %.thread ], [ %..i, %bb.h ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_malloc(i64 noundef 48) #36 ; 22 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZL14probable_primeP9bignum_sti.exit.thread112, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.p, i8 0, i64 42, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.u = tail call ptr @OPENSSL_realloc(ptr noundef null, i64 noundef 256) #36 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.k
  store ptr %i.u, ptr %i.r, align 8, !tbaa !120
  store i64 32, ptr %i.t, align 8, !tbaa !124
  %.pre26.i.i = load i64, ptr %i.s, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre26.i.i
  store i64 0, ptr %i.w, align 8, !tbaa !96
  %i.x = load i64, ptr %i.s, align 8, !tbaa !123
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.s, align 8, !tbaa !123
  br label %BN_CTX_start.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.q, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store i8 1, ptr %i.z, align 1, !tbaa !125
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.l
  %i.aa = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZL14probable_primeP9bignum_sti.exit.thread109, label %.preheader120

end_hunk_15
begin_hunk_16_@ec_get_x_coordinate_as_scalar:bb.a
  %.022.lcssa.i = phi i64 [ %i.j, %.preheader28.i ], [ %.lcssa62.unr, %.lr.ph.i.prol.loopexit ], [ %i.ah, %.lr.ph.i ] ; 4 uses
  %.not27.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not27.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter63 = and i64 %.022.lcssa.i, 3          ; 3 uses
  %i.an = icmp ult i64 %.022.lcssa.i, 4
  br i1 %i.an, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.022.lcssa.i, -4
  br label %.preheader.i

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.035.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bt, %.unr-lcssa ]
  %.02134.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.035.i.epil = phi i64 [ %i.at, %.preheader.i.epil ], [ %.035.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.02134.i.epil = phi i64 [ %i.as, %.preheader.i.epil ], [ %.02134.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ao = shl i64 %.02134.i.epil, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i.epil
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !80
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar            ; 2 uses
  %i.at = add nuw nsw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !1139

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa59 = phi i64 [ %i.bs, %.unr-lcssa ], [ %i.as, %.preheader.i.epil ]
  store i64 %.lcssa59, ptr %.023.lcssa.i, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 8
  %i.av = add i64 %.024.lcssa.i, -1
  br label %bb.d

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.035.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bt, %.preheader.i ] ; 5 uses
  %.02134.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bs, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !80
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl i64 %.02134.i, 16
  %i.ba = shl nuw nsw i64 %i.ay, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bf = zext i8 %i.be to i64
  %i.bg = or disjoint i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !80
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bg, 16
  %i.bm = shl nuw nsw i64 %i.bk, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !80
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bn, %i.br            ; 3 uses
  %i.bt = add nuw nsw i64 %.035.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !16

bb.d:                                             ; preds = %.epilog-lcssa, %._crit_edge.i
  %.125.i = phi i64 [ %i.av, %.epilog-lcssa ], [ %.024.lcssa.i, %._crit_edge.i ]
  %.1.i = phi ptr [ %i.au, %.epilog-lcssa ], [ %.023.lcssa.i, %._crit_edge.i ]
  %i.bu = shl i64 %.125.i, 3                      ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bn_big_endian_to_words.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1.i, i8 0, i64 %i.bu, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !113
  br label %bn_big_endian_to_words.exit

bn_big_endian_to_words.exit:                      ; preds = %bb.d, %bb.e
  %i.bw = phi i32 [ %i.g, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.bx = sext i32 %i.bw to i64                   ; 6 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !96
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %bn_reduce_once.exit, label %.preheader42.i.i

.preheader42.i.i:                                 ; preds = %bn_big_endian_to_words.exit
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %.not43.i.i = icmp ult i32 %i.bw, 4
  br i1 %.not43.i.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %i.bx, %.preheader42.i.i ], [ %i.ec, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.cb, %.preheader42.i.i ], [ %i.ea, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %i.c, %.preheader42.i.i ], [ %i.dz, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %1, %.preheader42.i.i ], [ %i.eb, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.dx, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.not3453.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i:                                       ; preds = %.preheader42.i.i, %.lr.ph.i.i
  %.048.i.i = phi i64 [ %i.ec, %.lr.ph.i.i ], [ %i.bx, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cb, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.c, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %1, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.preheader42.i.i ]
  %i.cc = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.cd = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.ce = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  %i.ch = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cg, i64 %.04044.i.i) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  %i.ck = or i1 %i.cf, %i.ci
  %i.cl = zext i1 %i.ck to i64
  store i64 %i.cj, ptr %.03045.i.i, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cn, i64 %i.cp) ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  %i.cs = extractvalue { i64, i1 } %i.cq, 0
  %i.ct = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cs, i64 %i.cl) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  %i.cv = extractvalue { i64, i1 } %i.ct, 0
  %i.cw = or i1 %i.cr, %i.cu
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.cv, ptr %i.cy, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !96
  %i.dd = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.da, i64 %i.dc) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  %i.df = extractvalue { i64, i1 } %i.dd, 0
  %i.dg = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.df, i64 %i.cx) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  %i.dj = or i1 %i.de, %i.dh
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !96
  %i.dm = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.do = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !96
  %i.dq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dn, i64 %i.dp) ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  %i.ds = extractvalue { i64, i1 } %i.dq, 0
  %i.dt = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ds, i64 %i.dk) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = or i1 %i.dr, %i.du
  %i.dx = zext i1 %i.dw to i64                    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.dv, ptr %i.dy, align 8, !tbaa !96
  %i.dz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.ec = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i = icmp ult i64 %i.ec, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.eq, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.eo, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.en, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.ep, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.em, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.ed = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.ee = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.ef = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.eh, i64 %.14154.i.i) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64                    ; 2 uses
  store i64 %i.ek, ptr %.13155.i.i, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.eq = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i = phi i64 [ %i.dx, %.preheader.i.i ], [ %i.em, %.lr.ph59.i.i ]
  %i.er = sub i64 %i.bz, %.032.i.ph.i
  %i.es = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.er) #38, !srcloc !108 ; 3 uses
  %i.et = xor i64 %i.es, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i11.i
  %n.vec = and i64 %i.bx, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat50 = shufflevector <2 x i64> %broadcast.splatinsert49, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x i64>, ptr %i.eu, align 16, !tbaa !96
  %wide.load51 = load <2 x i64>, ptr %i.ev, align 16, !tbaa !96
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load52 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !96
  %wide.load53 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !96
  %i.ey = and <2 x i64> %wide.load, %broadcast.splat
  %i.ez = and <2 x i64> %wide.load51, %broadcast.splat
  %i.fa = and <2 x i64> %wide.load52, %broadcast.splat50
  %i.fb = and <2 x i64> %wide.load53, %broadcast.splat50
  %i.fc = or disjoint <2 x i64> %i.fa, %i.ey
  %i.fd = or disjoint <2 x i64> %i.fb, %i.ez
  store <2 x i64> %i.fc, ptr %i.ew, align 8, !tbaa !96
  store <2 x i64> %i.fd, ptr %i.ex, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br i1 %cmp.n, label %bn_reduce_once.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i11.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.fm, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.09.i.i
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !96
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !96
  %i.fj = and i64 %i.fg, %i.es
  %i.fk = and i64 %i.fi, %i.et
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %i.fh, align 8, !tbaa !96
  %i.fm = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fm, %i.bx
  br i1 %exitcond.not.i.i, label %bn_reduce_once.exit, label %scalar.ph, !llvm.loop !1141

bn_reduce_once.exit:                              ; preds = %scalar.ph, %middle.block, %bn_big_endian_to_words.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bn_reduce_once.exit
  %.0 = phi i32 [ 1, %bn_reduce_once.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ec_get_x_coordinate_as_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.EC_FELEM, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %BN_num_bytes.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit.thread, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = icmp ult i64 %3, %i.au
  br i1 %i.av, label %bb.d, label %BN_num_bytes.exit.thread

bb.d:                                             ; preds = %BN_num_bytes.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.20, i32 noundef 926) #36
  br label %bb.g

BN_num_bytes.exit.thread:                         ; preds = %bb.c, %bn_minimal_width.exit.i.i, %BN_num_bytes.exit
  %.0.i.i17 = phi i64 [ %i.au, %BN_num_bytes.exit ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.aw = load ptr, ptr %0, align 8, !tbaa !238
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !249
  %i.ay = call noundef i32 %i.ax(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef null) #36
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %BN_num_bytes.exit.thread
  %i.az = load ptr, ptr %0, align 8, !tbaa !238
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !254
  call void %i.bb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #36, !inline_history !256
  store i64 %.0.i.i17, ptr %2, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %BN_num_bytes.exit.thread, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %BN_num_bytes.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %.0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @ec_felem_to_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254
  tail call void %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @EC_GROUP_set_asn1_flag(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret void
end_hunk_16
begin_hunk_17_@_ZL23EC_GFp_mont_method_initv:bb.a
  store ptr @ec_GFp_mont_mul_precomp, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 80), align 8, !tbaa !270
  store ptr @ec_GFp_mont_felem_mul, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 88), align 8, !tbaa !252
  store ptr @ec_GFp_mont_felem_sqr, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 96), align 8, !tbaa !253
  store ptr @ec_GFp_mont_felem_to_bytes, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 104), align 8, !tbaa !254
  store ptr @ec_GFp_mont_felem_from_bytes, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 112), align 8, !tbaa !258
  store ptr @ec_GFp_mont_felem_reduce, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 120), align 8, !tbaa !301
  store ptr @ec_GFp_mont_felem_exp, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 128), align 8, !tbaa !302
  store ptr @ec_simple_scalar_inv0_montgomery, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 136), align 8, !tbaa !303
  store ptr @ec_simple_scalar_to_montgomery_inv_vartime, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 144), align 8, !tbaa !304
  store ptr @_ZL28ec_GFp_mont_cmp_x_coordinatePK11ec_group_stPK11EC_JACOBIANPK9EC_SCALAR, ptr getelementptr inbounds nuw (i8, ptr @_ZL26EC_GFp_mont_method_storage, i64 152), align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @ec_felem_from_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #36
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @ec_felem_neg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i32, ptr %i.a, align 8, !tbaa !242  ; 9 uses
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader.i, label %ec_felem_non_zero_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !96
  %wide.load44 = load <2 x i64>, ptr %i.e, align 8, !tbaa !96
  %i.f = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.g = or <2 x i64> %wide.load44, %vec.phi43    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1203

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader42.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.067.i.ph, %.lr.ph.i.preheader ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !96
  %i.l = or i64 %i.k, %.067.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader42.i, label %.lr.ph.i, !llvm.loop !1204

ec_felem_non_zero_mask.exit:                      ; preds = %bb.a
  %i.m = icmp eq i32 %i.b, 0
  br i1 %i.m, label %._crit_edge, label %.preheader42.i.thread

.preheader42.i.thread:                            ; preds = %ec_felem_non_zero_mask.exit
  %i.n = sext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !241
  br label %.lr.ph.i11.preheader

.preheader42.i:                                   ; preds = %.lr.ph.i, %middle.block
  %.lcssa42 = phi i64 [ %i.i, %middle.block ], [ %i.l, %.lr.ph.i ]
  %i.q = icmp ne i64 %.lcssa42, 0
  %i.r = sext i1 %i.q to i64                      ; 2 uses
  %i.s = zext nneg i32 %i.b to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !241  ; 2 uses
  %.not43.i = icmp samesign ult i32 %i.b, 4
  br i1 %.not43.i, label %.lr.ph59.preheader.i, label %.lr.ph.i11.preheader

.lr.ph.i11.preheader:                             ; preds = %.preheader42.i.thread, %.preheader42.i
  %i.v = phi ptr [ %i.p, %.preheader42.i.thread ], [ %i.u, %.preheader42.i ]
  %i.w = phi i64 [ %i.n, %.preheader42.i.thread ], [ %i.s, %.preheader42.i ]
  %.06.lcssa.i2630 = phi i64 [ 0, %.preheader42.i.thread ], [ %i.r, %.preheader42.i ] ; 2 uses
  br label %.lr.ph.i11

.preheader.i:                                     ; preds = %.lr.ph.i11
  %.not3453.i = icmp eq i64 %i.bx, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.preheader.i

.lr.ph59.preheader.i:                             ; preds = %.preheader.i, %.preheader42.i
  %.06.lcssa.i2631 = phi i64 [ %.06.lcssa.i2630, %.preheader.i ], [ %i.r, %.preheader42.i ]
  %.0.lcssa77.i = phi i64 [ %i.bx, %.preheader.i ], [ %i.s, %.preheader42.i ]
  %.026.lcssa76.i = phi ptr [ %i.bv, %.preheader.i ], [ %2, %.preheader42.i ]
  %.028.lcssa75.i = phi ptr [ %i.bu, %.preheader.i ], [ %i.u, %.preheader42.i ]
  %.030.lcssa74.i = phi ptr [ %i.bw, %.preheader.i ], [ %1, %.preheader42.i ]
  %.040.lcssa73.i = phi i64 [ %i.bs, %.preheader.i ], [ 0, %.preheader42.i ]
  br label %.lr.ph59.i

.lr.ph.i11:                                       ; preds = %.lr.ph.i11.preheader, %.lr.ph.i11
  %.048.i = phi i64 [ %i.bx, %.lr.ph.i11 ], [ %i.w, %.lr.ph.i11.preheader ]
  %.02647.i = phi ptr [ %i.bv, %.lr.ph.i11 ], [ %2, %.lr.ph.i11.preheader ] ; 5 uses
  %.02846.i = phi ptr [ %i.bu, %.lr.ph.i11 ], [ %i.v, %.lr.ph.i11.preheader ] ; 5 uses
  %.03045.i = phi ptr [ %i.bw, %.lr.ph.i11 ], [ %1, %.lr.ph.i11.preheader ] ; 5 uses
  %.04044.i = phi i64 [ %i.bs, %.lr.ph.i11 ], [ 0, %.lr.ph.i11.preheader ]
  %i.x = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.y = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.z = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.x, i64 %i.y) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ab, i64 %.04044.i) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0
  %i.af = or i1 %i.aa, %i.ad
  %i.ag = zext i1 %i.af to i64
  store i64 %i.ae, ptr %.03045.i, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !96
  %i.al = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ai, i64 %i.ak) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0
  %i.ao = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.an, i64 %i.ag) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  %i.ar = or i1 %i.am, %i.ap
  %i.as = zext i1 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.aq, ptr %i.at, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !96
  %i.aw = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !96
  %i.ay = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.av, i64 %i.ax) ; 2 uses
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  %i.ba = extractvalue { i64, i1 } %i.ay, 0
  %i.bb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ba, i64 %i.as) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  %i.bd = extractvalue { i64, i1 } %i.bb, 0
  %i.be = or i1 %i.az, %i.bc
  %i.bf = zext i1 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !96
  %i.bj = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !96
  %i.bl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bi, i64 %i.bk) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  %i.bn = extractvalue { i64, i1 } %i.bl, 0
  %i.bo = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bn, i64 %i.bf) ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 1
  %i.bq = extractvalue { i64, i1 } %i.bo, 0
  %i.br = or i1 %i.bm, %i.bp
  %i.bs = zext i1 %i.br to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.bq, ptr %i.bt, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bx = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bx, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i11, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i, %.lr.ph59.preheader.i
  %.158.i = phi i64 [ %i.cl, %.lr.ph59.i ], [ %.0.lcssa77.i, %.lr.ph59.preheader.i ]
  %.12757.i = phi ptr [ %i.cj, %.lr.ph59.i ], [ %.026.lcssa76.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.ci, %.lr.ph59.i ], [ %.028.lcssa75.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.ck, %.lr.ph59.i ], [ %.030.lcssa74.i, %.lr.ph59.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.ch, %.lr.ph59.i ], [ %.040.lcssa73.i, %.lr.ph59.preheader.i ]
  %i.by = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.bz = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.ca = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.by, i64 %i.bz) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %.14154.i) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = or i1 %i.cb, %i.ce
  %i.ch = zext i1 %i.cg to i64
  store i64 %i.cf, ptr %.13155.i, align 8, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.cl = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.cl, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !14

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.06.lcssa.i27 = phi i64 [ %.06.lcssa.i2630, %.preheader.i ], [ %.06.lcssa.i2631, %.lr.ph59.i ] ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bn_sub_words.exit
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check46 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check46, label %.lr.ph.preheader57, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.preheader
  %n.vec48 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.06.lcssa.i27, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next53, %vector.body49 ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index50 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load51 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !96
  %wide.load52 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !96
  %i.co = and <2 x i64> %wide.load51, %broadcast.splat
  %i.cp = and <2 x i64> %wide.load52, %broadcast.splat
  store <2 x i64> %i.co, ptr %i.cm, align 8, !tbaa !96
  store <2 x i64> %i.cp, ptr %i.cn, align 8, !tbaa !96
  %index.next53 = add nuw i64 %index50, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cq, label %middle.block54, label %vector.body49, !llvm.loop !1205

middle.block54:                                   ; preds = %vector.body49
  %cmp.n55 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n55, label %._crit_edge, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block54
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec48, %middle.block54 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block54, %ec_felem_non_zero_mask.exit, %bn_sub_words.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !96
  %i.ct = and i64 %i.cs, %.06.lcssa.i27
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1206
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 1073741824) i64 @ec_point_byte_len(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 4, label %bb.c
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 111, ptr noundef nonnull @.str.28, i32 noundef 27) #36
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.e ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bn_minimal_width.exit.thread7.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.d, label %BN_num_bytes.exit, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.c
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.d, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.d ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.d ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
  %i.ap = add i32 %i.ao, %i.ac
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.e, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i64 [ %i.au, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.av = add nuw nsw i64 %.0.i.i, 1
  %i.aw = icmp eq i32 %1, 4
  %i.ax = select i1 %i.aw, i64 %.0.i.i, i64 0
  %spec.select = add nuw nsw i64 %i.av, %i.ax
  br label %bb.f

bb.f:                                             ; preds = %BN_num_bytes.exit, %bb.b
  %.09 = phi i64 [ 0, %bb.b ], [ %spec.select, %BN_num_bytes.exit ]
  ret i64 %.09
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 1073741824) i64 @ec_point_to_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca [66 x i8], align 16               ; 4 uses
  %i.c = tail call i64 @ec_point_byte_len(ptr noundef %0, i32 noundef %2) ; 2 uses
  %i.d = icmp ult i64 %4, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.28, i32 noundef 45) #36
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !238
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254
  call void %i.h(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %1) #36, !inline_history !256
  %i.i = icmp eq i32 %2, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %0, align 8, !tbaa !238
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254
  call void %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #36, !inline_history !256
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load ptr, ptr %0, align 8, !tbaa !238
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254
  call void %i.s(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p) #36, !inline_history !256
  %i.t = load i64, ptr %i.a, align 8, !tbaa !96
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !80
end_hunk_17
begin_hunk_18_@ec_GFp_mont_mul_public_batch:bb.a

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.z, %bb.y
  %.1 = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ %.071123, %bb.z ], [ %.071123, %bb.y ] ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.074, i64 %.070124
  br i1 %.not129, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %bb.al, %bb.af
  %.2.lcssa = phi i32 [ %.1, %bb.af ], [ %.3, %bb.al ] ; 2 uses
  %i.ex = add i64 %.070124, -1                    ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.av
  br i1 %i.ey, label %bb.w, label %._crit_edge127, !llvm.loop !1290

.lr.ph121:                                        ; preds = %bb.af, %bb.al
  %.0119 = phi i64 [ %i.ja, %bb.al ], [ 0, %bb.af ] ; 3 uses
  %.2118 = phi i32 [ %.3, %bb.al ], [ %.1, %bb.af ] ; 2 uses
  %gep = getelementptr [529 x i8], ptr %invariant.gep, i64 %.0119
  %i.ez = load i8, ptr %gep, align 1, !tbaa !80   ; 3 uses
  %.not88 = icmp eq i8 %i.ez, 0
  br i1 %.not88, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph121
  %i.fa = sext i8 %i.ez to i32                    ; 2 uses
  %i.fb = getelementptr inbounds nuw [1728 x i8], ptr %.073, i64 %.0119 ; 2 uses
  %i.fc = icmp slt i8 %i.ez, 0
  br i1 %i.fc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fd = sub nsw i32 0, %i.fa
  %i.fe = lshr i32 %i.fd, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [216 x i8], ptr %i.fb, i64 %i.ff ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.fg, i64 72, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.fh, i64 72, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.fi, i64 72, i1 false)
  %i.fj = load i32, ptr %i.cq, align 8, !tbaa !242 ; 8 uses
  %i.fk = icmp sgt i32 %i.fj, 0                   ; 2 uses
  br i1 %i.fk, label %.lr.ph.preheader.i.i, label %ec_felem_non_zero_mask.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ah
  %wide.trip.count.i.i = zext nneg i32 %i.fj to i64 ; 5 uses
  %min.iters.check169 = icmp ult i32 %i.fj, 4
  br i1 %min.iters.check169, label %.lr.ph.i.i.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec171 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph170 ], [ %i.fn, %vector.body172 ]
  %vec.phi174 = phi <2 x i64> [ zeroinitializer, %vector.ph170 ], [ %i.fo, %vector.body172 ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index173 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load175 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !96
  %wide.load176 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !96
  %i.fn = or <2 x i64> %wide.load175, %vec.phi    ; 2 uses
  %i.fo = or <2 x i64> %wide.load176, %vec.phi174 ; 2 uses
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.fp, label %middle.block178, label %vector.body172, !llvm.loop !1291

middle.block178:                                  ; preds = %vector.body172
  %bin.rdx = or <2 x i64> %i.fo, %i.fn
  %i.fq = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n179 = icmp eq i64 %n.vec171, %wide.trip.count.i.i
  br i1 %cmp.n179, label %.preheader42.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block178
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec171, %middle.block178 ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.fq, %middle.block178 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ft, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i.i
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !96
  %i.ft = or i64 %i.fs, %.067.i.i                 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader42.i.i, label %.lr.ph.i.i, !llvm.loop !1292

ec_felem_non_zero_mask.exit.i:                    ; preds = %bb.ah
  %i.fu = icmp eq i32 %i.fj, 0
  br i1 %i.fu, label %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107, label %.preheader42.i.thread.i

.preheader42.i.thread.i:                          ; preds = %ec_felem_non_zero_mask.exit.i
  %i.fv = sext i32 %i.fj to i64
  %i.fw = load ptr, ptr %i.cr, align 8, !tbaa !241
  br label %.lr.ph.i11.preheader.i

.preheader42.i.i:                                 ; preds = %.lr.ph.i.i, %middle.block178
  %.lcssa = phi i64 [ %i.fq, %middle.block178 ], [ %i.ft, %.lr.ph.i.i ]
  %i.fx = icmp ne i64 %.lcssa, 0
  %i.fy = sext i1 %i.fx to i64                    ; 2 uses
  %i.fz = load ptr, ptr %i.cr, align 8, !tbaa !241 ; 2 uses
  %.not43.i.i = icmp samesign ult i32 %i.fj, 4
  br i1 %.not43.i.i, label %.lr.ph59.preheader.i.i, label %.lr.ph.i11.preheader.i

.lr.ph.i11.preheader.i:                           ; preds = %.preheader42.i.i, %.preheader42.i.thread.i
  %i.ga = phi ptr [ %i.fw, %.preheader42.i.thread.i ], [ %i.fz, %.preheader42.i.i ]
  %i.gb = phi i64 [ %i.fv, %.preheader42.i.thread.i ], [ %wide.trip.count.i.i, %.preheader42.i.i ]
  %.06.lcssa.i2630.i = phi i64 [ 0, %.preheader42.i.thread.i ], [ %i.fy, %.preheader42.i.i ] ; 2 uses
  br label %.lr.ph.i11.i

.preheader.i.i:                                   ; preds = %.lr.ph.i11.i
  %.not3453.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not3453.i.i, label %bn_sub_words.exit.i, label %.lr.ph59.preheader.i.i

.lr.ph59.preheader.i.i:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.06.lcssa.i2631.i = phi i64 [ %.06.lcssa.i2630.i, %.preheader.i.i ], [ %i.fy, %.preheader42.i.i ]
  %.0.lcssa77.i.i = phi i64 [ %i.hy, %.preheader.i.i ], [ %wide.trip.count.i.i, %.preheader42.i.i ]
  %.026.lcssa76.i.i = phi ptr [ %i.hx, %.preheader.i.i ], [ %i.cm, %.preheader42.i.i ] ; 2 uses
  %.028.lcssa75.i.i = phi ptr [ %i.hw, %.preheader.i.i ], [ %i.fz, %.preheader42.i.i ]
  %.040.lcssa73.i.i = phi i64 [ %i.hv, %.preheader.i.i ], [ 0, %.preheader42.i.i ]
  br label %.lr.ph59.i.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.i11.preheader.i
  %.048.i.i = phi i64 [ %i.hy, %.lr.ph.i11.i ], [ %i.gb, %.lr.ph.i11.preheader.i ]
  %.02647.i.i = phi ptr [ %i.hx, %.lr.ph.i11.i ], [ %i.cm, %.lr.ph.i11.preheader.i ] ; 6 uses
  %.02846.i.i = phi ptr [ %i.hw, %.lr.ph.i11.i ], [ %i.ga, %.lr.ph.i11.preheader.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.hv, %.lr.ph.i11.i ], [ 0, %.lr.ph.i11.preheader.i ]
  %i.gc = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.gd = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.ge = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gc, i64 %i.gd) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %i.gh = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gg, i64 %.04044.i.i) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  %i.gj = extractvalue { i64, i1 } %i.gh, 0
  %i.gk = or i1 %i.gf, %i.gi
  %i.gl = zext i1 %i.gk to i64
  store i64 %i.gj, ptr %.02647.i.i, align 8, !tbaa !96
  %i.gm = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !96
  %i.go = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !96
  %i.gq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gn, i64 %i.gp) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 1
  %i.gs = extractvalue { i64, i1 } %i.gq, 0
  %i.gt = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gs, i64 %i.gl) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = extractvalue { i64, i1 } %i.gt, 0
  %i.gw = or i1 %i.gr, %i.gu
  %i.gx = zext i1 %i.gw to i64
  store i64 %i.gv, ptr %i.go, align 8, !tbaa !96
  %i.gy = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !96
  %i.ha = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !96
  %i.hc = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gz, i64 %i.hb) ; 2 uses
  %i.hd = extractvalue { i64, i1 } %i.hc, 1
  %i.he = extractvalue { i64, i1 } %i.hc, 0
  %i.hf = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.he, i64 %i.gx) ; 2 uses
  %i.hg = extractvalue { i64, i1 } %i.hf, 1
  %i.hh = extractvalue { i64, i1 } %i.hf, 0
  %i.hi = or i1 %i.hd, %i.hg
  %i.hj = zext i1 %i.hi to i64
  store i64 %i.hh, ptr %i.ha, align 8, !tbaa !96
  %i.hk = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !96
  %i.hm = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !96
  %i.ho = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hl, i64 %i.hn) ; 2 uses
  %i.hp = extractvalue { i64, i1 } %i.ho, 1
  %i.hq = extractvalue { i64, i1 } %i.ho, 0
  %i.hr = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hq, i64 %i.hj) ; 2 uses
  %i.hs = extractvalue { i64, i1 } %i.hr, 1
  %i.ht = extractvalue { i64, i1 } %i.hr, 0
  %i.hu = or i1 %i.hp, %i.hs
  %i.hv = zext i1 %i.hu to i64                    ; 2 uses
  store i64 %i.ht, ptr %i.hm, align 8, !tbaa !96
  %i.hw = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.hx = getelementptr i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.hy = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i108 = icmp ult i64 %i.hy, 4
  br i1 %.not.i.i108, label %.preheader.i.i, label %.lr.ph.i11.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i, %.lr.ph59.preheader.i.i
  %.158.i.i = phi i64 [ %i.im, %.lr.ph59.i.i ], [ %.0.lcssa77.i.i, %.lr.ph59.preheader.i.i ]
  %.12757.i.i = phi ptr [ %i.ik, %.lr.ph59.i.i ], [ %.026.lcssa76.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.ij, %.lr.ph59.i.i ], [ %.028.lcssa75.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.il, %.lr.ph59.i.i ], [ %.026.lcssa76.i.i, %.lr.ph59.preheader.i.i ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.ii, %.lr.ph59.i.i ], [ %.040.lcssa73.i.i, %.lr.ph59.preheader.i.i ]
  %i.hz = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.ia = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.ib = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hz, i64 %i.ia) ; 2 uses
  %i.ic = extractvalue { i64, i1 } %i.ib, 1
  %i.id = extractvalue { i64, i1 } %i.ib, 0
  %i.ie = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.id, i64 %.14154.i.i) ; 2 uses
  %i.if = extractvalue { i64, i1 } %i.ie, 1
  %i.ig = extractvalue { i64, i1 } %i.ie, 0
  %i.ih = or i1 %i.ic, %i.if
  %i.ii = zext i1 %i.ih to i64
  store i64 %i.ig, ptr %.13155.i.i, align 8, !tbaa !96
  %i.ij = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.im = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.im, 0
  br i1 %.not34.i.i, label %bn_sub_words.exit.i, label %.lr.ph59.i.i, !llvm.loop !14

bn_sub_words.exit.i:                              ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.06.lcssa.i27.i = phi i64 [ %.06.lcssa.i2630.i, %.preheader.i.i ], [ %.06.lcssa.i2631.i, %.lr.ph59.i.i ] ; 2 uses
  br i1 %i.fk, label %.lr.ph.preheader.i, label %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107

.lr.ph.preheader.i:                               ; preds = %bn_sub_words.exit.i
  %wide.trip.count.i = zext nneg i32 %i.fj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fj, 4
  br i1 %min.iters.check, label %.lr.ph.i109.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.06.lcssa.i27.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.in, align 8, !tbaa !96
  %wide.load167 = load <2 x i64>, ptr %i.io, align 8, !tbaa !96
  %i.ip = and <2 x i64> %wide.load, %broadcast.splat
  %i.iq = and <2 x i64> %wide.load167, %broadcast.splat
  store <2 x i64> %i.ip, ptr %i.in, align 8, !tbaa !96
  store <2 x i64> %i.iq, ptr %i.io, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !1293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i109 ], [ %indvars.iv.i.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.i ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !96
  %i.iu = and i64 %i.it, %.06.lcssa.i27.i
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !96
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i110, label %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107, label %.lr.ph.i109, !llvm.loop !1294

bb.ai:                                            ; preds = %bb.ag
  %i.iv = lshr i32 %i.fa, 1
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [216 x i8], ptr %i.fb, i64 %i.iw ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.ix, i64 72, i1 false)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.iy, i64 72, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.iz, i64 72, i1 false)
  br label %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107

_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107: ; preds = %.lr.ph.i109, %middle.block, %bn_sub_words.exit.i, %ec_felem_non_zero_mask.exit.i, %bb.ai
  %.not89 = icmp eq i32 %.2118, 0
  br i1 %.not89, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 8 dereferenceable(72) %10, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cm, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cn, i64 72, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %_ZL14lookup_precompPK11ec_group_stP11EC_JACOBIANPKS2_i.exit107
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %10)
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph121, %bb.ak, %bb.aj
  %.3 = phi i32 [ 0, %bb.aj ], [ 0, %bb.ak ], [ %.2118, %.lr.ph121 ] ; 2 uses
  %i.ja = add nuw i64 %.0119, 1                   ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ja, %5
  br i1 %exitcond138.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !1295

._crit_edge127.thread:                            ; preds = %._crit_edge, %._crit_edge127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge127.thread, %._crit_edge127
  call void @OPENSSL_free(ptr noundef %.075) #36
  call void @OPENSSL_free(ptr noundef %.076) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.an

bb.an:                                            ; preds = %bb.d, %bb.am, %bb.f
  %.077 = phi i32 [ 1, %bb.am ], [ 0, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.077
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @ECDH_compute_key_fips(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.EC_JACOBIAN, align 8        ; 5 uses
  %i.a = alloca [66 x i8], align 16               ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %5 = alloca %struct.sha256_state_st, align 16   ; 14 uses
  %6 = alloca %struct.sha512_state_st, align 8    ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.31, i32 noundef 35) #36
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !282    ; 5 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !247
  %i.h = tail call i32 @EC_GROUP_cmp(ptr noundef %i.f, ptr noundef %i.g, ptr poison)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.31, i32 noundef 41) #36
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  call void %i.m(ptr noundef nonnull %i.f, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i) #36, !inline_history !265
  %i.n = call i32 @ec_GFp_simple_is_on_curve(ptr noundef nonnull %i.f, ptr noundef nonnull %4)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %ec_point_mul_scalar.exit.thread, label %ec_point_mul_scalar.exit

ec_point_mul_scalar.exit.thread:                  ; preds = %bb.e
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.20, i32 noundef 777) #36
  br label %bb.f

ec_point_mul_scalar.exit:                         ; preds = %bb.e
  %i.o = call i32 @ec_get_x_coordinate_as_bytes(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 66, ptr noundef nonnull %4)
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %ec_point_mul_scalar.exit.thread, %ec_point_mul_scalar.exit
  call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.31, i32 noundef 51) #36
  br label %bb.n

bb.g:                                             ; preds = %ec_point_mul_scalar.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  switch i64 %1, label %bb.l [
    i64 28, label %bb.h
    i64 32, label %bb.i
    i64 48, label %bb.j
    i64 64, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.p, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, ptr %5, align 16, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, ptr %i.q, align 16, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 108
  store i32 28, ptr %i.r, align 4, !tbaa !307
  %i.s = load i64, ptr %i.b, align 8, !tbaa !96
  %i.t = call i32 @BCM_sha224_update(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef %i.s) ; 0 uses
  %i.u = call i32 @BCM_sha224_final(ptr noundef %0, ptr noundef nonnull %5) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.v, i8 0, i64 76, i1 false)
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %5, align 16, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.w, align 16, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 108
  store i32 32, ptr %i.x, align 4, !tbaa !307
  %i.y = load i64, ptr %i.b, align 8, !tbaa !96
  %i.z = call i32 @BCM_sha256_update(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef %i.y) ; 0 uses
  %i.aa = call i32 @BCM_sha256_final(ptr noundef %0, ptr noundef nonnull %5) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  store i64 -3766243637369397544, ptr %6, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7105036623409894663, ptr %i.ab, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 -7973340178411365097, ptr %i.ac, align 8, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 1526699215303891257, ptr %i.ad, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_18
begin_hunk_19_@_ZL16digest_to_scalarPK11ec_group_stP9EC_SCALARPKhm:bb.a
  %i.dk = icmp samesign ugt i64 %i.dj, %i.at
  %.not.i21.not = icmp eq i32 %.pre51, 0          ; 2 uses
  br i1 %i.dk, label %bb.g, label %bn_rshift_words.exit

bb.g:                                             ; preds = %bn_big_endian_to_words.exit
  %i.dl = and i32 %.0.i, 7                        ; 2 uses
  br i1 %.not.i21.not, label %bn_rshift_words.exit.thread, label %.preheader.i22

bn_rshift_words.exit.thread:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br label %bn_reduce_once_in_place.exit

.preheader.i22:                                   ; preds = %bb.g
  %i.dm = sub nuw nsw i32 8, %i.dl
  %i.dn = sext i32 %.pre51 to i64
  %i.do = add nsw i64 %i.dn, -1                   ; 5 uses
  %.not = icmp eq i64 %i.do, 0
  %i.dp = zext nneg i32 %i.dm to i64              ; 3 uses
  br i1 %.not, label %bn_rshift_words.exit.thread57, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i22
  %i.dq = or disjoint i32 %i.dl, 56
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %.pre = load i64, ptr %1, align 8, !tbaa !96    ; 2 uses
  %min.iters.check = icmp ult i32 %.pre51, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert80 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat81 = shufflevector <2 x i64> %broadcast.splatinsert80, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load82, %vector.body ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %wide.load = load <2 x i64>, ptr %i.du, align 8, !tbaa !96 ; 3 uses
  %wide.load82 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !96 ; 4 uses
  %i.dw = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.dx = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load82, <2 x i32> <i32 1, i32 2>
  %i.dy = lshr <2 x i64> %i.dw, %broadcast.splat81
  %i.dz = lshr <2 x i64> %i.dx, %broadcast.splat81
  %i.ea = shl <2 x i64> %wide.load, %broadcast.splat
  %i.eb = shl <2 x i64> %wide.load82, %broadcast.splat
  %i.ec = or <2 x i64> %i.ea, %i.dy
  %i.ed = or <2 x i64> %i.eb, %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i64> %i.ec, ptr %i.ds, align 8, !tbaa !96
  store <2 x i64> %i.ed, ptr %i.ee, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !1306

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load82, i64 1
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %bn_rshift_words.exit.thread57, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i24, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph.i24 ], [ %vector.recur.extract, %middle.block ]
  %.039.i.ph = phi i64 [ 0, %.lr.ph.i24 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.eg = phi i64 [ %i.el, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.039.i = phi i64 [ %i.ej, %scalar.ph ], [ %.039.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039.i
  %i.ei = lshr i64 %i.eg, %i.dp
  %i.ej = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !96 ; 2 uses
  %i.em = shl i64 %i.el, %i.dr
  %i.en = or i64 %i.em, %i.ei
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !96
  %exitcond.not.i25 = icmp eq i64 %i.ej, %i.do
  br i1 %exitcond.not.i25, label %bn_rshift_words.exit.thread57, label %scalar.ph, !llvm.loop !1307

bn_rshift_words.exit.thread57:                    ; preds = %scalar.ph, %middle.block, %.preheader.i22
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !96
  %i.eq = lshr i64 %i.ep, %i.dp
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br label %.preheader42.i.i

bn_rshift_words.exit:                             ; preds = %bn_big_endian_to_words.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br i1 %.not.i21.not, label %bn_reduce_once_in_place.exit, label %.preheader42.i.i

.preheader42.i.i:                                 ; preds = %bn_rshift_words.exit.thread57, %bn_rshift_words.exit
  %i.er = sext i32 %.pre51 to i64                 ; 5 uses
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !112 ; 2 uses
  %.not43.i.i = icmp ult i32 %.pre51, 4
  br i1 %.not43.i.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i26

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %i.er, %.preheader42.i.i ], [ %i.gt, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.es, %.preheader42.i.i ], [ %i.gr, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %1, %.preheader42.i.i ], [ %i.gq, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %i.a, %.preheader42.i.i ], [ %i.gs, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.go, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i26
  %.not3453.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i26:                                     ; preds = %.preheader42.i.i, %.lr.ph.i.i26
  %.048.i.i = phi i64 [ %i.gt, %.lr.ph.i.i26 ], [ %i.er, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.gr, %.lr.ph.i.i26 ], [ %i.es, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.gq, %.lr.ph.i.i26 ], [ %1, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.gs, %.lr.ph.i.i26 ], [ %i.a, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.go, %.lr.ph.i.i26 ], [ 0, %.preheader42.i.i ]
  %i.et = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.eu = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.ev = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  %i.ex = extractvalue { i64, i1 } %i.ev, 0
  %i.ey = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ex, i64 %.04044.i.i) ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  %i.fa = extractvalue { i64, i1 } %i.ey, 0
  %i.fb = or i1 %i.ew, %i.ez
  %i.fc = zext i1 %i.fb to i64
  store i64 %i.fa, ptr %.03045.i.i, align 8, !tbaa !96
  %i.fd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !96
  %i.ff = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !96
  %i.fh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fe, i64 %i.fg) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fj, i64 %i.fc) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  %i.fm = extractvalue { i64, i1 } %i.fk, 0
  %i.fn = or i1 %i.fi, %i.fl
  %i.fo = zext i1 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.fm, ptr %i.fp, align 8, !tbaa !96
  %i.fq = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !96
  %i.fs = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !96
  %i.fu = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fr, i64 %i.ft) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fw, i64 %i.fo) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 1
  %i.fz = extractvalue { i64, i1 } %i.fx, 0
  %i.ga = or i1 %i.fv, %i.fy
  %i.gb = zext i1 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.fz, ptr %i.gc, align 8, !tbaa !96
  %i.gd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !96
  %i.gf = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !96
  %i.gh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ge, i64 %i.gg) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  %i.gj = extractvalue { i64, i1 } %i.gh, 0
  %i.gk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gj, i64 %i.gb) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %i.gn = or i1 %i.gi, %i.gl                      ; 2 uses
  %i.go = zext i1 %i.gn to i64                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.gm, ptr %i.gp, align 8, !tbaa !96
  %i.gq = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.gt = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i27 = icmp ult i64 %i.gt, 4
  br i1 %.not.i.i27, label %.preheader.i.i, label %.lr.ph.i.i26, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.hh, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.hf, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.he, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.hg, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.hd, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.gu = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.gv = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.gw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gu, i64 %i.gv) ; 2 uses
  %i.gx = extractvalue { i64, i1 } %i.gw, 1
  %i.gy = extractvalue { i64, i1 } %i.gw, 0
  %i.gz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gy, i64 %.14154.i.i) ; 2 uses
  %i.ha = extractvalue { i64, i1 } %i.gz, 1
  %i.hb = extractvalue { i64, i1 } %i.gz, 0
  %i.hc = or i1 %i.gx, %i.ha                      ; 2 uses
  %i.hd = zext i1 %i.hc to i64
  store i64 %i.hb, ptr %.13155.i.i, align 8, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.hh = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i.neg.in = phi i1 [ %i.gn, %.preheader.i.i ], [ %i.hc, %.lr.ph59.i.i ]
  %.032.i.ph.i.neg = sext i1 %.032.i.ph.i.neg.in to i64
  %i.hi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i.ph.i.neg) #38, !srcloc !108 ; 3 uses
  %i.hj = xor i64 %i.hi, -1                       ; 2 uses
  %min.iters.check84 = icmp ult i32 %.pre51, 4
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.i11.i
  %n.vec86 = and i64 %i.er, -4                    ; 3 uses
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert89 = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat90 = shufflevector <2 x i64> %broadcast.splatinsert89, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph85
  %index92 = phi i64 [ 0, %vector.ph85 ], [ %index.next97, %vector.body91 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index92 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load93 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !96
  %wide.load94 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !96
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index92 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load95 = load <2 x i64>, ptr %i.hm, align 16, !tbaa !96
  %wide.load96 = load <2 x i64>, ptr %i.hn, align 16, !tbaa !96
  %i.ho = and <2 x i64> %wide.load93, %broadcast.splat88
  %i.hp = and <2 x i64> %wide.load94, %broadcast.splat88
  %i.hq = and <2 x i64> %wide.load95, %broadcast.splat90
  %i.hr = and <2 x i64> %wide.load96, %broadcast.splat90
  %i.hs = or disjoint <2 x i64> %i.hq, %i.ho
  %i.ht = or disjoint <2 x i64> %i.hr, %i.hp
  store <2 x i64> %i.hs, ptr %i.hk, align 8, !tbaa !96
  store <2 x i64> %i.ht, ptr %i.hl, align 8, !tbaa !96
  %index.next97 = add nuw i64 %index92, 4         ; 2 uses
  %i.hu = icmp eq i64 %index.next97, %n.vec86
  br i1 %i.hu, label %middle.block98, label %vector.body91, !llvm.loop !1308

middle.block98:                                   ; preds = %vector.body91
  %cmp.n99 = icmp eq i64 %n.vec86, %i.er
  br i1 %cmp.n99, label %bn_reduce_once_in_place.exit, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph.i11.i, %middle.block98
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i ], [ %n.vec86, %middle.block98 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %.09.i.i = phi i64 [ %i.ic, %scalar.ph83 ], [ %.09.i.i.ph, %scalar.ph83.preheader ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !96
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.09.i.i
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !96
  %i.hz = and i64 %i.hw, %i.hi
  %i.ia = and i64 %i.hy, %i.hj
  %i.ib = or disjoint i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.hv, align 8, !tbaa !96
  %i.ic = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ic, %i.er
  br i1 %exitcond.not.i.i, label %bn_reduce_once_in_place.exit, label %scalar.ph83, !llvm.loop !1309

bn_reduce_once_in_place.exit:                     ; preds = %scalar.ph83, %middle.block98, %bn_rshift_words.exit.thread, %bn_rshift_words.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ecdsa_sign_fixed_with_nonce_for_known_answer_test(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.EC_SCALAR, align 8          ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 26, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.32, i32 noundef 192) #36
  br label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !282    ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ERR_put_error(i32 noundef 26, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.32, i32 noundef 198) #36
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.k = call i32 @ec_scalar_from_bytes(ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef %6, i64 noundef %7)
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.m = call fastcc noundef i32 @_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm(ptr noundef %i.f, ptr noundef %i.a, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.l, ptr noundef %8, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.m, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %.0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address) %5, ptr noundef nonnull %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 6 uses
  %i.b = alloca [9 x i64], align 16               ; 4 uses
  %9 = alloca %struct.EC_JACOBIAN, align 8        ; 5 uses
  %10 = alloca %struct.EC_SCALAR, align 8         ; 7 uses
  %11 = alloca %struct.EC_SCALAR, align 8         ; 12 uses
  %12 = alloca %struct.EC_SCALAR, align 8         ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store i32 0, ptr %1, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 7 uses
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.f, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %BN_num_bits.exit

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.05.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i, 1
  br i1 %i.o, label %bb.b, label %BN_num_bits.exit.thread, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.a
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %BN_num_bits.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !112
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.q = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.h, %bb.b ] ; 3 uses
  %.0.lcssa.i9.i = phi i32 [ %i.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.b ]
  %i.r = add nsw i32 %.0.lcssa.i9.i, -1           ; 2 uses
  %i.s = shl nsw i32 %i.r, 6
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !96   ; 3 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = lshr i64 %i.v, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0                 ; 2 uses
  %i.y = select i1 %.not.i.i, i32 0, i32 32
  %i.z = zext i1 %i.w to i32
  %i.aa = select i1 %.not.i.i, i64 %i.v, i64 %i.x ; 2 uses
  %i.ab = lshr i64 %i.aa, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.ab, 0              ; 2 uses
  %i.ac = select i1 %.not52.i.i, i32 0, i32 16
  %i.ad = select i1 %.not52.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ae, 0              ; 2 uses
  %i.af = select i1 %.not53.i.i, i32 0, i32 8
  %i.ag = select i1 %.not53.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ah, 0              ; 2 uses
  %i.ai = select i1 %.not54.i.i, i32 0, i32 4
  %i.aj = select i1 %.not54.i.i, i64 %i.ag, i64 %i.ah ; 2 uses
  %i.ak = lshr i64 %i.aj, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ak, 0              ; 2 uses
  %i.al = select i1 %.not55.i.i, i32 0, i32 2
  %i.am = select i1 %.not55.i.i, i64 %i.aj, i64 %i.ak
  %i.an = icmp samesign ugt i64 %i.am, 1
end_hunk_19
begin_hunk_20_@_ZL14gcm_mul64_nohwPmS_mm:bb.a
  %i.an = xor i128 %i.al, %i.am
  %i.ao = mul nuw nsw i128 %i.u, %i.p
  %i.ap = xor i128 %i.an, %i.ao
  %i.aq = mul nuw nsw i128 %i.j, %i.t
  %i.ar = xor i128 %i.ap, %i.aq                   ; 2 uses
  %i.as = and i64 %2, 1
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 0, i64 %3
  %i.av = zext i64 %i.au to i128
  %.mask = and i64 %2, 2
  %isneg.not = icmp eq i64 %.mask, 0
  %i.aw = select i1 %isneg.not, i64 0, i64 %3
  %i.ax = zext i64 %i.aw to i128
  %i.ay = shl nuw nsw i128 %i.ax, 1
  %i.az = xor i128 %i.ay, %i.av
  %.mask63 = and i64 %2, 4
  %isneg.not64 = icmp eq i64 %.mask63, 0
  %i.ba = select i1 %isneg.not64, i64 0, i64 %3
  %i.bb = zext i64 %i.ba to i128
  %i.bc = shl nuw nsw i128 %i.bb, 2
  %i.bd = xor i128 %i.az, %i.bc
  %.mask65 = and i64 %2, 8
  %isneg.not66 = icmp eq i64 %.mask65, 0
  %i.be = select i1 %isneg.not66, i64 0, i64 %3
  %i.bf = zext i64 %i.be to i128
  %i.bg = shl nuw nsw i128 %i.bf, 3
  %i.bh = xor i128 %i.bd, %i.bg                   ; 2 uses
  %i.bi = trunc i128 %i.w to i64
  %i.bj = and i64 %i.bi, 1229782938247303441
  %i.bk = trunc i128 %i.ad to i64
  %i.bl = and i64 %i.bk, 2459565876494606882
  %i.bm = or disjoint i64 %i.bj, %i.bl
  %i.bn = trunc i128 %i.ak to i64
  %i.bo = and i64 %i.bn, 4919131752989213764
  %i.bp = or disjoint i64 %i.bm, %i.bo
  %i.bq = trunc i128 %i.ar to i64
  %i.br = and i64 %i.bq, -8608480567731124088
  %i.bs = or disjoint i64 %i.bp, %i.br
  %i.bt = trunc i128 %i.bh to i64
  %i.bu = xor i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %0, align 8, !tbaa !96
  %i.bv = lshr i128 %i.w, 64
  %i.bw = trunc nuw nsw i128 %i.bv to i64
  %i.bx = and i64 %i.bw, 1229782938247303441
  %i.by = lshr i128 %i.ad, 64
  %i.bz = trunc nuw nsw i128 %i.by to i64
  %i.ca = and i64 %i.bz, 2459565876494606882
  %i.cb = or disjoint i64 %i.bx, %i.ca
  %i.cc = lshr i128 %i.ak, 64
  %i.cd = trunc nuw nsw i128 %i.cc to i64
  %i.ce = and i64 %i.cd, 4919131752989213764
  %i.cf = or disjoint i64 %i.cb, %i.ce
  %i.cg = lshr i128 %i.ar, 64
  %i.ch = trunc nuw nsw i128 %i.cg to i64
  %i.ci = and i64 %i.ch, -8608480567731124088
  %i.cj = or disjoint i64 %i.cf, %i.ci
  %i.ck = lshr i128 %i.bh, 64
  %i.cl = trunc nuw nsw i128 %i.ck to i64
  %i.cm = xor i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %1, align 8, !tbaa !96
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #29

declare void @OPENSSL_sk_pop_free_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_Z24sk_BIGNUM_call_free_funcPFvPvES_(ptr noundef %0, ptr noundef %1) #30 comdat {
bb.a:
  tail call void %0(ptr noundef %1) #36
  ret void
}

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #7

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #7

declare i64 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @OPENSSL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 0, 2) i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 5 uses
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bn_sub_words.exit, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.a
  %.not43.i = icmp ult i32 %3, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.a, %.preheader42.i ], [ %i.bc, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.ba, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %1, %.preheader42.i ], [ %i.az, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %0, %.preheader42.i ], [ %i.bb, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.ax, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.bc, 0
  br i1 %.not3453.i, label %bn_sub_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %i.a, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.az, %.lr.ph.i ], [ %1, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.c = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.d = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.e = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.g, i64 %.04044.i) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = or i1 %i.f, %i.i
  %i.l = zext i1 %i.k to i64
  store i64 %i.j, ptr %.03045.i, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.n, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %i.t = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.s, i64 %i.l) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  %i.w = or i1 %i.r, %i.u
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.v, ptr %i.y, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !96
  %i.ad = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0
  %i.ag = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.af, i64 %i.x) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  %i.ai = extractvalue { i64, i1 } %i.ag, 0
  %i.aj = or i1 %i.ae, %i.ah
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ai, ptr %i.al, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !96
  %i.aq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = extractvalue { i64, i1 } %i.aq, 0
  %i.at = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.as, i64 %i.ak) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %i.av = extractvalue { i64, i1 } %i.at, 0
  %i.aw = or i1 %i.ar, %i.au
  %i.ax = zext i1 %i.aw to i64                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.bc = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.bc, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !13

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.bq, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.bo, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.bn, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.bp, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.bm, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.bd = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.be = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.bf = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bd, i64 %i.be) ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 1
  %i.bh = extractvalue { i64, i1 } %i.bf, 0
  %i.bi = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bh, i64 %.14154.i) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %i.bl = or i1 %i.bg, %i.bj
  %i.bm = zext i1 %i.bl to i64                    ; 2 uses
  store i64 %i.bk, ptr %.13155.i, align 8, !tbaa !96
  %i.bn = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.bq = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %bn_sub_words.exit, label %.lr.ph59.i, !llvm.loop !14

bn_sub_words.exit:                                ; preds = %.lr.ph59.i, %bb.a, %.preheader.i
  %.032.i = phi i64 [ 0, %bb.a ], [ %i.ax, %.preheader.i ], [ %i.bm, %.lr.ph59.i ] ; 4 uses
  %i.br = icmp eq i32 %4, 0
  br i1 %i.br, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bn_sub_words.exit
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 4 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a
  %i.bv = icmp slt i32 %4, 0
  br i1 %i.bv, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bw = icmp eq i32 %4, 1
  br i1 %i.bw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.bx = sub nsw i32 0, %4
  %wide.trip.count55 = zext nneg i32 %i.bx to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv52 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next53, %bb.d ] ; 3 uses
  %.03241 = phi i64 [ %.032.i, %bb.c ], [ %i.ch, %bb.d ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv52
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !96
  %i.ca = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 0, i64 %i.bz) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %.03241) ; 2 uses
  %i.ce = extractvalue { i64, i1 } %i.cd, 1
  %i.cf = extractvalue { i64, i1 } %i.cd, 0
  %i.cg = or i1 %i.cb, %i.ce
  %i.ch = zext i1 %i.cg to i64                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv52
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !96
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %.loopexit, label %bb.d, !llvm.loop !1475

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.139 = phi i64 [ %.032.i, %.lr.ph.preheader.new ], [ %i.cv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !96
  %i.cl = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ck, i64 %.139) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  %i.co = zext i1 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !96
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cr, i64 %i.co) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0
  %i.cv = zext i1 %i.ct to i64                    ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit75.unr-lcssa, label %.lr.ph, !llvm.loop !1476

.loopexit.loopexit75.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit75.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit75.unr-lcssa ] ; 2 uses
  %.139.epil.init = phi i64 [ %.032.i, %.lr.ph.preheader ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ]
  %lcmp.mod84 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96
  %i.cz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cy, i64 %.139.epil.init) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  %i.db = extractvalue { i64, i1 } %i.cz, 0
  %i.dc = zext i1 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit75.unr-lcssa, %bb.d, %bn_sub_words.exit
  %.028 = phi i64 [ %.032.i, %bn_sub_words.exit ], [ %i.ch, %bb.d ], [ %i.cv, %.loopexit.loopexit75.unr-lcssa ], [ %i.dc, %.lr.ph.epil.preheader ]
  ret i64 %.028
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = shl nsw i32 %3, 1                        ; 6 uses
  %i.b = icmp slt i32 %3, 8
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %4, %3
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %5, %3
  %i.f = sext i32 %i.e to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, ptr noundef %2, i64 noundef %i.f)
  %i.g = add i32 %5, %4                           ; 2 uses
  %i.h = icmp eq i32 %i.a, %i.g
  br i1 %i.h, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub i32 %i.a, %i.g
  %i.j = sext i32 %i.i to i64
  %i.k = sext i32 %i.a to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = sext i32 %5 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 0, i64 %i.j, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %3 to i64                  ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q ; 6 uses
  %i.s = sub nsw i32 %3, %4                       ; 3 uses
  %i.t = zext nneg i32 %i.a to i64                ; 15 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.t ; 18 uses
  %i.v = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.u, ptr noundef readonly %1, ptr noundef nonnull readonly %i.r, i32 noundef %4, i32 noundef %i.s)
  %i.w = sub nsw i32 0, %i.s
  %i.x = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef nonnull readonly %i.r, ptr noundef readonly %1, i32 noundef %4, i32 noundef %i.w) ; 0 uses
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.z = add nsw i32 %i.y, %4                     ; 3 uses
  %i.aa = sub nsw i64 0, %i.v                     ; 2 uses
  %i.ab = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ac = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #38, !srcloc !108 ; 3 uses
  %i.ad = xor i64 %i.ac, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert382 = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat383 = shufflevector <2 x i64> %broadcast.splatinsert382, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !96
  %wide.load384 = load <2 x i64>, ptr %i.af, align 8, !tbaa !96
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load385 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !96
  %wide.load386 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !96
  %i.ai = and <2 x i64> %wide.load, %broadcast.splat
  %i.aj = and <2 x i64> %wide.load384, %broadcast.splat
  %i.ak = and <2 x i64> %wide.load385, %broadcast.splat383
  %i.al = and <2 x i64> %wide.load386, %broadcast.splat383
  %i.am = or disjoint <2 x i64> %i.ak, %i.ai
  %i.an = or disjoint <2 x i64> %i.al, %i.aj
  store <2 x i64> %i.am, ptr %i.ae, align 8, !tbaa !96
  store <2 x i64> %i.an, ptr %i.af, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.aw, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !96
  %i.at = and i64 %i.aq, %i.ac
  %i.au = and i64 %i.as, %i.ad
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !96
  %i.aw = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.ab
end_hunk_20
begin_hunk_21_@_ZL21bn_mul_part_recursivePmPKmS1_iiiS_:bb.a
  %i.cg = or disjoint i64 %.09.i.i186.ph, 1
  br label %scalar.ph388.prol.loopexit

scalar.ph388.prol.loopexit:                       ; preds = %scalar.ph388.prol, %scalar.ph388.preheader
  %.09.i.i186.unr = phi i64 [ %.09.i.i186.ph, %scalar.ph388.preheader ], [ %i.cg, %scalar.ph388.prol ]
  %i.ch = add nsw i64 %i.bg, -1
  %i.ci = icmp eq i64 %.09.i.i186.ph, %i.ch
  br i1 %i.ci, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph388

scalar.ph388:                                     ; preds = %scalar.ph388.prol.loopexit, %scalar.ph388
  %.09.i.i186 = phi i64 [ %i.cy, %scalar.ph388 ], [ %.09.i.i186.unr, %scalar.ph388.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.09.i.i186 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !96
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i.i186
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !96
  %i.cn = and i64 %i.ck, %i.bh
  %i.co = and i64 %i.cm, %i.bi
  %i.cp = or disjoint i64 %i.co, %i.cn
  store i64 %i.cp, ptr %i.cj, align 8, !tbaa !96
  %i.cq = add nuw i64 %.09.i.i186, 1              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !96
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !96
  %i.cv = and i64 %i.cs, %i.bh
  %i.cw = and i64 %i.cu, %i.bi
  %i.cx = or disjoint i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.cr, align 8, !tbaa !96
  %i.cy = add nuw i64 %.09.i.i186, 2              ; 2 uses
  %exitcond.not.i.i187.1 = icmp eq i64 %i.cy, %i.bg
  br i1 %exitcond.not.i.i187.1, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188, label %scalar.ph388, !llvm.loop !1483

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188:   ; preds = %scalar.ph388.prol.loopexit, %scalar.ph388, %middle.block403, %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.cz = xor i64 %i.bf, %i.aa
  %i.da = icmp eq i32 %3, 8
  br i1 %i.da, label %bb.e, label %_ZL14OPENSSL_memsetPvim.exit190

bb.e:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.dc = sext i32 %4 to i64
  %i.dd = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.db, ptr noundef nonnull %i.r, i64 noundef %i.dc, ptr noundef nonnull %i.ay, i64 noundef %i.dd)
  %i.de = add i32 %5, %4                          ; 3 uses
  %i.df = icmp eq i32 %i.de, 16
  br i1 %i.df, label %.preheader42.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dg = sub i32 16, %i.de
  %i.dh = sext i32 %i.dg to i64
  %i.di = shl nsw i64 %i.dh, 3
  %i.dj = add i32 %i.de, %i.a
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dl, i8 0, i64 %i.di, i1 false)
  br label %.preheader42.i

_ZL14OPENSSL_memsetPvim.exit190:                  ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit188
  %i.dm = shl nuw nsw i32 %3, 2
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dn ; 4 uses
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.u, ptr noundef nonnull %6, ptr noundef nonnull %i.ax, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.do)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.dq = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  %i.dr = icmp slt i32 %4, 16
  %i.ds = icmp slt i32 %5, 16
  %or.cond = and i1 %i.dr, %i.ds
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %invariant.smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  br label %bb.h

bb.g:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit190
  %i.dt = sext i32 %4 to i64
  %i.du = sext i32 %5 to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, i64 noundef %i.dt, ptr noundef nonnull %i.ay, i64 noundef %i.du)
  br label %.preheader42.i

bb.h:                                             ; preds = %.preheader, %bb.j
  %.0175 = phi i32 [ %i.dv, %bb.j ], [ %3, %.preheader ]
  %i.dv = sdiv i32 %.0175, 2                      ; 10 uses
  %or.cond182 = icmp slt i32 %i.dv, %invariant.smax
  br i1 %or.cond182, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dw = sub nsw i32 %4, %i.dv
  %i.dx = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL21bn_mul_part_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef nonnull %i.do)
  br label %.preheader42.i

bb.j:                                             ; preds = %bb.h
  %i.dy = icmp eq i32 %i.dv, %4
  %i.dz = icmp eq i32 %i.dv, %5
  %or.cond183 = or i1 %i.dy, %i.dz
  br i1 %or.cond183, label %bb.k, label %bb.h, !llvm.loop !1484

bb.k:                                             ; preds = %bb.j
  %i.ea = sub nsw i32 %4, %i.dv
  %i.eb = sub nsw i32 %5, %i.dv
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ay, i32 noundef %i.dv, i32 noundef %i.ea, i32 noundef %i.eb, ptr noundef nonnull %i.do)
  br label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.i, %bb.k, %bb.g, %bb.e, %bb.f
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.gd, 0
  br i1 %.not3453.i, label %.preheader42.i191, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.gd, %.lr.ph.i ], [ %i.t, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.gb, %.lr.ph.i ], [ %i.ec, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.ga, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.gc, %.lr.ph.i ], [ %6, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.fy, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.ed = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.ee = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.ef = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eh, i64 %.04044.i) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64
  store i64 %i.ek, ptr %.03045.i, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !96
  %i.ep = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !96
  %i.er = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.eo, i64 %i.eq) ; 2 uses
  %i.es = extractvalue { i64, i1 } %i.er, 1
  %i.et = extractvalue { i64, i1 } %i.er, 0
  %i.eu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.et, i64 %i.em) ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  %i.ew = extractvalue { i64, i1 } %i.eu, 0
  %i.ex = or i1 %i.es, %i.ev
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.ew, ptr %i.ez, align 8, !tbaa !96
  %i.fa = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !96
  %i.fc = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !96
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fb, i64 %i.fd) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fg, i64 %i.ey) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = or i1 %i.ff, %i.fi
  %i.fl = zext i1 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.fj, ptr %i.fm, align 8, !tbaa !96
  %i.fn = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !96
  %i.fr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fo, i64 %i.fq) ; 2 uses
  %i.fs = extractvalue { i64, i1 } %i.fr, 1
  %i.ft = extractvalue { i64, i1 } %i.fr, 0
  %i.fu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ft, i64 %i.fl) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = or i1 %i.fs, %i.fv
  %i.fy = zext i1 %i.fx to i64                    ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.fw, ptr %i.fz, align 8, !tbaa !96
  %i.ga = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.gd = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.gd, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.preheader.i, %.lr.ph59.i
  %.158.i = phi i64 [ %i.gr, %.lr.ph59.i ], [ %i.gd, %.preheader.i ]
  %.12757.i = phi ptr [ %i.gp, %.lr.ph59.i ], [ %i.gb, %.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.go, %.lr.ph59.i ], [ %i.ga, %.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.gq, %.lr.ph59.i ], [ %i.gc, %.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.gn, %.lr.ph59.i ], [ %i.fy, %.preheader.i ]
  %i.ge = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.gf = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.gg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ge, i64 %i.gf) ; 2 uses
  %i.gh = extractvalue { i64, i1 } %i.gg, 1
  %i.gi = extractvalue { i64, i1 } %i.gg, 0
  %i.gj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.gi, i64 %.14154.i) ; 2 uses
  %i.gk = extractvalue { i64, i1 } %i.gj, 1
  %i.gl = extractvalue { i64, i1 } %i.gj, 0
  %i.gm = or i1 %i.gh, %i.gk
  %i.gn = zext i1 %i.gm to i64                    ; 2 uses
  store i64 %i.gl, ptr %.13155.i, align 8, !tbaa !96
  %i.go = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.gr = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.gr, 0
  br i1 %.not34.i, label %.preheader42.i191, label %.lr.ph59.i, !llvm.loop !12

.preheader42.i191:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.fy, %.preheader.i ], [ %i.gn, %.lr.ph59.i ] ; 2 uses
  %i.gs = shl i32 %3, 2                           ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 4 uses
  %i.gu = getelementptr [8 x i8], ptr %6, i64 %i.gt ; 5 uses
  br label %.lr.ph.i193

.preheader.i200:                                  ; preds = %.lr.ph.i193
  %.not3453.i201 = icmp eq i64 %i.iv, 0
  br i1 %.not3453.i201, label %.preheader42.i216, label %.lr.ph59.i208

.lr.ph.i193:                                      ; preds = %.preheader42.i191, %.lr.ph.i193
  %.048.i194 = phi i64 [ %i.iv, %.lr.ph.i193 ], [ %i.t, %.preheader42.i191 ]
  %.02647.i195 = phi ptr [ %i.it, %.lr.ph.i193 ], [ %i.u, %.preheader42.i191 ] ; 5 uses
  %.02846.i196 = phi ptr [ %i.is, %.lr.ph.i193 ], [ %6, %.preheader42.i191 ] ; 5 uses
  %.03045.i197 = phi ptr [ %i.iu, %.lr.ph.i193 ], [ %i.gu, %.preheader42.i191 ] ; 5 uses
  %.04044.i198 = phi i64 [ %i.iq, %.lr.ph.i193 ], [ 0, %.preheader42.i191 ]
  %i.gv = load i64, ptr %.02846.i196, align 8, !tbaa !96
  %i.gw = load i64, ptr %.02647.i195, align 8, !tbaa !96
  %i.gx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gv, i64 %i.gw) ; 2 uses
  %i.gy = extractvalue { i64, i1 } %i.gx, 1
  %i.gz = extractvalue { i64, i1 } %i.gx, 0
  %i.ha = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gz, i64 %.04044.i198) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0
  %i.hd = or i1 %i.gy, %i.hb
  %i.he = zext i1 %i.hd to i64
  store i64 %i.hc, ptr %.03045.i197, align 8, !tbaa !96
  %i.hf = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !96
  %i.hh = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !96
  %i.hj = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hg, i64 %i.hi) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  %i.hl = extractvalue { i64, i1 } %i.hj, 0
  %i.hm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hl, i64 %i.he) ; 2 uses
  %i.hn = extractvalue { i64, i1 } %i.hm, 1
  %i.ho = extractvalue { i64, i1 } %i.hm, 0
  %i.hp = or i1 %i.hk, %i.hn
  %i.hq = zext i1 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 8
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !96
  %i.hw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ht, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hy, i64 %i.hq) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 16
  store i64 %i.ib, ptr %i.ie, align 8, !tbaa !96
  %i.if = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !96
  %i.ih = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !96
  %i.ij = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ig, i64 %i.ii) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 1
  %i.il = extractvalue { i64, i1 } %i.ij, 0
  %i.im = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.il, i64 %i.id) ; 2 uses
  %i.in = extractvalue { i64, i1 } %i.im, 1
  %i.io = extractvalue { i64, i1 } %i.im, 0
  %i.ip = or i1 %i.ik, %i.in
  %i.iq = zext i1 %i.ip to i64                    ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 24
  store i64 %i.io, ptr %i.ir, align 8, !tbaa !96
  %i.is = getelementptr inbounds nuw i8, ptr %.02846.i196, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.02647.i195, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.03045.i197, i64 32 ; 2 uses
  %i.iv = add i64 %.048.i194, -4                  ; 4 uses
  %.not.i199 = icmp ult i64 %i.iv, 4
  br i1 %.not.i199, label %.preheader.i200, label %.lr.ph.i193, !llvm.loop !13

.lr.ph59.i208:                                    ; preds = %.preheader.i200, %.lr.ph59.i208
  %.158.i209 = phi i64 [ %i.jj, %.lr.ph59.i208 ], [ %i.iv, %.preheader.i200 ]
  %.12757.i210 = phi ptr [ %i.jh, %.lr.ph59.i208 ], [ %i.it, %.preheader.i200 ] ; 2 uses
  %.12956.i211 = phi ptr [ %i.jg, %.lr.ph59.i208 ], [ %i.is, %.preheader.i200 ] ; 2 uses
  %.13155.i212 = phi ptr [ %i.ji, %.lr.ph59.i208 ], [ %i.iu, %.preheader.i200 ] ; 2 uses
  %.14154.i213 = phi i64 [ %i.jf, %.lr.ph59.i208 ], [ %i.iq, %.preheader.i200 ]
  %i.iw = load i64, ptr %.12956.i211, align 8, !tbaa !96
  %i.ix = load i64, ptr %.12757.i210, align 8, !tbaa !96
  %i.iy = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.iw, i64 %i.ix) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  %i.ja = extractvalue { i64, i1 } %i.iy, 0
  %i.jb = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ja, i64 %.14154.i213) ; 2 uses
  %i.jc = extractvalue { i64, i1 } %i.jb, 1
  %i.jd = extractvalue { i64, i1 } %i.jb, 0
  %i.je = or i1 %i.iz, %i.jc
  %i.jf = zext i1 %i.je to i64                    ; 2 uses
  store i64 %i.jd, ptr %.13155.i212, align 8, !tbaa !96
  %i.jg = getelementptr inbounds nuw i8, ptr %.12956.i211, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %.12757.i210, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.13155.i212, i64 8
  %i.jj = add nsw i64 %.158.i209, -1              ; 2 uses
  %.not34.i214 = icmp eq i64 %i.jj, 0
  br i1 %.not34.i214, label %.preheader42.i216, label %.lr.ph59.i208, !llvm.loop !14

.preheader42.i216:                                ; preds = %.lr.ph59.i208, %.preheader.i200
  %.032.i215 = phi i64 [ %i.iq, %.preheader.i200 ], [ %i.jf, %.lr.ph59.i208 ]
  br label %.lr.ph.i218

.preheader.i225:                                  ; preds = %.lr.ph.i218
  %i.jk = sub nsw i64 %.032.i, %.032.i215
  %.not3453.i226 = icmp eq i64 %i.lh, 0
  br i1 %.not3453.i226, label %.lr.ph.i243, label %.lr.ph59.i233

.lr.ph.i218:                                      ; preds = %.preheader42.i216, %.lr.ph.i218
  %.048.i219 = phi i64 [ %i.lh, %.lr.ph.i218 ], [ %i.t, %.preheader42.i216 ]
  %.02647.i220 = phi ptr [ %i.lg, %.lr.ph.i218 ], [ %i.u, %.preheader42.i216 ] ; 6 uses
  %.02846.i221 = phi ptr [ %i.lf, %.lr.ph.i218 ], [ %6, %.preheader42.i216 ] ; 5 uses
  %.04044.i223 = phi i64 [ %i.le, %.lr.ph.i218 ], [ 0, %.preheader42.i216 ]
  %i.jl = load i64, ptr %.02846.i221, align 8, !tbaa !96
  %i.jm = load i64, ptr %.02647.i220, align 8, !tbaa !96
  %i.jn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jl, i64 %i.jm) ; 2 uses
  %i.jo = extractvalue { i64, i1 } %i.jn, 1
  %i.jp = extractvalue { i64, i1 } %i.jn, 0
  %i.jq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jp, i64 %.04044.i223) ; 2 uses
  %i.jr = extractvalue { i64, i1 } %i.jq, 1
  %i.js = extractvalue { i64, i1 } %i.jq, 0
  %i.jt = or i1 %i.jo, %i.jr
  %i.ju = zext i1 %i.jt to i64
  store i64 %i.js, ptr %.02647.i220, align 8, !tbaa !96
  %i.jv = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !96
  %i.jx = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 8 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !96
  %i.jz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jw, i64 %i.jy) ; 2 uses
  %i.ka = extractvalue { i64, i1 } %i.jz, 1
  %i.kb = extractvalue { i64, i1 } %i.jz, 0
  %i.kc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kb, i64 %i.ju) ; 2 uses
  %i.kd = extractvalue { i64, i1 } %i.kc, 1
  %i.ke = extractvalue { i64, i1 } %i.kc, 0
  %i.kf = or i1 %i.ka, %i.kd
  %i.kg = zext i1 %i.kf to i64
  store i64 %i.ke, ptr %i.jx, align 8, !tbaa !96
  %i.kh = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !96
  %i.kj = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 16 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !96
  %i.kl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ki, i64 %i.kk) ; 2 uses
  %i.km = extractvalue { i64, i1 } %i.kl, 1
  %i.kn = extractvalue { i64, i1 } %i.kl, 0
  %i.ko = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kn, i64 %i.kg) ; 2 uses
  %i.kp = extractvalue { i64, i1 } %i.ko, 1
  %i.kq = extractvalue { i64, i1 } %i.ko, 0
  %i.kr = or i1 %i.km, %i.kp
  %i.ks = zext i1 %i.kr to i64
  store i64 %i.kq, ptr %i.kj, align 8, !tbaa !96
  %i.kt = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !96
  %i.kv = getelementptr inbounds nuw i8, ptr %.02647.i220, i64 24 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !96
  %i.kx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ku, i64 %i.kw) ; 2 uses
  %i.ky = extractvalue { i64, i1 } %i.kx, 1
  %i.kz = extractvalue { i64, i1 } %i.kx, 0
  %i.la = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kz, i64 %i.ks) ; 2 uses
  %i.lb = extractvalue { i64, i1 } %i.la, 1
  %i.lc = extractvalue { i64, i1 } %i.la, 0
  %i.ld = or i1 %i.ky, %i.lb
  %i.le = zext i1 %i.ld to i64                    ; 3 uses
  store i64 %i.lc, ptr %i.kv, align 8, !tbaa !96
  %i.lf = getelementptr inbounds nuw i8, ptr %.02846.i221, i64 32 ; 2 uses
  %i.lg = getelementptr i8, ptr %.02647.i220, i64 32 ; 2 uses
  %i.lh = add i64 %.048.i219, -4                  ; 4 uses
  %.not.i224 = icmp ult i64 %i.lh, 4
  br i1 %.not.i224, label %.preheader.i225, label %.lr.ph.i218, !llvm.loop !11

.lr.ph59.i233:                                    ; preds = %.preheader.i225, %.lr.ph59.i233
  %.158.i234 = phi i64 [ %i.lu, %.lr.ph59.i233 ], [ %i.lh, %.preheader.i225 ]
  %.12757.i235 = phi ptr [ %i.lt, %.lr.ph59.i233 ], [ %i.lg, %.preheader.i225 ] ; 3 uses
  %.12956.i236 = phi ptr [ %i.ls, %.lr.ph59.i233 ], [ %i.lf, %.preheader.i225 ] ; 2 uses
  %.14154.i238 = phi i64 [ %i.lr, %.lr.ph59.i233 ], [ %i.le, %.preheader.i225 ]
  %i.li = load i64, ptr %.12956.i236, align 8, !tbaa !96
  %i.lj = load i64, ptr %.12757.i235, align 8, !tbaa !96
  %i.lk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.li, i64 %i.lj) ; 2 uses
  %i.ll = extractvalue { i64, i1 } %i.lk, 1
  %i.lm = extractvalue { i64, i1 } %i.lk, 0
  %i.ln = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.lm, i64 %.14154.i238) ; 2 uses
  %i.lo = extractvalue { i64, i1 } %i.ln, 1
  %i.lp = extractvalue { i64, i1 } %i.ln, 0
  %i.lq = or i1 %i.ll, %i.lo
  %i.lr = zext i1 %i.lq to i64                    ; 2 uses
  store i64 %i.lp, ptr %.12757.i235, align 8, !tbaa !96
  %i.ls = getelementptr inbounds nuw i8, ptr %.12956.i236, i64 8
  %i.lt = getelementptr i8, ptr %.12757.i235, i64 8
  %i.lu = add nsw i64 %.158.i234, -1              ; 2 uses
  %.not34.i239 = icmp eq i64 %i.lu, 0
  br i1 %.not34.i239, label %.lr.ph.i243, label %.lr.ph59.i233, !llvm.loop !12

.lr.ph.i243:                                      ; preds = %.lr.ph59.i233, %.preheader.i225
  %.032.i240 = phi i64 [ %i.le, %.preheader.i225 ], [ %i.lr, %.lr.ph59.i233 ]
  %i.lv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cz) #38 ; 5 uses
  %i.lw = xor i64 %i.lv, -1                       ; 4 uses
  %min.iters.check413 = icmp ult i32 %i.a, 10
  br i1 %min.iters.check413, label %scalar.ph412.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph.i243
  %i.lx = shl nuw nsw i64 %i.t, 4
  %scevgep407 = getelementptr i8, ptr %6, i64 %i.lx
  %i.ly = add nuw nsw i64 %i.gt, %i.t
  %i.lz = shl nuw nsw i64 %i.ly, 3
  %scevgep408 = getelementptr i8, ptr %6, i64 %i.lz
  %bound0409 = icmp ult ptr %i.u, %scevgep408
  %bound1410 = icmp ult ptr %i.gu, %scevgep407
  %found.conflict411 = and i1 %bound0409, %bound1410
  br i1 %found.conflict411, label %scalar.ph412.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %vector.memcheck406
  %n.vec415 = and i64 %i.t, 2147483644            ; 3 uses
  %broadcast.splatinsert416 = insertelement <2 x i64> poison, i64 %i.lv, i64 0
  %broadcast.splat417 = shufflevector <2 x i64> %broadcast.splatinsert416, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert418 = insertelement <2 x i64> poison, i64 %i.lw, i64 0
  %broadcast.splat419 = shufflevector <2 x i64> %broadcast.splatinsert418, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph414
  %index421 = phi i64 [ 0, %vector.ph414 ], [ %index.next426, %vector.body420 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index421 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load422 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !96, !alias.scope !1493
  %wide.load423 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !96, !alias.scope !1493
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index421 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %wide.load424 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !96, !alias.scope !1494, !noalias !1493
  %wide.load425 = load <2 x i64>, ptr %i.md, align 8, !tbaa !96, !alias.scope !1494, !noalias !1493
  %i.me = and <2 x i64> %wide.load422, %broadcast.splat417
  %i.mf = and <2 x i64> %wide.load423, %broadcast.splat417
  %i.mg = and <2 x i64> %wide.load424, %broadcast.splat419
  %i.mh = and <2 x i64> %wide.load425, %broadcast.splat419
  %i.mi = or disjoint <2 x i64> %i.mg, %i.me
  %i.mj = or disjoint <2 x i64> %i.mh, %i.mf
  store <2 x i64> %i.mi, ptr %i.mc, align 8, !tbaa !96, !alias.scope !1494, !noalias !1493
  store <2 x i64> %i.mj, ptr %i.md, align 8, !tbaa !96, !alias.scope !1494, !noalias !1493
  %index.next426 = add nuw i64 %index421, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next426, %n.vec415
  br i1 %i.mk, label %middle.block427, label %vector.body420, !llvm.loop !1488

middle.block427:                                  ; preds = %vector.body420
  %cmp.n428 = icmp eq i64 %n.vec415, %i.t
  br i1 %cmp.n428, label %.preheader42.i244, label %scalar.ph412.preheader

scalar.ph412.preheader:                           ; preds = %vector.memcheck406, %.lr.ph.i243, %middle.block427
  %.09.i.ph = phi i64 [ 0, %vector.memcheck406 ], [ 0, %.lr.ph.i243 ], [ %n.vec415, %middle.block427 ]
  br label %scalar.ph412

scalar.ph412:                                     ; preds = %scalar.ph412, %scalar.ph412.preheader
  %.09.i = phi i64 [ %.09.i.ph, %scalar.ph412.preheader ], [ %i.na, %scalar.ph412 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.09.i
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !96
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.09.i ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !96
  %i.mp = and i64 %i.mm, %i.lv
  %i.mq = and i64 %i.mo, %i.lw
  %i.mr = or disjoint i64 %i.mq, %i.mp
  store i64 %i.mr, ptr %i.mn, align 8, !tbaa !96
  %i.ms = or disjoint i64 %.09.i, 1               ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !96
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ms ; 2 uses
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !96
  %i.mx = and i64 %i.mu, %i.lv
  %i.my = and i64 %i.mw, %i.lw
  %i.mz = or disjoint i64 %i.my, %i.mx
  store i64 %i.mz, ptr %i.mv, align 8, !tbaa !96
  %i.na = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.na, %i.t
  br i1 %exitcond.not.i.1, label %.preheader42.i244, label %scalar.ph412, !llvm.loop !1489

.preheader42.i244:                                ; preds = %scalar.ph412, %middle.block427
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  br label %.lr.ph.i246

.preheader.i253:                                  ; preds = %.lr.ph.i246
  %i.nc = add nuw nsw i64 %.032.i240, %.032.i
  %i.nd = and i64 %i.lv, %i.jk
  %i.ne = and i64 %i.nc, %i.lw
  %i.nf = or disjoint i64 %i.nd, %i.ne
  %.not3453.i254 = icmp eq i64 %i.pc, 0
  br i1 %.not3453.i254, label %bn_add_words.exit269, label %.lr.ph59.i261

.lr.ph.i246:                                      ; preds = %.preheader42.i244, %.lr.ph.i246
  %.048.i247 = phi i64 [ %i.pc, %.lr.ph.i246 ], [ %i.t, %.preheader42.i244 ]
  %.02647.i248 = phi ptr [ %i.pb, %.lr.ph.i246 ], [ %i.u, %.preheader42.i244 ] ; 5 uses
  %.02846.i249 = phi ptr [ %i.pa, %.lr.ph.i246 ], [ %i.nb, %.preheader42.i244 ] ; 6 uses
  %.04044.i251 = phi i64 [ %i.oz, %.lr.ph.i246 ], [ 0, %.preheader42.i244 ]
  %i.ng = load i64, ptr %.02846.i249, align 8, !tbaa !96
  %i.nh = load i64, ptr %.02647.i248, align 8, !tbaa !96
  %i.ni = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ng, i64 %i.nh) ; 2 uses
  %i.nj = extractvalue { i64, i1 } %i.ni, 1
  %i.nk = extractvalue { i64, i1 } %i.ni, 0
  %i.nl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nk, i64 %.04044.i251) ; 2 uses
  %i.nm = extractvalue { i64, i1 } %i.nl, 1
  %i.nn = extractvalue { i64, i1 } %i.nl, 0
  %i.no = or i1 %i.nj, %i.nm
  %i.np = zext i1 %i.no to i64
  store i64 %i.nn, ptr %.02846.i249, align 8, !tbaa !96
  %i.nq = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 8 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !96
  %i.ns = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !96
  %i.nu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nr, i64 %i.nt) ; 2 uses
  %i.nv = extractvalue { i64, i1 } %i.nu, 1
  %i.nw = extractvalue { i64, i1 } %i.nu, 0
  %i.nx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nw, i64 %i.np) ; 2 uses
  %i.ny = extractvalue { i64, i1 } %i.nx, 1
  %i.nz = extractvalue { i64, i1 } %i.nx, 0
  %i.oa = or i1 %i.nv, %i.ny
  %i.ob = zext i1 %i.oa to i64
  store i64 %i.nz, ptr %i.nq, align 8, !tbaa !96
  %i.oc = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 16 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !96
  %i.oe = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 16
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !96
  %i.og = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.od, i64 %i.of) ; 2 uses
  %i.oh = extractvalue { i64, i1 } %i.og, 1
  %i.oi = extractvalue { i64, i1 } %i.og, 0
  %i.oj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oi, i64 %i.ob) ; 2 uses
  %i.ok = extractvalue { i64, i1 } %i.oj, 1
  %i.ol = extractvalue { i64, i1 } %i.oj, 0
  %i.om = or i1 %i.oh, %i.ok
  %i.on = zext i1 %i.om to i64
  store i64 %i.ol, ptr %i.oc, align 8, !tbaa !96
  %i.oo = getelementptr inbounds nuw i8, ptr %.02846.i249, i64 24 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !96
  %i.oq = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !96
  %i.os = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.op, i64 %i.or) ; 2 uses
  %i.ot = extractvalue { i64, i1 } %i.os, 1
  %i.ou = extractvalue { i64, i1 } %i.os, 0
  %i.ov = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ou, i64 %i.on) ; 2 uses
  %i.ow = extractvalue { i64, i1 } %i.ov, 1
  %i.ox = extractvalue { i64, i1 } %i.ov, 0
  %i.oy = or i1 %i.ot, %i.ow
  %i.oz = zext i1 %i.oy to i64                    ; 3 uses
  store i64 %i.ox, ptr %i.oo, align 8, !tbaa !96
  %i.pa = getelementptr i8, ptr %.02846.i249, i64 32 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.02647.i248, i64 32 ; 2 uses
  %i.pc = add i64 %.048.i247, -4                  ; 4 uses
  %.not.i252 = icmp ult i64 %i.pc, 4
  br i1 %.not.i252, label %.preheader.i253, label %.lr.ph.i246, !llvm.loop !11

.lr.ph59.i261:                                    ; preds = %.preheader.i253, %.lr.ph59.i261
  %.158.i262 = phi i64 [ %i.pp, %.lr.ph59.i261 ], [ %i.pc, %.preheader.i253 ]
  %.12757.i263 = phi ptr [ %i.po, %.lr.ph59.i261 ], [ %i.pb, %.preheader.i253 ] ; 2 uses
  %.12956.i264 = phi ptr [ %i.pn, %.lr.ph59.i261 ], [ %i.pa, %.preheader.i253 ] ; 3 uses
  %.14154.i266 = phi i64 [ %i.pm, %.lr.ph59.i261 ], [ %i.oz, %.preheader.i253 ]
  %i.pd = load i64, ptr %.12956.i264, align 8, !tbaa !96
  %i.pe = load i64, ptr %.12757.i263, align 8, !tbaa !96
  %i.pf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pd, i64 %i.pe) ; 2 uses
  %i.pg = extractvalue { i64, i1 } %i.pf, 1
  %i.ph = extractvalue { i64, i1 } %i.pf, 0
  %i.pi = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ph, i64 %.14154.i266) ; 2 uses
  %i.pj = extractvalue { i64, i1 } %i.pi, 1
  %i.pk = extractvalue { i64, i1 } %i.pi, 0
  %i.pl = or i1 %i.pg, %i.pj
  %i.pm = zext i1 %i.pl to i64                    ; 2 uses
  store i64 %i.pk, ptr %.12956.i264, align 8, !tbaa !96
  %i.pn = getelementptr i8, ptr %.12956.i264, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %.12757.i263, i64 8
  %i.pp = add nsw i64 %.158.i262, -1              ; 2 uses
  %.not34.i267 = icmp eq i64 %i.pp, 0
  br i1 %.not34.i267, label %bn_add_words.exit269, label %.lr.ph59.i261, !llvm.loop !12

bn_add_words.exit269:                             ; preds = %.lr.ph59.i261, %.preheader.i253
  %.032.i268 = phi i64 [ %i.oz, %.preheader.i253 ], [ %i.pm, %.lr.ph59.i261 ]
  %i.pq = mul nuw nsw i32 %3, 3                   ; 2 uses
  %i.pr = icmp samesign ult i32 %i.pq, %i.gs
  br i1 %i.pr, label %.lr.ph.preheader, label %_ZL14OPENSSL_memsetPvim.exit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit269
  %i.ps = add i64 %i.nf, %.032.i268               ; 2 uses
  %i.pt = zext nneg i32 %i.pq to i64              ; 5 uses
  %xtraiter453 = and i64 %i.pt, 1
  %lcmp.mod454.not = icmp eq i64 %xtraiter453, 0
  br i1 %lcmp.mod454.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pt ; 2 uses
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !96 ; 2 uses
  %i.pw = add i64 %i.pv, %i.ps                    ; 2 uses
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !96
  %i.px = icmp ult i64 %i.pw, %i.pv
  %i.py = zext i1 %i.px to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.pt, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.pt, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0174295.unr = phi i64 [ %i.ps, %.lr.ph.preheader ], [ %i.py, %.lr.ph.prol ]
  %i.pz = add nsw i64 %i.gt, -1
  %i.qa = icmp eq i64 %i.pz, %i.pt
  br i1 %i.qa, label %_ZL14OPENSSL_memsetPvim.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0174295 = phi i64 [ %i.ql, %.lr.ph ], [ %.0174295.unr, %.lr.ph.prol.loopexit ]
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !96 ; 2 uses
  %i.qd = add i64 %i.qc, %.0174295                ; 2 uses
  store i64 %i.qd, ptr %i.qb, align 8, !tbaa !96
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %i.qf = zext i1 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !96 ; 2 uses
  %i.qj = add i64 %i.qi, %i.qf                    ; 2 uses
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !96
  %i.qk = icmp ult i64 %i.qj, %i.qi
  %i.ql = zext i1 %i.qk to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.gt
  br i1 %exitcond.not.1, label %_ZL14OPENSSL_memsetPvim.exit, label %.lr.ph, !llvm.loop !1490

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit269, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -1073741824, -2147483648) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i32 %3, 8
  %i.b = or i32 %5, %4
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  %or.cond3 = and i1 %i.a, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %3, 16
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %4, %3
  %i.f = sext i32 %i.e to i64
  %i.g = add nsw i32 %5, %3
  %i.h = sext i32 %i.g to i64
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %1, i64 noundef %i.f, ptr noundef %2, i64 noundef %i.h)
  %i.i = add nsw i32 %5, %4                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZL14OPENSSL_memsetPvim.exit, label %.loopexit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d
  %i.k = shl nsw i32 %3, 1
  %i.l = add nsw i32 %i.k, %4
  %i.m = add nsw i32 %i.l, %5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = sub nsw i32 0, %i.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.r, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = lshr i32 %3, 1                           ; 10 uses
  %i.t = add nsw i32 %i.s, %4                     ; 3 uses
  %i.u = add nsw i32 %5, %i.s                     ; 3 uses
  %i.v = zext nneg i32 %i.s to i64                ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = sub i32 0, %4
  %i.y = zext nneg i32 %3 to i64                  ; 16 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.y ; 19 uses
  %i.aa = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %1, ptr noundef readonly %i.w, i32 noundef %i.t, i32 noundef %i.x)
  %i.ab = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %6, ptr noundef readonly %i.w, ptr noundef readonly %1, i32 noundef %i.t, i32 noundef %4) ; 0 uses
  %i.ac = tail call i32 @llvm.abs.i32(i32 %4, i1 true)
  %i.ad = add nsw i32 %i.ac, %i.t                 ; 3 uses
  %i.ae = sub nsw i64 0, %i.aa                    ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ag = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #38, !srcloc !108 ; 3 uses
  %i.ah = xor i64 %i.ag, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.af, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert354 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat355 = shufflevector <2 x i64> %broadcast.splatinsert354, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !96
  %wide.load356 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load357 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !96
  %wide.load358 = load <2 x i64>, ptr %i.al, align 8, !tbaa !96
  %i.am = and <2 x i64> %wide.load, %broadcast.splat
  %i.an = and <2 x i64> %wide.load356, %broadcast.splat
  %i.ao = and <2 x i64> %wide.load357, %broadcast.splat355
  %i.ap = and <2 x i64> %wide.load358, %broadcast.splat355
  %i.aq = or disjoint <2 x i64> %i.ao, %i.am
  %i.ar = or disjoint <2 x i64> %i.ap, %i.an
  store <2 x i64> %i.aq, ptr %i.ai, align 8, !tbaa !96
  store <2 x i64> %i.ar, ptr %i.aj, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br i1 %cmp.n, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.ba, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !96
  %i.ax = and i64 %i.au, %i.ag
  %i.ay = and i64 %i.aw, %i.ah
  %i.az = or disjoint i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.at, align 8, !tbaa !96
  %i.ba = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit, label %scalar.ph, !llvm.loop !1496

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit:      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.bb = getelementptr [8 x i8], ptr %6, i64 %i.v ; 8 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v ; 4 uses
  %i.bd = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef nonnull %i.z, ptr noundef readonly %i.bc, ptr noundef readonly %2, i32 noundef %i.u, i32 noundef %5)
  %i.be = sub nsw i32 0, %5
  %i.bf = tail call fastcc noundef i64 @_ZL17bn_sub_part_wordsPmPKmS1_ii(ptr noundef %i.bb, ptr noundef readonly %2, ptr noundef readonly %i.bc, i32 noundef %i.u, i32 noundef %i.be) ; 0 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %i.bh = add nsw i32 %i.bg, %i.u                 ; 4 uses
  %i.bi = sub nsw i64 0, %i.bd                    ; 2 uses
  %i.bj = sext i32 %i.bh to i64                   ; 6 uses
  %.not.i.i171 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i171, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.bk = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bi) #38, !srcloc !108 ; 5 uses
  %i.bl = xor i64 %i.bk, -1                       ; 4 uses
  %min.iters.check361 = icmp ult i32 %i.bh, 10
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i172
  %i.bm = add nsw i64 %i.v, %i.bj
  %i.bn = shl nsw i64 %i.bm, 3
  %scevgep = getelementptr i8, ptr %6, i64 %i.bn
  %i.bo = add nsw i64 %i.bj, %i.y
  %i.bp = shl nsw i64 %i.bo, 3
  %scevgep359 = getelementptr i8, ptr %6, i64 %i.bp
  %bound0 = icmp ult ptr %i.bb, %scevgep359
  %bound1 = icmp ult ptr %i.z, %scevgep
end_hunk_21
begin_hunk_22_@_ZL16bn_mul_recursivePmPKmS1_iiiS_:bb.a
  br i1 %found.conflict, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck
  %n.vec363 = and i64 %i.bj, -4                   ; 3 uses
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat367 = shufflevector <2 x i64> %broadcast.splatinsert366, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph362
  %index369 = phi i64 [ 0, %vector.ph362 ], [ %index.next374, %vector.body368 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index369 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load370 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !96, !alias.scope !1508, !noalias !1509
  %wide.load371 = load <2 x i64>, ptr %i.br, align 8, !tbaa !96, !alias.scope !1508, !noalias !1509
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index369 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load372 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !96, !alias.scope !1509
  %wide.load373 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !96, !alias.scope !1509
  %i.bu = and <2 x i64> %wide.load370, %broadcast.splat365
  %i.bv = and <2 x i64> %wide.load371, %broadcast.splat365
  %i.bw = and <2 x i64> %wide.load372, %broadcast.splat367
  %i.bx = and <2 x i64> %wide.load373, %broadcast.splat367
  %i.by = or disjoint <2 x i64> %i.bw, %i.bu
  %i.bz = or disjoint <2 x i64> %i.bx, %i.bv
  store <2 x i64> %i.by, ptr %i.bq, align 8, !tbaa !96, !alias.scope !1508, !noalias !1509
  store <2 x i64> %i.bz, ptr %i.br, align 8, !tbaa !96, !alias.scope !1508, !noalias !1509
  %index.next374 = add nuw i64 %index369, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next374, %n.vec363
  br i1 %i.ca, label %middle.block375, label %vector.body368, !llvm.loop !1500

middle.block375:                                  ; preds = %vector.body368
  %cmp.n376 = icmp eq i64 %n.vec363, %i.bj
  br i1 %cmp.n376, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i172, %middle.block375
  %.09.i.i173.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i172 ], [ %n.vec363, %middle.block375 ] ; 5 uses
  %i.cb = and i32 %i.bh, 1
  %lcmp.mod.not = icmp eq i32 %i.cb, 0
  br i1 %lcmp.mod.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol

scalar.ph360.prol:                                ; preds = %scalar.ph360.preheader
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.09.i.i173.ph ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i173.ph
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !96
  %i.cg = and i64 %i.cd, %i.bk
  %i.ch = and i64 %i.cf, %i.bl
  %i.ci = or disjoint i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !96
  %i.cj = or disjoint i64 %.09.i.i173.ph, 1
  br label %scalar.ph360.prol.loopexit

scalar.ph360.prol.loopexit:                       ; preds = %scalar.ph360.prol, %scalar.ph360.preheader
  %.09.i.i173.unr = phi i64 [ %.09.i.i173.ph, %scalar.ph360.preheader ], [ %i.cj, %scalar.ph360.prol ]
  %i.ck = add nsw i64 %i.bj, -1
  %i.cl = icmp eq i64 %.09.i.i173.ph, %i.ck
  br i1 %i.cl, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %scalar.ph360

scalar.ph360:                                     ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360
  %.09.i.i173 = phi i64 [ %i.db, %scalar.ph360 ], [ %.09.i.i173.unr, %scalar.ph360.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.09.i.i173 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !96
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i173
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = and i64 %i.cn, %i.bk
  %i.cr = and i64 %i.cp, %i.bl
  %i.cs = or disjoint i64 %i.cr, %i.cq
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !96
  %i.ct = add nuw i64 %.09.i.i173, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !96
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ct
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.cy = and i64 %i.cv, %i.bk
  %i.cz = and i64 %i.cx, %i.bl
  %i.da = or disjoint i64 %i.cz, %i.cy
  store i64 %i.da, ptr %i.cu, align 8, !tbaa !96
  %i.db = add nuw i64 %.09.i.i173, 2              ; 2 uses
  %exitcond.not.i.i174.1 = icmp eq i64 %i.db, %i.bj
  br i1 %exitcond.not.i.i174.1, label %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175, label %scalar.ph360, !llvm.loop !1501

_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175:   ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360, %middle.block375, %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit
  %i.dc = xor i64 %i.bi, %i.ae
  %i.dd = icmp eq i32 %i.s, 8
  %or.cond11 = and i1 %i.dd, %i.c
  br i1 %or.cond11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.z, ptr noundef nonnull %6, ptr noundef nonnull %i.bb)
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  tail call void @bn_mul_comba8(ptr noundef nonnull %i.de, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bc)
  br label %.preheader42.i

bb.g:                                             ; preds = %_ZL21bn_abs_sub_part_wordsPmPKmS1_iiS_.exit175
  %i.df = shl nuw nsw i32 %3, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dg ; 3 uses
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.z, ptr noundef nonnull %6, ptr noundef nonnull %i.bb, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dh)
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.s, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.dh)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  tail call fastcc void @_ZL16bn_mul_recursivePmPKmS1_iiiS_(ptr noundef nonnull %i.di, ptr noundef %i.w, ptr noundef %i.bc, i32 noundef %i.s, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.dh)
  br label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.g, %bb.f
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.y
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.fk, 0
  br i1 %.not3453.i, label %.preheader42.i176, label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.fk, %.lr.ph.i ], [ %i.y, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.fi, %.lr.ph.i ], [ %i.dj, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.fh, %.lr.ph.i ], [ %0, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.fj, %.lr.ph.i ], [ %6, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.ff, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.dk = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.dl = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.dm = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dk, i64 %i.dl) ; 2 uses
  %i.dn = extractvalue { i64, i1 } %i.dm, 1
  %i.do = extractvalue { i64, i1 } %i.dm, 0
  %i.dp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.do, i64 %.04044.i) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1
  %i.dr = extractvalue { i64, i1 } %i.dp, 0
  %i.ds = or i1 %i.dn, %i.dq
  %i.dt = zext i1 %i.ds to i64
  store i64 %i.dr, ptr %.03045.i, align 8, !tbaa !96
  %i.du = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !96
  %i.dw = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !96
  %i.dy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dv, i64 %i.dx) ; 2 uses
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  %i.ea = extractvalue { i64, i1 } %i.dy, 0
  %i.eb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ea, i64 %i.dt) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  %i.ed = extractvalue { i64, i1 } %i.eb, 0
  %i.ee = or i1 %i.dz, %i.ec
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.ed, ptr %i.eg, align 8, !tbaa !96
  %i.eh = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !96
  %i.ej = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !96
  %i.el = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ei, i64 %i.ek) ; 2 uses
  %i.em = extractvalue { i64, i1 } %i.el, 1
  %i.en = extractvalue { i64, i1 } %i.el, 0
  %i.eo = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.en, i64 %i.ef) ; 2 uses
  %i.ep = extractvalue { i64, i1 } %i.eo, 1
  %i.eq = extractvalue { i64, i1 } %i.eo, 0
  %i.er = or i1 %i.em, %i.ep
  %i.es = zext i1 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.eq, ptr %i.et, align 8, !tbaa !96
  %i.eu = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !96
  %i.ew = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !96
  %i.ey = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ev, i64 %i.ex) ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  %i.fa = extractvalue { i64, i1 } %i.ey, 0
  %i.fb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fa, i64 %i.es) ; 2 uses
  %i.fc = extractvalue { i64, i1 } %i.fb, 1
  %i.fd = extractvalue { i64, i1 } %i.fb, 0
  %i.fe = or i1 %i.ez, %i.fc
  %i.ff = zext i1 %i.fe to i64                    ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.fd, ptr %i.fg, align 8, !tbaa !96
  %i.fh = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.fk = add i64 %.048.i, -4                     ; 4 uses
  %.not.i = icmp ult i64 %i.fk, 4
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.preheader.i, %.lr.ph59.i
  %.158.i = phi i64 [ %i.fy, %.lr.ph59.i ], [ %i.fk, %.preheader.i ]
  %.12757.i = phi ptr [ %i.fw, %.lr.ph59.i ], [ %i.fi, %.preheader.i ] ; 2 uses
  %.12956.i = phi ptr [ %i.fv, %.lr.ph59.i ], [ %i.fh, %.preheader.i ] ; 2 uses
  %.13155.i = phi ptr [ %i.fx, %.lr.ph59.i ], [ %i.fj, %.preheader.i ] ; 2 uses
  %.14154.i = phi i64 [ %i.fu, %.lr.ph59.i ], [ %i.ff, %.preheader.i ]
  %i.fl = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.fm = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.fn = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fl, i64 %i.fm) ; 2 uses
  %i.fo = extractvalue { i64, i1 } %i.fn, 1
  %i.fp = extractvalue { i64, i1 } %i.fn, 0
  %i.fq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.fp, i64 %.14154.i) ; 2 uses
  %i.fr = extractvalue { i64, i1 } %i.fq, 1
  %i.fs = extractvalue { i64, i1 } %i.fq, 0
  %i.ft = or i1 %i.fo, %i.fr
  %i.fu = zext i1 %i.ft to i64                    ; 2 uses
  store i64 %i.fs, ptr %.13155.i, align 8, !tbaa !96
  %i.fv = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.fy = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.fy, 0
  br i1 %.not34.i, label %.preheader42.i176, label %.lr.ph59.i, !llvm.loop !12

.preheader42.i176:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.ff, %.preheader.i ], [ %i.fu, %.lr.ph59.i ] ; 2 uses
  %i.fz = shl nuw i32 %3, 1                       ; 3 uses
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %6, i64 %i.ga ; 6 uses
  br label %.lr.ph.i178

.preheader.i185:                                  ; preds = %.lr.ph.i178
  %.not3453.i186 = icmp eq i64 %i.ic, 0
  br i1 %.not3453.i186, label %.preheader42.i201, label %.lr.ph59.i193

.lr.ph.i178:                                      ; preds = %.preheader42.i176, %.lr.ph.i178
  %.048.i179 = phi i64 [ %i.ic, %.lr.ph.i178 ], [ %i.y, %.preheader42.i176 ]
  %.02647.i180 = phi ptr [ %i.ia, %.lr.ph.i178 ], [ %i.z, %.preheader42.i176 ] ; 5 uses
  %.02846.i181 = phi ptr [ %i.hz, %.lr.ph.i178 ], [ %6, %.preheader42.i176 ] ; 5 uses
  %.03045.i182 = phi ptr [ %i.ib, %.lr.ph.i178 ], [ %i.gb, %.preheader42.i176 ] ; 5 uses
  %.04044.i183 = phi i64 [ %i.hx, %.lr.ph.i178 ], [ 0, %.preheader42.i176 ]
  %i.gc = load i64, ptr %.02846.i181, align 8, !tbaa !96
  %i.gd = load i64, ptr %.02647.i180, align 8, !tbaa !96
  %i.ge = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gc, i64 %i.gd) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %i.gh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gg, i64 %.04044.i183) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  %i.gj = extractvalue { i64, i1 } %i.gh, 0
  %i.gk = or i1 %i.gf, %i.gi
  %i.gl = zext i1 %i.gk to i64
  store i64 %i.gj, ptr %.03045.i182, align 8, !tbaa !96
  %i.gm = getelementptr inbounds nuw i8, ptr %.02846.i181, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !96
  %i.go = getelementptr inbounds nuw i8, ptr %.02647.i180, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !96
  %i.gq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gn, i64 %i.gp) ; 2 uses
  %i.gr = extractvalue { i64, i1 } %i.gq, 1
  %i.gs = extractvalue { i64, i1 } %i.gq, 0
  %i.gt = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gs, i64 %i.gl) ; 2 uses
  %i.gu = extractvalue { i64, i1 } %i.gt, 1
  %i.gv = extractvalue { i64, i1 } %i.gt, 0
  %i.gw = or i1 %i.gr, %i.gu
  %i.gx = zext i1 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %.03045.i182, i64 8
  store i64 %i.gv, ptr %i.gy, align 8, !tbaa !96
  %i.gz = getelementptr inbounds nuw i8, ptr %.02846.i181, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !96
  %i.hb = getelementptr inbounds nuw i8, ptr %.02647.i180, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !96
  %i.hd = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ha, i64 %i.hc) ; 2 uses
  %i.he = extractvalue { i64, i1 } %i.hd, 1
  %i.hf = extractvalue { i64, i1 } %i.hd, 0
  %i.hg = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hf, i64 %i.gx) ; 2 uses
  %i.hh = extractvalue { i64, i1 } %i.hg, 1
  %i.hi = extractvalue { i64, i1 } %i.hg, 0
  %i.hj = or i1 %i.he, %i.hh
  %i.hk = zext i1 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.03045.i182, i64 16
  store i64 %i.hi, ptr %i.hl, align 8, !tbaa !96
  %i.hm = getelementptr inbounds nuw i8, ptr %.02846.i181, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !96
  %i.ho = getelementptr inbounds nuw i8, ptr %.02647.i180, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !96
  %i.hq = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hn, i64 %i.hp) ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 1
  %i.hs = extractvalue { i64, i1 } %i.hq, 0
  %i.ht = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.hs, i64 %i.hk) ; 2 uses
  %i.hu = extractvalue { i64, i1 } %i.ht, 1
  %i.hv = extractvalue { i64, i1 } %i.ht, 0
  %i.hw = or i1 %i.hr, %i.hu
  %i.hx = zext i1 %i.hw to i64                    ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.03045.i182, i64 24
  store i64 %i.hv, ptr %i.hy, align 8, !tbaa !96
  %i.hz = getelementptr inbounds nuw i8, ptr %.02846.i181, i64 32 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.02647.i180, i64 32 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.03045.i182, i64 32 ; 2 uses
  %i.ic = add i64 %.048.i179, -4                  ; 4 uses
  %.not.i184 = icmp ult i64 %i.ic, 4
  br i1 %.not.i184, label %.preheader.i185, label %.lr.ph.i178, !llvm.loop !13

.lr.ph59.i193:                                    ; preds = %.preheader.i185, %.lr.ph59.i193
  %.158.i194 = phi i64 [ %i.iq, %.lr.ph59.i193 ], [ %i.ic, %.preheader.i185 ]
  %.12757.i195 = phi ptr [ %i.io, %.lr.ph59.i193 ], [ %i.ia, %.preheader.i185 ] ; 2 uses
  %.12956.i196 = phi ptr [ %i.in, %.lr.ph59.i193 ], [ %i.hz, %.preheader.i185 ] ; 2 uses
  %.13155.i197 = phi ptr [ %i.ip, %.lr.ph59.i193 ], [ %i.ib, %.preheader.i185 ] ; 2 uses
  %.14154.i198 = phi i64 [ %i.im, %.lr.ph59.i193 ], [ %i.hx, %.preheader.i185 ]
  %i.id = load i64, ptr %.12956.i196, align 8, !tbaa !96
  %i.ie = load i64, ptr %.12757.i195, align 8, !tbaa !96
  %i.if = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.id, i64 %i.ie) ; 2 uses
  %i.ig = extractvalue { i64, i1 } %i.if, 1
  %i.ih = extractvalue { i64, i1 } %i.if, 0
  %i.ii = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ih, i64 %.14154.i198) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  %i.il = or i1 %i.ig, %i.ij
  %i.im = zext i1 %i.il to i64                    ; 2 uses
  store i64 %i.ik, ptr %.13155.i197, align 8, !tbaa !96
  %i.in = getelementptr inbounds nuw i8, ptr %.12956.i196, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.12757.i195, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.13155.i197, i64 8
  %i.iq = add nsw i64 %.158.i194, -1              ; 2 uses
  %.not34.i199 = icmp eq i64 %i.iq, 0
  br i1 %.not34.i199, label %.preheader42.i201, label %.lr.ph59.i193, !llvm.loop !14

.preheader42.i201:                                ; preds = %.lr.ph59.i193, %.preheader.i185
  %.032.i200 = phi i64 [ %i.hx, %.preheader.i185 ], [ %i.im, %.lr.ph59.i193 ]
  br label %.lr.ph.i203

.preheader.i210:                                  ; preds = %.lr.ph.i203
  %i.ir = sub nsw i64 %.032.i, %.032.i200
  %.not3453.i211 = icmp eq i64 %i.ko, 0
  br i1 %.not3453.i211, label %.lr.ph.i228, label %.lr.ph59.i218

.lr.ph.i203:                                      ; preds = %.preheader42.i201, %.lr.ph.i203
  %.048.i204 = phi i64 [ %i.ko, %.lr.ph.i203 ], [ %i.y, %.preheader42.i201 ]
  %.02647.i205 = phi ptr [ %i.kn, %.lr.ph.i203 ], [ %i.z, %.preheader42.i201 ] ; 6 uses
  %.02846.i206 = phi ptr [ %i.km, %.lr.ph.i203 ], [ %6, %.preheader42.i201 ] ; 5 uses
  %.04044.i208 = phi i64 [ %i.kl, %.lr.ph.i203 ], [ 0, %.preheader42.i201 ]
  %i.is = load i64, ptr %.02846.i206, align 8, !tbaa !96
  %i.it = load i64, ptr %.02647.i205, align 8, !tbaa !96
  %i.iu = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.is, i64 %i.it) ; 2 uses
  %i.iv = extractvalue { i64, i1 } %i.iu, 1
  %i.iw = extractvalue { i64, i1 } %i.iu, 0
  %i.ix = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.iw, i64 %.04044.i208) ; 2 uses
  %i.iy = extractvalue { i64, i1 } %i.ix, 1
  %i.iz = extractvalue { i64, i1 } %i.ix, 0
  %i.ja = or i1 %i.iv, %i.iy
  %i.jb = zext i1 %i.ja to i64
  store i64 %i.iz, ptr %.02647.i205, align 8, !tbaa !96
  %i.jc = getelementptr inbounds nuw i8, ptr %.02846.i206, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !96
  %i.je = getelementptr inbounds nuw i8, ptr %.02647.i205, i64 8 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !96
  %i.jg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jd, i64 %i.jf) ; 2 uses
  %i.jh = extractvalue { i64, i1 } %i.jg, 1
  %i.ji = extractvalue { i64, i1 } %i.jg, 0
  %i.jj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ji, i64 %i.jb) ; 2 uses
  %i.jk = extractvalue { i64, i1 } %i.jj, 1
  %i.jl = extractvalue { i64, i1 } %i.jj, 0
  %i.jm = or i1 %i.jh, %i.jk
  %i.jn = zext i1 %i.jm to i64
  store i64 %i.jl, ptr %i.je, align 8, !tbaa !96
  %i.jo = getelementptr inbounds nuw i8, ptr %.02846.i206, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !96
  %i.jq = getelementptr inbounds nuw i8, ptr %.02647.i205, i64 16 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !96
  %i.js = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jp, i64 %i.jr) ; 2 uses
  %i.jt = extractvalue { i64, i1 } %i.js, 1
  %i.ju = extractvalue { i64, i1 } %i.js, 0
  %i.jv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ju, i64 %i.jn) ; 2 uses
  %i.jw = extractvalue { i64, i1 } %i.jv, 1
  %i.jx = extractvalue { i64, i1 } %i.jv, 0
  %i.jy = or i1 %i.jt, %i.jw
  %i.jz = zext i1 %i.jy to i64
  store i64 %i.jx, ptr %i.jq, align 8, !tbaa !96
  %i.ka = getelementptr inbounds nuw i8, ptr %.02846.i206, i64 24
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !96
  %i.kc = getelementptr inbounds nuw i8, ptr %.02647.i205, i64 24 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !96
  %i.ke = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kb, i64 %i.kd) ; 2 uses
  %i.kf = extractvalue { i64, i1 } %i.ke, 1
  %i.kg = extractvalue { i64, i1 } %i.ke, 0
  %i.kh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kg, i64 %i.jz) ; 2 uses
  %i.ki = extractvalue { i64, i1 } %i.kh, 1
  %i.kj = extractvalue { i64, i1 } %i.kh, 0
  %i.kk = or i1 %i.kf, %i.ki
  %i.kl = zext i1 %i.kk to i64                    ; 3 uses
  store i64 %i.kj, ptr %i.kc, align 8, !tbaa !96
  %i.km = getelementptr inbounds nuw i8, ptr %.02846.i206, i64 32 ; 2 uses
  %i.kn = getelementptr i8, ptr %.02647.i205, i64 32 ; 2 uses
  %i.ko = add i64 %.048.i204, -4                  ; 4 uses
  %.not.i209 = icmp ult i64 %i.ko, 4
  br i1 %.not.i209, label %.preheader.i210, label %.lr.ph.i203, !llvm.loop !11

.lr.ph59.i218:                                    ; preds = %.preheader.i210, %.lr.ph59.i218
  %.158.i219 = phi i64 [ %i.lb, %.lr.ph59.i218 ], [ %i.ko, %.preheader.i210 ]
  %.12757.i220 = phi ptr [ %i.la, %.lr.ph59.i218 ], [ %i.kn, %.preheader.i210 ] ; 3 uses
  %.12956.i221 = phi ptr [ %i.kz, %.lr.ph59.i218 ], [ %i.km, %.preheader.i210 ] ; 2 uses
  %.14154.i223 = phi i64 [ %i.ky, %.lr.ph59.i218 ], [ %i.kl, %.preheader.i210 ]
  %i.kp = load i64, ptr %.12956.i221, align 8, !tbaa !96
  %i.kq = load i64, ptr %.12757.i220, align 8, !tbaa !96
  %i.kr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kp, i64 %i.kq) ; 2 uses
  %i.ks = extractvalue { i64, i1 } %i.kr, 1
  %i.kt = extractvalue { i64, i1 } %i.kr, 0
  %i.ku = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kt, i64 %.14154.i223) ; 2 uses
  %i.kv = extractvalue { i64, i1 } %i.ku, 1
  %i.kw = extractvalue { i64, i1 } %i.ku, 0
  %i.kx = or i1 %i.ks, %i.kv
  %i.ky = zext i1 %i.kx to i64                    ; 2 uses
  store i64 %i.kw, ptr %.12757.i220, align 8, !tbaa !96
  %i.kz = getelementptr inbounds nuw i8, ptr %.12956.i221, i64 8
  %i.la = getelementptr i8, ptr %.12757.i220, i64 8
  %i.lb = add nsw i64 %.158.i219, -1              ; 2 uses
  %.not34.i224 = icmp eq i64 %i.lb, 0
  br i1 %.not34.i224, label %.lr.ph.i228, label %.lr.ph59.i218, !llvm.loop !12

.lr.ph.i228:                                      ; preds = %.lr.ph59.i218, %.preheader.i210
  %.032.i225 = phi i64 [ %i.kl, %.preheader.i210 ], [ %i.ky, %.lr.ph59.i218 ]
  %i.lc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dc) #38 ; 6 uses
  %i.ld = xor i64 %i.lc, -1                       ; 5 uses
  %i.le = shl nuw nsw i64 %i.y, 4
  %scevgep379 = getelementptr i8, ptr %6, i64 %i.le
  %i.lf = add nuw nsw i64 %i.y, %i.ga
  %i.lg = shl nuw nsw i64 %i.lf, 3
  %scevgep380 = getelementptr i8, ptr %6, i64 %i.lg
  %bound0381 = icmp ult ptr %i.z, %scevgep380
  %bound1382 = icmp ult ptr %i.gb, %scevgep379
  %found.conflict383 = and i1 %bound0381, %bound1382
  br i1 %found.conflict383, label %scalar.ph384.preheader, label %vector.ph386

vector.ph386:                                     ; preds = %.lr.ph.i228
  %n.vec387 = and i64 %i.y, 2147483644            ; 3 uses
  %broadcast.splatinsert388 = insertelement <2 x i64> poison, i64 %i.lc, i64 0
  %broadcast.splat389 = shufflevector <2 x i64> %broadcast.splatinsert388, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert390 = insertelement <2 x i64> poison, i64 %i.ld, i64 0
  %broadcast.splat391 = shufflevector <2 x i64> %broadcast.splatinsert390, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body392

vector.body392:                                   ; preds = %vector.body392, %vector.ph386
  %index393 = phi i64 [ 0, %vector.ph386 ], [ %index.next398, %vector.body392 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index393 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load394 = load <2 x i64>, ptr %i.lh, align 8, !tbaa !96, !alias.scope !1510
  %wide.load395 = load <2 x i64>, ptr %i.li, align 8, !tbaa !96, !alias.scope !1510
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index393 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %wide.load396 = load <2 x i64>, ptr %i.lj, align 8, !tbaa !96, !alias.scope !1511, !noalias !1510
  %wide.load397 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !96, !alias.scope !1511, !noalias !1510
  %i.ll = and <2 x i64> %wide.load394, %broadcast.splat389
  %i.lm = and <2 x i64> %wide.load395, %broadcast.splat389
  %i.ln = and <2 x i64> %wide.load396, %broadcast.splat391
  %i.lo = and <2 x i64> %wide.load397, %broadcast.splat391
  %i.lp = or disjoint <2 x i64> %i.ln, %i.ll
  %i.lq = or disjoint <2 x i64> %i.lo, %i.lm
  store <2 x i64> %i.lp, ptr %i.lj, align 8, !tbaa !96, !alias.scope !1511, !noalias !1510
  store <2 x i64> %i.lq, ptr %i.lk, align 8, !tbaa !96, !alias.scope !1511, !noalias !1510
  %index.next398 = add nuw i64 %index393, 4       ; 2 uses
  %i.lr = icmp eq i64 %index.next398, %n.vec387
  br i1 %i.lr, label %middle.block399, label %vector.body392, !llvm.loop !1505

middle.block399:                                  ; preds = %vector.body392
  %cmp.n400 = icmp eq i64 %n.vec387, %i.y
  br i1 %cmp.n400, label %.preheader42.i229, label %scalar.ph384.preheader

scalar.ph384.preheader:                           ; preds = %.lr.ph.i228, %middle.block399
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i228 ], [ %n.vec387, %middle.block399 ] ; 5 uses
  %xtraiter423 = and i64 %i.y, 1
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod424.not, label %scalar.ph384.prol.loopexit, label %scalar.ph384.prol

scalar.ph384.prol:                                ; preds = %scalar.ph384.preheader
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.09.i.ph
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !96
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.ph ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !96
  %i.lw = and i64 %i.lt, %i.lc
  %i.lx = and i64 %i.lv, %i.ld
  %i.ly = or disjoint i64 %i.lx, %i.lw
  store i64 %i.ly, ptr %i.lu, align 8, !tbaa !96
  %i.lz = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph384.prol.loopexit

scalar.ph384.prol.loopexit:                       ; preds = %scalar.ph384.prol, %scalar.ph384.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph384.preheader ], [ %i.lz, %scalar.ph384.prol ]
  %i.ma = add nsw i64 %i.y, -1
  %i.mb = icmp eq i64 %.09.i.ph, %i.ma
  br i1 %i.mb, label %.preheader42.i229, label %scalar.ph384

scalar.ph384:                                     ; preds = %scalar.ph384.prol.loopexit, %scalar.ph384
  %.09.i = phi i64 [ %i.mr, %scalar.ph384 ], [ %.09.i.unr, %scalar.ph384.prol.loopexit ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.09.i
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !96
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !96
  %i.mg = and i64 %i.md, %i.lc
  %i.mh = and i64 %i.mf, %i.ld
  %i.mi = or disjoint i64 %i.mh, %i.mg
  store i64 %i.mi, ptr %i.me, align 8, !tbaa !96
  %i.mj = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !96
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.mj ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !96
  %i.mo = and i64 %i.ml, %i.lc
  %i.mp = and i64 %i.mn, %i.ld
  %i.mq = or disjoint i64 %i.mp, %i.mo
  store i64 %i.mq, ptr %i.mm, align 8, !tbaa !96
  %i.mr = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.mr, %i.y
  br i1 %exitcond.not.i.1, label %.preheader42.i229, label %scalar.ph384, !llvm.loop !1506

.preheader42.i229:                                ; preds = %scalar.ph384.prol.loopexit, %scalar.ph384, %middle.block399
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  br label %.lr.ph.i231

.preheader.i238:                                  ; preds = %.lr.ph.i231
  %i.mt = add nuw nsw i64 %.032.i225, %.032.i
  %i.mu = and i64 %i.lc, %i.ir
  %i.mv = and i64 %i.mt, %i.ld
  %i.mw = or disjoint i64 %i.mu, %i.mv
  %.not3453.i239 = icmp eq i64 %i.ot, 0
  br i1 %.not3453.i239, label %bn_add_words.exit254, label %.lr.ph59.i246

.lr.ph.i231:                                      ; preds = %.preheader42.i229, %.lr.ph.i231
  %.048.i232 = phi i64 [ %i.ot, %.lr.ph.i231 ], [ %i.y, %.preheader42.i229 ]
  %.02647.i233 = phi ptr [ %i.os, %.lr.ph.i231 ], [ %i.z, %.preheader42.i229 ] ; 5 uses
  %.02846.i234 = phi ptr [ %i.or, %.lr.ph.i231 ], [ %i.ms, %.preheader42.i229 ] ; 6 uses
  %.04044.i236 = phi i64 [ %i.oq, %.lr.ph.i231 ], [ 0, %.preheader42.i229 ]
  %i.mx = load i64, ptr %.02846.i234, align 8, !tbaa !96
  %i.my = load i64, ptr %.02647.i233, align 8, !tbaa !96
  %i.mz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.mx, i64 %i.my) ; 2 uses
  %i.na = extractvalue { i64, i1 } %i.mz, 1
  %i.nb = extractvalue { i64, i1 } %i.mz, 0
  %i.nc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nb, i64 %.04044.i236) ; 2 uses
  %i.nd = extractvalue { i64, i1 } %i.nc, 1
  %i.ne = extractvalue { i64, i1 } %i.nc, 0
  %i.nf = or i1 %i.na, %i.nd
  %i.ng = zext i1 %i.nf to i64
  store i64 %i.ne, ptr %.02846.i234, align 8, !tbaa !96
  %i.nh = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 8 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !96
  %i.nj = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !96
  %i.nl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ni, i64 %i.nk) ; 2 uses
  %i.nm = extractvalue { i64, i1 } %i.nl, 1
  %i.nn = extractvalue { i64, i1 } %i.nl, 0
  %i.no = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nn, i64 %i.ng) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  %i.nq = extractvalue { i64, i1 } %i.no, 0
  %i.nr = or i1 %i.nm, %i.np
  %i.ns = zext i1 %i.nr to i64
  store i64 %i.nq, ptr %i.nh, align 8, !tbaa !96
  %i.nt = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 16 ; 2 uses
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !96
  %i.nv = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 16
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !96
  %i.nx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nu, i64 %i.nw) ; 2 uses
  %i.ny = extractvalue { i64, i1 } %i.nx, 1
  %i.nz = extractvalue { i64, i1 } %i.nx, 0
  %i.oa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nz, i64 %i.ns) ; 2 uses
  %i.ob = extractvalue { i64, i1 } %i.oa, 1
  %i.oc = extractvalue { i64, i1 } %i.oa, 0
  %i.od = or i1 %i.ny, %i.ob
  %i.oe = zext i1 %i.od to i64
  store i64 %i.oc, ptr %i.nt, align 8, !tbaa !96
  %i.of = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 24 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !96
  %i.oh = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 24
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !96
  %i.oj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.og, i64 %i.oi) ; 2 uses
  %i.ok = extractvalue { i64, i1 } %i.oj, 1
  %i.ol = extractvalue { i64, i1 } %i.oj, 0
  %i.om = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ol, i64 %i.oe) ; 2 uses
  %i.on = extractvalue { i64, i1 } %i.om, 1
  %i.oo = extractvalue { i64, i1 } %i.om, 0
  %i.op = or i1 %i.ok, %i.on
  %i.oq = zext i1 %i.op to i64                    ; 3 uses
  store i64 %i.oo, ptr %i.of, align 8, !tbaa !96
  %i.or = getelementptr i8, ptr %.02846.i234, i64 32 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 32 ; 2 uses
  %i.ot = add i64 %.048.i232, -4                  ; 4 uses
  %.not.i237 = icmp ult i64 %i.ot, 4
  br i1 %.not.i237, label %.preheader.i238, label %.lr.ph.i231, !llvm.loop !11

.lr.ph59.i246:                                    ; preds = %.preheader.i238, %.lr.ph59.i246
  %.158.i247 = phi i64 [ %i.pg, %.lr.ph59.i246 ], [ %i.ot, %.preheader.i238 ]
  %.12757.i248 = phi ptr [ %i.pf, %.lr.ph59.i246 ], [ %i.os, %.preheader.i238 ] ; 2 uses
  %.12956.i249 = phi ptr [ %i.pe, %.lr.ph59.i246 ], [ %i.or, %.preheader.i238 ] ; 3 uses
  %.14154.i251 = phi i64 [ %i.pd, %.lr.ph59.i246 ], [ %i.oq, %.preheader.i238 ]
  %i.ou = load i64, ptr %.12956.i249, align 8, !tbaa !96
  %i.ov = load i64, ptr %.12757.i248, align 8, !tbaa !96
  %i.ow = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ou, i64 %i.ov) ; 2 uses
  %i.ox = extractvalue { i64, i1 } %i.ow, 1
  %i.oy = extractvalue { i64, i1 } %i.ow, 0
  %i.oz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oy, i64 %.14154.i251) ; 2 uses
  %i.pa = extractvalue { i64, i1 } %i.oz, 1
  %i.pb = extractvalue { i64, i1 } %i.oz, 0
  %i.pc = or i1 %i.ox, %i.pa
  %i.pd = zext i1 %i.pc to i64                    ; 2 uses
  store i64 %i.pb, ptr %.12956.i249, align 8, !tbaa !96
  %i.pe = getelementptr i8, ptr %.12956.i249, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %.12757.i248, i64 8
  %i.pg = add nsw i64 %.158.i247, -1              ; 2 uses
  %.not34.i252 = icmp eq i64 %i.pg, 0
  br i1 %.not34.i252, label %bn_add_words.exit254, label %.lr.ph59.i246, !llvm.loop !12

bn_add_words.exit254:                             ; preds = %.lr.ph59.i246, %.preheader.i238
  %.032.i253 = phi i64 [ %i.oq, %.preheader.i238 ], [ %i.pd, %.lr.ph59.i246 ]
  %i.ph = add nuw nsw i32 %i.s, %3                ; 2 uses
  %i.pi = icmp samesign ult i32 %i.ph, %i.fz
  br i1 %i.pi, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit254
  %i.pj = add i64 %i.mw, %.032.i253               ; 2 uses
  %i.pk = zext nneg i32 %i.ph to i64              ; 3 uses
  %i.pl = sub nsw i32 %3, %i.s
  %.neg = add nuw nsw i32 %i.s, 1
  %xtraiter425 = and i32 %i.pl, 1
  %lcmp.mod426.not = icmp eq i32 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pk ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !96 ; 2 uses
  %i.po = add i64 %i.pn, %i.pj                    ; 2 uses
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !96
  %i.pp = icmp ult i64 %i.po, %i.pn
  %i.pq = zext i1 %i.pp to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.pk, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.pk, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0168278.unr = phi i64 [ %i.pj, %.lr.ph.preheader ], [ %i.pq, %.lr.ph.prol ]
  %i.pr = icmp eq i32 %3, %.neg
  br i1 %i.pr, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0168278 = phi i64 [ %i.qc, %.lr.ph ], [ %.0168278.unr, %.lr.ph.prol.loopexit ]
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !96 ; 2 uses
  %i.pu = add i64 %i.pt, %.0168278                ; 2 uses
  store i64 %i.pu, ptr %i.ps, align 8, !tbaa !96
  %i.pv = icmp ult i64 %i.pu, %i.pt
  %i.pw = zext i1 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !96 ; 2 uses
  %i.qa = add i64 %i.pz, %i.pw                    ; 2 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !96
  %i.qb = icmp ult i64 %i.qa, %i.pz
  %i.qc = zext i1 %i.qb to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qd = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.qe = icmp sgt i32 %i.fz, %i.qd
  br i1 %i.qe, label %.lr.ph, label %.loopexit, !llvm.loop !1507

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit254, %bb.d, %_ZL14OPENSSL_memsetPvim.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZL12aes_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.i = add nsw i32 %i.f, -3
  %or.cond = icmp ult i32 %i.i, -2
  %i.j = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.j, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !175
  %i.m = shl i32 %i.l, 3
  %i.n = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.m, ptr noundef %i.b) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_decrypt, ptr %i.o, align 8, !tbaa !372
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %spec.store.select70 = select i1 %i.h, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select70, ptr %i.p, align 8
  br label %.thread76

.thread:                                          ; preds = %bb.a, %bb.b
  %i.q = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !175
  %i.t = shl i32 %i.s, 3
  %i.u = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.t, ptr noundef %i.b) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_encrypt, ptr %i.v, align 8, !tbaa !372
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !80
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  store ptr @aes_nohw_cbc_encrypt, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

bb.e:                                             ; preds = %.thread
  br i1 %i.g, label %bb.f, label %.thread76

bb.f:                                             ; preds = %bb.e
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

.thread76:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_cbc_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !173
  tail call void %i.d(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g) #36
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !173
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !372  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader51.i

.preheader51.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader51.i, %.lr.ph.i
  %.055.i = phi ptr [ %.04553.i, %.lr.ph.i ], [ %i.j, %.preheader51.i ] ; 2 uses
  %.04354.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader51.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader51.i ] ; 8 uses
  %.04752.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader51.i ]
  %.0.copyload.i.i.i = load i64, ptr %.04354.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.055.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04553.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04553.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.04354.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04553.i, ptr noundef nonnull %.04553.i, ptr noundef nonnull %i.b) #36, !inline_history !1518
  %i.t = add i64 %.04752.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04354.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04553.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader51.i
  %.0.lcssa77.i = phi ptr [ %.04553.i, %._crit_edge.i ], [ %i.j, %.preheader51.i ] ; 15 uses
  %.043.lcssa76.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader51.i ] ; 8 uses
  %.045.lcssa75.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader51.i ] ; 18 uses
  %.047.lcssa74.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader51.i ] ; 14 uses
  %.045.lcssa75.i33 = ptrtoaddr ptr %.045.lcssa75.i to i64 ; 3 uses
  %.0.lcssa77.i35 = ptrtoaddr ptr %.0.lcssa77.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74.i, 4
  br i1 %min.iters.check, label %.preheader50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa76.i34 = ptrtoaddr ptr %.043.lcssa76.i to i64
  %i.x = sub i64 %.043.lcssa76.i34, %.045.lcssa75.i33
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader50.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.047.lcssa74.i, 32
end_hunk_22
begin_hunk_23_@_ZL14aes_cbc_cipherP17evp_cipher_ctx_stPhPKhm:bb.a
vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69.1, %vec.epilog.ph67
  %cmp.n74 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n74, label %._crit_edge62.i, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %iter.check63, %vec.epilog.middle.block73
  %.14260.i.ph = phi i64 [ %.047.lcssa74.i, %iter.check63 ], [ %i.bz, %vec.epilog.middle.block73 ] ; 4 uses
  %i.cg = sub i64 0, %.14260.i.ph
  %xtraiter78 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol

.lr.ph61.i.prol:                                  ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i.prol
  %.14260.i.prol = phi i64 [ %i.ck, %.lr.ph61.i.prol ], [ %.14260.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph61.i.prol ], [ 0, %.lr.ph61.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i.prol
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !80
  %i.ck = add i64 %.14260.i.prol, 1               ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol, !llvm.loop !1516

.lr.ph61.i.prol.loopexit:                         ; preds = %.lr.ph61.i.prol, %.lr.ph61.i.preheader
  %.14260.i.unr = phi i64 [ %.14260.i.ph, %.lr.ph61.i.preheader ], [ %i.ck, %.lr.ph61.i.prol ]
  %i.cl = add i64 %.14260.i.ph, -13
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i
  %.14260.i = phi i64 [ %i.dc, %.lr.ph61.i ], [ %.14260.i.unr, %.lr.ph61.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !80
  %i.cq = add i64 %.14260.i, 1                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !80
  %i.cu = add i64 %.14260.i, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !80
  %i.cy = add i64 %.14260.i, 3                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !80
  %i.dc = add i64 %.14260.i, 4                    ; 2 uses
  %exitcond67.not.i.3 = icmp eq i64 %i.dc, 16
  br i1 %exitcond67.not.i.3, label %._crit_edge62.i, label %.lr.ph61.i, !llvm.loop !1517

._crit_edge62.i:                                  ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i, %vec.epilog.middle.block73
  tail call void %i.l(ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %i.b) #36, !inline_history !1518
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge62.i, %._crit_edge.i
  %.2.i = phi ptr [ %.045.lcssa75.i, %._crit_edge62.i ], [ %.04553.i, %._crit_edge.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.f:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef %i.l)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ctr_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ofb_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !372  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %3, 0
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %3, %bb.a ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.k = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.k, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.m, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03444.i, align 1, !tbaa !80
  %i.o = zext i32 %.045.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = xor i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.03643.i, align 1, !tbaa !80
  %i.t = add i64 %.03842.i, -1                    ; 3 uses
  %i.u = add i32 %.045.i, 1
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i64 %i.t, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i, !llvm.loop !6

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.af, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ad, %bb.b ]
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1519
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %i.c, align 4
  %i.z = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.z, ptr %.13750.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.ab, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.l, align 4
  %i.ac = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = add i64 %.13949.i, -16                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, 15
  br i1 %i.ag, label %bb.b, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ad, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.af, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1519
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ah = add nsw i64 %.139.lcssa.i, -1
  %i.ai = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ai
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !80
  %i.ap = add i32 %.1.lcssa.i, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.258.i.unr = phi i32 [ %.1.lcssa.i, %bb.c ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %.24057.i.unr = phi i64 [ %.139.lcssa.i, %bb.c ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %.139.lcssa.i, 1
  br i1 %i.aq, label %CRYPTO_ofb128_encrypt.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258.i = phi i32 [ %i.bh, %.new ], [ %.258.i.unr, %.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.az, %.new ], [ %.24057.i.unr, %.prol.loopexit ]
  %i.ar = zext i32 %.258.i to i64                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80
  %i.aw = xor i8 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ar
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !80
  %i.ay = add i32 %.258.i, 1
  %i.az = add nsw i64 %.24057.i, -2               ; 2 uses
  %i.ba = zext i32 %i.ay to i64                   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bf = xor i8 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ba
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !80
  %i.bh = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %.new, !llvm.loop !8

CRYPTO_ofb128_encrypt.exit:                       ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bh, %.new ]
  store i32 %.3.i, ptr %i.d, align 8, !tbaa !82
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL16aes_gcm_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167  ; 21 uses
  %i.d = icmp ne ptr %2, null
  %i.e = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 544 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.f, i8 0, i64 88, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(544) %i.c, i8 0, i64 544, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.k = shl nsw i32 %i.h, 3
  %i.l = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef nonnull readonly %1, i32 noundef %i.k, ptr noundef nonnull %i.i) ; 0 uses
  store ptr @aes_nohw_encrypt, ptr %i.j, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.m, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @aes_nohw_encrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #36
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 16
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i5.i.i = load i64, ptr %i.q, align 8
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i5.i.i) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.r, i64 1)
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.p, i64 1)
  store i64 %i.u, ptr %i.s, align 8, !tbaa !94
  %isneg.i.i.i = icmp slt i64 %i.p, 0
  %i.v = select i1 %isneg.i.i.i, i64 -4467570830351532032, i64 0
  %i.w = xor i64 %i.v, %i.t
  store i64 %i.w, ptr %i.c, align 8, !tbaa !95
  store ptr @gcm_gmult_nohw, ptr %i.n, align 8, !tbaa !84
  store ptr @gcm_ghash_nohw, ptr %i.o, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.x = icmp eq ptr %2, null
  br i1 %i.x, label %bb.d, label %.thread35

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  %i.z = load i32, ptr %i.y, align 4, !tbaa !374
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !375 ; 2 uses
  %.not32 = icmp eq ptr %i.ab, null
  br i1 %.not32, label %.sink.split, label %.thread35

.thread35:                                        ; preds = %bb.c, %bb.e
  %.02938 = phi ptr [ %i.ab, %bb.e ], [ %2, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !376
  %i.ae = sext i32 %i.ad to i64
  tail call void @CRYPTO_gcm128_init_ctx(ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %.02938, i64 noundef %i.ae)
  br label %.sink.split.sink.split

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !377
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !376
  %i.ak = sext i32 %i.aj to i64
  tail call void @CRYPTO_gcm128_init_ctx(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ah, ptr noundef %2, i64 noundef %i.ak)
  br label %.sink.split.sink.split

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  %i.am = load i32, ptr %i.al, align 8, !tbaa !376 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !375
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr readonly align 1 %2, i64 %i.ao, i1 false)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.g, %bb.h, %bb.i, %.thread35
  %.sink43.ph = phi i64 [ 632, %.thread35 ], [ 656, %bb.i ], [ 656, %bb.h ], [ 656, %bb.g ]
  %.sink.ph = phi i32 [ 1, %.thread35 ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  store i32 1, ptr %i.ar, align 4, !tbaa !374
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.e, %bb.d
  %.sink43 = phi i64 [ 632, %bb.e ], [ 632, %bb.d ], [ %.sink43.ph, %.sink.split.sink.split ]
  %.sink = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink43
  store i32 %.sink, ptr %i.as, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -1, -2147483648) i32 @_ZL14aes_gcm_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 632
  %i.d = load i32, ptr %i.c, align 8, !tbaa !377
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 636 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !374
  %.not38 = icmp eq i32 %i.f, 0
  %i.g = icmp ugt i64 %3, 2147483647
  %or.cond = or i1 %i.g, %.not38
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.j = tail call i32 @CRYPTO_gcm128_aad(ptr noundef nonnull %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %2, i64 noundef %3)
  %.not45 = icmp eq i32 %i.j, 0
  br i1 %.not45, label %bb.o, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !173
  %.not42 = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @CRYPTO_gcm128_encrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3)
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %bb.o, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = tail call i32 @CRYPTO_gcm128_decrypt(ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3)
  %.not43 = icmp eq i32 %i.o, 0
  br i1 %.not43, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.p = trunc nuw nsw i64 %3 to i32
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !173
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 652
  %i.t = load i32, ptr %i.s, align 4, !tbaa !378  ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_23
begin_hunk_24_@_ZL28ec_GFp_mont_cmp_x_coordinatePK11ec_group_stPK11EC_JACOBIANPK9EC_SCALAR:bb.a
  %i.ai = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.aj = or <2 x i64> %wide.load71, %vec.phi70   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1567

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.aj, %i.ai
  %i.al = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !96
  %i.ao = or i64 %i.an, %.067.i.i                 ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i, !llvm.loop !1568

ec_GFp_simple_is_at_infinity.exit:                ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa69 = phi i64 [ %i.al, %middle.block ], [ %i.ao, %.lr.ph.i.i ]
  %.not.i.not = icmp eq i64 %.lcssa69, 0
  br i1 %.not.i.not, label %ec_GFp_simple_cmp_x_coordinate.exit, label %bb.h

bb.h:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %5, ptr noundef nonnull readonly %i.ae, ptr noundef nonnull readonly %i.ae, i64 noundef %wide.trip.count.i.i, ptr noundef nonnull readonly %i.ap)
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !242 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i64 %i.ar, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr readonly align 1 %2, i64 %i.at, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.h, %bb.i
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i64 noundef %i.ar, ptr noundef nonnull readonly %i.ap)
  %i.au = load i32, ptr %i.e, align 8, !tbaa !242 ; 3 uses
  %i.av = sext i32 %i.au to i64                   ; 4 uses
  %i.aw = icmp ugt i32 %i.au, 9
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.ax = shl nuw nsw i64 %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, i8 0, i64 144, i1 false)
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i, label %bb.l

bb.k:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @abort() #37
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.az = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %1, i64 %i.az, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i.i:               ; preds = %bb.l, %bb.j
  %i.ba = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef nonnull %6, i64 noundef %i.av, ptr noundef nonnull %i.a, i64 noundef %i.ax, ptr noundef nonnull readonly %i.ap)
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.m, label %_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit

bb.m:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i
  call void @abort() #37
  unreachable

_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit: ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i.i
  %i.bb = shl nuw nsw i64 %i.av, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.bb) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !242
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = call i32 @CRYPTO_memcmp(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef %i.be) #36
  %.not34 = icmp eq i32 %i.bf, 0
  br i1 %.not34, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit
  %i.bg = load i32, ptr %i.e, align 8, !tbaa !242 ; 3 uses
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %bn_add_words.exit.thread, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.n
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !292 ; 2 uses
  %.not43.i = icmp ult i32 %i.bg, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %i.bh, %.preheader42.i ], [ %i.dk, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %i.bj, %.preheader42.i ], [ %i.di, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.dh, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %4, %.preheader42.i ], [ %i.dj, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.df, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.dk, 0
  br i1 %.not3453.i, label %bn_add_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.dk, %.lr.ph.i ], [ %i.bh, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.di, %.lr.ph.i ], [ %i.bj, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %4, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.df, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.bk = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.bl = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.bm = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bk, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bo, i64 %.04044.i) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  %i.br = extractvalue { i64, i1 } %i.bp, 0
  %i.bs = or i1 %i.bn, %i.bq
  %i.bt = zext i1 %i.bs to i64
  store i64 %i.br, ptr %.03045.i, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !96
  %i.bw = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !96
  %i.by = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bv, i64 %i.bx) ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1
  %i.ca = extractvalue { i64, i1 } %i.by, 0
  %i.cb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ca, i64 %i.bt) ; 2 uses
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  %i.cd = extractvalue { i64, i1 } %i.cb, 0
  %i.ce = or i1 %i.bz, %i.cc
  %i.cf = zext i1 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.cd, ptr %i.cg, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !96
  %i.cj = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !96
  %i.cl = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ci, i64 %i.ck) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  %i.co = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cn, i64 %i.cf) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  %i.cq = extractvalue { i64, i1 } %i.co, 0
  %i.cr = or i1 %i.cm, %i.cp
  %i.cs = zext i1 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.cq, ptr %i.ct, align 8, !tbaa !96
  %i.cu = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !96
  %i.cw = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.cy = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cv, i64 %i.cx) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 1
  %i.da = extractvalue { i64, i1 } %i.cy, 0
  %i.db = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.da, i64 %i.cs) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  %i.dd = extractvalue { i64, i1 } %i.db, 0
  %i.de = or i1 %i.cz, %i.dc
  %i.df = zext i1 %i.de to i64                    ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.dd, ptr %i.dg, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.dk = add i64 %.048.i, -4                     ; 4 uses
  %.not.i30 = icmp ult i64 %i.dk, 4
  br i1 %.not.i30, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.dy, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.dw, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.dv, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.dx, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.du, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.dl = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.dm = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.dn = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dl, i64 %i.dm) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 1
  %i.dp = extractvalue { i64, i1 } %i.dn, 0
  %i.dq = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dp, i64 %.14154.i) ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  %i.ds = extractvalue { i64, i1 } %i.dq, 0
  %i.dt = or i1 %i.do, %i.dr
  %i.du = zext i1 %i.dt to i64                    ; 2 uses
  store i64 %i.ds, ptr %.13155.i, align 8, !tbaa !96
  %i.dv = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.dy = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.dy, 0
  br i1 %.not34.i, label %bn_add_words.exit, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.df, %.preheader.i ], [ %i.du, %.lr.ph59.i ]
  %i.dz = icmp eq i64 %.032.i, 0
  br i1 %i.dz, label %bn_add_words.exit.thread, label %bb.p

bn_add_words.exit.thread:                         ; preds = %bb.n, %bn_add_words.exit
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !241
  %i.eb = call i32 @bn_less_than_words(ptr noundef nonnull %4, ptr noundef %i.ea, i64 noundef %i.bh)
  %.not28 = icmp eq i32 %i.eb, 0
  br i1 %.not28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bn_add_words.exit.thread
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %5, i64 noundef %i.bh, ptr noundef nonnull readonly %i.ap)
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !242
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3
  %i.ef = call i32 @CRYPTO_memcmp(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef %i.ee) #36
  %.not35 = icmp eq i32 %i.ef, 0
  br i1 %.not35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bn_add_words.exit.thread, %bn_add_words.exit
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit
  %.1 = phi i32 [ 1, %_ZL33ec_GFp_mont_felem_from_montgomeryPK11ec_group_stP8EC_FELEMPKS2_.exit ], [ 0, %bb.p ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %ec_GFp_simple_cmp_x_coordinate.exit

ec_GFp_simple_cmp_x_coordinate.exit:              ; preds = %bb.g, %ec_scalar_equal_vartime.exit.i, %ec_GFp_simple_is_at_infinity.exit.i, %bb.c, %ec_GFp_simple_is_at_infinity.exit, %bb.q
  %.2 = phi i32 [ 0, %ec_GFp_simple_is_at_infinity.exit ], [ %.1, %bb.q ], [ %i.ad, %ec_scalar_equal_vartime.exit.i ], [ 0, %ec_GFp_simple_is_at_infinity.exit.i ], [ 0, %bb.c ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL44ec_GFp_nistp224_point_get_affine_coordinatesPK11ec_group_stPK11EC_JACOBIANP8EC_FELEMS6_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi351 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !96
  %wide.load352 = load <2 x i64>, ptr %i.f, align 8, !tbaa !96
  %i.g = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.h = or <2 x i64> %wide.load352, %vec.phi351  ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !1569

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa350 = phi i64 [ %i.j, %middle.block ], [ %i.n, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %.lcssa350, 0
  %i.k = zext i1 %.not.i to i32
  br label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = or i64 %i.m, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1570

ec_GFp_simple_is_at_infinity.exit:                ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.06.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.k, %._crit_edge.loopexit.i.i ]
  %i.o = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i.i) #38, !srcloc !128
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.55, i32 noundef 868) #36
  br label %bb.t

bb.c:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.q = and i64 %i.p, 72057594037927935          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.p, i64 8)
  %i.u = and i64 %i.t, 72057594037927935          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.w = load i64, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.s, i64 16)
  %i.y = and i64 %i.x, 72057594037927935          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.w, i64 24)
  %i.ac = and i64 %i.ab, 72057594037927935
  %i.ad = shl nuw nsw i64 %i.q, 1
  %i.ae = shl nuw nsw i64 %i.u, 1
  %i.af = shl nuw nsw i64 %i.y, 1
  %i.ag = zext nneg i64 %i.q to i128              ; 16 uses
  %i.ah = mul nuw nsw i128 %i.ag, %i.ag
  %i.ai = zext nneg i64 %i.ae to i128             ; 2 uses
  %i.aj = mul nuw nsw i128 %i.ai, %i.ag
  %i.ak = zext nneg i64 %i.af to i128             ; 3 uses
  %i.al = mul nuw nsw i128 %i.ak, %i.ag
  %i.am = zext nneg i64 %i.u to i128              ; 15 uses
  %i.an = mul nuw nsw i128 %i.am, %i.am
  %i.ao = zext nneg i64 %i.ac to i128             ; 17 uses
  %i.ap = zext nneg i64 %i.ad to i128
  %i.aq = mul nuw nsw i128 %i.ao, %i.ap
  %i.ar = mul nuw nsw i128 %i.ak, %i.am
  %i.as = add nuw nsw i128 %i.aq, %i.ar
  %i.at = mul nuw nsw i128 %i.ao, %i.ai
  %i.au = zext nneg i64 %i.y to i128              ; 14 uses
  %i.av = mul nuw nsw i128 %i.au, %i.au
  %i.aw = add nuw nsw i128 %i.at, %i.av
  %i.ax = mul nuw nsw i128 %i.ao, %i.ak           ; 3 uses
  %i.ay = mul nuw nsw i128 %i.ao, %i.ao           ; 3 uses
  %i.az = add nuw i128 %i.aj, 170141183460469229370468033484042534912
  %i.ba = lshr i128 %i.ay, 16
  %i.bb = add nuw nsw i128 %i.aw, %i.ba           ; 3 uses
  %i.bc = shl i128 %i.ay, 40
  %i.bd = and i128 %i.bc, 72056494526300160
  %i.be = lshr i128 %i.ax, 16
  %i.bf = shl i128 %i.ax, 40
  %i.bg = and i128 %i.bf, 72055395014672384
  %i.bh = sub nuw i128 %i.az, %i.ax
  %i.bi = lshr i128 %i.bb, 16
  %i.bj = add nuw i128 %i.an, 170141183460469229370504062281061498880
  %i.bk = add nuw i128 %i.bj, %i.al
  %i.bl = sub nuw i128 %i.bk, %i.ay
  %i.bm = add nuw i128 %i.bl, %i.bg
  %i.bn = add nuw i128 %i.bm, %i.bi               ; 2 uses
  %i.bo = shl i128 %i.bb, 40
  %i.bp = and i128 %i.bo, 72056494526300160
  %i.bq = add nuw i128 %i.bh, %i.bp
  %i.br = lshr i128 %i.bn, 56
  %i.bs = add nuw nsw i128 %i.as, %i.be
  %i.bt = add nuw nsw i128 %i.bs, %i.bd
  %i.bu = add nuw nsw i128 %i.bt, %i.br           ; 3 uses
  %i.bv = and i128 %i.bn, 72057594037927935
  %i.bw = lshr i128 %i.bu, 56                     ; 2 uses
  %i.bx = and i128 %i.bu, 72057594037927935
  %i.by = lshr i128 %i.bu, 72
  %i.bz = add nuw nsw i128 %i.by, %i.bv
  %i.ca = shl nuw nsw i128 %i.bw, 40
  %i.cb = and i128 %i.ca, 72056494526300160
  %i.cc = add nuw i128 %i.bq, %i.cb
  %.neg75 = add nuw nsw i128 %i.ah, -170141183460469231731687303715884072960
  %i.cd = add nuw nsw i128 %i.bb, %i.bw
  %i.ce = sub nuw i128 %.neg75, %i.cd             ; 2 uses
  %i.cf = lshr i128 %i.ce, 56
  %i.cg = add nuw i128 %i.cc, %i.cf               ; 2 uses
  %i.ch = lshr i128 %i.cg, 56
  %i.ci = add nuw nsw i128 %i.bz, %i.ch           ; 2 uses
  %i.cj = lshr i128 %i.ci, 56
  %i.ck = add nuw nsw i128 %i.cj, %i.bx           ; 4 uses
  %i.cl = and i128 %i.ce, 72057594037927935       ; 4 uses
  %i.cm = mul nuw nsw i128 %i.cl, %i.ag
  %i.cn = and i128 %i.cg, 72057594037927935       ; 4 uses
  %i.co = mul nuw nsw i128 %i.cn, %i.ag
  %i.cp = mul nuw nsw i128 %i.cl, %i.am
  %i.cq = and i128 %i.ci, 72057594037927935       ; 4 uses
  %i.cr = mul nuw nsw i128 %i.cq, %i.ag
  %i.cs = mul nuw nsw i128 %i.cn, %i.am
  %i.ct = mul nuw nsw i128 %i.cl, %i.au
  %i.cu = mul nuw nsw i128 %i.ck, %i.ag
  %i.cv = mul nuw nsw i128 %i.cq, %i.am
  %i.cw = mul nuw nsw i128 %i.cn, %i.au
  %i.cx = mul nuw nsw i128 %i.cl, %i.ao
  %i.cy = mul nuw nsw i128 %i.ck, %i.am
  %i.cz = mul nuw nsw i128 %i.cq, %i.au
  %i.da = mul nuw nsw i128 %i.cn, %i.ao
  %i.db = mul nuw nsw i128 %i.ck, %i.au
end_hunk_24
begin_hunk_25_@_ZL32ec_GFp_nistp256_cmp_x_coordinatePK11ec_group_stPK11EC_JACOBIANPK9EC_SCALAR:bb.a
  %i.er = lshr i128 %i.eq, 64
  %i.es = and i128 %i.en, 18446744073709551615
  %i.et = add nuw nsw i128 %i.er, %i.es           ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = trunc nuw nsw i128 %i.eu to i64
  %i.ew = and i128 %i.eq, 18446744073709551615
  %i.ex = add nuw nsw i128 %i.ew, %i.ej
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = and i128 %i.ed, 18446744073709551615
  %i.fa = add nuw nsw i128 %i.ey, %i.ez
  %i.fb = and i128 %i.et, 18446744073709551615
  %i.fc = add nuw nsw i128 %i.fa, %i.fb           ; 3 uses
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = lshr i128 %i.fc, 64
  %i.ff = add nuw nsw i64 %i.ev, %i.ep
  %i.fg = and i128 %i.eg, 18446744073709551615
  %i.fh = add nuw nsw i128 %i.fe, %i.fg
  %i.fi = zext nneg i64 %i.ff to i128
  %i.fj = add nuw nsw i128 %i.fh, %i.fi           ; 3 uses
  %i.fk = trunc i128 %i.fj to i64
  %i.fl = lshr i128 %i.fj, 64
  %i.fm = add nuw i64 %i.dv, %i.cq
  %i.fn = add nuw i64 %i.fm, %i.ei
  %i.fo = zext i64 %i.fn to i128
  %i.fp = and i128 %i.ek, 18446744073709551615
  %i.fq = add nuw nsw i128 %i.fp, %i.fo
  %i.fr = add nuw nsw i128 %i.fq, %i.fl           ; 3 uses
  %i.fs = trunc i128 %i.fr to i64
  %i.ft = lshr i128 %i.fr, 64
  %i.fu = trunc nuw nsw i128 %i.ft to i64
  %i.fv = add nuw i64 %i.fu, %i.em                ; 2 uses
  %i.fw = and i128 %i.fc, 18446744073709551615
  %i.fx = add nsw i128 %i.fw, -18446744073709551615 ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = trunc i128 %i.fx to i64
  %i.ga = and i128 %i.fj, 18446744073709551615
  %i.gb = sub nsw i128 0, %i.fy
  %i.gc = and i128 %i.gb, 255
  %reass.sub.i = sub nsw i128 %i.ga, %i.gc
  %i.gd = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = trunc i128 %i.gd to i64
  %i.gg = and i128 %i.fr, 18446744073709551615
  %i.gh = sub nsw i128 0, %i.ge
  %i.gi = and i128 %i.gh, 255
  %i.gj = sub nsw i128 %i.gg, %i.gi               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = trunc i128 %i.gj to i64
  %i.gm = zext i64 %i.fv to i128
  %i.gn = sub nsw i128 0, %i.gk
  %i.go = and i128 %i.gn, 255
  %.neg112.i = add nsw i128 %i.gm, -18446744069414584321
  %i.gp = sub nsw i128 %.neg112.i, %i.go          ; 2 uses
  %i.gq = lshr i128 %i.gp, 64
  %i.gr = trunc i128 %i.gp to i64
  %i.gs = sub nsw i128 0, %i.gq
  %i.gt = and i128 %i.gs, 255
  %i.gu = sub nsw i128 0, %i.gt
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = trunc i128 %i.gv to i8
  %i.gx = icmp ne i8 %i.gw, 0
  %i.gy = sext i1 %i.gx to i64                    ; 2 uses
  %i.gz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gy) #38, !srcloc !389 ; 4 uses
  %i.ha = and i64 %i.gz, %i.fd
  %i.hb = xor i64 %i.gy, -1
  %i.hc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.hb) #38, !srcloc !389 ; 4 uses
  %i.hd = and i64 %i.hc, %i.fz
  %i.he = or i64 %i.hd, %i.ha
  %i.hf = and i64 %i.gz, %i.fk
  %i.hg = and i64 %i.hc, %i.gf
  %i.hh = or i64 %i.hg, %i.hf
  %i.hi = and i64 %i.gz, %i.fs
  %i.hj = and i64 %i.hc, %i.gl
  %i.hk = or i64 %i.hj, %i.hi
  %i.hl = and i64 %i.fv, %i.gz
  %i.hm = and i64 %i.hc, %i.gr
  %i.hn = or i64 %i.hm, %i.hl
  store i64 %i.he, ptr %i.c, align 16, !tbaa !96
  store i64 %i.hh, ptr %i.ak, align 8, !tbaa !96
  store i64 %i.hk, ptr %i.ca, align 16, !tbaa !96
  store i64 %i.hn, ptr %i.dw, align 8, !tbaa !96
  %i.ho = load i128, ptr %i.b, align 16
  %i.hp = load i128, ptr %i.c, align 16
  %i.hq = xor i128 %i.ho, %i.hp
  %i.hr = getelementptr i8, ptr %i.b, i64 16
  %i.hs = getelementptr i8, ptr %i.c, i64 16
  %i.ht = load i128, ptr %i.hr, align 16
  %i.hu = load i128, ptr %i.hs, align 16
  %i.hv = xor i128 %i.ht, %i.hu
  %i.hw = or i128 %i.hq, %i.hv
  %i.hx = icmp ne i128 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.f, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !292 ; 2 uses
  %.not43.i = icmp samesign ult i32 %i.f, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %wide.trip.count.i.i, %.preheader42.i ], [ %i.kc, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %i.ib, %.preheader42.i ], [ %i.ka, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.jz, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.kb, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.jx, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.kc, 0
  br i1 %.not3453.i, label %bn_add_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.kc, %.lr.ph.i ], [ %wide.trip.count.i.i, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.ka, %.lr.ph.i ], [ %i.ib, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.jz, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.kb, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.jx, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.ic = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.id = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.ie = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ic, i64 %i.id) ; 2 uses
  %i.if = extractvalue { i64, i1 } %i.ie, 1
  %i.ig = extractvalue { i64, i1 } %i.ie, 0
  %i.ih = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ig, i64 %.04044.i) ; 2 uses
  %i.ii = extractvalue { i64, i1 } %i.ih, 1
  %i.ij = extractvalue { i64, i1 } %i.ih, 0
  %i.ik = or i1 %i.if, %i.ii
  %i.il = zext i1 %i.ik to i64
  store i64 %i.ij, ptr %.03045.i, align 8, !tbaa !96
  %i.im = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !96
  %i.io = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !96
  %i.iq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.in, i64 %i.ip) ; 2 uses
  %i.ir = extractvalue { i64, i1 } %i.iq, 1
  %i.is = extractvalue { i64, i1 } %i.iq, 0
  %i.it = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.is, i64 %i.il) ; 2 uses
  %i.iu = extractvalue { i64, i1 } %i.it, 1
  %i.iv = extractvalue { i64, i1 } %i.it, 0
  %i.iw = or i1 %i.ir, %i.iu
  %i.ix = zext i1 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.iv, ptr %i.iy, align 8, !tbaa !96
  %i.iz = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !96
  %i.jb = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !96
  %i.jd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ja, i64 %i.jc) ; 2 uses
  %i.je = extractvalue { i64, i1 } %i.jd, 1
  %i.jf = extractvalue { i64, i1 } %i.jd, 0
  %i.jg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jf, i64 %i.ix) ; 2 uses
  %i.jh = extractvalue { i64, i1 } %i.jg, 1
  %i.ji = extractvalue { i64, i1 } %i.jg, 0
  %i.jj = or i1 %i.je, %i.jh
  %i.jk = zext i1 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ji, ptr %i.jl, align 8, !tbaa !96
  %i.jm = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !96
  %i.jo = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !96
  %i.jq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jn, i64 %i.jp) ; 2 uses
  %i.jr = extractvalue { i64, i1 } %i.jq, 1
  %i.js = extractvalue { i64, i1 } %i.jq, 0
  %i.jt = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.js, i64 %i.jk) ; 2 uses
  %i.ju = extractvalue { i64, i1 } %i.jt, 1
  %i.jv = extractvalue { i64, i1 } %i.jt, 0
  %i.jw = or i1 %i.jr, %i.ju
  %i.jx = zext i1 %i.jw to i64                    ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.jv, ptr %i.jy, align 8, !tbaa !96
  %i.jz = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.kc = add i64 %.048.i, -4                     ; 4 uses
  %.not.i12 = icmp ult i64 %i.kc, 4
  br i1 %.not.i12, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.kq, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.ko, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.kn, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.kp, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.km, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.kd = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.ke = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.kf = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kd, i64 %i.ke) ; 2 uses
  %i.kg = extractvalue { i64, i1 } %i.kf, 1
  %i.kh = extractvalue { i64, i1 } %i.kf, 0
  %i.ki = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.kh, i64 %.14154.i) ; 2 uses
  %i.kj = extractvalue { i64, i1 } %i.ki, 1
  %i.kk = extractvalue { i64, i1 } %i.ki, 0
  %i.kl = or i1 %i.kg, %i.kj
  %i.km = zext i1 %i.kl to i64                    ; 2 uses
  store i64 %i.kk, ptr %.13155.i, align 8, !tbaa !96
  %i.kn = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.kq = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.kq, 0
  br i1 %.not34.i, label %bn_add_words.exit, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.jx, %.preheader.i ], [ %i.km, %.lr.ph59.i ]
  %i.kr = icmp eq i64 %.032.i, 0
  br i1 %i.kr, label %bb.c, label %bn_less_than_words.exit.thread

bb.c:                                             ; preds = %bn_add_words.exit
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !241
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.c, %.lr.ph.i.i13
  %.04353.i.i = phi i64 [ %i.lj, %.lr.ph.i.i13 ], [ 0, %bb.c ]
  %.04452.i.i = phi i64 [ %i.lk, %.lr.ph.i.i13 ], [ 0, %bb.c ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04452.i.i
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !96 ; 5 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %.04452.i.i
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !96 ; 3 uses
  %i.ky = icmp eq i64 %i.kv, %i.kx
  %.neg.i.i.i.i.i = sext i1 %i.ky to i64
  %i.kz = xor i64 %i.kx, %i.kv
  %i.la = sub i64 %i.kv, %i.kx
  %i.lb = xor i64 %i.la, %i.kv
  %i.lc = or i64 %i.lb, %i.kz
  %i.ld = xor i64 %i.lc, %i.kv
  %.neg.i.i.i.i = ashr i64 %i.ld, 63
  %i.le = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !108
  %i.lf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.lg = and i64 %i.lf, %.04353.i.i
  %i.lh = xor i64 %i.lf, -1
  %i.li = and i64 %i.le, %i.lh
  %i.lj = or disjoint i64 %i.lg, %i.li            ; 2 uses
  %i.lk = add nuw i64 %.04452.i.i, 1              ; 2 uses
  %exitcond.not.i.i14 = icmp eq i64 %i.lk, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i14, label %bn_less_than_words.exit, label %.lr.ph.i.i13, !llvm.loop !9

bn_less_than_words.exit:                          ; preds = %.lr.ph.i.i13
  %i.ll = and i64 %i.lj, 2147483648
  %.not11 = icmp eq i64 %i.ll, 0
  br i1 %.not11, label %bn_less_than_words.exit.thread, label %bb.d

bb.d:                                             ; preds = %bn_less_than_words.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.b, ptr noundef nonnull %i.b, ptr noundef %i.a)
  %i.lm = load i128, ptr %i.b, align 16
  %i.ln = load i128, ptr %i.c, align 16
  %i.lo = xor i128 %i.lm, %i.ln
  %i.lp = getelementptr i8, ptr %i.b, i64 16
  %i.lq = getelementptr i8, ptr %i.c, i64 16
  %i.lr = load i128, ptr %i.lp, align 16
  %i.ls = load i128, ptr %i.lq, align 16
  %i.lt = xor i128 %i.lr, %i.ls
  %i.lu = or i128 %i.lo, %i.lt
  %i.lv = icmp ne i128 %i.lu, 0
  %i.lw = zext i1 %i.lv to i32
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.e, label %bn_less_than_words.exit.thread

bn_less_than_words.exit.thread:                   ; preds = %bb.d, %bn_less_than_words.exit, %bn_add_words.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bn_less_than_words.exit.thread
  %.0 = phi i32 [ 0, %bn_less_than_words.exit.thread ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %ec_GFp_simple_is_at_infinity.exit.thread

ec_GFp_simple_is_at_infinity.exit.thread:         ; preds = %bb.a, %ec_GFp_simple_is_at_infinity.exit, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ 0, %ec_GFp_simple_is_at_infinity.exit ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = load i64, ptr %1, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = zext i64 %i.g to i128                    ; 4 uses
  %i.k = zext i64 %i.i to i128                    ; 4 uses
  %i.l = mul nuw i128 %i.k, %i.j                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = zext i64 %i.p to i128                    ; 4 uses
  %i.r = mul nuw i128 %i.q, %i.j                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96
  %i.v = zext i64 %i.u to i128                    ; 4 uses
  %i.w = mul nuw i128 %i.v, %i.j                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = load i64, ptr %2, align 8, !tbaa !96
  %i.z = zext i64 %i.y to i128                    ; 4 uses
  %i.aa = mul nuw i128 %i.z, %i.j                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = and i128 %i.w, 18446744073709551615
  %i.ad = add nuw nsw i128 %i.ab, %i.ac           ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = and i128 %i.r, 18446744073709551615
  %i.ag = add nuw nsw i128 %i.x, %i.af
  %i.ah = add nuw nsw i128 %i.ag, %i.ae           ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = and i128 %i.l, 18446744073709551615
  %i.ak = add nuw nsw i128 %i.s, %i.aj
  %i.al = add nuw nsw i128 %i.ak, %i.ai           ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = trunc nuw nsw i128 %i.am to i64
  %i.ao = add nuw i64 %i.an, %i.n
  %i.ap = and i128 %i.aa, 18446744073709551615    ; 4 uses
  %i.aq = mul nuw i128 %i.ap, 18446744069414584321 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = mul nuw nsw i128 %i.ap, 4294967295      ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw nsw i128 %i.at to i64
  %i.av = mul nuw i128 %i.ap, 18446744073709551615 ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = and i128 %i.as, 18446744073709551615
  %i.ay = add nuw nsw i128 %i.aw, %i.ax           ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = trunc nuw nsw i128 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, %i.au
  %i.bc = and i128 %i.av, 18446744073709551615
  %i.bd = add nuw nsw i128 %i.bc, %i.ap
  %i.be = lshr i128 %i.bd, 64
  %i.bf = and i128 %i.ad, 18446744073709551615
  %i.bg = add nuw nsw i128 %i.be, %i.bf
  %i.bh = and i128 %i.ay, 18446744073709551615
  %i.bi = add nuw nsw i128 %i.bg, %i.bh           ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = and i128 %i.ah, 18446744073709551615
  %i.bl = add nuw nsw i128 %i.bj, %i.bk
  %i.bm = zext nneg i64 %i.bb to i128
  %i.bn = add nuw nsw i128 %i.bl, %i.bm           ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = and i128 %i.al, 18446744073709551615
  %i.bq = and i128 %i.aq, 18446744073709551615
  %i.br = add nuw nsw i128 %i.bp, %i.bq
  %i.bs = add nuw nsw i128 %i.br, %i.bo           ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = zext i64 %i.ao to i128
  %i.bv = add nuw nsw i128 %i.ar, %i.bu
  %i.bw = add nuw nsw i128 %i.bv, %i.bt           ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = zext i64 %i.b to i128                   ; 4 uses
  %i.bz = mul nuw i128 %i.k, %i.by                ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = mul nuw i128 %i.q, %i.by                ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = mul nuw i128 %i.v, %i.by                ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = mul nuw i128 %i.z, %i.by                ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = and i128 %i.ce, 18446744073709551615
  %i.cj = add nuw nsw i128 %i.ch, %i.ci           ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = and i128 %i.cc, 18446744073709551615
  %i.cm = add nuw nsw i128 %i.cf, %i.cl
  %i.cn = add nuw nsw i128 %i.cm, %i.ck           ; 2 uses
  %i.co = lshr i128 %i.cn, 64
  %i.cp = and i128 %i.bz, 18446744073709551615
  %i.cq = add nuw nsw i128 %i.cd, %i.cp
  %i.cr = add nuw nsw i128 %i.cq, %i.co           ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = trunc nuw nsw i128 %i.cs to i64
  %i.cu = add nuw i64 %i.ct, %i.cb
  %i.cv = and i128 %i.bi, 18446744073709551615
  %i.cw = and i128 %i.cg, 18446744073709551615
  %i.cx = add nuw nsw i128 %i.cv, %i.cw           ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = and i128 %i.bn, 18446744073709551615
  %i.da = and i128 %i.cj, 18446744073709551615
  %i.db = add nuw nsw i128 %i.cy, %i.da
  %i.dc = add nuw nsw i128 %i.db, %i.cz           ; 2 uses
  %i.dd = lshr i128 %i.dc, 64
  %i.de = and i128 %i.bs, 18446744073709551615
  %i.df = and i128 %i.cn, 18446744073709551615
  %i.dg = add nuw nsw i128 %i.dd, %i.df
  %i.dh = add nuw nsw i128 %i.dg, %i.de           ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = and i128 %i.bw, 18446744073709551615
  %i.dk = and i128 %i.cr, 18446744073709551615
  %i.dl = add nuw nsw i128 %i.di, %i.dk
  %i.dm = add nuw nsw i128 %i.dl, %i.dj           ; 2 uses
end_hunk_25
