begin_hunk_0_@_ZL13poly3_mul_auxPK10poly3_spanS1_S1_S1_m:bb.a
  %i.hm = xor i64 %i.hk, %i.hf
  %i.hn = xor i64 %i.hl, %i.hi
  %i.ho = and i64 %i.hn, %i.hm
  store i64 %i.ho, ptr %i.hd, align 8, !tbaa !16
  %i.hp = xor i64 %i.hi, %i.hf
  %i.hq = or i64 %i.hl, %i.hp
  store i64 %i.hq, ptr %i.he, align 8, !tbaa !16
  %i.hr = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %i.hr, %i.gj
  br i1 %exitcond.not.i97, label %_ZL14poly3_span_subPK10poly3_spanS1_m.exit, label %scalar.ph219, !llvm.loop !41

_ZL14poly3_span_subPK10poly3_spanS1_m.exit:       ; preds = %vector.body224, %scalar.ph219, %bb.e
  %.not.i98 = icmp eq i64 %i.gb, 0
  br i1 %.not.i98, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZL14poly3_span_subPK10poly3_spanS1_m.exit
  %i.hs = load ptr, ptr %1, align 8, !tbaa !11    ; 11 uses
  %i.ht = load ptr, ptr %i.ge, align 8, !tbaa !15 ; 11 uses
  %min.iters.check259 = icmp ult i64 %i.gb, 16
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.memcheck234

scalar.ph258.preheader:                           ; preds = %vector.memcheck234, %.lr.ph.i99
  br label %scalar.ph258

vector.memcheck234:                               ; preds = %.lr.ph.i99
  %i.hu = shl i64 %4, 4                           ; 2 uses
  %i.hv = sub i64 %4, %i.aw
  %i.hw = shl i64 %i.hv, 4                        ; 2 uses
  %scevgep235 = getelementptr i8, ptr %i.hs, i64 %i.hw ; 3 uses
  %scevgep236 = getelementptr i8, ptr %i.ht, i64 %i.hw ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.bn, i64 %i.hu ; 2 uses
  %scevgep238 = getelementptr i8, ptr %i.bs, i64 %i.hu ; 2 uses
  %bound0239 = icmp ult ptr %i.hs, %scevgep236
  %bound1240 = icmp ult ptr %i.ht, %scevgep235
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0242 = icmp ult ptr %i.hs, %scevgep237
  %bound1243 = icmp ult ptr %i.gk, %scevgep235
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %found.conflict241, %found.conflict244
  %bound0246 = icmp ult ptr %i.hs, %scevgep238
  %bound1247 = icmp ult ptr %i.gm, %scevgep235
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.ht, %scevgep237
  %bound1251 = icmp ult ptr %i.gk, %scevgep236
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %i.ht, %scevgep238
  %bound1255 = icmp ult ptr %i.gm, %scevgep236
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  br i1 %conflict.rdx257, label %scalar.ph258.preheader, label %vector.body263

vector.body263:                                   ; preds = %vector.memcheck234, %vector.body263
  %index264 = phi i64 [ %index.next269, %vector.body263 ], [ 0, %vector.memcheck234 ] ; 5 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index264 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index264 ; 2 uses
  %wide.load265 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !16, !alias.scope !42, !noalias !45 ; 2 uses
  %wide.load266 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index264
  %wide.load267 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !16, !alias.scope !51 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %index264
  %wide.load268 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !16, !alias.scope !52 ; 2 uses
  %i.ib = xor <2 x i64> %wide.load268, %wide.load266 ; 2 uses
  %i.ic = xor <2 x i64> %wide.load268, %wide.load265
  %i.id = xor <2 x i64> %i.ib, %wide.load267
  %i.ie = and <2 x i64> %i.id, %i.ic
  store <2 x i64> %i.ie, ptr %i.hx, align 8, !tbaa !16, !alias.scope !42, !noalias !45
  %i.if = xor <2 x i64> %wide.load267, %wide.load265
  %i.ig = or <2 x i64> %i.ib, %i.if
  store <2 x i64> %i.ig, ptr %i.hy, align 8, !tbaa !16, !alias.scope !49, !noalias !50
  %index.next269 = add nuw i64 %index264, 2       ; 2 uses
  %i.ih = icmp eq i64 %index.next269, %i.gb
  br i1 %i.ih, label %.lr.ph.i104.preheader, label %vector.body263, !llvm.loop !53

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %.014.i100 = phi i64 [ %i.iw, %scalar.ph258 ], [ 0, %scalar.ph258.preheader ] ; 5 uses
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
  br i1 %exitcond.not.i101, label %.lr.ph.i104.preheader, label %scalar.ph258, !llvm.loop !54

.lr.ph.i104.preheader:                            ; preds = %vector.body263, %scalar.ph258
  %min.iters.check298 = icmp ult i64 %i.gb, 18
  br i1 %min.iters.check298, label %.lr.ph.i104.preheader315, label %vector.memcheck273

.lr.ph.i104.preheader315:                         ; preds = %vector.memcheck273, %.lr.ph.i104.preheader
  br label %.lr.ph.i104

vector.memcheck273:                               ; preds = %.lr.ph.i104.preheader
  %i.ix = shl i64 %4, 4
  %i.iy = shl i64 %i.aw, 3
  %i.iz = sub i64 %i.ix, %i.iy                    ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.bn, i64 %i.iz ; 3 uses
  %scevgep275 = getelementptr i8, ptr %i.bs, i64 %i.iz ; 3 uses
  %i.ja = sub i64 %4, %i.aw
  %i.jb = shl i64 %i.ja, 4                        ; 2 uses
  %scevgep276 = getelementptr i8, ptr %i.hs, i64 %i.jb ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.ht, i64 %i.jb ; 2 uses
  %bound0278 = icmp ult ptr %i.gh, %scevgep275
  %bound1279 = icmp ult ptr %i.gi, %scevgep274
  %found.conflict280 = and i1 %bound0278, %bound1279
  %bound0281 = icmp ult ptr %i.gh, %scevgep276
  %bound1282 = icmp ult ptr %i.hs, %scevgep274
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %found.conflict280, %found.conflict283
  %bound0285 = icmp ult ptr %i.gh, %scevgep277
  %bound1286 = icmp ult ptr %i.ht, %scevgep274
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %i.gi, %scevgep276
  %bound1290 = icmp ult ptr %i.hs, %scevgep275
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %i.gi, %scevgep277
  %bound1294 = icmp ult ptr %i.ht, %scevgep275
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  br i1 %conflict.rdx296, label %.lr.ph.i104.preheader315, label %vector.body302

vector.body302:                                   ; preds = %vector.memcheck273, %vector.body302
  %index303 = phi i64 [ %index.next308, %vector.body302 ], [ 0, %vector.memcheck273 ] ; 5 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index303 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index303 ; 2 uses
  %wide.load304 = load <2 x i64>, ptr %i.jc, align 8, !tbaa !16, !alias.scope !55, !noalias !58
  %wide.load305 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !16, !alias.scope !62, !noalias !63 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index303
  %wide.load306 = load <2 x i64>, ptr %i.je, align 8, !tbaa !16, !alias.scope !64 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index303
  %wide.load307 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !16, !alias.scope !65 ; 2 uses
  %i.jg = xor <2 x i64> %wide.load307, %wide.load304 ; 2 uses
  %i.jh = xor <2 x i64> %wide.load306, %wide.load305
  %i.ji = and <2 x i64> %i.jg, %i.jh
  store <2 x i64> %i.ji, ptr %i.jc, align 8, !tbaa !16, !alias.scope !55, !noalias !58
  %i.jj = xor <2 x i64> %wide.load307, %wide.load305
  %i.jk = xor <2 x i64> %i.jg, %wide.load306
  %i.jl = or <2 x i64> %i.jk, %i.jj
  store <2 x i64> %i.jl, ptr %i.jd, align 8, !tbaa !16, !alias.scope !62, !noalias !63
  %index.next308 = add nuw i64 %index303, 2       ; 2 uses
  %i.jm = icmp eq i64 %index.next308, %i.gb
  br i1 %i.jm, label %_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107, label %vector.body302, !llvm.loop !66

.lr.ph.i104:                                      ; preds = %.lr.ph.i104.preheader315, %.lr.ph.i104
  %.01.i105 = phi i64 [ %i.kb, %.lr.ph.i104 ], [ 0, %.lr.ph.i104.preheader315 ] ; 5 uses
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

_ZL14poly3_span_addPK10poly3_spanS1_S1_m.exit107: ; preds = %vector.body302, %.lr.ph.i104, %_ZL14poly3_span_subPK10poly3_spanS1_m.exit
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
  %i.c = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.b) ; 2 uses
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
  %i.ak = extractelement <2 x i64> %i.c, i64 0    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ai, i64 60)
  %2 = lshr i64 %i.ak, 4
  %3 = load <2 x i64>, ptr %1, align 8, !tbaa !16
  %4 = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %3) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !16
  %i.ao = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.an) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load <2 x i64>, ptr %i.ap, align 8, !tbaa !16
  %i.ar = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.aq) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load <2 x i64>, ptr %i.as, align 8, !tbaa !16
  %i.au = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = load i64, ptr %i.av, align 8, !tbaa !16
  %6 = tail call noundef i64 @llvm.bitreverse.i64(i64 %5) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %7 = load i64, ptr %i.aw, align 8, !tbaa !16
  %8 = tail call noundef i64 @llvm.bitreverse.i64(i64 %7) ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %10 = load i64, ptr %9, align 8, !tbaa !16
  %11 = tail call noundef i64 @llvm.bitreverse.i64(i64 %10)
  %12 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %11, i64 60)
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %6, i64 %8, i64 60)
  %i.ay = extractelement <2 x i64> %i.au, i64 1   ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %6, i64 60)
  %i.ba = extractelement <2 x i64> %i.au, i64 0   ; 2 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ay, i64 60)
  %i.bc = extractelement <2 x i64> %i.ar, i64 1   ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.ba, i64 60)
  %i.be = extractelement <2 x i64> %i.ar, i64 0   ; 2 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.bc, i64 60)
  %i.bg = extractelement <2 x i64> %i.ao, i64 1   ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.be, i64 60)
  %i.bi = extractelement <2 x i64> %i.ao, i64 0   ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bg, i64 60)
  %i.bk = extractelement <2 x i64> %4, i64 1      ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bi, i64 60)
  %13 = extractelement <2 x i64> %4, i64 0        ; 2 uses
  %14 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %i.bk, i64 60)
  %15 = lshr i64 %13, 4
  %.sroa.055.0.vec.insert.i = insertelement <2 x i64> poison, i64 %12, i64 0
  %.sroa.055.8.vec.insert.i = insertelement <2 x i64> %.sroa.055.0.vec.insert.i, i64 %i.ax, i64 1
  %.sroa.1261.16.vec.insert.i = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %.sroa.1261.24.vec.insert.i = insertelement <2 x i64> %.sroa.1261.16.vec.insert.i, i64 %i.bb, i64 1
  %.sroa.2166.32.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %.sroa.2166.40.vec.insert.i = insertelement <2 x i64> %.sroa.2166.32.vec.insert.i, i64 %i.bf, i64 1
  %.sroa.30.48.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %.sroa.30.56.vec.insert.i = insertelement <2 x i64> %.sroa.30.48.vec.insert.i, i64 %i.bj, i64 1
  %.sroa.39.64.vec.insert.i = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %.sroa.39.72.vec.insert.i = insertelement <2 x i64> %.sroa.39.64.vec.insert.i, i64 %14, i64 1
  %.sroa.48.80.vec.insert.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %15, i64 0
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
  %.sroa.49.80.vec.insert.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.bm = bitcast <2 x i64> %i.im to <8 x i16>
  %i.bn = extractelement <8 x i16> %i.bm, i64 0
  %i.bo = and i16 %i.bn, 1
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %_ZL16poly3_invert_vecP5poly3PKS_.exit, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.b
  %.sroa.29160.0.vec.extract.i = extractelement <2 x i64> %i.qo, i64 0 ; 2 uses
  %.sroa.29178.0.vec.extract.i = extractelement <2 x i64> %i.qk, i64 0
  %i.bq = bitcast <2 x i64> %i.ii to <8 x i16>
  %i.br = extractelement <8 x i16> %i.bq, i64 0
  %i.bs = and i16 %i.br, 1
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt                    ; 2 uses
  %i.bv = xor i64 %.sroa.29178.0.vec.extract.i, %i.bu
  %i.bw = and i64 %i.bv, %.sroa.29160.0.vec.extract.i
  %i.bx = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pa) ; 2 uses
  %i.by = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pi) ; 2 uses
  %i.bz = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.pq) ; 2 uses
  %i.ca = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.py) ; 2 uses
  %i.cb = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.qg) ; 2 uses
  %i.cc = tail call i64 @llvm.bitreverse.i64(i64 %.sroa.29160.0.vec.extract.i)
  %i.cd = extractelement <2 x i64> %i.cb, i64 1   ; 2 uses
  %i.ce = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cc, i64 60)
  %i.cf = extractelement <2 x i64> %i.cb, i64 0   ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cd, i64 60)
  %i.ch = extractelement <2 x i64> %i.ca, i64 1   ; 2 uses
  %i.ci = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.cf, i64 60)
  %i.cj = extractelement <2 x i64> %i.ca, i64 0   ; 2 uses
  %i.ck = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.ch, i64 60)
  %i.cl = extractelement <2 x i64> %i.bz, i64 1   ; 2 uses
  %i.cm = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cj, i64 60)
  %i.cn = extractelement <2 x i64> %i.bz, i64 0   ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cl, i64 60)
  %i.cp = extractelement <2 x i64> %i.by, i64 1   ; 2 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cn, i64 60)
  %i.cr = extractelement <2 x i64> %i.by, i64 0   ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cp, i64 60)
  %i.ct = extractelement <2 x i64> %i.bx, i64 1   ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.cr, i64 60)
  %i.cv = extractelement <2 x i64> %i.bx, i64 0   ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.ct, i64 60)
  %i.cx = lshr i64 %i.cv, 4
  %i.cy = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %i.cz = shufflevector <2 x i64> %i.cy, <2 x i64> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.da = xor <2 x i64> %i.ow, %i.cz
  %i.db = and <2 x i64> %i.pa, %i.da
  %i.dc = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.db) ; 2 uses
  %i.dd = xor <2 x i64> %i.pe, %i.cz
  %i.de = and <2 x i64> %i.pi, %i.dd
  %i.df = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.de) ; 2 uses
  %i.dg = xor <2 x i64> %i.pm, %i.cz
  %i.dh = and <2 x i64> %i.dg, %i.pq
  %i.di = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.dh) ; 2 uses
  %i.dj = xor <2 x i64> %i.pu, %i.cz
  %i.dk = and <2 x i64> %i.dj, %i.py
  %i.dl = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.dk) ; 2 uses
  %i.dm = xor <2 x i64> %i.qc, %i.cz
  %i.dn = and <2 x i64> %i.dm, %i.qg
  %i.do = tail call <2 x i64> @llvm.bitreverse.v2i64(<2 x i64> %i.dn) ; 2 uses
  %16 = tail call i64 @llvm.bitreverse.i64(i64 %i.bw)
  %i.dp = extractelement <2 x i64> %i.do, i64 1   ; 2 uses
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.dp, i64 %16, i64 60)
  %i.dr = extractelement <2 x i64> %i.do, i64 0   ; 2 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dp, i64 60)
  %i.dt = extractelement <2 x i64> %i.dl, i64 1   ; 2 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dr, i64 60)
  %i.dv = extractelement <2 x i64> %i.dl, i64 0   ; 2 uses
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dt, i64 60)
  %i.dx = extractelement <2 x i64> %i.di, i64 1   ; 2 uses
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dv, i64 60)
  %i.dz = extractelement <2 x i64> %i.di, i64 0   ; 2 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dx, i64 60)
  %i.eb = extractelement <2 x i64> %i.df, i64 1   ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.dz, i64 60)
  %i.ed = extractelement <2 x i64> %i.df, i64 0   ; 2 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.eb, i64 60)
  %i.ef = extractelement <2 x i64> %i.dc, i64 1   ; 2 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ed, i64 60)
  %17 = extractelement <2 x i64> %i.dc, i64 0     ; 2 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %17, i64 %i.ef, i64 60)
  %i.ei = lshr i64 %17, 4
  br label %_ZL16poly3_invert_vecP5poly3PKS_.exit

bb.c:                                             ; preds = %bb.c, %bb.a
  %.0230.i = phi i32 [ 1, %bb.a ], [ %i.ig, %bb.c ] ; 3 uses
  %.025229.i = phi i64 [ 0, %bb.a ], [ %i.ss, %bb.c ]
  %.sroa.29178.0228.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qk, %bb.c ] ; 2 uses
  %.sroa.24175.0227.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qc, %bb.c ] ; 2 uses
  %.sroa.19172.0226.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pu, %bb.c ] ; 2 uses
  %.sroa.14169.0225.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pm, %bb.c ] ; 2 uses
  %.sroa.9166.0224.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pe, %bb.c ] ; 2 uses
  %.sroa.0163.0223.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ow, %bb.c ] ; 2 uses
  %.sroa.29160.0222.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qo, %bb.c ] ; 2 uses
  %.sroa.24157.0221.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qg, %bb.c ] ; 2 uses
  %.sroa.19154.0220.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.py, %bb.c ] ; 2 uses
  %.sroa.14151.0219.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pq, %bb.c ] ; 2 uses
  %.sroa.9148.0218.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pi, %bb.c ] ; 2 uses
  %.sroa.0145.0217.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.pa, %bb.c ] ; 2 uses
  %.sroa.28.0216.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sp, %bb.c ] ; 2 uses
  %.sroa.23140.0215.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sg, %bb.c ] ; 2 uses
  %.sroa.18137.0214.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rx, %bb.c ] ; 2 uses
  %.sroa.13134.0213.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ro, %bb.c ] ; 2 uses
  %.sroa.8131.0212.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rf, %bb.c ] ; 2 uses
  %.sroa.0128.0211.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.qw, %bb.c ] ; 2 uses
  %.sroa.29.0210.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.sr, %bb.c ] ; 2 uses
  %.sroa.24123.0209.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.si, %bb.c ] ; 2 uses
  %.sroa.19120.0208.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rz, %bb.c ] ; 2 uses
  %.sroa.14117.0207.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rq, %bb.c ] ; 2 uses
  %.sroa.026.0206.i = phi <2 x i64> [ %.sroa.026.8.vec.insert.i, %bb.a ], [ %i.ot, %bb.c ] ; 4 uses
  %.sroa.1333.0205.i = phi <2 x i64> [ %.sroa.1333.24.vec.insert.i, %bb.a ], [ %i.oi, %bb.c ] ; 2 uses
  %.sroa.2238.0204.i = phi <2 x i64> [ %.sroa.2238.40.vec.insert.i, %bb.a ], [ %i.nw, %bb.c ] ; 2 uses
  %.sroa.31.0203.i = phi <2 x i64> [ %.sroa.31.56.vec.insert.i, %bb.a ], [ %i.nk, %bb.c ] ; 2 uses
  %.sroa.40.0202.i = phi <2 x i64> [ %.sroa.40.72.vec.insert.i, %bb.a ], [ %i.my, %bb.c ] ; 2 uses
  %.sroa.49.0201.i = phi <2 x i64> [ %.sroa.49.80.vec.insert.i, %bb.a ], [ %i.mm, %bb.c ] ; 2 uses
  %.sroa.055.0200.i = phi <2 x i64> [ %.sroa.055.8.vec.insert.i, %bb.a ], [ %i.oo, %bb.c ] ; 2 uses
  %.sroa.1261.0199.i = phi <2 x i64> [ %.sroa.1261.24.vec.insert.i, %bb.a ], [ %i.oc, %bb.c ] ; 2 uses
  %.sroa.2166.0198.i = phi <2 x i64> [ %.sroa.2166.40.vec.insert.i, %bb.a ], [ %i.nq, %bb.c ] ; 2 uses
  %.sroa.30.0197.i = phi <2 x i64> [ %.sroa.30.56.vec.insert.i, %bb.a ], [ %i.ne, %bb.c ] ; 2 uses
  %.sroa.39.0196.i = phi <2 x i64> [ %.sroa.39.72.vec.insert.i, %bb.a ], [ %i.ms, %bb.c ] ; 2 uses
  %.sroa.48.0195.i = phi <2 x i64> [ %.sroa.48.80.vec.insert.i, %bb.a ], [ %i.mh, %bb.c ] ; 2 uses
  %.sroa.083.0194.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.im, %bb.c ] ; 3 uses
  %.sroa.887.0193.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.iu, %bb.c ] ; 2 uses
  %.sroa.1189.0192.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jc, %bb.c ] ; 2 uses
  %.sroa.1491.0191.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.jk, %bb.c ] ; 2 uses
  %.sroa.1793.0190.i = phi <2 x i64> [ splat (i64 -1), %bb.a ], [ %i.js, %bb.c ] ; 2 uses
  %.sroa.2095.0189.i = phi <2 x i64> [ <i64 2305843009213693951, i64 0>, %bb.a ], [ %i.ka, %bb.c ] ; 2 uses
  %.sroa.097.0188.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.ii, %bb.c ] ; 2 uses
  %.sroa.8101.0187.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.iq, %bb.c ] ; 2 uses
  %.sroa.11103.0186.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.iy, %bb.c ] ; 2 uses
  %.sroa.14105.0185.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jg, %bb.c ] ; 2 uses
  %.sroa.17107.0184.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jo, %bb.c ] ; 2 uses
  %.sroa.20109.0183.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.jw, %bb.c ] ; 2 uses
  %.sroa.0111.0182.i = phi <2 x i64> [ <i64 1, i64 0>, %bb.a ], [ %i.qy, %bb.c ] ; 2 uses
  %.sroa.9114.0181.i = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.rh, %bb.c ] ; 2 uses
  %i.ej = lshr <2 x i64> %.sroa.0163.0223.i, splat (i64 63) ; 2 uses
  %i.ek = shl <2 x i64> %.sroa.0163.0223.i, splat (i64 1)
  %i.el = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.em = or disjoint <2 x i64> %i.ek, %i.el      ; 2 uses
  %i.en = shufflevector <2 x i64> %i.ej, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.eo = lshr <2 x i64> %.sroa.0145.0217.i, splat (i64 63) ; 2 uses
  %i.ep = shl <2 x i64> %.sroa.0145.0217.i, splat (i64 1)
  %i.eq = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.er = or disjoint <2 x i64> %i.ep, %i.eq      ; 2 uses
  %i.es = shufflevector <2 x i64> %i.eo, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.et = lshr <2 x i64> %.sroa.9166.0224.i, splat (i64 63) ; 2 uses
  %i.eu = shl <2 x i64> %.sroa.9166.0224.i, splat (i64 1)
  %i.ev = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.et, <2 x i32> <i32 1, i32 2>
  %i.ew = or disjoint <2 x i64> %i.eu, %i.ev
  %i.ex = or <2 x i64> %i.ew, %i.en               ; 2 uses
  %i.ey = shufflevector <2 x i64> %i.et, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ez = lshr <2 x i64> %.sroa.9148.0218.i, splat (i64 63) ; 2 uses
  %i.fa = shl <2 x i64> %.sroa.9148.0218.i, splat (i64 1)
  %i.fb = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fc = or disjoint <2 x i64> %i.fa, %i.fb
  %i.fd = or <2 x i64> %i.fc, %i.es               ; 2 uses
  %i.fe = shufflevector <2 x i64> %i.ez, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ff = lshr <2 x i64> %.sroa.14169.0225.i, splat (i64 63) ; 2 uses
  %i.fg = shl <2 x i64> %.sroa.14169.0225.i, splat (i64 1)
  %i.fh = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ff, <2 x i32> <i32 1, i32 2>
  %i.fi = or disjoint <2 x i64> %i.fg, %i.fh
  %i.fj = or <2 x i64> %i.fi, %i.ey               ; 2 uses
  %i.fk = shufflevector <2 x i64> %i.ff, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fl = lshr <2 x i64> %.sroa.14151.0219.i, splat (i64 63) ; 2 uses
  %i.fm = shl <2 x i64> %.sroa.14151.0219.i, splat (i64 1)
  %i.fn = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fo = or disjoint <2 x i64> %i.fm, %i.fn
  %i.fp = or <2 x i64> %i.fo, %i.fe               ; 2 uses
  %i.fq = shufflevector <2 x i64> %i.fl, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fr = lshr <2 x i64> %.sroa.19172.0226.i, splat (i64 63) ; 2 uses
  %i.fs = shl <2 x i64> %.sroa.19172.0226.i, splat (i64 1)
  %i.ft = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fr, <2 x i32> <i32 1, i32 2>
  %i.fu = or disjoint <2 x i64> %i.fs, %i.ft
  %i.fv = or <2 x i64> %i.fu, %i.fk               ; 2 uses
  %i.fw = shufflevector <2 x i64> %i.fr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.fx = lshr <2 x i64> %.sroa.19154.0220.i, splat (i64 63) ; 2 uses
  %i.fy = shl <2 x i64> %.sroa.19154.0220.i, splat (i64 1)
  %i.fz = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.fx, <2 x i32> <i32 1, i32 2>
  %i.ga = or disjoint <2 x i64> %i.fy, %i.fz
  %i.gb = or <2 x i64> %i.ga, %i.fq               ; 2 uses
  %i.gc = shufflevector <2 x i64> %i.fx, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gd = lshr <2 x i64> %.sroa.24175.0227.i, splat (i64 63) ; 2 uses
  %i.ge = shl <2 x i64> %.sroa.24175.0227.i, splat (i64 1)
  %i.gf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gg = or disjoint <2 x i64> %i.ge, %i.gf
  %i.gh = or <2 x i64> %i.gg, %i.fw               ; 2 uses
  %i.gi = shufflevector <2 x i64> %i.gd, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gj = lshr <2 x i64> %.sroa.24157.0221.i, splat (i64 63) ; 2 uses
  %i.gk = shl <2 x i64> %.sroa.24157.0221.i, splat (i64 1)
  %i.gl = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.gm = or disjoint <2 x i64> %i.gk, %i.gl
  %i.gn = or <2 x i64> %i.gm, %i.gc               ; 2 uses
  %i.go = shufflevector <2 x i64> %i.gj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.gp = lshr <2 x i64> %.sroa.29178.0228.i, splat (i64 63)
  %i.gq = shl <2 x i64> %.sroa.29178.0228.i, splat (i64 1)
  %i.gr = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gp, <2 x i32> <i32 1, i32 2>
  %i.gs = or disjoint <2 x i64> %i.gq, %i.gr
  %i.gt = or <2 x i64> %i.gs, %i.gi               ; 2 uses
  %i.gu = lshr <2 x i64> %.sroa.29160.0222.i, splat (i64 63)
  %i.gv = shl <2 x i64> %.sroa.29160.0222.i, splat (i64 1)
  %i.gw = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.gx = or disjoint <2 x i64> %i.gv, %i.gw
  %i.gy = or <2 x i64> %i.gx, %i.go               ; 2 uses
  %narrow.i = icmp sgt i32 %.0230.i, 0
  %i.gz = zext i1 %narrow.i to i64
  %i.ha = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.gz, i64 0
  %i.hb = and <2 x i64> %.sroa.026.0206.i, %i.ha
  %i.hc = shl nuw <2 x i64> %i.hb, splat (i64 63)
  %i.hd = bitcast <2 x i64> %i.hc to <4 x i32>
  %i.he = ashr exact <4 x i32> %i.hd, splat (i32 31)
  %i.hf = shufflevector <4 x i32> %i.he, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hg = bitcast <4 x i32> %i.hf to <2 x i64>    ; 25 uses
  %i.hh = and <2 x i64> %.sroa.083.0194.i, %.sroa.026.0206.i
  %i.hi = shl <2 x i64> %i.hh, splat (i64 63)
  %i.hj = bitcast <2 x i64> %i.hi to <4 x i32>
  %i.hk = ashr exact <4 x i32> %i.hj, splat (i32 31)
  %i.hl = shufflevector <4 x i32> %i.hk, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hm = bitcast <4 x i32> %i.hl to <2 x i64>    ; 13 uses
  %i.hn = xor <2 x i64> %.sroa.097.0188.i, %.sroa.055.0200.i ; 2 uses
  %i.ho = and <2 x i64> %i.hn, %i.hm
  %i.hp = shl <2 x i64> %i.ho, splat (i64 63)
  %i.hq = bitcast <2 x i64> %i.hp to <4 x i32>
  %i.hr = ashr exact <4 x i32> %i.hq, splat (i32 31)
  %i.hs = shufflevector <4 x i32> %i.hr, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ht = bitcast <4 x i32> %i.hs to <2 x i64>    ; 12 uses
  %i.hu = extractelement <2 x i64> %i.hg, i64 0
  %i.hv = and i64 %i.hu, 1
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = sub nsw i32 0, %.0230.i
  %i.hy = zext i32 %i.hx to i64
  %i.hz = zext i32 %.0230.i to i64
  %i.ia = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hw) #10, !srcloc !68 ; 2 uses
  %i.ib = and i64 %i.ia, %i.hy
  %i.ic = xor i64 %i.ia, -1
  %i.id = and i64 %i.ic, %i.hz
  %i.ie = or disjoint i64 %i.ib, %i.id
  %i.if = trunc nuw i64 %i.ie to i32
  %i.ig = add nsw i32 %i.if, 1
  %i.ih = and <2 x i64> %i.hn, %i.hg              ; 2 uses
  %i.ii = xor <2 x i64> %i.ih, %.sroa.097.0188.i  ; 3 uses
  %i.ij = xor <2 x i64> %i.ih, %.sroa.055.0200.i  ; 2 uses
  %i.ik = xor <2 x i64> %.sroa.083.0194.i, %.sroa.026.0206.i
  %i.il = and <2 x i64> %i.ik, %i.hg              ; 2 uses
  %i.im = xor <2 x i64> %i.il, %.sroa.083.0194.i  ; 3 uses
  %i.in = xor <2 x i64> %i.il, %.sroa.026.0206.i
  %i.io = xor <2 x i64> %.sroa.8101.0187.i, %.sroa.1261.0199.i
  %i.ip = and <2 x i64> %i.io, %i.hg              ; 2 uses
  %i.iq = xor <2 x i64> %i.ip, %.sroa.8101.0187.i ; 2 uses
  %i.ir = xor <2 x i64> %i.ip, %.sroa.1261.0199.i ; 2 uses
  %i.is = xor <2 x i64> %.sroa.887.0193.i, %.sroa.1333.0205.i
  %i.it = and <2 x i64> %i.is, %i.hg              ; 2 uses
  %i.iu = xor <2 x i64> %i.it, %.sroa.887.0193.i  ; 2 uses
  %i.iv = xor <2 x i64> %i.it, %.sroa.1333.0205.i
  %i.iw = xor <2 x i64> %.sroa.11103.0186.i, %.sroa.2166.0198.i
  %i.ix = and <2 x i64> %i.iw, %i.hg              ; 2 uses
  %i.iy = xor <2 x i64> %i.ix, %.sroa.11103.0186.i ; 2 uses
  %i.iz = xor <2 x i64> %i.ix, %.sroa.2166.0198.i ; 2 uses
  %i.ja = xor <2 x i64> %.sroa.1189.0192.i, %.sroa.2238.0204.i
  %i.jb = and <2 x i64> %i.ja, %i.hg              ; 2 uses
  %i.jc = xor <2 x i64> %i.jb, %.sroa.1189.0192.i ; 2 uses
  %i.jd = xor <2 x i64> %i.jb, %.sroa.2238.0204.i
  %i.je = xor <2 x i64> %.sroa.14105.0185.i, %.sroa.30.0197.i
  %i.jf = and <2 x i64> %i.je, %i.hg              ; 2 uses
  %i.jg = xor <2 x i64> %i.jf, %.sroa.14105.0185.i ; 2 uses
  %i.jh = xor <2 x i64> %i.jf, %.sroa.30.0197.i   ; 2 uses
  %i.ji = xor <2 x i64> %.sroa.1491.0191.i, %.sroa.31.0203.i
  %i.jj = and <2 x i64> %i.ji, %i.hg              ; 2 uses
  %i.jk = xor <2 x i64> %i.jj, %.sroa.1491.0191.i ; 2 uses
  %i.jl = xor <2 x i64> %i.jj, %.sroa.31.0203.i
  %i.jm = xor <2 x i64> %.sroa.17107.0184.i, %.sroa.39.0196.i
  %i.jn = and <2 x i64> %i.jm, %i.hg              ; 2 uses
  %i.jo = xor <2 x i64> %i.jn, %.sroa.17107.0184.i ; 2 uses
  %i.jp = xor <2 x i64> %i.jn, %.sroa.39.0196.i   ; 2 uses
  %i.jq = xor <2 x i64> %.sroa.1793.0190.i, %.sroa.40.0202.i
  %i.jr = and <2 x i64> %i.jq, %i.hg              ; 2 uses
  %i.js = xor <2 x i64> %i.jr, %.sroa.1793.0190.i ; 2 uses
  %i.jt = xor <2 x i64> %i.jr, %.sroa.40.0202.i
  %i.ju = xor <2 x i64> %.sroa.20109.0183.i, %.sroa.48.0195.i
  %i.jv = and <2 x i64> %i.ju, %i.hg              ; 2 uses
  %i.jw = xor <2 x i64> %i.jv, %.sroa.20109.0183.i ; 2 uses
  %i.jx = xor <2 x i64> %i.jv, %.sroa.48.0195.i   ; 2 uses
  %i.jy = xor <2 x i64> %.sroa.2095.0189.i, %.sroa.49.0201.i
  %i.jz = and <2 x i64> %i.jy, %i.hg              ; 2 uses
  %i.ka = xor <2 x i64> %i.jz, %.sroa.2095.0189.i ; 2 uses
  %i.kb = xor <2 x i64> %i.jz, %.sroa.49.0201.i
  %i.kc = and <2 x i64> %i.im, %i.hm              ; 3 uses
  %i.kd = xor <2 x i64> %i.ii, %i.ht
  %i.ke = and <2 x i64> %i.kd, %i.kc              ; 2 uses
  %i.kf = xor <2 x i64> %i.in, %i.kc              ; 2 uses
  %i.kg = xor <2 x i64> %i.ij, %i.kc
  %i.kh = xor <2 x i64> %i.ke, %i.kf
  %i.ki = and <2 x i64> %i.kh, %i.kg              ; 2 uses
  %i.kj = xor <2 x i64> %i.ke, %i.ij
  %i.kk = or <2 x i64> %i.kj, %i.kf               ; 2 uses
  %i.kl = and <2 x i64> %i.iu, %i.hm              ; 3 uses
  %i.km = xor <2 x i64> %i.iq, %i.ht
  %i.kn = and <2 x i64> %i.km, %i.kl              ; 2 uses
  %i.ko = xor <2 x i64> %i.iv, %i.kl              ; 2 uses
  %i.kp = xor <2 x i64> %i.ir, %i.kl
  %i.kq = xor <2 x i64> %i.kn, %i.ko
  %i.kr = and <2 x i64> %i.kq, %i.kp              ; 2 uses
  %i.ks = xor <2 x i64> %i.kn, %i.ir
  %i.kt = or <2 x i64> %i.ks, %i.ko               ; 2 uses
  %i.ku = and <2 x i64> %i.jc, %i.hm              ; 3 uses
  %i.kv = xor <2 x i64> %i.iy, %i.ht
  %i.kw = and <2 x i64> %i.kv, %i.ku              ; 2 uses
  %i.kx = xor <2 x i64> %i.jd, %i.ku              ; 2 uses
  %i.ky = xor <2 x i64> %i.iz, %i.ku
  %i.kz = xor <2 x i64> %i.kw, %i.kx
  %i.la = and <2 x i64> %i.kz, %i.ky              ; 2 uses
  %i.lb = xor <2 x i64> %i.kw, %i.iz
  %i.lc = or <2 x i64> %i.lb, %i.kx               ; 2 uses
  %i.ld = and <2 x i64> %i.jk, %i.hm              ; 3 uses
  %i.le = xor <2 x i64> %i.jg, %i.ht
  %i.lf = and <2 x i64> %i.le, %i.ld              ; 2 uses
  %i.lg = xor <2 x i64> %i.jl, %i.ld              ; 2 uses
  %i.lh = xor <2 x i64> %i.jh, %i.ld
  %i.li = xor <2 x i64> %i.lf, %i.lg
  %i.lj = and <2 x i64> %i.li, %i.lh              ; 2 uses
  %i.lk = xor <2 x i64> %i.lf, %i.jh
  %i.ll = or <2 x i64> %i.lk, %i.lg               ; 2 uses
  %i.lm = and <2 x i64> %i.js, %i.hm              ; 3 uses
  %i.ln = xor <2 x i64> %i.jo, %i.ht
  %i.lo = and <2 x i64> %i.ln, %i.lm              ; 2 uses
  %i.lp = xor <2 x i64> %i.jt, %i.lm              ; 2 uses
  %i.lq = xor <2 x i64> %i.jp, %i.lm
  %i.lr = xor <2 x i64> %i.lo, %i.lp
  %i.ls = and <2 x i64> %i.lr, %i.lq              ; 2 uses
  %i.lt = xor <2 x i64> %i.lo, %i.jp
  %i.lu = or <2 x i64> %i.lt, %i.lp               ; 2 uses
  %i.lv = and <2 x i64> %i.ka, %i.hm              ; 3 uses
  %i.lw = xor <2 x i64> %i.jw, %i.ht
  %i.lx = and <2 x i64> %i.lw, %i.lv              ; 2 uses
  %i.ly = xor <2 x i64> %i.kb, %i.lv              ; 2 uses
  %i.lz = xor <2 x i64> %i.jx, %i.lv
  %i.ma = xor <2 x i64> %i.lx, %i.ly
  %i.mb = and <2 x i64> %i.ma, %i.lz              ; 2 uses
  %i.mc = xor <2 x i64> %i.lx, %i.jx
  %i.md = or <2 x i64> %i.mc, %i.ly               ; 2 uses
  %i.me = shl <2 x i64> %i.mb, splat (i64 63)     ; 2 uses
  %i.mf = lshr <2 x i64> %i.mb, splat (i64 1)
  %i.mg = shufflevector <2 x i64> %i.me, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mh = or disjoint <2 x i64> %i.mf, %i.mg
  %i.mi = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.me, <2 x i32> <i32 1, i32 2>
  %i.mj = shl <2 x i64> %i.md, splat (i64 63)     ; 2 uses
  %i.mk = lshr <2 x i64> %i.md, splat (i64 1)
  %i.ml = shufflevector <2 x i64> %i.mj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mm = or disjoint <2 x i64> %i.mk, %i.ml
  %i.mn = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mj, <2 x i32> <i32 1, i32 2>
  %i.mo = shl <2 x i64> %i.ls, splat (i64 63)     ; 2 uses
  %i.mp = lshr <2 x i64> %i.ls, splat (i64 1)
  %i.mq = shufflevector <2 x i64> %i.mo, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mr = or disjoint <2 x i64> %i.mp, %i.mq
  %i.ms = or <2 x i64> %i.mr, %i.mi
  %i.mt = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mo, <2 x i32> <i32 1, i32 2>
  %i.mu = shl <2 x i64> %i.lu, splat (i64 63)     ; 2 uses
  %i.mv = lshr <2 x i64> %i.lu, splat (i64 1)
  %i.mw = shufflevector <2 x i64> %i.mu, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.mx = or disjoint <2 x i64> %i.mv, %i.mw
  %i.my = or <2 x i64> %i.mx, %i.mn
  %i.mz = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.mu, <2 x i32> <i32 1, i32 2>
  %i.na = shl <2 x i64> %i.lj, splat (i64 63)     ; 2 uses
  %i.nb = lshr <2 x i64> %i.lj, splat (i64 1)
  %i.nc = shufflevector <2 x i64> %i.na, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nd = or disjoint <2 x i64> %i.nb, %i.mt
  %i.ne = or <2 x i64> %i.nd, %i.nc
  %i.nf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.na, <2 x i32> <i32 1, i32 2>
  %i.ng = shl <2 x i64> %i.ll, splat (i64 63)     ; 2 uses
  %i.nh = lshr <2 x i64> %i.ll, splat (i64 1)
  %i.ni = shufflevector <2 x i64> %i.ng, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nj = or disjoint <2 x i64> %i.nh, %i.mz
  %i.nk = or <2 x i64> %i.nj, %i.ni
  %i.nl = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ng, <2 x i32> <i32 1, i32 2>
  %i.nm = shl <2 x i64> %i.la, splat (i64 63)     ; 2 uses
  %i.nn = lshr <2 x i64> %i.la, splat (i64 1)
  %i.no = shufflevector <2 x i64> %i.nm, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.np = or disjoint <2 x i64> %i.nn, %i.nf
  %i.nq = or <2 x i64> %i.np, %i.no
  %i.nr = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.nm, <2 x i32> <i32 1, i32 2>
  %i.ns = shl <2 x i64> %i.lc, splat (i64 63)     ; 2 uses
  %i.nt = lshr <2 x i64> %i.lc, splat (i64 1)
  %i.nu = shufflevector <2 x i64> %i.ns, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.nv = or disjoint <2 x i64> %i.nt, %i.nl
  %i.nw = or <2 x i64> %i.nv, %i.nu
  %i.nx = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ns, <2 x i32> <i32 1, i32 2>
  %i.ny = shl <2 x i64> %i.kr, splat (i64 63)     ; 2 uses
  %i.nz = lshr <2 x i64> %i.kr, splat (i64 1)
  %i.oa = shufflevector <2 x i64> %i.ny, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ob = or disjoint <2 x i64> %i.nz, %i.nr
  %i.oc = or <2 x i64> %i.ob, %i.oa
  %i.od = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ny, <2 x i32> <i32 1, i32 2>
  %i.oe = shl <2 x i64> %i.kt, splat (i64 63)     ; 2 uses
  %i.of = lshr <2 x i64> %i.kt, splat (i64 1)
  %i.og = shufflevector <2 x i64> %i.oe, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.oh = or disjoint <2 x i64> %i.of, %i.nx
  %i.oi = or <2 x i64> %i.oh, %i.og
  %i.oj = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.oe, <2 x i32> <i32 1, i32 2>
  %i.ok = shl <2 x i64> %i.ki, splat (i64 63)
  %i.ol = lshr <2 x i64> %i.ki, splat (i64 1)
  %i.om = shufflevector <2 x i64> %i.ok, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.on = or disjoint <2 x i64> %i.ol, %i.od
  %i.oo = or <2 x i64> %i.on, %i.om
  %i.op = shl <2 x i64> %i.kk, splat (i64 63)
  %i.oq = lshr <2 x i64> %i.kk, splat (i64 1)
  %i.or = shufflevector <2 x i64> %i.op, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.os = or disjoint <2 x i64> %i.oq, %i.oj
  %i.ot = or <2 x i64> %i.os, %i.or
  %i.ou = xor <2 x i64> %.sroa.0128.0211.i, %i.em
  %i.ov = and <2 x i64> %i.ou, %i.hg              ; 2 uses
  %i.ow = xor <2 x i64> %i.ov, %i.em              ; 3 uses
  %i.ox = xor <2 x i64> %i.ov, %.sroa.0128.0211.i ; 2 uses
  %i.oy = xor <2 x i64> %.sroa.0111.0182.i, %i.er
  %i.oz = and <2 x i64> %i.oy, %i.hg              ; 2 uses
  %i.pa = xor <2 x i64> %i.oz, %i.er              ; 4 uses
  %i.pb = xor <2 x i64> %i.oz, %.sroa.0111.0182.i
  %i.pc = xor <2 x i64> %.sroa.8131.0212.i, %i.ex
  %i.pd = and <2 x i64> %i.pc, %i.hg              ; 2 uses
  %i.pe = xor <2 x i64> %i.pd, %i.ex              ; 3 uses
  %i.pf = xor <2 x i64> %i.pd, %.sroa.8131.0212.i ; 2 uses
  %i.pg = xor <2 x i64> %.sroa.9114.0181.i, %i.fd
  %i.ph = and <2 x i64> %i.pg, %i.hg              ; 2 uses
  %i.pi = xor <2 x i64> %i.ph, %i.fd              ; 4 uses
  %i.pj = xor <2 x i64> %i.ph, %.sroa.9114.0181.i
  %i.pk = xor <2 x i64> %.sroa.13134.0213.i, %i.fj
  %i.pl = and <2 x i64> %i.pk, %i.hg              ; 2 uses
  %i.pm = xor <2 x i64> %i.pl, %i.fj              ; 3 uses
  %i.pn = xor <2 x i64> %i.pl, %.sroa.13134.0213.i ; 2 uses
  %i.po = xor <2 x i64> %.sroa.14117.0207.i, %i.fp
  %i.pp = and <2 x i64> %i.po, %i.hg              ; 2 uses
  %i.pq = xor <2 x i64> %i.pp, %i.fp              ; 4 uses
  %i.pr = xor <2 x i64> %i.pp, %.sroa.14117.0207.i
  %i.ps = xor <2 x i64> %.sroa.18137.0214.i, %i.fv
  %i.pt = and <2 x i64> %i.ps, %i.hg              ; 2 uses
  %i.pu = xor <2 x i64> %i.pt, %i.fv              ; 3 uses
  %i.pv = xor <2 x i64> %i.pt, %.sroa.18137.0214.i ; 2 uses
  %i.pw = xor <2 x i64> %.sroa.19120.0208.i, %i.gb
  %i.px = and <2 x i64> %i.pw, %i.hg              ; 2 uses
  %i.py = xor <2 x i64> %i.px, %i.gb              ; 4 uses
  %i.pz = xor <2 x i64> %i.px, %.sroa.19120.0208.i
  %i.qa = xor <2 x i64> %.sroa.23140.0215.i, %i.gh
  %i.qb = and <2 x i64> %i.qa, %i.hg              ; 2 uses
  %i.qc = xor <2 x i64> %i.qb, %i.gh              ; 3 uses
  %i.qd = xor <2 x i64> %i.qb, %.sroa.23140.0215.i ; 2 uses
  %i.qe = xor <2 x i64> %.sroa.24123.0209.i, %i.gn
  %i.qf = and <2 x i64> %i.qe, %i.hg              ; 2 uses
  %i.qg = xor <2 x i64> %i.qf, %i.gn              ; 4 uses
  %i.qh = xor <2 x i64> %i.qf, %.sroa.24123.0209.i
  %i.qi = xor <2 x i64> %.sroa.28.0216.i, %i.gt
  %i.qj = and <2 x i64> %i.qi, %i.hg              ; 2 uses
  %i.qk = xor <2 x i64> %i.qj, %i.gt              ; 3 uses
  %i.ql = xor <2 x i64> %i.qj, %.sroa.28.0216.i   ; 2 uses
  %i.qm = xor <2 x i64> %.sroa.29.0210.i, %i.gy
  %i.qn = and <2 x i64> %i.qm, %i.hg              ; 2 uses
  %i.qo = xor <2 x i64> %i.qn, %i.gy              ; 3 uses
  %i.qp = xor <2 x i64> %i.qn, %.sroa.29.0210.i
  %i.qq = and <2 x i64> %i.pa, %i.hm              ; 3 uses
  %i.qr = xor <2 x i64> %i.ow, %i.ht
  %i.qs = and <2 x i64> %i.qq, %i.qr              ; 2 uses
  %i.qt = xor <2 x i64> %i.pb, %i.qq              ; 2 uses
  %i.qu = xor <2 x i64> %i.qq, %i.ox
  %i.qv = xor <2 x i64> %i.qt, %i.qs
  %i.qw = and <2 x i64> %i.qv, %i.qu
  %i.qx = xor <2 x i64> %i.qs, %i.ox
  %i.qy = or <2 x i64> %i.qx, %i.qt
  %i.qz = and <2 x i64> %i.pi, %i.hm              ; 3 uses
  %i.ra = xor <2 x i64> %i.pe, %i.ht
  %i.rb = and <2 x i64> %i.qz, %i.ra              ; 2 uses
  %i.rc = xor <2 x i64> %i.pj, %i.qz              ; 2 uses
  %i.rd = xor <2 x i64> %i.qz, %i.pf
  %i.re = xor <2 x i64> %i.rc, %i.rb
  %i.rf = and <2 x i64> %i.re, %i.rd
  %i.rg = xor <2 x i64> %i.rb, %i.pf
  %i.rh = or <2 x i64> %i.rg, %i.rc
  %i.ri = and <2 x i64> %i.pq, %i.hm              ; 3 uses
  %i.rj = xor <2 x i64> %i.pm, %i.ht
  %i.rk = and <2 x i64> %i.rj, %i.ri              ; 2 uses
  %i.rl = xor <2 x i64> %i.pr, %i.ri              ; 2 uses
  %i.rm = xor <2 x i64> %i.ri, %i.pn
  %i.rn = xor <2 x i64> %i.rk, %i.rl
  %i.ro = and <2 x i64> %i.rn, %i.rm
  %i.rp = xor <2 x i64> %i.rk, %i.pn
  %i.rq = or <2 x i64> %i.rp, %i.rl
  %i.rr = and <2 x i64> %i.py, %i.hm              ; 3 uses
  %i.rs = xor <2 x i64> %i.pu, %i.ht
  %i.rt = and <2 x i64> %i.rs, %i.rr              ; 2 uses
  %i.ru = xor <2 x i64> %i.pz, %i.rr              ; 2 uses
  %i.rv = xor <2 x i64> %i.rr, %i.pv
  %i.rw = xor <2 x i64> %i.rt, %i.ru
  %i.rx = and <2 x i64> %i.rw, %i.rv
  %i.ry = xor <2 x i64> %i.rt, %i.pv
  %i.rz = or <2 x i64> %i.ry, %i.ru
  %i.sa = and <2 x i64> %i.qg, %i.hm              ; 3 uses
  %i.sb = xor <2 x i64> %i.qc, %i.ht
  %i.sc = and <2 x i64> %i.sb, %i.sa              ; 2 uses
  %i.sd = xor <2 x i64> %i.qh, %i.sa              ; 2 uses
  %i.se = xor <2 x i64> %i.sa, %i.qd
  %i.sf = xor <2 x i64> %i.sc, %i.sd
  %i.sg = and <2 x i64> %i.sf, %i.se
  %i.sh = xor <2 x i64> %i.sc, %i.qd
  %i.si = or <2 x i64> %i.sh, %i.sd
  %i.sj = and <2 x i64> %i.qo, %i.hm              ; 3 uses
  %i.sk = xor <2 x i64> %i.qk, %i.ht
  %i.sl = and <2 x i64> %i.sk, %i.sj              ; 2 uses
  %i.sm = xor <2 x i64> %i.qp, %i.sj              ; 2 uses
  %i.sn = xor <2 x i64> %i.sj, %i.ql
  %i.so = xor <2 x i64> %i.sl, %i.sm
  %i.sp = and <2 x i64> %i.so, %i.sn
  %i.sq = xor <2 x i64> %i.sl, %i.ql
  %i.sr = or <2 x i64> %i.sq, %i.sm
  %i.ss = add nuw nsw i64 %.025229.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ss, 1399
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !69

_ZL16poly3_invert_vecP5poly3PKS_.exit:            ; preds = %bb.b, %.split.preheader.i.i
  %i.st = phi i64 [ %i.dq, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.su = phi i64 [ %i.ds, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.sv = phi i64 [ %i.du, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.sw = phi i64 [ %i.dw, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.sx = phi i64 [ %i.dy, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.sy = phi i64 [ %i.ea, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.sz = phi i64 [ %i.ec, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.ta = phi i64 [ %i.ee, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tb = phi i64 [ %i.eg, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tc = phi i64 [ %i.eh, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.td = phi i64 [ %i.ei, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.te = phi i64 [ %i.ce, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tf = phi i64 [ %i.cg, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tg = phi i64 [ %i.ci, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.th = phi i64 [ %i.ck, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.ti = phi i64 [ %i.cm, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tj = phi i64 [ %i.co, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tk = phi i64 [ %i.cq, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tl = phi i64 [ %i.cs, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tm = phi i64 [ %i.cu, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tn = phi i64 [ %i.cw, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.to = phi i64 [ %i.cx, %.split.preheader.i.i ], [ 0, %bb.b ]
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.9166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.29160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.24157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.19154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.14151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.9148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.29178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.19172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.14169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.te, ptr %i.tp, align 8, !tbaa !16
  store i64 %i.tf, ptr %i.tq, align 8, !tbaa !16
  store i64 %i.tg, ptr %.sroa.9148.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.th, ptr %i.tr, align 8, !tbaa !16
  store i64 %i.ti, ptr %.sroa.14151.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.tj, ptr %i.ts, align 8, !tbaa !16
  store i64 %i.tk, ptr %.sroa.19154.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.tl, ptr %i.tt, align 8, !tbaa !16
  store i64 %i.tm, ptr %.sroa.24157.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.tn, ptr %i.tu, align 8, !tbaa !16
  store i64 %i.to, ptr %.sroa.29160.0..sroa_idx.i, align 8, !tbaa !16
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.st, ptr %0, align 8, !tbaa !16
  store i64 %i.su, ptr %i.tv, align 8, !tbaa !16
  store i64 %i.sv, ptr %.sroa.9166.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.sw, ptr %i.tw, align 8, !tbaa !16
  store i64 %i.sx, ptr %.sroa.14169.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.sy, ptr %i.tx, align 8, !tbaa !16
  store i64 %i.sz, ptr %.sroa.19172.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.ta, ptr %i.ty, align 8, !tbaa !16
  store i64 %i.tb, ptr %.sroa.24175.0..sroa_idx.i, align 8, !tbaa !16
  store i64 %i.tc, ptr %i.tz, align 8, !tbaa !16
  store i64 %i.td, ptr %.sroa.29178.0..sroa_idx.i, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HRSS_generate_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.poly2, align 8              ; 15 uses
  %4 = alloca %struct.poly2, align 16             ; 14 uses
  %5 = alloca %"struct.(anonymous namespace)::poly", align 16 ; 18 uses
  %i.a = ptrtoaddr ptr %5 to i64
  %6 = alloca %"struct.(anonymous namespace)::poly", align 16 ; 19 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 10 uses
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 11 uses
  %i.j = tail call ptr @OPENSSL_malloc(i64 noundef 11231) #9 ; 6 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.l, 31                         ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m ; 70 uses
  %.not86 = icmp eq ptr %i.j, null
  br i1 %.not86, label %bb.b, label %vector.memcheck

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1424) %0, i8 0, i64 1424, i1 false)
  %i.o = tail call i32 @RAND_bytes(ptr noundef %1, i64 noundef 1808) #9 ; 0 uses
  br label %bb.ai

vector.memcheck:                                  ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1760
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1400 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 5568 ; 13 uses
  %i.s = getelementptr i8, ptr %i.j, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.s, i64 6968
  %scevgep180 = getelementptr i8, ptr %2, i64 700
  %bound0 = icmp ult ptr %i.r, %scevgep180
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <8 x i8>, ptr %i.t, align 1, !tbaa !70, !alias.scope !71 ; 2 uses
  %i.u = zext <8 x i8> %wide.load to <8 x i16>
  %i.v = zext <8 x i8> %wide.load to <8 x i32>
  %i.w = mul nuw nsw <8 x i32> %i.v, splat (i32 21845)
  %i.x = lshr <8 x i32> %i.w, splat (i32 16)
  %i.y = trunc nuw nsw <8 x i32> %i.x to <8 x i16>
  %i.z = mul nsw <8 x i16> %i.y, splat (i16 -3)
  %i.aa = add nsw <8 x i16> %i.z, %i.u            ; 3 uses
  %i.ab = ashr <8 x i16> %i.aa, splat (i16 1)
  %i.ac = and <8 x i16> %i.ab, %i.aa
  %i.ad = add <8 x i16> %i.ac, splat (i16 -1)
  %i.ae = and <8 x i16> %i.ad, %i.aa              ; 2 uses
  %i.af = lshr <8 x i16> %i.ae, splat (i16 1)
  %i.ag = xor <8 x i16> %i.af, splat (i16 1)
  %i.ah = add nsw <8 x i16> %i.ag, splat (i16 -1)
  %i.ai = or <8 x i16> %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index
  store <8 x i16> %i.ai, ptr %i.aj, align 2, !tbaa !70, !alias.scope !74, !noalias !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, 696
  br i1 %i.ak, label %scalar.ph.preheader, label %vector.body, !llvm.loop !76

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 696, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_0
