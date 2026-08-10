inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %0, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = call i32 @uncompress(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef %i.v, i64 noundef %i.z) ; 3 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call ptr @zError(i32 noundef %i.aa)
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_, i32 noundef %i.aa, ptr noundef %i.ab) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !117, !noalias !118 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 592
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28, !noalias !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 608
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !121, !noalias !118
  %i.ak = mul nsw i32 %i.aj, %i.ah                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !122, !noalias !118
  %i.an = ashr i32 %i.am, 2                       ; 3 uses
  %i.ao = icmp ne i32 %i.an, 0
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp sge i32 %i.an, %i.ak
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 612
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !123, !noalias !118
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = zext nneg i32 %i.q to i64               ; 18 uses
  %i.av = and i64 %4, 2147483648
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = icmp ne i32 %.sroa.044.0.extract.trunc, 0
  %i.ay = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.az = ashr exact i64 %sext, 32                ; 15 uses
  %i.ba = and i64 %4, 2147483647                  ; 14 uses
  %i.bb = zext nneg i32 %i.ak to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bc = ashr exact i64 %sext, 31                ; 10 uses
  %i.bd = mul nsw i64 %i.az, 3                    ; 6 uses
  %i.be = zext nneg i32 %i.as to i64
  %i.bf = zext i32 %i.an to i64                   ; 7 uses
  %i.bg = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bh = add i64 %i.bg, %i.ba
  %i.bi = shl i64 %i.bh, 2
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.bi ; 2 uses
  %i.bj = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nsw i64 %i.bk, -4
  %i.bm = mul i64 %i.bl, %i.bf
  %i.bn = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %i.af, i64 %i.bo
  %scevgep202 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %scevgep203 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bq = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.br = mul nsw i64 %i.bq, %i.au                ; 2 uses
  %i.bs = getelementptr i8, ptr %i.p, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %scevgep204 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count.i81
  %i.bu = getelementptr i8, ptr %i.p, i64 %i.br
  %scevgep205 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bw = add i64 %i.bv, %i.ba
  %i.bx = shl i64 %i.bw, 2
  %scevgep221 = getelementptr i8, ptr %i.af, i64 %i.bx ; 3 uses
  %i.by = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, -4
  %i.cb = mul i64 %i.ca, %i.bf
  %i.cc = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.af, i64 %i.cd
  %scevgep222 = getelementptr i8, ptr %i.ce, i64 %i.cb ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.cf = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cg = mul nsw i64 %i.cf, %i.au                ; 3 uses
  %i.ch = getelementptr i8, ptr %i.p, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bc
  %scevgep224 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count.i81
  %scevgep225 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.cj = getelementptr i8, ptr %i.p, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.az
  %scevgep226 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count.i81
  %i.cl = getelementptr i8, ptr %i.p, i64 %i.cg
  %scevgep227 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cn = add i64 %i.cm, %i.ba
  %i.co = shl i64 %i.cn, 2
  %scevgep270 = getelementptr i8, ptr %i.af, i64 %i.co ; 4 uses
  %i.cp = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.cq = shl nuw nsw i64 %i.cp, 2
  %i.cr = add nsw i64 %i.cq, -4
  %i.cs = mul i64 %i.cr, %i.bf
  %i.ct = add nuw nsw i64 %wide.trip.count.i81, %i.ba
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = getelementptr i8, ptr %i.af, i64 %i.cu
  %scevgep271 = getelementptr i8, ptr %i.cv, i64 %i.cs ; 4 uses
  %scevgep272 = getelementptr i8, ptr %i.p, i64 %i.bd
  %i.cw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cx = mul nsw i64 %i.cw, %i.au                ; 4 uses
  %i.cy = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.bd
  %scevgep273 = getelementptr i8, ptr %i.cz, i64 %wide.trip.count.i81
  %scevgep274 = getelementptr i8, ptr %i.p, i64 %i.bc
  %i.da = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.db = getelementptr i8, ptr %i.da, i64 %i.bc
  %scevgep275 = getelementptr i8, ptr %i.db, i64 %wide.trip.count.i81
  %scevgep276 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.dc = getelementptr i8, ptr %i.p, i64 %i.cx
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.az
  %scevgep277 = getelementptr i8, ptr %i.dd, i64 %wide.trip.count.i81
  %i.de = getelementptr i8, ptr %i.p, i64 %i.cx
  %scevgep278 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check295 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0279 = icmp ult ptr %scevgep270, %scevgep273
  %bound1280 = icmp ult ptr %scevgep272, %scevgep271
  %found.conflict281 = and i1 %bound0279, %bound1280
  %bound0282 = icmp ult ptr %scevgep270, %scevgep275
  %bound1283 = icmp ult ptr %scevgep274, %scevgep271
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %found.conflict281, %found.conflict284
  %bound0286 = icmp ult ptr %scevgep270, %scevgep277
  %bound1287 = icmp ult ptr %scevgep276, %scevgep271
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %scevgep270, %scevgep278
  %bound1291 = icmp ult ptr %i.p, %scevgep271
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %n.vec297 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n320 = icmp eq i64 %wide.trip.count.i81, %n.vec297
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check240 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0228 = icmp ult ptr %scevgep221, %scevgep224
  %bound1229 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult ptr %scevgep221, %scevgep226
  %bound1232 = icmp ult ptr %scevgep225, %scevgep222
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep221, %scevgep227
  %bound1236 = icmp ult ptr %i.p, %scevgep222
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %n.vec242 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n267 = icmp eq i64 %wide.trip.count.i81, %n.vec242
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep204
  %bound1 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp ult ptr %scevgep, %scevgep205
  %bound1207 = icmp ult ptr %i.p, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.df = mul nuw i64 %indvars.iv, %i.au          ; 2 uses
  %scevgep323 = getelementptr i8, ptr %i.p, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %i.p, i64 %i.df
  %scevgep325 = getelementptr i8, ptr %i.dg, i64 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dh)
  %i.di = mul nuw nsw i64 %indvars.iv, %i.au
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.di ; 32 uses
  %i.dk = load i32, ptr %i.at, align 8, !tbaa !27 ; 5 uses
  %i.dl = icmp slt i32 %i.dk, %i.q
  br i1 %i.dl, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dm = zext nneg i32 %i.dk to i64              ; 12 uses
  %i.dn = icmp sgt i32 %i.dk, -1
  call void @llvm.assume(i1 %i.dn)
  %i.do = xor i32 %i.dk, -1
  %i.dp = add nsw i32 %i.q, %i.do                 ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check332 = icmp ult i32 %i.dp, 7
  br i1 %min.iters.check332, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck322

vector.memcheck322:                               ; preds = %iter.check
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.dm
  %i.ds = xor i32 %i.dk, -1
  %i.dt = add nsw i32 %i.q, %i.ds
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr i8, ptr %scevgep325, i64 %i.dm
  %scevgep326 = getelementptr i8, ptr %i.dv, i64 %i.du
  %scevgep327 = getelementptr i8, ptr %scevgep325, i64 %i.du
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %scevgep323, %scevgep326
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck322
  %min.iters.check333 = icmp ult i32 %i.dp, 31
  br i1 %min.iters.check333, label %vec.epilog.ph, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %i.dr, 24
  %n.vec335 = and i64 %i.dr, 8589934560           ; 4 uses
  %i.dx = add nuw nsw i64 %n.vec335, %i.dm        ; 2 uses
  %broadcast.splatinsert336 = insertelement <32 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat337 = shufflevector <32 x i64> %broadcast.splatinsert336, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dj, i64 %i.dm
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph334
  %index346 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %vec.ind347 = phi <32 x i64> [ %induction, %vector.ph334 ], [ %vec.ind.next352, %vector.body345 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index346 ; 2 uses
  %wide.load349 = load <32 x i8>, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.dy = sub nuw nsw <32 x i64> %vec.ind347, %broadcast.splat337
  %i.dz = extractelement <32 x i64> %i.dy, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dz
  %wide.load350 = load <32 x i8>, ptr %i.ea, align 1, !tbaa !112, !alias.scope !127
  %i.eb = add <32 x i8> %wide.load350, %wide.load349
  store <32 x i8> %i.eb, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next351 = add nuw i64 %index346, 32      ; 2 uses
  %vec.ind.next352 = add nuw nsw <32 x i64> %vec.ind347, splat (i64 32)
  %i.ec = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.ec, label %middle.block354, label %vector.body345, !llvm.loop !129

middle.block354:                                  ; preds = %vector.body345
  %cmp.n355 = icmp eq i64 %i.dr, %n.vec335
  br i1 %cmp.n355, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block354
  %min.epilog.iters.check = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !133

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec335, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val356 = phi i64 [ %i.dx, %vec.epilog.iter.check ], [ %i.dm, %vector.main.loop.iter.check ]
  %n.vec357 = and i64 %i.dr, 8589934584           ; 3 uses
  %i.ed = add nuw nsw i64 %n.vec357, %i.dm
  %invariant.gep385 = getelementptr i8, ptr %i.dj, i64 %i.dm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next375, %vec.epilog.vector.body ] ; 2 uses
  %i.ee = phi i64 [ %bc.resume.val356, %vec.epilog.ph ], [ %i.eh, %vec.epilog.vector.body ] ; 2 uses
  %gep386 = getelementptr i8, ptr %invariant.gep385, i64 %index370 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.ef = sub nuw nsw i64 %i.ee, %i.dm
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ef
  %wide.load374 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !112, !alias.scope !127
  %5 = add <8 x i8> %wide.load374, %wide.load373
  store <8 x i8> %5, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.eh = add nuw nsw i64 %i.ee, 8
  %i.ei = icmp eq i64 %index.next375, %n.vec357
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %i.dr, %n.vec357
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck322, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck322 ], [ %i.dx, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ej = trunc nuw i64 %indvars.iv.i to i32
  %i.ek = icmp sgt i32 %i.q, %i.ej
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !112
  %i.en = sub nuw nsw i64 %indvars.iv.i, %i.dm    ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, %i.au
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !112
  %i.er = add i8 %i.eq, %i.em
  store i8 %i.er, ptr %i.el, align 1, !tbaa !112
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next.i to i32
  %i.et = icmp sgt i32 %i.q, %i.es
  br i1 %i.et, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !135

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block354, %vec.epilog.middle.block, %bb.e
  %i.eu = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.be
  call void @llvm.assume(i1 %i.ev)
  %i.ew = mul nuw nsw i64 %i.eu, %i.bf
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ew ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader380, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep401 = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep403 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = phi i64 [ 0, %vector.ph ], [ %i.gc, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ez, align 1, !tbaa !112, !alias.scope !136
  %gep402 = getelementptr i8, ptr %invariant.gep401, i64 %i.ey
  %wide.load215 = load <8 x i8>, ptr %gep402, align 1, !tbaa !112, !alias.scope !139
  %i.fa = zext <8 x i8> %wide.load215 to <8 x i16>
  %i.fb = shl nuw <8 x i16> %i.fa, splat (i16 8)
  %i.fc = zext <8 x i8> %wide.load to <8 x i16>
  %i.fd = or disjoint <8 x i16> %i.fb, %i.fc
  %i.fe = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fd) ; 2 uses
  %i.ff = zext <8 x i16> %i.fe to <8 x i32>       ; 2 uses
  %i.fg = lshr <8 x i32> %i.ff, splat (i32 10)
  %i.fh = and <8 x i32> %i.fg, splat (i32 31)     ; 3 uses
  %i.fi = and <8 x i32> %i.ff, splat (i32 1023)   ; 2 uses
  %i.fj = shl nuw nsw <8 x i32> %i.fi, splat (i32 13) ; 3 uses
  %i.fk = icmp eq <8 x i32> %i.fh, splat (i32 31) ; 2 uses
  %i.fl = add nuw nsw <8 x i32> %i.fh, splat (i32 112)
  %i.fm = icmp eq <8 x i32> %i.fh, zeroinitializer ; 3 uses
  %i.fn = icmp eq <8 x i32> %i.fi, zeroinitializer
  %i.fo = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fj, i1 true) ; 2 uses
  %i.fp = sub nuw nsw <8 x i32> splat (i32 121), %i.fo
  %i.fq = xor <8 x i32> %i.fo, splat (i32 31)
  %i.fr = sub nuw nsw <8 x i32> splat (i32 23), %i.fq
  %i.fs = shl <8 x i32> %i.fj, %i.fr
  %i.ft = and <8 x i32> %i.fs, splat (i32 8380416)
  %i.fu = xor <8 x i1> %i.fm, %i.fk
  %i.fv = select <8 x i1> %i.fm, <8 x i1> %i.fn, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.fv, <8 x i32> zeroinitializer, <8 x i32> %i.fp
  %predphi216 = select <8 x i1> %i.fu, <8 x i32> %predphi, <8 x i32> %i.fl
  %predphi218 = select <8 x i1> %i.fv, <8 x i32> zeroinitializer, <8 x i32> %i.ft
  %predphi219 = select <8 x i1> %i.fm, <8 x i32> %predphi218, <8 x i32> %i.fj
  %i.fw = sext <8 x i16> %i.fe to <8 x i32>
  %i.fx = and <8 x i32> %i.fw, splat (i32 -2147483648)
  %i.fy = shl nuw nsw <8 x i32> %predphi216, splat (i32 23)
  %i.fz = select <8 x i1> %i.fk, <8 x i32> splat (i32 2139095040), <8 x i32> %i.fy
  %i.ga = or disjoint <8 x i32> %i.fz, %i.fx
  %i.gb = or disjoint <8 x i32> %i.ga, %predphi219
  %gep404 = getelementptr inbounds [4 x i8], ptr %invariant.gep403, i64 %i.ey
  store <8 x i32> %i.gb, ptr %gep404, align 4, !tbaa !141, !alias.scope !143, !noalias !145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = add nuw nsw i64 %i.ey, 8
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader380

.lr.ph.i52.preheader380:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader380, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader380 ] ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.i53
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !112
  %i.gg = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gh = icmp samesign ult i64 %i.gg, %i.au
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.gg
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !112
  %.sroa.4.0.insert.ext.i = zext i8 %i.gj to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gf to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gk = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = lshr i32 %i.gl, 10
  %i.gn = and i32 %i.gm, 31                       ; 3 uses
  %i.go = and i32 %i.gl, 1023                     ; 2 uses
  %i.gp = shl nuw nsw i32 %i.go, 13               ; 4 uses
  %i.gq = icmp eq i32 %i.gn, 31
  br i1 %i.gq, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gr = add nuw nsw i32 %i.gn, 112
  %i.gs = icmp eq i32 %i.gn, 0
  br i1 %i.gs, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true) ; 2 uses
  %i.gu = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.gv = shl i32 %i.gp, %.lr.ph.tripcount.i.i
  %i.gw = and i32 %i.gv, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gr, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.gu, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gp, %bb.g ], [ %i.gp, %.lr.ph.i52 ], [ %i.gw, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gk to i32
  %i.gx = and i32 %.signext.i, -2147483648
  %i.gy = shl nuw nsw i32 %.116.i.i, 23
  %i.gz = or disjoint i32 %i.gy, %i.gx
  %i.ha = or i32 %i.gz, %.1.i.i
  %i.hb = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hc = icmp samesign ule i64 %i.hb, %i.bb
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.hb
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !141
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !147

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge405 = select i1 %min.iters.check240, i1 true, i1 %conflict.rdx238
  br i1 %brmerge405, label %.lr.ph.i60.preheader381, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep395 = getelementptr i8, ptr %i.dj, i64 %i.az
  %invariant.gep397 = getelementptr i8, ptr %i.dj, i64 %i.bc
  %invariant.gep399 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ba
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph241
  %index254 = phi i64 [ 0, %vector.ph241 ], [ %index.next264, %vector.body253 ] ; 2 uses
  %i.he = phi i64 [ 0, %vector.ph241 ], [ %i.ik, %vector.body253 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index254
  %wide.load256 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !112, !alias.scope !148
  %gep396 = getelementptr i8, ptr %invariant.gep395, i64 %i.he
  %wide.load257 = load <8 x i8>, ptr %gep396, align 1, !tbaa !112, !alias.scope !151
  %gep398 = getelementptr i8, ptr %invariant.gep397, i64 %i.he
  %wide.load258 = load <8 x i8>, ptr %gep398, align 1, !tbaa !112, !alias.scope !153
  %i.hg = zext <8 x i8> %wide.load258 to <8 x i32>
  %i.hh = shl nuw nsw <8 x i32> %i.hg, splat (i32 16)
  %i.hi = zext <8 x i8> %wide.load257 to <8 x i32>
  %i.hj = shl nuw nsw <8 x i32> %i.hi, splat (i32 8)
  %i.hk = zext <8 x i8> %wide.load256 to <8 x i32>
  %i.hl = or disjoint <8 x i32> %i.hj, %i.hk
  %i.hm = or disjoint <8 x i32> %i.hl, %i.hh
  %i.hn = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hm) ; 3 uses
  %i.ho = lshr exact <8 x i32> %i.hn, splat (i32 8)
  %i.hp = lshr <8 x i32> %i.hn, splat (i32 24)
  %i.hq = and <8 x i32> %i.hp, splat (i32 127)    ; 3 uses
  %i.hr = and <8 x i32> %i.ho, splat (i32 65535)  ; 2 uses
  %i.hs = shl nuw nsw <8 x i32> %i.hr, splat (i32 7) ; 3 uses
  %i.ht = icmp eq <8 x i32> %i.hq, splat (i32 127) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8rawspeed17RawspeedExceptionC2EPKc:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.2, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.ctlz.v8i32(<8 x i32>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { cold noreturn }
attributes #14 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !16, i64 8}
!21 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !13, i64 0}
!22 = !{!23, !8, i64 36}
!23 = !{!"_ZTSN8rawspeed19DeflateDecompressorE", !24, i64 0, !25, i64 16, !8, i64 32, !8, i64 36}
!24 = !{!"_ZTSN8rawspeed6BufferE", !12, i64 0, !8, i64 8}
!25 = !{!"_ZTSN8rawspeed8RawImageE", !26, i64 0}
!26 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !20, i64 0}
!27 = !{!23, !8, i64 32}
!28 = !{!29, !8, i64 592}
!29 = !{!"_ZTSN8rawspeed12RawImageDataE", !30, i64 8, !37, i64 40, !8, i64 48, !8, i64 52, !38, i64 56, !39, i64 64, !8, i64 96, !44, i64 100, !45, i64 120, !50, i64 160, !55, i64 168, !60, i64 192, !65, i64 216, !8, i64 240, !38, i64 244, !69, i64 248, !31, i64 552, !84, i64 553, !85, i64 560, !8, i64 592, !8, i64 596, !37, i64 600, !37, i64 608, !91, i64 616}
!30 = !{!"_ZTSN8rawspeed8ErrorLogE", !31, i64 0, !32, i64 8}
!31 = !{!"_ZTSN8rawspeed5MutexE"}
!32 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!37 = !{!"_ZTSN8rawspeed8iPoint2DE", !8, i64 0, !8, i64 4}
!38 = !{!"bool", !9, i64 0}
!39 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !40, i64 0, !37, i64 24}
!40 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!44 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!45 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !46, i64 0}
!46 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !47, i64 0}
!47 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !48, i64 0}
!48 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !49, i64 0}
!49 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !38, i64 32}
!50 = !{!"_ZTSN8rawspeed8OptionalIiEE", !51, i64 0}
!51 = !{!"_ZTSSt8optionalIiE", !52, i64 0}
!52 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !53, i64 0}
!53 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !54, i64 0}
!54 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !38, i64 4}
!55 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !13, i64 0}
!60 = !{!"_ZTSSt6vectorIjSaIjEE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 int", !13, i64 0}
!65 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!69 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !70, i64 0, !71, i64 8, !76, i64 32, !8, i64 56, !37, i64 60, !81, i64 72, !81, i64 104, !81, i64 136, !81, i64 168, !81, i64 200, !81, i64 232, !81, i64 264, !8, i64 296}
!70 = !{!"double", !9, i64 0}
!71 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !72, i64 0}
!72 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !73, i64 0}
!73 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !74, i64 0}
!74 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !75, i64 0}
!75 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !38, i64 16}
!76 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!80 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !13, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !83, i64 8, !9, i64 16}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!83 = !{!"long", !9, i64 0}
!84 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!85 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !86, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !87, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !88, i64 0, !90, i64 8}
!88 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !89, i64 0}
!89 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!90 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!91 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !92, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !94, i64 0}
!94 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !95, i64 0}
!95 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !96, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !97, i64 0}
!97 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !13, i64 0}
!98 = !{!99, !8, i64 8}
!99 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!100 = !{!99, !8, i64 12}
!101 = !{!102, !102, i64 0}
!102 = !{!"vtable pointer", !10, i64 0}
!103 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !105, file: !104, line: 139, type: !107, scopeLine: 139, containingType: !105, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!104 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!105 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !106, file: !104, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!106 = !DINamespace(name: "std", scope: null)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!110 = distinct !{null, null, null}
!111 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !105, file: !104, line: 143, type: !107, scopeLine: 143, containingType: !105, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!112 = !{!9, !9, i64 0}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!83, !83, i64 0}
!115 = !{!24, !12, i64 0}
!116 = !{!24, !8, i64 8}
!117 = !{!90, !12, i64 0}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!120 = distinct !{!120, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!121 = !{!29, !8, i64 608}
!122 = !{!29, !8, i64 48}
!123 = !{!29, !8, i64 612}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !130, !131, !132}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !{!"llvm.loop.isvectorized", i32 1}
!132 = !{!"llvm.loop.unroll.runtime.disable"}
!133 = !{!"branch_weights", i32 8, i32 24}
!134 = distinct !{!134, !130, !131, !132}
!135 = distinct !{!135, !130, !131}
!136 = !{!137}
!137 = distinct !{!137, !138}
!138 = distinct !{!138, !"LVerDomain"}
!139 = !{!140}
!140 = distinct !{!140, !138}
!141 = !{!142, !142, i64 0}
!142 = !{!"float", !9, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !138}
!145 = !{!140, !137}
!146 = distinct !{!146, !130, !131, !132}
!147 = distinct !{!147, !130, !131}
!148 = !{!149}
!149 = distinct !{!149, !150}
!150 = distinct !{!150, !"LVerDomain"}
!151 = !{!152}
!152 = distinct !{!152, !150}
!153 = !{!154}
!154 = distinct !{!154, !150}
!155 = !{!156}
!156 = distinct !{!156, !150}
!157 = !{!154, !152, !149}
!158 = distinct !{!158, !130, !131, !132}
!159 = distinct !{!159, !130, !131}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = !{!166}
!166 = distinct !{!166, !162}
!167 = !{!168}
!168 = distinct !{!168, !162}
!169 = !{!170}
!170 = distinct !{!170, !162}
!171 = !{!168, !166, !164, !161}
!172 = distinct !{!172, !130, !131, !132}
!173 = distinct !{!173, !130, !131}
!174 = distinct !{!174, !130}
!175 = distinct !{null}
end_hunk_1
