Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TableLookUp?download=true
inline.NumInlined: 165
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE:bb.a
  %i.bz = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %i.ca = insertelement <4 x i16> %i.bz, i16 %i.bw, i64 1
  %i.cb = insertelement <4 x i16> %i.ca, i16 %i.bx, i64 2
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.by, i64 3
  %i.cd = load i16, ptr %i.ay, align 2, !tbaa !22, !alias.scope !53
  %i.ce = load i16, ptr %i.ba, align 2, !tbaa !22, !alias.scope !53
  %i.cf = load i16, ptr %i.bc, align 2, !tbaa !22, !alias.scope !53
  %i.cg = load i16, ptr %i.be, align 2, !tbaa !22, !alias.scope !53
  %i.ch = insertelement <4 x i16> poison, i16 %i.cd, i64 0
  %i.ci = insertelement <4 x i16> %i.ch, i16 %i.ce, i64 1
  %i.cj = insertelement <4 x i16> %i.ci, i16 %i.cf, i64 2
  %i.ck = insertelement <4 x i16> %i.cj, i16 %i.cg, i64 3
  %i.cl = load i16, ptr %i.bg, align 2, !tbaa !22, !alias.scope !53
  %i.cm = load i16, ptr %i.bi, align 2, !tbaa !22, !alias.scope !53
  %i.cn = load i16, ptr %i.bk, align 2, !tbaa !22, !alias.scope !53
  %i.co = load i16, ptr %i.bm, align 2, !tbaa !22, !alias.scope !53
  %i.cp = insertelement <4 x i16> poison, i16 %i.cl, i64 0
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 1
  %i.cr = insertelement <4 x i16> %i.cq, i16 %i.cn, i64 2
  %i.cs = insertelement <4 x i16> %i.cr, i16 %i.co, i64 3
  %i.ct = load i16, ptr %i.bo, align 2, !tbaa !22, !alias.scope !53
  %i.cu = load i16, ptr %i.bq, align 2, !tbaa !22, !alias.scope !53
  %i.cv = load i16, ptr %i.bs, align 2, !tbaa !22, !alias.scope !53
  %i.cw = load i16, ptr %i.bu, align 2, !tbaa !22, !alias.scope !53
  %i.cx = insertelement <4 x i16> poison, i16 %i.ct, i64 0
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 1
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 2
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cw, i64 3
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store <4 x i16> %i.cc, ptr %i.db, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.ck, ptr %i.dc, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.cs, ptr %i.dd, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  store <4 x i16> %i.da, ptr %i.de, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.df = icmp eq i64 %index.next, 65536
  br i1 %i.df, label %.loopexit, label %vector.body, !llvm.loop !36

.preheader83:                                     ; preds = %bb.e
  %i.dg = icmp sgt i32 %i.i, 0
  br i1 %i.dg, label %bb.f, label %iter.check191

bb.f:                                             ; preds = %.preheader83
  %i.dh = add nuw i64 %i.h, 4294967295
  %i.di = and i64 %i.dh, 4294967295               ; 6 uses
  %wide.trip.count = and i64 %i.h, 2147483647     ; 6 uses
  %i.dj = load i16, ptr %i.d, align 2, !tbaa !22  ; 2 uses
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !22
  %i.dn = tail call i16 @llvm.umax.i16(i16 %i.dm, i16 %i.dj)
  %i.do = zext i16 %i.dn to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.speculated.peel = phi i32 [ %i.do, %bb.g ], [ %i.dk, %bb.f ]
  %i.dp = sub nsw i32 %.sroa.speculated.peel, %i.dk ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i32 %i.dp, 2
  %i.ds = lshr i32 %i.dr, 2
  %i.dt = sub nsw i32 %i.dk, %i.ds
  %.sroa.speculate.load.false.sroa.speculated.i.peel = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.du = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.peel to i16
  store i16 %i.du, ptr %i.s, align 2, !tbaa !22
  %i.dv = trunc nuw i32 %i.dp to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !22
  %exitcond96.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond96.peel.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.dx = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check, label %.peel.next.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %iter.check
  %i.dy = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.n, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 4
  %i.eb = shl nuw nsw i64 %wide.trip.count, 2
  %i.ec = getelementptr i8, ptr %i.n, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dy
  %i.ee = shl nuw nsw i64 %wide.trip.count, 1
  %i.ef = getelementptr i8, ptr %i.d, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 2
  %bound0124 = icmp ult ptr %i.ea, %i.eg
  %bound1125 = icmp ult ptr %i.d, %i.ed
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %.peel.next.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck123
  %min.iters.check127 = icmp ult i64 %i.dx, 16
  br i1 %min.iters.check127, label %vec.epilog.ph, label %vector.ph128

vector.ph128:                                     ; preds = %vector.main.loop.iter.check
  %i.eh = and i64 %i.dx, 12
  %n.vec = and i64 %i.dx, -16                     ; 4 uses
  %i.ei = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert129 = insertelement <16 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat130 = shufflevector <16 x i64> %broadcast.splatinsert129, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph128, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %vec.ind133 = phi <16 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16>, %vector.ph128 ], [ %vec.ind.next136, %vector.body131 ] ; 2 uses
  %i.ej = or disjoint i64 %index132, 1            ; 2 uses
  %i.ek = getelementptr [2 x i8], ptr %i.d, i64 %i.ej ; 3 uses
  %wide.load = load <16 x i16>, ptr %i.ek, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.el = zext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 -2
  %wide.load134 = load <16 x i16>, ptr %i.em, align 2, !tbaa !22, !alias.scope !56
  %i.en = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %wide.load134, <16 x i16> %wide.load)
  %i.eo = zext <16 x i16> %i.en to <16 x i32>
  %i.ep = icmp samesign ult <16 x i64> %vec.ind133, %broadcast.splat130 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 2
  %wide.masked.load = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.eq, <16 x i1> %i.ep, <16 x i16> poison), !tbaa !22, !alias.scope !56
  %i.er = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %wide.masked.load, <16 x i16> %wide.load)
  %i.es = zext <16 x i16> %i.er to <16 x i32>
  %predphi = select <16 x i1> %i.ep, <16 x i32> %i.es, <16 x i32> %i.el
  %i.et = sub nsw <16 x i32> %predphi, %i.eo      ; 2 uses
  %i.eu = add nuw nsw <16 x i32> %i.et, splat (i32 2)
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 2)
  %i.ew = sub nsw <16 x i32> %i.el, %i.ev
  %i.ex = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ew, <16 x i32> zeroinitializer)
  %i.ey = trunc nuw <16 x i32> %i.ex to <16 x i16>
  %i.ez = shl nuw nsw i64 %i.ej, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ez
  %i.fb = trunc nuw <16 x i32> %i.et to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.ey, <16 x i16> %i.fb, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.fa, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next135 = add nuw i64 %index132, 16      ; 2 uses
  %vec.ind.next136 = add nuw nsw <16 x i64> %vec.ind133, splat (i64 16)
  %i.fc = icmp eq i64 %index.next135, %n.vec
  br i1 %i.fc, label %middle.block137, label %vector.body131, !llvm.loop !40

middle.block137:                                  ; preds = %vector.body131
  %cmp.n = icmp eq i64 %i.dx, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block137
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %.peel.next.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ei, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.dx, -4                   ; 3 uses
  %i.fd = or disjoint i64 %n.vec138, 1
  %broadcast.splatinsert139 = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat140 = shufflevector <4 x i64> %broadcast.splatinsert139, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat142 = shufflevector <4 x i64> %broadcast.splatinsert141, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat142, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind144 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next151, %vec.epilog.vector.body ] ; 2 uses
  %i.fe = or disjoint i64 %index143, 1            ; 2 uses
  %i.ff = getelementptr [2 x i8], ptr %i.d, i64 %i.fe ; 3 uses
  %wide.load145 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.fg = zext <4 x i16> %wide.load145 to <4 x i32> ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 -2
  %wide.load146 = load <4 x i16>, ptr %i.fh, align 2, !tbaa !22, !alias.scope !56
  %i.fi = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load146, <4 x i16> %wide.load145)
  %i.fj = zext <4 x i16> %i.fi to <4 x i32>
  %i.fk = icmp ult <4 x i64> %vec.ind144, %broadcast.splat140 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.ff, i64 2
  %wide.masked.load147 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.fl, <4 x i1> %i.fk, <4 x i16> poison), !tbaa !22, !alias.scope !56
  %i.fm = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.masked.load147, <4 x i16> %wide.load145)
  %i.fn = zext <4 x i16> %i.fm to <4 x i32>
  %predphi148 = select <4 x i1> %i.fk, <4 x i32> %i.fn, <4 x i32> %i.fg
  %i.fo = sub nsw <4 x i32> %predphi148, %i.fj    ; 2 uses
  %i.fp = add nuw nsw <4 x i32> %i.fo, splat (i32 2)
  %i.fq = lshr <4 x i32> %i.fp, splat (i32 2)
  %i.fr = sub nsw <4 x i32> %i.fg, %i.fq
  %i.fs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fr, <4 x i32> zeroinitializer)
  %i.ft = shl nuw nsw i64 %i.fe, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ft
  %i.fv = shufflevector <4 x i32> %i.fs, <4 x i32> %i.fo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec149 = trunc nuw <8 x i32> %i.fv to <8 x i16>
  store <8 x i16> %interleaved.vec149, ptr %i.fu, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next150 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next151 = add nuw nsw <4 x i64> %vec.ind144, splat (i64 4)
  %i.fw = icmp eq i64 %index.next150, %n.vec138
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n152 = icmp eq i64 %i.dx, %n.vec138
  br i1 %cmp.n152, label %.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %iter.check, %vector.memcheck123, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv93.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck123 ], [ %i.ei, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ] ; 7 uses
  %.neg = add nsw i64 %indvars.iv93.ph, 1
  %i.fx = and i64 %i.g, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fx, 0
  br i1 %lcmp.mod.not.not, label %.peel.next.prol, label %.peel.next.prol.loopexit

.peel.next.prol:                                  ; preds = %.peel.next.preheader
  %i.fy = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93.ph ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !22 ; 3 uses
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fy, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !22
  %i.gd = tail call i16 @llvm.umin.i16(i16 %i.gc, i16 %i.fz)
  %i.ge = zext i16 %i.gd to i32
  %i.gf = icmp samesign ult i64 %indvars.iv93.ph, %i.di
  br i1 %i.gf, label %bb.i, label %.peel.next.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.peel.next.prol
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !22
  %i.gi = tail call i16 @llvm.umax.i16(i16 %i.gh, i16 %i.fz)
  %i.gj = zext i16 %i.gi to i32
  br label %.peel.next.prol.loopexit.unr-lcssa

.peel.next.prol.loopexit.unr-lcssa:               ; preds = %bb.i, %.peel.next.prol
  %.sroa.speculated.prol = phi i32 [ %i.gj, %bb.i ], [ %i.ga, %.peel.next.prol ]
  %i.gk = sub nsw i32 %.sroa.speculated.prol, %i.ge ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i32 %i.gk, 2
  %i.gn = lshr i32 %i.gm, 2
  %i.go = sub nsw i32 %i.ga, %i.gn
  %.sroa.speculate.load.false.sroa.speculated.i.prol = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gp = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.prol to i16
  %3 = icmp samesign ult i64 %indvars.iv93.ph, 65536
  tail call void @llvm.assume(i1 %3)
  %.idx.prol = shl nuw nsw i64 %indvars.iv93.ph, 2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.prol ; 2 uses
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !22
  %i.gr = trunc nuw i32 %i.gk to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !22
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.ph, 1
  br label %.peel.next.prol.loopexit

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %.peel.next.preheader ], [ %indvars.iv.next94.prol, %.peel.next.prol.loopexit.unr-lcssa ]
  %i.gt = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.gt, label %.preheader, label %.peel.next

scalar.ph:                                        ; preds = %.preheader84, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ 0, %.preheader84 ] ; 11 uses
  %i.gu = icmp slt i64 %indvars.iv, %i.y
  %.in.v = select i1 %i.gu, i64 %indvars.iv, i64 %i.x
  %.in = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v
  %i.gv = load i16, ptr %.in, align 2, !tbaa !22
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gx = icmp slt i64 %indvars.iv.next, %i.y
  %.in.v.1 = select i1 %i.gx, i64 %indvars.iv.next, i64 %i.x
  %.in.1 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.1
  %i.gy = load i16, ptr %.in.1, align 2, !tbaa !22
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !22
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.ha = icmp slt i64 %indvars.iv.next.1, %i.y
  %.in.v.2 = select i1 %i.ha, i64 %indvars.iv.next.1, i64 %i.x
  %.in.2 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.2
  %i.hb = load i16, ptr %.in.2, align 2, !tbaa !22
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.1
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !22
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.hd = icmp slt i64 %indvars.iv.next.2, %i.y
  %.in.v.3 = select i1 %i.hd, i64 %indvars.iv.next.2, i64 %i.x
  %.in.3 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.3
  %i.he = load i16, ptr %.in.3, align 2, !tbaa !22
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.2
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !22
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.hg = icmp slt i64 %indvars.iv.next.3, %i.y
  %.in.v.4 = select i1 %i.hg, i64 %indvars.iv.next.3, i64 %i.x
  %.in.4 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.4
  %i.hh = load i16, ptr %.in.4, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.3
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !22
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 3 uses
  %i.hj = icmp slt i64 %indvars.iv.next.4, %i.y
  %.in.v.5 = select i1 %i.hj, i64 %indvars.iv.next.4, i64 %i.x
  %.in.5 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.5
  %i.hk = load i16, ptr %.in.5, align 2, !tbaa !22
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.4
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !22
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 3 uses
  %i.hm = icmp slt i64 %indvars.iv.next.5, %i.y
  %.in.v.6 = select i1 %i.hm, i64 %indvars.iv.next.5, i64 %i.x
  %.in.6 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.6
  %i.hn = load i16, ptr %.in.6, align 2, !tbaa !22
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.5
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !22
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 3 uses
  %i.hp = icmp slt i64 %indvars.iv.next.6, %i.y
  %.in.v.7 = select i1 %i.hp, i64 %indvars.iv.next.6, i64 %i.x
  %.in.7 = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.in.v.7
  %i.hq = load i16, ptr %.in.7, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next.6
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 65536
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !42

.preheader:                                       ; preds = %.peel.next.prol.loopexit, %bb.l, %middle.block137, %vec.epilog.middle.block, %bb.h
  %.not90 = icmp eq i32 %i.i, 65536
  br i1 %.not90, label %.loopexit, label %iter.check191

iter.check191:                                    ; preds = %.preheader83, %.preheader
  %i.hs = shl i64 %i.g, 31
  %sext82 = add i64 %i.hs, -4294967296
  %i.ht = ashr i64 %sext82, 32                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ht ; 12 uses
  %i.hv = sub i32 65536, %i.i                     ; 7 uses
  %min.iters.check161 = icmp ult i32 %i.hv, 8
  br i1 %min.iters.check161, label %vec.epilog.scalar.ph192.preheader, label %vector.memcheck162

vector.memcheck162:                               ; preds = %iter.check191
  %i.hw = shl i64 %i.g, 1
  %i.hx = and i64 %i.hw, 8589934588               ; 2 uses
  %i.hy = shl nuw nsw i64 %i.r, 1                 ; 2 uses
  %i.hz = getelementptr i8, ptr %i.n, i64 %i.hx
  %i.ia = getelementptr i8, ptr %i.hz, i64 %i.hy
  %i.ib = shl i64 %i.g, 1
  %i.ic = sub i64 262140, %i.ib
  %i.id = and i64 %i.ic, 17179869180
  %i.ie = getelementptr i8, ptr %i.n, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 %i.hx
  %i.ig = getelementptr i8, ptr %i.if, i64 %i.hy
  %i.ih = getelementptr i8, ptr %i.ig, i64 4
  %i.ii = shl nuw nsw i64 %i.ht, 1
  %i.ij = getelementptr i8, ptr %i.d, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 2
  %bound0163 = icmp ult ptr %i.ia, %i.ik
  %bound1164 = icmp ult ptr %i.hu, %i.ih
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %vec.epilog.scalar.ph192.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %vector.memcheck162
  %min.iters.check167 = icmp ult i32 %i.hv, 64
  br i1 %min.iters.check167, label %vec.epilog.ph195, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %i.il = and i32 %i.hv, 56
  %n.vec169 = and i32 %i.hv, -64                  ; 4 uses
  %i.im = add i32 %n.vec169, %i.i                 ; 2 uses
  %i.in = load i16, ptr %i.hu, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert179 = insertelement <16 x i16> poison, i16 %i.in, i64 0
  %interleaved.vec181 = shufflevector <16 x i16> %broadcast.splatinsert179, <16 x i16> zeroinitializer, <32 x i32> <i32 0, i32 16, i32 0, i32 17, i32 0, i32 18, i32 0, i32 19, i32 0, i32 20, i32 0, i32 21, i32 0, i32 22, i32 0, i32 23, i32 0, i32 24, i32 0, i32 25, i32 0, i32 26, i32 0, i32 27, i32 0, i32 28, i32 0, i32 29, i32 0, i32 30, i32 0, i32 31> ; 4 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.ph168, %vector.body173
  %index174 = phi i32 [ 0, %vector.ph168 ], [ %index.next185, %vector.body173 ]
  %i.io = phi i32 [ %i.i, %vector.ph168 ], [ %i.je, %vector.body173 ] ; 5 uses
  %i.ip = shl nsw i32 %i.io, 1
  %i.iq = shl i32 %i.io, 1
  %i.ir = add i32 %i.iq, 32
  %i.is = shl i32 %i.io, 1
  %i.it = add i32 %i.is, 64
  %i.iu = shl i32 %i.io, 1
  %i.iv = add i32 %i.iu, 96
  %i.iw = zext nneg i32 %i.ip to i64
  %i.ix = zext nneg i32 %i.ir to i64
  %i.iy = zext nneg i32 %i.it to i64
  %i.iz = zext nneg i32 %i.iv to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.iw
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ix
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.iy
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.iz
  store <32 x i16> %interleaved.vec181, ptr %i.ja, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.jb, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.jc, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec181, ptr %i.jd, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next185 = add nuw i32 %index174, 64      ; 2 uses
  %i.je = add i32 %i.io, 64
  %i.jf = icmp eq i32 %index.next185, %n.vec169
  br i1 %i.jf, label %middle.block187, label %vector.body173, !llvm.loop !46

middle.block187:                                  ; preds = %vector.body173
  %cmp.n188 = icmp eq i32 %i.hv, %n.vec169
  br i1 %cmp.n188, label %.loopexit, label %vec.epilog.iter.check193

vec.epilog.iter.check193:                         ; preds = %middle.block187
  %min.epilog.iters.check194 = icmp eq i32 %i.il, 0
  br i1 %min.epilog.iters.check194, label %vec.epilog.scalar.ph192.preheader, label %vec.epilog.ph195, !prof !29

vec.epilog.ph195:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check193
  %vec.epilog.resume.val189 = phi i32 [ %n.vec169, %vec.epilog.iter.check193 ], [ 0, %vector.main.loop.iter.check166 ]
  %bc.resume.val190 = phi i32 [ %i.im, %vec.epilog.iter.check193 ], [ %i.i, %vector.main.loop.iter.check166 ]
  %n.vec196 = and i32 %i.hv, -8                   ; 3 uses
  %i.jg = add i32 %n.vec196, %i.i
  %i.jh = load i16, ptr %i.hu, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert203 = insertelement <8 x i16> poison, i16 %i.jh, i64 0
  %interleaved.vec205 = shufflevector <8 x i16> %broadcast.splatinsert203, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph195
  %index201 = phi i32 [ %vec.epilog.resume.val189, %vec.epilog.ph195 ], [ %index.next206, %vec.epilog.vector.body200 ]
  %i.ji = phi i32 [ %bc.resume.val190, %vec.epilog.ph195 ], [ %i.jm, %vec.epilog.vector.body200 ] ; 2 uses
  %i.jj = shl nsw i32 %i.ji, 1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.jk
  store <16 x i16> %interleaved.vec205, ptr %i.jl, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next206 = add nuw i32 %index201, 8       ; 2 uses
  %i.jm = add i32 %i.ji, 8
  %i.jn = icmp eq i32 %index.next206, %n.vec196
  br i1 %i.jn, label %vec.epilog.middle.block208, label %vec.epilog.vector.body200, !llvm.loop !47

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body200
  %cmp.n209 = icmp eq i32 %i.hv, %n.vec196
  br i1 %cmp.n209, label %.loopexit, label %vec.epilog.scalar.ph192.preheader

vec.epilog.scalar.ph192.preheader:                ; preds = %iter.check191, %vector.memcheck162, %vec.epilog.iter.check193, %vec.epilog.middle.block208
  %.088.ph = phi i32 [ %i.i, %iter.check191 ], [ %i.i, %vector.memcheck162 ], [ %i.im, %vec.epilog.iter.check193 ], [ %i.jg, %vec.epilog.middle.block208 ] ; 4 uses
  %i.jo = sub i32 0, %.088.ph
  %xtraiter217 = and i32 %i.jo, 7                 ; 2 uses
  %lcmp.mod218.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %vec.epilog.scalar.ph192.prol.loopexit, label %vec.epilog.scalar.ph192.prol

vec.epilog.scalar.ph192.prol:                     ; preds = %vec.epilog.scalar.ph192.preheader, %vec.epilog.scalar.ph192.prol
  %.088.prol = phi i32 [ %i.jv, %vec.epilog.scalar.ph192.prol ], [ %.088.ph, %vec.epilog.scalar.ph192.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph192.prol ], [ 0, %vec.epilog.scalar.ph192.preheader ]
  %i.jp = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.jq = shl nsw i32 %.088.prol, 1               ; 2 uses
  %i.jr = icmp samesign ult i32 %i.jq, 131072
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = zext nneg i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.js ; 2 uses
  store i16 %i.jp, ptr %i.jt, align 2, !tbaa !22
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  store i16 0, ptr %i.ju, align 2, !tbaa !22
  %i.jv = add i32 %.088.prol, 1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter217
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph192.prol.loopexit, label %vec.epilog.scalar.ph192.prol, !llvm.loop !48

vec.epilog.scalar.ph192.prol.loopexit:            ; preds = %vec.epilog.scalar.ph192.prol, %vec.epilog.scalar.ph192.preheader
  %.088.unr = phi i32 [ %.088.ph, %vec.epilog.scalar.ph192.preheader ], [ %i.jv, %vec.epilog.scalar.ph192.prol ]
  %i.jw = add i32 %.088.ph, -65529
  %i.jx = icmp ult i32 %i.jw, 7
  br i1 %i.jx, label %.loopexit, label %vec.epilog.scalar.ph192

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.l
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %bb.l ], [ %indvars.iv93.unr, %.peel.next.prol.loopexit ] ; 7 uses
  %i.jy = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv93 ; 3 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !22 ; 3 uses
  %i.ka = zext i16 %i.jz to i32                   ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jy, i64 -2
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !22
  %i.kd = tail call i16 @llvm.umin.i16(i16 %i.kc, i16 %i.jz)
  %i.ke = zext i16 %i.kd to i32
  %i.kf = icmp samesign ult i64 %indvars.iv93, %i.di
  br i1 %i.kf, label %bb.j, label %.peel.next.1

bb.j:                                             ; preds = %.peel.next
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !22
  %i.ki = tail call i16 @llvm.umax.i16(i16 %i.kh, i16 %i.jz)
  %i.kj = zext i16 %i.ki to i32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next, %bb.j
  %.sroa.speculated = phi i32 [ %i.kj, %bb.j ], [ %i.ka, %.peel.next ]
  %i.kk = sub nsw i32 %.sroa.speculated, %i.ke    ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, -1
  tail call void @llvm.assume(i1 %i.kl)
  %i.km = add nuw nsw i32 %i.kk, 2
  %i.kn = lshr i32 %i.km, 2
  %i.ko = sub nsw i32 %i.ka, %i.kn
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.ko, i32 0)
  %i.kp = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i to i16
  %4 = icmp samesign ult i64 %indvars.iv93, 65536
  tail call void @llvm.assume(i1 %4)
  %.idx = shl nuw nsw i64 %indvars.iv93, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 2 uses
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !22
  %i.kr = trunc nuw i32 %i.kk to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !22
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.kt = getelementptr [2 x i8], ptr %i.d, i64 %indvars.iv.next94 ; 3 uses
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !22 ; 3 uses
  %i.kv = zext i16 %i.ku to i32                   ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kt, i64 -2
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !22
  %i.ky = tail call i16 @llvm.umin.i16(i16 %i.kx, i16 %i.ku)
  %i.kz = zext i16 %i.ky to i32
  %i.la = icmp samesign ult i64 %indvars.iv.next94, %i.di
  br i1 %i.la, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next.1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !22
  %i.ld = tail call i16 @llvm.umax.i16(i16 %i.lc, i16 %i.ku)
  %i.le = zext i16 %i.ld to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.peel.next.1
  %.sroa.speculated.1 = phi i32 [ %i.le, %bb.k ], [ %i.kv, %.peel.next.1 ]
  %i.lf = sub nsw i32 %.sroa.speculated.1, %i.kz  ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, -1
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = add nuw nsw i32 %i.lf, 2
  %i.li = lshr i32 %i.lh, 2
  %i.lj = sub nsw i32 %i.kv, %i.li
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.lj, i32 0)
  %i.lk = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.1 to i16
  %5 = icmp ne i64 %indvars.iv93, 65535
  tail call void @llvm.assume(i1 %5)
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next94, 2
  %i.ll = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.1 ; 2 uses
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !22
  %i.lm = trunc nuw i32 %i.lf to i16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i16 %i.lm, ptr %i.ln, align 2, !tbaa !22
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, %wide.trip.count
  br i1 %exitcond96.not.1, label %.preheader, label %.peel.next, !llvm.loop !49

vec.epilog.scalar.ph192:                          ; preds = %vec.epilog.scalar.ph192.prol.loopexit, %vec.epilog.scalar.ph192
  %.088 = phi i32 [ %i.nr, %vec.epilog.scalar.ph192 ], [ %.088.unr, %vec.epilog.scalar.ph192.prol.loopexit ] ; 9 uses
  %i.lo = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.lp = shl nsw i32 %.088, 1                    ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lp, 131072
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = zext nneg i32 %i.lp to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.lr ; 2 uses
  store i16 %i.lo, ptr %i.ls, align 2, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  store i16 0, ptr %i.lt, align 2, !tbaa !22
  %i.lu = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.lv = shl i32 %.088, 1
  %i.lw = add i32 %i.lv, 2                        ; 2 uses
  %i.lx = icmp samesign ult i32 %i.lw, 131072
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = zext nneg i32 %i.lw to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ly ; 2 uses
  store i16 %i.lu, ptr %i.lz, align 2, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  store i16 0, ptr %i.ma, align 2, !tbaa !22
  %i.mb = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.mc = shl i32 %.088, 1
  %i.md = add i32 %i.mc, 4                        ; 2 uses
  %i.me = icmp samesign ult i32 %i.md, 131072
  tail call void @llvm.assume(i1 %i.me)
  %i.mf = zext nneg i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.mf ; 2 uses
  store i16 %i.mb, ptr %i.mg, align 2, !tbaa !22
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store i16 0, ptr %i.mh, align 2, !tbaa !22
  %i.mi = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.mj = shl i32 %.088, 1
  %i.mk = add i32 %i.mj, 6                        ; 2 uses
  %i.ml = icmp samesign ult i32 %i.mk, 131072
  tail call void @llvm.assume(i1 %i.ml)
  %i.mm = zext nneg i32 %i.mk to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.mm ; 2 uses
  store i16 %i.mi, ptr %i.mn, align 2, !tbaa !22
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  store i16 0, ptr %i.mo, align 2, !tbaa !22
  %i.mp = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.mq = shl i32 %.088, 1
  %i.mr = add i32 %i.mq, 8                        ; 2 uses
  %i.ms = icmp samesign ult i32 %i.mr, 131072
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = zext nneg i32 %i.mr to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.mt ; 2 uses
  store i16 %i.mp, ptr %i.mu, align 2, !tbaa !22
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  store i16 0, ptr %i.mv, align 2, !tbaa !22
  %i.mw = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.mx = shl i32 %.088, 1
  %i.my = add i32 %i.mx, 10                       ; 2 uses
  %i.mz = icmp samesign ult i32 %i.my, 131072
  tail call void @llvm.assume(i1 %i.mz)
  %i.na = zext nneg i32 %i.my to i64
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.na ; 2 uses
  store i16 %i.mw, ptr %i.nb, align 2, !tbaa !22
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store i16 0, ptr %i.nc, align 2, !tbaa !22
  %i.nd = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.ne = shl i32 %.088, 1
  %i.nf = add i32 %i.ne, 12                       ; 2 uses
  %i.ng = icmp samesign ult i32 %i.nf, 131072
  tail call void @llvm.assume(i1 %i.ng)
  %i.nh = zext nneg i32 %i.nf to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.nh ; 2 uses
  store i16 %i.nd, ptr %i.ni, align 2, !tbaa !22
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  store i16 0, ptr %i.nj, align 2, !tbaa !22
  %i.nk = load i16, ptr %i.hu, align 2, !tbaa !22
  %i.nl = shl i32 %.088, 1
  %i.nm = add i32 %i.nl, 14                       ; 2 uses
  %i.nn = icmp samesign ult i32 %i.nm, 131072
  tail call void @llvm.assume(i1 %i.nn)
  %i.no = zext nneg i32 %i.nm to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.no ; 2 uses
  store i16 %i.nk, ptr %i.np, align 2, !tbaa !22
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 2
  store i16 0, ptr %i.nq, align 2, !tbaa !22
  %i.nr = add i32 %.088, 8                        ; 2 uses
  %exitcond98.not.7 = icmp eq i32 %i.nr, 65536
  br i1 %exitcond98.not.7, label %.loopexit, label %vec.epilog.scalar.ph192, !llvm.loop !50

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vec.epilog.scalar.ph192.prol.loopexit, %vec.epilog.scalar.ph192, %middle.block187, %vec.epilog.middle.block208, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress uwtable
define hidden { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8getTableEi) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp sgt i32 %i.a, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %1, %i.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i32 %1, 17
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.h
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 131072, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !22     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !22
  store i16 %i.s, ptr %i.d, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !25
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !75

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !22
  br label %iter.check164
end_hunk_0
