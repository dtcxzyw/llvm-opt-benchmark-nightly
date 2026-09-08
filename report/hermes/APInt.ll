Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvh5APInt6divideEPKmjS2_jPmS3_:bb.a
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = trunc nuw i64 %indvars.iv to i32
  %i.cr = shl i32 %i.cq, 1                        ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.cs
  store i32 %i.cp, ptr %i.ct, align 4, !tbaa !19
  %i.cu = lshr i64 %i.co, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = or disjoint i32 %i.cr, 1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.cx
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !24 ; 2 uses
  %i.db = trunc i64 %i.da to i32
  %i.dc = trunc nuw i64 %indvars.iv.next to i32
  %i.dd = shl i32 %i.dc, 1                        ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.de
  store i32 %i.db, ptr %i.df, align 4, !tbaa !19
  %i.dg = lshr i64 %i.da, 32
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = or disjoint i32 %i.dd, 1
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.dj
  store i32 %i.dh, ptr %i.dk, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !462

._crit_edge173:                                   ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172, %middle.block282, %._crit_edge
  %i.dl = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.0148, i8 0, i64 %i.dl, i1 false)
  br i1 %.not, label %bb.g, label %bb.h

.lr.ph172:                                        ; preds = %.lr.ph172.prol.loopexit, %.lr.ph172
  %indvars.iv209 = phi i64 [ %indvars.iv.next210.1, %.lr.ph172 ], [ %indvars.iv209.unr, %.lr.ph172.prol.loopexit ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv209
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !24 ; 2 uses
  %i.do = trunc i64 %i.dn to i32
  %i.dp = trunc nuw i64 %indvars.iv209 to i32
  %i.dq = shl i32 %i.dp, 1                        ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.dr
  store i32 %i.do, ptr %i.ds, align 4, !tbaa !19
  %i.dt = lshr i64 %i.dn, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = or disjoint i32 %i.dq, 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.dw
  store i32 %i.du, ptr %i.dx, align 4, !tbaa !19
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next210
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = trunc nuw i64 %indvars.iv.next210 to i32
  %i.ec = shl i32 %i.eb, 1                        ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.ed
  store i32 %i.ea, ptr %i.ee, align 4, !tbaa !19
  %i.ef = lshr i64 %i.dz, 32
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = or disjoint i32 %i.ec, 1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.ei
  store i32 %i.eg, ptr %i.ej, align 4, !tbaa !19
  %indvars.iv.next210.1 = add nuw nsw i64 %indvars.iv209, 2 ; 2 uses
  %exitcond213.not.1 = icmp eq i64 %indvars.iv.next210.1, %wide.trip.count212
  br i1 %exitcond213.not.1, label %._crit_edge173, label %.lr.ph172, !llvm.loop !463

bb.g:                                             ; preds = %._crit_edge173
  call void @llvm.memset.p0.i64(ptr align 4 %.0147, i8 0, i64 %i.bj, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge173
  %.not157174 = icmp eq i32 %i.b, 0
  br i1 %.not157174, label %.critedge, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.h, %bb.i
  %indvars.iv214 = phi i64 [ %i.ek, %bb.i ], [ %i.bi, %bb.h ] ; 2 uses
  %.0144175 = phi i32 [ %i.er, %bb.i ], [ %i.d, %bb.h ] ; 2 uses
  %i.ek = add nsw i64 %indvars.iv214, -1          ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !19
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.i, label %.critedge.loopexit.split.loop.exit257

.critedge.loopexit.split.loop.exit257:            ; preds = %.lr.ph179
  %indvars218.le = trunc i64 %indvars.iv214 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.loopexit.split.loop.exit257, %bb.h
  %.0144.lcssa = phi i32 [ %i.d, %bb.h ], [ %.0144175, %.critedge.loopexit.split.loop.exit257 ], [ %i.c, %bb.i ] ; 3 uses
  %.0142.lcssa = phi i32 [ 0, %bb.h ], [ %indvars218.le, %.critedge.loopexit.split.loop.exit257 ], [ 0, %bb.i ] ; 12 uses
  %i.eo = add i32 %.0142.lcssa, %.0144.lcssa      ; 2 uses
  %.not158184 = icmp eq i32 %i.eo, 0
  br i1 %.not158184, label %.critedge2, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %.critedge
  %i.ep = zext i32 %i.eo to i64
  %i.eq = sub i32 0, %.0142.lcssa
  br label %.lr.ph187

bb.i:                                             ; preds = %.lr.ph179
  %i.er = add i32 %.0144175, 1
  %.not157.wide = icmp eq i64 %i.ek, 0
  br i1 %.not157.wide, label %.critedge, label %.lr.ph179, !llvm.loop !464

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %bb.j
  %indvars.iv219 = phi i64 [ %i.ep, %.lr.ph187.preheader ], [ %i.es, %bb.j ]
  %.1145185 = phi i32 [ %.0144.lcssa, %.lr.ph187.preheader ], [ %i.ex, %bb.j ] ; 2 uses
  %i.es = add nsw i64 %indvars.iv219, -1          ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !19
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.j, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph187, %bb.j, %.critedge
  %.1145.lcssa = phi i32 [ %.0144.lcssa, %.critedge ], [ %i.eq, %bb.j ], [ %.1145185, %.lr.ph187 ] ; 4 uses
  %i.ew = icmp eq i32 %.0142.lcssa, 1
  br i1 %i.ew, label %bb.k, label %bb.u

bb.j:                                             ; preds = %.lr.ph187
  %i.ex = add i32 %.1145185, -1
  %.not158.wide = icmp eq i64 %i.es, 0
  br i1 %.not158.wide, label %.critedge2, label %.lr.ph187, !llvm.loop !465

bb.k:                                             ; preds = %.critedge2
  %i.ey = load i32, ptr %.0149, align 4, !tbaa !19 ; 2 uses
  %i.ez = icmp sgt i32 %.1145.lcssa, -1
  br i1 %i.ez, label %.lr.ph194, label %._crit_edge195

.lr.ph194:                                        ; preds = %bb.k
  %i.fa = zext i32 %i.ey to i64                   ; 3 uses
  %i.fb = zext nneg i32 %.1145.lcssa to i64
  br label %bb.l

._crit_edge195:                                   ; preds = %bb.s, %bb.k
  %.0139.lcssa = phi i32 [ 0, %bb.k ], [ %.1, %bb.s ]
  %.not159 = icmp eq ptr %.0147, null
  br i1 %.not159, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %bb.t

bb.l:                                             ; preds = %.lr.ph194, %bb.s
  %indvars.iv222 = phi i64 [ %i.fb, %.lr.ph194 ], [ %indvars.iv.next223, %bb.s ] ; 7 uses
  %.0139191 = phi i32 [ 0, %.lr.ph194 ], [ %.1, %bb.s ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv222
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !19 ; 3 uses
  %i.fe = zext i32 %.0139191 to i64
  %i.ff = shl nuw i64 %i.fe, 32
  %i.fg = zext i32 %i.fd to i64
  %i.fh = or disjoint i64 %i.ff, %i.fg            ; 4 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %indvars.iv222
  store i32 0, ptr %i.fj, align 4, !tbaa !19
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.fk = icmp ult i64 %i.fh, %i.fa
  br i1 %i.fk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %indvars.iv222
  store i32 0, ptr %i.fl, align 4, !tbaa !19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.fm = icmp eq i64 %i.fh, %i.fa
  br i1 %i.fm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %indvars.iv222
  store i32 1, ptr %i.fn, align 4, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fo = udiv i64 %i.fh, %i.fa
  %i.fp = trunc i64 %i.fo to i32                  ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %indvars.iv222
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !19
  %i.fr = mul i32 %i.ey, %i.fp
  %i.fs = sub i32 %i.fd, %i.fr
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.m
  %.1 = phi i32 [ 0, %bb.m ], [ %i.fd, %bb.o ], [ 0, %bb.q ], [ %i.fs, %bb.r ] ; 2 uses
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, -1
  %i.ft = icmp sgt i64 %indvars.iv222, 0
  br i1 %i.ft, label %bb.l, label %._crit_edge195, !llvm.loop !466

bb.t:                                             ; preds = %._crit_edge195
  store i32 %.0139.lcssa, ptr %.0147, align 4, !tbaa !19
  br label %_ZL8KnuthDivPjS_S_S_jj.exit

bb.u:                                             ; preds = %.critedge2
  %i.fu = add i32 %.0142.lcssa, -1                ; 3 uses
  %i.fv = zext i32 %i.fu to i64                   ; 8 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !19
  %i.fy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fx, i1 false) ; 11 uses
  %.not.i = icmp eq i32 %i.fy, 0                  ; 2 uses
  %.pre230.i = add i32 %.1145.lcssa, %.0142.lcssa ; 4 uses
  br i1 %.not.i, label %.loopexit176.i, label %.preheader177.i

.preheader177.i:                                  ; preds = %bb.u
  %.not198.i = icmp eq i32 %.pre230.i, 0
  br i1 %.not198.i, label %.preheader175.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader177.i
  %i.fz = sub nuw nsw i32 32, %i.fy               ; 2 uses
  %wide.trip.count.i = zext i32 %.pre230.i to i64 ; 3 uses
  %min.iters.check286 = icmp ult i32 %.pre230.i, 8
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.lr.ph.i
  %n.vec288 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %broadcast.splat290 = shufflevector <4 x i32> %broadcast.splatinsert289, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph287
  %index292 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body291 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph287 ], [ %i.gd, %vector.body291 ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %index292 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %wide.load293 = load <4 x i32>, ptr %i.ga, align 4, !tbaa !19 ; 2 uses
  %wide.load294 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !19 ; 2 uses
  %i.gc = lshr <4 x i32> %wide.load293, %broadcast.splat ; 2 uses
  %i.gd = lshr <4 x i32> %wide.load294, %broadcast.splat ; 3 uses
  %i.ge = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.gc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gf = shufflevector <4 x i32> %i.gc, <4 x i32> %i.gd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gg = shl <4 x i32> %wide.load293, %broadcast.splat290
  %i.gh = shl <4 x i32> %wide.load294, %broadcast.splat290
  %i.gi = or <4 x i32> %i.gg, %i.ge
  %i.gj = or <4 x i32> %i.gh, %i.gf
  store <4 x i32> %i.gi, ptr %i.ga, align 4, !tbaa !19
  store <4 x i32> %i.gj, ptr %i.gb, align 4, !tbaa !19
  %index.next295 = add nuw i64 %index292, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.gk, label %middle.block296, label %vector.body291, !llvm.loop !467

middle.block296:                                  ; preds = %vector.body291
  %vector.recur.extract = extractelement <4 x i32> %i.gd, i64 3 ; 2 uses
  %cmp.n297 = icmp eq i64 %n.vec288, %wide.trip.count.i
  br i1 %cmp.n297, label %.preheader175.i, label %scalar.ph285.preheader

scalar.ph285.preheader:                           ; preds = %.lr.ph.i, %middle.block296
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec288, %middle.block296 ]
  %.0158179.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block296 ]
  br label %scalar.ph285

.preheader175.i:                                  ; preds = %scalar.ph285, %middle.block296, %.preheader177.i
  %.0158.lcssa.i = phi i32 [ 0, %.preheader177.i ], [ %vector.recur.extract, %middle.block296 ], [ %i.gz, %scalar.ph285 ] ; 3 uses
  %.not199.i = icmp eq i32 %.0142.lcssa, 0
  br i1 %.not199.i, label %.loopexit176.i, label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.preheader175.i
  %i.gl = sub nuw nsw i32 32, %i.fy               ; 2 uses
  %wide.trip.count209.i = zext i32 %.0142.lcssa to i64 ; 3 uses
  %min.iters.check300 = icmp ult i32 %.0142.lcssa, 8
  br i1 %min.iters.check300, label %scalar.ph299.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph182.i
  %n.vec302 = and i64 %wide.trip.count209.i, 4294967288 ; 3 uses
  %broadcast.splatinsert303 = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %broadcast.splat304 = shufflevector <4 x i32> %broadcast.splatinsert303, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert305 = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %broadcast.splat306 = shufflevector <4 x i32> %broadcast.splatinsert305, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph301
  %index308 = phi i64 [ 0, %vector.ph301 ], [ %index.next312, %vector.body307 ] ; 2 uses
  %vector.recur309 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph301 ], [ %i.gp, %vector.body307 ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %index308 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %wide.load310 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !19 ; 2 uses
  %wide.load311 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !19 ; 2 uses
  %i.go = lshr <4 x i32> %wide.load310, %broadcast.splat304 ; 2 uses
  %i.gp = lshr <4 x i32> %wide.load311, %broadcast.splat304 ; 3 uses
  %i.gq = shufflevector <4 x i32> %vector.recur309, <4 x i32> %i.go, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gr = shufflevector <4 x i32> %i.go, <4 x i32> %i.gp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gs = shl <4 x i32> %wide.load310, %broadcast.splat306
  %i.gt = shl <4 x i32> %wide.load311, %broadcast.splat306
  %i.gu = or <4 x i32> %i.gs, %i.gq
  %i.gv = or <4 x i32> %i.gt, %i.gr
  store <4 x i32> %i.gu, ptr %i.gm, align 4, !tbaa !19
  store <4 x i32> %i.gv, ptr %i.gn, align 4, !tbaa !19
  %index.next312 = add nuw i64 %index308, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next312, %n.vec302
  br i1 %i.gw, label %middle.block313, label %vector.body307, !llvm.loop !468

middle.block313:                                  ; preds = %vector.body307
  %vector.recur.extract314 = extractelement <4 x i32> %i.gp, i64 3
  %cmp.n315 = icmp eq i64 %n.vec302, %wide.trip.count209.i
  br i1 %cmp.n315, label %.loopexit176.i, label %scalar.ph299.preheader

scalar.ph299.preheader:                           ; preds = %.lr.ph182.i, %middle.block313
  %indvars.iv206.i.ph = phi i64 [ 0, %.lr.ph182.i ], [ %n.vec302, %middle.block313 ]
  %.0156181.i.ph = phi i32 [ 0, %.lr.ph182.i ], [ %vector.recur.extract314, %middle.block313 ]
  br label %scalar.ph299

scalar.ph285:                                     ; preds = %scalar.ph285.preheader, %scalar.ph285
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph285 ], [ %indvars.iv.i.ph, %scalar.ph285.preheader ] ; 2 uses
  %.0158179.i = phi i32 [ %i.gz, %scalar.ph285 ], [ %.0158179.i.ph, %scalar.ph285.preheader ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.i ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !19 ; 2 uses
  %i.gz = lshr i32 %i.gy, %i.fz                   ; 2 uses
  %i.ha = shl i32 %i.gy, %i.fy
  %i.hb = or i32 %i.ha, %.0158179.i
  store i32 %i.hb, ptr %i.gx, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader175.i, label %scalar.ph285, !llvm.loop !469

scalar.ph299:                                     ; preds = %scalar.ph299.preheader, %scalar.ph299
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph299 ], [ %indvars.iv206.i.ph, %scalar.ph299.preheader ] ; 2 uses
  %.0156181.i = phi i32 [ %i.he, %scalar.ph299 ], [ %.0156181.i.ph, %scalar.ph299.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv206.i ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !19 ; 2 uses
  %i.he = lshr i32 %i.hd, %i.gl
  %i.hf = shl i32 %i.hd, %i.fy
  %i.hg = or i32 %i.hf, %.0156181.i
  store i32 %i.hg, ptr %i.hc, align 4, !tbaa !19
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count209.i
  br i1 %exitcond210.not.i, label %.loopexit176.i, label %scalar.ph299, !llvm.loop !470

.loopexit176.i:                                   ; preds = %scalar.ph299, %middle.block313, %.preheader175.i, %bb.u
  %.1.i = phi i32 [ 0, %bb.u ], [ %.0158.lcssa.i, %.preheader175.i ], [ %.0158.lcssa.i, %middle.block313 ], [ %.0158.lcssa.i, %scalar.ph299 ]
  %i.hh = zext i32 %.pre230.i to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.hh
  store i32 %.1.i, ptr %i.hi, align 4, !tbaa !19
  %.not200.i = icmp eq i32 %.0142.lcssa, 0
  %i.hj = add i32 %.0142.lcssa, -2
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.hk ; 2 uses
  %i.hm = sext i32 %.1145.lcssa to i64
  %wide.trip.count214.i = zext i32 %.0142.lcssa to i64 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ae, %.loopexit176.i
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i, %bb.ae ], [ %i.hm, %.loopexit176.i ] ; 7 uses
  %i.hn = trunc nsw i64 %indvars.iv220.i to i32
  %i.ho = add i32 %.0142.lcssa, %i.hn             ; 4 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.hp ; 5 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !19
  %i.hs = add i32 %i.ho, -1
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !19
  %i.hw = zext i32 %i.hr to i64
  %i.hx = shl nuw i64 %i.hw, 32
  %i.hy = zext i32 %i.hv to i64
  %i.hz = or disjoint i64 %i.hx, %i.hy            ; 2 uses
  %i.ia = load i32, ptr %i.fw, align 4, !tbaa !19
  %i.ib = zext i32 %i.ia to i64                   ; 3 uses
  %i.ic = udiv i64 %i.hz, %i.ib                   ; 5 uses
  %i.id = urem i64 %i.hz, %i.ib                   ; 2 uses
  %i.ie = icmp eq i64 %i.ic, 4294967296
  br i1 %i.ie, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = load i32, ptr %i.hl, align 4, !tbaa !19
  %i.ig = zext i32 %i.if to i64
  %i.ih = mul i64 %i.ic, %i.ig
  %i.ii = shl nuw i64 %i.id, 32
  %i.ij = add i32 %i.ho, -2
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !19
  %i.in = zext i32 %i.im to i64
  %i.io = or disjoint i64 %i.ii, %i.in
  %i.ip = icmp ugt i64 %i.ih, %i.io
  br i1 %i.ip, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.iq = add i64 %i.ic, -1                       ; 4 uses
  %i.ir = add nuw nsw i64 %i.id, %i.ib            ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 4294967296
  br i1 %i.is, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.it = icmp eq i64 %i.iq, 4294967296
  br i1 %i.it, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iu = load i32, ptr %i.hl, align 4, !tbaa !19
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul i64 %i.iq, %i.iv
  %i.ix = shl nuw i64 %i.ir, 32
  %i.iy = add i32 %i.ho, -2
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !19
  %i.jc = zext i32 %i.jb to i64
  %i.jd = or disjoint i64 %i.ix, %i.jc
  %i.je = icmp ugt i64 %i.iw, %i.jd
  br i1 %i.je, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.jf = add i64 %i.ic, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.0154.i = phi i64 [ %i.jf, %bb.aa ], [ %i.iq, %bb.z ], [ %i.iq, %bb.x ], [ %i.ic, %bb.w ] ; 3 uses
  br i1 %.not200.i, label %._crit_edge.thread.i, label %.lr.ph185.i

._crit_edge.thread.i:                             ; preds = %bb.ab
  %i.jg = trunc i64 %.0154.i to i32
  %i.jh = getelementptr inbounds [4 x i8], ptr %.0148, i64 %indvars.iv220.i
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !19
  br label %bb.ae

._crit_edge.i:                                    ; preds = %.lr.ph185.i
  %.pre.i = load i32, ptr %i.hq, align 4, !tbaa !19 ; 2 uses
  %.pre229.i = zext i32 %.pre.i to i64
  %i.ji = icmp samesign ugt i64 %i.kd, %.pre229.i
  %i.jj = trunc i64 %i.kc to i32
  %i.jk = sub i32 %.pre.i, %i.jj
  store i32 %i.jk, ptr %i.hq, align 4, !tbaa !19
  %i.jl = trunc i64 %.0154.i to i32               ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %.0148, i64 %indvars.iv220.i ; 2 uses
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !19
  br i1 %i.ji, label %.lr.ph190.preheader.i, label %bb.ae

.lr.ph185.i:                                      ; preds = %bb.ab, %.lr.ph185.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %.lr.ph185.i ], [ 0, %bb.ab ] ; 3 uses
  %.0153183.i = phi i64 [ %i.kd, %.lr.ph185.i ], [ 0, %bb.ab ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv211.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !19
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul i64 %.0154.i, %i.jp                 ; 2 uses
  %i.jr = add nsw i64 %indvars.iv211.i, %indvars.iv220.i
  %i.js = and i64 %i.jr, 4294967295
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !19
  %i.jv = zext i32 %i.ju to i64
  %i.jw = and i64 %i.jq, 4294967295
  %i.jx = add nuw nsw i64 %.0153183.i, %i.jw
  %i.jy = sub nsw i64 %i.jv, %i.jx                ; 2 uses
  %i.jz = trunc i64 %i.jy to i32
  store i32 %i.jz, ptr %i.jt, align 4, !tbaa !19
  %i.ka = lshr i64 %i.jq, 32
  %i.kb = lshr i64 %i.jy, 32
  %i.kc = sub nsw i64 %i.ka, %i.kb                ; 2 uses
  %i.kd = and i64 %i.kc, 4294967295               ; 2 uses
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %._crit_edge.i, label %.lr.ph185.i, !llvm.loop !471

.lr.ph190.preheader.i:                            ; preds = %._crit_edge.i
  %i.ke = add i32 %i.jl, -1
  store i32 %i.ke, ptr %i.jm, align 4, !tbaa !19
  br label %.lr.ph190.i

._crit_edge191.i:                                 ; preds = %bb.ad
  %i.kf = zext i1 %i.ku to i32
  %i.kg = load i32, ptr %i.hq, align 4, !tbaa !19
  %i.kh = add i32 %i.kg, %i.kf
  store i32 %i.kh, ptr %i.hq, align 4, !tbaa !19
  br label %bb.ae

.lr.ph190.i:                                      ; preds = %bb.ad, %.lr.ph190.preheader.i
  %indvars.iv216.i = phi i64 [ 0, %.lr.ph190.preheader.i ], [ %indvars.iv.next217.i, %bb.ad ] ; 3 uses
  %.0151187.i = phi i1 [ false, %.lr.ph190.preheader.i ], [ %i.ku, %bb.ad ] ; 2 uses
  %i.ki = add nsw i64 %indvars.iv216.i, %indvars.iv220.i
  %i.kj = and i64 %i.ki, 4294967295
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv216.i
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !19 ; 2 uses
  %i.kn = load i32, ptr %i.kk, align 4, !tbaa !19 ; 2 uses
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.km, i32 %i.kn) ; 2 uses
  %i.kp = zext i1 %.0151187.i to i32
  %i.kq = add i32 %i.km, %i.kp
  %i.kr = add i32 %i.kq, %i.kn                    ; 3 uses
  store i32 %i.kr, ptr %i.kk, align 4, !tbaa !19
  %i.ks = icmp ult i32 %i.kr, %i.ko
  br i1 %i.ks, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph190.i
  %i.kt = icmp eq i32 %i.kr, %i.ko
  %spec.select.i = and i1 %.0151187.i, %i.kt
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph190.i
  %i.ku = phi i1 [ true, %.lr.ph190.i ], [ %spec.select.i, %bb.ac ] ; 2 uses
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next217.i, %wide.trip.count214.i
  br i1 %exitcond219.not.i, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !472

bb.ae:                                            ; preds = %._crit_edge191.i, %._crit_edge.i, %._crit_edge.thread.i
  %indvars.iv.next221.i = add nsw i64 %indvars.iv220.i, -1
  %i.kv = icmp sgt i64 %indvars.iv220.i, 0
  br i1 %i.kv, label %bb.v, label %bb.af, !llvm.loop !473

bb.af:                                            ; preds = %bb.ae
  %.not170.i = icmp eq ptr %.0147, null
  br i1 %.not170.i, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kw = icmp sgt i32 %i.fu, -1                  ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader173.i

.preheader173.i:                                  ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph195.i, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph195.i:                                      ; preds = %.preheader173.i
  %i.kx = sub nuw nsw i32 32, %i.fy               ; 2 uses
  %i.ky = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %unroll_iter = and i64 %i.ky, 4294967294
  br label %bb.ah

.preheader.i:                                     ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph197.i.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph197.i.preheader:                            ; preds = %.preheader.i
  %i.kz = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check321 = icmp ult i32 %i.fu, 7
  %i.la = sub i64 %.0147319, %.0150318
  %diff.check = icmp ugt i64 %i.la, -32
  %or.cond374 = select i1 %min.iters.check321, i1 true, i1 %diff.check
  br i1 %or.cond374, label %.lr.ph197.i.preheader379, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph197.i.preheader
  %n.vec323 = and i64 %i.kz, 4294967288           ; 3 uses
  %i.lb = sub nsw i64 %i.fv, %n.vec323
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %i.lc = sub i64 %i.fv, %index325                ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -12
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -28
  %wide.load326 = load <4 x i32>, ptr %i.le, align 4, !tbaa !19
  %wide.load327 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !19
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.lc ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -12
  %i.li = getelementptr inbounds i8, ptr %i.lg, i64 -28
  store <4 x i32> %wide.load326, ptr %i.lh, align 4, !tbaa !19
  store <4 x i32> %wide.load327, ptr %i.li, align 4, !tbaa !19
  %index.next328 = add nuw i64 %index325, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next328, %n.vec323
  br i1 %i.lj, label %middle.block329, label %vector.body324, !llvm.loop !474

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.kz, %n.vec323
  br i1 %cmp.n330, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i.preheader379

.lr.ph197.i.preheader379:                         ; preds = %.lr.ph197.i.preheader, %middle.block329
  %indvars.iv226.i.ph = phi i64 [ %i.fv, %.lr.ph197.i.preheader ], [ %i.lb, %middle.block329 ] ; 4 uses
  %i.lk = add nsw i64 %indvars.iv226.i.ph, 1
  %xtraiter395 = and i64 %i.lk, 3                 ; 2 uses
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol

.lr.ph197.i.prol:                                 ; preds = %.lr.ph197.i.preheader379, %.lr.ph197.i.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ], [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader379 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph197.i.prol ], [ 0, %.lr.ph197.i.preheader379 ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv226.i.prol
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !19
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv226.i.prol
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !19
  %indvars.iv.next227.i.prol = add nsw i64 %indvars.iv226.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter395
  br i1 %prol.iter.cmp.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol, !llvm.loop !475

.lr.ph197.i.prol.loopexit:                        ; preds = %.lr.ph197.i.prol, %.lr.ph197.i.preheader379
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader379 ], [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ]
  %i.lo = icmp ult i64 %indvars.iv226.i.ph, 3
  br i1 %i.lo, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i

bb.ah:                                            ; preds = %bb.ah, %.lr.ph195.i
  %indvars.iv223.i = phi i64 [ %i.fv, %.lr.ph195.i ], [ %indvars.iv.next224.i.1, %bb.ah ] ; 4 uses
  %.0149193.i = phi i32 [ 0, %.lr.ph195.i ], [ %i.ma, %bb.ah ]
  %niter = phi i64 [ 0, %.lr.ph195.i ], [ %niter.next.1, %bb.ah ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv223.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !19 ; 2 uses
  %i.lr = lshr i32 %i.lq, %i.fy
  %i.ls = or i32 %i.lr, %.0149193.i
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv223.i
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !19
  %i.lu = shl i32 %i.lq, %i.kx
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.next224.i
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !19 ; 2 uses
  %i.lx = lshr i32 %i.lw, %i.fy
  %i.ly = or disjoint i32 %i.lx, %i.lu
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv.next224.i
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !19
  %i.ma = shl i32 %i.lw, %i.kx                    ; 2 uses
  %indvars.iv.next224.i.1 = add nsw i64 %indvars.iv223.i, -2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit380.unr-lcssa, label %bb.ah, !llvm.loop !476

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %.lr.ph197.i ], [ %indvars.iv226.i.unr, %.lr.ph197.i.prol.loopexit ] ; 6 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv226.i
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !19
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv226.i
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !19
  %indvars.iv.next227.i = add nsw i64 %indvars.iv226.i, -1 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.next227.i
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !19
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv.next227.i
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !19
  %indvars.iv.next227.i.1 = add nsw i64 %indvars.iv226.i, -2 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.next227.i.1
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !19
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv.next227.i.1
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !19
  %indvars.iv.next227.i.2 = add nsw i64 %indvars.iv226.i, -3 ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.next227.i.2
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !19
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv.next227.i.2
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !19
  %indvars.iv.next227.i.3 = add nsw i64 %indvars.iv226.i, -4
  %.not249.i.3 = icmp eq i64 %indvars.iv.next227.i.2, 0
  br i1 %.not249.i.3, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i, !llvm.loop !477

_ZL8KnuthDivPjS_S_S_jj.exit.loopexit380.unr-lcssa: ; preds = %bb.ah
  %i.mn = and i64 %i.fv, 1
  %lcmp.mod393.not.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod393.not.not, label %.epil.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.epil.preheader:                                  ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit380.unr-lcssa
  %lcmp.mod394 = trunc i64 %i.ky to i1
  call void @llvm.assume(i1 %lcmp.mod394)
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %indvars.iv.next224.i.1
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !19
  %i.mq = lshr i32 %i.mp, %i.fy
  %i.mr = or i32 %i.mq, %i.ma
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv.next224.i.1
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !19
  br label %_ZL8KnuthDivPjS_S_S_jj.exit

_ZL8KnuthDivPjS_S_S_jj.exit:                      ; preds = %.epil.preheader, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit380.unr-lcssa, %.lr.ph197.i.prol.loopexit, %.lr.ph197.i, %middle.block329, %.preheader.i, %.preheader173.i, %bb.af, %._crit_edge195, %bb.t
  %.not160 = icmp ne ptr %4, null
  %i.mt = icmp ne i32 %1, 0
  %or.cond = and i1 %.not160, %i.mt
  br i1 %or.cond, label %.lr.ph198.preheader, label %.loopexit164

.lr.ph198.preheader:                              ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit
  %wide.trip.count228 = zext i32 %1 to i64        ; 5 uses
  %i.mu = add i32 %1, -10
  %or.cond375 = icmp ult i32 %i.mu, 2147483639
  br i1 %or.cond375, label %vector.ph337, label %.lr.ph198.preheader378

vector.ph337:                                     ; preds = %.lr.ph198.preheader
  %n.vec338 = and i64 %wide.trip.count228, 4294967292 ; 3 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next345, %vector.body339 ] ; 4 uses
  %i.mv = shl i64 %index340, 1
  %i.mw = shl i64 %index340, 1
  %i.mx = and i64 %i.mv, 4294967288
  %i.my = and i64 %i.mw, 4294967288
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.mx
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.my
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %wide.vec = load <4 x i32>, ptr %i.mz, align 4, !tbaa !19
  %i.nc = freeze <4 x i32> %wide.vec
  %wide.vec342 = load <4 x i32>, ptr %i.nb, align 4, !tbaa !19
  %i.nd = freeze <4 x i32> %wide.vec342
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index340 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <4 x i32> %i.nc, ptr %i.ne, align 8, !tbaa !24
  store <4 x i32> %i.nd, ptr %i.nf, align 8, !tbaa !24
  %index.next345 = add nuw i64 %index340, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next345, %n.vec338
  br i1 %i.ng, label %middle.block346, label %vector.body339, !llvm.loop !478

middle.block346:                                  ; preds = %vector.body339
  %cmp.n347 = icmp eq i64 %n.vec338, %wide.trip.count228
  br i1 %cmp.n347, label %.loopexit164, label %.lr.ph198.preheader378

.lr.ph198.preheader378:                           ; preds = %.lr.ph198.preheader, %middle.block346
  %indvars.iv225.ph = phi i64 [ 0, %.lr.ph198.preheader ], [ %n.vec338, %middle.block346 ] ; 5 uses
  %xtraiter397 = and i64 %wide.trip.count228, 1
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader378
  %i.nh = trunc nuw i64 %indvars.iv225.ph to i32
  %i.ni = shl i32 %i.nh, 1                        ; 2 uses
  %i.nj = or disjoint i32 %i.ni, 1
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !19
  %i.nn = zext i32 %i.ni to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !19
  %i.nq = zext i32 %i.nm to i64
  %i.nr = shl nuw i64 %i.nq, 32
  %i.ns = zext i32 %i.np to i64
  %i.nt = or disjoint i64 %i.nr, %i.ns
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225.ph
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !24
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader378
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.lr.ph198.preheader378 ], [ %indvars.iv.next226.prol, %.lr.ph198.prol ]
  %i.nv = add nsw i64 %wide.trip.count228, -1
  %i.nw = icmp eq i64 %indvars.iv225.ph, %i.nv
  br i1 %i.nw, label %.loopexit164, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.lr.ph198 ], [ %indvars.iv225.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %i.nx = trunc nuw i64 %indvars.iv225 to i32
  %i.ny = shl i32 %i.nx, 1                        ; 2 uses
  %i.nz = or disjoint i32 %i.ny, 1
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !19
  %i.od = zext i32 %i.ny to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !19
  %i.og = zext i32 %i.oc to i64
  %i.oh = shl nuw i64 %i.og, 32
  %i.oi = zext i32 %i.of to i64
  %i.oj = or disjoint i64 %i.oh, %i.oi
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !24
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.ol = trunc nuw i64 %indvars.iv.next226 to i32
  %i.om = shl i32 %i.ol, 1                        ; 2 uses
  %i.on = or disjoint i32 %i.om, 1
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !19
  %i.or = zext i32 %i.om to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.0148, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !19
  %i.ou = zext i32 %i.oq to i64
  %i.ov = shl nuw i64 %i.ou, 32
  %i.ow = zext i32 %i.ot to i64
  %i.ox = or disjoint i64 %i.ov, %i.ow
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next226
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !24
  %indvars.iv.next226.1 = add nuw nsw i64 %indvars.iv225, 2 ; 2 uses
  %exitcond229.not.1 = icmp eq i64 %indvars.iv.next226.1, %wide.trip.count228
  br i1 %exitcond229.not.1, label %.loopexit164, label %.lr.ph198, !llvm.loop !479

.loopexit164:                                     ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198, %middle.block346, %_ZL8KnuthDivPjS_S_S_jj.exit
  %i.oz = icmp ne i32 %3, 0
  %or.cond201 = and i1 %.not, %i.oz
  br i1 %or.cond201, label %.lr.ph200.preheader, label %.loopexit

.lr.ph200.preheader:                              ; preds = %.loopexit164
  %wide.trip.count233 = zext i32 %3 to i64        ; 5 uses
  %i.pa = add i32 %3, -10
  %or.cond376 = icmp ult i32 %i.pa, 2147483639
  br i1 %or.cond376, label %vector.ph354, label %.lr.ph200.preheader377

vector.ph354:                                     ; preds = %.lr.ph200.preheader
  %n.vec355 = and i64 %wide.trip.count233, 4294967292 ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next364, %vector.body356 ] ; 4 uses
  %i.pb = shl i64 %index357, 1
  %i.pc = shl i64 %index357, 1
  %i.pd = and i64 %i.pb, 4294967288
  %i.pe = and i64 %i.pc, 4294967288
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.pd
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.pe
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %wide.vec358 = load <4 x i32>, ptr %i.pf, align 4, !tbaa !19
  %i.pi = freeze <4 x i32> %wide.vec358
  %wide.vec361 = load <4 x i32>, ptr %i.ph, align 4, !tbaa !19
  %i.pj = freeze <4 x i32> %wide.vec361
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index357 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store <4 x i32> %i.pi, ptr %i.pk, align 8, !tbaa !24
  store <4 x i32> %i.pj, ptr %i.pl, align 8, !tbaa !24
  %index.next364 = add nuw i64 %index357, 4       ; 2 uses
  %i.pm = icmp eq i64 %index.next364, %n.vec355
  br i1 %i.pm, label %middle.block365, label %vector.body356, !llvm.loop !480

middle.block365:                                  ; preds = %vector.body356
  %cmp.n366 = icmp eq i64 %n.vec355, %wide.trip.count233
  br i1 %cmp.n366, label %.loopexit, label %.lr.ph200.preheader377

.lr.ph200.preheader377:                           ; preds = %.lr.ph200.preheader, %middle.block365
  %indvars.iv230.ph = phi i64 [ 0, %.lr.ph200.preheader ], [ %n.vec355, %middle.block365 ] ; 5 uses
  %xtraiter400 = and i64 %wide.trip.count233, 1
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader377
  %i.pn = trunc nuw i64 %indvars.iv230.ph to i32
  %i.po = shl i32 %i.pn, 1                        ; 2 uses
  %i.pp = or disjoint i32 %i.po, 1
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !19
  %i.pt = zext i32 %i.po to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.pt
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !19
  %i.pw = zext i32 %i.ps to i64
  %i.px = shl nuw i64 %i.pw, 32
  %i.py = zext i32 %i.pv to i64
  %i.pz = or disjoint i64 %i.px, %i.py
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv230.ph
  store i64 %i.pz, ptr %i.qa, align 8, !tbaa !24
  %indvars.iv.next231.prol = or disjoint i64 %indvars.iv230.ph, 1
  br label %.lr.ph200.prol.loopexit

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader377
  %indvars.iv230.unr = phi i64 [ %indvars.iv230.ph, %.lr.ph200.preheader377 ], [ %indvars.iv.next231.prol, %.lr.ph200.prol ]
  %i.qb = add nsw i64 %wide.trip.count233, -1
  %i.qc = icmp eq i64 %indvars.iv230.ph, %i.qb
  br i1 %i.qc, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv230 = phi i64 [ %indvars.iv.next231.1, %.lr.ph200 ], [ %indvars.iv230.unr, %.lr.ph200.prol.loopexit ] ; 4 uses
  %i.qd = trunc nuw i64 %indvars.iv230 to i32
  %i.qe = shl i32 %i.qd, 1                        ; 2 uses
  %i.qf = or disjoint i32 %i.qe, 1
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !19
  %i.qj = zext i32 %i.qe to i64
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !19
  %i.qm = zext i32 %i.qi to i64
  %i.qn = shl nuw i64 %i.qm, 32
  %i.qo = zext i32 %i.ql to i64
  %i.qp = or disjoint i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv230
  store i64 %i.qp, ptr %i.qq, align 8, !tbaa !24
end_hunk_0
