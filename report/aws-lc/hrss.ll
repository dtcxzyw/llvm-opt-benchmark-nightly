Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/hrss?download=true
inline.NumInlined: 316
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 64
begin_hunk_0_@poly3_mul_aux:bb.a
  %i.iu = xor i64 %i.it, %i.ip                    ; 2 uses
  %i.iv = xor i64 %i.it, %i.io
  %i.iw = xor i64 %i.iu, %i.ir
  %i.ix = and i64 %i.iw, %i.iv
  store i64 %i.ix, ptr %i.im, align 8, !tbaa !17
  %i.iy = xor i64 %i.ir, %i.io
  %i.iz = or i64 %i.iu, %i.iy
  store i64 %i.iz, ptr %i.in, align 8, !tbaa !17
  %i.ja = add nuw i64 %.014.i100, 1               ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.ja, %i.fx
  br i1 %exitcond.not.i101, label %.lr.ph.i104.preheader, label %scalar.ph305, !llvm.loop !44

.lr.ph.i104.preheader:                            ; preds = %vector.body329, %scalar.ph305
  %min.iters.check363 = icmp ult i64 %i.fx, 18
  br i1 %min.iters.check363, label %.lr.ph.i104.preheader399, label %vector.memcheck364

.lr.ph.i104.preheader399:                         ; preds = %vector.memcheck364, %.lr.ph.i104.preheader
  br label %.lr.ph.i104

vector.memcheck364:                               ; preds = %.lr.ph.i104.preheader
  %i.jb = shl i64 %4, 4
  %i.jc = shl i64 %i.aw, 3
  %i.jd = sub i64 %i.jb, %i.jc                    ; 2 uses
  %i.je = getelementptr i8, ptr %i.bn, i64 %i.jd  ; 3 uses
  %i.jf = getelementptr i8, ptr %i.bs, i64 %i.jd  ; 3 uses
  %i.jg = sub i64 %4, %i.aw
  %i.jh = shl i64 %i.jg, 4                        ; 2 uses
  %i.ji = getelementptr i8, ptr %i.hs, i64 %i.jh  ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ht, i64 %i.jh  ; 2 uses
  %bound0365 = icmp ult ptr %i.gd, %i.jf
  %bound1366 = icmp ult ptr %i.ge, %i.je
  %found.conflict367 = and i1 %bound0365, %bound1366
  %bound0368 = icmp ult ptr %i.gd, %i.ji
  %bound1369 = icmp ult ptr %i.hs, %i.je
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %found.conflict367, %found.conflict370
  %bound0372 = icmp ult ptr %i.gd, %i.jj
  %bound1373 = icmp ult ptr %i.ht, %i.je
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx371, %found.conflict374
  %bound0376 = icmp ult ptr %i.ge, %i.ji
  %bound1377 = icmp ult ptr %i.hs, %i.jf
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %bound0380 = icmp ult ptr %i.ge, %i.jj
  %bound1381 = icmp ult ptr %i.ht, %i.jf
  %found.conflict382 = and i1 %bound0380, %bound1381
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  br i1 %conflict.rdx383, label %.lr.ph.i104.preheader399, label %vector.body386

vector.body386:                                   ; preds = %vector.memcheck364, %vector.body386
  %index387 = phi i64 [ %index.next392, %vector.body386 ], [ 0, %vector.memcheck364 ] ; 5 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %index387 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index387 ; 2 uses
  %wide.load388 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !17, !alias.scope !67, !noalias !68
  %wide.load389 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !17, !alias.scope !69, !noalias !70 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index387
  %wide.load390 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !17, !alias.scope !71 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index387
  %wide.load391 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !17, !alias.scope !72 ; 2 uses
  %i.jo = xor <2 x i64> %wide.load391, %wide.load388 ; 2 uses
  %i.jp = xor <2 x i64> %wide.load390, %wide.load389
  %i.jq = and <2 x i64> %i.jo, %i.jp
  store <2 x i64> %i.jq, ptr %i.jk, align 8, !tbaa !17, !alias.scope !67, !noalias !68
  %i.jr = xor <2 x i64> %wide.load391, %wide.load389
  %i.js = xor <2 x i64> %i.jo, %wide.load390
  %i.jt = or <2 x i64> %i.js, %i.jr
  store <2 x i64> %i.jt, ptr %i.jl, align 8, !tbaa !17, !alias.scope !69, !noalias !70
  %index.next392 = add nuw i64 %index387, 2       ; 2 uses
  %i.ju = icmp eq i64 %index.next392, %i.fx
  br i1 %i.ju, label %poly3_span_add.exit107, label %vector.body386, !llvm.loop !50

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader399, %.lr.ph.i104
  %.01.i105 = phi i64 [ %i.kj, %.lr.ph.i104 ], [ 0, %.lr.ph.i104.preheader399 ] ; 5 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.01.i105 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.01.i105 ; 2 uses
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !17
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !17 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.01.i105
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !17 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.01.i105
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !17 ; 2 uses
  %i.kd = xor i64 %i.kc, %i.jx                    ; 2 uses
  %i.ke = xor i64 %i.ka, %i.jy
  %i.kf = and i64 %i.kd, %i.ke
  store i64 %i.kf, ptr %i.jv, align 8, !tbaa !17
  %i.kg = xor i64 %i.kc, %i.jy
  %i.kh = xor i64 %i.kd, %i.ka
  %i.ki = or i64 %i.kh, %i.kg
  store i64 %i.ki, ptr %i.jw, align 8, !tbaa !17
  %i.kj = add nuw i64 %.01.i105, 1                ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %i.kj, %i.fx
  br i1 %exitcond.not.i106, label %poly3_span_add.exit107, label %.lr.ph.i104, !llvm.loop !51

poly3_span_add.exit107:                           ; preds = %vector.body386, %.lr.ph.i104, %poly3_span_sub.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.f

bb.f:                                             ; preds = %poly3_span_add.exit107, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define void @HRSS_poly3_invert(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load <2 x i64>, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !17
  %i.f = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !17
  %i.l = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !17
  %i.o = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17
  %i.r = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.q)
  %i.s = extractelement <2 x i64> %i.o, i64 1     ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.r, i64 60)
  %i.u = extractelement <2 x i64> %i.o, i64 0     ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.u, i64 %i.s, i64 60)
  %i.w = extractelement <2 x i64> %i.l, i64 1     ; 2 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.u, i64 60)
  %i.y = extractelement <2 x i64> %i.l, i64 0     ; 2 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.w, i64 60)
  %i.aa = extractelement <2 x i64> %i.i, i64 1    ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.y, i64 60)
  %i.ac = extractelement <2 x i64> %i.i, i64 0    ; 2 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.aa, i64 60)
  %i.ae = extractelement <2 x i64> %i.f, i64 1    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ac, i64 60)
  %i.ag = extractelement <2 x i64> %i.f, i64 0    ; 2 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ae, i64 60)
  %i.ai = extractelement <2 x i64> %i.c, i64 1    ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ag, i64 60)
  %i.ak = extractelement <2 x i64> %i.c, i64 0
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ai, i64 60)
  %i.am = load i64, ptr %1, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !17
  %i.ap = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !17
  %i.as = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !17
  %i.av = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !17
  %i.ay = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !tbaa !17
  %i.bb = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ba) ; 2 uses
  %i.bc = extractelement <2 x i64> %i.bb, i64 0   ; 2 uses
  %i.bd = extractelement <2 x i64> %i.bb, i64 1
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bd, i64 60)
  %i.bf = extractelement <2 x i64> %i.ay, i64 1   ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bc, i64 60)
  %i.bh = extractelement <2 x i64> %i.ay, i64 0   ; 2 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bf, i64 60)
  %i.bj = extractelement <2 x i64> %i.av, i64 1   ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bh, i64 60)
  %i.bl = extractelement <2 x i64> %i.av, i64 0   ; 2 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bj, i64 60)
  %i.bn = extractelement <2 x i64> %i.as, i64 1   ; 2 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bl, i64 60)
  %i.bp = extractelement <2 x i64> %i.as, i64 0   ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bn, i64 60)
  %i.br = extractelement <2 x i64> %i.ap, i64 1   ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.bp, i64 60)
  %i.bt = extractelement <2 x i64> %i.ap, i64 0   ; 2 uses
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.br, i64 60)
  %i.bv = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.am) ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bt, i64 60)
  %i.bx = insertelement <2 x i64> %i.c, i64 %i.bv, i64 1
  %i.by = lshr <2 x i64> %i.bx, splat (i64 4)     ; 2 uses
  %.sroa.056.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %.sroa.056.8.vec.insert.i = insertelement <2 x i64> %.sroa.056.0.vec.insert.i, i64 %i.bg, i64 1
  %.sroa.1262.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %.sroa.1262.24.vec.insert.i = insertelement <2 x i64> %.sroa.1262.16.vec.insert.i, i64 %i.bk, i64 1
  %.sroa.2167.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %.sroa.2167.40.vec.insert.i = insertelement <2 x i64> %.sroa.2167.32.vec.insert.i, i64 %i.bo, i64 1
  %.sroa.30.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %.sroa.30.56.vec.insert.i = insertelement <2 x i64> %.sroa.30.48.vec.insert.i, i64 %i.bs, i64 1
  %.sroa.39.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %.sroa.39.72.vec.insert.i = insertelement <2 x i64> %.sroa.39.64.vec.insert.i, i64 %i.bw, i64 1
  %2 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.by, <2 x i32> <i32 3, i32 1>
  %.sroa.027.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %.sroa.027.8.vec.insert.i = insertelement <2 x i64> %.sroa.027.0.vec.insert.i, i64 %i.v, i64 1
  %.sroa.1334.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %.sroa.1334.24.vec.insert.i = insertelement <2 x i64> %.sroa.1334.16.vec.insert.i, i64 %i.z, i64 1
  %.sroa.2239.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %.sroa.2239.40.vec.insert.i = insertelement <2 x i64> %.sroa.2239.32.vec.insert.i, i64 %i.ad, i64 1
  %.sroa.31.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %.sroa.31.56.vec.insert.i = insertelement <2 x i64> %.sroa.31.48.vec.insert.i, i64 %i.ah, i64 1
  %.sroa.40.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %.sroa.40.72.vec.insert.i = insertelement <2 x i64> %.sroa.40.64.vec.insert.i, i64 %i.al, i64 1
  %i.bz = insertelement <2 x i64> %i.by, i64 0, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.ca = bitcast <2 x i64> %i.jc to <8 x i16>
  %i.cb = extractelement <8 x i16> %i.ca, i64 0
  %i.cc = and i16 %i.cb, 1
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %poly3_invert_vec.exit, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.b
  %.sroa.29161.0.vec.extract.i = extractelement <2 x i64> %i.qu, i64 0
  %i.ce = extractelement <2 x i64> %i.pc, i64 0
  %i.cf = bitcast <2 x i64> %i.iy to <8 x i16>
  %i.cg = extractelement <8 x i16> %i.cf, i64 0
  %i.ch = and i16 %i.cg, 1
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci                    ; 2 uses
  %i.ck = xor i64 %i.ce, %i.cj
  %i.cl = extractelement <2 x i64> %i.pg, i64 0
  %i.cm = and i64 %i.ck, %i.cl
  %i.cn = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pg) ; 2 uses
  %i.co = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.po) ; 2 uses
  %i.cp = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pw) ; 2 uses
  %i.cq = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qe) ; 2 uses
  %i.cr = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qm) ; 2 uses
  %i.cs = tail call i64 @llvm.bitreverse.i64(i64 %.sroa.29161.0.vec.extract.i)
  %i.ct = extractelement <2 x i64> %i.cr, i64 1   ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.cs, i64 60)
  %i.cv = extractelement <2 x i64> %i.cr, i64 0   ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.ct, i64 60)
  %i.cx = extractelement <2 x i64> %i.cq, i64 1   ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cv, i64 60)
  %i.cz = extractelement <2 x i64> %i.cq, i64 0   ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cx, i64 60)
  %i.db = extractelement <2 x i64> %i.cp, i64 1   ; 2 uses
  %i.dc = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.cz, i64 60)
  %i.dd = extractelement <2 x i64> %i.cp, i64 0   ; 2 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.db, i64 60)
  %i.df = extractelement <2 x i64> %i.co, i64 1   ; 2 uses
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.dd, i64 60)
  %i.dh = extractelement <2 x i64> %i.co, i64 0   ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.df, i64 60)
  %i.dj = extractelement <2 x i64> %i.cn, i64 1   ; 2 uses
  %i.dk = tail call i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dh, i64 60)
  %i.dl = extractelement <2 x i64> %i.cn, i64 0   ; 2 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dj, i64 60)
  %i.dn = lshr i64 %i.dl, 4
  %i.do = tail call i64 @llvm.bitreverse.i64(i64 %i.cm) ; 2 uses
  %i.dp = shufflevector <2 x i64> %i.pc, <2 x i64> %i.pk, <2 x i32> <i32 1, i32 2>
  %i.dq = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.dr = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ds = xor <2 x i64> %i.dp, %i.dr
  %i.dt = shufflevector <2 x i64> %i.pg, <2 x i64> %i.po, <2 x i32> <i32 1, i32 2>
  %i.du = and <2 x i64> %i.ds, %i.dt
  %i.dv = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.du) ; 2 uses
  %i.dw = shufflevector <2 x i64> %i.pk, <2 x i64> %i.ps, <2 x i32> <i32 1, i32 2>
  %i.dx = xor <2 x i64> %i.dw, %i.dr
  %i.dy = shufflevector <2 x i64> %i.po, <2 x i64> %i.pw, <2 x i32> <i32 1, i32 2>
  %i.dz = and <2 x i64> %i.dx, %i.dy
  %i.ea = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.dz) ; 2 uses
  %i.eb = shufflevector <2 x i64> %i.ps, <2 x i64> %i.qa, <2 x i32> <i32 1, i32 2>
  %i.ec = xor <2 x i64> %i.eb, %i.dr
  %i.ed = shufflevector <2 x i64> %i.pw, <2 x i64> %i.qe, <2 x i32> <i32 1, i32 2>
  %i.ee = and <2 x i64> %i.ec, %i.ed
  %i.ef = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ee) ; 2 uses
  %i.eg = shufflevector <2 x i64> %i.qa, <2 x i64> %i.qi, <2 x i32> <i32 1, i32 2>
  %i.eh = xor <2 x i64> %i.eg, %i.dr
  %i.ei = shufflevector <2 x i64> %i.qe, <2 x i64> %i.qm, <2 x i32> <i32 1, i32 2>
  %i.ej = and <2 x i64> %i.eh, %i.ei
  %i.ek = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ej) ; 2 uses
  %i.el = shufflevector <2 x i64> %i.qi, <2 x i64> %i.qq, <2 x i32> <i32 1, i32 2>
  %i.em = xor <2 x i64> %i.el, %i.dr
  %i.en = shufflevector <2 x i64> %i.qm, <2 x i64> %i.qu, <2 x i32> <i32 1, i32 2>
  %i.eo = and <2 x i64> %i.em, %i.en
  %i.ep = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.eo) ; 2 uses
  %i.eq = extractelement <2 x i64> %i.ep, i64 0   ; 2 uses
  %i.er = extractelement <2 x i64> %i.ep, i64 1
  %i.es = tail call i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.er, i64 60)
  %i.et = extractelement <2 x i64> %i.ek, i64 1   ; 2 uses
  %i.eu = tail call i64 @llvm.fshl.i64(i64 %i.et, i64 %i.eq, i64 60)
  %i.ev = extractelement <2 x i64> %i.ek, i64 0   ; 2 uses
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.et, i64 60)
  %i.ex = extractelement <2 x i64> %i.ef, i64 1   ; 2 uses
  %i.ey = tail call i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ev, i64 60)
  %i.ez = extractelement <2 x i64> %i.ef, i64 0   ; 2 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ex, i64 60)
  %i.fb = extractelement <2 x i64> %i.ea, i64 1   ; 2 uses
  %i.fc = tail call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.ez, i64 60)
  %i.fd = extractelement <2 x i64> %i.ea, i64 0   ; 2 uses
  %i.fe = tail call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fb, i64 60)
  %i.ff = extractelement <2 x i64> %i.dv, i64 1   ; 2 uses
  %i.fg = tail call i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.fd, i64 60)
  %i.fh = extractelement <2 x i64> %i.dv, i64 0   ; 2 uses
  %i.fi = tail call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.ff, i64 60)
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.fh, i64 60)
  %i.fk = lshr i64 %i.do, 4
  br label %poly3_invert_vec.exit

bb.c:                                             ; preds = %bb.c, %bb.a
  %.0231.i = phi i32 [ 1, %bb.a ], [ %i.iw, %bb.c ] ; 3 uses
  %.025230.i = phi i64 [ 0, %bb.a ], [ %i.sy, %bb.c ]
  %.sroa.29179.0229.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qq, %bb.c ] ; 2 uses
  %.sroa.027.0228.i = phi <2 x i64> [ %.sroa.027.8.vec.insert.i, %bb.a ], [ %i.oz, %bb.c ] ; 4 uses
  %.sroa.1334.0227.i = phi <2 x i64> [ %.sroa.1334.24.vec.insert.i, %bb.a ], [ %i.op, %bb.c ] ; 2 uses
  %.sroa.2239.0226.i = phi <2 x i64> [ %.sroa.2239.40.vec.insert.i, %bb.a ], [ %i.of, %bb.c ] ; 2 uses
  %.sroa.31.0225.i = phi <2 x i64> [ %.sroa.31.56.vec.insert.i, %bb.a ], [ %i.nv, %bb.c ] ; 2 uses
  %.sroa.40.0224.i = phi <2 x i64> [ %.sroa.40.72.vec.insert.i, %bb.a ], [ %i.nl, %bb.c ] ; 2 uses
  %.sroa.49.0223.i = phi <2 x i64> [ %i.bz, %bb.a ], [ %i.nb, %bb.c ] ; 2 uses
  %.sroa.056.0222.i = phi <2 x i64> [ %.sroa.056.8.vec.insert.i, %bb.a ], [ %i.ou, %bb.c ] ; 2 uses
  %.sroa.1262.0221.i = phi <2 x i64> [ %.sroa.1262.24.vec.insert.i, %bb.a ], [ %i.ok, %bb.c ] ; 2 uses
  %.sroa.2167.0220.i = phi <2 x i64> [ %.sroa.2167.40.vec.insert.i, %bb.a ], [ %i.oa, %bb.c ] ; 2 uses
  %.sroa.30.0219.i = phi <2 x i64> [ %.sroa.30.56.vec.insert.i, %bb.a ], [ %i.nq, %bb.c ] ; 2 uses
  %.sroa.39.0218.i = phi <2 x i64> [ %.sroa.39.72.vec.insert.i, %bb.a ], [ %i.ng, %bb.c ] ; 2 uses
  %.sroa.48.0217.i = phi <2 x i64> [ %2, %bb.a ], [ %i.mx, %bb.c ] ; 2 uses
  %.sroa.084.0216.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jc, %bb.c ] ; 3 uses
  %.sroa.888.0215.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jk, %bb.c ] ; 2 uses
  %.sroa.1190.0214.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.js, %bb.c ] ; 2 uses
  %.sroa.1492.0213.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.ka, %bb.c ] ; 2 uses
  %.sroa.1794.0212.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.ki, %bb.c ] ; 2 uses
  %.sroa.2096.0211.i = phi <2 x i64> [ <i64 2305843009213693951, i64 0>, %bb.a ], [ %i.kq, %bb.c ] ; 2 uses
  %.sroa.098.0210.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.iy, %bb.c ] ; 2 uses
  %.sroa.8102.0209.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jg, %bb.c ] ; 2 uses
  %.sroa.11104.0208.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jo, %bb.c ] ; 2 uses
  %.sroa.14106.0207.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jw, %bb.c ] ; 2 uses
  %.sroa.17108.0206.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ke, %bb.c ] ; 2 uses
  %.sroa.20110.0205.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.km, %bb.c ] ; 2 uses
  %.sroa.0112.0204.i = phi <2 x i64> [ <i64 1, i64 0>, %bb.a ], [ %i.re, %bb.c ] ; 2 uses
  %.sroa.9115.0203.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rn, %bb.c ] ; 2 uses
  %.sroa.14118.0202.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rw, %bb.c ] ; 2 uses
  %.sroa.19121.0201.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sf, %bb.c ] ; 2 uses
  %.sroa.24124.0200.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.so, %bb.c ] ; 2 uses
  %.sroa.29.0199.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sx, %bb.c ] ; 2 uses
  %.sroa.0129.0198.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rc, %bb.c ] ; 2 uses
  %.sroa.8132.0197.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rl, %bb.c ] ; 2 uses
  %.sroa.13135.0196.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ru, %bb.c ] ; 2 uses
  %.sroa.18138.0195.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sd, %bb.c ] ; 2 uses
  %.sroa.23141.0194.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sm, %bb.c ] ; 2 uses
  %.sroa.28.0193.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sv, %bb.c ] ; 2 uses
  %.sroa.0146.0192.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pg, %bb.c ] ; 2 uses
  %.sroa.9149.0191.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.po, %bb.c ] ; 2 uses
  %.sroa.14152.0190.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pw, %bb.c ] ; 2 uses
  %.sroa.19155.0189.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qe, %bb.c ] ; 2 uses
  %.sroa.24158.0188.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qm, %bb.c ] ; 2 uses
  %.sroa.29161.0187.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qu, %bb.c ] ; 2 uses
  %.sroa.0164.0186.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pc, %bb.c ] ; 2 uses
  %.sroa.9167.0185.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pk, %bb.c ] ; 2 uses
  %.sroa.14170.0184.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ps, %bb.c ] ; 2 uses
  %.sroa.19173.0183.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qa, %bb.c ] ; 2 uses
  %.sroa.24176.0182.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qi, %bb.c ] ; 2 uses
  %i.fl = lshr <2 x i64> %.sroa.0164.0186.i, splat (i64 63) ; 2 uses
  %i.fm = shl <2 x i64> %.sroa.0164.0186.i, splat (i64 1)
  %3 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fn = or disjoint <2 x i64> %i.fm, %3         ; 2 uses
  %i.fo = shufflevector <2 x i64> %i.fl, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fp = lshr <2 x i64> %.sroa.0146.0192.i, splat (i64 63) ; 2 uses
  %i.fq = shl <2 x i64> %.sroa.0146.0192.i, splat (i64 1)
  %4 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fp, <2 x i32> <i32 1, i32 2>
  %i.fr = or disjoint <2 x i64> %i.fq, %4         ; 2 uses
  %i.fs = shufflevector <2 x i64> %i.fp, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ft = lshr <2 x i64> %.sroa.9167.0185.i, splat (i64 63) ; 2 uses
  %i.fu = shl <2 x i64> %.sroa.9167.0185.i, splat (i64 1)
  %5 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ft, <2 x i32> <i32 1, i32 2>
  %i.fv = or disjoint <2 x i64> %i.fu, %5
  %i.fw = or <2 x i64> %i.fv, %i.fo               ; 2 uses
  %i.fx = shufflevector <2 x i64> %i.ft, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fy = lshr <2 x i64> %.sroa.9149.0191.i, splat (i64 63) ; 2 uses
  %i.fz = shl <2 x i64> %.sroa.9149.0191.i, splat (i64 1)
  %6 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fy, <2 x i32> <i32 1, i32 2>
  %i.ga = or disjoint <2 x i64> %i.fz, %6
  %i.gb = or <2 x i64> %i.ga, %i.fs               ; 2 uses
  %i.gc = shufflevector <2 x i64> %i.fy, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gd = lshr <2 x i64> %.sroa.14170.0184.i, splat (i64 63) ; 2 uses
  %i.ge = shl <2 x i64> %.sroa.14170.0184.i, splat (i64 1)
  %7 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gf = or disjoint <2 x i64> %i.ge, %7
  %i.gg = or <2 x i64> %i.gf, %i.fx               ; 2 uses
  %i.gh = shufflevector <2 x i64> %i.gd, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gi = lshr <2 x i64> %.sroa.14152.0190.i, splat (i64 63) ; 2 uses
  %i.gj = shl <2 x i64> %.sroa.14152.0190.i, splat (i64 1)
  %8 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.gk = or disjoint <2 x i64> %i.gj, %8
  %i.gl = or <2 x i64> %i.gk, %i.gc               ; 2 uses
  %i.gm = shufflevector <2 x i64> %i.gi, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gn = lshr <2 x i64> %.sroa.19173.0183.i, splat (i64 63) ; 2 uses
  %i.go = shl <2 x i64> %.sroa.19173.0183.i, splat (i64 1)
  %9 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.gp = or disjoint <2 x i64> %i.go, %9
  %i.gq = or <2 x i64> %i.gp, %i.gh               ; 2 uses
  %i.gr = shufflevector <2 x i64> %i.gn, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gs = lshr <2 x i64> %.sroa.19155.0189.i, splat (i64 63) ; 2 uses
  %i.gt = shl <2 x i64> %.sroa.19155.0189.i, splat (i64 1)
  %10 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gs, <2 x i32> <i32 1, i32 2>
  %i.gu = or disjoint <2 x i64> %i.gt, %10
  %i.gv = or <2 x i64> %i.gu, %i.gm               ; 2 uses
  %i.gw = shufflevector <2 x i64> %i.gs, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gx = lshr <2 x i64> %.sroa.24176.0182.i, splat (i64 63) ; 2 uses
  %i.gy = shl <2 x i64> %.sroa.24176.0182.i, splat (i64 1)
  %11 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.gz = or disjoint <2 x i64> %i.gy, %11
  %i.ha = or <2 x i64> %i.gz, %i.gr               ; 2 uses
  %i.hb = shufflevector <2 x i64> %i.gx, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.hc = lshr <2 x i64> %.sroa.24158.0188.i, splat (i64 63) ; 2 uses
  %i.hd = shl <2 x i64> %.sroa.24158.0188.i, splat (i64 1)
  %12 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.hc, <2 x i32> <i32 1, i32 2>
  %i.he = or disjoint <2 x i64> %i.hd, %12
  %i.hf = or <2 x i64> %i.he, %i.gw               ; 2 uses
  %i.hg = shufflevector <2 x i64> %i.hc, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.hh = lshr <2 x i64> %.sroa.29179.0229.i, splat (i64 63)
  %i.hi = shl <2 x i64> %.sroa.29179.0229.i, splat (i64 1)
  %13 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.hh, <2 x i32> <i32 1, i32 2>
  %i.hj = or disjoint <2 x i64> %i.hi, %13
  %i.hk = or <2 x i64> %i.hj, %i.hb               ; 2 uses
  %i.hl = lshr <2 x i64> %.sroa.29161.0187.i, splat (i64 63)
  %i.hm = shl <2 x i64> %.sroa.29161.0187.i, splat (i64 1)
  %14 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.hl, <2 x i32> <i32 1, i32 2>
  %i.hn = or disjoint <2 x i64> %i.hm, %14
  %i.ho = or <2 x i64> %i.hn, %i.hg               ; 2 uses
  %narrow.i = icmp sgt i32 %.0231.i, 0
  %i.hp = zext i1 %narrow.i to i64
  %i.hq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.hp, i64 0
  %i.hr = and <2 x i64> %i.hq, %.sroa.027.0228.i
  %i.hs = shl nuw <2 x i64> %i.hr, splat (i64 63)
  %i.ht = bitcast <2 x i64> %i.hs to <4 x i32>
  %i.hu = ashr exact <4 x i32> %i.ht, splat (i32 31)
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hw = bitcast <4 x i32> %i.hv to <2 x i64>    ; 25 uses
  %i.hx = and <2 x i64> %.sroa.084.0216.i, %.sroa.027.0228.i
  %i.hy = shl <2 x i64> %i.hx, splat (i64 63)
  %i.hz = bitcast <2 x i64> %i.hy to <4 x i32>
  %i.ia = ashr exact <4 x i32> %i.hz, splat (i32 31)
  %i.ib = shufflevector <4 x i32> %i.ia, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ic = bitcast <4 x i32> %i.ib to <2 x i64>    ; 13 uses
  %i.id = xor <2 x i64> %.sroa.098.0210.i, %.sroa.056.0222.i ; 2 uses
  %i.ie = and <2 x i64> %i.id, %i.ic
  %i.if = shl <2 x i64> %i.ie, splat (i64 63)
  %i.ig = bitcast <2 x i64> %i.if to <4 x i32>
  %i.ih = ashr exact <4 x i32> %i.ig, splat (i32 31)
  %i.ii = shufflevector <4 x i32> %i.ih, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ij = bitcast <4 x i32> %i.ii to <2 x i64>    ; 12 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.hw, i64 0
  %i.ik = and i64 %.sroa.0.0.vec.extract.i, 1     ; 2 uses
  %i.il = sub nsw i64 0, %i.ik
  %i.im = sub nsw i32 0, %.0231.i
  %i.in = zext i32 %i.im to i64
  %i.io = zext i32 %.0231.i to i64
  %i.ip = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.il) #11, !srcloc !21
  %i.iq = and i64 %i.ip, %i.in
  %i.ir = add nsw i64 %i.ik, -1
  %i.is = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ir) #11, !srcloc !21
  %i.it = and i64 %i.is, %i.io
  %i.iu = or i64 %i.it, %i.iq
  %i.iv = trunc nuw i64 %i.iu to i32
  %i.iw = add nsw i32 %i.iv, 1
  %i.ix = and <2 x i64> %i.id, %i.hw              ; 2 uses
  %i.iy = xor <2 x i64> %i.ix, %.sroa.098.0210.i  ; 3 uses
  %i.iz = xor <2 x i64> %i.ix, %.sroa.056.0222.i  ; 2 uses
  %i.ja = xor <2 x i64> %.sroa.084.0216.i, %.sroa.027.0228.i
  %i.jb = and <2 x i64> %i.ja, %i.hw              ; 2 uses
  %i.jc = xor <2 x i64> %i.jb, %.sroa.084.0216.i  ; 3 uses
  %i.jd = xor <2 x i64> %i.jb, %.sroa.027.0228.i
  %i.je = xor <2 x i64> %.sroa.8102.0209.i, %.sroa.1262.0221.i
  %i.jf = and <2 x i64> %i.je, %i.hw              ; 2 uses
  %i.jg = xor <2 x i64> %i.jf, %.sroa.8102.0209.i ; 2 uses
  %i.jh = xor <2 x i64> %i.jf, %.sroa.1262.0221.i ; 2 uses
  %i.ji = xor <2 x i64> %.sroa.888.0215.i, %.sroa.1334.0227.i
  %i.jj = and <2 x i64> %i.ji, %i.hw              ; 2 uses
  %i.jk = xor <2 x i64> %i.jj, %.sroa.888.0215.i  ; 2 uses
  %i.jl = xor <2 x i64> %i.jj, %.sroa.1334.0227.i
  %i.jm = xor <2 x i64> %.sroa.11104.0208.i, %.sroa.2167.0220.i
  %i.jn = and <2 x i64> %i.jm, %i.hw              ; 2 uses
  %i.jo = xor <2 x i64> %i.jn, %.sroa.11104.0208.i ; 2 uses
  %i.jp = xor <2 x i64> %i.jn, %.sroa.2167.0220.i ; 2 uses
  %i.jq = xor <2 x i64> %.sroa.1190.0214.i, %.sroa.2239.0226.i
  %i.jr = and <2 x i64> %i.jq, %i.hw              ; 2 uses
  %i.js = xor <2 x i64> %i.jr, %.sroa.1190.0214.i ; 2 uses
  %i.jt = xor <2 x i64> %i.jr, %.sroa.2239.0226.i
  %i.ju = xor <2 x i64> %.sroa.14106.0207.i, %.sroa.30.0219.i
  %i.jv = and <2 x i64> %i.ju, %i.hw              ; 2 uses
  %i.jw = xor <2 x i64> %i.jv, %.sroa.14106.0207.i ; 2 uses
  %i.jx = xor <2 x i64> %i.jv, %.sroa.30.0219.i   ; 2 uses
  %i.jy = xor <2 x i64> %.sroa.1492.0213.i, %.sroa.31.0225.i
  %i.jz = and <2 x i64> %i.jy, %i.hw              ; 2 uses
  %i.ka = xor <2 x i64> %i.jz, %.sroa.1492.0213.i ; 2 uses
  %i.kb = xor <2 x i64> %i.jz, %.sroa.31.0225.i
  %i.kc = xor <2 x i64> %.sroa.17108.0206.i, %.sroa.39.0218.i
  %i.kd = and <2 x i64> %i.kc, %i.hw              ; 2 uses
  %i.ke = xor <2 x i64> %i.kd, %.sroa.17108.0206.i ; 2 uses
  %i.kf = xor <2 x i64> %i.kd, %.sroa.39.0218.i   ; 2 uses
  %i.kg = xor <2 x i64> %.sroa.1794.0212.i, %.sroa.40.0224.i
  %i.kh = and <2 x i64> %i.kg, %i.hw              ; 2 uses
  %i.ki = xor <2 x i64> %i.kh, %.sroa.1794.0212.i ; 2 uses
  %i.kj = xor <2 x i64> %i.kh, %.sroa.40.0224.i
  %i.kk = xor <2 x i64> %.sroa.20110.0205.i, %.sroa.48.0217.i
  %i.kl = and <2 x i64> %i.kk, %i.hw              ; 2 uses
  %i.km = xor <2 x i64> %i.kl, %.sroa.20110.0205.i ; 2 uses
  %i.kn = xor <2 x i64> %i.kl, %.sroa.48.0217.i   ; 2 uses
  %i.ko = xor <2 x i64> %.sroa.2096.0211.i, %.sroa.49.0223.i
  %i.kp = and <2 x i64> %i.ko, %i.hw              ; 2 uses
  %i.kq = xor <2 x i64> %i.kp, %.sroa.2096.0211.i ; 2 uses
  %i.kr = xor <2 x i64> %i.kp, %.sroa.49.0223.i
  %i.ks = and <2 x i64> %i.jc, %i.ic              ; 3 uses
  %i.kt = xor <2 x i64> %i.iy, %i.ij
  %i.ku = and <2 x i64> %i.kt, %i.ks              ; 2 uses
  %i.kv = xor <2 x i64> %i.jd, %i.ks              ; 2 uses
  %i.kw = xor <2 x i64> %i.iz, %i.ks
  %i.kx = xor <2 x i64> %i.ku, %i.kv
  %i.ky = and <2 x i64> %i.kx, %i.kw              ; 2 uses
  %i.kz = xor <2 x i64> %i.ku, %i.iz
  %i.la = or <2 x i64> %i.kz, %i.kv               ; 2 uses
  %i.lb = and <2 x i64> %i.jk, %i.ic              ; 3 uses
  %i.lc = xor <2 x i64> %i.jg, %i.ij
  %i.ld = and <2 x i64> %i.lc, %i.lb              ; 2 uses
  %i.le = xor <2 x i64> %i.jl, %i.lb              ; 2 uses
  %i.lf = xor <2 x i64> %i.jh, %i.lb
  %i.lg = xor <2 x i64> %i.ld, %i.le
  %i.lh = and <2 x i64> %i.lg, %i.lf              ; 2 uses
  %i.li = xor <2 x i64> %i.ld, %i.jh
  %i.lj = or <2 x i64> %i.li, %i.le               ; 2 uses
  %i.lk = and <2 x i64> %i.js, %i.ic              ; 3 uses
  %i.ll = xor <2 x i64> %i.jo, %i.ij
  %i.lm = and <2 x i64> %i.ll, %i.lk              ; 2 uses
  %i.ln = xor <2 x i64> %i.jt, %i.lk              ; 2 uses
  %i.lo = xor <2 x i64> %i.jp, %i.lk
  %i.lp = xor <2 x i64> %i.lm, %i.ln
  %i.lq = and <2 x i64> %i.lp, %i.lo              ; 2 uses
  %i.lr = xor <2 x i64> %i.lm, %i.jp
  %i.ls = or <2 x i64> %i.lr, %i.ln               ; 2 uses
  %i.lt = and <2 x i64> %i.ka, %i.ic              ; 3 uses
  %i.lu = xor <2 x i64> %i.jw, %i.ij
  %i.lv = and <2 x i64> %i.lu, %i.lt              ; 2 uses
  %i.lw = xor <2 x i64> %i.kb, %i.lt              ; 2 uses
  %i.lx = xor <2 x i64> %i.jx, %i.lt
  %i.ly = xor <2 x i64> %i.lv, %i.lw
  %i.lz = and <2 x i64> %i.ly, %i.lx              ; 2 uses
  %i.ma = xor <2 x i64> %i.lv, %i.jx
  %i.mb = or <2 x i64> %i.ma, %i.lw               ; 2 uses
  %i.mc = and <2 x i64> %i.ki, %i.ic              ; 3 uses
  %i.md = xor <2 x i64> %i.ke, %i.ij
  %i.me = and <2 x i64> %i.md, %i.mc              ; 2 uses
  %i.mf = xor <2 x i64> %i.kj, %i.mc              ; 2 uses
  %i.mg = xor <2 x i64> %i.kf, %i.mc
  %i.mh = xor <2 x i64> %i.me, %i.mf
  %i.mi = and <2 x i64> %i.mh, %i.mg              ; 2 uses
  %i.mj = xor <2 x i64> %i.me, %i.kf
  %i.mk = or <2 x i64> %i.mj, %i.mf               ; 2 uses
  %i.ml = and <2 x i64> %i.kq, %i.ic              ; 3 uses
  %i.mm = xor <2 x i64> %i.km, %i.ij
  %i.mn = and <2 x i64> %i.mm, %i.ml              ; 2 uses
  %i.mo = xor <2 x i64> %i.kr, %i.ml              ; 2 uses
  %i.mp = xor <2 x i64> %i.kn, %i.ml
  %i.mq = xor <2 x i64> %i.mn, %i.mo
  %i.mr = and <2 x i64> %i.mq, %i.mp              ; 2 uses
  %i.ms = xor <2 x i64> %i.mn, %i.kn
  %i.mt = or <2 x i64> %i.ms, %i.mo               ; 2 uses
  %i.mu = shl <2 x i64> %i.mr, splat (i64 63)     ; 2 uses
  %i.mv = lshr <2 x i64> %i.mr, splat (i64 1)
  %i.mw = shufflevector <2 x i64> %i.mu, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mx = or disjoint <2 x i64> %i.mv, %i.mw
  %15 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mu, <2 x i32> <i32 1, i32 2>
  %i.my = shl <2 x i64> %i.mt, splat (i64 63)     ; 2 uses
  %i.mz = lshr <2 x i64> %i.mt, splat (i64 1)
  %i.na = shufflevector <2 x i64> %i.my, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nb = or disjoint <2 x i64> %i.mz, %i.na
  %16 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.my, <2 x i32> <i32 1, i32 2>
  %i.nc = shl <2 x i64> %i.mi, splat (i64 63)     ; 2 uses
  %i.nd = lshr <2 x i64> %i.mi, splat (i64 1)
  %i.ne = shufflevector <2 x i64> %i.nc, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nf = or disjoint <2 x i64> %i.nd, %i.ne
  %i.ng = or <2 x i64> %i.nf, %15
  %17 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nc, <2 x i32> <i32 1, i32 2>
  %i.nh = shl <2 x i64> %i.mk, splat (i64 63)     ; 2 uses
  %i.ni = lshr <2 x i64> %i.mk, splat (i64 1)
  %i.nj = shufflevector <2 x i64> %i.nh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nk = or disjoint <2 x i64> %i.ni, %i.nj
  %i.nl = or <2 x i64> %i.nk, %16
  %18 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nh, <2 x i32> <i32 1, i32 2>
  %i.nm = shl <2 x i64> %i.lz, splat (i64 63)     ; 2 uses
  %i.nn = lshr <2 x i64> %i.lz, splat (i64 1)
  %i.no = shufflevector <2 x i64> %i.nm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.np = or disjoint <2 x i64> %i.nn, %17
  %i.nq = or <2 x i64> %i.np, %i.no
  %19 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nm, <2 x i32> <i32 1, i32 2>
  %i.nr = shl <2 x i64> %i.mb, splat (i64 63)     ; 2 uses
  %i.ns = lshr <2 x i64> %i.mb, splat (i64 1)
  %i.nt = shufflevector <2 x i64> %i.nr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nu = or disjoint <2 x i64> %i.ns, %18
  %i.nv = or <2 x i64> %i.nu, %i.nt
  %20 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.nw = shl <2 x i64> %i.lq, splat (i64 63)     ; 2 uses
  %i.nx = lshr <2 x i64> %i.lq, splat (i64 1)
  %i.ny = shufflevector <2 x i64> %i.nw, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nz = or disjoint <2 x i64> %i.nx, %19
  %i.oa = or <2 x i64> %i.nz, %i.ny
  %21 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nw, <2 x i32> <i32 1, i32 2>
  %i.ob = shl <2 x i64> %i.ls, splat (i64 63)     ; 2 uses
  %i.oc = lshr <2 x i64> %i.ls, splat (i64 1)
  %i.od = shufflevector <2 x i64> %i.ob, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.oe = or disjoint <2 x i64> %i.oc, %20
  %i.of = or <2 x i64> %i.oe, %i.od
  %22 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ob, <2 x i32> <i32 1, i32 2>
  %i.og = shl <2 x i64> %i.lh, splat (i64 63)     ; 2 uses
  %i.oh = lshr <2 x i64> %i.lh, splat (i64 1)
  %i.oi = shufflevector <2 x i64> %i.og, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.oj = or disjoint <2 x i64> %i.oh, %21
  %i.ok = or <2 x i64> %i.oj, %i.oi
  %23 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.og, <2 x i32> <i32 1, i32 2>
  %i.ol = shl <2 x i64> %i.lj, splat (i64 63)     ; 2 uses
  %i.om = lshr <2 x i64> %i.lj, splat (i64 1)
  %i.on = shufflevector <2 x i64> %i.ol, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.oo = or disjoint <2 x i64> %i.om, %22
  %i.op = or <2 x i64> %i.oo, %i.on
  %24 = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ol, <2 x i32> <i32 1, i32 2>
  %i.oq = shl <2 x i64> %i.ky, splat (i64 63)
  %i.or = lshr <2 x i64> %i.ky, splat (i64 1)
  %i.os = shufflevector <2 x i64> %i.oq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ot = or disjoint <2 x i64> %i.or, %23
  %i.ou = or <2 x i64> %i.ot, %i.os
  %i.ov = shl <2 x i64> %i.la, splat (i64 63)
  %i.ow = lshr <2 x i64> %i.la, splat (i64 1)
  %i.ox = shufflevector <2 x i64> %i.ov, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.oy = or disjoint <2 x i64> %i.ow, %24
  %i.oz = or <2 x i64> %i.oy, %i.ox
  %i.pa = xor <2 x i64> %i.fn, %.sroa.0129.0198.i
  %i.pb = and <2 x i64> %i.pa, %i.hw              ; 2 uses
  %i.pc = xor <2 x i64> %i.pb, %i.fn              ; 4 uses
  %i.pd = xor <2 x i64> %i.pb, %.sroa.0129.0198.i ; 2 uses
  %i.pe = xor <2 x i64> %i.fr, %.sroa.0112.0204.i
  %i.pf = and <2 x i64> %i.pe, %i.hw              ; 2 uses
  %i.pg = xor <2 x i64> %i.pf, %i.fr              ; 5 uses
  %i.ph = xor <2 x i64> %i.pf, %.sroa.0112.0204.i
  %i.pi = xor <2 x i64> %i.fw, %.sroa.8132.0197.i
  %i.pj = and <2 x i64> %i.pi, %i.hw              ; 2 uses
  %i.pk = xor <2 x i64> %i.pj, %i.fw              ; 4 uses
  %i.pl = xor <2 x i64> %i.pj, %.sroa.8132.0197.i ; 2 uses
  %i.pm = xor <2 x i64> %i.gb, %.sroa.9115.0203.i
  %i.pn = and <2 x i64> %i.pm, %i.hw              ; 2 uses
  %i.po = xor <2 x i64> %i.pn, %i.gb              ; 5 uses
  %i.pp = xor <2 x i64> %i.pn, %.sroa.9115.0203.i
  %i.pq = xor <2 x i64> %i.gg, %.sroa.13135.0196.i
  %i.pr = and <2 x i64> %i.pq, %i.hw              ; 2 uses
  %i.ps = xor <2 x i64> %i.pr, %i.gg              ; 4 uses
  %i.pt = xor <2 x i64> %i.pr, %.sroa.13135.0196.i ; 2 uses
  %i.pu = xor <2 x i64> %i.gl, %.sroa.14118.0202.i
  %i.pv = and <2 x i64> %i.pu, %i.hw              ; 2 uses
  %i.pw = xor <2 x i64> %i.pv, %i.gl              ; 5 uses
  %i.px = xor <2 x i64> %i.pv, %.sroa.14118.0202.i
  %i.py = xor <2 x i64> %i.gq, %.sroa.18138.0195.i
  %i.pz = and <2 x i64> %i.py, %i.hw              ; 2 uses
  %i.qa = xor <2 x i64> %i.pz, %i.gq              ; 4 uses
  %i.qb = xor <2 x i64> %i.pz, %.sroa.18138.0195.i ; 2 uses
  %i.qc = xor <2 x i64> %i.gv, %.sroa.19121.0201.i
  %i.qd = and <2 x i64> %i.qc, %i.hw              ; 2 uses
  %i.qe = xor <2 x i64> %i.qd, %i.gv              ; 5 uses
  %i.qf = xor <2 x i64> %i.qd, %.sroa.19121.0201.i
  %i.qg = xor <2 x i64> %i.ha, %.sroa.23141.0194.i
  %i.qh = and <2 x i64> %i.qg, %i.hw              ; 2 uses
  %i.qi = xor <2 x i64> %i.qh, %i.ha              ; 4 uses
  %i.qj = xor <2 x i64> %i.qh, %.sroa.23141.0194.i ; 2 uses
  %i.qk = xor <2 x i64> %i.hf, %.sroa.24124.0200.i
  %i.ql = and <2 x i64> %i.qk, %i.hw              ; 2 uses
  %i.qm = xor <2 x i64> %i.ql, %i.hf              ; 5 uses
  %i.qn = xor <2 x i64> %i.ql, %.sroa.24124.0200.i
  %i.qo = xor <2 x i64> %i.hk, %.sroa.28.0193.i
  %i.qp = and <2 x i64> %i.qo, %i.hw              ; 2 uses
  %i.qq = xor <2 x i64> %i.qp, %i.hk              ; 3 uses
  %i.qr = xor <2 x i64> %i.qp, %.sroa.28.0193.i   ; 2 uses
  %i.qs = xor <2 x i64> %i.ho, %.sroa.29.0199.i
  %i.qt = and <2 x i64> %i.qs, %i.hw              ; 2 uses
  %i.qu = xor <2 x i64> %i.qt, %i.ho              ; 4 uses
  %i.qv = xor <2 x i64> %i.qt, %.sroa.29.0199.i
  %i.qw = and <2 x i64> %i.pg, %i.ic              ; 3 uses
  %i.qx = xor <2 x i64> %i.pc, %i.ij
  %i.qy = and <2 x i64> %i.qx, %i.qw              ; 2 uses
  %i.qz = xor <2 x i64> %i.ph, %i.qw              ; 2 uses
  %i.ra = xor <2 x i64> %i.pd, %i.qw
  %i.rb = xor <2 x i64> %i.qy, %i.qz
  %i.rc = and <2 x i64> %i.rb, %i.ra
  %i.rd = xor <2 x i64> %i.qy, %i.pd
  %i.re = or <2 x i64> %i.rd, %i.qz
  %i.rf = and <2 x i64> %i.po, %i.ic              ; 3 uses
  %i.rg = xor <2 x i64> %i.pk, %i.ij
  %i.rh = and <2 x i64> %i.rg, %i.rf              ; 2 uses
  %i.ri = xor <2 x i64> %i.pp, %i.rf              ; 2 uses
  %i.rj = xor <2 x i64> %i.pl, %i.rf
  %i.rk = xor <2 x i64> %i.rh, %i.ri
  %i.rl = and <2 x i64> %i.rk, %i.rj
  %i.rm = xor <2 x i64> %i.rh, %i.pl
  %i.rn = or <2 x i64> %i.rm, %i.ri
  %i.ro = and <2 x i64> %i.pw, %i.ic              ; 3 uses
  %i.rp = xor <2 x i64> %i.ps, %i.ij
  %i.rq = and <2 x i64> %i.rp, %i.ro              ; 2 uses
  %i.rr = xor <2 x i64> %i.px, %i.ro              ; 2 uses
  %i.rs = xor <2 x i64> %i.pt, %i.ro
  %i.rt = xor <2 x i64> %i.rq, %i.rr
  %i.ru = and <2 x i64> %i.rt, %i.rs
  %i.rv = xor <2 x i64> %i.rq, %i.pt
  %i.rw = or <2 x i64> %i.rv, %i.rr
  %i.rx = and <2 x i64> %i.qe, %i.ic              ; 3 uses
  %i.ry = xor <2 x i64> %i.qa, %i.ij
  %i.rz = and <2 x i64> %i.ry, %i.rx              ; 2 uses
  %i.sa = xor <2 x i64> %i.qf, %i.rx              ; 2 uses
  %i.sb = xor <2 x i64> %i.qb, %i.rx
  %i.sc = xor <2 x i64> %i.rz, %i.sa
  %i.sd = and <2 x i64> %i.sc, %i.sb
  %i.se = xor <2 x i64> %i.rz, %i.qb
  %i.sf = or <2 x i64> %i.se, %i.sa
  %i.sg = and <2 x i64> %i.qm, %i.ic              ; 3 uses
  %i.sh = xor <2 x i64> %i.qi, %i.ij
  %i.si = and <2 x i64> %i.sh, %i.sg              ; 2 uses
  %i.sj = xor <2 x i64> %i.qn, %i.sg              ; 2 uses
  %i.sk = xor <2 x i64> %i.qj, %i.sg
  %i.sl = xor <2 x i64> %i.si, %i.sj
  %i.sm = and <2 x i64> %i.sl, %i.sk
  %i.sn = xor <2 x i64> %i.si, %i.qj
  %i.so = or <2 x i64> %i.sn, %i.sj
  %i.sp = and <2 x i64> %i.qu, %i.ic              ; 3 uses
  %i.sq = xor <2 x i64> %i.qq, %i.ij
  %i.sr = and <2 x i64> %i.sq, %i.sp              ; 2 uses
  %i.ss = xor <2 x i64> %i.qv, %i.sp              ; 2 uses
  %i.st = xor <2 x i64> %i.qr, %i.sp
  %i.su = xor <2 x i64> %i.sr, %i.ss
  %i.sv = and <2 x i64> %i.su, %i.st
  %i.sw = xor <2 x i64> %i.sr, %i.qr
  %i.sx = or <2 x i64> %i.sw, %i.ss
  %i.sy = add nuw nsw i64 %.025230.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.sy, 1399
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !73

poly3_invert_vec.exit:                            ; preds = %bb.b, %.split.preheader.i.i
  %i.sz = phi i64 [ %i.es, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.ta = phi i64 [ %i.eu, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tb = phi i64 [ %i.ew, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tc = phi i64 [ %i.ey, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.td = phi i64 [ %i.fa, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.te = phi i64 [ %i.fc, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tf = phi i64 [ %i.fe, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tg = phi i64 [ %i.fg, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.th = phi i64 [ %i.fi, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.ti = phi i64 [ %i.fj, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tj = phi i64 [ %i.fk, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tk = phi i64 [ %i.cu, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tl = phi i64 [ %i.cw, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tm = phi i64 [ %i.cy, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tn = phi i64 [ %i.da, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.to = phi i64 [ %i.dc, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tp = phi i64 [ %i.de, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tq = phi i64 [ %i.dg, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tr = phi i64 [ %i.di, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.ts = phi i64 [ %i.dk, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tt = phi i64 [ %i.dm, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tu = phi i64 [ %i.dn, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.9167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.29161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.24158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.19155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.14152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.9149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.29179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.19173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.14170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.tk, ptr %i.tv, align 8, !tbaa !17
  store i64 %i.tl, ptr %i.tw, align 8, !tbaa !17
  store i64 %i.tm, ptr %.sroa.9149.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tn, ptr %i.tx, align 8, !tbaa !17
  store i64 %i.to, ptr %.sroa.14152.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tp, ptr %i.ty, align 8, !tbaa !17
  store i64 %i.tq, ptr %.sroa.19155.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tr, ptr %i.tz, align 8, !tbaa !17
  store i64 %i.ts, ptr %.sroa.24158.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tt, ptr %i.ua, align 8, !tbaa !17
  store i64 %i.tu, ptr %.sroa.29161.0..sroa_idx.i, align 8, !tbaa !17
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.sz, ptr %0, align 8, !tbaa !17
  store i64 %i.ta, ptr %i.ub, align 8, !tbaa !17
  store i64 %i.tb, ptr %.sroa.9167.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tc, ptr %i.uc, align 8, !tbaa !17
  store i64 %i.td, ptr %.sroa.14170.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.te, ptr %i.ud, align 8, !tbaa !17
  store i64 %i.tf, ptr %.sroa.19173.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.tg, ptr %i.ue, align 8, !tbaa !17
  store i64 %i.th, ptr %.sroa.24176.0..sroa_idx.i, align 8, !tbaa !17
  store i64 %i.ti, ptr %i.uf, align 8, !tbaa !17
  store i64 %i.tj, ptr %.sroa.29179.0..sroa_idx.i, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @HRSS_generate_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.poly_vec, align 16          ; 4 uses
  %4 = alloca %struct.poly_vec, align 16          ; 4 uses
  %5 = alloca %struct.poly_vec, align 16          ; 5 uses
  %6 = alloca %struct.poly_vec, align 16          ; 4 uses
  %7 = alloca %struct.poly_vec, align 16          ; 4 uses
  %8 = alloca %struct.poly_vec, align 16          ; 5 uses
  %9 = alloca %struct.poly_vec, align 16          ; 4 uses
  %10 = alloca %struct.poly_vec, align 16         ; 4 uses
  %11 = alloca %struct.poly_vec, align 16         ; 5 uses
  %12 = alloca %struct.poly_vec, align 16         ; 4 uses
  %13 = alloca %struct.poly_vec, align 16         ; 4 uses
  %14 = alloca %struct.poly_vec, align 16         ; 5 uses
end_hunk_0
begin_hunk_1_@HRSS_generate_key:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.m, i64 37316
  %i.ic = load i16, ptr %i.ib, align 4, !tbaa !24 ; 2 uses
  %i.id = mul i16 %i.ic, %i.hy
  %i.ie = add i16 %i.id, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.m, i64 37318
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !24 ; 2 uses
  %i.ih = mul i16 %i.ig, %i.ic
  %i.ii = add i16 %i.ih, %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.m, i64 37320
  %i.ik = load i16, ptr %i.ij, align 8, !tbaa !24 ; 2 uses
  %i.il = mul i16 %i.ik, %i.ig
  %i.im = add i16 %i.il, %i.ii
  %i.in = getelementptr inbounds nuw i8, ptr %i.m, i64 37322
  %i.io = load i16, ptr %i.in, align 2, !tbaa !24 ; 2 uses
  %i.ip = mul i16 %i.io, %i.ik
  %i.iq = add i16 %i.ip, %i.im
  %i.ir = getelementptr inbounds nuw i8, ptr %i.m, i64 37324
  %i.is = load i16, ptr %i.ir, align 4, !tbaa !24 ; 2 uses
  %i.it = mul i16 %i.is, %i.io
  %i.iu = add i16 %i.it, %i.iq
  %i.iv = getelementptr inbounds nuw i8, ptr %i.m, i64 37326
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !24 ; 2 uses
  %i.ix = mul i16 %i.iw, %i.is
  %i.iy = add i16 %i.ix, %i.iu
  %i.iz = getelementptr inbounds nuw i8, ptr %i.m, i64 37328
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !24 ; 2 uses
  %i.jb = mul i16 %i.ja, %i.iw
  %i.jc = add i16 %i.jb, %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %i.m, i64 37330
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !24 ; 2 uses
  %i.jf = mul i16 %i.je, %i.ja
  %i.jg = add i16 %i.jf, %i.jc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.m, i64 37332
  %i.ji = load i16, ptr %i.jh, align 4, !tbaa !24 ; 2 uses
  %i.jj = mul i16 %i.ji, %i.je
  %i.jk = add i16 %i.jj, %i.jg
  %i.jl = getelementptr inbounds nuw i8, ptr %i.m, i64 37334
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !24
  %i.jn = mul i16 %i.jm, %i.ji
  %i.jo = add i16 %i.jn, %i.jk
  %i.jp = ashr i16 %i.jo, 15
  %i.jq = or i16 %i.jp, 1                         ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %scalar.ph216
  %indvars.iv24.i58 = phi i64 [ 0, %scalar.ph216 ], [ %indvars.iv.next25.i59.2, %bb.h ] ; 5 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv24.i58 ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !24
  %i.jt = mul i16 %i.js, %i.jq
  store i16 %i.jt, ptr %i.jr, align 2, !tbaa !24
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv24.i58
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !24
  %i.jx = mul i16 %i.jw, %i.jq
  store i16 %i.jx, ptr %i.jv, align 2, !tbaa !24
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %indvars.iv24.i58
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !24
  %i.kb = mul i16 %i.ka, %i.jq
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !24
  %indvars.iv.next25.i59.2 = add nuw nsw i64 %indvars.iv24.i58, 6
  %i.kc = icmp samesign ult i64 %indvars.iv24.i58, 695
  br i1 %i.kc, label %bb.h, label %vector.body232, !llvm.loop !79

vector.body232:                                   ; preds = %bb.h, %vector.body232.1
  %index233 = phi i64 [ %index.next236.1, %vector.body232.1 ], [ 0, %bb.h ] ; 4 uses
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %index233 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %wide.load234 = load <8 x i16>, ptr %i.kd, align 2, !tbaa !24
  %wide.load235 = load <8 x i16>, ptr %i.ke, align 2, !tbaa !24
  %i.kf = mul <8 x i16> %wide.load234, splat (i16 3)
  %i.kg = mul <8 x i16> %wide.load235, splat (i16 3)
  store <8 x i16> %i.kf, ptr %i.kd, align 2, !tbaa !24
  store <8 x i16> %i.kg, ptr %i.ke, align 2, !tbaa !24
  %i.kh = icmp eq i64 %index233, 672
  br i1 %i.kh, label %vec.epilog.vector.body, label %vector.body232.1

vector.body232.1:                                 ; preds = %vector.body232
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %index233 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 48 ; 2 uses
  %wide.load234.1 = load <8 x i16>, ptr %i.kj, align 2, !tbaa !24
  %wide.load235.1 = load <8 x i16>, ptr %i.kk, align 2, !tbaa !24
  %i.kl = mul <8 x i16> %wide.load234.1, splat (i16 3)
  %i.km = mul <8 x i16> %wide.load235.1, splat (i16 3)
  store <8 x i16> %i.kl, ptr %i.kj, align 2, !tbaa !24
  store <8 x i16> %i.km, ptr %i.kk, align 2, !tbaa !24
  %index.next236.1 = add nuw nsw i64 %index233, 32
  br label %vector.body232

vec.epilog.vector.body:                           ; preds = %vector.body232
  %i.kn = getelementptr inbounds nuw i8, ptr %i.m, i64 37312 ; 2 uses
  %wide.load239 = load <4 x i16>, ptr %i.kn, align 8, !tbaa !24
  %i.ko = mul <4 x i16> %wide.load239, splat (i16 3)
  store <4 x i16> %i.ko, ptr %i.kn, align 8, !tbaa !24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 37320 ; 2 uses
  %wide.load239.1 = load <4 x i16>, ptr %i.kp, align 8, !tbaa !24
  %i.kq = mul <4 x i16> %wide.load239.1, splat (i16 3)
  store <4 x i16> %i.kq, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.m, i64 37328 ; 2 uses
  %wide.load239.2 = load <4 x i16>, ptr %i.kr, align 8, !tbaa !24
  %i.ks = mul <4 x i16> %wide.load239.2, splat (i16 3)
  store <4 x i16> %i.ks, ptr %i.kr, align 8, !tbaa !24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.m, i64 37336 ; 2 uses
  %i.ku = load i16, ptr %i.kt, align 8, !tbaa !24
  %i.kv = mul i16 %i.ku, 3                        ; 2 uses
  store i16 %i.kv, ptr %i.kt, align 8, !tbaa !24
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245.1, %vec.epilog.vector.body
  %index246 = phi i64 [ 0, %vec.epilog.vector.body ], [ %index.next251.1, %vector.body245.1 ] ; 4 uses
  %i.kw = sub nuw nsw i64 700, %index246
  %i.kx = getelementptr [2 x i8], ptr %i.fn, i64 %i.kw ; 4 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 -16
  %i.kz = getelementptr i8, ptr %i.kx, i64 -32
  %wide.load247 = load <8 x i16>, ptr %i.ky, align 2, !tbaa !24
  %wide.load248 = load <8 x i16>, ptr %i.kz, align 2, !tbaa !24
  %i.la = getelementptr i8, ptr %i.kx, i64 -14    ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kx, i64 -30    ; 2 uses
  %wide.load249 = load <8 x i16>, ptr %i.la, align 2, !tbaa !24
  %wide.load250 = load <8 x i16>, ptr %i.lb, align 2, !tbaa !24
  %i.lc = sub <8 x i16> %wide.load247, %wide.load249
  %i.ld = sub <8 x i16> %wide.load248, %wide.load250
  store <8 x i16> %i.lc, ptr %i.la, align 2, !tbaa !24
  store <8 x i16> %i.ld, ptr %i.lb, align 2, !tbaa !24
  %i.le = icmp eq i64 %index246, 672
  br i1 %i.le, label %vec.epilog.vector.body258, label %vector.body245.1

vector.body245.1:                                 ; preds = %vector.body245
  %i.lf = sub nuw nsw i64 684, %index246
  %i.lg = getelementptr [2 x i8], ptr %i.fn, i64 %i.lf ; 4 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -16
  %i.li = getelementptr i8, ptr %i.lg, i64 -32
  %wide.load247.1 = load <8 x i16>, ptr %i.lh, align 2, !tbaa !24
  %wide.load248.1 = load <8 x i16>, ptr %i.li, align 2, !tbaa !24
  %i.lj = getelementptr i8, ptr %i.lg, i64 -14    ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lg, i64 -30    ; 2 uses
  %wide.load249.1 = load <8 x i16>, ptr %i.lj, align 2, !tbaa !24
  %wide.load250.1 = load <8 x i16>, ptr %i.lk, align 2, !tbaa !24
  %i.ll = sub <8 x i16> %wide.load247.1, %wide.load249.1
  %i.lm = sub <8 x i16> %wide.load248.1, %wide.load250.1
  store <8 x i16> %i.ll, ptr %i.lj, align 2, !tbaa !24
  store <8 x i16> %i.lm, ptr %i.lk, align 2, !tbaa !24
  %index.next251.1 = add nuw nsw i64 %index246, 32
  br label %vector.body245

vec.epilog.vector.body258:                        ; preds = %vector.body245
  %i.ln = getelementptr i8, ptr %i.m, i64 35952
  %wide.load260 = load <4 x i16>, ptr %i.ln, align 8, !tbaa !24
  %i.lo = getelementptr i8, ptr %i.m, i64 35954   ; 2 uses
  %wide.load261 = load <4 x i16>, ptr %i.lo, align 2, !tbaa !24
  %i.lp = sub <4 x i16> %wide.load260, %wide.load261
  store <4 x i16> %i.lp, ptr %i.lo, align 2, !tbaa !24
  %i.lq = getelementptr i8, ptr %i.m, i64 35944
  %wide.load260.1 = load <4 x i16>, ptr %i.lq, align 8, !tbaa !24
  %i.lr = getelementptr i8, ptr %i.m, i64 35946   ; 2 uses
  %wide.load261.1 = load <4 x i16>, ptr %i.lr, align 2, !tbaa !24
  %i.ls = sub <4 x i16> %wide.load260.1, %wide.load261.1
  store <4 x i16> %i.ls, ptr %i.lr, align 2, !tbaa !24
  %i.lt = getelementptr i8, ptr %i.m, i64 35936
  %wide.load260.2 = load <4 x i16>, ptr %i.lt, align 8, !tbaa !24
  %i.lu = getelementptr i8, ptr %i.m, i64 35938   ; 2 uses
  %wide.load261.2 = load <4 x i16>, ptr %i.lu, align 2, !tbaa !24
  %i.lv = sub <4 x i16> %wide.load260.2, %wide.load261.2
  store <4 x i16> %i.lv, ptr %i.lu, align 2, !tbaa !24
  %i.lw = load i16, ptr %i.fn, align 16, !tbaa !24
  %i.lx = sub i16 %i.kv, %i.lw
  store i16 %i.lx, ptr %i.fn, align 16, !tbaa !24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.m, i64 37344 ; 6 uses
  %i.lz = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.ma = and i32 %i.lz, 32
  %.not.i62 = icmp eq i32 %i.ma, 0
  br i1 %.not.i62, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vec.epilog.vector.body258
  tail call void @poly_Rq_mul(ptr noundef nonnull %i.ly, ptr noundef nonnull %i.r, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.m) #10
  %i.mb = getelementptr inbounds nuw i8, ptr %i.m, i64 38746
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.mb, i8 0, i64 6, i1 false)
  br label %iter.check274

bb.j:                                             ; preds = %vec.epilog.vector.body258
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %25, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.r, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %26, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fn, i64 1408, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.m, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.mc, ptr noundef %25, ptr noundef %26, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %27, i8 0, i64 1408, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.020.i.i = phi i64 [ 0, %bb.j ], [ %i.mo, %bb.k ] ; 3 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 1392
  %i.mf = load <16 x i8>, ptr %i.me, align 16, !tbaa !22
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 1408
  %i.mh = load <16 x i8>, ptr %i.mg, align 16, !tbaa !22
  %i.mi = load <8 x i16>, ptr %i.md, align 16, !tbaa !22
  %i.mj = shufflevector <16 x i8> %i.mf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %28 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.mh, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.mk = or <16 x i8> %28, %i.mj
  %i.ml = bitcast <16 x i8> %i.mk to <8 x i16>
  %i.mm = add <8 x i16> %i.mi, %i.ml
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %27, i64 %.020.i.i
  store <8 x i16> %i.mm, ptr %i.mn, align 16, !tbaa !22
  %i.mo = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i63 = icmp eq i64 %i.mo, 88
  br i1 %exitcond.not.i.i63, label %poly_mul_vec.exit.i, label %bb.k, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %i.ly, ptr noundef nonnull readonly align 16 dereferenceable(1408) %27, i64 1402, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.m, i64 38746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.mp, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #10
  br label %iter.check274

iter.check274:                                    ; preds = %bb.i, %poly_mul_vec.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #10
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268.1, %iter.check274
  %index269 = phi i64 [ 0, %iter.check274 ], [ %index.next272.1, %vector.body268.1 ] ; 5 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %index269 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load270 = load <8 x i16>, ptr %i.mq, align 2, !tbaa !24
  %wide.load271 = load <8 x i16>, ptr %i.mr, align 2, !tbaa !24
  %i.ms = sub <8 x i16> zeroinitializer, %wide.load270
  %i.mt = sub <8 x i16> zeroinitializer, %wide.load271
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %index269 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <8 x i16> %i.ms, ptr %i.mu, align 16, !tbaa !24
  store <8 x i16> %i.mt, ptr %i.mv, align 16, !tbaa !24
  %i.mw = icmp eq i64 %index269, 672
  br i1 %i.mw, label %vec.epilog.vector.body279, label %vector.body268.1

vector.body268.1:                                 ; preds = %vector.body268
  %index.next272 = or disjoint i64 %index269, 16  ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %index.next272 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load270.1 = load <8 x i16>, ptr %i.mx, align 2, !tbaa !24
  %wide.load271.1 = load <8 x i16>, ptr %i.my, align 2, !tbaa !24
  %i.mz = sub <8 x i16> zeroinitializer, %wide.load270.1
  %i.na = sub <8 x i16> zeroinitializer, %wide.load271.1
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %index.next272 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <8 x i16> %i.mz, ptr %i.nb, align 16, !tbaa !24
  store <8 x i16> %i.na, ptr %i.nc, align 16, !tbaa !24
  %index.next272.1 = add nuw nsw i64 %index269, 32
  br label %vector.body268

vec.epilog.vector.body279:                        ; preds = %vector.body268
  %i.nd = getelementptr inbounds nuw i8, ptr %i.m, i64 38720
  %wide.load281 = load <4 x i16>, ptr %i.nd, align 16, !tbaa !24
  %i.ne = sub <4 x i16> zeroinitializer, %wide.load281
  %i.nf = getelementptr inbounds nuw i8, ptr %23, i64 1376
  store <4 x i16> %i.ne, ptr %i.nf, align 16, !tbaa !24
  %i.ng = getelementptr inbounds nuw i8, ptr %i.m, i64 38728
  %wide.load281.1 = load <4 x i16>, ptr %i.ng, align 8, !tbaa !24
  %i.nh = sub <4 x i16> zeroinitializer, %wide.load281.1
  %i.ni = getelementptr inbounds nuw i8, ptr %23, i64 1384
  store <4 x i16> %i.nh, ptr %i.ni, align 8, !tbaa !24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.m, i64 38736
  %wide.load281.2 = load <4 x i16>, ptr %i.nj, align 16, !tbaa !24
  %i.nk = sub <4 x i16> zeroinitializer, %wide.load281.2
  %i.nl = getelementptr inbounds nuw i8, ptr %23, i64 1392
  store <4 x i16> %i.nk, ptr %i.nl, align 16, !tbaa !24
  %i.nm = getelementptr inbounds nuw i8, ptr %i.m, i64 38744
  %i.nn = load i16, ptr %i.nm, align 8, !tbaa !24
  %i.no = sub i16 0, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %23, i64 1400
  store i16 %i.no, ptr %i.np, align 8, !tbaa !24
  %i.nq = getelementptr inbounds nuw i8, ptr %23, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.nq, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %21, i8 0, i64 88, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %vec.epilog.vector.body279
  %indvars.iv.i.i.i = phi i64 [ 0, %vec.epilog.vector.body279 ], [ %indvars.iv.next.i.i.i.1, %bb.q ] ; 4 uses
  %.01522.i.i.i = phi i64 [ 0, %vec.epilog.vector.body279 ], [ %.1.i.i.i.1, %bb.q ]
  %.01621.i.i.i = phi i32 [ 0, %vec.epilog.vector.body279 ], [ %.117.i.i.i.1, %bb.q ]
  %.01820.i.i.i = phi ptr [ %22, %vec.epilog.vector.body279 ], [ %.119.i.i.i.1, %bb.q ] ; 3 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %indvars.iv.i.i.i
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !24
  %i.nt = zext i16 %i.ns to i64
  %i.nu = call i64 @llvm.fshl.i64(i64 %i.nt, i64 %.01522.i.i.i, i64 63) ; 2 uses
  %i.nv = add i32 %.01621.i.i.i, 1                ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 64
  br i1 %i.nw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.nu, ptr %.01820.i.i.i, align 8, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %.01820.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.119.i.i.i = phi ptr [ %i.nx, %bb.m ], [ %.01820.i.i.i, %bb.l ] ; 4 uses
  %.117.i.i.i = phi i32 [ 0, %bb.m ], [ %i.nv, %bb.l ] ; 2 uses
  %.1.i.i.i = phi i64 [ 0, %bb.m ], [ %i.nu, %bb.l ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 700
  br i1 %exitcond.not.i.i.i, label %poly2_from_poly.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.ly, i64 %indvars.iv.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !24
  %i.ob = zext i16 %i.oa to i64
  %i.oc = call i64 @llvm.fshl.i64(i64 %i.ob, i64 %.1.i.i.i, i64 63) ; 2 uses
  %i.od = add i32 %.117.i.i.i, 1                  ; 2 uses
  %i.oe = icmp eq i32 %i.od, 64
  br i1 %i.oe, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.oc, ptr %.119.i.i.i, align 8, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i.i.i.1 = phi ptr [ %i.of, %bb.p ], [ %.119.i.i.i, %bb.o ]
  %.117.i.i.i.1 = phi i32 [ 0, %bb.p ], [ %i.od, %bb.o ]
  %.1.i.i.i.1 = phi i64 [ 0, %bb.p ], [ %i.oc, %bb.o ]
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  br label %bb.l

poly2_from_poly.exit.i.i:                         ; preds = %bb.n
  %i.og = zext i32 %.117.i.i.i to i64
  %i.oh = sub nsw i64 64, %i.og
  %i.oi = lshr i64 %.1.i.i.i, %i.oh
  store i64 %i.oi, ptr %.119.i.i.i, align 8, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 16, !tbaa !17 ; 2 uses
  %i.ol = shl i64 %i.ok, 3
  %i.om = ashr i64 %i.ol, 63                      ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.oq = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.os = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.ow = xor i64 %i.om, %i.ok
  %i.ox = load <2 x i64>, ptr %22, align 16, !tbaa !17
  %i.oy = insertelement <2 x i64> poison, i64 %i.om, i64 0
  %i.oz = shufflevector <2 x i64> %i.oy, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.pa = xor <2 x i64> %i.oz, %i.ox
  %i.pb = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pa) ; 2 uses
  %i.pc = load <2 x i64>, ptr %i.oo, align 16, !tbaa !17
  %i.pd = xor <2 x i64> %i.pc, %i.oz
  %i.pe = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pd) ; 2 uses
  %i.pf = load <2 x i64>, ptr %i.oq, align 16, !tbaa !17
  %i.pg = xor <2 x i64> %i.pf, %i.oz
  %i.ph = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pg) ; 2 uses
  %i.pi = load <2 x i64>, ptr %i.os, align 16, !tbaa !17
  %i.pj = xor <2 x i64> %i.pi, %i.oz
  %i.pk = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pj) ; 2 uses
  %i.pl = load <2 x i64>, ptr %i.ou, align 16, !tbaa !17
  %i.pm = xor <2 x i64> %i.pl, %i.oz
  %i.pn = call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pm) ; 2 uses
  %i.po = call noundef i64 @llvm.bitreverse.i64(i64 %i.ow)
  %i.pp = extractelement <2 x i64> %i.pn, i64 1   ; 2 uses
  %i.pq = call i64 @llvm.fshl.i64(i64 %i.pp, i64 %i.po, i64 60)
  %i.pr = extractelement <2 x i64> %i.pn, i64 0   ; 2 uses
  %i.ps = call i64 @llvm.fshl.i64(i64 %i.pr, i64 %i.pp, i64 60)
  %i.pt = extractelement <2 x i64> %i.pk, i64 1   ; 2 uses
  %i.pu = call i64 @llvm.fshl.i64(i64 %i.pt, i64 %i.pr, i64 60)
  %i.pv = extractelement <2 x i64> %i.pk, i64 0   ; 2 uses
  %i.pw = call i64 @llvm.fshl.i64(i64 %i.pv, i64 %i.pt, i64 60)
  %i.px = extractelement <2 x i64> %i.ph, i64 1   ; 2 uses
  %i.py = call i64 @llvm.fshl.i64(i64 %i.px, i64 %i.pv, i64 60)
  %i.pz = extractelement <2 x i64> %i.ph, i64 0   ; 2 uses
  %i.qa = call i64 @llvm.fshl.i64(i64 %i.pz, i64 %i.px, i64 60)
  %i.qb = extractelement <2 x i64> %i.pe, i64 1   ; 2 uses
  %i.qc = call i64 @llvm.fshl.i64(i64 %i.qb, i64 %i.pz, i64 60)
  %i.qd = extractelement <2 x i64> %i.pe, i64 0   ; 2 uses
  %i.qe = call i64 @llvm.fshl.i64(i64 %i.qd, i64 %i.qb, i64 60)
  %i.qf = extractelement <2 x i64> %i.pb, i64 1   ; 2 uses
  %i.qg = call i64 @llvm.fshl.i64(i64 %i.qf, i64 %i.qd, i64 60)
  %i.qh = extractelement <2 x i64> %i.pb, i64 0   ; 2 uses
  %i.qi = call i64 @llvm.fshl.i64(i64 %i.qh, i64 %i.qf, i64 60)
  %i.qj = lshr i64 %i.qh, 4
  %i.qk = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 2 uses
  %.promoted.i.i = load i64, ptr %21, align 8, !tbaa !17
  %.promoted92.i.i = load i64, ptr %i.qk, align 8, !tbaa !17
  %.promoted94.i.i = load i64, ptr %i.ql, align 8, !tbaa !17
  %.promoted96.i.i = load i64, ptr %i.qm, align 8, !tbaa !17
end_hunk_1
begin_hunk_2_@HRSS_generate_key:bb.a
  %i.tt = and i64 %i.tp, %.sroa.0.0145.i.i
  %i.tu = sub nsw i64 0, %i.tt                    ; 22 uses
  %i.tv = sub nsw i32 0, %.0157.i.i
  %i.tw = zext i32 %i.tv to i64
  %i.tx = zext i32 %.0157.i.i to i64
  %i.ty = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ts) #11, !srcloc !21
  %i.tz = and i64 %i.ty, %i.tw
  %i.ua = xor i64 %i.ts, -1
  %i.ub = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ua) #11, !srcloc !21
  %i.uc = and i64 %i.ub, %i.tx
  %i.ud = or i64 %i.uc, %i.tz
  %i.ue = trunc nuw i64 %i.ud to i32
  %i.uf = add nsw i32 %i.ue, 1
  %i.ug = xor i64 %i.st, %.sroa.0.0145.i.i
  %i.uh = and i64 %i.ts, %i.ug                    ; 2 uses
  %i.ui = xor i64 %i.uh, %.sroa.0.0145.i.i        ; 2 uses
  %i.uj = xor i64 %i.su, %.sroa.7.0146.i.i
  %i.uk = and i64 %i.uj, %i.ts                    ; 2 uses
  %i.ul = xor i64 %i.uk, %.sroa.7.0146.i.i        ; 2 uses
  %i.um = xor i64 %i.sv, %.sroa.10.0147.i.i
  %i.un = and i64 %i.um, %i.ts                    ; 2 uses
  %i.uo = xor i64 %i.un, %.sroa.10.0147.i.i       ; 2 uses
  %i.up = xor i64 %i.sw, %.sroa.13.0148.i.i
  %i.uq = and i64 %i.up, %i.ts                    ; 2 uses
  %i.ur = xor i64 %i.uq, %.sroa.13.0148.i.i       ; 2 uses
  %i.us = xor i64 %i.sx, %.sroa.16.0149.i.i
  %i.ut = and i64 %i.us, %i.ts                    ; 2 uses
  %i.uu = xor i64 %i.ut, %.sroa.16.0149.i.i       ; 2 uses
  %i.uv = xor i64 %i.sy, %.sroa.19.0150.i.i
  %i.uw = and i64 %i.uv, %i.ts                    ; 2 uses
  %i.ux = xor i64 %i.uw, %.sroa.19.0150.i.i       ; 2 uses
  %i.uy = xor i64 %i.sz, %.sroa.22.0151.i.i
  %i.uz = and i64 %i.uy, %i.ts                    ; 2 uses
  %i.va = xor i64 %i.uz, %.sroa.22.0151.i.i       ; 2 uses
  %i.vb = xor i64 %i.ta, %.sroa.25.0152.i.i
  %i.vc = and i64 %i.vb, %i.ts                    ; 2 uses
  %i.vd = xor i64 %i.vc, %.sroa.25.0152.i.i       ; 2 uses
  %i.ve = xor i64 %i.tb, %.sroa.28.0153.i.i
  %i.vf = and i64 %i.ve, %i.ts                    ; 2 uses
  %i.vg = xor i64 %i.vf, %.sroa.28.0153.i.i       ; 2 uses
  %i.vh = xor i64 %i.tc, %.sroa.31.0154.i.i
  %i.vi = and i64 %i.vh, %i.ts                    ; 2 uses
  %i.vj = xor i64 %i.vi, %.sroa.31.0154.i.i       ; 2 uses
  %i.vk = xor i64 %i.td, %.sroa.34.0155.i.i
  %i.vl = and i64 %i.vk, %i.ts                    ; 2 uses
  %i.vm = xor i64 %i.vl, %.sroa.34.0155.i.i       ; 2 uses
  %i.vn = and i64 %i.ui, %i.tu
  %i.vo = xor i64 %i.st, %i.vn
  %i.vp = xor i64 %i.vo, %i.uh
  %i.vq = and i64 %i.ul, %i.tu
  %i.vr = xor i64 %i.su, %i.vq
  %i.vs = xor i64 %i.vr, %i.uk                    ; 2 uses
  %i.vt = and i64 %i.uo, %i.tu
  %i.vu = xor i64 %i.sv, %i.vt
  %i.vv = xor i64 %i.vu, %i.un                    ; 2 uses
  %i.vw = and i64 %i.ur, %i.tu
  %i.vx = xor i64 %i.sw, %i.vw
  %i.vy = xor i64 %i.vx, %i.uq                    ; 2 uses
  %i.vz = and i64 %i.uu, %i.tu
  %i.wa = xor i64 %i.sx, %i.vz
  %i.wb = xor i64 %i.wa, %i.ut                    ; 2 uses
  %i.wc = and i64 %i.ux, %i.tu
  %i.wd = xor i64 %i.sy, %i.wc
  %i.we = xor i64 %i.wd, %i.uw                    ; 2 uses
  %i.wf = and i64 %i.va, %i.tu
  %i.wg = xor i64 %i.sz, %i.wf
  %i.wh = xor i64 %i.wg, %i.uz                    ; 2 uses
  %i.wi = and i64 %i.vd, %i.tu
  %i.wj = xor i64 %i.ta, %i.wi
  %i.wk = xor i64 %i.wj, %i.vc                    ; 2 uses
  %i.wl = and i64 %i.vg, %i.tu
  %i.wm = xor i64 %i.tb, %i.wl
  %i.wn = xor i64 %i.wm, %i.vf                    ; 2 uses
  %i.wo = and i64 %i.vj, %i.tu
  %i.wp = xor i64 %i.tc, %i.wo
  %i.wq = xor i64 %i.wp, %i.vi                    ; 2 uses
  %i.wr = and i64 %i.vm, %i.tu
  %i.ws = xor i64 %i.td, %i.wr
  %i.wt = xor i64 %i.ws, %i.vl                    ; 2 uses
  %i.wu = lshr i64 %i.wt, 1                       ; 2 uses
  %i.wv = call i64 @llvm.fshl.i64(i64 %i.wt, i64 %i.wq, i64 63) ; 2 uses
  %i.ww = call i64 @llvm.fshl.i64(i64 %i.wq, i64 %i.wn, i64 63) ; 2 uses
  %i.wx = call i64 @llvm.fshl.i64(i64 %i.wn, i64 %i.wk, i64 63) ; 2 uses
  %i.wy = call i64 @llvm.fshl.i64(i64 %i.wk, i64 %i.wh, i64 63) ; 2 uses
  %i.wz = call i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.we, i64 63) ; 2 uses
  %i.xa = call i64 @llvm.fshl.i64(i64 %i.we, i64 %i.wb, i64 63) ; 2 uses
  %i.xb = call i64 @llvm.fshl.i64(i64 %i.wb, i64 %i.vy, i64 63) ; 2 uses
  %i.xc = call i64 @llvm.fshl.i64(i64 %i.vy, i64 %i.vv, i64 63) ; 2 uses
  %i.xd = call i64 @llvm.fshl.i64(i64 %i.vv, i64 %i.vs, i64 63) ; 2 uses
  %i.xe = call i64 @llvm.fshl.i64(i64 %i.vs, i64 %i.vp, i64 63)
  %i.xf = xor i64 %i.te, %.sroa.047.0134.i.i
  %i.xg = and i64 %i.ts, %i.xf                    ; 2 uses
  %i.xh = xor i64 %i.xg, %i.te                    ; 3 uses
  %i.xi = xor i64 %i.tf, %.sroa.9.0135.i.i
  %i.xj = and i64 %i.ts, %i.xi                    ; 2 uses
  %i.xk = xor i64 %i.xj, %i.tf                    ; 3 uses
  %i.xl = xor i64 %i.tg, %.sroa.14.0136.i.i
  %i.xm = and i64 %i.ts, %i.xl                    ; 2 uses
  %i.xn = xor i64 %i.xm, %i.tg                    ; 3 uses
  %i.xo = xor i64 %i.th, %.sroa.1954.0137.i.i
  %i.xp = and i64 %i.ts, %i.xo                    ; 2 uses
  %i.xq = xor i64 %i.xp, %i.th                    ; 3 uses
  %i.xr = xor i64 %i.ti, %.sroa.24.0138.i.i
  %i.xs = and i64 %i.ts, %i.xr                    ; 2 uses
  %i.xt = xor i64 %i.xs, %i.ti                    ; 3 uses
  %i.xu = xor i64 %i.tj, %.sroa.29.0139.i.i
  %i.xv = and i64 %i.ts, %i.xu                    ; 2 uses
  %i.xw = xor i64 %i.xv, %i.tj                    ; 3 uses
  %i.xx = xor i64 %i.tk, %.sroa.3461.0140.i.i
  %i.xy = and i64 %i.ts, %i.xx                    ; 2 uses
  %i.xz = xor i64 %i.xy, %i.tk                    ; 3 uses
  %i.ya = xor i64 %i.tl, %.sroa.39.0141.i.i
  %i.yb = and i64 %i.ts, %i.ya                    ; 2 uses
  %i.yc = xor i64 %i.yb, %i.tl                    ; 3 uses
  %i.yd = xor i64 %i.tm, %.sroa.44.0142.i.i
  %i.ye = and i64 %i.ts, %i.yd                    ; 2 uses
  %i.yf = xor i64 %i.ye, %i.tm                    ; 3 uses
  %i.yg = xor i64 %i.tn, %.sroa.49.0143.i.i
  %i.yh = and i64 %i.ts, %i.yg                    ; 2 uses
  %i.yi = xor i64 %i.yh, %i.tn                    ; 3 uses
  %i.yj = xor i64 %i.to, %.sroa.54.0144.i.i
  %i.yk = and i64 %i.ts, %i.yj                    ; 2 uses
  %i.yl = xor i64 %i.yk, %i.to                    ; 3 uses
  %i.ym = and i64 %i.xh, %i.tu
  %i.yn = xor i64 %.sroa.047.0134.i.i, %i.ym
  %i.yo = xor i64 %i.yn, %i.xg
  %i.yp = and i64 %i.xk, %i.tu
  %i.yq = xor i64 %.sroa.9.0135.i.i, %i.yp
  %i.yr = xor i64 %i.yq, %i.xj
  %i.ys = and i64 %i.xn, %i.tu
  %i.yt = xor i64 %.sroa.14.0136.i.i, %i.ys
  %i.yu = xor i64 %i.yt, %i.xm
  %i.yv = and i64 %i.xq, %i.tu
  %i.yw = xor i64 %.sroa.1954.0137.i.i, %i.yv
  %i.yx = xor i64 %i.yw, %i.xp
  %i.yy = and i64 %i.xt, %i.tu
  %i.yz = xor i64 %.sroa.24.0138.i.i, %i.yy
  %i.za = xor i64 %i.yz, %i.xs
  %i.zb = and i64 %i.xw, %i.tu
  %i.zc = xor i64 %.sroa.29.0139.i.i, %i.zb
  %i.zd = xor i64 %i.zc, %i.xv
  %i.ze = and i64 %i.xz, %i.tu
  %i.zf = xor i64 %.sroa.3461.0140.i.i, %i.ze
  %i.zg = xor i64 %i.zf, %i.xy
  %i.zh = and i64 %i.yc, %i.tu
  %i.zi = xor i64 %.sroa.39.0141.i.i, %i.zh
  %i.zj = xor i64 %i.zi, %i.yb
  %i.zk = and i64 %i.yf, %i.tu
  %i.zl = xor i64 %.sroa.44.0142.i.i, %i.zk
  %i.zm = xor i64 %i.zl, %i.ye
  %i.zn = and i64 %i.yi, %i.tu
  %i.zo = xor i64 %.sroa.49.0143.i.i, %i.zn
  %i.zp = xor i64 %i.zo, %i.yh
  %i.zq = and i64 %i.yl, %i.tu
  %i.zr = xor i64 %.sroa.54.0144.i.i, %i.zq
  %i.zs = xor i64 %i.zr, %i.yk
  %i.zt = add nuw nsw i64 %.018156.i.i, 1         ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.zt, 1399
  br i1 %exitcond.not.i.i67, label %bb.r, label %bb.y, !llvm.loop !85

poly_invert_mod2.exit.i:                          ; preds = %bb.u
  %i.zu = getelementptr inbounds nuw i8, ptr %i.m, i64 40154 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zu, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  %i.zv = getelementptr inbounds nuw i8, ptr %24, i64 1402 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.m, i64 2816 ; 6 uses
  br label %bb.z

bb.z:                                             ; preds = %poly_mul.exit21.i, %poly_invert_mod2.exit.i
  %.043.i = phi i32 [ 0, %poly_invert_mod2.exit.i ], [ %i.abb, %poly_mul.exit21.i ]
  %i.zx = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.zy = and i32 %i.zx, 32
  %.not.i.i = icmp eq i32 %i.zy, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @poly_Rq_mul(ptr noundef nonnull %24, ptr noundef nonnull %23, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.m) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zv, i8 0, i64 6, i1 false)
  br label %poly_mul.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %18, ptr noundef nonnull readonly align 16 dereferenceable(1408) %23, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %19, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qu, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %18, ptr noundef %19, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %20, i8 0, i64 1408, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.020.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.aak, %bb.ac ] ; 3 uses
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i.i ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1392
  %i.aab = load <16 x i8>, ptr %i.aaa, align 16, !tbaa !22
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 1408
  %i.aad = load <16 x i8>, ptr %i.aac, align 16, !tbaa !22
  %i.aae = load <8 x i16>, ptr %i.zz, align 16, !tbaa !22
  %i.aaf = shufflevector <16 x i8> %i.aab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %29 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aad, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.aag = or <16 x i8> %29, %i.aaf
  %i.aah = bitcast <16 x i8> %i.aag to <8 x i16>
  %i.aai = add <8 x i16> %i.aae, %i.aah
  %i.aaj = getelementptr inbounds nuw [16 x i8], ptr %20, i64 %.020.i.i.i
  store <8 x i16> %i.aai, ptr %i.aaj, align 16, !tbaa !22
  %i.aak = add nuw nsw i64 %.020.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i16.i = icmp eq i64 %i.aak, 88
  br i1 %exitcond.not.i.i16.i, label %poly_mul_vec.exit.i.i, label %bb.ac, !llvm.loop !1

poly_mul_vec.exit.i.i:                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %24, ptr noundef nonnull readonly align 16 dereferenceable(1408) %20, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zv, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %poly_mul.exit.i

poly_mul.exit.i:                                  ; preds = %poly_mul_vec.exit.i.i, %bb.aa
  %i.aal = load i16, ptr %24, align 16, !tbaa !24
  %i.aam = add i16 %i.aal, 2
  store i16 %i.aam, ptr %24, align 16, !tbaa !24
  %i.aan = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.aao = and i32 %i.aan, 32
  %.not.i17.i = icmp eq i32 %i.aao, 0
  br i1 %.not.i17.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %poly_mul.exit.i
  call void @poly_Rq_mul(ptr noundef nonnull %i.qu, ptr noundef nonnull %i.qu, ptr noundef nonnull %24, ptr noundef nonnull %i.m) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zu, i8 0, i64 6, i1 false)
  br label %poly_mul.exit21.i

bb.ae:                                            ; preds = %poly_mul.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %15, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qu, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %16, ptr noundef nonnull readonly align 16 dereferenceable(1408) %24, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %15, ptr noundef %16, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %17, i8 0, i64 1408, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.020.i.i18.i = phi i64 [ 0, %bb.ae ], [ %i.aba, %bb.af ] ; 3 uses
  %i.aap = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i18.i ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 1392
  %i.aar = load <16 x i8>, ptr %i.aaq, align 16, !tbaa !22
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 1408
  %i.aat = load <16 x i8>, ptr %i.aas, align 16, !tbaa !22
  %i.aau = load <8 x i16>, ptr %i.aap, align 16, !tbaa !22
  %i.aav = shufflevector <16 x i8> %i.aar, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %30 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aat, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.aaw = or <16 x i8> %30, %i.aav
  %i.aax = bitcast <16 x i8> %i.aaw to <8 x i16>
  %i.aay = add <8 x i16> %i.aau, %i.aax
  %i.aaz = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %.020.i.i18.i
  store <8 x i16> %i.aay, ptr %i.aaz, align 16, !tbaa !22
  %i.aba = add nuw nsw i64 %.020.i.i18.i, 1       ; 2 uses
  %exitcond.not.i.i19.i = icmp eq i64 %i.aba, 88
  br i1 %exitcond.not.i.i19.i, label %poly_mul_vec.exit.i20.i, label %bb.af, !llvm.loop !1

poly_mul_vec.exit.i20.i:                          ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %i.qu, ptr noundef nonnull readonly align 16 dereferenceable(1408) %17, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.zu, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %poly_mul.exit21.i

poly_mul.exit21.i:                                ; preds = %poly_mul_vec.exit.i20.i, %bb.ad
  %i.abb = add nuw nsw i32 %.043.i, 1             ; 2 uses
  %exitcond65.not.i = icmp eq i32 %i.abb, 4
  br i1 %exitcond65.not.i, label %poly_invert.exit, label %bb.z, !llvm.loop !86

poly_invert.exit:                                 ; preds = %poly_mul.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #10
  %i.abc = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.abd = and i32 %i.abc, 32
  %.not.i68 = icmp eq i32 %i.abd, 0
  br i1 %.not.i68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %poly_invert.exit
  call void @poly_Rq_mul(ptr noundef %i.d, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.m) #10
  %i.abe = getelementptr inbounds nuw i8, ptr %i.d, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abe, i8 0, i64 6, i1 false)
  br label %poly_mul.exit72

bb.ah:                                            ; preds = %poly_invert.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %12, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qu, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %13, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fn, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %12, ptr noundef %13, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %14, i8 0, i64 1408, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.020.i.i69 = phi i64 [ 0, %bb.ah ], [ %i.abq, %bb.ai ] ; 3 uses
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i69 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 1392
  %i.abh = load <16 x i8>, ptr %i.abg, align 16, !tbaa !22
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 1408
  %i.abj = load <16 x i8>, ptr %i.abi, align 16, !tbaa !22
  %i.abk = load <8 x i16>, ptr %i.abf, align 16, !tbaa !22
  %i.abl = shufflevector <16 x i8> %i.abh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %31 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.abj, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.abm = or <16 x i8> %31, %i.abl
  %i.abn = bitcast <16 x i8> %i.abm to <8 x i16>
  %i.abo = add <8 x i16> %i.abk, %i.abn
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %.020.i.i69
  store <8 x i16> %i.abo, ptr %i.abp, align 16, !tbaa !22
  %i.abq = add nuw nsw i64 %.020.i.i69, 1         ; 2 uses
  %exitcond.not.i.i70 = icmp eq i64 %i.abq, 88
  br i1 %exitcond.not.i.i70, label %poly_mul_vec.exit.i71, label %bb.ai, !llvm.loop !1

poly_mul_vec.exit.i71:                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(1408) %14, i64 1402, i1 false)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.d, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abr, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %poly_mul.exit72

poly_mul.exit72:                                  ; preds = %bb.ag, %poly_mul_vec.exit.i71
  %i.abs = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.abt = and i32 %i.abs, 32
  %.not.i73 = icmp eq i32 %i.abt, 0
  br i1 %.not.i73, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %poly_mul.exit72
  call void @poly_Rq_mul(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.m) #10
  %i.abu = getelementptr inbounds nuw i8, ptr %i.d, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.abu, i8 0, i64 6, i1 false)
  br label %vector.body288.preheader

bb.ak:                                            ; preds = %poly_mul.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %9, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.d, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %10, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.fn, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %9, ptr noundef %10, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %11, i8 0, i64 1408, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.020.i.i74 = phi i64 [ 0, %bb.ak ], [ %i.acg, %bb.al ] ; 3 uses
  %i.abv = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i74 ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 1392
  %i.abx = load <16 x i8>, ptr %i.abw, align 16, !tbaa !22
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 1408
  %i.abz = load <16 x i8>, ptr %i.aby, align 16, !tbaa !22
  %i.aca = load <8 x i16>, ptr %i.abv, align 16, !tbaa !22
  %i.acb = shufflevector <16 x i8> %i.abx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %32 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.abz, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.acc = or <16 x i8> %32, %i.acb
  %i.acd = bitcast <16 x i8> %i.acc to <8 x i16>
  %i.ace = add <8 x i16> %i.aca, %i.acd
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.020.i.i74
  store <8 x i16> %i.ace, ptr %i.acf, align 16, !tbaa !22
  %i.acg = add nuw nsw i64 %.020.i.i74, 1         ; 2 uses
  %exitcond.not.i.i75 = icmp eq i64 %i.acg, 88
  br i1 %exitcond.not.i.i75, label %poly_mul_vec.exit.i76, label %bb.al, !llvm.loop !1

poly_mul_vec.exit.i76:                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(1408) %11, i64 1402, i1 false)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.d, i64 1402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ach, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %vector.body288.preheader

vector.body288.preheader:                         ; preds = %bb.aj, %poly_mul_vec.exit.i76
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288.1, %vector.body288.preheader
  %index289 = phi i64 [ 0, %vector.body288.preheader ], [ %index.next292.1, %vector.body288.1 ] ; 4 uses
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index289 ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16 ; 2 uses
  %wide.load290 = load <8 x i16>, ptr %i.aci, align 2, !tbaa !24
  %wide.load291 = load <8 x i16>, ptr %i.acj, align 2, !tbaa !24
  %i.ack = and <8 x i16> %wide.load290, splat (i16 8191)
  %i.acl = and <8 x i16> %wide.load291, splat (i16 8191)
  store <8 x i16> %i.ack, ptr %i.aci, align 2, !tbaa !24
  store <8 x i16> %i.acl, ptr %i.acj, align 2, !tbaa !24
  %i.acm = icmp eq i64 %index289, 672
  br i1 %i.acm, label %vec.epilog.vector.body299, label %vector.body288.1

vector.body288.1:                                 ; preds = %vector.body288
  %i.acn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index289 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 32 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acn, i64 48 ; 2 uses
  %wide.load290.1 = load <8 x i16>, ptr %i.aco, align 2, !tbaa !24
  %wide.load291.1 = load <8 x i16>, ptr %i.acp, align 2, !tbaa !24
  %i.acq = and <8 x i16> %wide.load290.1, splat (i16 8191)
  %i.acr = and <8 x i16> %wide.load291.1, splat (i16 8191)
  store <8 x i16> %i.acq, ptr %i.aco, align 2, !tbaa !24
  store <8 x i16> %i.acr, ptr %i.acp, align 2, !tbaa !24
  %index.next292.1 = add nuw nsw i64 %index289, 32
  br label %vector.body288

vec.epilog.vector.body299:                        ; preds = %vector.body288
  %i.acs = getelementptr inbounds nuw i8, ptr %i.d, i64 1376 ; 2 uses
  %wide.load301 = load <4 x i16>, ptr %i.acs, align 2, !tbaa !24
  %i.act = and <4 x i16> %wide.load301, splat (i16 8191)
  store <4 x i16> %i.act, ptr %i.acs, align 2, !tbaa !24
  %i.acu = getelementptr inbounds nuw i8, ptr %i.d, i64 1384 ; 2 uses
  %wide.load301.1 = load <4 x i16>, ptr %i.acu, align 2, !tbaa !24
  %i.acv = and <4 x i16> %wide.load301.1, splat (i16 8191)
  store <4 x i16> %i.acv, ptr %i.acu, align 2, !tbaa !24
  %i.acw = getelementptr inbounds nuw i8, ptr %i.d, i64 1392 ; 2 uses
  %wide.load301.2 = load <4 x i16>, ptr %i.acw, align 2, !tbaa !24
  %i.acx = and <4 x i16> %wide.load301.2, splat (i16 8191)
  store <4 x i16> %i.acx, ptr %i.acw, align 2, !tbaa !24
  %i.acy = getelementptr inbounds nuw i8, ptr %i.d, i64 1400 ; 2 uses
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !24
  %i.ada = and i16 %i.acz, 8191
  store i16 %i.ada, ptr %i.acy, align 2, !tbaa !24
  %i.adb = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 8 uses
  %i.adc = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.add = and i32 %i.adc, 32
  %.not.i81 = icmp eq i32 %i.add, 0
  br i1 %.not.i81, label %bb.an, label %bb.am

bb.am:                                            ; preds = %vec.epilog.vector.body299
  call void @poly_Rq_mul(ptr noundef nonnull %i.adb, ptr noundef nonnull %i.qu, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m) #10
  %i.ade = getelementptr inbounds nuw i8, ptr %i.h, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ade, i8 0, i64 6, i1 false)
  br label %poly_mul.exit85

bb.an:                                            ; preds = %vec.epilog.vector.body299
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.qu, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %7, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.r, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %6, ptr noundef %7, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, i8 0, i64 1408, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.020.i.i82 = phi i64 [ 0, %bb.an ], [ %i.adq, %bb.ao ] ; 3 uses
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i82 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 1392
  %i.adh = load <16 x i8>, ptr %i.adg, align 16, !tbaa !22
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 1408
  %i.adj = load <16 x i8>, ptr %i.adi, align 16, !tbaa !22
  %i.adk = load <8 x i16>, ptr %i.adf, align 16, !tbaa !22
  %i.adl = shufflevector <16 x i8> %i.adh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %33 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.adj, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.adm = or <16 x i8> %33, %i.adl
  %i.adn = bitcast <16 x i8> %i.adm to <8 x i16>
  %i.ado = add <8 x i16> %i.adk, %i.adn
  %i.adp = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.020.i.i82
  store <8 x i16> %i.ado, ptr %i.adp, align 16, !tbaa !22
  %i.adq = add nuw nsw i64 %.020.i.i82, 1         ; 2 uses
  %exitcond.not.i.i83 = icmp eq i64 %i.adq, 88
  br i1 %exitcond.not.i.i83, label %poly_mul_vec.exit.i84, label %bb.ao, !llvm.loop !1

poly_mul_vec.exit.i84:                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.adb, ptr noundef nonnull readonly align 16 dereferenceable(1408) %8, i64 1402, i1 false)
  %i.adr = getelementptr inbounds nuw i8, ptr %i.h, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.adr, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %poly_mul.exit85

poly_mul.exit85:                                  ; preds = %bb.am, %poly_mul_vec.exit.i84
  %i.ads = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.adt = and i32 %i.ads, 32
  %.not.i86 = icmp eq i32 %i.adt, 0
  br i1 %.not.i86, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %poly_mul.exit85
  call void @poly_Rq_mul(ptr noundef nonnull %i.adb, ptr noundef nonnull %i.adb, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m) #10
  %i.adu = getelementptr inbounds nuw i8, ptr %i.h, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.adu, i8 0, i64 6, i1 false)
  br label %vector.body308.preheader

bb.aq:                                            ; preds = %poly_mul.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %3, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.adb, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 16 dereferenceable(1408) %i.r, i64 1408, i1 false)
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.m, ptr noundef %i.zw, ptr noundef %3, ptr noundef %4, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, i8 0, i64 1408, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.020.i.i87 = phi i64 [ 0, %bb.aq ], [ %i.aeg, %bb.ar ] ; 3 uses
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.020.i.i87 ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 1392
  %i.adx = load <16 x i8>, ptr %i.adw, align 16, !tbaa !22
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 1408
  %i.adz = load <16 x i8>, ptr %i.ady, align 16, !tbaa !22
  %i.aea = load <8 x i16>, ptr %i.adv, align 16, !tbaa !22
  %i.aeb = shufflevector <16 x i8> %i.adx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %34 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.adz, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.aec = or <16 x i8> %34, %i.aeb
  %i.aed = bitcast <16 x i8> %i.aec to <8 x i16>
  %i.aee = add <8 x i16> %i.aea, %i.aed
  %i.aef = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.020.i.i87
  store <8 x i16> %i.aee, ptr %i.aef, align 16, !tbaa !22
  %i.aeg = add nuw nsw i64 %.020.i.i87, 1         ; 2 uses
  %exitcond.not.i.i88 = icmp eq i64 %i.aeg, 88
  br i1 %exitcond.not.i.i88, label %poly_mul_vec.exit.i89, label %bb.ar, !llvm.loop !1

poly_mul_vec.exit.i89:                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.adb, ptr noundef nonnull readonly align 16 dereferenceable(1408) %5, i64 1402, i1 false)
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.h, i64 1754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aeh, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %vector.body308.preheader

vector.body308.preheader:                         ; preds = %bb.ap, %poly_mul_vec.exit.i89
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308.1, %vector.body308.preheader
  %index309 = phi i64 [ 0, %vector.body308.preheader ], [ %index.next312.1, %vector.body308.1 ] ; 4 uses
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.adb, i64 %index309 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16 ; 2 uses
  %wide.load310 = load <8 x i16>, ptr %i.aei, align 2, !tbaa !24
  %wide.load311 = load <8 x i16>, ptr %i.aej, align 2, !tbaa !24
  %i.aek = and <8 x i16> %wide.load310, splat (i16 8191)
  %i.ael = and <8 x i16> %wide.load311, splat (i16 8191)
  store <8 x i16> %i.aek, ptr %i.aei, align 2, !tbaa !24
  store <8 x i16> %i.ael, ptr %i.aej, align 2, !tbaa !24
  %i.aem = icmp eq i64 %index309, 672
  br i1 %i.aem, label %vec.epilog.vector.body319, label %vector.body308.1

vector.body308.1:                                 ; preds = %vector.body308
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.adb, i64 %index309 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 32 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 48 ; 2 uses
  %wide.load310.1 = load <8 x i16>, ptr %i.aeo, align 2, !tbaa !24
  %wide.load311.1 = load <8 x i16>, ptr %i.aep, align 2, !tbaa !24
  %i.aeq = and <8 x i16> %wide.load310.1, splat (i16 8191)
  %i.aer = and <8 x i16> %wide.load311.1, splat (i16 8191)
  store <8 x i16> %i.aeq, ptr %i.aeo, align 2, !tbaa !24
  store <8 x i16> %i.aer, ptr %i.aep, align 2, !tbaa !24
  %index.next312.1 = add nuw nsw i64 %index309, 32
  br label %vector.body308

vec.epilog.vector.body319:                        ; preds = %vector.body308
  %i.aes = getelementptr inbounds nuw i8, ptr %i.h, i64 1728 ; 2 uses
  %wide.load321 = load <4 x i16>, ptr %i.aes, align 2, !tbaa !24
  %i.aet = and <4 x i16> %wide.load321, splat (i16 8191)
  store <4 x i16> %i.aet, ptr %i.aes, align 2, !tbaa !24
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.h, i64 1736 ; 2 uses
  %wide.load321.1 = load <4 x i16>, ptr %i.aeu, align 2, !tbaa !24
  %i.aev = and <4 x i16> %wide.load321.1, splat (i16 8191)
  store <4 x i16> %i.aev, ptr %i.aeu, align 2, !tbaa !24
  %i.aew = getelementptr inbounds nuw i8, ptr %i.h, i64 1744 ; 2 uses
  %wide.load321.2 = load <4 x i16>, ptr %i.aew, align 2, !tbaa !24
  %i.aex = and <4 x i16> %wide.load321.2, splat (i16 8191)
  store <4 x i16> %i.aex, ptr %i.aew, align 2, !tbaa !24
  %i.aey = getelementptr inbounds nuw i8, ptr %i.h, i64 1752 ; 2 uses
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !24
  %i.afa = and i16 %i.aez, 8191
  store i16 %i.afa, ptr %i.aey, align 2, !tbaa !24
  call void @OPENSSL_free(ptr noundef nonnull %i.i) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %vec.epilog.vector.body319
  %.045 = phi i32 [ 1, %vec.epilog.vector.body319 ], [ 0, %bb.b ]
  ret i32 %.045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @RAND_bytes(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @HRSS_encap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.poly_vec, align 16          ; 4 uses
  %5 = alloca %struct.poly_vec, align 16          ; 4 uses
  %6 = alloca %struct.poly_vec, align 16          ; 5 uses
  %i.a = ptrtoint ptr %2 to i64
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %i.e = tail call ptr @OPENSSL_malloc(i64 noundef 40591) #10 ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 31                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 23 uses
  %.not55 = icmp eq ptr %i.e, null
  br i1 %.not55, label %bb.b, label %vector.memcheck

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1138) %0, i8 0, i64 1138, i1 false)
  %i.j = tail call i32 @RAND_bytes(ptr noundef %1, i64 noundef 32) #10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #12
  unreachable

vector.memcheck:                                  ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 34528 ; 5 uses
  %i.m = getelementptr i8, ptr %i.e, i64 %i.h
  %i.n = getelementptr i8, ptr %i.m, i64 35928
  %i.o = getelementptr i8, ptr %3, i64 700
  %bound0 = icmp ult ptr %i.l, %i.o
  %bound1 = icmp ult ptr %3, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load = load <8 x i8>, ptr %i.p, align 1, !tbaa !22, !alias.scope !101 ; 2 uses
  %i.q = zext <8 x i8> %wide.load to <8 x i16>
  %i.r = zext <8 x i8> %wide.load to <8 x i32>
  %i.s = mul nuw nsw <8 x i32> %i.r, splat (i32 21845)
  %i.t = lshr <8 x i32> %i.s, splat (i32 16)
  %i.u = trunc nuw nsw <8 x i32> %i.t to <8 x i16>
  %i.v = mul nsw <8 x i16> %i.u, splat (i16 -3)
  %i.w = add nsw <8 x i16> %i.v, %i.q             ; 3 uses
  %i.x = ashr <8 x i16> %i.w, splat (i16 1)
  %i.y = and <8 x i16> %i.x, %i.w
  %i.z = add <8 x i16> %i.y, splat (i16 -1)
  %i.aa = and <8 x i16> %i.z, %i.w                ; 2 uses
  %i.ab = lshr <8 x i16> %i.aa, splat (i16 1)
  %i.ac = xor <8 x i16> %i.ab, splat (i16 1)
  %i.ad = add nsw <8 x i16> %i.ac, splat (i16 -1)
  %i.ae = or <8 x i16> %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index
  store <8 x i16> %i.ae, ptr %i.af, align 2, !tbaa !24, !alias.scope !102, !noalias !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, 696
  br i1 %i.ag, label %scalar.ph.preheader, label %vector.body, !llvm.loop !94

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 696, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i = phi i64 [ %i.az, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %.010.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !22  ; 2 uses
  %i.aj = zext i8 %i.ai to i16
  %i.ak = zext i8 %i.ai to i32
  %i.al = mul nuw nsw i32 %i.ak, 21845
  %i.am = lshr i32 %i.al, 16
  %i.an = trunc nuw nsw i32 %i.am to i16
  %i.ao = mul nsw i16 %i.an, -3
  %i.ap = add nsw i16 %i.ao, %i.aj                ; 3 uses
  %i.aq = ashr i16 %i.ap, 1
  %i.ar = and i16 %i.aq, %i.ap
  %i.as = add i16 %i.ar, -1
  %i.at = and i16 %i.as, %i.ap                    ; 2 uses
  %i.au = lshr i16 %i.at, 1
  %i.av = xor i16 %i.au, 1
  %i.aw = add nsw i16 %i.av, -1
  %i.ax = or i16 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.010.i
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !24
  %i.az = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, 700
  br i1 %exitcond.not.i, label %poly_short_sample.exit, label %scalar.ph, !llvm.loop !95

poly_short_sample.exit:                           ; preds = %scalar.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 35928
  store i64 0, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 35936 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 700 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.e, i64 %i.h
  %i.be = getelementptr i8, ptr %i.bd, i64 37336
  %i.bf = getelementptr i8, ptr %3, i64 1400
  %bound066 = icmp ult ptr %i.bb, %i.bf
  %bound167 = icmp ult ptr %i.bc, %i.be
  %found.conflict68 = and i1 %bound066, %bound167
  br i1 %found.conflict68, label %scalar.ph64.preheader, label %vector.body70

vector.body70:                                    ; preds = %poly_short_sample.exit, %vector.body70
  %index71 = phi i64 [ %index.next73, %vector.body70 ], [ 0, %poly_short_sample.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index71
  %wide.load72 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !22, !alias.scope !103 ; 2 uses
  %i.bh = zext <8 x i8> %wide.load72 to <8 x i16>
  %i.bi = zext <8 x i8> %wide.load72 to <8 x i32>
  %i.bj = mul nuw nsw <8 x i32> %i.bi, splat (i32 21845)
  %i.bk = lshr <8 x i32> %i.bj, splat (i32 16)
  %i.bl = trunc nuw nsw <8 x i32> %i.bk to <8 x i16>
  %i.bm = mul nsw <8 x i16> %i.bl, splat (i16 -3)
  %i.bn = add nsw <8 x i16> %i.bm, %i.bh          ; 3 uses
  %i.bo = ashr <8 x i16> %i.bn, splat (i16 1)
  %i.bp = and <8 x i16> %i.bo, %i.bn
  %i.bq = add <8 x i16> %i.bp, splat (i16 -1)
  %i.br = and <8 x i16> %i.bq, %i.bn              ; 2 uses
  %i.bs = lshr <8 x i16> %i.br, splat (i16 1)
  %i.bt = xor <8 x i16> %i.bs, splat (i16 1)
  %i.bu = add nsw <8 x i16> %i.bt, splat (i16 -1)
  %i.bv = or <8 x i16> %i.bu, %i.br
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index71
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !tbaa !24, !alias.scope !104, !noalias !103
  %index.next73 = add nuw i64 %index71, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next73, 696
  br i1 %i.bx, label %scalar.ph64.preheader, label %vector.body70, !llvm.loop !99

scalar.ph64.preheader:                            ; preds = %vector.body70, %poly_short_sample.exit
  %.010.i38.ph = phi i64 [ 0, %poly_short_sample.exit ], [ 696, %vector.body70 ]
  br label %scalar.ph64

scalar.ph64:                                      ; preds = %scalar.ph64.preheader, %scalar.ph64
  %.010.i38 = phi i64 [ %i.cq, %scalar.ph64 ], [ %.010.i38.ph, %scalar.ph64.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.010.i38
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22  ; 2 uses
  %i.ca = zext i8 %i.bz to i16
  %i.cb = zext i8 %i.bz to i32
  %i.cc = mul nuw nsw i32 %i.cb, 21845
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = trunc nuw nsw i32 %i.cd to i16
  %i.cf = mul nsw i16 %i.ce, -3
  %i.cg = add nsw i16 %i.cf, %i.ca                ; 3 uses
  %i.ch = ashr i16 %i.cg, 1
  %i.ci = and i16 %i.ch, %i.cg
  %i.cj = add i16 %i.ci, -1
  %i.ck = and i16 %i.cj, %i.cg                    ; 2 uses
  %i.cl = lshr i16 %i.ck, 1
  %i.cm = xor i16 %i.cl, 1
  %i.cn = add nsw i16 %i.cm, -1
  %i.co = or i16 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.010.i38
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !24
  %i.cq = add nuw nsw i64 %.010.i38, 1            ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.cq, 700
  br i1 %exitcond.not.i39, label %poly_short_sample.exit40, label %scalar.ph64, !llvm.loop !100

poly_short_sample.exit40:                         ; preds = %scalar.ph64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 37336
  store i64 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 37344 ; 3 uses
  tail call fastcc void @poly_lift(ptr noundef %i.cs, ptr noundef %i.l)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 38752 ; 5 uses
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.cv = and i32 %i.cu, 32
  %.not.i41 = icmp eq i32 %i.cv, 0
  br i1 %.not.i41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %poly_short_sample.exit40
  tail call void @poly_Rq_mul(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.bb, ptr noundef %i.d, ptr noundef nonnull %i.i) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cw, i8 0, i64 6, i1 false)
  br label %vector.body78.preheader

bb.e:                                             ; preds = %poly_short_sample.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.bb, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.d, i64 1408, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.i, ptr noundef %i.cx, ptr noundef %4, ptr noundef %5, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.020.i.i = phi i64 [ 0, %bb.e ], [ %i.dj, %bb.f ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.020.i.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1392
  %i.da = load <16 x i8>, ptr %i.cz, align 16, !tbaa !22
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1408
  %i.dc = load <16 x i8>, ptr %i.db, align 16, !tbaa !22
  %i.dd = load <8 x i16>, ptr %i.cy, align 16, !tbaa !22
  %i.de = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %7 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dc, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.df = or <16 x i8> %7, %i.de
  %i.dg = bitcast <16 x i8> %i.df to <8 x i16>
  %i.dh = add <8 x i16> %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.020.i.i
  store <8 x i16> %i.dh, ptr %i.di, align 16, !tbaa !22
  %i.dj = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dj, 88
  br i1 %exitcond.not.i.i, label %poly_mul_vec.exit.i, label %bb.f, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.ct, ptr noundef nonnull readonly align 16 dereferenceable(1408) %6, i64 1402, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 40154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.dk, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %vector.body78.preheader

vector.body78.preheader:                          ; preds = %bb.d, %poly_mul_vec.exit.i
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78.1, %vector.body78.preheader
  %index79 = phi i64 [ 0, %vector.body78.preheader ], [ %index.next84.1, %vector.body78.1 ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index79 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load80 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !24
  %wide.load81 = load <8 x i16>, ptr %i.dm, align 2, !tbaa !24
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index79 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %wide.load82 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !24
  %wide.load83 = load <8 x i16>, ptr %i.do, align 2, !tbaa !24
  %i.dp = add <8 x i16> %wide.load82, %wide.load80
  %i.dq = add <8 x i16> %wide.load83, %wide.load81
  store <8 x i16> %i.dp, ptr %i.dn, align 2, !tbaa !24
  store <8 x i16> %i.dq, ptr %i.do, align 2, !tbaa !24
  %i.dr = icmp eq i64 %index79, 672
  br i1 %i.dr, label %vec.epilog.vector.body, label %vector.body78.1

vector.body78.1:                                  ; preds = %vector.body78
  %index.next84 = or disjoint i64 %index79, 16    ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %index.next84 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load80.1 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !24
  %wide.load81.1 = load <8 x i16>, ptr %i.dt, align 2, !tbaa !24
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index.next84 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load82.1 = load <8 x i16>, ptr %i.du, align 2, !tbaa !24
  %wide.load83.1 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !24
  %i.dw = add <8 x i16> %wide.load82.1, %wide.load80.1
  %i.dx = add <8 x i16> %wide.load83.1, %wide.load81.1
  store <8 x i16> %i.dw, ptr %i.du, align 2, !tbaa !24
  store <8 x i16> %i.dx, ptr %i.dv, align 2, !tbaa !24
  %index.next84.1 = add nuw nsw i64 %index79, 32
  br label %vector.body78

vec.epilog.vector.body:                           ; preds = %vector.body78
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 38720
  %wide.load87 = load <4 x i16>, ptr %i.dy, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 40128 ; 2 uses
  %wide.load88 = load <4 x i16>, ptr %i.dz, align 8, !tbaa !24
  %i.ea = add <4 x i16> %wide.load88, %wide.load87
  store <4 x i16> %i.ea, ptr %i.dz, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 38728
  %wide.load87.1 = load <4 x i16>, ptr %i.eb, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 40136 ; 2 uses
  %wide.load88.1 = load <4 x i16>, ptr %i.ec, align 8, !tbaa !24
  %i.ed = add <4 x i16> %wide.load88.1, %wide.load87.1
  store <4 x i16> %i.ed, ptr %i.ec, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 38736
  %wide.load87.2 = load <4 x i16>, ptr %i.ee, align 8, !tbaa !24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 40144 ; 2 uses
  %wide.load88.2 = load <4 x i16>, ptr %i.ef, align 8, !tbaa !24
  %i.eg = add <4 x i16> %wide.load88.2, %wide.load87.2
  store <4 x i16> %i.eg, ptr %i.ef, align 8, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 38744
  %i.ei = load i16, ptr %i.eh, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 40152 ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 8, !tbaa !24
  %i.el = add i16 %i.ek, %i.ei
  store i16 %i.el, ptr %i.ej, align 8, !tbaa !24
  call fastcc void @poly_marshal(ptr noundef %0, ptr noundef nonnull %i.ct)
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 40272 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %vec.epilog.vector.body
  %.024.i = phi ptr [ %i.l, %vec.epilog.vector.body ], [ %i.fa, %bb.g ] ; 3 uses
  %.01523.i = phi i64 [ 0, %vec.epilog.vector.body ], [ %i.fb, %bb.g ] ; 2 uses
  %i.en = load i16, ptr %.024.i, align 2, !tbaa !24
  %i.eo = and i16 %i.en, 3                        ; 2 uses
  %i.ep = lshr i16 %i.eo, 1
  %i.eq = xor i16 %i.ep, %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  %i.es = load <4 x i16>, ptr %i.er, align 2, !tbaa !24
  %i.et = and <4 x i16> %i.es, splat (i16 3)      ; 2 uses
  %i.eu = lshr <4 x i16> %i.et, splat (i16 1)
  %i.ev = xor <4 x i16> %i.eu, %i.et
  %i.ew = mul nuw nsw <4 x i16> %i.ev, <i16 3, i16 9, i16 27, i16 81>
  %i.ex = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ew)
  %op.rdx91 = add nuw nsw i16 %i.ex, %i.eq
  %i.ey = trunc i16 %op.rdx91 to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 %.01523.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %.024.i, i64 10
  %i.fb = add nuw nsw i64 %.01523.i, 1            ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %i.fb, 140
  br i1 %exitcond.not.i42, label %poly_marshal_mod3.exit, label %bb.g, !llvm.loop !2

poly_marshal_mod3.exit:                           ; preds = %bb.g
  %i.fc = getelementptr inbounds nuw i8, ptr %i.i, i64 40412 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %poly_marshal_mod3.exit
  %.024.i43 = phi ptr [ %i.bb, %poly_marshal_mod3.exit ], [ %i.fq, %bb.h ] ; 3 uses
  %.01523.i44 = phi i64 [ 0, %poly_marshal_mod3.exit ], [ %i.fr, %bb.h ] ; 2 uses
  %i.fd = load i16, ptr %.024.i43, align 2, !tbaa !24
  %i.fe = and i16 %i.fd, 3                        ; 2 uses
  %i.ff = lshr i16 %i.fe, 1
  %i.fg = xor i16 %i.ff, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %.024.i43, i64 2
  %i.fi = load <4 x i16>, ptr %i.fh, align 2, !tbaa !24
  %i.fj = and <4 x i16> %i.fi, splat (i16 3)      ; 2 uses
  %i.fk = lshr <4 x i16> %i.fj, splat (i16 1)
  %i.fl = xor <4 x i16> %i.fk, %i.fj
  %i.fm = mul nuw nsw <4 x i16> %i.fl, <i16 3, i16 9, i16 27, i16 81>
  %i.fn = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fm)
  %op.rdx = add nuw nsw i16 %i.fn, %i.fg
  %i.fo = trunc i16 %op.rdx to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.01523.i44
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %.024.i43, i64 10
  %i.fr = add nuw nsw i64 %.01523.i44, 1          ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.fr, 140
  br i1 %exitcond.not.i53, label %poly_marshal_mod3.exit54, label %bb.h, !llvm.loop !2

poly_marshal_mod3.exit54:                         ; preds = %bb.h
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 40160 ; 6 uses
  %i.ft = call i32 @SHA256_Init(ptr noundef nonnull %i.fs) #10 ; 0 uses
  %i.fu = call i32 @SHA256_Update(ptr noundef nonnull %i.fs, ptr noundef nonnull @kSharedKey, i64 noundef 11) #10 ; 0 uses
  %i.fv = call i32 @SHA256_Update(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.em, i64 noundef 140) #10 ; 0 uses
  %i.fw = call i32 @SHA256_Update(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.fc, i64 noundef 140) #10 ; 0 uses
  %i.fx = call i32 @SHA256_Update(ptr noundef nonnull %i.fs, ptr noundef %0, i64 noundef 1138) #10 ; 0 uses
  %i.fy = call i32 @SHA256_Final(ptr noundef %1, ptr noundef nonnull %i.fs) #10 ; 0 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %poly_marshal_mod3.exit54
  %.036 = phi i32 [ 1, %poly_marshal_mod3.exit54 ], [ 0, %bb.b ]
  ret i32 %.036
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @poly_lift(ptr nofree noundef nonnull captures(none) initializes((0, 6)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
iter.check:
  %i.a = load i16, ptr %1, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !24
  %i.d = add i16 %i.c, %i.a                       ; 2 uses
  store i16 %i.d, ptr %0, align 16, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  store i16 %i.f, ptr %i.g, align 2, !tbaa !24
  %i.h = load i16, ptr %1, align 16, !tbaa !24
  %i.i = load i16, ptr %i.b, align 4, !tbaa !24
  %i.j = sub i16 %i.i, %i.h                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i16 %i.j, ptr %i.k, align 4, !tbaa !24
  br label %vector.body

vector.body:                                      ; preds = %iter.check, %vector.body
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dw, %vector.body ]
  %vec.phi77 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.dx, %vector.body ]
  %vec.phi78 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fw, %vector.body ]
  %vec.phi79 = phi <8 x i16> [ zeroinitializer, %iter.check ], [ %i.fx, %vector.body ]
  %i.l = mul nuw i64 %index, 3                    ; 16 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %i.w = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 36
  %i.y = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 42
  %i.aa = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 54
  %i.ae = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 60
  %i.ag = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 66
  %i.ai = getelementptr [2 x i8], ptr %1, i64 %i.l ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
end_hunk_2
begin_hunk_3_@HRSS_decap:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 34543
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1776
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !22
  %i.by = xor i8 %i.bx, 54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 34544 ; 3 uses
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 1777
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !22
  %i.cc = xor i8 %i.cb, 54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 34545
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 1778
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22
  %i.cg = xor i8 %i.cf, 54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 34546
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 1779
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22
  %i.ck = xor i8 %i.cj, 54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 34547
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 1780
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !22
  %i.co = xor i8 %i.cn, 54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 34548
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 1781
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.cs = xor i8 %i.cr, 54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 34549
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 1782
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !22
  %i.cw = xor i8 %i.cv, 54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 34550
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 1783
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !22
  %i.da = xor i8 %i.cz, 54
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 34551
  store i8 %i.da, ptr %i.db, align 1, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 1784
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = xor i8 %i.dd, 54
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 34552
  store i8 %i.de, ptr %i.df, align 1, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 1785
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !22
  %i.di = xor i8 %i.dh, 54
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 34553
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 1786
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !22
  %i.dm = xor i8 %i.dl, 54
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 34554
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 1787
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !22
  %i.dq = xor i8 %i.dp, 54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 34555
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 1788
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !22
  %i.du = xor i8 %i.dt, 54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 34556
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 1789
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !22
  %i.dy = xor i8 %i.dx, 54
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 34557
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 1790
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  %i.ec = xor i8 %i.eb, 54
  %i.ed = getelementptr inbounds nuw i8, ptr %i.j, i64 34558
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 1791
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !22
  %i.eg = xor i8 %i.ef, 54
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 34559
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.j, i64 34560 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ei, i8 54, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 34592 ; 14 uses
  %i.ek = tail call i32 @SHA256_Init(ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.el = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.l, i64 noundef 64) #10 ; 0 uses
  %i.em = tail call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.en = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.eo = load <16 x i8>, ptr %i.l, align 1, !tbaa !22
  %i.ep = xor <16 x i8> %i.eo, splat (i8 106)
  store <16 x i8> %i.ep, ptr %i.l, align 1, !tbaa !22
  %i.eq = load <16 x i8>, ptr %i.bz, align 1, !tbaa !22
  %i.er = xor <16 x i8> %i.eq, splat (i8 106)
  store <16 x i8> %i.er, ptr %i.bz, align 1, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ei, i8 92, i64 32, i1 false)
  %i.es = call i32 @SHA256_Init(ptr noundef nonnull %i.ej) #10 ; 0 uses
  %i.et = call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.l, i64 noundef 64) #10 ; 0 uses
  %i.eu = call i32 @SHA256_Update(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.a, i64 noundef 32) #10 ; 0 uses
  %i.ev = call i32 @SHA256_Final(ptr noundef %0, ptr noundef nonnull %i.ej) #10 ; 0 uses
  %.not97 = icmp eq i64 %3, 1138
  br i1 %.not97, label %bb.d, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.ew = tail call i32 @RAND_bytes(ptr noundef %0, i64 noundef 32) #10
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #12
  unreachable

bb.d:                                             ; preds = %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 34704 ; 6 uses
  %i.ez = call fastcc i32 @poly_unmarshal(ptr noundef nonnull %i.ey, ptr noundef %2)
  %.not98 = icmp eq i32 %i.ez, 0
  br i1 %.not98, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 36112 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.fc = load i64, ptr %i.e, align 8, !tbaa !17
  %i.fd = xor i64 %i.fc, -1
  %i.fe = load i64, ptr %i.fb, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.02033.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.h ]
  %.02132.i = phi i64 [ %i.fe, %bb.e ], [ %.122.i, %bb.h ] ; 2 uses
  %.02331.i = phi i64 [ %i.fd, %bb.e ], [ %.124.i, %bb.h ] ; 2 uses
  %.02530.i = phi ptr [ %i.fb, %bb.e ], [ %.126.i, %bb.h ] ; 2 uses
  %.02729.i = phi ptr [ %i.e, %bb.e ], [ %.128.i, %bb.h ] ; 2 uses
  %i.ff = and i64 %.02331.i, 1
  %i.fg = add nuw nsw i64 %i.ff, 65535
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.fi = and i64 %.02132.i, 1
  %i.fj = or i64 %i.fg, %i.fi
  %i.fk = trunc i64 %i.fj to i16
  store i16 %i.fk, ptr %i.fh, align 2, !tbaa !24
  %i.fl = lshr i64 %.02331.i, 1
  %i.fm = lshr i64 %.02132.i, 1
  %i.fn = add i32 %.02033.i, 1                    ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 64
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fp = getelementptr inbounds nuw i8, ptr %.02729.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8 ; 2 uses
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !17
  %i.fs = xor i64 %i.fr, -1
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.128.i = phi ptr [ %i.fp, %bb.g ], [ %.02729.i, %bb.f ]
  %.126.i = phi ptr [ %i.fq, %bb.g ], [ %.02530.i, %bb.f ]
  %.124.i = phi i64 [ %i.fs, %bb.g ], [ %i.fl, %bb.f ]
  %.122.i = phi i64 [ %i.ft, %bb.g ], [ %i.fm, %bb.f ]
  %.1.i = phi i32 [ 0, %bb.g ], [ %i.fn, %bb.f ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 701
  br i1 %exitcond.not.i, label %poly_from_poly3.exit, label %bb.f, !llvm.loop !109

poly_from_poly3.exit:                             ; preds = %bb.h
  %i.fu = getelementptr inbounds nuw i8, ptr %i.j, i64 37514
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fu, i8 0, i64 6, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 37520 ; 3 uses
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.fx = and i32 %i.fw, 32
  %.not.i99 = icmp eq i32 %i.fx, 0
  br i1 %.not.i99, label %bb.j, label %bb.i

bb.i:                                             ; preds = %poly_from_poly3.exit
  call void @poly_Rq_mul(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.j) #10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.j, i64 38922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fy, i8 0, i64 6, i1 false)
  br label %poly_mul.exit

bb.j:                                             ; preds = %poly_from_poly3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %7, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.ey, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %8, ptr noundef nonnull readonly align 1 dereferenceable(1408) %i.fa, i64 1408, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.j, ptr noundef %i.fz, ptr noundef %7, ptr noundef %8, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %9, i8 0, i64 1408, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.020.i.i = phi i64 [ 0, %bb.j ], [ %i.gl, %bb.k ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.020.i.i ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1392
  %i.gc = load <16 x i8>, ptr %i.gb, align 16, !tbaa !22
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1408
  %i.ge = load <16 x i8>, ptr %i.gd, align 16, !tbaa !22
  %i.gf = load <8 x i16>, ptr %i.ga, align 16, !tbaa !22
  %i.gg = shufflevector <16 x i8> %i.gc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %10 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ge, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.gh = or <16 x i8> %10, %i.gg
  %i.gi = bitcast <16 x i8> %i.gh to <8 x i16>
  %i.gj = add <8 x i16> %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.020.i.i
  store <8 x i16> %i.gj, ptr %i.gk, align 16, !tbaa !22
  %i.gl = add nuw nsw i64 %.020.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gl, 88
  br i1 %exitcond.not.i.i, label %poly_mul_vec.exit.i, label %bb.k, !llvm.loop !1

poly_mul_vec.exit.i:                              ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1408) %i.fv, ptr noundef nonnull readonly align 16 dereferenceable(1408) %9, i64 1402, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.j, i64 38922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gm, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %poly_mul.exit

poly_mul.exit:                                    ; preds = %bb.i, %poly_mul_vec.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.j, i64 38928 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 39016
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %poly_mul.exit
  %indvars.iv.i100 = phi i64 [ 0, %poly_mul.exit ], [ %indvars.iv.next.i102, %bb.n ] ; 2 uses
  %.02942.i = phi i32 [ 0, %poly_mul.exit ], [ %.1.i101, %bb.n ]
  %.03041.i = phi i64 [ 0, %poly_mul.exit ], [ %.131.i, %bb.n ]
  %.03240.i = phi i64 [ 0, %poly_mul.exit ], [ %.133.i, %bb.n ]
  %.03439.i = phi ptr [ %i.go, %poly_mul.exit ], [ %.135.i, %bb.n ] ; 3 uses
  %.03638.i = phi ptr [ %i.gn, %poly_mul.exit ], [ %.137.i, %bb.n ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %indvars.iv.i100
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !24
  %i.gr = shl i16 %i.gq, 3
  %i.gs = ashr exact i16 %i.gr, 3                 ; 2 uses
  %i.gt = sext i16 %i.gs to i32
  %i.gu = mul nsw i32 %i.gt, 21845
  %i.gv = lshr i32 %i.gu, 16
  %i.gw = trunc nuw i32 %i.gv to i16
  %i.gx = mul i16 %i.gw, -3
  %i.gy = add i16 %i.gx, %i.gs                    ; 3 uses
  %i.gz = ashr i16 %i.gy, 1
  %i.ha = and i16 %i.gz, %i.gy
  %i.hb = add i16 %i.ha, -1
  %i.hc = and i16 %i.hb, %i.gy                    ; 2 uses
  %i.hd = lshr i64 %.03240.i, 1
  %i.he = and i16 %i.hc, 2
  %i.hf = zext nneg i16 %i.he to i64
  %i.hg = shl nuw i64 %i.hf, 62                   ; 2 uses
  %i.hh = or disjoint i64 %i.hg, %i.hd            ; 2 uses
  %i.hi = zext i16 %i.hc to i64
  %i.hj = call i64 @llvm.fshl.i64(i64 %i.hi, i64 %.03041.i, i64 63)
  %i.hk = or i64 %i.hg, %i.hj                     ; 2 uses
  %i.hl = add i32 %.02942.i, 1                    ; 2 uses
  %i.hm = icmp eq i32 %i.hl, 64
  br i1 %i.hm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.hh, ptr %.03638.i, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %.03638.i, i64 8
  store i64 %i.hk, ptr %.03439.i, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %.03439.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.137.i = phi ptr [ %i.hn, %bb.m ], [ %.03638.i, %bb.l ] ; 2 uses
  %.135.i = phi ptr [ %i.ho, %bb.m ], [ %.03439.i, %bb.l ] ; 2 uses
  %.133.i = phi i64 [ 0, %bb.m ], [ %i.hh, %bb.l ] ; 2 uses
  %.131.i = phi i64 [ 0, %bb.m ], [ %i.hk, %bb.l ] ; 2 uses
  %.1.i101 = phi i32 [ 0, %bb.m ], [ %i.hl, %bb.l ] ; 2 uses
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.next.i102, 701
  br i1 %exitcond.not.i103, label %poly3_from_poly.exit, label %bb.l, !llvm.loop !0

poly3_from_poly.exit:                             ; preds = %bb.n
  %i.hp = zext i32 %.1.i101 to i64
  %i.hq = sub nsw i64 64, %i.hp                   ; 2 uses
  %i.hr = lshr i64 %.133.i, %i.hq
  %i.hs = lshr i64 %.131.i, %i.hq
  store i64 %i.hr, ptr %.137.i, align 8, !tbaa !17
  store i64 %i.hs, ptr %.135.i, align 8, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 39104 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @HRSS_poly3_mul(ptr noundef nonnull %i.ht, ptr noundef nonnull %i.gn, ptr noundef nonnull %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 39280 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 39192 ; 2 uses
  %i.hx = load i64, ptr %i.ht, align 8, !tbaa !17
  %i.hy = xor i64 %i.hx, -1
  %i.hz = load i64, ptr %i.hw, align 8, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %poly3_from_poly.exit
  %indvars.iv.i104 = phi i64 [ 0, %poly3_from_poly.exit ], [ %indvars.iv.next.i115, %bb.q ] ; 2 uses
  %.02033.i105 = phi i32 [ 0, %poly3_from_poly.exit ], [ %.1.i114, %bb.q ]
  %.02132.i106 = phi i64 [ %i.hz, %poly3_from_poly.exit ], [ %.122.i113, %bb.q ] ; 2 uses
  %.02331.i107 = phi i64 [ %i.hy, %poly3_from_poly.exit ], [ %.124.i112, %bb.q ] ; 2 uses
  %.02530.i108 = phi ptr [ %i.hw, %poly3_from_poly.exit ], [ %.126.i111, %bb.q ] ; 2 uses
  %.02729.i109 = phi ptr [ %i.ht, %poly3_from_poly.exit ], [ %.128.i110, %bb.q ] ; 2 uses
  %i.ia = and i64 %.02331.i107, 1
  %i.ib = add nuw nsw i64 %i.ia, 65535
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %indvars.iv.i104
  %i.id = and i64 %.02132.i106, 1
  %i.ie = or i64 %i.ib, %i.id
  %i.if = trunc i64 %i.ie to i16
  store i16 %i.if, ptr %i.ic, align 2, !tbaa !24
  %i.ig = lshr i64 %.02331.i107, 1
  %i.ih = lshr i64 %.02132.i106, 1
  %i.ii = add i32 %.02033.i105, 1                 ; 2 uses
  %i.ij = icmp eq i32 %i.ii, 64
  br i1 %i.ij, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ik = getelementptr inbounds nuw i8, ptr %.02729.i109, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02530.i108, i64 8 ; 2 uses
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !17
  %i.in = xor i64 %i.im, -1
  %i.io = load i64, ptr %i.il, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.128.i110 = phi ptr [ %i.ik, %bb.p ], [ %.02729.i109, %bb.o ]
  %.126.i111 = phi ptr [ %i.il, %bb.p ], [ %.02530.i108, %bb.o ]
  %.124.i112 = phi i64 [ %i.in, %bb.p ], [ %i.ig, %bb.o ]
  %.122.i113 = phi i64 [ %i.io, %bb.p ], [ %i.ih, %bb.o ]
  %.1.i114 = phi i32 [ 0, %bb.p ], [ %i.ii, %bb.o ]
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, 701
  br i1 %exitcond.not.i116, label %iter.check, label %bb.o, !llvm.loop !109

iter.check:                                       ; preds = %bb.q
  %i.ip = getelementptr inbounds nuw i8, ptr %i.j, i64 40682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ip, i8 0, i64 6, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.j, i64 40688 ; 3 uses
  call fastcc void @poly_lift(ptr noundef %i.iq, ptr noundef %i.hv)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 42096 ; 12 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next.1, %vector.body.1 ] ; 6 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load = load <8 x i16>, ptr %i.is, align 2, !tbaa !24
  %wide.load160 = load <8 x i16>, ptr %i.it, align 2, !tbaa !24
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %wide.load161 = load <8 x i16>, ptr %i.iu, align 2, !tbaa !24
  %wide.load162 = load <8 x i16>, ptr %i.iv, align 2, !tbaa !24
  %i.iw = sub <8 x i16> %wide.load, %wide.load161
  %i.ix = sub <8 x i16> %wide.load160, %wide.load162
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <8 x i16> %i.iw, ptr %i.iy, align 2, !tbaa !24
  store <8 x i16> %i.ix, ptr %i.iz, align 2, !tbaa !24
  %i.ja = icmp eq i64 %index, 672
  br i1 %i.ja, label %vec.epilog.vector.body, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %index.next = or disjoint i64 %index, 16        ; 3 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %index.next ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load.1 = load <8 x i16>, ptr %i.jb, align 2, !tbaa !24
  %wide.load160.1 = load <8 x i16>, ptr %i.jc, align 2, !tbaa !24
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %index.next ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %wide.load161.1 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !24
  %wide.load162.1 = load <8 x i16>, ptr %i.je, align 2, !tbaa !24
  %i.jf = sub <8 x i16> %wide.load.1, %wide.load161.1
  %i.jg = sub <8 x i16> %wide.load160.1, %wide.load162.1
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index.next ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <8 x i16> %i.jf, ptr %i.jh, align 2, !tbaa !24
  store <8 x i16> %i.jg, ptr %i.ji, align 2, !tbaa !24
  %index.next.1 = add nuw nsw i64 %index, 32
  br label %vector.body

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 36080
  %wide.load164 = load <4 x i16>, ptr %i.jj, align 8, !tbaa !24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.j, i64 42064
  %wide.load165 = load <4 x i16>, ptr %i.jk, align 8, !tbaa !24
  %i.jl = sub <4 x i16> %wide.load164, %wide.load165
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 43472
  store <4 x i16> %i.jl, ptr %i.jm, align 8, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.j, i64 36088
  %wide.load164.1 = load <4 x i16>, ptr %i.jn, align 8, !tbaa !24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 42072
  %wide.load165.1 = load <4 x i16>, ptr %i.jo, align 8, !tbaa !24
  %i.jp = sub <4 x i16> %wide.load164.1, %wide.load165.1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.j, i64 43480
  store <4 x i16> %i.jp, ptr %i.jq, align 8, !tbaa !24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.j, i64 36096
  %wide.load164.2 = load <4 x i16>, ptr %i.jr, align 8, !tbaa !24
  %i.js = getelementptr inbounds nuw i8, ptr %i.j, i64 42080
  %wide.load165.2 = load <4 x i16>, ptr %i.js, align 8, !tbaa !24
  %i.jt = sub <4 x i16> %wide.load164.2, %wide.load165.2
  %i.ju = getelementptr inbounds nuw i8, ptr %i.j, i64 43488
  store <4 x i16> %i.jt, ptr %i.ju, align 8, !tbaa !24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.j, i64 36104
  %i.jw = load i16, ptr %i.jv, align 8, !tbaa !24
  %i.jx = getelementptr inbounds nuw i8, ptr %i.j, i64 42088
  %i.jy = load i16, ptr %i.jx, align 8, !tbaa !24
  %i.jz = sub i16 %i.jw, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.j, i64 43496
  store i16 %i.jz, ptr %i.ka, align 8, !tbaa !24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.j, i64 43498 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kb, i8 0, i64 6, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !25
  %i.ke = and i32 %i.kd, 32
  %.not.i118 = icmp eq i32 %i.ke, 0
  br i1 %.not.i118, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vec.epilog.vector.body
  call void @poly_Rq_mul(ptr noundef nonnull %i.ir, ptr noundef nonnull %i.ir, ptr noundef nonnull %i.kc, ptr noundef nonnull %i.j) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kb, i8 0, i64 6, i1 false)
  br label %iter.check175

bb.s:                                             ; preds = %vec.epilog.vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %4, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.ir, i64 1408, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %5, ptr noundef nonnull readonly align 8 dereferenceable(1408) %i.kc, i64 1408, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 2816
  call fastcc void @poly_mul_vec_aux(ptr noundef nonnull %i.j, ptr noundef %i.kf, ptr noundef %4, ptr noundef %5, i64 noundef 88)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1408) %6, i8 0, i64 1408, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.020.i.i119 = phi i64 [ 0, %bb.s ], [ %i.kr, %bb.t ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.020.i.i119 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1392
  %i.ki = load <16 x i8>, ptr %i.kh, align 16, !tbaa !22
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 1408
  %i.kk = load <16 x i8>, ptr %i.kj, align 16, !tbaa !22
  %i.kl = load <8 x i16>, ptr %i.kg, align 16, !tbaa !22
  %i.km = shufflevector <16 x i8> %i.ki, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %11 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.kk, <16 x i32> <i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25>
  %i.kn = or <16 x i8> %11, %i.km
  %i.ko = bitcast <16 x i8> %i.kn to <8 x i16>
  %i.kp = add <8 x i16> %i.kl, %i.ko
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.020.i.i119
  store <8 x i16> %i.kp, ptr %i.kq, align 16, !tbaa !22
  %i.kr = add nuw nsw i64 %.020.i.i119, 1         ; 2 uses
  %exitcond.not.i.i120 = icmp eq i64 %i.kr, 88
  br i1 %exitcond.not.i.i120, label %poly_mul_vec.exit.i121, label %bb.t, !llvm.loop !1

poly_mul_vec.exit.i121:                           ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.ir, ptr noundef nonnull readonly align 16 dereferenceable(1408) %6, i64 1402, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.kb, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %iter.check175

iter.check175:                                    ; preds = %bb.r, %poly_mul_vec.exit.i121
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 43496
  %i.kt = load i16, ptr %i.ks, align 8, !tbaa !24 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169.1, %iter.check175
  %index170 = phi i64 [ 0, %iter.check175 ], [ %index.next173.1, %vector.body169.1 ] ; 4 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index170 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %wide.load171 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !24
  %wide.load172 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !24
  %i.kw = sub <8 x i16> %wide.load171, %broadcast.splat
  %i.kx = sub <8 x i16> %wide.load172, %broadcast.splat
  store <8 x i16> %i.kw, ptr %i.ku, align 2, !tbaa !24
  store <8 x i16> %i.kx, ptr %i.kv, align 2, !tbaa !24
  %i.ky = icmp eq i64 %index170, 672
  br i1 %i.ky, label %vec.epilog.vector.body182, label %vector.body169.1

vector.body169.1:                                 ; preds = %vector.body169
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index170 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 48 ; 2 uses
  %wide.load171.1 = load <8 x i16>, ptr %i.la, align 2, !tbaa !24
  %wide.load172.1 = load <8 x i16>, ptr %i.lb, align 2, !tbaa !24
  %i.lc = sub <8 x i16> %wide.load171.1, %broadcast.splat
  %i.ld = sub <8 x i16> %wide.load172.1, %broadcast.splat
  store <8 x i16> %i.lc, ptr %i.la, align 2, !tbaa !24
  store <8 x i16> %i.ld, ptr %i.lb, align 2, !tbaa !24
  %index.next173.1 = add nuw nsw i64 %index170, 32
  br label %vector.body169

vec.epilog.vector.body182:                        ; preds = %vector.body169
  %broadcast.splatinsert180 = insertelement <4 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat181 = shufflevector <4 x i16> %broadcast.splatinsert180, <4 x i16> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.j, i64 43472 ; 2 uses
  %wide.load184 = load <4 x i16>, ptr %i.le, align 8, !tbaa !24
  %i.lf = sub <4 x i16> %wide.load184, %broadcast.splat181
  store <4 x i16> %i.lf, ptr %i.le, align 8, !tbaa !24
  %i.lg = getelementptr inbounds nuw i8, ptr %i.j, i64 43480 ; 2 uses
  %wide.load184.1 = load <4 x i16>, ptr %i.lg, align 8, !tbaa !24
  %i.lh = sub <4 x i16> %wide.load184.1, %broadcast.splat181
  store <4 x i16> %i.lh, ptr %i.lg, align 8, !tbaa !24
  %i.li = getelementptr inbounds nuw i8, ptr %i.j, i64 43488 ; 2 uses
  %wide.load184.2 = load <4 x i16>, ptr %i.li, align 8, !tbaa !24
  %i.lj = sub <4 x i16> %wide.load184.2, %broadcast.splat181
  store <4 x i16> %i.lj, ptr %i.li, align 8, !tbaa !24
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 43496 ; 2 uses
  %i.ll = load i16, ptr %i.lk, align 8, !tbaa !24
  %i.lm = sub i16 %i.ll, %i.kt
  store i16 %i.lm, ptr %i.lk, align 8, !tbaa !24
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190.1, %vec.epilog.vector.body182
  %index191 = phi i64 [ 0, %vec.epilog.vector.body182 ], [ %index.next194.1, %vector.body190.1 ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index191 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %wide.load192 = load <8 x i16>, ptr %i.ln, align 2, !tbaa !24
  %wide.load193 = load <8 x i16>, ptr %i.lo, align 2, !tbaa !24
  %i.lp = and <8 x i16> %wide.load192, splat (i16 8191)
  %i.lq = and <8 x i16> %wide.load193, splat (i16 8191)
  store <8 x i16> %i.lp, ptr %i.ln, align 2, !tbaa !24
  store <8 x i16> %i.lq, ptr %i.lo, align 2, !tbaa !24
  %i.lr = icmp eq i64 %index191, 672
  br i1 %i.lr, label %vec.epilog.vector.body201, label %vector.body190.1

vector.body190.1:                                 ; preds = %vector.body190
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %index191 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 48 ; 2 uses
  %wide.load192.1 = load <8 x i16>, ptr %i.lt, align 2, !tbaa !24
  %wide.load193.1 = load <8 x i16>, ptr %i.lu, align 2, !tbaa !24
  %i.lv = and <8 x i16> %wide.load192.1, splat (i16 8191)
  %i.lw = and <8 x i16> %wide.load193.1, splat (i16 8191)
  store <8 x i16> %i.lv, ptr %i.lt, align 2, !tbaa !24
  store <8 x i16> %i.lw, ptr %i.lu, align 2, !tbaa !24
  %index.next194.1 = add nuw nsw i64 %index191, 32
  br label %vector.body190

vec.epilog.vector.body201:                        ; preds = %vector.body190
  %i.lx = getelementptr inbounds nuw i8, ptr %i.j, i64 43472 ; 2 uses
  %wide.load203 = load <4 x i16>, ptr %i.lx, align 8, !tbaa !24
  %i.ly = and <4 x i16> %wide.load203, splat (i16 8191)
  store <4 x i16> %i.ly, ptr %i.lx, align 8, !tbaa !24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 43480 ; 2 uses
  %wide.load203.1 = load <4 x i16>, ptr %i.lz, align 8, !tbaa !24
  %i.ma = and <4 x i16> %wide.load203.1, splat (i16 8191)
  store <4 x i16> %i.ma, ptr %i.lz, align 8, !tbaa !24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.j, i64 43488 ; 2 uses
  %wide.load203.2 = load <4 x i16>, ptr %i.mb, align 8, !tbaa !24
  %i.mc = and <4 x i16> %wide.load203.2, splat (i16 8191)
  store <4 x i16> %i.mc, ptr %i.mb, align 8, !tbaa !24
  %i.md = getelementptr inbounds nuw i8, ptr %i.j, i64 43496 ; 2 uses
  %i.me = load i16, ptr %i.md, align 8, !tbaa !24
  %i.mf = and i16 %i.me, 8191
  store i16 %i.mf, ptr %i.md, align 8, !tbaa !24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.j, i64 43504
  %i.mh = getelementptr inbounds nuw i8, ptr %i.j, i64 43592
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %vec.epilog.vector.body201
  %indvars.iv.i129 = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %indvars.iv.next.i131, %bb.w ] ; 2 uses
  %.03853.i = phi i64 [ -1, %vec.epilog.vector.body201 ], [ %i.mq, %bb.w ]
  %.03952.i = phi i32 [ 0, %vec.epilog.vector.body201 ], [ %.1.i130, %bb.w ]
  %.04051.i = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %.141.i, %bb.w ]
  %.04250.i = phi i64 [ 0, %vec.epilog.vector.body201 ], [ %.143.i, %bb.w ]
  %.04449.i = phi ptr [ %i.mh, %vec.epilog.vector.body201 ], [ %.145.i, %bb.w ] ; 3 uses
  %.04648.i = phi ptr [ %i.mg, %vec.epilog.vector.body201 ], [ %.147.i, %bb.w ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvars.iv.i129
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !24 ; 3 uses
  %i.mk = and i16 %i.mj, 3                        ; 2 uses
  %i.ml = lshr i16 %i.mk, 1                       ; 2 uses
  %i.mm = xor i16 %i.ml, %i.mk                    ; 2 uses
  %i.mn = sub nsw i16 0, %i.ml
  %.masked.i = and i16 %i.mn, 8191
  %i.mo = or i16 %i.mm, %.masked.i
  %i.mp = icmp eq i16 %i.mj, %i.mo
  %i.mq = select i1 %i.mp, i64 %.03853.i, i64 0   ; 2 uses
  %i.mr = lshr i64 %.04250.i, 1
  %i.ms = and i16 %i.mj, 2
  %i.mt = zext nneg i16 %i.ms to i64
  %i.mu = shl nuw i64 %i.mt, 62                   ; 2 uses
  %i.mv = or disjoint i64 %i.mu, %i.mr            ; 2 uses
  %i.mw = zext nneg i16 %i.mm to i64
  %i.mx = call i64 @llvm.fshl.i64(i64 %i.mw, i64 %.04051.i, i64 63)
  %i.my = or i64 %i.mx, %i.mu                     ; 2 uses
  %i.mz = add i32 %.03952.i, 1                    ; 2 uses
  %i.na = icmp eq i32 %i.mz, 64
  br i1 %i.na, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %i.mv, ptr %.04648.i, align 8, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %.04648.i, i64 8
  store i64 %i.my, ptr %.04449.i, align 8, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %.04449.i, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.147.i = phi ptr [ %i.nb, %bb.v ], [ %.04648.i, %bb.u ] ; 2 uses
  %.145.i = phi ptr [ %i.nc, %bb.v ], [ %.04449.i, %bb.u ] ; 2 uses
  %.143.i = phi i64 [ 0, %bb.v ], [ %i.mv, %bb.u ] ; 2 uses
  %.141.i = phi i64 [ 0, %bb.v ], [ %i.my, %bb.u ] ; 2 uses
  %.1.i130 = phi i32 [ 0, %bb.v ], [ %i.mz, %bb.u ] ; 2 uses
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, 701
  br i1 %exitcond.not.i132, label %poly3_from_poly_checked.exit, label %bb.u, !llvm.loop !110

poly3_from_poly_checked.exit:                     ; preds = %bb.w
  %i.nd = zext i32 %.1.i130 to i64
  %i.ne = sub nsw i64 64, %i.nd                   ; 2 uses
  %i.nf = lshr i64 %.143.i, %i.ne
  %i.ng = lshr i64 %.141.i, %i.ne
  store i64 %i.nf, ptr %.147.i, align 8, !tbaa !17
  store i64 %i.ng, ptr %.145.i, align 8, !tbaa !17
  %i.nh = getelementptr inbounds nuw i8, ptr %i.j, i64 43680 ; 3 uses
  call fastcc void @poly_marshal(ptr noundef nonnull %i.nh, ptr noundef nonnull %i.ey)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.j, i64 44818 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %poly3_from_poly_checked.exit
  %.024.i = phi ptr [ %i.hv, %poly3_from_poly_checked.exit ], [ %i.nw, %bb.x ] ; 3 uses
  %.01523.i = phi i64 [ 0, %poly3_from_poly_checked.exit ], [ %i.nx, %bb.x ] ; 2 uses
  %i.nj = load i16, ptr %.024.i, align 2, !tbaa !24
  %i.nk = and i16 %i.nj, 3                        ; 2 uses
  %i.nl = lshr i16 %i.nk, 1
  %i.nm = xor i16 %i.nl, %i.nk
  %i.nn = getelementptr inbounds nuw i8, ptr %.024.i, i64 2
  %i.no = load <4 x i16>, ptr %i.nn, align 2, !tbaa !24
  %i.np = and <4 x i16> %i.no, splat (i16 3)      ; 2 uses
  %i.nq = lshr <4 x i16> %i.np, splat (i16 1)
  %i.nr = xor <4 x i16> %i.nq, %i.np
  %i.ns = mul nuw nsw <4 x i16> %i.nr, <i16 3, i16 9, i16 27, i16 81>
  %i.nt = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ns)
  %op.rdx208 = add nuw nsw i16 %i.nt, %i.nm
  %i.nu = trunc i16 %op.rdx208 to i8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.01523.i
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !22
  %i.nw = getelementptr inbounds nuw i8, ptr %.024.i, i64 10
  %i.nx = add nuw nsw i64 %.01523.i, 1            ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %i.nx, 140
  br i1 %exitcond.not.i133, label %poly_marshal_mod3.exit, label %bb.x, !llvm.loop !2

end_hunk_3
begin_hunk_4_@poly_unmarshal:vector.memcheck
  %i.aac = insertelement <8 x i8> %i.aab, i8 %i.zr, i64 3
  %i.aad = insertelement <8 x i8> %i.aac, i8 %i.zt, i64 4
  %i.aae = insertelement <8 x i8> %i.aad, i8 %i.zv, i64 5
  %i.aaf = insertelement <8 x i8> %i.aae, i8 %i.zx, i64 6
  %i.aag = insertelement <8 x i8> %i.aaf, i8 %i.zy, i64 7
  %i.aah = zext <8 x i8> %i.aag to <8 x i16>
  %i.aai = shl nuw nsw <8 x i16> %i.aah, <i16 8, i16 11, i16 6, i16 9, i16 12, i16 7, i16 10, i16 5>
  %i.aaj = insertelement <8 x i16> poison, i16 %i.xo, i64 0
  %i.aak = insertelement <8 x i16> %i.aaj, i16 %i.xx, i64 1
  %i.aal = insertelement <8 x i16> %i.aak, i16 %i.yb, i64 2
  %i.aam = insertelement <8 x i16> %i.aal, i16 %i.yk, i64 3
  %i.aan = insertelement <8 x i16> %i.aam, i16 %i.yt, i64 4
  %i.aao = insertelement <8 x i16> %i.aan, i16 %i.yx, i64 5
  %i.aap = insertelement <8 x i16> %i.aao, i16 %i.zg, i64 6
  %i.aaq = insertelement <8 x i16> %i.aap, i16 %i.zk, i64 7
  %i.aar = or disjoint <8 x i16> %i.aai, %i.aaq
  store <8 x i16> %i.aar, ptr %.06569, align 2, !tbaa !24
  br label %scalar.ph.rtcont

scalar.ph.rtscalar:                               ; preds = %scalar.ph
  %i.aas = load i8, ptr %.06668, align 1, !tbaa !22
  %i.aat = zext i8 %i.aas to i16
  %i.aau = getelementptr inbounds nuw i8, ptr %.06668, i64 1 ; 2 uses
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !22
  %i.aaw = and i8 %i.aav, 31
  %i.aax = zext nneg i8 %i.aaw to i16
  %i.aay = shl nuw nsw i16 %i.aax, 8
  %i.aaz = or disjoint i16 %i.aay, %i.aat
  store i16 %i.aaz, ptr %.06569, align 2, !tbaa !24
  %i.aba = load i8, ptr %i.aau, align 1, !tbaa !22
  %i.abb = lshr i8 %i.aba, 5
  %i.abc = zext nneg i8 %i.abb to i16
  %i.abd = getelementptr inbounds nuw i8, ptr %.06668, i64 2
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !22
  %i.abf = zext i8 %i.abe to i16
  %i.abg = shl nuw nsw i16 %i.abf, 3
  %i.abh = or disjoint i16 %i.abg, %i.abc
  %i.abi = getelementptr inbounds nuw i8, ptr %.06668, i64 3 ; 2 uses
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !22
  %i.abk = and i8 %i.abj, 3
  %i.abl = zext nneg i8 %i.abk to i16
  %i.abm = shl nuw nsw i16 %i.abl, 11
  %i.abn = or disjoint i16 %i.abm, %i.abh
  %i.abo = getelementptr inbounds nuw i8, ptr %.06569, i64 2
  store i16 %i.abn, ptr %i.abo, align 2, !tbaa !24
  %i.abp = load i8, ptr %i.abi, align 1, !tbaa !22
  %i.abq = lshr i8 %i.abp, 2
  %i.abr = zext nneg i8 %i.abq to i16
  %i.abs = getelementptr inbounds nuw i8, ptr %.06668, i64 4 ; 2 uses
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !22
  %i.abu = and i8 %i.abt, 127
  %i.abv = zext nneg i8 %i.abu to i16
  %i.abw = shl nuw nsw i16 %i.abv, 6
  %i.abx = or disjoint i16 %i.abw, %i.abr
  %i.aby = getelementptr inbounds nuw i8, ptr %.06569, i64 4
  store i16 %i.abx, ptr %i.aby, align 2, !tbaa !24
  %i.abz = load i8, ptr %i.abs, align 1, !tbaa !22
  %i.aca = lshr i8 %i.abz, 7
  %i.acb = zext nneg i8 %i.aca to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %.06668, i64 5
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !22
  %i.ace = zext i8 %i.acd to i16
  %i.acf = shl nuw nsw i16 %i.ace, 1
  %i.acg = or disjoint i16 %i.acf, %i.acb
  %i.ach = getelementptr inbounds nuw i8, ptr %.06668, i64 6 ; 2 uses
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !22
  %i.acj = and i8 %i.aci, 15
  %i.ack = zext nneg i8 %i.acj to i16
  %i.acl = shl nuw nsw i16 %i.ack, 9
  %i.acm = or disjoint i16 %i.acl, %i.acg
  %i.acn = getelementptr inbounds nuw i8, ptr %.06569, i64 6
  store i16 %i.acm, ptr %i.acn, align 2, !tbaa !24
  %i.aco = load i8, ptr %i.ach, align 1, !tbaa !22
  %i.acp = lshr i8 %i.aco, 4
  %i.acq = zext nneg i8 %i.acp to i16
  %i.acr = getelementptr inbounds nuw i8, ptr %.06668, i64 7
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !22
  %i.act = zext i8 %i.acs to i16
  %i.acu = shl nuw nsw i16 %i.act, 4
  %i.acv = or disjoint i16 %i.acu, %i.acq
  %i.acw = getelementptr inbounds nuw i8, ptr %.06668, i64 8 ; 2 uses
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !22
  %i.acy = and i8 %i.acx, 1
  %i.acz = zext nneg i8 %i.acy to i16
  %i.ada = shl nuw nsw i16 %i.acz, 12
  %i.adb = or disjoint i16 %i.ada, %i.acv
  %i.adc = getelementptr inbounds nuw i8, ptr %.06569, i64 8
  store i16 %i.adb, ptr %i.adc, align 2, !tbaa !24
  %i.add = load i8, ptr %i.acw, align 1, !tbaa !22
  %i.ade = lshr i8 %i.add, 1
  %i.adf = zext nneg i8 %i.ade to i16
  %i.adg = getelementptr inbounds nuw i8, ptr %.06668, i64 9 ; 2 uses
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !22
  %i.adi = and i8 %i.adh, 63
  %i.adj = zext nneg i8 %i.adi to i16
  %i.adk = shl nuw nsw i16 %i.adj, 7
  %i.adl = or disjoint i16 %i.adk, %i.adf
  %i.adm = getelementptr inbounds nuw i8, ptr %.06569, i64 10
  store i16 %i.adl, ptr %i.adm, align 2, !tbaa !24
  %i.adn = load i8, ptr %i.adg, align 1, !tbaa !22
  %i.ado = lshr i8 %i.adn, 6
  %i.adp = zext nneg i8 %i.ado to i16
  %i.adq = getelementptr inbounds nuw i8, ptr %.06668, i64 10
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !22
  %i.ads = zext i8 %i.adr to i16
  %i.adt = shl nuw nsw i16 %i.ads, 2
  %i.adu = or disjoint i16 %i.adt, %i.adp
  %i.adv = getelementptr inbounds nuw i8, ptr %.06668, i64 11 ; 2 uses
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !22
  %i.adx = and i8 %i.adw, 7
  %i.ady = zext nneg i8 %i.adx to i16
  %i.adz = shl nuw nsw i16 %i.ady, 10
  %i.aea = or disjoint i16 %i.adz, %i.adu
  %i.aeb = getelementptr inbounds nuw i8, ptr %.06569, i64 12
  store i16 %i.aea, ptr %i.aeb, align 2, !tbaa !24
  %i.aec = load i8, ptr %i.adv, align 1, !tbaa !22
  %i.aed = lshr i8 %i.aec, 3
  %i.aee = zext nneg i8 %i.aed to i16
  %i.aef = getelementptr inbounds nuw i8, ptr %.06668, i64 12
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !22
  %i.aeh = zext i8 %i.aeg to i16
  %i.aei = shl nuw nsw i16 %i.aeh, 5
  %i.aej = or disjoint i16 %i.aei, %i.aee
  %i.aek = getelementptr inbounds nuw i8, ptr %.06569, i64 14
  store i16 %i.aej, ptr %i.aek, align 2, !tbaa !24
  br label %scalar.ph.rtcont

scalar.ph.rtcont:                                 ; preds = %scalar.ph.rtscalar, %scalar.ph.rtvec
  %.rtmerge132 = add nuw nsw i64 %.06470, 1       ; 2 uses
  %exitcond.not.rtmerge = icmp eq i64 %.rtmerge132, 87
  %.rtmerge131 = getelementptr inbounds nuw i8, ptr %.06668, i64 13 ; 2 uses
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.06569, i64 16 ; 2 uses
  br i1 %exitcond.not.rtmerge, label %iter.check, label %scalar.ph, !llvm.loop !115
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @HRSS_marshal_public_key(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call fastcc void @poly_marshal(ptr noundef %0, ptr noundef %i.d)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @HRSS_parse_public_key(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = sub i64 0, %i.a
  %i.c = and i64 %i.b, 15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = tail call fastcc i32 @poly_unmarshal(ptr noundef %i.d, ptr noundef %1)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1402
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.f, i8 0, i64 6, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #5

declare void @poly_Rq_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @poly_mul_vec_aux(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  switch i64 %4, label %bb.d [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load <2 x i64>, ptr %2, align 16, !tbaa !22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 16, !tbaa !22 ; 2 uses
  %i.d = load <8 x i16>, ptr %3, align 16, !tbaa !22 ; 8 uses
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.f = bitcast <2 x i64> %i.a to <8 x i16>      ; 2 uses
  %i.g = mul <8 x i16> %i.e, %i.f
  %i.h = bitcast <2 x i64> %i.c to <8 x i16>      ; 2 uses
  %i.i = mul <8 x i16> %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load <8 x i16>, ptr %i.j, align 16, !tbaa !22 ; 8 uses
  %i.l = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.m = mul <8 x i16> %i.l, %i.f
  %i.n = add <8 x i16> %i.m, %i.i
  %i.o = mul <8 x i16> %i.l, %i.h
  %i.p = bitcast <2 x i64> %i.a to <16 x i8>      ; 2 uses
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %5 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.p, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.r = bitcast <2 x i64> %i.c to <16 x i8>      ; 2 uses
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %6 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.r, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.t = or <16 x i8> %6, %i.q                    ; 3 uses
  %i.u = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.v = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.w = mul <8 x i16> %i.u, %i.v
  %i.x = add <8 x i16> %i.w, %i.g
  %i.y = bitcast <16 x i8> %i.t to <8 x i16>      ; 2 uses
  %i.z = mul <8 x i16> %i.u, %i.y
  %i.aa = bitcast <16 x i8> %i.s to <8 x i16>     ; 2 uses
  %i.ab = mul <8 x i16> %i.u, %i.aa
  %i.ac = add <8 x i16> %i.ab, %i.o
  %i.ad = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.ae = mul <8 x i16> %i.ad, %i.v
  %i.af = mul <8 x i16> %i.ad, %i.y
  %i.ag = add <8 x i16> %i.ac, %i.af
  %i.ah = mul <8 x i16> %i.ad, %i.aa
  %i.ai = shufflevector <16 x i8> %5, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %7 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %5, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.aj = shufflevector <16 x i8> %i.t, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %8 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ak = or <16 x i8> %8, %i.ai                  ; 3 uses
  %9 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.al = or <16 x i8> %i.aj, %9                  ; 2 uses
  %i.am = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 3 uses
  %i.an = bitcast <16 x i8> %7 to <8 x i16>       ; 2 uses
  %i.ao = mul <8 x i16> %i.am, %i.an
  %i.ap = add <8 x i16> %i.x, %i.ao
  %i.aq = bitcast <16 x i8> %i.ak to <8 x i16>    ; 2 uses
  %i.ar = mul <8 x i16> %i.am, %i.aq
  %i.as = bitcast <16 x i8> %i.al to <8 x i16>    ; 2 uses
  %i.at = mul <8 x i16> %i.am, %i.as
  %i.au = add <8 x i16> %i.ag, %i.at
  %i.av = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 3 uses
  %i.aw = mul <8 x i16> %i.av, %i.an
  %i.ax = mul <8 x i16> %i.av, %i.aq
  %i.ay = add <8 x i16> %i.au, %i.ax
  %i.az = mul <8 x i16> %i.av, %i.as
  %i.ba = add <8 x i16> %i.az, %i.ah
  %i.bb = shufflevector <16 x i8> %7, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %10 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %7, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.bc = shufflevector <16 x i8> %i.ak, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %11 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ak, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bd = or <16 x i8> %11, %i.bb                 ; 3 uses
  %12 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.al, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.be = or <16 x i8> %12, %i.bc                 ; 2 uses
  %i.bf = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 3 uses
  %i.bg = bitcast <16 x i8> %10 to <8 x i16>      ; 2 uses
  %i.bh = mul <8 x i16> %i.bf, %i.bg
  %i.bi = add <8 x i16> %i.ap, %i.bh
  %i.bj = bitcast <16 x i8> %i.bd to <8 x i16>    ; 2 uses
  %i.bk = mul <8 x i16> %i.bf, %i.bj
  %i.bl = bitcast <16 x i8> %i.be to <8 x i16>    ; 2 uses
  %i.bm = mul <8 x i16> %i.bf, %i.bl
  %i.bn = add <8 x i16> %i.ay, %i.bm
  %i.bo = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 3 uses
  %i.bp = mul <8 x i16> %i.bo, %i.bg
  %i.bq = mul <8 x i16> %i.bo, %i.bj
  %i.br = add <8 x i16> %i.bn, %i.bq
  %i.bs = mul <8 x i16> %i.bo, %i.bl
  %i.bt = add <8 x i16> %i.ba, %i.bs
  %i.bu = shufflevector <16 x i8> %10, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %13 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %10, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.bv = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %14 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bd, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bw = or <16 x i8> %14, %i.bu                 ; 3 uses
  %15 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.be, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bx = or <16 x i8> %15, %i.bv                 ; 2 uses
  %i.by = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 3 uses
  %i.bz = bitcast <16 x i8> %13 to <8 x i16>      ; 2 uses
  %i.ca = mul <8 x i16> %i.by, %i.bz
  %i.cb = add <8 x i16> %i.bi, %i.ca
  %i.cc = bitcast <16 x i8> %i.bw to <8 x i16>    ; 2 uses
  %i.cd = mul <8 x i16> %i.by, %i.cc
  %i.ce = bitcast <16 x i8> %i.bx to <8 x i16>    ; 2 uses
  %i.cf = mul <8 x i16> %i.by, %i.ce
  %i.cg = add <8 x i16> %i.br, %i.cf
  %i.ch = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 3 uses
  %i.ci = mul <8 x i16> %i.ch, %i.bz
  %i.cj = mul <8 x i16> %i.ch, %i.cc
  %i.ck = add <8 x i16> %i.cg, %i.cj
  %i.cl = mul <8 x i16> %i.ch, %i.ce
  %i.cm = add <8 x i16> %i.bt, %i.cl
  %i.cn = shufflevector <16 x i8> %13, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %16 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %13, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.co = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %17 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cp = or <16 x i8> %17, %i.cn                 ; 3 uses
  %18 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.bx, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cq = or <16 x i8> %18, %i.co                 ; 2 uses
  %i.cr = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 3 uses
  %i.cs = bitcast <16 x i8> %16 to <8 x i16>      ; 2 uses
  %i.ct = mul <8 x i16> %i.cr, %i.cs
  %i.cu = add <8 x i16> %i.cb, %i.ct
  %i.cv = bitcast <16 x i8> %i.cp to <8 x i16>    ; 2 uses
  %i.cw = mul <8 x i16> %i.cr, %i.cv
  %i.cx = bitcast <16 x i8> %i.cq to <8 x i16>    ; 2 uses
  %i.cy = mul <8 x i16> %i.cr, %i.cx
  %i.cz = add <8 x i16> %i.ck, %i.cy
  %i.da = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 3 uses
  %i.db = mul <8 x i16> %i.da, %i.cs
  %i.dc = mul <8 x i16> %i.da, %i.cv
  %i.dd = add <8 x i16> %i.cz, %i.dc
  %i.de = mul <8 x i16> %i.da, %i.cx
  %i.df = add <8 x i16> %i.cm, %i.de
  %i.dg = shufflevector <16 x i8> %16, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %19 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %16, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.dh = shufflevector <16 x i8> %i.cp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %20 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.cp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.di = or <16 x i8> %20, %i.dg                 ; 3 uses
  %21 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.cq, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dj = or <16 x i8> %21, %i.dh                 ; 2 uses
  %i.dk = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 3 uses
  %i.dl = bitcast <16 x i8> %19 to <8 x i16>      ; 2 uses
  %i.dm = mul <8 x i16> %i.dk, %i.dl
  %i.dn = add <8 x i16> %i.cu, %i.dm
  %i.do = bitcast <16 x i8> %i.di to <8 x i16>    ; 2 uses
  %i.dp = mul <8 x i16> %i.dk, %i.do
  %i.dq = bitcast <16 x i8> %i.dj to <8 x i16>    ; 2 uses
  %i.dr = mul <8 x i16> %i.dk, %i.dq
  %i.ds = add <8 x i16> %i.dd, %i.dr
  %i.dt = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 3 uses
  %i.du = mul <8 x i16> %i.dt, %i.dl
  %i.dv = mul <8 x i16> %i.dt, %i.do
  %i.dw = add <8 x i16> %i.ds, %i.dv
  %i.dx = mul <8 x i16> %i.dt, %i.dq
  %i.dy = add <8 x i16> %i.df, %i.dx
  %i.dz = shufflevector <16 x i8> %19, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %22 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %19, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ea = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %23 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.di, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.eb = or <16 x i8> %23, %i.dz
  %24 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.dj, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ec = or <16 x i8> %24, %i.ea
  %i.ed = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 3 uses
  %i.ee = bitcast <16 x i8> %22 to <8 x i16>      ; 2 uses
  %i.ef = mul <8 x i16> %i.ed, %i.ee
  %i.eg = add <8 x i16> %i.dn, %i.ef
  %i.eh = bitcast <16 x i8> %i.eb to <8 x i16>    ; 2 uses
  %i.ei = mul <8 x i16> %i.ed, %i.eh
  %i.ej = bitcast <16 x i8> %i.ec to <8 x i16>    ; 2 uses
  %i.ek = mul <8 x i16> %i.ed, %i.ej
  %i.el = add <8 x i16> %i.dw, %i.ek
  %i.em = shufflevector <8 x i16> %i.k, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 3 uses
  %i.en = mul <8 x i16> %i.em, %i.ee
  %i.eo = add <8 x i16> %i.n, %i.ae
  %i.ep = add <8 x i16> %i.eo, %i.aw
  %i.eq = add <8 x i16> %i.ep, %i.z
  %i.er = add <8 x i16> %i.eq, %i.bp
  %i.es = add <8 x i16> %i.er, %i.ci
  %i.et = add <8 x i16> %i.es, %i.ar
  %i.eu = add <8 x i16> %i.et, %i.db
  %i.ev = add <8 x i16> %i.eu, %i.du
  %i.ew = add <8 x i16> %i.ev, %i.bk
  %i.ex = add <8 x i16> %i.ew, %i.en
  %i.ey = add <8 x i16> %i.ex, %i.cd
  %i.ez = add <8 x i16> %i.ey, %i.cw
  %i.fa = add <8 x i16> %i.ez, %i.dp
  %i.fb = add <8 x i16> %i.fa, %i.ei
  %i.fc = mul <8 x i16> %i.em, %i.eh
  %i.fd = add <8 x i16> %i.el, %i.fc
  %i.fe = mul <8 x i16> %i.em, %i.ej
  %i.ff = add <8 x i16> %i.dy, %i.fe
  store <8 x i16> %i.eg, ptr %0, align 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.fg = load <2 x i64>, ptr %2, align 16, !tbaa !22 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = load <2 x i64>, ptr %i.fh, align 16, !tbaa !22 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = load <2 x i64>, ptr %i.fj, align 16, !tbaa !22 ; 2 uses
  %i.fl = load <8 x i16>, ptr %3, align 16, !tbaa !22 ; 8 uses
  %i.fm = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.fn = bitcast <2 x i64> %i.fg to <8 x i16>    ; 3 uses
  %i.fo = mul <8 x i16> %i.fm, %i.fn
  %i.fp = bitcast <2 x i64> %i.fi to <8 x i16>    ; 3 uses
  %i.fq = mul <8 x i16> %i.fm, %i.fp
  %i.fr = bitcast <2 x i64> %i.fk to <8 x i16>    ; 3 uses
  %i.fs = mul <8 x i16> %i.fm, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fu = load <8 x i16>, ptr %i.ft, align 16, !tbaa !22 ; 8 uses
  %i.fv = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.fw = mul <8 x i16> %i.fv, %i.fn
  %i.fx = add <8 x i16> %i.fw, %i.fq
  %i.fy = mul <8 x i16> %i.fv, %i.fp
  %i.fz = add <8 x i16> %i.fy, %i.fs
  %i.ga = mul <8 x i16> %i.fv, %i.fr
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gc = load <8 x i16>, ptr %i.gb, align 16, !tbaa !22 ; 8 uses
  %i.gd = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ge = mul <8 x i16> %i.gd, %i.fn
  %i.gf = mul <8 x i16> %i.gd, %i.fp
  %i.gg = mul <8 x i16> %i.gd, %i.fr
  %i.gh = bitcast <2 x i64> %i.fg to <16 x i8>    ; 2 uses
  %i.gi = shufflevector <16 x i8> %i.gh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %25 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.gh, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.gj = bitcast <2 x i64> %i.fi to <16 x i8>    ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %26 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.gj, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.gl = or <16 x i8> %26, %i.gi                 ; 3 uses
  %i.gm = bitcast <2 x i64> %i.fk to <16 x i8>    ; 2 uses
  %i.gn = shufflevector <16 x i8> %i.gm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %27 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.gm, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.go = or <16 x i8> %27, %i.gk                 ; 3 uses
  %i.gp = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.gq = bitcast <16 x i8> %25 to <8 x i16>      ; 3 uses
  %i.gr = mul <8 x i16> %i.gp, %i.gq
  %i.gs = add <8 x i16> %i.gr, %i.fo
  %i.gt = bitcast <16 x i8> %i.gl to <8 x i16>    ; 3 uses
  %i.gu = mul <8 x i16> %i.gp, %i.gt
  %i.gv = add <8 x i16> %i.fx, %i.gu
  %i.gw = bitcast <16 x i8> %i.go to <8 x i16>    ; 3 uses
  %i.gx = mul <8 x i16> %i.gp, %i.gw
  %i.gy = bitcast <16 x i8> %i.gn to <8 x i16>    ; 3 uses
  %i.gz = mul <8 x i16> %i.gp, %i.gy
  %i.ha = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.hb = mul <8 x i16> %i.ha, %i.gq
  %i.hc = add <8 x i16> %i.gv, %i.hb
  %i.hd = mul <8 x i16> %i.ha, %i.gt
  %i.he = mul <8 x i16> %i.ha, %i.gw
  %i.hf = mul <8 x i16> %i.ha, %i.gy
  %i.hg = add <8 x i16> %i.gg, %i.hf
  %i.hh = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.hi = mul <8 x i16> %i.hh, %i.gq
  %i.hj = mul <8 x i16> %i.hh, %i.gt
  %i.hk = mul <8 x i16> %i.hh, %i.gw
  %i.hl = add <8 x i16> %i.hg, %i.hk
  %i.hm = mul <8 x i16> %i.hh, %i.gy
  %i.hn = shufflevector <16 x i8> %25, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %28 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %25, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.ho = shufflevector <16 x i8> %i.gl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %29 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.gl, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.hp = or <16 x i8> %29, %i.hn                 ; 3 uses
  %i.hq = shufflevector <16 x i8> %i.go, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %30 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.go, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.hr = or <16 x i8> %30, %i.ho                 ; 3 uses
  %31 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.gn, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.hs = or <16 x i8> %i.hq, %31                 ; 2 uses
  %i.ht = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.hu = bitcast <16 x i8> %28 to <8 x i16>      ; 3 uses
  %i.hv = mul <8 x i16> %i.ht, %i.hu
  %i.hw = add <8 x i16> %i.gs, %i.hv
  %i.hx = bitcast <16 x i8> %i.hp to <8 x i16>    ; 3 uses
  %i.hy = mul <8 x i16> %i.ht, %i.hx
  %i.hz = bitcast <16 x i8> %i.hr to <8 x i16>    ; 3 uses
  %i.ia = mul <8 x i16> %i.ht, %i.hz
  %i.ib = bitcast <16 x i8> %i.hs to <8 x i16>    ; 3 uses
  %i.ic = mul <8 x i16> %i.ht, %i.ib
  %i.id = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.ie = mul <8 x i16> %i.id, %i.hu
  %i.if = mul <8 x i16> %i.id, %i.hx
  %i.ig = mul <8 x i16> %i.id, %i.hz
  %i.ih = mul <8 x i16> %i.id, %i.ib
  %i.ii = add <8 x i16> %i.hl, %i.ih
  %i.ij = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  %i.ik = mul <8 x i16> %i.ij, %i.hu
  %i.il = mul <8 x i16> %i.ij, %i.hx
  %i.im = mul <8 x i16> %i.ij, %i.hz
  %i.in = add <8 x i16> %i.ii, %i.im
  %i.io = mul <8 x i16> %i.ij, %i.ib
  %i.ip = add <8 x i16> %i.io, %i.hm
  %i.iq = shufflevector <16 x i8> %28, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %32 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %28, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.ir = shufflevector <16 x i8> %i.hp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %33 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.hp, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.is = or <16 x i8> %33, %i.iq                 ; 3 uses
  %i.it = shufflevector <16 x i8> %i.hr, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %34 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.hr, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.iu = or <16 x i8> %34, %i.ir                 ; 3 uses
  %35 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.hs, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.iv = or <16 x i8> %35, %i.it                 ; 2 uses
  %i.iw = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.ix = bitcast <16 x i8> %32 to <8 x i16>      ; 3 uses
  %i.iy = mul <8 x i16> %i.iw, %i.ix
  %i.iz = add <8 x i16> %i.hw, %i.iy
  %i.ja = bitcast <16 x i8> %i.is to <8 x i16>    ; 3 uses
  %i.jb = mul <8 x i16> %i.iw, %i.ja
  %i.jc = bitcast <16 x i8> %i.iu to <8 x i16>    ; 3 uses
  %i.jd = mul <8 x i16> %i.iw, %i.jc
  %i.je = bitcast <16 x i8> %i.iv to <8 x i16>    ; 3 uses
  %i.jf = mul <8 x i16> %i.iw, %i.je
  %i.jg = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.jh = mul <8 x i16> %i.jg, %i.ix
  %i.ji = mul <8 x i16> %i.jg, %i.ja
  %i.jj = mul <8 x i16> %i.jg, %i.jc
  %i.jk = mul <8 x i16> %i.jg, %i.je
  %i.jl = add <8 x i16> %i.in, %i.jk
  %i.jm = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 4 uses
  %i.jn = mul <8 x i16> %i.jm, %i.ix
  %i.jo = mul <8 x i16> %i.jm, %i.ja
  %i.jp = mul <8 x i16> %i.jm, %i.jc
  %i.jq = add <8 x i16> %i.jl, %i.jp
  %i.jr = mul <8 x i16> %i.jm, %i.je
  %i.js = add <8 x i16> %i.ip, %i.jr
  %i.jt = shufflevector <16 x i8> %32, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %36 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %32, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.ju = shufflevector <16 x i8> %i.is, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %37 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.is, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.jv = or <16 x i8> %37, %i.jt                 ; 3 uses
  %i.jw = shufflevector <16 x i8> %i.iu, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %38 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.iu, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.jx = or <16 x i8> %38, %i.ju                 ; 3 uses
  %39 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.iv, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.jy = or <16 x i8> %39, %i.jw                 ; 2 uses
  %i.jz = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.ka = bitcast <16 x i8> %36 to <8 x i16>      ; 3 uses
  %i.kb = mul <8 x i16> %i.jz, %i.ka
  %i.kc = add <8 x i16> %i.iz, %i.kb
  %i.kd = bitcast <16 x i8> %i.jv to <8 x i16>    ; 3 uses
  %i.ke = mul <8 x i16> %i.jz, %i.kd
  %i.kf = bitcast <16 x i8> %i.jx to <8 x i16>    ; 3 uses
  %i.kg = mul <8 x i16> %i.jz, %i.kf
  %i.kh = bitcast <16 x i8> %i.jy to <8 x i16>    ; 3 uses
  %i.ki = mul <8 x i16> %i.jz, %i.kh
  %i.kj = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kk = mul <8 x i16> %i.kj, %i.ka
  %i.kl = mul <8 x i16> %i.kj, %i.kd
  %i.km = mul <8 x i16> %i.kj, %i.kf
  %i.kn = mul <8 x i16> %i.kj, %i.kh
  %i.ko = add <8 x i16> %i.jq, %i.kn
  %i.kp = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 4 uses
  %i.kq = mul <8 x i16> %i.kp, %i.ka
  %i.kr = mul <8 x i16> %i.kp, %i.kd
  %i.ks = mul <8 x i16> %i.kp, %i.kf
  %i.kt = add <8 x i16> %i.ko, %i.ks
  %i.ku = mul <8 x i16> %i.kp, %i.kh
  %i.kv = add <8 x i16> %i.js, %i.ku
  %i.kw = shufflevector <16 x i8> %36, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %40 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %36, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.kx = shufflevector <16 x i8> %i.jv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %41 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.jv, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ky = or <16 x i8> %41, %i.kw                 ; 3 uses
  %i.kz = shufflevector <16 x i8> %i.jx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %42 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.jx, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.la = or <16 x i8> %42, %i.kx                 ; 3 uses
  %43 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.jy, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.lb = or <16 x i8> %43, %i.kz                 ; 2 uses
  %i.lc = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 4 uses
  %i.ld = bitcast <16 x i8> %40 to <8 x i16>      ; 3 uses
  %i.le = mul <8 x i16> %i.lc, %i.ld
  %i.lf = add <8 x i16> %i.kc, %i.le
  %i.lg = bitcast <16 x i8> %i.ky to <8 x i16>    ; 3 uses
  %i.lh = mul <8 x i16> %i.lc, %i.lg
  %i.li = bitcast <16 x i8> %i.la to <8 x i16>    ; 3 uses
  %i.lj = mul <8 x i16> %i.lc, %i.li
  %i.lk = bitcast <16 x i8> %i.lb to <8 x i16>    ; 3 uses
  %i.ll = mul <8 x i16> %i.lc, %i.lk
  %i.lm = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 4 uses
  %i.ln = mul <8 x i16> %i.lm, %i.ld
  %i.lo = mul <8 x i16> %i.lm, %i.lg
  %i.lp = mul <8 x i16> %i.lm, %i.li
  %i.lq = mul <8 x i16> %i.lm, %i.lk
  %i.lr = add <8 x i16> %i.kt, %i.lq
  %i.ls = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 4 uses
  %i.lt = mul <8 x i16> %i.ls, %i.ld
  %i.lu = mul <8 x i16> %i.ls, %i.lg
  %i.lv = mul <8 x i16> %i.ls, %i.li
  %i.lw = add <8 x i16> %i.lr, %i.lv
  %i.lx = mul <8 x i16> %i.ls, %i.lk
  %i.ly = add <8 x i16> %i.kv, %i.lx
  %i.lz = shufflevector <16 x i8> %40, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %44 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %40, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 3 uses
  %i.ma = shufflevector <16 x i8> %i.ky, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %45 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ky, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.mb = or <16 x i8> %45, %i.lz                 ; 3 uses
  %i.mc = shufflevector <16 x i8> %i.la, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %46 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.la, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.md = or <16 x i8> %46, %i.ma                 ; 3 uses
  %47 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.lb, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.me = or <16 x i8> %47, %i.mc                 ; 2 uses
  %i.mf = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 4 uses
  %i.mg = bitcast <16 x i8> %44 to <8 x i16>      ; 3 uses
  %i.mh = mul <8 x i16> %i.mf, %i.mg
  %i.mi = add <8 x i16> %i.lf, %i.mh
  %i.mj = bitcast <16 x i8> %i.mb to <8 x i16>    ; 3 uses
  %i.mk = mul <8 x i16> %i.mf, %i.mj
  %i.ml = bitcast <16 x i8> %i.md to <8 x i16>    ; 3 uses
  %i.mm = mul <8 x i16> %i.mf, %i.ml
  %i.mn = bitcast <16 x i8> %i.me to <8 x i16>    ; 3 uses
  %i.mo = mul <8 x i16> %i.mf, %i.mn
  %i.mp = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 4 uses
  %i.mq = mul <8 x i16> %i.mp, %i.mg
  %i.mr = mul <8 x i16> %i.mp, %i.mj
  %i.ms = mul <8 x i16> %i.mp, %i.ml
  %i.mt = mul <8 x i16> %i.mp, %i.mn
  %i.mu = add <8 x i16> %i.lw, %i.mt
  %i.mv = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 4 uses
  %i.mw = mul <8 x i16> %i.mv, %i.mg
  %i.mx = mul <8 x i16> %i.mv, %i.mj
  %i.my = mul <8 x i16> %i.mv, %i.ml
  %i.mz = add <8 x i16> %i.mu, %i.my
  %i.na = mul <8 x i16> %i.mv, %i.mn
  %i.nb = add <8 x i16> %i.ly, %i.na
  %i.nc = shufflevector <16 x i8> %44, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %48 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %44, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.nd = shufflevector <16 x i8> %i.mb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %49 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.mb, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ne = or <16 x i8> %49, %i.nc
  %i.nf = shufflevector <16 x i8> %i.md, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %50 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.md, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ng = or <16 x i8> %50, %i.nd
  %51 = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.me, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.nh = or <16 x i8> %51, %i.nf
  %i.ni = shufflevector <8 x i16> %i.fl, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 4 uses
  %i.nj = bitcast <16 x i8> %48 to <8 x i16>      ; 3 uses
  %i.nk = mul <8 x i16> %i.ni, %i.nj
  %i.nl = add <8 x i16> %i.mi, %i.nk
  %i.nm = bitcast <16 x i8> %i.ne to <8 x i16>    ; 3 uses
  %i.nn = mul <8 x i16> %i.ni, %i.nm
  %i.no = bitcast <16 x i8> %i.ng to <8 x i16>    ; 3 uses
  %i.np = mul <8 x i16> %i.ni, %i.no
  %i.nq = bitcast <16 x i8> %i.nh to <8 x i16>    ; 3 uses
  %i.nr = mul <8 x i16> %i.ni, %i.nq
  %i.ns = shufflevector <8 x i16> %i.fu, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 4 uses
  %i.nt = mul <8 x i16> %i.ns, %i.nj
  %i.nu = add <8 x i16> %i.hc, %i.ie
  %i.nv = add <8 x i16> %i.nu, %i.jh
  %i.nw = add <8 x i16> %i.nv, %i.kk
  %i.nx = add <8 x i16> %i.nw, %i.hy
  %i.ny = add <8 x i16> %i.nx, %i.ln
  %i.nz = add <8 x i16> %i.ny, %i.mq
  %i.oa = add <8 x i16> %i.nz, %i.jb
  %i.ob = add <8 x i16> %i.oa, %i.nt
  %i.oc = add <8 x i16> %i.ob, %i.ke
  %i.od = add <8 x i16> %i.oc, %i.lh
  %i.oe = add <8 x i16> %i.od, %i.mk
  %i.of = add <8 x i16> %i.oe, %i.nn
  %i.og = mul <8 x i16> %i.ns, %i.nm
  %i.oh = mul <8 x i16> %i.ns, %i.no
  %i.oi = mul <8 x i16> %i.ns, %i.nq
  %i.oj = add <8 x i16> %i.mz, %i.oi
  %i.ok = shufflevector <8 x i16> %i.gc, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 4 uses
  %i.ol = mul <8 x i16> %i.ok, %i.nj
  %i.om = add <8 x i16> %i.fz, %i.hd
  %i.on = add <8 x i16> %i.om, %i.ge
  %i.oo = add <8 x i16> %i.on, %i.gx
  %i.op = add <8 x i16> %i.oo, %i.hi
  %i.oq = add <8 x i16> %i.op, %i.ik
  %i.or = add <8 x i16> %i.oq, %i.jn
  %i.os = add <8 x i16> %i.or, %i.kq
  %i.ot = add <8 x i16> %i.os, %i.if
  %i.ou = add <8 x i16> %i.ot, %i.lt
  %i.ov = add <8 x i16> %i.ou, %i.ia
  %i.ow = add <8 x i16> %i.ov, %i.mw
  %i.ox = add <8 x i16> %i.ow, %i.ji
  %i.oy = add <8 x i16> %i.ox, %i.ol
  %i.oz = add <8 x i16> %i.oy, %i.jd
  %i.pa = add <8 x i16> %i.oz, %i.kl
  %i.pb = add <8 x i16> %i.pa, %i.kg
  %i.pc = add <8 x i16> %i.pb, %i.lo
  %i.pd = add <8 x i16> %i.pc, %i.lj
  %i.pe = add <8 x i16> %i.pd, %i.mr
  %i.pf = add <8 x i16> %i.pe, %i.mm
  %i.pg = add <8 x i16> %i.pf, %i.og
  %i.ph = add <8 x i16> %i.pg, %i.np
  %i.pi = mul <8 x i16> %i.ok, %i.nm
  %i.pj = add <8 x i16> %i.gz, %i.ga
  %i.pk = add <8 x i16> %i.pj, %i.gf
  %i.pl = add <8 x i16> %i.pk, %i.he
  %i.pm = add <8 x i16> %i.pl, %i.hj
  %i.pn = add <8 x i16> %i.pm, %i.il
  %i.po = add <8 x i16> %i.pn, %i.ic
  %i.pp = add <8 x i16> %i.po, %i.ig
  %i.pq = add <8 x i16> %i.pp, %i.jo
  %i.pr = add <8 x i16> %i.pq, %i.jf
  %i.ps = add <8 x i16> %i.pr, %i.jj
  %i.pt = add <8 x i16> %i.ps, %i.kr
  %i.pu = add <8 x i16> %i.pt, %i.ki
  %i.pv = add <8 x i16> %i.pu, %i.km
  %i.pw = add <8 x i16> %i.pv, %i.lu
  %i.px = add <8 x i16> %i.pw, %i.ll
  %i.py = add <8 x i16> %i.px, %i.lp
  %i.pz = add <8 x i16> %i.py, %i.mx
  %i.qa = add <8 x i16> %i.pz, %i.mo
  %i.qb = add <8 x i16> %i.qa, %i.ms
  %i.qc = add <8 x i16> %i.qb, %i.pi
  %i.qd = add <8 x i16> %i.qc, %i.nr
  %i.qe = add <8 x i16> %i.qd, %i.oh
  %i.qf = mul <8 x i16> %i.ok, %i.no
  %i.qg = add <8 x i16> %i.oj, %i.qf
  %i.qh = mul <8 x i16> %i.ok, %i.nq
  %i.qi = add <8 x i16> %i.nb, %i.qh
  store <8 x i16> %i.nl, ptr %0, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %i.of, ptr %.sroa.18.0..sroa_idx, align 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <8 x i16> %i.ph, ptr %.sroa.49.0..sroa_idx, align 16
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.qj = lshr i64 %4, 1                          ; 12 uses
  %i.qk = sub nuw i64 %4, %i.qj                   ; 6 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qj ; 3 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.qj ; 3 uses
  %.not607 = icmp eq i64 %i.qj, 0
  br i1 %.not607, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.qn = getelementptr [16 x i8], ptr %0, i64 %i.qk
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.not = icmp eq i64 %i.qk, %i.qj                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0365599 = phi i64 [ 0, %.lr.ph ], [ %i.ra, %bb.e ] ; 7 uses
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %.0365599
  %i.qp = load <8 x i16>, ptr %i.qo, align 16, !tbaa !22
  %i.qq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.0365599
  %i.qr = load <8 x i16>, ptr %i.qq, align 16, !tbaa !22
  %i.qs = add <8 x i16> %i.qr, %i.qp
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0365599
  store <8 x i16> %i.qs, ptr %i.qt, align 16, !tbaa !22
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %.0365599
  %i.qv = load <8 x i16>, ptr %i.qu, align 16, !tbaa !22
  %i.qw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0365599
  %i.qx = load <8 x i16>, ptr %i.qw, align 16, !tbaa !22
  %i.qy = add <8 x i16> %i.qx, %i.qv
  %i.qz = getelementptr [16 x i8], ptr %i.qn, i64 %.0365599
  store <8 x i16> %i.qy, ptr %i.qz, align 16, !tbaa !22
  %i.ra = add nuw nsw i64 %.0365599, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ra, %i.qj
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !119

bb.f:                                             ; preds = %._crit_edge
  %i.rb = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qj
  %i.rc = load <2 x i64>, ptr %i.rb, align 16, !tbaa !22
  %i.rd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.qj
  store <2 x i64> %i.rc, ptr %i.rd, align 16, !tbaa !22
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.qj
  %i.rf = load <2 x i64>, ptr %i.re, align 16, !tbaa !22
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4
  store <2 x i64> %i.rf, ptr %i.rg, align 16, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.rh = shl i64 %i.qk, 1                        ; 3 uses
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.rh ; 3 uses
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.qk
  tail call fastcc void @poly_mul_vec_aux(ptr noundef %1, ptr noundef %i.ri, ptr noundef %0, ptr noundef %i.rj, i64 noundef %i.qk)
  %i.rk = and i64 %4, -2                          ; 4 uses
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.rk ; 3 uses
  tail call fastcc void @poly_mul_vec_aux(ptr noundef %i.rl, ptr noundef %i.ri, ptr noundef %i.ql, ptr noundef %i.qm, i64 noundef %i.qk)
  tail call fastcc void @poly_mul_vec_aux(ptr noundef %0, ptr noundef %i.ri, ptr noundef %2, ptr noundef %3, i64 noundef %i.qj)
  %.not608 = icmp eq i64 %i.rk, 0
  br i1 %.not608, label %._crit_edge603, label %.lr.ph602

._crit_edge603:                                   ; preds = %.lr.ph602, %bb.g
  br i1 %.not, label %bb.i, label %bb.h

.lr.ph602:                                        ; preds = %bb.g, %.lr.ph602
  %.0364600 = phi i64 [ %i.sd, %.lr.ph602 ], [ 0, %bb.g ] ; 5 uses
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.0364600 ; 2 uses
  %i.rn = load <8 x i16>, ptr %i.rm, align 16, !tbaa !22
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0364600
  %i.rp = load <8 x i16>, ptr %i.ro, align 16, !tbaa !22
  %i.rq = getelementptr [16 x i8], ptr %i.rl, i64 %.0364600
  %i.rr = load <8 x i16>, ptr %i.rq, align 16, !tbaa !22
  %i.rs = add <8 x i16> %i.rp, %i.rr
  %i.rt = sub <8 x i16> %i.rn, %i.rs
  store <8 x i16> %i.rt, ptr %i.rm, align 16, !tbaa !22
  %i.ru = or disjoint i64 %.0364600, 1            ; 3 uses
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ru ; 2 uses
  %i.rw = load <8 x i16>, ptr %i.rv, align 16, !tbaa !22
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ru
  %i.ry = load <8 x i16>, ptr %i.rx, align 16, !tbaa !22
  %i.rz = getelementptr [16 x i8], ptr %i.rl, i64 %i.ru
  %i.sa = load <8 x i16>, ptr %i.rz, align 16, !tbaa !22
  %i.sb = add <8 x i16> %i.ry, %i.sa
  %i.sc = sub <8 x i16> %i.rw, %i.sb
  store <8 x i16> %i.sc, ptr %i.rv, align 16, !tbaa !22
  %i.sd = add nuw i64 %.0364600, 2                ; 2 uses
  %exitcond610.not.1 = icmp eq i64 %i.sd, %i.rk
  br i1 %exitcond610.not.1, label %._crit_edge603, label %.lr.ph602, !llvm.loop !120

bb.h:                                             ; preds = %._crit_edge603
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.rk ; 2 uses
  %i.sf = load <8 x i16>, ptr %i.se, align 16, !tbaa !22
  %.idx = shl i64 %i.qj, 6
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.sh = load <8 x i16>, ptr %i.sg, align 16, !tbaa !22
  %i.si = sub <8 x i16> %i.sf, %i.sh
  store <8 x i16> %i.si, ptr %i.se, align 16, !tbaa !22
  %i.sj = or i64 %4, 1
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.sj ; 2 uses
  %i.sl = load <8 x i16>, ptr %i.sk, align 16, !tbaa !22
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sn = load <8 x i16>, ptr %i.sm, align 16, !tbaa !22
  %i.so = sub <8 x i16> %i.sl, %i.sn
  store <8 x i16> %i.so, ptr %i.sk, align 16, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge603
  %.not609 = icmp eq i64 %i.rh, 0
  br i1 %.not609, label %.loopexit, label %.lr.ph606

.lr.ph606:                                        ; preds = %bb.i
  %i.sp = getelementptr [16 x i8], ptr %0, i64 %i.qj ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph606
end_hunk_4
