Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.a
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
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
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
  %i.bg = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bh = mul nsw i64 %i.bg, %i.av                ; 2 uses
  %i.bi = getelementptr i8, ptr %i.q, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 %wide.trip.count.i81
  %i.bj = getelementptr i8, ptr %i.q, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.az
  %scevgep216 = getelementptr i8, ptr %i.bk, i64 %wide.trip.count.i81
  %scevgep217 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.bl = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, -4
  %i.bo = mul i64 %i.bn, %i.bf
  %i.bp = shl nuw nsw i64 %i.ba, 2
  %i.bq = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.br = getelementptr i8, ptr %i.ag, i64 %i.bo
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bp
  %scevgep218 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %i.bt = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.bu = add i64 %i.bt, %i.ba
  %i.bv = shl i64 %i.bu, 2
  %scevgep219 = getelementptr i8, ptr %i.ag, i64 %i.bv ; 2 uses
  %i.bw = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.bx = mul nsw i64 %i.bw, %i.av                ; 3 uses
  %i.by = getelementptr i8, ptr %i.q, i64 %i.bx
  %scevgep253 = getelementptr i8, ptr %i.by, i64 %wide.trip.count.i81
  %i.bz = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.az
  %scevgep254 = getelementptr i8, ptr %i.ca, i64 %wide.trip.count.i81
  %scevgep255 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.cb = getelementptr i8, ptr %i.q, i64 %i.bx
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bc
  %scevgep256 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count.i81
  %scevgep257 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cd = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.ce = shl nuw nsw i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, -4
  %i.cg = mul i64 %i.cf, %i.bf
  %i.ch = shl nuw nsw i64 %i.ba, 2
  %i.ci = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.cj = getelementptr i8, ptr %i.ag, i64 %i.cg
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.ch
  %scevgep258 = getelementptr i8, ptr %i.ck, i64 %i.ci ; 3 uses
  %i.cl = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.cm = add i64 %i.cl, %i.ba
  %i.cn = shl i64 %i.cm, 2
  %scevgep259 = getelementptr i8, ptr %i.ag, i64 %i.cn ; 3 uses
  %i.co = add nsw i64 %.sroa.245.0.extract.shift, -1
  %i.cp = mul nsw i64 %i.co, %i.av                ; 4 uses
  %i.cq = getelementptr i8, ptr %i.q, i64 %i.cp
  %scevgep327 = getelementptr i8, ptr %i.cq, i64 %wide.trip.count.i81
  %i.cr = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.az
  %scevgep328 = getelementptr i8, ptr %i.cs, i64 %wide.trip.count.i81
  %scevgep329 = getelementptr i8, ptr %i.q, i64 %i.az
  %i.ct = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.bc
  %scevgep330 = getelementptr i8, ptr %i.cu, i64 %wide.trip.count.i81
  %scevgep331 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.cv = getelementptr i8, ptr %i.q, i64 %i.cp
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.bd
  %scevgep332 = getelementptr i8, ptr %i.cw, i64 %wide.trip.count.i81
  %scevgep333 = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.cx = add nuw nsw i64 %.sroa.243.0.extract.shift, %.sroa.245.0.extract.shift
  %i.cy = shl nuw nsw i64 %i.cx, 2
  %i.cz = add nsw i64 %i.cy, -4
  %i.da = mul i64 %i.cz, %i.bf
  %i.db = shl nuw nsw i64 %i.ba, 2
  %i.dc = shl nuw nsw i64 %wide.trip.count.i81, 2
  %i.dd = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep334 = getelementptr i8, ptr %i.de, i64 %i.dc ; 4 uses
  %i.df = mul nuw i64 %.sroa.243.0.extract.shift, %i.bf
  %i.dg = add i64 %i.df, %i.ba
  %i.dh = shl i64 %i.dg, 2
  %scevgep335 = getelementptr i8, ptr %i.ag, i64 %i.dh ; 4 uses
  call void @llvm.assume(i1 %i.ax)
  %min.iters.check337 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0339 = icmp ult ptr %scevgep335, %scevgep332
  %bound1340 = icmp ult ptr %scevgep333, %scevgep334
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0342 = icmp ult ptr %scevgep335, %scevgep330
  %bound1343 = icmp ult ptr %scevgep331, %scevgep334
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %found.conflict341, %found.conflict344
  %bound0346 = icmp ult ptr %scevgep335, %scevgep328
  %bound1347 = icmp ult ptr %scevgep329, %scevgep334
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %scevgep335, %scevgep327
  %bound1351 = icmp ult ptr %i.q, %scevgep334
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %n.vec355 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n378 = icmp eq i64 %wide.trip.count.i81, %n.vec355
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check261 = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0263 = icmp ult ptr %scevgep259, %scevgep256
  %bound1264 = icmp ult ptr %scevgep257, %scevgep258
  %found.conflict265 = and i1 %bound0263, %bound1264
  %bound0266 = icmp ult ptr %scevgep259, %scevgep254
  %bound1267 = icmp ult ptr %scevgep255, %scevgep258
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %found.conflict265, %found.conflict268
  %bound0270 = icmp ult ptr %scevgep259, %scevgep253
  %bound1271 = icmp ult ptr %i.q, %scevgep258
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %n.vec275 = and i64 %3, 2147483640              ; 3 uses
  %cmp.n300 = icmp eq i64 %wide.trip.count.i81, %n.vec275
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i81, 8
  %bound0 = icmp ult ptr %scevgep219, %scevgep216
  %bound1 = icmp ult ptr %scevgep217, %scevgep218
  %found.conflict = and i1 %bound0, %bound1
  %bound0220 = icmp ult ptr %scevgep219, %scevgep
  %bound1221 = icmp ult ptr %i.q, %scevgep218
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx = or i1 %found.conflict, %found.conflict222
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 4 uses
  %i.di = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.di)
  %i.dj = mul nuw i64 %indvars.iv, %i.av          ; 3 uses
  %i.dk = getelementptr i8, ptr %i.q, i64 %i.dj   ; 33 uses
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
  %min.iters.check389 = icmp ult i32 %i.do, 7
  br i1 %min.iters.check389, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %iter.check
  %i.dr = getelementptr i8, ptr %i.q, i64 %i.dj
  %i.ds = getelementptr i8, ptr %i.dr, i64 %5
  %i.dt = add i64 %i.dj, 1                        ; 2 uses
  %i.du = xor i32 %i.dl, -1
  %i.dv = add nsw i32 %i.r, %i.du
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.q, i64 %i.dt
  %i.dy = getelementptr i8, ptr %i.dx, i64 %5
  %i.dz = getelementptr i8, ptr %i.dy, i64 %i.dw
  %i.ea = getelementptr i8, ptr %i.q, i64 %i.dt
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dw
  %bound0391 = icmp ult ptr %i.ds, %i.eb
  %bound1392 = icmp ult ptr %i.dk, %i.dz
  %found.conflict393 = and i1 %bound0391, %bound1392
  br i1 %found.conflict393, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck390
  %min.iters.check394 = icmp ult i32 %i.do, 31
  br i1 %min.iters.check394, label %vec.epilog.ph, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check
  %i.ec = and i64 %i.dq, 24
  %n.vec396 = and i64 %i.dq, 8589934560           ; 4 uses
  %i.ed = add nuw nsw i64 %n.vec396, %5           ; 2 uses
  %broadcast.splatinsert397 = insertelement <32 x i64> poison, i64 %5, i64 0
  %broadcast.splat398 = shufflevector <32 x i64> %broadcast.splatinsert397, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat398, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dk, i64 %5
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph395, %vector.body406
  %index407 = phi i64 [ 0, %vector.ph395 ], [ %index.next412, %vector.body406 ] ; 2 uses
  %vec.ind408 = phi <32 x i64> [ %induction, %vector.ph395 ], [ %vec.ind.next413, %vector.body406 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index407 ; 2 uses
  %wide.load410 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.ee = sub nuw nsw <32 x i64> %vec.ind408, %broadcast.splat398
  %i.ef = extractelement <32 x i64> %i.ee, i64 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ef
  %wide.load411 = load <32 x i8>, ptr %i.eg, align 1, !tbaa !107, !alias.scope !153
  %i.eh = add <32 x i8> %wide.load411, %wide.load410
  store <32 x i8> %i.eh, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next412 = add nuw i64 %index407, 32      ; 2 uses
  %vec.ind.next413 = add nuw nsw <32 x i64> %vec.ind408, splat (i64 32)
  %i.ei = icmp eq i64 %index.next412, %n.vec396
  br i1 %i.ei, label %middle.block415, label %vector.body406, !llvm.loop !119

middle.block415:                                  ; preds = %vector.body406
  %cmp.n416 = icmp eq i64 %i.dq, %n.vec396
  br i1 %cmp.n416, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block415
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec396, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val417 = phi i64 [ %i.ed, %vec.epilog.iter.check ], [ %5, %vector.main.loop.iter.check ]
  %n.vec418 = and i64 %i.dq, 8589934584           ; 3 uses
  %i.ej = add nuw nsw i64 %n.vec418, %5
  %invariant.gep446 = getelementptr i8, ptr %i.dk, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index431 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next436, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = phi i64 [ %bc.resume.val417, %vec.epilog.ph ], [ %i.eo, %vec.epilog.vector.body ] ; 2 uses
  %gep447 = getelementptr i8, ptr %invariant.gep446, i64 %index431 ; 2 uses
  %wide.load434 = load <8 x i8>, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.el = sub nuw nsw i64 %i.ek, %5
  %i.em = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.el
  %wide.load435 = load <8 x i8>, ptr %i.em, align 1, !tbaa !107, !alias.scope !153
  %i.en = add <8 x i8> %wide.load435, %wide.load434
  store <8 x i8> %i.en, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.eo = add nuw nsw i64 %i.ek, 8
  %i.ep = icmp eq i64 %index.next436, %n.vec418
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n439 = icmp eq i64 %i.dq, %n.vec418
  br i1 %cmp.n439, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck390, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %5, %iter.check ], [ %5, %vector.memcheck390 ], [ %i.ed, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.eq = trunc nuw i64 %indvars.iv.i to i32
  %i.er = icmp sgt i32 %i.r, %i.eq
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !107
  %i.eu = sub nuw nsw i64 %indvars.iv.i, %5       ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.av
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eu
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !107
  %i.ey = add i8 %i.ex, %i.et
  store i8 %i.ey, ptr %i.es, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ez = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fa = icmp sgt i32 %i.r, %i.ez
  br i1 %i.fa, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block415, %vec.epilog.middle.block, %bb.e
  %i.fb = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.fc = icmp samesign ult i64 %i.fb, %i.be
  call void @llvm.assume(i1 %i.fc)
  %i.fd = mul nuw nsw i64 %i.fb, %i.bf
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fd ; 8 uses
  switch i32 %i.d, label %default.unreachable [
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i52.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i52.preheader:                             ; preds = %bb.f
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph.i52.preheader441, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i52.preheader
  %invariant.gep462 = getelementptr i8, ptr %i.dk, i64 %i.az
  %invariant.gep464 = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ff = phi i64 [ 0, %vector.ph ], [ %i.gj, %vector.body ] ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fg, align 1, !tbaa !107, !alias.scope !158
  %gep463 = getelementptr i8, ptr %invariant.gep462, i64 %i.ff
  %wide.load229 = load <8 x i8>, ptr %gep463, align 1, !tbaa !107, !alias.scope !159
  %i.fh = zext <8 x i8> %wide.load229 to <8 x i16>
  %i.fi = shl nuw <8 x i16> %i.fh, splat (i16 8)
  %i.fj = zext <8 x i8> %wide.load to <8 x i16>
  %i.fk = or disjoint <8 x i16> %i.fi, %i.fj
  %i.fl = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fk) ; 2 uses
  %i.fm = zext <8 x i16> %i.fl to <8 x i32>       ; 2 uses
  %i.fn = lshr <8 x i32> %i.fm, splat (i32 10)
  %i.fo = and <8 x i32> %i.fn, splat (i32 31)     ; 3 uses
  %i.fp = and <8 x i32> %i.fm, splat (i32 1023)   ; 2 uses
  %i.fq = shl nuw nsw <8 x i32> %i.fp, splat (i32 13) ; 3 uses
  %i.fr = icmp eq <8 x i32> %i.fo, splat (i32 31) ; 2 uses
  %i.fs = add nuw nsw <8 x i32> %i.fo, splat (i32 112)
  %i.ft = icmp eq <8 x i32> %i.fo, zeroinitializer ; 3 uses
  %i.fu = icmp eq <8 x i32> %i.fp, zeroinitializer
  %i.fv = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fq, i1 true) ; 2 uses
  %i.fw = sub nuw nsw <8 x i32> splat (i32 121), %i.fv
  %i.fx = xor <8 x i32> %i.fv, splat (i32 31)
  %i.fy = sub nuw nsw <8 x i32> splat (i32 23), %i.fx
  %i.fz = shl <8 x i32> %i.fq, %i.fy
  %i.ga = and <8 x i32> %i.fz, splat (i32 8380416)
  %i.gb = xor <8 x i1> %i.ft, %i.fr
  %i.gc = select <8 x i1> %i.ft, <8 x i1> %i.fu, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.gc, <8 x i32> zeroinitializer, <8 x i32> %i.fw
  %predphi230 = select <8 x i1> %i.gb, <8 x i32> %predphi, <8 x i32> %i.fs
  %predphi232 = select <8 x i1> %i.gc, <8 x i32> zeroinitializer, <8 x i32> %i.ga
  %predphi233 = select <8 x i1> %i.ft, <8 x i32> %predphi232, <8 x i32> %i.fq
  %i.gd = sext <8 x i16> %i.fl to <8 x i32>
  %i.ge = and <8 x i32> %i.gd, splat (i32 -2147483648)
  %i.gf = shl nuw nsw <8 x i32> %predphi230, splat (i32 23)
  %i.gg = select <8 x i1> %i.fr, <8 x i32> splat (i32 2139095040), <8 x i32> %i.gf
  %i.gh = or disjoint <8 x i32> %i.gg, %i.ge
  %i.gi = or disjoint <8 x i32> %i.gh, %predphi233
  %gep465 = getelementptr inbounds [4 x i8], ptr %invariant.gep464, i64 %i.ff
  store <8 x i32> %i.gi, ptr %gep465, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gj = add nuw nsw i64 %i.ff, 8
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader441

.lr.ph.i52.preheader441:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader441, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader441 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i53
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !107
  %i.gn = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.go = icmp samesign ult i64 %i.gn, %i.av
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gq to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gm to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gr = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gs = zext i16 %i.gr to i32                   ; 2 uses
  %i.gt = lshr i32 %i.gs, 10
  %i.gu = and i32 %i.gt, 31                       ; 3 uses
  %i.gv = and i32 %i.gs, 1023                     ; 2 uses
  %i.gw = shl nuw nsw i32 %i.gv, 13               ; 4 uses
  %i.gx = icmp eq i32 %i.gu, 31
  br i1 %i.gx, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gy = add nuw nsw i32 %i.gu, 112
  %i.gz = icmp eq i32 %i.gu, 0
  br i1 %i.gz, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ha = icmp eq i32 %i.gv, 0
  br i1 %i.ha, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gw, i1 true) ; 2 uses
  %i.hb = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.hc = shl i32 %i.gw, %.lr.ph.tripcount.i.i
  %i.hd = and i32 %i.hc, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gy, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.hb, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gw, %bb.g ], [ %i.gw, %.lr.ph.i52 ], [ %i.hd, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gr to i32
  %i.he = and i32 %.signext.i, -2147483648
  %i.hf = shl nuw nsw i32 %.116.i.i, 23
  %i.hg = or disjoint i32 %i.hf, %i.he
  %i.hh = or i32 %i.hg, %.1.i.i
  %i.hi = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hj = icmp samesign ule i64 %i.hi, %i.bb
  call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hi
  store i32 %i.hh, ptr %i.hk, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge466 = select i1 %min.iters.check261, i1 true, i1 %conflict.rdx273
  br i1 %brmerge466, label %.lr.ph.i60.preheader442, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep456 = getelementptr i8, ptr %i.dk, i64 %i.az
  %invariant.gep458 = getelementptr i8, ptr %i.dk, i64 %i.bc
  %invariant.gep460 = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.ba
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph274
  %index287 = phi i64 [ 0, %vector.ph274 ], [ %index.next297, %vector.body286 ] ; 2 uses
  %i.hl = phi i64 [ 0, %vector.ph274 ], [ %i.ir, %vector.body286 ] ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index287
  %wide.load289 = load <8 x i8>, ptr %i.hm, align 1, !tbaa !107, !alias.scope !164
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %i.hl
  %wide.load290 = load <8 x i8>, ptr %gep457, align 1, !tbaa !107, !alias.scope !165
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.hl
  %wide.load291 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !166
  %i.hn = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.ho = shl nuw nsw <8 x i32> %i.hn, splat (i32 16)
  %i.hp = zext <8 x i8> %wide.load290 to <8 x i32>
  %i.hq = shl nuw nsw <8 x i32> %i.hp, splat (i32 8)
  %i.hr = zext <8 x i8> %wide.load289 to <8 x i32>
  %i.hs = or disjoint <8 x i32> %i.hq, %i.hr
  %i.ht = or disjoint <8 x i32> %i.hs, %i.ho
  %i.hu = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.ht) ; 3 uses
  %i.hv = lshr exact <8 x i32> %i.hu, splat (i32 8)
  %i.hw = lshr <8 x i32> %i.hu, splat (i32 24)
  %i.hx = and <8 x i32> %i.hw, splat (i32 127)    ; 3 uses
  %i.hy = and <8 x i32> %i.hv, splat (i32 65535)  ; 2 uses
  %i.hz = shl nuw nsw <8 x i32> %i.hy, splat (i32 7) ; 3 uses
  %i.ia = icmp eq <8 x i32> %i.hx, splat (i32 127) ; 2 uses
  %i.ib = add nuw nsw <8 x i32> %i.hx, splat (i32 64)
  %i.ic = icmp eq <8 x i32> %i.hx, zeroinitializer ; 3 uses
  %i.id = icmp eq <8 x i32> %i.hy, zeroinitializer
  %i.ie = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.hz, i1 true) ; 2 uses
  %i.if = sub nuw nsw <8 x i32> splat (i32 73), %i.ie
  %i.ig = xor <8 x i32> %i.ie, splat (i32 31)
  %i.ih = sub nuw nsw <8 x i32> splat (i32 23), %i.ig
  %i.ii = shl <8 x i32> %i.hz, %i.ih
  %i.ij = and <8 x i32> %i.ii, splat (i32 8388480)
  %i.ik = xor <8 x i1> %i.ic, %i.ia
  %i.il = select <8 x i1> %i.ic, <8 x i1> %i.id, <8 x i1> zeroinitializer ; 2 uses
  %predphi292 = select <8 x i1> %i.il, <8 x i32> zeroinitializer, <8 x i32> %i.if
  %predphi293 = select <8 x i1> %i.ik, <8 x i32> %predphi292, <8 x i32> %i.ib
  %predphi295 = select <8 x i1> %i.il, <8 x i32> zeroinitializer, <8 x i32> %i.ij
  %predphi296 = select <8 x i1> %i.ic, <8 x i32> %predphi295, <8 x i32> %i.hz
  %i.im = and <8 x i32> %i.hu, splat (i32 -2147483648)
  %i.in = shl nuw nsw <8 x i32> %predphi293, splat (i32 23)
  %i.io = select <8 x i1> %i.ia, <8 x i32> splat (i32 2139095040), <8 x i32> %i.in
  %i.ip = or disjoint <8 x i32> %i.io, %i.im
end_hunk_0
