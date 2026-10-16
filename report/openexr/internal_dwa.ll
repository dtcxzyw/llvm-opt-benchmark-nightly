Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@interleaveByte2:bb.a
.lr.ph146.preheader:                              ; preds = %.preheader
  %wide.trip.count177 = zext nneg i32 %i.d to i64
  br label %.lr.ph146

._crit_edge147:                                   ; preds = %.lr.ph146, %.preheader
  %i.i = shl nsw i32 %i.d, 4                      ; 2 uses
  %i.j = icmp slt i32 %i.i, %3
  br i1 %i.j, label %iter.check308, label %.loopexit

iter.check308:                                    ; preds = %._crit_edge147
  %i.k = sext i32 %i.i to i64                     ; 10 uses
  %wide.trip.count182 = sext i32 %3 to i64        ; 9 uses
  %i.l = sub nsw i64 %wide.trip.count182, %i.k    ; 4 uses
  %min.iters.check283 = icmp ult i64 %i.l, 4
  br i1 %min.iters.check283, label %.lr.ph150.preheader, label %vector.memcheck284

vector.memcheck284:                               ; preds = %iter.check308
  %i.m = shl nsw i64 %i.k, 1
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = shl nsw i64 %wide.trip.count182, 1
  %i.p = getelementptr i8, ptr %0, i64 %i.o       ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  %i.r = getelementptr i8, ptr %1, i64 %wide.trip.count182
  %i.s = getelementptr i8, ptr %2, i64 %i.k
  %i.t = getelementptr i8, ptr %2, i64 %wide.trip.count182
  %bound0285 = icmp ult ptr %i.n, %i.r
  %bound1286 = icmp ult ptr %i.q, %i.p
  %found.conflict287 = and i1 %bound0285, %bound1286
  %bound0288 = icmp ult ptr %i.n, %i.t
  %bound1289 = icmp ult ptr %i.s, %i.p
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %found.conflict287, %found.conflict290
  br i1 %conflict.rdx291, label %.lr.ph150.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %vector.memcheck284
  %min.iters.check293 = icmp ult i64 %i.l, 16
  br i1 %min.iters.check293, label %vec.epilog.ph312, label %vector.ph294

vector.ph294:                                     ; preds = %vector.main.loop.iter.check292
  %i.u = and i64 %wide.trip.count182, 15          ; 2 uses
  %n.vec295 = sub nuw nsw i64 %i.l, %i.u          ; 3 uses
  %i.v = add nsw i64 %n.vec295, %i.k
  br label %vector.body296

vector.body296:                                   ; preds = %vector.ph294, %vector.body296
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next304, %vector.body296 ] ; 2 uses
  %i.w = add i64 %index297, %i.k                  ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %wide.load298 = load <8 x i8>, ptr %i.x, align 1, !tbaa !60, !alias.scope !316
  %wide.load299 = load <8 x i8>, ptr %i.y, align 1, !tbaa !60, !alias.scope !316
  %i.z = shl nsw i64 %i.w, 1
  %i.aa = shl i64 %i.w, 1
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.z
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.w ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %wide.load300 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !60, !alias.scope !317
  %wide.load301 = load <8 x i8>, ptr %i.af, align 1, !tbaa !60, !alias.scope !317
  %interleaved.vec302 = shufflevector <8 x i8> %wide.load298, <8 x i8> %wide.load300, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec302, ptr %i.ab, align 1, !tbaa !60, !alias.scope !318, !noalias !319
  %interleaved.vec303 = shufflevector <8 x i8> %wide.load299, <8 x i8> %wide.load301, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec303, ptr %i.ad, align 1, !tbaa !60, !alias.scope !318, !noalias !319
  %index.next304 = add nuw i64 %index297, 16      ; 2 uses
  %i.ag = icmp eq i64 %index.next304, %n.vec295
  br i1 %i.ag, label %middle.block305, label %vector.body296, !llvm.loop !296

middle.block305:                                  ; preds = %vector.body296
  %i.ah = and i32 %3, 15
  %cmp.n306 = icmp eq i32 %i.ah, 0
  br i1 %cmp.n306, label %.loopexit, label %vec.epilog.iter.check310

vec.epilog.iter.check310:                         ; preds = %middle.block305
  %min.epilog.iters.check311 = icmp samesign ult i64 %i.u, 4
  br i1 %min.epilog.iters.check311, label %.lr.ph150.preheader, label %vec.epilog.ph312, !prof !320

vec.epilog.ph312:                                 ; preds = %vector.main.loop.iter.check292, %vec.epilog.iter.check310
  %vec.epilog.resume.val307 = phi i64 [ %n.vec295, %vec.epilog.iter.check310 ], [ 0, %vector.main.loop.iter.check292 ]
  %i.ai = and i64 %wide.trip.count182, 3
  %n.vec313 = sub nsw i64 %i.l, %i.ai             ; 2 uses
  %i.aj = add nsw i64 %n.vec313, %i.k
  br label %vec.epilog.vector.body314

vec.epilog.vector.body314:                        ; preds = %vec.epilog.vector.body314, %vec.epilog.ph312
  %index315 = phi i64 [ %vec.epilog.resume.val307, %vec.epilog.ph312 ], [ %index.next319, %vec.epilog.vector.body314 ] ; 2 uses
  %i.ak = add i64 %index315, %i.k                 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %wide.load316 = load <4 x i8>, ptr %i.al, align 1, !tbaa !60, !alias.scope !316
  %i.am = shl nsw i64 %i.ak, 1
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.ak
  %wide.load317 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !60, !alias.scope !317
  %interleaved.vec318 = shufflevector <4 x i8> %wide.load316, <4 x i8> %wide.load317, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec318, ptr %i.an, align 1, !tbaa !60, !alias.scope !318, !noalias !319
  %index.next319 = add nuw i64 %index315, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next319, %n.vec313
  br i1 %i.ap, label %vec.epilog.middle.block320, label %vec.epilog.vector.body314, !llvm.loop !297

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body314
  %i.aq = and i32 %3, 3
  %cmp.n321 = icmp eq i32 %i.aq, 0
  br i1 %cmp.n321, label %.loopexit, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %iter.check308, %vector.memcheck284, %vec.epilog.iter.check310, %vec.epilog.middle.block320
  %indvars.iv179.ph = phi i64 [ %i.k, %iter.check308 ], [ %i.k, %vector.memcheck284 ], [ %i.v, %vec.epilog.iter.check310 ], [ %i.aj, %vec.epilog.middle.block320 ] ; 7 uses
  %i.ar = sub nsw i64 %wide.trip.count182, %indvars.iv179.ph
  %xtraiter327 = and i64 %i.ar, 1
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.lr.ph150.prol.loopexit, label %.lr.ph150.prol

.lr.ph150.prol:                                   ; preds = %.lr.ph150.preheader
  %i.as = getelementptr inbounds i8, ptr %1, i64 %indvars.iv179.ph
  %i.at = load i8, ptr %i.as, align 1, !tbaa !60
  %i.au = shl nsw i64 %indvars.iv179.ph, 1
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  store i8 %i.at, ptr %i.av, align 1, !tbaa !60
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv179.ph
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !60
  %i.ay = getelementptr i8, ptr %i.av, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !60
  %indvars.iv.next180.prol = add nsw i64 %indvars.iv179.ph, 1
  br label %.lr.ph150.prol.loopexit

.lr.ph150.prol.loopexit:                          ; preds = %.lr.ph150.prol, %.lr.ph150.preheader
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %.lr.ph150.preheader ], [ %indvars.iv.next180.prol, %.lr.ph150.prol ]
  %i.az = add nsw i64 %wide.trip.count182, -1
  %i.ba = icmp eq i64 %indvars.iv179.ph, %i.az
  br i1 %i.ba, label %.loopexit, label %.lr.ph150

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %indvars.iv174 = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next175, %.lr.ph146 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv174
  %i.bc = load <16 x i8>, ptr %i.bb, align 16, !tbaa !60 ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv174
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !60 ; 2 uses
  %.idx188 = shl nuw nsw i64 %indvars.iv174, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.idx188 ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.bc, <16 x i8> %i.be, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bg, ptr %i.bf, align 16, !tbaa !60, !nontemporal !321
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = shufflevector <16 x i8> %i.bc, <16 x i8> %i.be, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bi, ptr %i.bh, align 16, !tbaa !60, !nontemporal !321
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !298

.lr.ph150:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.1, %.lr.ph150 ], [ %indvars.iv179.unr, %.lr.ph150.prol.loopexit ] ; 5 uses
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv179
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !60
  %i.bl = shl nsw i64 %indvars.iv179, 1
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl ; 2 uses
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !60
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %indvars.iv179
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !60
  %i.bp = getelementptr i8, ptr %i.bm, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !60
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next180
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !60
  %i.bs = shl nsw i64 %indvars.iv.next180, 1
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs ; 2 uses
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !60
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next180
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !60
  %i.bw = getelementptr i8, ptr %i.bt, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !60
  %indvars.iv.next180.1 = add nsw i64 %indvars.iv179, 2 ; 2 uses
  %exitcond183.not.1 = icmp eq i64 %indvars.iv.next180.1, %wide.trip.count182
  br i1 %exitcond183.not.1, label %.loopexit, label %.lr.ph150, !llvm.loop !299

bb.b:                                             ; preds = %bb.a
  %i.bx = and i64 %i.a, 15
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = and i64 %i.b, 15
  %i.ca = icmp eq i64 %i.bz, 8
  %or.cond5 = and i1 %i.by, %i.ca
  %i.cb = and i64 %i.c, 15
  %i.cc = icmp eq i64 %i.cb, 8
  %or.cond7 = and i1 %or.cond5, %i.cc
  br i1 %or.cond7, label %bb.c, label %.preheader129

.preheader129:                                    ; preds = %bb.b
  %i.cd = icmp sgt i32 %3, 15
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader129
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.ce = icmp sgt i32 %3, 0
  br i1 %i.ce, label %.lr.ph136, label %.loopexit

._crit_edge137:                                   ; preds = %.lr.ph136.7, %.lr.ph136.6, %.lr.ph136.5, %.lr.ph136.4, %.lr.ph136.3, %.lr.ph136.2, %.lr.ph136.1, %.lr.ph136
  %i.cf = icmp samesign ugt i32 %3, 8
  br i1 %i.cf, label %bb.d, label %.loopexit

.lr.ph136:                                        ; preds = %bb.c
  %i.cg = load i8, ptr %1, align 1, !tbaa !60
  store i8 %i.cg, ptr %0, align 1, !tbaa !60
  %i.ch = load i8, ptr %2, align 1, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !60
  %exitcond163.not = icmp eq i32 %3, 1
  br i1 %exitcond163.not, label %._crit_edge137, label %.lr.ph136.1

.lr.ph136.1:                                      ; preds = %.lr.ph136
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !60
  %exitcond163.not.1 = icmp eq i32 %3, 2
  br i1 %exitcond163.not.1, label %._crit_edge137, label %.lr.ph136.2

.lr.ph136.2:                                      ; preds = %.lr.ph136.1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !60
  %exitcond163.not.2 = icmp eq i32 %3, 3
  br i1 %exitcond163.not.2, label %._crit_edge137, label %.lr.ph136.3

.lr.ph136.3:                                      ; preds = %.lr.ph136.2
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !60
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !60
  %exitcond163.not.3 = icmp eq i32 %3, 4
  br i1 %exitcond163.not.3, label %._crit_edge137, label %.lr.ph136.4

.lr.ph136.4:                                      ; preds = %.lr.ph136.3
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !60
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.df = load i8, ptr %i.de, align 1, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !60
  %exitcond163.not.4 = icmp eq i32 %3, 5
  br i1 %exitcond163.not.4, label %._crit_edge137, label %.lr.ph136.5

.lr.ph136.5:                                      ; preds = %.lr.ph136.4
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !60
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !60
  %exitcond163.not.5 = icmp eq i32 %3, 6
  br i1 %exitcond163.not.5, label %._crit_edge137, label %.lr.ph136.6

.lr.ph136.6:                                      ; preds = %.lr.ph136.5
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !60
  %exitcond163.not.6 = icmp eq i32 %3, 7
  br i1 %exitcond163.not.6, label %._crit_edge137, label %.lr.ph136.7

.lr.ph136.7:                                      ; preds = %.lr.ph136.6
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !60
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !60
  br label %._crit_edge137

bb.d:                                             ; preds = %._crit_edge137
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = add nsw i32 %3, -8                      ; 4 uses
  %i.ed = lshr i32 %i.ec, 4                       ; 2 uses
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %._crit_edge141, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.d
  %wide.trip.count167 = zext nneg i32 %i.ed to i64
  br label %.lr.ph140

._crit_edge141:                                   ; preds = %.lr.ph140, %bb.d
  %i.ee = and i32 %i.ec, -16                      ; 2 uses
  %i.ef = or disjoint i32 %i.ee, 8
  %i.eg = icmp samesign ult i32 %i.ef, %3
  br i1 %i.eg, label %iter.check255, label %.loopexit

iter.check255:                                    ; preds = %._crit_edge141
  %i.eh = or disjoint i32 %i.ee, 8
  %i.ei = zext nneg i32 %i.eh to i64              ; 6 uses
  %wide.trip.count172 = zext nneg i32 %3 to i64   ; 8 uses
  %i.ej = add nsw i64 %wide.trip.count172, -8     ; 2 uses
  %i.ek = and i32 %i.ec, -16
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 %i.ej, %i.el                ; 4 uses
  %min.iters.check230 = icmp ult i64 %i.em, 4
  br i1 %min.iters.check230, label %.lr.ph144.preheader, label %vector.memcheck231

vector.memcheck231:                               ; preds = %iter.check255
  %i.en = zext i32 %i.ec to i64                   ; 2 uses
  %i.eo = shl nuw nsw i64 %i.en, 1
  %i.ep = and i64 %i.eo, 8589934560
  %i.eq = getelementptr i8, ptr %0, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 16     ; 2 uses
  %i.es = shl nuw nsw i64 %wide.trip.count172, 1
  %i.et = getelementptr i8, ptr %0, i64 %i.es     ; 2 uses
  %i.eu = and i64 %i.en, 4294967280
  %i.ev = or disjoint i64 %i.eu, 8                ; 2 uses
  %i.ew = getelementptr i8, ptr %1, i64 %i.ev
  %i.ex = getelementptr i8, ptr %1, i64 %wide.trip.count172
  %i.ey = getelementptr i8, ptr %2, i64 %i.ev
  %i.ez = getelementptr i8, ptr %2, i64 %wide.trip.count172
  %bound0232 = icmp ult ptr %i.er, %i.ex
  %bound1233 = icmp ult ptr %i.ew, %i.et
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0235 = icmp ult ptr %i.er, %i.ez
  %bound1236 = icmp ult ptr %i.ey, %i.et
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %found.conflict234, %found.conflict237
  br i1 %conflict.rdx238, label %.lr.ph144.preheader, label %vector.main.loop.iter.check239

vector.main.loop.iter.check239:                   ; preds = %vector.memcheck231
  %min.iters.check240 = icmp ult i64 %i.em, 16
  br i1 %min.iters.check240, label %vec.epilog.ph259, label %vector.ph241

vector.ph241:                                     ; preds = %vector.main.loop.iter.check239
  %i.fa = and i64 %i.ej, 15                       ; 3 uses
  %n.vec242 = sub nuw nsw i64 %i.em, %i.fa        ; 3 uses
  %i.fb = add nsw i64 %n.vec242, %i.ei
  br label %vector.body243

vector.body243:                                   ; preds = %vector.ph241, %vector.body243
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next251, %vector.body243 ] ; 2 uses
  %i.fc = add nuw i64 %index244, %i.ei            ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %wide.load245 = load <8 x i8>, ptr %i.fd, align 1, !tbaa !60, !alias.scope !322
  %wide.load246 = load <8 x i8>, ptr %i.fe, align 1, !tbaa !60, !alias.scope !322
  %i.ff = shl nuw nsw i64 %i.fc, 1
  %i.fg = shl i64 %i.fc, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %i.ff
  %i.fi = getelementptr i8, ptr %0, i64 %i.fg
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fc ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %wide.load247 = load <8 x i8>, ptr %i.fk, align 1, !tbaa !60, !alias.scope !323
  %wide.load248 = load <8 x i8>, ptr %i.fl, align 1, !tbaa !60, !alias.scope !323
  %interleaved.vec249 = shufflevector <8 x i8> %wide.load245, <8 x i8> %wide.load247, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec249, ptr %i.fh, align 1, !tbaa !60, !alias.scope !324, !noalias !325
  %interleaved.vec250 = shufflevector <8 x i8> %wide.load246, <8 x i8> %wide.load248, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec250, ptr %i.fj, align 1, !tbaa !60, !alias.scope !324, !noalias !325
  %index.next251 = add nuw i64 %index244, 16      ; 2 uses
  %i.fm = icmp eq i64 %index.next251, %n.vec242
  br i1 %i.fm, label %middle.block252, label %vector.body243, !llvm.loop !304

middle.block252:                                  ; preds = %vector.body243
  %cmp.n253 = icmp eq i64 %i.fa, 0
  br i1 %cmp.n253, label %.loopexit, label %vec.epilog.iter.check257

vec.epilog.iter.check257:                         ; preds = %middle.block252
  %min.epilog.iters.check258 = icmp samesign ult i64 %i.fa, 4
  br i1 %min.epilog.iters.check258, label %.lr.ph144.preheader, label %vec.epilog.ph259, !prof !320

vec.epilog.ph259:                                 ; preds = %vector.main.loop.iter.check239, %vec.epilog.iter.check257
  %vec.epilog.resume.val254 = phi i64 [ %n.vec242, %vec.epilog.iter.check257 ], [ 0, %vector.main.loop.iter.check239 ]
  %i.fn = and i64 %wide.trip.count172, 3          ; 2 uses
  %n.vec260 = sub nsw i64 %i.em, %i.fn            ; 2 uses
  %i.fo = add nsw i64 %n.vec260, %i.ei
  br label %vec.epilog.vector.body261

vec.epilog.vector.body261:                        ; preds = %vec.epilog.vector.body261, %vec.epilog.ph259
  %index262 = phi i64 [ %vec.epilog.resume.val254, %vec.epilog.ph259 ], [ %index.next266, %vec.epilog.vector.body261 ] ; 2 uses
  %i.fp = add nuw i64 %index262, %i.ei            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fp
  %wide.load263 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !60, !alias.scope !322
  %i.fr = shl nuw nsw i64 %i.fp, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  %wide.load264 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !60, !alias.scope !323
  %interleaved.vec265 = shufflevector <4 x i8> %wide.load263, <4 x i8> %wide.load264, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec265, ptr %i.fs, align 1, !tbaa !60, !alias.scope !324, !noalias !325
  %index.next266 = add nuw i64 %index262, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next266, %n.vec260
  br i1 %i.fu, label %vec.epilog.middle.block267, label %vec.epilog.vector.body261, !llvm.loop !305

vec.epilog.middle.block267:                       ; preds = %vec.epilog.vector.body261
  %cmp.n268 = icmp eq i64 %i.fn, 0
  br i1 %cmp.n268, label %.loopexit, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %iter.check255, %vector.memcheck231, %vec.epilog.iter.check257, %vec.epilog.middle.block267
  %indvars.iv169.ph = phi i64 [ %i.ei, %iter.check255 ], [ %i.ei, %vector.memcheck231 ], [ %i.fb, %vec.epilog.iter.check257 ], [ %i.fo, %vec.epilog.middle.block267 ] ; 7 uses
  %i.fv = sub nsw i64 %wide.trip.count172, %indvars.iv169.ph
  %xtraiter325 = and i64 %i.fv, 1
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.lr.ph144.prol.loopexit, label %.lr.ph144.prol

.lr.ph144.prol:                                   ; preds = %.lr.ph144.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv169.ph
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !60
  %i.fy = shl nuw nsw i64 %indvars.iv169.ph, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %i.fy ; 2 uses
  store i8 %i.fx, ptr %i.fz, align 1, !tbaa !60
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv169.ph
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !60
  %i.gc = getelementptr i8, ptr %i.fz, i64 1
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !60
  %indvars.iv.next170.prol = add nuw nsw i64 %indvars.iv169.ph, 1
  br label %.lr.ph144.prol.loopexit

.lr.ph144.prol.loopexit:                          ; preds = %.lr.ph144.prol, %.lr.ph144.preheader
  %indvars.iv169.unr = phi i64 [ %indvars.iv169.ph, %.lr.ph144.preheader ], [ %indvars.iv.next170.prol, %.lr.ph144.prol ]
  %i.gd = add nsw i64 %wide.trip.count172, -1
  %i.ge = icmp eq i64 %indvars.iv169.ph, %i.gd
  br i1 %i.ge, label %.loopexit, label %.lr.ph144

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv164 = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next165, %.lr.ph140 ] ; 4 uses
  %.idx187 = shl nuw nsw i64 %indvars.iv164, 5
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx187 ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %indvars.iv164 ; 2 uses
  %i.gh = load <16 x i8>, ptr %i.gg, align 16, !tbaa !60
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %indvars.iv164 ; 2 uses
  %i.gj = load <16 x i8>, ptr %i.gi, align 16, !tbaa !60
  %i.gk = shufflevector <16 x i8> %i.gh, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.gk, ptr %i.gf, align 16, !tbaa !60, !nontemporal !321
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gm = load <16 x i8>, ptr %i.gg, align 16, !tbaa !60
  %i.gn = load <16 x i8>, ptr %i.gi, align 16, !tbaa !60
  %i.go = shufflevector <16 x i8> %i.gm, <16 x i8> %i.gn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.go, ptr %i.gl, align 16, !tbaa !60, !nontemporal !321
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge141, label %.lr.ph140, !llvm.loop !306

.lr.ph144:                                        ; preds = %.lr.ph144.prol.loopexit, %.lr.ph144
  %indvars.iv169 = phi i64 [ %indvars.iv.next170.1, %.lr.ph144 ], [ %indvars.iv169.unr, %.lr.ph144.prol.loopexit ] ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv169
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !60
  %i.gr = shl nuw nsw i64 %indvars.iv169, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 %i.gr ; 2 uses
  store i8 %i.gq, ptr %i.gs, align 1, !tbaa !60
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv169
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !60
  %i.gv = getelementptr i8, ptr %i.gs, i64 1
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !60
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next170
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !60
  %i.gy = shl nuw nsw i64 %indvars.iv.next170, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy ; 2 uses
  store i8 %i.gx, ptr %i.gz, align 1, !tbaa !60
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next170
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !60
  %i.hc = getelementptr i8, ptr %i.gz, i64 1
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !60
  %indvars.iv.next170.1 = add nuw nsw i64 %indvars.iv169, 2 ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %indvars.iv.next170.1, %wide.trip.count172
  br i1 %exitcond173.not.1, label %.loopexit, label %.lr.ph144, !llvm.loop !307

._crit_edge:                                      ; preds = %.lr.ph, %.preheader129
  %i.hd = shl nsw i32 %i.d, 4                     ; 2 uses
  %i.he = icmp slt i32 %i.hd, %3
  br i1 %i.he, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.hf = sext i32 %i.hd to i64                   ; 10 uses
  %wide.trip.count157 = sext i32 %3 to i64        ; 9 uses
  %i.hg = sub nsw i64 %wide.trip.count157, %i.hf  ; 4 uses
  %min.iters.check = icmp ult i64 %i.hg, 4
  br i1 %min.iters.check, label %.lr.ph133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hh = shl nsw i64 %i.hf, 1
  %i.hi = getelementptr i8, ptr %0, i64 %i.hh     ; 2 uses
  %i.hj = shl nsw i64 %wide.trip.count157, 1
  %i.hk = getelementptr i8, ptr %0, i64 %i.hj     ; 2 uses
  %i.hl = getelementptr i8, ptr %1, i64 %i.hf
  %i.hm = getelementptr i8, ptr %1, i64 %wide.trip.count157
  %i.hn = getelementptr i8, ptr %2, i64 %i.hf
  %i.ho = getelementptr i8, ptr %2, i64 %wide.trip.count157
  %bound0 = icmp ult ptr %i.hi, %i.hm
  %bound1 = icmp ult ptr %i.hl, %i.hk
  %found.conflict = and i1 %bound0, %bound1
  %bound0201 = icmp ult ptr %i.hi, %i.ho
  %bound1202 = icmp ult ptr %i.hn, %i.hk
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx = or i1 %found.conflict, %found.conflict203
  br i1 %conflict.rdx, label %.lr.ph133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check204 = icmp ult i64 %i.hg, 16
  br i1 %min.iters.check204, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %wide.trip.count157, 15         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.hg, %i.hp           ; 3 uses
  %i.hq = add nsw i64 %n.vec, %i.hf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hr = add i64 %index, %i.hf                   ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %1, i64 %i.hr ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %wide.load = load <8 x i8>, ptr %i.hs, align 1, !tbaa !60, !alias.scope !326
  %wide.load205 = load <8 x i8>, ptr %i.ht, align 1, !tbaa !60, !alias.scope !326
  %i.hu = shl nsw i64 %i.hr, 1
  %i.hv = shl i64 %i.hr, 1
  %i.hw = getelementptr inbounds i8, ptr %0, i64 %i.hu
  %i.hx = getelementptr i8, ptr %0, i64 %i.hv
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %i.hz = getelementptr inbounds i8, ptr %2, i64 %i.hr ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %wide.load206 = load <8 x i8>, ptr %i.hz, align 1, !tbaa !60, !alias.scope !327
  %wide.load207 = load <8 x i8>, ptr %i.ia, align 1, !tbaa !60, !alias.scope !327
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load206, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.hw, align 1, !tbaa !60, !alias.scope !328, !noalias !329
  %interleaved.vec208 = shufflevector <8 x i8> %wide.load205, <8 x i8> %wide.load207, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec208, ptr %i.hy, align 1, !tbaa !60, !alias.scope !328, !noalias !329
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %i.ic = and i32 %3, 15
  %cmp.n = icmp eq i32 %i.ic, 0
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.hp, 4
  br i1 %min.epilog.iters.check, label %.lr.ph133.preheader, label %vec.epilog.ph, !prof !320

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.id = and i64 %wide.trip.count157, 3
  %n.vec209 = sub nsw i64 %i.hg, %i.id            ; 2 uses
  %i.ie = add nsw i64 %n.vec209, %i.hf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index210 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next214, %vec.epilog.vector.body ] ; 2 uses
  %i.if = add i64 %index210, %i.hf                ; 3 uses
  %i.ig = getelementptr inbounds i8, ptr %1, i64 %i.if
  %wide.load211 = load <4 x i8>, ptr %i.ig, align 1, !tbaa !60, !alias.scope !326
  %i.ih = shl nsw i64 %i.if, 1
  %i.ii = getelementptr inbounds i8, ptr %0, i64 %i.ih
  %i.ij = getelementptr inbounds i8, ptr %2, i64 %i.if
  %wide.load212 = load <4 x i8>, ptr %i.ij, align 1, !tbaa !60, !alias.scope !327
  %interleaved.vec213 = shufflevector <4 x i8> %wide.load211, <4 x i8> %wide.load212, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec213, ptr %i.ii, align 1, !tbaa !60, !alias.scope !328, !noalias !329
  %index.next214 = add nuw i64 %index210, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next214, %n.vec209
  br i1 %i.ik, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !313

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.il = and i32 %3, 3
  %cmp.n215 = icmp eq i32 %i.il, 0
  br i1 %cmp.n215, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv154.ph = phi i64 [ %i.hf, %iter.check ], [ %i.hf, %vector.memcheck ], [ %i.hq, %vec.epilog.iter.check ], [ %i.ie, %vec.epilog.middle.block ] ; 7 uses
  %i.im = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter = and i64 %i.im, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph133.prol.loopexit, label %.lr.ph133.prol

.lr.ph133.prol:                                   ; preds = %.lr.ph133.preheader
  %i.in = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154.ph
  %i.io = load i8, ptr %i.in, align 1, !tbaa !60
  %i.ip = shl nsw i64 %indvars.iv154.ph, 1
  %i.iq = getelementptr inbounds i8, ptr %0, i64 %i.ip ; 2 uses
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !60
  %i.ir = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154.ph
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !60
  %i.it = getelementptr i8, ptr %i.iq, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !60
  %indvars.iv.next155.prol = add nsw i64 %indvars.iv154.ph, 1
  br label %.lr.ph133.prol.loopexit

.lr.ph133.prol.loopexit:                          ; preds = %.lr.ph133.prol, %.lr.ph133.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %.lr.ph133.preheader ], [ %indvars.iv.next155.prol, %.lr.ph133.prol ]
  %i.iu = add nsw i64 %wide.trip.count157, -1
  %i.iv = icmp eq i64 %indvars.iv154.ph, %i.iu
  br i1 %i.iv, label %.loopexit, label %.lr.ph133

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.ix = load <16 x i8>, ptr %i.iw, align 1, !tbaa !60 ; 2 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.iz = load <16 x i8>, ptr %i.iy, align 1, !tbaa !60 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.jb = shufflevector <16 x i8> %i.ix, <16 x i8> %i.iz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.jb, ptr %i.ja, align 1, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jd = shufflevector <16 x i8> %i.ix, <16 x i8> %i.iz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.jd, ptr %i.jc, align 1, !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !314

.lr.ph133:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph133 ], [ %indvars.iv154.unr, %.lr.ph133.prol.loopexit ] ; 5 uses
  %i.je = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !60
  %i.jg = shl nsw i64 %indvars.iv154, 1
  %i.jh = getelementptr inbounds i8, ptr %0, i64 %i.jg ; 2 uses
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !60
  %i.ji = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !60
  %i.jk = getelementptr i8, ptr %i.jh, i64 1
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !60
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 3 uses
  %i.jl = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next155
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !60
  %i.jn = shl nsw i64 %indvars.iv.next155, 1
  %i.jo = getelementptr inbounds i8, ptr %0, i64 %i.jn ; 2 uses
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !60
  %i.jp = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next155
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !60
  %i.jr = getelementptr i8, ptr %i.jo, i64 1
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !60
  %indvars.iv.next155.1 = add nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph133, !llvm.loop !315

.loopexit:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133, %.lr.ph144.prol.loopexit, %.lr.ph144, %.lr.ph150.prol.loopexit, %.lr.ph150, %middle.block, %vec.epilog.middle.block, %middle.block252, %vec.epilog.middle.block267, %middle.block305, %vec.epilog.middle.block320, %bb.c, %._crit_edge, %._crit_edge141, %._crit_edge147, %._crit_edge137
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20
end_hunk_0
