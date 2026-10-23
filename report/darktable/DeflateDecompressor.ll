Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.a
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.n, %bb.a ] ; 21 uses
  %i.r = mul nsw i32 %i.d, %.sroa.0156.0.extract.trunc ; 8 uses
  %i.s = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %2, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ne i64 %.sroa.7162.0.extract.shift, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !145
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !146  ; 2 uses
  %i.z = icmp sgt i32 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = call i32 @uncompress(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef %i.w, i64 noundef %i.aa) ; 3 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ac = call ptr @zError(i32 noundef %i.ab)
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_, i32 noundef %i.ab, ptr noundef %i.ac) #14
  unreachable

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !147, !noalias !148 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !97, !noalias !148
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !149, !noalias !148
  %i.al = mul nsw i32 %i.ak, %i.ai                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !150, !noalias !148
  %i.ao = ashr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %i.ao, %i.al
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 612
  %i.at = load i32, ptr %i.as, align 4, !tbaa !151, !noalias !148
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = zext nneg i32 %i.r to i64               ; 18 uses
  %i.aw = and i64 %4, 2147483648
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = and i64 %4, 2147483647                  ; 14 uses
  %i.bb = zext nneg i32 %i.al to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bc = ashr exact i64 %sext, 31                ; 10 uses
  %i.bd = mul nsw i64 %i.az, 3                    ; 6 uses
  %i.be = zext nneg i32 %i.at to i64
  %i.bf = zext i32 %i.ao to i64                   ; 7 uses
  %i.bg = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bh = add i64 %i.bg, %i.ba
  %i.bi = shl i64 %i.bh, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = mul i64 %i.bl, %i.bf
  %i.bn = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %i.ag, i64 %i.bo
  %scevgep209 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bq = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.br = mul nsw i64 %i.bq, %i.av                ; 2 uses
  %i.bs = getelementptr i8, ptr %i.q, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %scevgep211 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count.i81
  %i.bu = getelementptr i8, ptr %i.q, i64 %i.br
  %scevgep212 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bw = add i64 %i.bv, %i.ba
  %i.bx = shl i64 %i.bw, 2
  %scevgep228 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 3 uses
  %i.by = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, -4
  %i.cb = mul i64 %i.ca, %i.bf
  %i.cc = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.ag, i64 %i.cd
  %scevgep229 = getelementptr i8, ptr %i.ce, i64 %i.cb ; 3 uses
  %scevgep230 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cf = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cg = mul nsw i64 %i.cf, %i.av                ; 3 uses
  %i.ch = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bc
  %scevgep231 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count.i81
  %scevgep232 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.az
  %scevgep233 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i81
  %i.cl = getelementptr i8, ptr %i.q, i64 %i.cg
  %scevgep234 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cn = add i64 %i.cm, %i.ba
  %i.co = shl i64 %i.cn, 2
  %scevgep277 = getelementptr i8, ptr %i.ag, i64 %i.co ; 4 uses
  %i.cp = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = mul i64 %i.cr, %i.bf
  %i.ct = add nuw nsw i64 %i.ba, %wide.trip.count.i81
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr i8, ptr %i.ag, i64 %i.cu
  %scevgep278 = getelementptr i8, ptr %i.cv, i64 %i.cs ; 4 uses
  %scevgep279 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cx = mul nsw i64 %i.cw, %i.av                ; 4 uses
  %i.cy = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bd
  %scevgep280 = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i81
  %scevgep281 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.da, i64 %i.bc
  %scevgep282 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i81
  %scevgep283 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.dc = getelementptr i8, ptr %i.q, i64 %i.cx
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.az
  %scevgep284 = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i81
  %i.de = getelementptr i8, ptr %i.q, i64 %i.cx
  %scevgep285 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check302 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0286 = icmp ult ptr %scevgep277, %scevgep280
  %bound1287 = icmp ult ptr %scevgep279, %scevgep278
  %found.conflict288 = and i1 %bound0286, %bound1287
  %bound0289 = icmp ult ptr %scevgep277, %scevgep282
  %bound1290 = icmp ult ptr %scevgep281, %scevgep278
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %found.conflict288, %found.conflict291
  %bound0293 = icmp ult ptr %scevgep277, %scevgep284
  %bound1294 = icmp ult ptr %scevgep283, %scevgep278
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %scevgep277, %scevgep285
  %bound1298 = icmp ult ptr %i.q, %scevgep278
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %n.vec304 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n327 = icmp eq i64 %wide.trip.count.i81, %n.vec304
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check247 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0235 = icmp ult ptr %scevgep228, %scevgep231
  %bound1236 = icmp ult ptr %scevgep230, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %bound0238 = icmp ult ptr %scevgep228, %scevgep233
  %bound1239 = icmp ult ptr %scevgep232, %scevgep229
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %found.conflict237, %found.conflict240
  %bound0242 = icmp ult ptr %scevgep228, %scevgep234
  %bound1243 = icmp ult ptr %i.q, %scevgep229
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %n.vec249 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n274 = icmp eq i64 %wide.trip.count.i81, %n.vec249
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep211
  %bound1 = icmp ult ptr %scevgep210, %scevgep209
  %found.conflict = and i1 %bound0, %bound1
  %bound0213 = icmp ult ptr %scevgep, %scevgep212
  %bound1214 = icmp ult ptr %i.q, %scevgep209
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx = or i1 %found.conflict, %found.conflict215
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.df = mul nuw i64 %indvars.iv, %i.av
  %i.dg = getelementptr i8, ptr %i.q, i64 %i.df
  %scevgep331 = getelementptr i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dh)
  %i.di = mul nuw i64 %indvars.iv, %i.av
  %i.dj = getelementptr i8, ptr %i.q, i64 %i.di   ; 34 uses
  %i.dk = load i32, ptr %i.au, align 8, !tbaa !27 ; 5 uses
  %i.dl = icmp slt i32 %i.dk, %i.r
  br i1 %i.dl, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %5 = icmp sgt i32 %i.dk, -1
  %6 = zext nneg i32 %i.dk to i64                 ; 12 uses
  call void @llvm.assume(i1 %5)
  %i.dm = xor i32 %i.dk, -1
  %i.dn = add nsw i32 %i.r, %i.dm                 ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = add nuw nsw i64 %i.do, 1                ; 5 uses
  %min.iters.check338 = icmp ult i32 %i.dn, 7
  br i1 %min.iters.check338, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck329

vector.memcheck329:                               ; preds = %iter.check
  %scevgep330 = getelementptr i8, ptr %i.dj, i64 %6
  %i.dq = xor i32 %i.dk, -1
  %i.dr = add nsw i32 %i.r, %i.dq
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr i8, ptr %scevgep331, i64 %6
  %scevgep332 = getelementptr i8, ptr %i.dt, i64 %i.ds
  %scevgep333 = getelementptr i8, ptr %scevgep331, i64 %i.ds
  %bound0334 = icmp ult ptr %scevgep330, %scevgep333
  %bound1335 = icmp ult ptr %i.dj, %scevgep332
  %found.conflict336 = and i1 %bound0334, %bound1335
  br i1 %found.conflict336, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck329
  %min.iters.check339 = icmp ult i32 %i.dn, 31
  br i1 %min.iters.check339, label %vec.epilog.ph, label %vector.ph340

vector.ph340:                                     ; preds = %vector.main.loop.iter.check
  %i.du = and i64 %i.dp, 24
  %n.vec341 = and i64 %i.dp, 8589934560           ; 4 uses
  %i.dv = add nuw nsw i64 %n.vec341, %6           ; 2 uses
  %broadcast.splatinsert342 = insertelement <32 x i64> poison, i64 %6, i64 0
  %broadcast.splat343 = shufflevector <32 x i64> %broadcast.splatinsert342, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat343, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dj, i64 %6
  br label %vector.body351

vector.body351:                                   ; preds = %vector.ph340, %vector.body351
  %index352 = phi i64 [ 0, %vector.ph340 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %vec.ind353 = phi <32 x i64> [ %induction, %vector.ph340 ], [ %vec.ind.next358, %vector.body351 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index352 ; 2 uses
  %wide.load355 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.dw = sub nuw nsw <32 x i64> %vec.ind353, %broadcast.splat343
  %i.dx = extractelement <32 x i64> %i.dw, i64 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dx
  %wide.load356 = load <32 x i8>, ptr %i.dy, align 1, !tbaa !107, !alias.scope !153
  %i.dz = add <32 x i8> %wide.load356, %wide.load355
  store <32 x i8> %i.dz, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next357 = add nuw i64 %index352, 32      ; 2 uses
  %vec.ind.next358 = add nuw nsw <32 x i64> %vec.ind353, splat (i64 32)
  %i.ea = icmp eq i64 %index.next357, %n.vec341
  br i1 %i.ea, label %middle.block360, label %vector.body351, !llvm.loop !119

middle.block360:                                  ; preds = %vector.body351
  %cmp.n361 = icmp eq i64 %i.dp, %n.vec341
  br i1 %cmp.n361, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block360
  %min.epilog.iters.check = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec341, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val362 = phi i64 [ %i.dv, %vec.epilog.iter.check ], [ %6, %vector.main.loop.iter.check ]
  %n.vec363 = and i64 %i.dp, 8589934584           ; 3 uses
  %i.eb = add nuw nsw i64 %n.vec363, %6
  %invariant.gep391 = getelementptr i8, ptr %i.dj, i64 %6
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next381, %vec.epilog.vector.body ] ; 2 uses
  %i.ec = phi i64 [ %bc.resume.val362, %vec.epilog.ph ], [ %i.eg, %vec.epilog.vector.body ] ; 2 uses
  %gep392 = getelementptr i8, ptr %invariant.gep391, i64 %index376 ; 2 uses
  %wide.load379 = load <8 x i8>, ptr %gep392, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ed = sub nuw nsw i64 %i.ec, %6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ed
  %wide.load380 = load <8 x i8>, ptr %i.ee, align 1, !tbaa !107, !alias.scope !153
  %i.ef = add <8 x i8> %wide.load380, %wide.load379
  store <8 x i8> %i.ef, ptr %gep392, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next381 = add nuw i64 %index376, 8       ; 2 uses
  %i.eg = add nuw nsw i64 %i.ec, 8
  %i.eh = icmp eq i64 %index.next381, %n.vec363
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n384 = icmp eq i64 %i.dp, %n.vec363
  br i1 %cmp.n384, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck329, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %6, %iter.check ], [ %6, %vector.memcheck329 ], [ %i.dv, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ei = trunc nuw i64 %indvars.iv.i to i32
  %i.ej = icmp sgt i32 %i.r, %i.ei
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !107
  %i.em = sub nuw nsw i64 %indvars.iv.i, %6       ; 2 uses
  %i.en = icmp samesign ult i64 %i.em, %i.av
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !107
  %i.eq = add i8 %i.ep, %i.el
  store i8 %i.eq, ptr %i.ek, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.er = trunc nuw i64 %indvars.iv.next.i to i32
  %i.es = icmp sgt i32 %i.r, %i.er
  br i1 %i.es, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block360, %vec.epilog.middle.block, %bb.e
  %i.et = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.eu = icmp samesign ult i64 %i.et, %i.be
  call void @llvm.assume(i1 %i.eu)
  %i.ev = mul nuw nsw i64 %i.et, %i.bf
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ev ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader386, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep407 = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep409 = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = phi i64 [ 0, %vector.ph ], [ %i.gb, %vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ey, align 1, !tbaa !107, !alias.scope !158
  %gep408 = getelementptr i8, ptr %invariant.gep407, i64 %i.ex
  %wide.load222 = load <8 x i8>, ptr %gep408, align 1, !tbaa !107, !alias.scope !159
  %i.ez = zext <8 x i8> %wide.load222 to <8 x i16>
  %i.fa = shl nuw <8 x i16> %i.ez, splat (i16 8)
  %i.fb = zext <8 x i8> %wide.load to <8 x i16>
  %i.fc = or disjoint <8 x i16> %i.fa, %i.fb
  %i.fd = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fc) ; 2 uses
  %i.fe = zext <8 x i16> %i.fd to <8 x i32>       ; 2 uses
  %i.ff = lshr <8 x i32> %i.fe, splat (i32 10)
  %i.fg = and <8 x i32> %i.ff, splat (i32 31)     ; 3 uses
  %i.fh = and <8 x i32> %i.fe, splat (i32 1023)   ; 2 uses
  %i.fi = shl nuw nsw <8 x i32> %i.fh, splat (i32 13) ; 3 uses
  %i.fj = icmp eq <8 x i32> %i.fg, splat (i32 31) ; 2 uses
  %i.fk = add nuw nsw <8 x i32> %i.fg, splat (i32 112)
  %i.fl = icmp eq <8 x i32> %i.fg, zeroinitializer ; 3 uses
  %i.fm = icmp eq <8 x i32> %i.fh, zeroinitializer
  %i.fn = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fi, i1 true) ; 2 uses
  %i.fo = sub nuw nsw <8 x i32> splat (i32 121), %i.fn
  %i.fp = xor <8 x i32> %i.fn, splat (i32 31)
  %i.fq = sub nuw nsw <8 x i32> splat (i32 23), %i.fp
  %i.fr = shl <8 x i32> %i.fi, %i.fq
  %i.fs = and <8 x i32> %i.fr, splat (i32 8380416)
  %i.ft = xor <8 x i1> %i.fl, %i.fj
  %i.fu = select <8 x i1> %i.fl, <8 x i1> %i.fm, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.fu, <8 x i32> zeroinitializer, <8 x i32> %i.fo
  %predphi223 = select <8 x i1> %i.ft, <8 x i32> %predphi, <8 x i32> %i.fk
  %predphi225 = select <8 x i1> %i.fu, <8 x i32> zeroinitializer, <8 x i32> %i.fs
  %predphi226 = select <8 x i1> %i.fl, <8 x i32> %predphi225, <8 x i32> %i.fi
  %i.fv = sext <8 x i16> %i.fd to <8 x i32>
  %i.fw = and <8 x i32> %i.fv, splat (i32 -2147483648)
  %i.fx = shl nuw nsw <8 x i32> %predphi223, splat (i32 23)
  %i.fy = select <8 x i1> %i.fj, <8 x i32> splat (i32 2139095040), <8 x i32> %i.fx
  %i.fz = or disjoint <8 x i32> %i.fy, %i.fw
  %i.ga = or disjoint <8 x i32> %i.fz, %predphi226
  %gep410 = getelementptr inbounds [4 x i8], ptr %invariant.gep409, i64 %i.ex
  store <8 x i32> %i.ga, ptr %gep410, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = add nuw nsw i64 %i.ex, 8
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader386

.lr.ph.i52.preheader386:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader386, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader386 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i53
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !107
  %i.gf = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gg = icmp samesign ult i64 %i.gf, %i.av
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.gf
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gi to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.ge to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gj = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = lshr i32 %i.gk, 10
  %i.gm = and i32 %i.gl, 31                       ; 3 uses
  %i.gn = and i32 %i.gk, 1023                     ; 2 uses
  %i.go = shl nuw nsw i32 %i.gn, 13               ; 4 uses
  %i.gp = icmp eq i32 %i.gm, 31
  br i1 %i.gp, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gq = add nuw nsw i32 %i.gm, 112
  %i.gr = icmp eq i32 %i.gm, 0
  br i1 %i.gr, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gs = icmp eq i32 %i.gn, 0
  br i1 %i.gs, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.go, i1 true) ; 2 uses
  %i.gt = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.gu = shl i32 %i.go, %.lr.ph.tripcount.i.i
  %i.gv = and i32 %i.gu, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gq, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.gt, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.go, %bb.g ], [ %i.go, %.lr.ph.i52 ], [ %i.gv, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gj to i32
  %i.gw = and i32 %.signext.i, -2147483648
  %i.gx = shl nuw nsw i32 %.116.i.i, 23
  %i.gy = or disjoint i32 %i.gx, %i.gw
  %i.gz = or i32 %i.gy, %.1.i.i
  %i.ha = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hb = icmp samesign ule i64 %i.ha, %i.bb
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.ha
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge411 = select i1 %min.iters.check247, i1 true, i1 %conflict.rdx245
  br i1 %brmerge411, label %.lr.ph.i60.preheader387, label %vector.ph248

vector.ph248:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep401 = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep403 = getelementptr i8, ptr %i.dj, i64 %i.bc
  %invariant.gep405 = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ba
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph248
  %index261 = phi i64 [ 0, %vector.ph248 ], [ %index.next271, %vector.body260 ] ; 2 uses
  %i.hd = phi i64 [ 0, %vector.ph248 ], [ %i.ij, %vector.body260 ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index261
  %wide.load263 = load <8 x i8>, ptr %i.he, align 1, !tbaa !107, !alias.scope !164
  %gep402 = getelementptr i8, ptr %invariant.gep401, i64 %i.hd
  %wide.load264 = load <8 x i8>, ptr %gep402, align 1, !tbaa !107, !alias.scope !165
  %gep404 = getelementptr i8, ptr %invariant.gep403, i64 %i.hd
  %wide.load265 = load <8 x i8>, ptr %gep404, align 1, !tbaa !107, !alias.scope !166
  %i.hf = zext <8 x i8> %wide.load265 to <8 x i32>
  %i.hg = shl nuw nsw <8 x i32> %i.hf, splat (i32 16)
  %i.hh = zext <8 x i8> %wide.load264 to <8 x i32>
  %i.hi = shl nuw nsw <8 x i32> %i.hh, splat (i32 8)
  %i.hj = zext <8 x i8> %wide.load263 to <8 x i32>
  %i.hk = or disjoint <8 x i32> %i.hi, %i.hj
  %i.hl = or disjoint <8 x i32> %i.hk, %i.hg
  %i.hm = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hl) ; 3 uses
  %i.hn = lshr exact <8 x i32> %i.hm, splat (i32 8)
  %i.ho = lshr <8 x i32> %i.hm, splat (i32 24)
  %i.hp = and <8 x i32> %i.ho, splat (i32 127)    ; 3 uses
  %i.hq = and <8 x i32> %i.hn, splat (i32 65535)  ; 2 uses
  %i.hr = shl nuw nsw <8 x i32> %i.hq, splat (i32 7) ; 3 uses
  %i.hs = icmp eq <8 x i32> %i.hp, splat (i32 127) ; 2 uses
  %i.ht = add nuw nsw <8 x i32> %i.hp, splat (i32 64)
  %i.hu = icmp eq <8 x i32> %i.hp, zeroinitializer ; 3 uses
  %i.hv = icmp eq <8 x i32> %i.hq, zeroinitializer
  %i.hw = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.hr, i1 true) ; 2 uses
  %i.hx = sub nuw nsw <8 x i32> splat (i32 73), %i.hw
  %i.hy = xor <8 x i32> %i.hw, splat (i32 31)
  %i.hz = sub nuw nsw <8 x i32> splat (i32 23), %i.hy
  %i.ia = shl <8 x i32> %i.hr, %i.hz
  %i.ib = and <8 x i32> %i.ia, splat (i32 8388480)
  %i.ic = xor <8 x i1> %i.hu, %i.hs
  %i.id = select <8 x i1> %i.hu, <8 x i1> %i.hv, <8 x i1> zeroinitializer ; 2 uses
  %predphi266 = select <8 x i1> %i.id, <8 x i32> zeroinitializer, <8 x i32> %i.hx
  %predphi267 = select <8 x i1> %i.ic, <8 x i32> %predphi266, <8 x i32> %i.ht
  %predphi269 = select <8 x i1> %i.id, <8 x i32> zeroinitializer, <8 x i32> %i.ib
  %predphi270 = select <8 x i1> %i.hu, <8 x i32> %predphi269, <8 x i32> %i.hr
  %i.ie = and <8 x i32> %i.hm, splat (i32 -2147483648)
  %i.if = shl nuw nsw <8 x i32> %predphi267, splat (i32 23)
  %i.ig = select <8 x i1> %i.hs, <8 x i32> splat (i32 2139095040), <8 x i32> %i.if
  %i.ih = or disjoint <8 x i32> %i.ig, %i.ie
end_hunk_0
