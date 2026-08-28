Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
  %i.r = mul nsw i32 %i.d, %.sroa.0156.0.extract.trunc ; 8 uses
  %i.s = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i64 %2, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i32 %i.r, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ne i64 %.sroa.7162.0.extract.shift, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %0, align 8, !tbaa !115
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !116  ; 2 uses
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
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !117, !noalias !118 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !28, !noalias !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !121, !noalias !118
  %i.al = mul nsw i32 %i.ak, %i.ai                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !122, !noalias !118
  %i.ao = ashr i32 %i.an, 2                       ; 3 uses
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sge i32 %i.ao, %i.al
  call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp sgt i32 %.sroa.245.0.extract.trunc, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 612
  %i.at = load i32, ptr %i.as, align 4, !tbaa !123, !noalias !118
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = zext nneg i32 %i.r to i64               ; 18 uses
  %i.aw = and i64 %4, 2147483648
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = icmp ne i32 %.sroa.044.0.extract.trunc, 0
  %i.az = icmp sgt i32 %.sroa.044.0.extract.trunc, 0 ; 3 uses
  %sext = shl i64 %2, 32                          ; 2 uses
  %i.ba = ashr exact i64 %sext, 32                ; 15 uses
  %i.bb = and i64 %4, 2147483647                  ; 14 uses
  %i.bc = zext nneg i32 %i.al to i64              ; 5 uses
  %wide.trip.count.i81 = and i64 %3, 2147483647   ; 22 uses
  %i.bd = ashr exact i64 %sext, 31                ; 10 uses
  %i.be = mul nsw i64 %i.ba, 3                    ; 6 uses
  %i.bf = zext nneg i32 %i.at to i64
  %i.bg = zext i32 %i.ao to i64                   ; 7 uses
  %i.bh = mul nuw i64 %.sroa.243.0.extract.shift, %i.bg
  %i.bi = add i64 %i.bh, %i.bb
  %i.bj = shl i64 %i.bi, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.bj ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nsw i64 %i.bl, -4
  %i.bn = mul i64 %i.bm, %i.bg
  %i.bo = add nuw nsw i64 %wide.trip.count.i81, %i.bb
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = getelementptr i8, ptr %i.ag, i64 %i.bp
  %scevgep203 = getelementptr i8, ptr %i.bq, i64 %i.bn ; 2 uses
  %scevgep204 = getelementptr i8, ptr %i.q, i64 %i.ba
  %i.br = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bs = mul nsw i64 %i.br, %i.av                ; 2 uses
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.ba
  %scevgep205 = getelementptr i8, ptr %i.bu, i64 %wide.trip.count.i81
  %i.bv = getelementptr i8, ptr %i.q, i64 %i.bs
  %scevgep206 = getelementptr i8, ptr %i.bv, i64 %wide.trip.count.i81
  %i.bw = mul nuw i64 %.sroa.243.0.extract.shift, %i.bg
  %i.bx = add i64 %i.bw, %i.bb
  %i.by = shl i64 %i.bx, 2
  %scevgep222 = getelementptr i8, ptr %i.ag, i64 %i.by ; 3 uses
  %i.bz = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, -4
  %i.cc = mul i64 %i.cb, %i.bg
  %i.cd = add nuw nsw i64 %wide.trip.count.i81, %i.bb
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = getelementptr i8, ptr %i.ag, i64 %i.ce
  %scevgep223 = getelementptr i8, ptr %i.cf, i64 %i.cc ; 3 uses
  %scevgep224 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cg = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.ch = mul nsw i64 %i.cg, %i.av                ; 3 uses
  %i.ci = getelementptr i8, ptr %i.q, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bd
  %scevgep225 = getelementptr i8, ptr %i.cj, i64 %wide.trip.count.i81
  %scevgep226 = getelementptr i8, ptr %i.q, i64 %i.ba
  %i.ck = getelementptr i8, ptr %i.q, i64 %i.ch
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.ba
  %scevgep227 = getelementptr i8, ptr %i.cl, i64 %wide.trip.count.i81
  %i.cm = getelementptr i8, ptr %i.q, i64 %i.ch
  %scevgep228 = getelementptr i8, ptr %i.cm, i64 %wide.trip.count.i81
  %i.cn = mul nuw i64 %.sroa.243.0.extract.shift, %i.bg
  %i.co = add i64 %i.cn, %i.bb
  %i.cp = shl i64 %i.co, 2
  %scevgep271 = getelementptr i8, ptr %i.ag, i64 %i.cp ; 4 uses
  %i.cq = add nuw nsw i64 %.sroa.245.0.extract.shift, %.sroa.243.0.extract.shift
  %i.cr = shl nuw nsw i64 %i.cq, 2
  %i.cs = add nsw i64 %i.cr, -4
  %i.ct = mul i64 %i.cs, %i.bg
  %i.cu = add nuw nsw i64 %wide.trip.count.i81, %i.bb
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = getelementptr i8, ptr %i.ag, i64 %i.cv
  %scevgep272 = getelementptr i8, ptr %i.cw, i64 %i.ct ; 4 uses
  %scevgep273 = getelementptr i8, ptr %i.q, i64 %i.be
  %i.cx = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cy = mul nsw i64 %i.cx, %i.av                ; 4 uses
  %i.cz = getelementptr i8, ptr %i.q, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.be
  %scevgep274 = getelementptr i8, ptr %i.da, i64 %wide.trip.count.i81
  %scevgep275 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.db = getelementptr i8, ptr %i.q, i64 %i.cy
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.bd
  %scevgep276 = getelementptr i8, ptr %i.dc, i64 %wide.trip.count.i81
  %scevgep277 = getelementptr i8, ptr %i.q, i64 %i.ba
  %i.dd = getelementptr i8, ptr %i.q, i64 %i.cy
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.ba
  %scevgep278 = getelementptr i8, ptr %i.de, i64 %wide.trip.count.i81
  %i.df = getelementptr i8, ptr %i.q, i64 %i.cy
  %scevgep279 = getelementptr i8, ptr %i.df, i64 %wide.trip.count.i81
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.ay)
  %min.iters.check296 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0280 = icmp ult ptr %scevgep271, %scevgep274
  %bound1281 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict282 = and i1 %bound0280, %bound1281
  %bound0283 = icmp ult ptr %scevgep271, %scevgep276
  %bound1284 = icmp ult ptr %scevgep275, %scevgep272
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %found.conflict282, %found.conflict285
  %bound0287 = icmp ult ptr %scevgep271, %scevgep278
  %bound1288 = icmp ult ptr %scevgep277, %scevgep272
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %scevgep271, %scevgep279
  %bound1292 = icmp ult ptr %i.q, %scevgep272
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  %n.vec298 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n321 = icmp eq i64 %wide.trip.count.i81, %n.vec298
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check241 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0229 = icmp ult ptr %scevgep222, %scevgep225
  %bound1230 = icmp ult ptr %scevgep224, %scevgep223
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0232 = icmp ult ptr %scevgep222, %scevgep227
  %bound1233 = icmp ult ptr %scevgep226, %scevgep223
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep222, %scevgep228
  %bound1237 = icmp ult ptr %i.q, %scevgep223
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %n.vec243 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n268 = icmp eq i64 %wide.trip.count.i81, %n.vec243
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep205
  %bound1 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict = and i1 %bound0, %bound1
  %bound0207 = icmp ult ptr %scevgep, %scevgep206
  %bound1208 = icmp ult ptr %i.q, %scevgep203
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx = or i1 %found.conflict, %found.conflict209
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 5 uses
  %i.dg = mul nuw i64 %indvars.iv, %i.av
  %i.dh = getelementptr i8, ptr %i.q, i64 %i.dg
  %scevgep325 = getelementptr i8, ptr %i.dh, i64 1 ; 2 uses
  %i.di = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.di)
  %i.dj = mul nuw i64 %indvars.iv, %i.av
  %i.dk = getelementptr i8, ptr %i.q, i64 %i.dj   ; 34 uses
  %i.dl = load i32, ptr %i.au, align 8, !tbaa !27 ; 5 uses
  %i.dm = icmp slt i32 %i.dl, %i.r
  br i1 %i.dm, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %5 = zext nneg i32 %i.dl to i64                 ; 12 uses
  %6 = icmp sgt i32 %i.dl, -1
  call void @llvm.assume(i1 %6)
  %i.dn = xor i32 %i.dl, -1
  %i.do = add nsw i32 %i.r, %i.dn                 ; 3 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 5 uses
  %min.iters.check332 = icmp ult i32 %i.do, 7
  br i1 %min.iters.check332, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck323

vector.memcheck323:                               ; preds = %iter.check
  %scevgep324 = getelementptr i8, ptr %i.dk, i64 %5
  %i.dr = xor i32 %i.dl, -1
  %i.ds = add nsw i32 %i.r, %i.dr
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr i8, ptr %scevgep325, i64 %5
  %scevgep326 = getelementptr i8, ptr %i.du, i64 %i.dt
  %scevgep327 = getelementptr i8, ptr %scevgep325, i64 %i.dt
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %i.dk, %scevgep326
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck323
  %min.iters.check333 = icmp ult i32 %i.do, 31
  br i1 %min.iters.check333, label %vec.epilog.ph, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.dq, 24
  %n.vec335 = and i64 %i.dq, 8589934560           ; 4 uses
  %i.dw = add nuw nsw i64 %n.vec335, %5           ; 2 uses
  %broadcast.splatinsert336 = insertelement <32 x i64> poison, i64 %5, i64 0
  %broadcast.splat337 = shufflevector <32 x i64> %broadcast.splatinsert336, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dk, i64 %5
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph334
  %index346 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %vec.ind347 = phi <32 x i64> [ %induction, %vector.ph334 ], [ %vec.ind.next352, %vector.body345 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index346 ; 2 uses
  %wide.load349 = load <32 x i8>, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.dx = sub nuw nsw <32 x i64> %vec.ind347, %broadcast.splat337
  %i.dy = extractelement <32 x i64> %i.dx, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dy
  %wide.load350 = load <32 x i8>, ptr %i.dz, align 1, !tbaa !112, !alias.scope !127
  %i.ea = add <32 x i8> %wide.load350, %wide.load349
  store <32 x i8> %i.ea, ptr %gep, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next351 = add nuw i64 %index346, 32      ; 2 uses
  %vec.ind.next352 = add nuw nsw <32 x i64> %vec.ind347, splat (i64 32)
  %i.eb = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.eb, label %middle.block354, label %vector.body345, !llvm.loop !129

middle.block354:                                  ; preds = %vector.body345
  %cmp.n355 = icmp eq i64 %i.dq, %n.vec335
  br i1 %cmp.n355, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block354
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !133

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec335, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val356 = phi i64 [ %i.dw, %vec.epilog.iter.check ], [ %5, %vector.main.loop.iter.check ]
  %n.vec357 = and i64 %i.dq, 8589934584           ; 3 uses
  %i.ec = add nuw nsw i64 %n.vec357, %5
  %invariant.gep385 = getelementptr i8, ptr %i.dk, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next375, %vec.epilog.vector.body ] ; 2 uses
  %i.ed = phi i64 [ %bc.resume.val356, %vec.epilog.ph ], [ %i.eh, %vec.epilog.vector.body ] ; 2 uses
  %gep386 = getelementptr i8, ptr %invariant.gep385, i64 %index370 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %i.ee = sub nuw nsw i64 %i.ed, %5
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ee
  %wide.load374 = load <8 x i8>, ptr %i.ef, align 1, !tbaa !112, !alias.scope !127
  %i.eg = add <8 x i8> %wide.load374, %wide.load373
  store <8 x i8> %i.eg, ptr %gep386, align 1, !tbaa !112, !alias.scope !124, !noalias !127
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.eh = add nuw nsw i64 %i.ed, 8
  %i.ei = icmp eq i64 %index.next375, %n.vec357
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %i.dq, %n.vec357
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck323, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %5, %iter.check ], [ %5, %vector.memcheck323 ], [ %i.dw, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.ej = trunc nuw i64 %indvars.iv.i to i32
  %i.ek = icmp sgt i32 %i.r, %i.ej
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !112
  %i.en = sub nuw nsw i64 %indvars.iv.i, %5       ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, %i.av
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.en
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !112
  %i.er = add i8 %i.eq, %i.em
  store i8 %i.er, ptr %i.el, align 1, !tbaa !112
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next.i to i32
  %i.et = icmp sgt i32 %i.r, %i.es
  br i1 %i.et, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !135

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block354, %vec.epilog.middle.block, %bb.e
  %i.eu = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.bf
  call void @llvm.assume(i1 %i.ev)
  %i.ew = mul nuw nsw i64 %i.eu, %i.bg
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ew ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.az, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader380, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep401 = getelementptr i8, ptr %i.dk, i64 %i.ba
  %invariant.gep403 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = phi i64 [ 0, %vector.ph ], [ %i.gc, %vector.body ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ez, align 1, !tbaa !112, !alias.scope !136
  %gep402 = getelementptr i8, ptr %invariant.gep401, i64 %i.ey
  %wide.load216 = load <8 x i8>, ptr %gep402, align 1, !tbaa !112, !alias.scope !139
  %i.fa = zext <8 x i8> %wide.load216 to <8 x i16>
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
  %predphi217 = select <8 x i1> %i.fu, <8 x i32> %predphi, <8 x i32> %i.fl
  %predphi219 = select <8 x i1> %i.fv, <8 x i32> zeroinitializer, <8 x i32> %i.ft
  %predphi220 = select <8 x i1> %i.fm, <8 x i32> %predphi219, <8 x i32> %i.fj
  %i.fw = sext <8 x i16> %i.fe to <8 x i32>
  %i.fx = and <8 x i32> %i.fw, splat (i32 -2147483648)
  %i.fy = shl nuw nsw <8 x i32> %predphi217, splat (i32 23)
  %i.fz = select <8 x i1> %i.fk, <8 x i32> splat (i32 2139095040), <8 x i32> %i.fy
  %i.ga = or disjoint <8 x i32> %i.fz, %i.fx
  %i.gb = or disjoint <8 x i32> %i.ga, %predphi220
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
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i53
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !112
  %i.gg = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.gh = icmp samesign ult i64 %i.gg, %i.av
  call void @llvm.assume(i1 %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gg
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
  %i.hb = add nuw nsw i64 %indvars.iv.i53, %i.bb  ; 2 uses
  %i.hc = icmp samesign ule i64 %i.hb, %i.bc
  call void @llvm.assume(i1 %i.hc)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.hb
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !141
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !147

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.az, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge405 = select i1 %min.iters.check241, i1 true, i1 %conflict.rdx239
  br i1 %brmerge405, label %.lr.ph.i60.preheader381, label %vector.ph242

vector.ph242:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep395 = getelementptr i8, ptr %i.dk, i64 %i.ba
  %invariant.gep397 = getelementptr i8, ptr %i.dk, i64 %i.bd
  %invariant.gep399 = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.bb
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph242
  %index255 = phi i64 [ 0, %vector.ph242 ], [ %index.next265, %vector.body254 ] ; 2 uses
  %i.he = phi i64 [ 0, %vector.ph242 ], [ %i.ik, %vector.body254 ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index255
  %wide.load257 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !112, !alias.scope !148
  %gep396 = getelementptr i8, ptr %invariant.gep395, i64 %i.he
  %wide.load258 = load <8 x i8>, ptr %gep396, align 1, !tbaa !112, !alias.scope !151
  %gep398 = getelementptr i8, ptr %invariant.gep397, i64 %i.he
  %wide.load259 = load <8 x i8>, ptr %gep398, align 1, !tbaa !112, !alias.scope !153
  %i.hg = zext <8 x i8> %wide.load259 to <8 x i32>
  %i.hh = shl nuw nsw <8 x i32> %i.hg, splat (i32 16)
  %i.hi = zext <8 x i8> %wide.load258 to <8 x i32>
  %i.hj = shl nuw nsw <8 x i32> %i.hi, splat (i32 8)
  %i.hk = zext <8 x i8> %wide.load257 to <8 x i32>
  %i.hl = or disjoint <8 x i32> %i.hj, %i.hk
  %i.hm = or disjoint <8 x i32> %i.hl, %i.hh
  %i.hn = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hm) ; 3 uses
  %i.ho = lshr exact <8 x i32> %i.hn, splat (i32 8)
  %i.hp = lshr <8 x i32> %i.hn, splat (i32 24)
  %i.hq = and <8 x i32> %i.hp, splat (i32 127)    ; 3 uses
  %i.hr = and <8 x i32> %i.ho, splat (i32 65535)  ; 2 uses
  %i.hs = shl nuw nsw <8 x i32> %i.hr, splat (i32 7) ; 3 uses
  %i.ht = icmp eq <8 x i32> %i.hq, splat (i32 127) ; 2 uses
  %i.hu = add nuw nsw <8 x i32> %i.hq, splat (i32 64)
  %i.hv = icmp eq <8 x i32> %i.hq, zeroinitializer ; 3 uses
  %i.hw = icmp eq <8 x i32> %i.hr, zeroinitializer
  %i.hx = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.hs, i1 true) ; 2 uses
  %i.hy = sub nuw nsw <8 x i32> splat (i32 73), %i.hx
  %i.hz = xor <8 x i32> %i.hx, splat (i32 31)
  %i.ia = sub nuw nsw <8 x i32> splat (i32 23), %i.hz
  %i.ib = shl <8 x i32> %i.hs, %i.ia
  %i.ic = and <8 x i32> %i.ib, splat (i32 8388480)
  %i.id = xor <8 x i1> %i.hv, %i.ht
  %i.ie = select <8 x i1> %i.hv, <8 x i1> %i.hw, <8 x i1> zeroinitializer ; 2 uses
  %predphi260 = select <8 x i1> %i.ie, <8 x i32> zeroinitializer, <8 x i32> %i.hy
  %predphi261 = select <8 x i1> %i.id, <8 x i32> %predphi260, <8 x i32> %i.hu
  %predphi263 = select <8 x i1> %i.ie, <8 x i32> zeroinitializer, <8 x i32> %i.ic
  %predphi264 = select <8 x i1> %i.hv, <8 x i32> %predphi263, <8 x i32> %i.hs
  %i.if = and <8 x i32> %i.hn, splat (i32 -2147483648)
  %i.ig = shl nuw nsw <8 x i32> %predphi261, splat (i32 23)
  %i.ih = select <8 x i1> %i.ht, <8 x i32> splat (i32 2139095040), <8 x i32> %i.ig
  %i.ii = or disjoint <8 x i32> %i.ih, %i.if
end_hunk_0
