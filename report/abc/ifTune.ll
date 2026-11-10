Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTune?download=true
inline.NumInlined: 335
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ifn_NtkDeriveTruth:bb.a
  %i.g = icmp sgt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8496 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 7 uses
  %i.m = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 6)
  %i.n = icmp sgt i32 %i.k, 0                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.k to i64       ; 12 uses
  br i1 %i.g, label %.lr.ph159.split.us, label %.lr.ph159.split

.lr.ph159.split.us:                               ; preds = %.lr.ph159
  br i1 %i.n, label %.lr.ph.us.us.preheader, label %.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph159.split.us
  %i.o = zext nneg i32 %i.f to i64
  %i.p = sext i32 %i.d to i64
  %i.q = zext nneg i32 %i.k to i64
  %wide.trip.count197 = zext nneg i32 %i.a to i64
  %wide.trip.count192 = zext nneg i32 %i.f to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.h, i64 %i.p
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  %min.iters.check260 = icmp ult i32 %i.f, 8
  %n.vec262 = and i64 %wide.trip.count192, 2147483640 ; 3 uses
  %cmp.n270 = icmp eq i64 %n.vec262, %wide.trip.count192
  %min.iters.check246 = icmp ult i32 %i.k, 6
  %n.vec250 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n257 = icmp eq i64 %n.vec250, %wide.trip.count.i
  %xtraiter429 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %Abc_TtCopy.exit.loopexit.us.us
  %indvars.iv194 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next195, %Abc_TtCopy.exit.loopexit.us.us ] ; 4 uses
  %i.s = mul nuw nsw i64 %indvars.iv194, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.body263

vector.body263:                                   ; preds = %.lr.ph.us.us, %vector.body263
  %index264 = phi i64 [ %index.next268, %vector.body263 ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.body263 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.phi265 = phi <4 x i32> [ %i.ac, %vector.body263 ], [ zeroinitializer, %.lr.ph.us.us ]
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body263 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.us.us ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.t = getelementptr [4 x i8], ptr %gep, i64 %index264 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load266 = load <4 x i32>, ptr %i.t, align 4, !tbaa !31
  %wide.load267 = load <4 x i32>, ptr %i.u, align 4, !tbaa !31
  %i.v = icmp eq <4 x i32> %wide.load266, zeroinitializer
  %i.w = icmp eq <4 x i32> %wide.load267, zeroinitializer
  %i.x = shl nuw <4 x i32> splat (i32 1), %vec.ind
  %i.y = shl nuw <4 x i32> splat (i32 1), %step.add
  %i.z = select <4 x i1> %i.v, <4 x i32> zeroinitializer, <4 x i32> %i.x
  %i.aa = select <4 x i1> %i.w, <4 x i32> zeroinitializer, <4 x i32> %i.y
  %i.ab = add <4 x i32> %i.z, %vec.phi            ; 2 uses
  %i.ac = add <4 x i32> %i.aa, %vec.phi265        ; 2 uses
  %index.next268 = add nuw i64 %index264, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next268, %n.vec262
  br i1 %i.ad, label %middle.block269, label %vector.body263, !llvm.loop !179

middle.block269:                                  ; preds = %vector.body263
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n270, label %._crit_edge.us.us, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %.lr.ph.us.us, %middle.block269
  %indvars.iv189.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec262, %middle.block269 ]
  %.0156.us.us.ph = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ae, %middle.block269 ]
  br label %scalar.ph259

scalar.ph259:                                     ; preds = %scalar.ph259.preheader, %scalar.ph259
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %scalar.ph259 ], [ %indvars.iv189.ph, %scalar.ph259.preheader ] ; 3 uses
  %.0156.us.us = phi i32 [ %.1.us.us, %scalar.ph259 ], [ %.0156.us.us.ph, %scalar.ph259.preheader ]
  %i.af = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv189
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %.not112.us.us = icmp eq i32 %i.ag, 0
  %i.ah = trunc nuw nsw i64 %indvars.iv189 to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %.not112.us.us, i32 0, i32 %i.ai
  %.1.us.us = add nsw i32 %i.aj, %.0156.us.us     ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge.us.us, label %scalar.ph259, !llvm.loop !180

._crit_edge.us.us:                                ; preds = %scalar.ph259, %middle.block269
  %.1.us.us.lcssa = phi i32 [ %i.ae, %middle.block269 ], [ %.1.us.us, %scalar.ph259 ]
  %i.ak = mul nuw nsw i64 %indvars.iv194, %i.q
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak ; 6 uses
  %i.am = shl i32 %.1.us.us.lcssa, %i.m
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.an ; 6 uses
  br i1 %min.iters.check246, label %.lr.ph.i.us.us.preheader, label %vector.memcheck247

vector.memcheck247:                               ; preds = %._crit_edge.us.us
  %i.ap = mul i64 %indvars.iv194, %i.r
  %i.aq = shl nsw i64 %i.an, 3
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = add i64 %i.ar, 2815
  %diff.check248 = icmp ult i64 %i.as, 31
  br i1 %diff.check248, label %.lr.ph.i.us.us.preheader, label %vector.body251

vector.body251:                                   ; preds = %vector.memcheck247, %vector.body251
  %index252 = phi i64 [ %index.next255, %vector.body251 ], [ 0, %vector.memcheck247 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index252 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load253 = load <2 x i64>, ptr %i.at, align 8, !tbaa !37
  %wide.load254 = load <2 x i64>, ptr %i.au, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %index252 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x i64> %wide.load253, ptr %i.av, align 8, !tbaa !37
  store <2 x i64> %wide.load254, ptr %i.aw, align 8, !tbaa !37
  %index.next255 = add nuw i64 %index252, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next255, %n.vec250
  br i1 %i.ax, label %middle.block256, label %vector.body251, !llvm.loop !181

middle.block256:                                  ; preds = %vector.body251
  br i1 %cmp.n257, label %Abc_TtCopy.exit.loopexit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %vector.memcheck247, %._crit_edge.us.us, %middle.block256
  %indvars.iv.i.us.us.ph = phi i64 [ 0, %vector.memcheck247 ], [ 0, %._crit_edge.us.us ], [ %n.vec250, %middle.block256 ] ; 3 uses
  br i1 %lcmp.mod430.not, label %.lr.ph.i.us.us.prol.loopexit, label %.lr.ph.i.us.us.prol

.lr.ph.i.us.us.prol:                              ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us.prol
  %indvars.iv.i.us.us.prol = phi i64 [ %indvars.iv.next.i.us.us.prol, %.lr.ph.i.us.us.prol ], [ %indvars.iv.i.us.us.ph, %.lr.ph.i.us.us.preheader ] ; 3 uses
  %prol.iter431 = phi i64 [ %prol.iter431.next, %.lr.ph.i.us.us.prol ], [ 0, %.lr.ph.i.us.us.preheader ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.us.us.prol
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.us.us.prol
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !37
  %indvars.iv.next.i.us.us.prol = add nuw nsw i64 %indvars.iv.i.us.us.prol, 1 ; 2 uses
  %prol.iter431.next = add i64 %prol.iter431, 1   ; 2 uses
  %prol.iter431.cmp.not = icmp eq i64 %prol.iter431.next, %xtraiter429
  br i1 %prol.iter431.cmp.not, label %.lr.ph.i.us.us.prol.loopexit, label %.lr.ph.i.us.us.prol, !llvm.loop !182

.lr.ph.i.us.us.prol.loopexit:                     ; preds = %.lr.ph.i.us.us.prol, %.lr.ph.i.us.us.preheader
  %indvars.iv.i.us.us.unr = phi i64 [ %indvars.iv.i.us.us.ph, %.lr.ph.i.us.us.preheader ], [ %indvars.iv.next.i.us.us.prol, %.lr.ph.i.us.us.prol ]
  %i.bb = sub nsw i64 %indvars.iv.i.us.us.ph, %wide.trip.count.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %Abc_TtCopy.exit.loopexit.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.prol.loopexit, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ], [ %indvars.iv.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.us.us
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.us.us
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !37
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.i.us.us
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.us.us
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !37
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.i.us.us.1
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.us.us.1
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !37
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.i.us.us, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next.i.us.us.2
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.us.us.2
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !37
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.3, label %Abc_TtCopy.exit.loopexit.us.us, label %.lr.ph.i.us.us, !llvm.loop !183

Abc_TtCopy.exit.loopexit.us.us:                   ; preds = %.lr.ph.i.us.us.prol.loopexit, %.lr.ph.i.us.us, %middle.block256
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.preheader, label %.lr.ph.us.us, !llvm.loop !184

.lr.ph159.split:                                  ; preds = %.lr.ph159
  br i1 %i.n, label %.lr.ph.preheader.i.preheader, label %.preheader

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph159.split
  %wide.trip.count = zext nneg i32 %i.a to i64
  %min.iters.check = icmp ult i32 %i.k, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.preheader.i

.preheader:                                       ; preds = %Abc_TtCopy.exit.loopexit, %Abc_TtCopy.exit.loopexit.us.us, %.lr.ph159.split.us, %.lr.ph159.split, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22 ; 4 uses
  %i.br = icmp slt i32 %i.a, %i.bq
  br i1 %i.br, label %.lr.ph171, label %.preheader.._crit_edge172_crit_edge

.preheader.._crit_edge172_crit_edge:              ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21
  br label %._crit_edge172

.lr.ph171:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = getelementptr i8, ptr %0, i64 8496      ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21 ; 18 uses
  %i.bw = mul i32 %i.bv, %i.bq
  %i.bx = sext i32 %i.bw to i64                   ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx ; 20 uses
  %i.bz = icmp sgt i32 %i.bv, 0                   ; 6 uses
  %i.ca = zext i32 %i.bv to i64                   ; 37 uses
  %i.cb = shl nuw nsw i64 %i.ca, 3                ; 5 uses
  %i.cc = icmp slt i32 %i.bv, 1                   ; 2 uses
  %i.cd = sext i32 %i.a to i64                    ; 4 uses
  %i.ce = sext i32 %i.bv to i64                   ; 8 uses
  %wide.trip.count218 = sext i32 %i.bq to i64
  %i.cf = mul nsw i64 %i.ce, %i.cd
  %i.cg = add i64 %i.cf, %i.ca
  %i.ch = shl i64 %i.cg, 3
  %i.ci = shl nsw i64 %i.ce, 3
  %i.cj = shl nuw nsw i64 %i.ca, 3                ; 2 uses
  %i.ck = mul nsw i64 %i.ce, %i.cd
  %i.cl = shl i64 %i.ck, 3                        ; 2 uses
  %i.cm = shl nsw i64 %i.ce, 3
  %i.cn = shl nsw i64 %i.ce, 3
  %i.co = add nsw i64 %i.bx, %i.ca
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = getelementptr i8, ptr %0, i64 %i.cp
  %scevgep348 = getelementptr i8, ptr %i.cq, i64 8496
  %i.cr = mul nsw i64 %i.ce, %i.cd
  %i.cs = add i64 %i.cr, %i.ca
  %i.ct = shl i64 %i.cs, 3
  %i.cu = shl nsw i64 %i.ce, 3
  %i.cv = shl nuw nsw i64 %i.ca, 3
  %i.cw = add nuw nsw i64 %i.cv, 8496             ; 2 uses
  %2 = add nsw i64 %i.bx, %i.ca
  %i.cx = shl nsw i64 %2, 3
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx
  %scevgep375 = getelementptr i8, ptr %i.cy, i64 8496 ; 2 uses
  %i.cz = getelementptr i8, ptr %0, i64 %i.ct
  %i.da = getelementptr i8, ptr %i.cz, i64 8496
  %i.db = getelementptr i8, ptr %0, i64 %i.cl
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.cj
  %i.dd = getelementptr i8, ptr %i.dc, i64 8496
  %i.de = getelementptr i8, ptr %0, i64 %i.ch
  %i.df = getelementptr i8, ptr %i.de, i64 8496
  %min.iters.check401 = icmp ult i32 %i.bv, 4
  %i.dg = getelementptr i8, ptr %0, i64 %i.cw
  %n.vec407 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n416 = icmp eq i64 %n.vec407, %i.ca
  %xtraiter432 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  %min.iters.check377 = icmp ult i32 %i.bv, 4
  %3 = getelementptr i8, ptr %0, i64 %i.cw
  %n.vec383 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n392 = icmp eq i64 %n.vec383, %i.ca
  %xtraiter435 = and i64 %i.ca, 1
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  %i.dh = add nsw i64 %i.ca, -1
  %min.iters.check351 = icmp ult i32 %i.bv, 4
  %n.vec357 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n366 = icmp eq i64 %n.vec357, %i.ca
  %xtraiter438 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  %min.iters.check322 = icmp ult i32 %i.bv, 8
  %n.vec329 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n340 = icmp eq i64 %n.vec329, %i.ca
  %xtraiter441 = and i64 %i.ca, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  %i.di = add nsw i64 %i.ca, -1
  %min.iters.check299 = icmp ult i32 %i.bv, 4
  %4 = getelementptr i8, ptr %0, i64 %i.cj
  %5 = getelementptr i8, ptr %4, i64 8496
  %n.vec305 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n314 = icmp eq i64 %n.vec305, %i.ca
  %xtraiter444 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  %min.iters.check276 = icmp ult i32 %i.bv, 4
  %6 = getelementptr i8, ptr %0, i64 %i.cb
  %7 = getelementptr i8, ptr %6, i64 8496
  %n.vec279 = and i64 %i.ca, 2147483644           ; 3 uses
  %cmp.n288 = icmp eq i64 %n.vec279, %i.ca
  %xtraiter447 = and i64 %i.ca, 3                 ; 2 uses
  %lcmp.mod448.not = icmp eq i64 %xtraiter447, 0
  br label %bb.b

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %Abc_TtCopy.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next, %Abc_TtCopy.exit.loopexit ] ; 2 uses
  %i.dj = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dj ; 6 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !37
  %wide.load242 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <2 x i64> %wide.load, ptr %i.dn, align 8, !tbaa !37
  store <2 x i64> %wide.load242, ptr %i.do, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.prol
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i.prol
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !37
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !186

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.dt = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !37
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !37
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !37
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.1
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.1
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !37
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.2
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !37
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i.2
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !37
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %Abc_TtCopy.exit.loopexit, label %.lr.ph.i, !llvm.loop !187

Abc_TtCopy.exit.loopexit:                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.preheader.i, !llvm.loop !184

bb.b:                                             ; preds = %.lr.ph171, %Abc_TtMux.exit
  %indvar = phi i64 [ 0, %.lr.ph171 ], [ %indvar.next, %Abc_TtMux.exit ] ; 5 uses
  %indvars.iv215 = phi i64 [ %i.cd, %.lr.ph171 ], [ %indvars.iv.next216, %Abc_TtMux.exit ] ; 3 uses
  %i.eh = mul i64 %i.cu, %indvar
  %scevgep349 = getelementptr i8, ptr %i.da, i64 %i.eh
  %i.ei = mul i64 %i.cm, %indvar
  %scevgep297 = getelementptr i8, ptr %i.dd, i64 %i.ei
  %i.ej = mul i64 %i.ci, %indvar
  %scevgep.a = getelementptr i8, ptr %i.df, i64 %i.ej
  %i.ek = getelementptr inbounds [48 x i8], ptr %i.bs, i64 %indvars.iv215 ; 5 uses
  %i.el = load i32, ptr %i.ek, align 8            ; 2 uses
  %i.em = lshr i32 %i.el, 3
  %i.en = and i32 %i.em, 31                       ; 8 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4 ; 4 uses
  %i.ep = mul i64 %indvars.iv215, %i.ce
  %i.eq = getelementptr [8 x i8], ptr %i.bt, i64 %i.ep ; 28 uses
  %i.er = and i32 %i.el, 7
  switch i32 %i.er, label %Abc_TtMux.exit [
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %i.cc, label %Abc_TtMux.exit, label %Abc_TtFill.exit

Abc_TtFill.exit:                                  ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 -1, i64 %i.cb, i1 false), !tbaa !37
  %.not181 = icmp eq i32 %i.en, 0
  br i1 %.not181, label %Abc_TtMux.exit, label %.lr.ph.preheader.i114.preheader

.lr.ph.preheader.i114.preheader:                  ; preds = %Abc_TtFill.exit
  %wide.trip.count213 = zext nneg i32 %i.en to i64
  br label %.lr.ph.preheader.i114

.lr.ph.preheader.i114:                            ; preds = %.lr.ph.preheader.i114.preheader, %Abc_TtAnd.exit.loopexit
  %indvars.iv210 = phi i64 [ 0, %.lr.ph.preheader.i114.preheader ], [ %indvars.iv.next211, %Abc_TtAnd.exit.loopexit ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv210
  %i.et = load i32, ptr %i.es, align 4, !tbaa !31
  %i.eu = mul nsw i32 %i.et, %i.bv
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ev ; 7 uses
  br i1 %min.iters.check276, label %.lr.ph.i116.preheader, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.preheader.i114
  %i.ex = shl nsw i64 %i.ev, 3
  %i.ey = getelementptr i8, ptr %7, i64 %i.ex
  %bound0 = icmp ult ptr %i.eq, %i.ey
  %bound1 = icmp ult ptr %i.ew, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i116.preheader, label %vector.body280

vector.body280:                                   ; preds = %vector.memcheck277, %vector.body280
  %index281 = phi i64 [ %index.next286, %vector.body280 ], [ 0, %vector.memcheck277 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index281 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load282 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !37, !alias.scope !224, !noalias !225
  %wide.load283 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !37, !alias.scope !224, !noalias !225
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index281 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load284 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !37, !alias.scope !225
  %wide.load285 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !37, !alias.scope !225
  %i.fd = and <2 x i64> %wide.load284, %wide.load282
  %i.fe = and <2 x i64> %wide.load285, %wide.load283
  store <2 x i64> %i.fd, ptr %i.ez, align 8, !tbaa !37, !alias.scope !224, !noalias !225
  store <2 x i64> %i.fe, ptr %i.fa, align 8, !tbaa !37, !alias.scope !224, !noalias !225
  %index.next286 = add nuw i64 %index281, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next286, %n.vec279
  br i1 %i.ff, label %middle.block287, label %vector.body280, !llvm.loop !191

middle.block287:                                  ; preds = %vector.body280
  br i1 %cmp.n288, label %Abc_TtAnd.exit.loopexit, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %vector.memcheck277, %.lr.ph.preheader.i114, %middle.block287
  %indvars.iv.i117.ph = phi i64 [ 0, %vector.memcheck277 ], [ 0, %.lr.ph.preheader.i114 ], [ %n.vec279, %middle.block287 ] ; 3 uses
  br i1 %lcmp.mod448.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol

.lr.ph.i116.prol:                                 ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116.prol
  %indvars.iv.i117.prol = phi i64 [ %indvars.iv.next.i118.prol, %.lr.ph.i116.prol ], [ %indvars.iv.i117.ph, %.lr.ph.i116.preheader ] ; 3 uses
  %prol.iter449 = phi i64 [ %prol.iter449.next, %.lr.ph.i116.prol ], [ 0, %.lr.ph.i116.preheader ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i117.prol ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i117.prol
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !37
  %i.fk = and i64 %i.fj, %i.fh
  store i64 %i.fk, ptr %i.fg, align 8, !tbaa !37
  %indvars.iv.next.i118.prol = add nuw nsw i64 %indvars.iv.i117.prol, 1 ; 2 uses
  %prol.iter449.next = add i64 %prol.iter449, 1   ; 2 uses
  %prol.iter449.cmp.not = icmp eq i64 %prol.iter449.next, %xtraiter447
  br i1 %prol.iter449.cmp.not, label %.lr.ph.i116.prol.loopexit, label %.lr.ph.i116.prol, !llvm.loop !192

.lr.ph.i116.prol.loopexit:                        ; preds = %.lr.ph.i116.prol, %.lr.ph.i116.preheader
  %indvars.iv.i117.unr = phi i64 [ %indvars.iv.i117.ph, %.lr.ph.i116.preheader ], [ %indvars.iv.next.i118.prol, %.lr.ph.i116.prol ]
  %i.fl = sub nsw i64 %indvars.iv.i117.ph, %i.ca
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %Abc_TtAnd.exit.loopexit, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i118.3, %.lr.ph.i116 ], [ %indvars.iv.i117.unr, %.lr.ph.i116.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i117 ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !37
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i117
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !37
  %i.fr = and i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %i.fn, align 8, !tbaa !37
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i117, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i118 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !37
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i118
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !37
  %i.fw = and i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fs, align 8, !tbaa !37
  %indvars.iv.next.i118.1 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i118.1 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !37
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i118.1
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !37
  %i.gb = and i64 %i.ga, %i.fy
  store i64 %i.gb, ptr %i.fx, align 8, !tbaa !37
  %indvars.iv.next.i118.2 = add nuw nsw i64 %indvars.iv.i117, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i118.2 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !37
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i118.2
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !37
  %i.gg = and i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.gc, align 8, !tbaa !37
  %indvars.iv.next.i118.3 = add nuw nsw i64 %indvars.iv.i117, 4 ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %indvars.iv.next.i118.3, %i.ca
  br i1 %exitcond.not.i119.3, label %Abc_TtAnd.exit.loopexit, label %.lr.ph.i116, !llvm.loop !193

Abc_TtAnd.exit.loopexit:                          ; preds = %.lr.ph.i116.prol.loopexit, %.lr.ph.i116, %middle.block287
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %Abc_TtMux.exit, label %.lr.ph.preheader.i114, !llvm.loop !194

bb.d:                                             ; preds = %bb.b
  br i1 %i.cc, label %Abc_TtMux.exit, label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 0, i64 %i.cb, i1 false), !tbaa !37
  %.not180 = icmp eq i32 %i.en, 0
  br i1 %.not180, label %Abc_TtMux.exit, label %.lr.ph22.preheader.i.preheader

.lr.ph22.preheader.i.preheader:                   ; preds = %Abc_TtClear.exit
  %wide.trip.count208 = zext nneg i32 %i.en to i64
  br label %.lr.ph22.preheader.i

.lr.ph22.preheader.i:                             ; preds = %.lr.ph22.preheader.i.preheader, %Abc_TtXor.exit.loopexit
  %indvars.iv205 = phi i64 [ 0, %.lr.ph22.preheader.i.preheader ], [ %indvars.iv.next206, %Abc_TtXor.exit.loopexit ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv205
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !31
  %i.gj = mul nsw i32 %i.gi, %i.bv
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.gk ; 7 uses
  br i1 %min.iters.check299, label %.lr.ph22.i.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %.lr.ph22.preheader.i
  %i.gm = shl nsw i64 %i.gk, 3
  %i.gn = getelementptr i8, ptr %5, i64 %i.gm
  %bound0301 = icmp ult ptr %i.eq, %i.gn
  %bound1302 = icmp ult ptr %i.gl, %scevgep297
  %found.conflict303 = and i1 %bound0301, %bound1302
  br i1 %found.conflict303, label %.lr.ph22.i.preheader, label %vector.body306

vector.body306:                                   ; preds = %vector.memcheck300, %vector.body306
  %index307 = phi i64 [ %index.next312, %vector.body306 ], [ 0, %vector.memcheck300 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index307 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %wide.load308 = load <2 x i64>, ptr %i.go, align 8, !tbaa !37, !alias.scope !226, !noalias !227
  %wide.load309 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !37, !alias.scope !226, !noalias !227
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %index307 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load310 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !37, !alias.scope !227
  %wide.load311 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !37, !alias.scope !227
  %i.gs = xor <2 x i64> %wide.load310, %wide.load308
  %i.gt = xor <2 x i64> %wide.load311, %wide.load309
  store <2 x i64> %i.gs, ptr %i.go, align 8, !tbaa !37, !alias.scope !226, !noalias !227
  store <2 x i64> %i.gt, ptr %i.gp, align 8, !tbaa !37, !alias.scope !226, !noalias !227
  %index.next312 = add nuw i64 %index307, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gu, label %middle.block313, label %vector.body306, !llvm.loop !198

middle.block313:                                  ; preds = %vector.body306
  br i1 %cmp.n314, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %vector.memcheck300, %.lr.ph22.preheader.i, %middle.block313
  %indvars.iv25.i.ph = phi i64 [ 0, %vector.memcheck300 ], [ 0, %.lr.ph22.preheader.i ], [ %n.vec305, %middle.block313 ] ; 3 uses
  br i1 %lcmp.mod445.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %indvars.iv25.i.prol = phi i64 [ %indvars.iv.next26.i.prol, %.lr.ph22.i.prol ], [ %indvars.iv25.i.ph, %.lr.ph22.i.preheader ] ; 3 uses
  %prol.iter446.a = phi i64 [ %prol.iter446.next.a, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv25.i.prol ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !37
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv25.i.prol
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !37
  %i.gz = xor i64 %i.gy, %i.gw
  store i64 %i.gz, ptr %i.gv, align 8, !tbaa !37
  %indvars.iv.next26.i.prol = add nuw nsw i64 %indvars.iv25.i.prol, 1 ; 2 uses
  %prol.iter446.next.a = add i64 %prol.iter446.a, 1 ; 2 uses
  %prol.iter446.cmp.not.a = icmp eq i64 %prol.iter446.next.a, %xtraiter444
  br i1 %prol.iter446.cmp.not.a, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !199

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %indvars.iv25.i.unr = phi i64 [ %indvars.iv25.i.ph, %.lr.ph22.i.preheader ], [ %indvars.iv.next26.i.prol, %.lr.ph22.i.prol ]
  %i.ha = sub nsw i64 %indvars.iv25.i.ph, %i.ca
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i.3, %.lr.ph22.i ], [ %indvars.iv25.i.unr, %.lr.ph22.i.prol.loopexit ] ; 6 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv25.i ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !37
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv25.i
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !37
  %i.hg = xor i64 %i.hf, %i.hd
  store i64 %i.hg, ptr %i.hc, align 8, !tbaa !37
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next26.i ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !37
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next26.i
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !37
  %i.hl = xor i64 %i.hk, %i.hi
  store i64 %i.hl, ptr %i.hh, align 8, !tbaa !37
  %indvars.iv.next26.i.1 = add nuw nsw i64 %indvars.iv25.i, 2 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next26.i.1 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !37
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next26.i.1
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !37
  %i.hq = xor i64 %i.hp, %i.hn
  store i64 %i.hq, ptr %i.hm, align 8, !tbaa !37
  %indvars.iv.next26.i.2 = add nuw nsw i64 %indvars.iv25.i, 3 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next26.i.2 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !37
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next26.i.2
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !37
  %i.hv = xor i64 %i.hu, %i.hs
  store i64 %i.hv, ptr %i.hr, align 8, !tbaa !37
  %indvars.iv.next26.i.3 = add nuw nsw i64 %indvars.iv25.i, 4 ; 2 uses
  %exitcond29.not.i.3 = icmp eq i64 %indvars.iv.next26.i.3, %i.ca
  br i1 %exitcond29.not.i.3, label %Abc_TtXor.exit.loopexit, label %.lr.ph22.i, !llvm.loop !200

Abc_TtXor.exit.loopexit:                          ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %middle.block313
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %Abc_TtMux.exit, label %.lr.ph22.preheader.i, !llvm.loop !201

bb.e:                                             ; preds = %bb.b
  %i.hw = load i32, ptr %i.eo, align 4, !tbaa !31
  %i.hx = mul i32 %i.hw, %i.bv
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.hy ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !31
  %i.ic = mul i32 %i.ib, %i.bv
  %i.id = sext i32 %i.ic to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.id ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !31
  %i.ih = mul i32 %i.ig, %i.bv
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ii ; 4 uses
  br i1 %i.bz, label %.lr.ph.i123.preheader, label %Abc_TtMux.exit

.lr.ph.i123.preheader:                            ; preds = %bb.e
  br i1 %min.iters.check322, label %.lr.ph.i123.preheader423, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i123.preheader
  %i.ik = mul i64 %indvar, %i.cn
  %i.il = add i64 %i.cl, %i.ik                    ; 3 uses
  %i.im = shl nsw i64 %i.hy, 3
  %i.in = sub i64 %i.im, %i.il
  %diff.check324 = icmp ugt i64 %i.in, -32
  %i.io = shl nsw i64 %i.id, 3
  %i.ip = sub i64 %i.io, %i.il
  %diff.check325 = icmp ugt i64 %i.ip, -32
  %conflict.rdx = or i1 %diff.check324, %diff.check325
  %i.iq = shl nsw i64 %i.ii, 3
  %i.ir = sub i64 %i.iq, %i.il
  %diff.check326 = icmp ugt i64 %i.ir, -32
  %conflict.rdx327 = or i1 %conflict.rdx, %diff.check326
  br i1 %conflict.rdx327, label %.lr.ph.i123.preheader423, label %vector.body330

vector.body330:                                   ; preds = %vector.memcheck323, %vector.body330
  %index331 = phi i64 [ %index.next338, %vector.body330 ], [ 0, %vector.memcheck323 ] ; 5 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %index331 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load332 = load <2 x i64>, ptr %i.is, align 8, !tbaa !37 ; 2 uses
  %wide.load333 = load <2 x i64>, ptr %i.it, align 8, !tbaa !37 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %index331 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load334 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !37
  %wide.load335 = load <2 x i64>, ptr %i.iv, align 8, !tbaa !37
  %i.iw = and <2 x i64> %wide.load334, %wide.load332
  %i.ix = and <2 x i64> %wide.load335, %wide.load333
  %i.iy = xor <2 x i64> %wide.load332, splat (i64 -1)
  %i.iz = xor <2 x i64> %wide.load333, splat (i64 -1)
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %index331 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load336 = load <2 x i64>, ptr %i.ja, align 8, !tbaa !37
  %wide.load337 = load <2 x i64>, ptr %i.jb, align 8, !tbaa !37
  %i.jc = and <2 x i64> %wide.load336, %i.iy
  %i.jd = and <2 x i64> %wide.load337, %i.iz
  %i.je = or <2 x i64> %i.jc, %i.iw
  %i.jf = or <2 x i64> %i.jd, %i.ix
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index331 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <2 x i64> %i.je, ptr %i.jg, align 8, !tbaa !37
  store <2 x i64> %i.jf, ptr %i.jh, align 8, !tbaa !37
  %index.next338 = add nuw i64 %index331, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next338, %n.vec329
  br i1 %i.ji, label %middle.block339, label %vector.body330, !llvm.loop !202

middle.block339:                                  ; preds = %vector.body330
  br i1 %cmp.n340, label %Abc_TtMux.exit, label %.lr.ph.i123.preheader423

.lr.ph.i123.preheader423:                         ; preds = %vector.memcheck323, %.lr.ph.i123.preheader, %middle.block339
  %indvars.iv.i124.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %.lr.ph.i123.preheader ], [ %n.vec329, %middle.block339 ] ; 7 uses
  br i1 %lcmp.mod442.not, label %.lr.ph.i123.prol.loopexit, label %.lr.ph.i123.prol

.lr.ph.i123.prol:                                 ; preds = %.lr.ph.i123.preheader423
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i124.ph
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !37 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i124.ph
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !37
  %i.jn = and i64 %i.jm, %i.jk
  %i.jo = xor i64 %i.jk, -1
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i124.ph
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !37
  %i.jr = and i64 %i.jq, %i.jo
  %i.js = or i64 %i.jr, %i.jn
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i124.ph
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !37
  %indvars.iv.next.i125.prol = or disjoint i64 %indvars.iv.i124.ph, 1
  br label %.lr.ph.i123.prol.loopexit

.lr.ph.i123.prol.loopexit:                        ; preds = %.lr.ph.i123.prol, %.lr.ph.i123.preheader423
  %indvars.iv.i124.unr = phi i64 [ %indvars.iv.i124.ph, %.lr.ph.i123.preheader423 ], [ %indvars.iv.next.i125.prol, %.lr.ph.i123.prol ]
  %i.ju = icmp eq i64 %indvars.iv.i124.ph, %i.di
  br i1 %i.ju, label %Abc_TtMux.exit, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.prol.loopexit, %.lr.ph.i123
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i125.1, %.lr.ph.i123 ], [ %indvars.iv.i124.unr, %.lr.ph.i123.prol.loopexit ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i124
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !37 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i124
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !37
  %i.jz = and i64 %i.jy, %i.jw
  %i.ka = xor i64 %i.jw, -1
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i124
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !37
  %i.kd = and i64 %i.kc, %i.ka
  %i.ke = or i64 %i.kd, %i.jz
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i124
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !37
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i124, 1 ; 4 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.next.i125
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !37 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.next.i125
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !37
  %i.kk = and i64 %i.kj, %i.kh
  %i.kl = xor i64 %i.kh, -1
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next.i125
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !37
  %i.ko = and i64 %i.kn, %i.kl
  %i.kp = or i64 %i.ko, %i.kk
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i125
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !37
  %indvars.iv.next.i125.1 = add nuw nsw i64 %indvars.iv.i124, 2 ; 2 uses
  %exitcond.not.i126.1 = icmp eq i64 %indvars.iv.next.i125.1, %i.ca
  br i1 %exitcond.not.i126.1, label %Abc_TtMux.exit, label %.lr.ph.i123, !llvm.loop !203

bb.f:                                             ; preds = %bb.b
  %i.kr = shl nuw nsw i32 1, %i.en
  br i1 %i.bz, label %.lr.ph.preheader.i127, label %Abc_TtClear.exit128

.lr.ph.preheader.i127:                            ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 0, i64 %i.cb, i1 false), !tbaa !37
  br label %Abc_TtClear.exit128

Abc_TtClear.exit128:                              ; preds = %bb.f, %.lr.ph.preheader.i127
  %.not178 = icmp eq i32 %i.en, 31
  br i1 %.not178, label %Abc_TtMux.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %Abc_TtClear.exit128
  %.not179 = icmp eq i32 %i.en, 0
  %wide.trip.count202 = zext nneg i32 %i.en to i64
  %bound0353 = icmp ult ptr %i.eq, %scevgep348
  %bound1354 = icmp ult ptr %i.by, %scevgep349
  %found.conflict355 = and i1 %bound0353, %bound1354
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph165, %Abc_TtOr.exit
  %.1106163 = phi i32 [ 0, %.lr.ph165 ], [ %i.pe, %Abc_TtOr.exit ] ; 3 uses
  %i.ks = load i32, ptr %i.ek, align 8
  %i.kt = lshr i32 %i.ks, 8
  %i.ku = and i32 %i.kt, 255
  %i.kv = add nuw nsw i32 %i.ku, %.1106163
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !31
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %Abc_TtOr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.bz, label %.lr.ph.preheader.i129, label %Abc_TtFill.exit130

.lr.ph.preheader.i129:                            ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 -1, i64 %i.cb, i1 false), !tbaa !37
  br label %Abc_TtFill.exit130

Abc_TtFill.exit130:                               ; preds = %bb.h, %.lr.ph.preheader.i129
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtFill.exit130, %Abc_TtAnd.exit137
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %Abc_TtAnd.exit137 ], [ 0, %Abc_TtFill.exit130 ] ; 3 uses
  %i.la = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.lb = shl nuw i32 1, %i.la
  %i.lc = and i32 %i.lb, %.1106163
  %.not = icmp eq i32 %i.lc, 0
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv199
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !31
  %i.lf = mul i32 %i.le, %i.bv
  %i.lg = sext i32 %i.lf to i64                   ; 3 uses
  %i.lh = getelementptr [8 x i8], ptr %i.bt, i64 %i.lg ; 12 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.bz, label %.lr.ph.i133.preheader, label %Abc_TtAnd.exit137

.lr.ph.i133.preheader:                            ; preds = %bb.i
  br i1 %min.iters.check401, label %.lr.ph.i133.preheader419, label %vector.memcheck402

vector.memcheck402:                               ; preds = %.lr.ph.i133.preheader
  %i.li = shl nsw i64 %i.lg, 3
  %i.lj = getelementptr i8, ptr %i.dg, i64 %i.li
  %bound0403 = icmp ult ptr %i.by, %i.lj
  %bound1404 = icmp ult ptr %i.lh, %scevgep375
  %found.conflict405 = and i1 %bound0403, %bound1404
  br i1 %found.conflict405, label %.lr.ph.i133.preheader419, label %vector.body408

vector.body408:                                   ; preds = %vector.memcheck402, %vector.body408
  %index409 = phi i64 [ %index.next414, %vector.body408 ], [ 0, %vector.memcheck402 ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index409 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16 ; 2 uses
  %wide.load410 = load <2 x i64>, ptr %i.lk, align 8, !tbaa !37, !alias.scope !228, !noalias !229
  %wide.load411 = load <2 x i64>, ptr %i.ll, align 8, !tbaa !37, !alias.scope !228, !noalias !229
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index409 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load412 = load <2 x i64>, ptr %i.lm, align 8, !tbaa !37, !alias.scope !229
  %wide.load413 = load <2 x i64>, ptr %i.ln, align 8, !tbaa !37, !alias.scope !229
  %i.lo = and <2 x i64> %wide.load412, %wide.load410
  %i.lp = and <2 x i64> %wide.load413, %wide.load411
  store <2 x i64> %i.lo, ptr %i.lk, align 8, !tbaa !37, !alias.scope !228, !noalias !229
  store <2 x i64> %i.lp, ptr %i.ll, align 8, !tbaa !37, !alias.scope !228, !noalias !229
  %index.next414 = add nuw i64 %index409, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.lq, label %middle.block415, label %vector.body408, !llvm.loop !207

middle.block415:                                  ; preds = %vector.body408
  br i1 %cmp.n416, label %Abc_TtAnd.exit137, label %.lr.ph.i133.preheader419

.lr.ph.i133.preheader419:                         ; preds = %vector.memcheck402, %.lr.ph.i133.preheader, %middle.block415
  %indvars.iv.i134.ph = phi i64 [ 0, %vector.memcheck402 ], [ 0, %.lr.ph.i133.preheader ], [ %n.vec407, %middle.block415 ] ; 3 uses
  br i1 %lcmp.mod433.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol

.lr.ph.i133.prol:                                 ; preds = %.lr.ph.i133.preheader419, %.lr.ph.i133.prol
  %indvars.iv.i134.prol = phi i64 [ %indvars.iv.next.i135.prol, %.lr.ph.i133.prol ], [ %indvars.iv.i134.ph, %.lr.ph.i133.preheader419 ] ; 3 uses
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph.i133.prol ], [ 0, %.lr.ph.i133.preheader419 ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i134.prol ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !37
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i134.prol
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !37
  %i.lv = and i64 %i.lu, %i.ls
  store i64 %i.lv, ptr %i.lr, align 8, !tbaa !37
  %indvars.iv.next.i135.prol = add nuw nsw i64 %indvars.iv.i134.prol, 1 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph.i133.prol.loopexit, label %.lr.ph.i133.prol, !llvm.loop !208

.lr.ph.i133.prol.loopexit:                        ; preds = %.lr.ph.i133.prol, %.lr.ph.i133.preheader419
  %indvars.iv.i134.unr = phi i64 [ %indvars.iv.i134.ph, %.lr.ph.i133.preheader419 ], [ %indvars.iv.next.i135.prol, %.lr.ph.i133.prol ]
  %i.lw = sub nsw i64 %indvars.iv.i134.ph, %i.ca
  %i.lx = icmp ugt i64 %i.lw, -4
  br i1 %i.lx, label %Abc_TtAnd.exit137, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135.3, %.lr.ph.i133 ], [ %indvars.iv.i134.unr, %.lr.ph.i133.prol.loopexit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i134 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !37
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i134
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !37
  %i.mc = and i64 %i.mb, %i.lz
  store i64 %i.mc, ptr %i.ly, align 8, !tbaa !37
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i135 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !37
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i135
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !37
  %i.mh = and i64 %i.mg, %i.me
  store i64 %i.mh, ptr %i.md, align 8, !tbaa !37
  %indvars.iv.next.i135.1 = add nuw nsw i64 %indvars.iv.i134, 2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i135.1 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i135.1
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !37
  %i.mm = and i64 %i.ml, %i.mj
  store i64 %i.mm, ptr %i.mi, align 8, !tbaa !37
  %indvars.iv.next.i135.2 = add nuw nsw i64 %indvars.iv.i134, 3 ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i135.2 ; 2 uses
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !37
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i135.2
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !37
  %i.mr = and i64 %i.mq, %i.mo
  store i64 %i.mr, ptr %i.mn, align 8, !tbaa !37
  %indvars.iv.next.i135.3 = add nuw nsw i64 %indvars.iv.i134, 4 ; 2 uses
  %exitcond.not.i136.3 = icmp eq i64 %indvars.iv.next.i135.3, %i.ca
  br i1 %exitcond.not.i136.3, label %Abc_TtAnd.exit137, label %.lr.ph.i133, !llvm.loop !209

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.bz, label %.lr.ph.i140.preheader, label %Abc_TtAnd.exit137

.lr.ph.i140.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check377, label %.lr.ph.i140.preheader418, label %vector.memcheck378

vector.memcheck378:                               ; preds = %.lr.ph.i140.preheader
  %i.ms = shl nsw i64 %i.lg, 3
  %i.mt = getelementptr i8, ptr %3, i64 %i.ms
  %bound0379 = icmp ult ptr %i.by, %i.mt
  %bound1380 = icmp ult ptr %i.lh, %scevgep375
  %found.conflict381 = and i1 %bound0379, %bound1380
  br i1 %found.conflict381, label %.lr.ph.i140.preheader418, label %vector.body384

vector.body384:                                   ; preds = %vector.memcheck378, %vector.body384
  %index385 = phi i64 [ %index.next390, %vector.body384 ], [ 0, %vector.memcheck378 ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index385 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 2 uses
  %wide.load386 = load <2 x i64>, ptr %i.mu, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %wide.load387 = load <2 x i64>, ptr %i.mv, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index385 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load388 = load <2 x i64>, ptr %i.mw, align 8, !tbaa !37, !alias.scope !231
  %wide.load389 = load <2 x i64>, ptr %i.mx, align 8, !tbaa !37, !alias.scope !231
  %i.my = xor <2 x i64> %wide.load388, splat (i64 -1)
  %i.mz = xor <2 x i64> %wide.load389, splat (i64 -1)
  %i.na = and <2 x i64> %wide.load386, %i.my
  %i.nb = and <2 x i64> %wide.load387, %i.mz
  store <2 x i64> %i.na, ptr %i.mu, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  store <2 x i64> %i.nb, ptr %i.mv, align 8, !tbaa !37, !alias.scope !230, !noalias !231
  %index.next390 = add nuw i64 %index385, 4       ; 2 uses
  %i.nc = icmp eq i64 %index.next390, %n.vec383
  br i1 %i.nc, label %middle.block391, label %vector.body384, !llvm.loop !213

middle.block391:                                  ; preds = %vector.body384
  br i1 %cmp.n392, label %Abc_TtAnd.exit137, label %.lr.ph.i140.preheader418

.lr.ph.i140.preheader418:                         ; preds = %vector.memcheck378, %.lr.ph.i140.preheader, %middle.block391
  %indvars.iv.i141.ph = phi i64 [ 0, %vector.memcheck378 ], [ 0, %.lr.ph.i140.preheader ], [ %n.vec383, %middle.block391 ] ; 5 uses
  br i1 %lcmp.mod436.not, label %.lr.ph.i140.prol.loopexit, label %.lr.ph.i140.prol

.lr.ph.i140.prol:                                 ; preds = %.lr.ph.i140.preheader418
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i141.ph ; 2 uses
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !37
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i141.ph
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !37
  %i.nh = xor i64 %i.ng, -1
  %i.ni = and i64 %i.ne, %i.nh
  store i64 %i.ni, ptr %i.nd, align 8, !tbaa !37
  %indvars.iv.next.i142.prol = or disjoint i64 %indvars.iv.i141.ph, 1
  br label %.lr.ph.i140.prol.loopexit

.lr.ph.i140.prol.loopexit:                        ; preds = %.lr.ph.i140.prol, %.lr.ph.i140.preheader418
  %indvars.iv.i141.unr = phi i64 [ %indvars.iv.i141.ph, %.lr.ph.i140.preheader418 ], [ %indvars.iv.next.i142.prol, %.lr.ph.i140.prol ]
  %i.nj = icmp eq i64 %indvars.iv.i141.ph, %i.dh
  br i1 %i.nj, label %Abc_TtAnd.exit137, label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %.lr.ph.i140.prol.loopexit, %.lr.ph.i140
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i142.1, %.lr.ph.i140 ], [ %indvars.iv.i141.unr, %.lr.ph.i140.prol.loopexit ] ; 4 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i141 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !37
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.i141
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !37
  %i.no = xor i64 %i.nn, -1
  %i.np = and i64 %i.nl, %i.no
  store i64 %i.np, ptr %i.nk, align 8, !tbaa !37
  %indvars.iv.next.i142 = add nuw nsw i64 %indvars.iv.i141, 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i142 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !37
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv.next.i142
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !37
  %i.nu = xor i64 %i.nt, -1
  %i.nv = and i64 %i.nr, %i.nu
  store i64 %i.nv, ptr %i.nq, align 8, !tbaa !37
  %indvars.iv.next.i142.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %exitcond.not.i143.1 = icmp eq i64 %indvars.iv.next.i142.1, %i.ca
  br i1 %exitcond.not.i143.1, label %Abc_TtAnd.exit137, label %.lr.ph.i140, !llvm.loop !214

Abc_TtAnd.exit137:                                ; preds = %.lr.ph.i133.prol.loopexit, %.lr.ph.i133, %.lr.ph.i140.prol.loopexit, %.lr.ph.i140, %middle.block415, %middle.block391, %bb.j, %bb.i
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %Abc_TtAnd.exit137, %Abc_TtFill.exit130
  br i1 %i.bz, label %.lr.ph.i146.preheader, label %Abc_TtOr.exit

.lr.ph.i146.preheader:                            ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check351, i1 true, i1 %found.conflict355
  br i1 %brmerge, label %.lr.ph.i146.preheader421, label %vector.body358

vector.body358:                                   ; preds = %.lr.ph.i146.preheader, %vector.body358
  %index359 = phi i64 [ %index.next364, %vector.body358 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index359 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %wide.load360 = load <2 x i64>, ptr %i.nw, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %wide.load361 = load <2 x i64>, ptr %i.nx, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index359 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %wide.load362 = load <2 x i64>, ptr %i.ny, align 8, !tbaa !37, !alias.scope !233
  %wide.load363 = load <2 x i64>, ptr %i.nz, align 8, !tbaa !37, !alias.scope !233
  %i.oa = or <2 x i64> %wide.load362, %wide.load360
  %i.ob = or <2 x i64> %wide.load363, %wide.load361
  store <2 x i64> %i.oa, ptr %i.nw, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  store <2 x i64> %i.ob, ptr %i.nx, align 8, !tbaa !37, !alias.scope !232, !noalias !233
  %index.next364 = add nuw i64 %index359, 4       ; 2 uses
  %i.oc = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.oc, label %middle.block365, label %vector.body358, !llvm.loop !219

middle.block365:                                  ; preds = %vector.body358
  br i1 %cmp.n366, label %Abc_TtOr.exit, label %.lr.ph.i146.preheader421

.lr.ph.i146.preheader421:                         ; preds = %.lr.ph.i146.preheader, %middle.block365
  %indvars.iv.i147.ph = phi i64 [ %n.vec357, %middle.block365 ], [ 0, %.lr.ph.i146.preheader ] ; 3 uses
  br i1 %lcmp.mod439.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol

.lr.ph.i146.prol:                                 ; preds = %.lr.ph.i146.preheader421, %.lr.ph.i146.prol
  %indvars.iv.i147.prol = phi i64 [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ], [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader421 ] ; 3 uses
  %prol.iter440 = phi i64 [ %prol.iter440.next, %.lr.ph.i146.prol ], [ 0, %.lr.ph.i146.preheader421 ]
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i147.prol ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !37
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i147.prol
  %i.og = load i64, ptr %i.of, align 8, !tbaa !37
  %i.oh = or i64 %i.og, %i.oe
  store i64 %i.oh, ptr %i.od, align 8, !tbaa !37
  %indvars.iv.next.i148.prol = add nuw nsw i64 %indvars.iv.i147.prol, 1 ; 2 uses
  %prol.iter440.next = add i64 %prol.iter440, 1   ; 2 uses
  %prol.iter440.cmp.not = icmp eq i64 %prol.iter440.next, %xtraiter438
  br i1 %prol.iter440.cmp.not, label %.lr.ph.i146.prol.loopexit, label %.lr.ph.i146.prol, !llvm.loop !220

.lr.ph.i146.prol.loopexit:                        ; preds = %.lr.ph.i146.prol, %.lr.ph.i146.preheader421
  %indvars.iv.i147.unr = phi i64 [ %indvars.iv.i147.ph, %.lr.ph.i146.preheader421 ], [ %indvars.iv.next.i148.prol, %.lr.ph.i146.prol ]
  %i.oi = sub nsw i64 %indvars.iv.i147.ph, %i.ca
  %i.oj = icmp ugt i64 %i.oi, -4
  br i1 %i.oj, label %Abc_TtOr.exit, label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146
  %indvars.iv.i147 = phi i64 [ %indvars.iv.next.i148.3, %.lr.ph.i146 ], [ %indvars.iv.i147.unr, %.lr.ph.i146.prol.loopexit ] ; 6 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i147 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !37
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i147
  %i.on = load i64, ptr %i.om, align 8, !tbaa !37
  %i.oo = or i64 %i.on, %i.ol
  store i64 %i.oo, ptr %i.ok, align 8, !tbaa !37
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i148 ; 2 uses
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !37
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148
  %i.os = load i64, ptr %i.or, align 8, !tbaa !37
  %i.ot = or i64 %i.os, %i.oq
  store i64 %i.ot, ptr %i.op, align 8, !tbaa !37
  %indvars.iv.next.i148.1 = add nuw nsw i64 %indvars.iv.i147, 2 ; 2 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i148.1 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !37
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148.1
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !37
  %i.oy = or i64 %i.ox, %i.ov
  store i64 %i.oy, ptr %i.ou, align 8, !tbaa !37
  %indvars.iv.next.i148.2 = add nuw nsw i64 %indvars.iv.i147, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i148.2 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !37
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next.i148.2
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !37
  %i.pd = or i64 %i.pc, %i.pa
  store i64 %i.pd, ptr %i.oz, align 8, !tbaa !37
  %indvars.iv.next.i148.3 = add nuw nsw i64 %indvars.iv.i147, 4 ; 2 uses
  %exitcond.not.i149.3 = icmp eq i64 %indvars.iv.next.i148.3, %i.ca
  br i1 %exitcond.not.i149.3, label %Abc_TtOr.exit, label %.lr.ph.i146, !llvm.loop !221

Abc_TtOr.exit:                                    ; preds = %.lr.ph.i146.prol.loopexit, %.lr.ph.i146, %middle.block365, %._crit_edge, %bb.g
  %i.pe = add nuw nsw i32 %.1106163, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.pe, %i.kr
  br i1 %exitcond204.not, label %Abc_TtMux.exit, label %bb.g, !llvm.loop !222

Abc_TtMux.exit:                                   ; preds = %Abc_TtOr.exit, %.lr.ph.i123.prol.loopexit, %.lr.ph.i123, %Abc_TtXor.exit.loopexit, %Abc_TtAnd.exit.loopexit, %middle.block339, %bb.d, %bb.c, %Abc_TtClear.exit, %Abc_TtFill.exit, %Abc_TtClear.exit128, %bb.e, %bb.b
  %indvars.iv.next216 = add nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond219.not, label %._crit_edge172, label %bb.b, !llvm.loop !223

._crit_edge172:                                   ; preds = %Abc_TtMux.exit, %.preheader.._crit_edge172_crit_edge
  %i.pf = phi i32 [ %.pre, %.preheader.._crit_edge172_crit_edge ], [ %i.bv, %Abc_TtMux.exit ]
  %i.pg = add nsw i32 %i.bq, -1
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 8496
  %i.pi = mul nsw i32 %i.pf, %i.pg
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.pj
  ret ptr %i.pk
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Ifn_TtComparisonConstr(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = alloca [4 x i64], align 16               ; 11 uses
  %i.c = alloca [4 x i64], align 16               ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = shl nsw i32 %1, 1
  %i.e = icmp slt i32 %1, 4
  %i.f = add nsw i32 %i.d, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 12 uses
  %i.i = zext nneg i32 %i.h to i64                ; 23 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.j, i1 false), !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 -1, i64 %i.j, i1 false), !tbaa !37
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
