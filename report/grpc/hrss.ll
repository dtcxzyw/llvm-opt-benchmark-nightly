inline.NumInlined: 307
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m:bb.a
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %found.conflict239, %found.conflict242
  %bound0244 = icmp ult ptr %i.hs, %scevgep236
  %bound1245 = icmp ult ptr %i.gm, %scevgep233
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %i.ht, %scevgep235
  %bound1249 = icmp ult ptr %i.gk, %scevgep234
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %i.ht, %scevgep236
  %bound1253 = icmp ult ptr %i.gm, %scevgep234
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  br i1 %conflict.rdx255, label %scalar.ph256.preheader, label %vector.body260

vector.body260:                                   ; preds = %vector.memcheck232, %vector.body260
  %index261 = phi i64 [ %index.next266, %vector.body260 ], [ 0, %vector.memcheck232 ] ; 5 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index261 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index261 ; 2 uses
  %wide.load262 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !16, !alias.scope !42, !noalias !45 ; 2 uses
  %wide.load263 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index261
  %wide.load264 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !16, !alias.scope !51 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %index261
  %wide.load265 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ib = xor <2 x i64> %wide.load265, %wide.load263 ; 2 uses
  %i.ic = xor <2 x i64> %wide.load265, %wide.load262
  %i.id = xor <2 x i64> %i.ib, %wide.load264
  %i.ie = and <2 x i64> %i.id, %i.ic
  store <2 x i64> %i.ie, ptr %i.hx, align 8, !tbaa !16, !alias.scope !42, !noalias !45
  %i.if = xor <2 x i64> %wide.load264, %wide.load262
  %i.ig = or <2 x i64> %i.ib, %i.if
  store <2 x i64> %i.ig, ptr %i.hy, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %index.next266 = add nuw i64 %index261, 2       ; 2 uses
  %i.ih = icmp eq i64 %index.next266, %i.gb
  br i1 %i.ih, label %.lr.ph.i104.preheader, label %vector.body260, !llvm.loop !53

scalar.ph256:                                     ; preds = %scalar.ph256.preheader, %scalar.ph256
  %.014.i100 = phi i64 [ %i.iw, %scalar.ph256 ], [ 0, %scalar.ph256.preheader ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.014.i100 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.014.i100 ; 2 uses
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !16 ; 2 uses
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !16
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.014.i100
  %i.in = load i64, ptr %i.im, align 8, !tbaa !16 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.014.i100
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !16 ; 2 uses
  %i.iq = xor i64 %i.ip, %i.il                    ; 2 uses
  %i.ir = xor i64 %i.ip, %i.ik
  %i.is = xor i64 %i.iq, %i.in
  %i.it = and i64 %i.is, %i.ir
  store i64 %i.it, ptr %i.ii, align 8, !tbaa !16
  %i.iu = xor i64 %i.in, %i.ik
  %i.iv = or i64 %i.iq, %i.iu
  store i64 %i.iv, ptr %i.ij, align 8, !tbaa !16
  %i.iw = add nuw i64 %.014.i100, 1               ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %i.iw, %i.gb
  br i1 %exitcond.not.i101, label %.lr.ph.i104.preheader, label %scalar.ph256, !llvm.loop !54

.lr.ph.i104.preheader:                            ; preds = %vector.body260, %scalar.ph256
  %min.iters.check295 = icmp ult i64 %i.gb, 18
  br i1 %min.iters.check295, label %.lr.ph.i104.preheader311, label %vector.memcheck270

.lr.ph.i104.preheader311:                         ; preds = %vector.memcheck270, %.lr.ph.i104.preheader
  br label %.lr.ph.i104

vector.memcheck270:                               ; preds = %.lr.ph.i104.preheader
  %i.ix = shl i64 %4, 4
  %i.iy = shl i64 %i.aw, 3
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %scevgep271 = getelementptr i8, ptr %i.bn, i64 %i.iz ; 3 uses
  %scevgep272 = getelementptr i8, ptr %i.bs, i64 %i.iz ; 3 uses
  %i.ja = sub i64 %4, %i.aw
  %i.jb = shl i64 %i.ja, 4                        ; 2 uses
  %scevgep273 = getelementptr i8, ptr %i.hs, i64 %i.jb ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.ht, i64 %i.jb ; 2 uses
  %bound0275 = icmp ult ptr %i.gh, %scevgep272
  %bound1276 = icmp ult ptr %i.gi, %scevgep271
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0278 = icmp ult ptr %i.gh, %scevgep273
  %bound1279 = icmp ult ptr %i.hs, %scevgep271
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %found.conflict277, %found.conflict280
  %bound0282 = icmp ult ptr %i.gh, %scevgep274
  %bound1283 = icmp ult ptr %i.ht, %scevgep271
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %i.gi, %scevgep273
  %bound1287 = icmp ult ptr %i.hs, %scevgep272
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %i.gi, %scevgep274
  %bound1291 = icmp ult ptr %i.ht, %scevgep272
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  br i1 %conflict.rdx293, label %.lr.ph.i104.preheader311, label %vector.body298

vector.body298:                                   ; preds = %vector.memcheck270, %vector.body298
  %index299 = phi i64 [ %index.next304, %vector.body298 ], [ 0, %vector.memcheck270 ] ; 5 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index299 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index299 ; 2 uses
  %wide.load300 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !16, !alias.scope !55, !noalias !58
  %wide.load301 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !16, !alias.scope !62, !noalias !63 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index299
  %wide.load302 = load <2 x i64>, ptr %i.je, align 8, !tbaa !16, !alias.scope !64 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index299
  %wide.load303 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !16, !alias.scope !65 ; 2 uses
  %i.jg = xor <2 x i64> %wide.load303, %wide.load300 ; 2 uses
  %i.jh = xor <2 x i64> %wide.load302, %wide.load301
  %i.ji = and <2 x i64> %i.jg, %i.jh
  store <2 x i64> %i.ji, ptr %i.jc, align 8, !tbaa !16, !alias.scope !55, !noalias !58
  %i.jj = xor <2 x i64> %wide.load303, %wide.load301
  %i.jk = xor <2 x i64> %i.jg, %wide.load302
  %i.jl = or <2 x i64> %i.jk, %i.jj
  store <2 x i64> %i.jl, ptr %i.jd, align 8, !tbaa !16, !alias.scope !62, !noalias !63
  %index.next304 = add nuw i64 %index299, 2       ; 2 uses
  %i.jm = icmp eq i64 %index.next304, %i.gb
  br i1 %i.jm, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107, label %vector.body298, !llvm.loop !66

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader311, %.lr.ph.i104
  %.01.i105 = phi i64 [ %i.kb, %.lr.ph.i104 ], [ 0, %.lr.ph.i104.preheader311 ] ; 5 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.01.i105 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.01.i105 ; 2 uses
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !16 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.01.i105
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !16 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.01.i105
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !16 ; 2 uses
  %i.jv = xor i64 %i.ju, %i.jp                    ; 2 uses
  %i.jw = xor i64 %i.js, %i.jq
  %i.jx = and i64 %i.jv, %i.jw
  store i64 %i.jx, ptr %i.jn, align 8, !tbaa !16
  %i.jy = xor i64 %i.ju, %i.jq
  %i.jz = xor i64 %i.jv, %i.js
  %i.ka = or i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %i.jo, align 8, !tbaa !16
  %i.kb = add nuw i64 %.01.i105, 1                ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %i.kb, %i.gb
  br i1 %exitcond.not.i106, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107, label %.lr.ph.i104, !llvm.loop !67

_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107: ; preds = %vector.body298, %.lr.ph.i104, %_ZL14poly3_span_subPK10poly3_spanS1_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.f

bb.f:                                             ; preds = %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define void @HRSS_poly3_invert(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load <2 x i64>, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load <2 x i64>, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load <2 x i64>, ptr %i.g, align 8, !tbaa !16
  %i.i = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !16
  %i.l = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !16
  %i.o = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
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
  %i.am = load i64, ptr %1, align 8, !tbaa !16
  %2 = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.am) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !16
  %i.ap = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load <2 x i64>, ptr %i.aq, align 8, !tbaa !16
  %i.as = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ar) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load <2 x i64>, ptr %i.at, align 8, !tbaa !16
  %i.av = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !16
  %i.ay = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !tbaa !16
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
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %2, i64 %i.bt, i64 60)
  %i.bw = insertelement <2 x i64> %i.c, i64 %2, i64 1
  %i.bx = lshr <2 x i64> %i.bw, splat (i64 4)     ; 2 uses
  %.sroa.055.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %.sroa.055.8.vec.insert.i = insertelement <2 x i64> %.sroa.055.0.vec.insert.i, i64 %i.bg, i64 1
  %.sroa.1261.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %.sroa.1261.24.vec.insert.i = insertelement <2 x i64> %.sroa.1261.16.vec.insert.i, i64 %i.bk, i64 1
  %.sroa.2166.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %.sroa.2166.40.vec.insert.i = insertelement <2 x i64> %.sroa.2166.32.vec.insert.i, i64 %i.bo, i64 1
  %.sroa.30.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %.sroa.30.56.vec.insert.i = insertelement <2 x i64> %.sroa.30.48.vec.insert.i, i64 %i.bs, i64 1
  %.sroa.39.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %.sroa.39.72.vec.insert.i = insertelement <2 x i64> %.sroa.39.64.vec.insert.i, i64 %i.bv, i64 1
  %i.by = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.bx, <2 x i32> <i32 3, i32 1>
  %.sroa.026.0.vec.insert.i = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %.sroa.026.8.vec.insert.i = insertelement <2 x i64> %.sroa.026.0.vec.insert.i, i64 %i.v, i64 1
  %.sroa.1333.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %.sroa.1333.24.vec.insert.i = insertelement <2 x i64> %.sroa.1333.16.vec.insert.i, i64 %i.z, i64 1
  %.sroa.2238.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %.sroa.2238.40.vec.insert.i = insertelement <2 x i64> %.sroa.2238.32.vec.insert.i, i64 %i.ad, i64 1
  %.sroa.31.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %.sroa.31.56.vec.insert.i = insertelement <2 x i64> %.sroa.31.48.vec.insert.i, i64 %i.ah, i64 1
  %.sroa.40.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %.sroa.40.72.vec.insert.i = insertelement <2 x i64> %.sroa.40.64.vec.insert.i, i64 %i.al, i64 1
  %i.bz = insertelement <2 x i64> %i.bx, i64 0, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.ca = bitcast <2 x i64> %i.jo to <8 x i16>
  %i.cb = extractelement <8 x i16> %i.ca, i64 0
  %i.cc = and i16 %i.cb, 1
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %_ZL16poly3_invert_vecP5poly3PKS_.exit, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.b
  %.sroa.29160.0.vec.extract.i = extractelement <2 x i64> %i.rq, i64 0
  %i.ce = extractelement <2 x i64> %i.py, i64 0
  %i.cf = bitcast <2 x i64> %i.jk to <8 x i16>
  %i.cg = extractelement <8 x i16> %i.cf, i64 0
  %i.ch = and i16 %i.cg, 1
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci                    ; 2 uses
  %i.ck = xor i64 %i.ce, %i.cj
  %i.cl = extractelement <2 x i64> %i.qc, i64 0
  %i.cm = and i64 %i.ck, %i.cl
  %i.cn = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qc) ; 2 uses
  %i.co = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qk) ; 2 uses
  %i.cp = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qs) ; 2 uses
  %i.cq = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ra) ; 2 uses
  %i.cr = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ri) ; 2 uses
  %i.cs = tail call i64 @llvm.bitreverse.i64(i64 %.sroa.29160.0.vec.extract.i)
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
  %i.dp = shufflevector <2 x i64> %i.py, <2 x i64> %i.qg, <2 x i32> <i32 1, i32 2>
  %i.dq = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.dr = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ds = xor <2 x i64> %i.dp, %i.dr
  %i.dt = shufflevector <2 x i64> %i.qc, <2 x i64> %i.qk, <2 x i32> <i32 1, i32 2>
  %i.du = and <2 x i64> %i.ds, %i.dt
  %i.dv = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.du) ; 2 uses
  %i.dw = shufflevector <2 x i64> %i.qg, <2 x i64> %i.qo, <2 x i32> <i32 1, i32 2>
  %i.dx = xor <2 x i64> %i.dw, %i.dr
  %i.dy = shufflevector <2 x i64> %i.qk, <2 x i64> %i.qs, <2 x i32> <i32 1, i32 2>
  %i.dz = and <2 x i64> %i.dx, %i.dy
  %i.ea = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.dz) ; 2 uses
  %i.eb = shufflevector <2 x i64> %i.qo, <2 x i64> %i.qw, <2 x i32> <i32 1, i32 2>
  %i.ec = xor <2 x i64> %i.eb, %i.dr
  %i.ed = shufflevector <2 x i64> %i.qs, <2 x i64> %i.ra, <2 x i32> <i32 1, i32 2>
  %i.ee = and <2 x i64> %i.ec, %i.ed
  %i.ef = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ee) ; 2 uses
  %i.eg = shufflevector <2 x i64> %i.qw, <2 x i64> %i.re, <2 x i32> <i32 1, i32 2>
  %i.eh = xor <2 x i64> %i.eg, %i.dr
  %i.ei = shufflevector <2 x i64> %i.ra, <2 x i64> %i.ri, <2 x i32> <i32 1, i32 2>
  %i.ej = and <2 x i64> %i.eh, %i.ei
  %i.ek = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.ej) ; 2 uses
  %i.el = shufflevector <2 x i64> %i.re, <2 x i64> %i.rm, <2 x i32> <i32 1, i32 2>
  %i.em = xor <2 x i64> %i.el, %i.dr
  %i.en = shufflevector <2 x i64> %i.ri, <2 x i64> %i.rq, <2 x i32> <i32 1, i32 2>
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
  br label %_ZL16poly3_invert_vecP5poly3PKS_.exit

bb.c:                                             ; preds = %bb.c, %bb.a
  %.0230.i = phi i32 [ 1, %bb.a ], [ %i.ji, %bb.c ] ; 3 uses
  %.025229.i = phi i64 [ 0, %bb.a ], [ %i.tu, %bb.c ]
  %.sroa.026.0228.i = phi <2 x i64> [ %.sroa.026.8.vec.insert.i, %bb.a ], [ %i.pv, %bb.c ] ; 4 uses
  %.sroa.1333.0227.i = phi <2 x i64> [ %.sroa.1333.24.vec.insert.i, %bb.a ], [ %i.pk, %bb.c ] ; 2 uses
  %.sroa.2238.0226.i = phi <2 x i64> [ %.sroa.2238.40.vec.insert.i, %bb.a ], [ %i.oy, %bb.c ] ; 2 uses
  %.sroa.31.0225.i = phi <2 x i64> [ %.sroa.31.56.vec.insert.i, %bb.a ], [ %i.om, %bb.c ] ; 2 uses
  %.sroa.40.0224.i = phi <2 x i64> [ %.sroa.40.72.vec.insert.i, %bb.a ], [ %i.oa, %bb.c ] ; 2 uses
  %.sroa.49.0223.i = phi <2 x i64> [ %i.bz, %bb.a ], [ %i.no, %bb.c ] ; 2 uses
  %.sroa.055.0222.i = phi <2 x i64> [ %.sroa.055.8.vec.insert.i, %bb.a ], [ %i.pq, %bb.c ] ; 2 uses
  %.sroa.1261.0221.i = phi <2 x i64> [ %.sroa.1261.24.vec.insert.i, %bb.a ], [ %i.pe, %bb.c ] ; 2 uses
  %.sroa.2166.0220.i = phi <2 x i64> [ %.sroa.2166.40.vec.insert.i, %bb.a ], [ %i.os, %bb.c ] ; 2 uses
  %.sroa.30.0219.i = phi <2 x i64> [ %.sroa.30.56.vec.insert.i, %bb.a ], [ %i.og, %bb.c ] ; 2 uses
  %.sroa.39.0218.i = phi <2 x i64> [ %.sroa.39.72.vec.insert.i, %bb.a ], [ %i.nu, %bb.c ] ; 2 uses
  %.sroa.48.0217.i = phi <2 x i64> [ %i.by, %bb.a ], [ %i.nj, %bb.c ] ; 2 uses
  %.sroa.083.0216.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jo, %bb.c ] ; 3 uses
  %.sroa.887.0215.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jw, %bb.c ] ; 2 uses
  %.sroa.1189.0214.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.ke, %bb.c ] ; 2 uses
  %.sroa.1491.0213.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.km, %bb.c ] ; 2 uses
  %.sroa.1793.0212.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.ku, %bb.c ] ; 2 uses
  %.sroa.2095.0211.i = phi <2 x i64> [ <i64 2305843009213693951, i64 0>, %bb.a ], [ %i.lc, %bb.c ] ; 2 uses
  %.sroa.097.0210.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jk, %bb.c ] ; 2 uses
  %.sroa.8101.0209.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.js, %bb.c ] ; 2 uses
  %.sroa.11103.0208.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ka, %bb.c ] ; 2 uses
  %.sroa.14105.0207.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ki, %bb.c ] ; 2 uses
  %.sroa.17107.0206.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.kq, %bb.c ] ; 2 uses
  %.sroa.20109.0205.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ky, %bb.c ] ; 2 uses
  %.sroa.0111.0204.i = phi <2 x i64> [ <i64 1, i64 0>, %bb.a ], [ %i.sa, %bb.c ] ; 2 uses
  %.sroa.9114.0203.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sj, %bb.c ] ; 2 uses
  %.sroa.14117.0202.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ss, %bb.c ] ; 2 uses
  %.sroa.19120.0201.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.tb, %bb.c ] ; 2 uses
  %.sroa.24123.0200.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.tk, %bb.c ] ; 2 uses
  %.sroa.29.0199.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.tt, %bb.c ] ; 2 uses
  %.sroa.0128.0198.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ry, %bb.c ] ; 2 uses
  %.sroa.8131.0197.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sh, %bb.c ] ; 2 uses
  %.sroa.13134.0196.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sq, %bb.c ] ; 2 uses
  %.sroa.18137.0195.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sz, %bb.c ] ; 2 uses
  %.sroa.23140.0194.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ti, %bb.c ] ; 2 uses
  %.sroa.28.0193.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.tr, %bb.c ] ; 2 uses
  %.sroa.0145.0192.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qc, %bb.c ] ; 2 uses
  %.sroa.9148.0191.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qk, %bb.c ] ; 2 uses
  %.sroa.14151.0190.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qs, %bb.c ] ; 2 uses
  %.sroa.19154.0189.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ra, %bb.c ] ; 2 uses
  %.sroa.24157.0188.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ri, %bb.c ] ; 2 uses
  %.sroa.29160.0187.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rq, %bb.c ] ; 2 uses
  %.sroa.0163.0186.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.py, %bb.c ] ; 2 uses
  %.sroa.9166.0185.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qg, %bb.c ] ; 2 uses
  %.sroa.14169.0184.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qo, %bb.c ] ; 2 uses
  %.sroa.19172.0183.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qw, %bb.c ] ; 2 uses
  %.sroa.24175.0182.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.re, %bb.c ] ; 2 uses
  %.sroa.29178.0181.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rm, %bb.c ] ; 2 uses
  %i.fl = lshr <2 x i64> %.sroa.0163.0186.i, splat (i64 63) ; 2 uses
  %i.fm = shl <2 x i64> %.sroa.0163.0186.i, splat (i64 1)
  %i.fn = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fo = or disjoint <2 x i64> %i.fm, %i.fn      ; 2 uses
  %i.fp = shufflevector <2 x i64> %i.fl, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fq = lshr <2 x i64> %.sroa.0145.0192.i, splat (i64 63) ; 2 uses
  %i.fr = shl <2 x i64> %.sroa.0145.0192.i, splat (i64 1)
  %i.fs = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fq, <2 x i32> <i32 1, i32 2>
  %i.ft = or disjoint <2 x i64> %i.fr, %i.fs      ; 2 uses
  %i.fu = shufflevector <2 x i64> %i.fq, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fv = lshr <2 x i64> %.sroa.9166.0185.i, splat (i64 63) ; 2 uses
  %i.fw = shl <2 x i64> %.sroa.9166.0185.i, splat (i64 1)
  %i.fx = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fv, <2 x i32> <i32 1, i32 2>
  %i.fy = or disjoint <2 x i64> %i.fw, %i.fx
  %i.fz = or <2 x i64> %i.fy, %i.fp               ; 2 uses
  %i.ga = shufflevector <2 x i64> %i.fv, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gb = lshr <2 x i64> %.sroa.9148.0191.i, splat (i64 63) ; 2 uses
  %i.gc = shl <2 x i64> %.sroa.9148.0191.i, splat (i64 1)
  %i.gd = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.ge = or disjoint <2 x i64> %i.gc, %i.gd
  %i.gf = or <2 x i64> %i.ge, %i.fu               ; 2 uses
  %i.gg = shufflevector <2 x i64> %i.gb, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gh = lshr <2 x i64> %.sroa.14169.0184.i, splat (i64 63) ; 2 uses
  %i.gi = shl <2 x i64> %.sroa.14169.0184.i, splat (i64 1)
  %i.gj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.gk = or disjoint <2 x i64> %i.gi, %i.gj
end_hunk_0
