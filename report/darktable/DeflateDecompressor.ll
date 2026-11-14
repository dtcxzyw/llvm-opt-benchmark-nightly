Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
  %i.q = phi ptr [ %i.o, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i ], [ %i.n, %bb.a ] ; 23 uses
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
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = zext nneg i32 %i.r to i64               ; 17 uses
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
  %.pre200 = load i32, ptr %i.au, align 8, !tbaa !27
  %i.bg = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bh = mul nsw i64 %i.bg, %i.av                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.q, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 %wide.trip.count.i81
  %i.bj = getelementptr i8, ptr %i.q, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.az
  %scevgep218 = getelementptr i8, ptr %i.bk, i64 %wide.trip.count.i81
  %scevgep219 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bl = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, -4
  %i.bo = mul i64 %i.bn, %i.bf
  %i.bp = shl nuw nsw i64 %i.ba, 2
  %i.bq = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.br = getelementptr i8, ptr %i.ag, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %scevgep220 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %i.bt = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bu = add i64 %i.bt, %i.ba
  %i.bv = shl i64 %i.bu, 2
  %scevgep221 = getelementptr i8, ptr %i.ag, i64 %i.bv ; 2 uses
  %i.bw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bx = mul nsw i64 %i.bw, %i.av                ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bx
  %scevgep255 = getelementptr i8, ptr %i.by, i64 %wide.trip.count.i81
  %i.bz = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.az
  %scevgep256 = getelementptr i8, ptr %i.ca, i64 %wide.trip.count.i81
  %scevgep257 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cb = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bc
  %scevgep258 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count.i81
  %scevgep259 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cd = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, -4
  %i.cg = mul i64 %i.cf, %i.bf
  %i.ch = shl nuw nsw i64 %i.ba, 2
  %i.ci = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.cj = getelementptr i8, ptr %i.ag, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %scevgep260 = getelementptr i8, ptr %i.ck, i64 %i.ci ; 3 uses
  %i.cl = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cm = add i64 %i.cl, %i.ba
  %i.cn = shl i64 %i.cm, 2
  %scevgep261 = getelementptr i8, ptr %i.ag, i64 %i.cn ; 3 uses
  %i.co = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cp = mul nsw i64 %i.co, %i.av                ; 4 uses
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.cp
  %scevgep329 = getelementptr i8, ptr %i.cq, i64 %wide.trip.count.i81
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.az
  %scevgep330 = getelementptr i8, ptr %i.cs, i64 %wide.trip.count.i81
  %scevgep331 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bc
  %scevgep332 = getelementptr i8, ptr %i.cu, i64 %wide.trip.count.i81
  %scevgep333 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bd
  %scevgep334 = getelementptr i8, ptr %i.cw, i64 %wide.trip.count.i81
  %scevgep335 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cx = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = add nsw i64 %i.cy, -4
  %i.da = mul i64 %i.cz, %i.bf
  %i.db = shl nuw nsw i64 %i.ba, 2
  %i.dc = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.dd = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep336 = getelementptr i8, ptr %i.de, i64 %i.dc ; 4 uses
  %i.df = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.dg = add i64 %i.df, %i.ba
  %i.dh = shl i64 %i.dg, 2
  %scevgep337 = getelementptr i8, ptr %i.ag, i64 %i.dh ; 4 uses
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check339 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0341 = icmp ult ptr %scevgep337, %scevgep334
  %bound1342 = icmp ult ptr %scevgep335, %scevgep336
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %scevgep337, %scevgep332
  %bound1345 = icmp ult ptr %scevgep333, %scevgep336
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %scevgep337, %scevgep330
  %bound1349 = icmp ult ptr %scevgep331, %scevgep336
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  %bound0352 = icmp ult ptr %scevgep337, %scevgep329
  %bound1353 = icmp ult ptr %i.q, %scevgep336
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  %n.vec357 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n380 = icmp eq i64 %wide.trip.count.i81, %n.vec357
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check263 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0265 = icmp ult ptr %scevgep261, %scevgep258
  %bound1266 = icmp ult ptr %scevgep259, %scevgep260
  %found.conflict267 = and i1 %bound0265, %bound1266
  %bound0268 = icmp ult ptr %scevgep261, %scevgep256
  %bound1269 = icmp ult ptr %scevgep257, %scevgep260
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %found.conflict267, %found.conflict270
  %bound0272 = icmp ult ptr %scevgep261, %scevgep255
  %bound1273 = icmp ult ptr %i.q, %scevgep260
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %n.vec277 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n302 = icmp eq i64 %wide.trip.count.i81, %n.vec277
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep221, %scevgep218
  %bound1 = icmp ult ptr %scevgep219, %scevgep220
  %found.conflict = and i1 %bound0, %bound1
  %bound0222 = icmp ult ptr %scevgep221, %scevgep
  %bound1223 = icmp ult ptr %i.q, %scevgep220
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx = or i1 %found.conflict, %found.conflict224
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %i.di = phi i32 [ %.pre200, %.lr.ph ], [ %i.fb, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 4 uses
  %i.dj = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dj)
  %i.dk = mul nuw i64 %indvars.iv, %i.av          ; 3 uses
  %i.dl = getelementptr i8, ptr %i.q, i64 %i.dk   ; 33 uses
  %i.dm = icmp slt i32 %i.di, %i.r
  br i1 %i.dm, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %5 = icmp sgt i32 %i.di, -1
  %6 = zext nneg i32 %i.di to i64                 ; 12 uses
  call void @llvm.assume(i1 %5)
  %i.dn = xor i32 %i.di, -1
  %i.do = add nsw i32 %i.r, %i.dn                 ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %min.iters.check391 = icmp ult i32 %i.do, 7
  br i1 %min.iters.check391, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck392

vector.memcheck392:                               ; preds = %iter.check
  %i.dr = getelementptr i8, ptr %i.q, i64 %i.dk
  %i.ds = getelementptr i8, ptr %i.dr, i64 %6
  %i.dt = add i64 %i.dk, 1                        ; 2 uses
  %i.du = xor i32 %i.di, -1
  %i.dv = add nsw i32 %i.r, %i.du
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.q, i64 %i.dt
  %i.dy = getelementptr i8, ptr %i.dx, i64 %6
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dw
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dt
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dw
  %bound0393 = icmp ult ptr %i.ds, %i.eb
  %bound1394 = icmp ult ptr %i.dl, %i.dz
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck392
  %min.iters.check396 = icmp ult i32 %i.do, 31
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph397

vector.ph397:                                     ; preds = %vector.main.loop.iter.check
  %i.ec = and i64 %i.dq, 24
  %n.vec398 = and i64 %i.dq, 8589934560           ; 4 uses
  %i.ed = add nuw nsw i64 %n.vec398, %6           ; 2 uses
  %broadcast.splatinsert399 = insertelement <32 x i64> poison, i64 %6, i64 0
  %broadcast.splat400 = shufflevector <32 x i64> %broadcast.splatinsert399, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat400, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dl, i64 %6
  br label %vector.body408

vector.body408:                                   ; preds = %vector.ph397, %vector.body408
  %index409 = phi i64 [ 0, %vector.ph397 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %vec.ind410 = phi <32 x i64> [ %induction, %vector.ph397 ], [ %vec.ind.next415, %vector.body408 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index409 ; 2 uses
  %wide.load412 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ee = sub nuw nsw <32 x i64> %vec.ind410, %broadcast.splat400
  %i.ef = extractelement <32 x i64> %i.ee, i64 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ef
  %wide.load413 = load <32 x i8>, ptr %i.eg, align 1, !tbaa !107, !alias.scope !153
  %i.eh = add <32 x i8> %wide.load413, %wide.load412
  store <32 x i8> %i.eh, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next414 = add nuw i64 %index409, 32      ; 2 uses
  %vec.ind.next415 = add nuw nsw <32 x i64> %vec.ind410, splat (i64 32)
  %i.ei = icmp eq i64 %index.next414, %n.vec398
  br i1 %i.ei, label %middle.block417, label %vector.body408, !llvm.loop !119

middle.block417:                                  ; preds = %vector.body408
  %cmp.n418 = icmp eq i64 %i.dq, %n.vec398
  br i1 %cmp.n418, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block417
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec398, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val419 = phi i64 [ %i.ed, %vec.epilog.iter.check ], [ %6, %vector.main.loop.iter.check ]
  %n.vec420 = and i64 %i.dq, 8589934584           ; 3 uses
  %i.ej = add nuw nsw i64 %n.vec420, %6
  %invariant.gep448 = getelementptr i8, ptr %i.dl, i64 %6
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index433 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next438, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = phi i64 [ %bc.resume.val419, %vec.epilog.ph ], [ %i.eo, %vec.epilog.vector.body ] ; 2 uses
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %index433 ; 2 uses
  %wide.load436 = load <8 x i8>, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.el = sub nuw nsw i64 %i.ek, %6
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.el
  %wide.load437 = load <8 x i8>, ptr %i.em, align 1, !tbaa !107, !alias.scope !153
  %i.en = add <8 x i8> %wide.load437, %wide.load436
  store <8 x i8> %i.en, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.eo = add nuw nsw i64 %i.ek, 8
  %i.ep = icmp eq i64 %index.next438, %n.vec420
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n441 = icmp eq i64 %i.dq, %n.vec420
  br i1 %cmp.n441, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck392, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %6, %iter.check ], [ %6, %vector.memcheck392 ], [ %i.ed, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.eq = trunc nuw i64 %indvars.iv.i to i32
  %i.er = icmp sgt i32 %i.r, %i.eq
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !107
  %i.eu = sub nuw nsw i64 %indvars.iv.i, %6       ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.av
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !107
  %i.ey = add i8 %i.ex, %i.et
  store i8 %i.ey, ptr %i.es, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ez = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fa = icmp sgt i32 %i.r, %i.ez
  br i1 %i.fa, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block417
  %.pre199 = load i32, ptr %i.au, align 8, !tbaa !27
  br label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, %bb.e
  %i.fb = phi i32 [ %.pre199, %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit ], [ %i.di, %bb.e ]
  %i.fc = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.fd = icmp samesign ult i64 %i.fc, %i.be
  call void @llvm.assume(i1 %i.fd)
  %i.fe = mul nuw nsw i64 %i.fc, %i.bf
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fe ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader443, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep464 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep466 = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = phi i64 [ 0, %vector.ph ], [ %i.gk, %vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fh, align 1, !tbaa !107, !alias.scope !158
  %gep465 = getelementptr i8, ptr %invariant.gep464, i64 %i.fg
  %wide.load231 = load <8 x i8>, ptr %gep465, align 1, !tbaa !107, !alias.scope !159
  %i.fi = zext <8 x i8> %wide.load231 to <8 x i16>
  %i.fj = shl nuw <8 x i16> %i.fi, splat (i16 8)
  %i.fk = zext <8 x i8> %wide.load to <8 x i16>
  %i.fl = or disjoint <8 x i16> %i.fj, %i.fk
  %i.fm = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fl) ; 2 uses
  %i.fn = zext <8 x i16> %i.fm to <8 x i32>       ; 2 uses
  %i.fo = lshr <8 x i32> %i.fn, splat (i32 10)
  %i.fp = and <8 x i32> %i.fo, splat (i32 31)     ; 3 uses
  %i.fq = and <8 x i32> %i.fn, splat (i32 1023)   ; 2 uses
  %i.fr = shl nuw nsw <8 x i32> %i.fq, splat (i32 13) ; 3 uses
  %i.fs = icmp eq <8 x i32> %i.fp, splat (i32 31) ; 2 uses
  %i.ft = add nuw nsw <8 x i32> %i.fp, splat (i32 112)
  %i.fu = icmp eq <8 x i32> %i.fp, zeroinitializer ; 3 uses
  %i.fv = icmp eq <8 x i32> %i.fq, zeroinitializer
  %i.fw = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fr, i1 true) ; 2 uses
  %i.fx = sub nuw nsw <8 x i32> splat (i32 121), %i.fw
  %i.fy = xor <8 x i32> %i.fw, splat (i32 31)
  %i.fz = sub nuw nsw <8 x i32> splat (i32 23), %i.fy
  %i.ga = shl <8 x i32> %i.fr, %i.fz
  %i.gb = and <8 x i32> %i.ga, splat (i32 8380416)
  %i.gc = xor <8 x i1> %i.fu, %i.fs
  %i.gd = select <8 x i1> %i.fu, <8 x i1> %i.fv, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.gd, <8 x i32> zeroinitializer, <8 x i32> %i.fx
  %predphi232 = select <8 x i1> %i.gc, <8 x i32> %predphi, <8 x i32> %i.ft
  %predphi234 = select <8 x i1> %i.gd, <8 x i32> zeroinitializer, <8 x i32> %i.gb
  %predphi235 = select <8 x i1> %i.fu, <8 x i32> %predphi234, <8 x i32> %i.fr
  %i.ge = sext <8 x i16> %i.fm to <8 x i32>
  %i.gf = and <8 x i32> %i.ge, splat (i32 -2147483648)
  %i.gg = shl nuw nsw <8 x i32> %predphi232, splat (i32 23)
  %i.gh = select <8 x i1> %i.fs, <8 x i32> splat (i32 2139095040), <8 x i32> %i.gg
  %i.gi = or disjoint <8 x i32> %i.gh, %i.gf
  %i.gj = or disjoint <8 x i32> %i.gi, %predphi235
  %gep467 = getelementptr inbounds [4 x i8], ptr %invariant.gep466, i64 %i.fg
  store <8 x i32> %i.gj, ptr %gep467, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gk = add nuw nsw i64 %i.fg, 8
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader443

.lr.ph.i52.preheader443:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader443, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader443 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i53
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !107
  %i.go = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gp = icmp samesign ult i64 %i.go, %i.av
  call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gr to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gn to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gs = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gt = zext i16 %i.gs to i32                   ; 2 uses
  %i.gu = lshr i32 %i.gt, 10
  %i.gv = and i32 %i.gu, 31                       ; 3 uses
  %i.gw = and i32 %i.gt, 1023                     ; 2 uses
  %i.gx = shl nuw nsw i32 %i.gw, 13               ; 4 uses
  %i.gy = icmp eq i32 %i.gv, 31
  br i1 %i.gy, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gz = add nuw nsw i32 %i.gv, 112
  %i.ha = icmp eq i32 %i.gv, 0
  br i1 %i.ha, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.hb = icmp eq i32 %i.gw, 0
  br i1 %i.hb, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gx, i1 true) ; 2 uses
  %i.hc = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.hd = shl i32 %i.gx, %.lr.ph.tripcount.i.i
  %i.he = and i32 %i.hd, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gz, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.hc, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gx, %bb.g ], [ %i.gx, %.lr.ph.i52 ], [ %i.he, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gs to i32
  %i.hf = and i32 %.signext.i, -2147483648
  %i.hg = shl nuw nsw i32 %.116.i.i, 23
  %i.hh = or disjoint i32 %i.hg, %i.hf
  %i.hi = or i32 %i.hh, %.1.i.i
  %i.hj = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hk = icmp samesign ule i64 %i.hj, %i.bb
  call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hj
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge468 = select i1 %min.iters.check263, i1 true, i1 %conflict.rdx275
  br i1 %brmerge468, label %.lr.ph.i60.preheader444, label %vector.ph276

vector.ph276:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep458 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep460 = getelementptr i8, ptr %i.dl, i64 %i.bc
  %invariant.gep462 = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.ba
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph276
  %index289 = phi i64 [ 0, %vector.ph276 ], [ %index.next299, %vector.body288 ] ; 2 uses
  %i.hm = phi i64 [ 0, %vector.ph276 ], [ %i.is, %vector.body288 ] ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index289
  %wide.load291 = load <8 x i8>, ptr %i.hn, align 1, !tbaa !107, !alias.scope !164
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.hm
  %wide.load292 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !165
  %gep461 = getelementptr i8, ptr %invariant.gep460, i64 %i.hm
  %wide.load293 = load <8 x i8>, ptr %gep461, align 1, !tbaa !107, !alias.scope !166
  %i.ho = zext <8 x i8> %wide.load293 to <8 x i32>
  %i.hp = shl nuw nsw <8 x i32> %i.ho, splat (i32 16)
  %i.hq = zext <8 x i8> %wide.load292 to <8 x i32>
  %i.hr = shl nuw nsw <8 x i32> %i.hq, splat (i32 8)
  %i.hs = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.ht = or disjoint <8 x i32> %i.hr, %i.hs
  %i.hu = or disjoint <8 x i32> %i.ht, %i.hp
  %i.hv = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hu) ; 3 uses
  %i.hw = lshr exact <8 x i32> %i.hv, splat (i32 8)
  %i.hx = lshr <8 x i32> %i.hv, splat (i32 24)
  %i.hy = and <8 x i32> %i.hx, splat (i32 127)    ; 3 uses
  %i.hz = and <8 x i32> %i.hw, splat (i32 65535)  ; 2 uses
  %i.ia = shl nuw nsw <8 x i32> %i.hz, splat (i32 7) ; 3 uses
  %i.ib = icmp eq <8 x i32> %i.hy, splat (i32 127) ; 2 uses
  %i.ic = add nuw nsw <8 x i32> %i.hy, splat (i32 64)
  %i.id = icmp eq <8 x i32> %i.hy, zeroinitializer ; 3 uses
  %i.ie = icmp eq <8 x i32> %i.hz, zeroinitializer
  %i.if = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ia, i1 true) ; 2 uses
  %i.ig = sub nuw nsw <8 x i32> splat (i32 73), %i.if
  %i.ih = xor <8 x i32> %i.if, splat (i32 31)
  %i.ii = sub nuw nsw <8 x i32> splat (i32 23), %i.ih
  %i.ij = shl <8 x i32> %i.ia, %i.ii
  %i.ik = and <8 x i32> %i.ij, splat (i32 8388480)
  %i.il = xor <8 x i1> %i.id, %i.ib
  %i.im = select <8 x i1> %i.id, <8 x i1> %i.ie, <8 x i1> zeroinitializer ; 2 uses
  %predphi294 = select <8 x i1> %i.im, <8 x i32> zeroinitializer, <8 x i32> %i.ig
  %predphi295 = select <8 x i1> %i.il, <8 x i32> %predphi294, <8 x i32> %i.ic
  %predphi297 = select <8 x i1> %i.im, <8 x i32> zeroinitializer, <8 x i32> %i.ik
end_hunk_0
