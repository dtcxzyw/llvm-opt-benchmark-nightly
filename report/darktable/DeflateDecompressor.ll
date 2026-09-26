Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
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
  %i.dn = zext nneg i32 %i.dl to i64              ; 12 uses
  %i.do = icmp sgt i32 %i.dl, -1
  call void @llvm.assume(i1 %i.do)
  %i.dp = xor i32 %i.dl, -1
  %i.dq = add nsw i32 %i.r, %i.dp                 ; 3 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 5 uses
  %min.iters.check332 = icmp ult i32 %i.dq, 7
  br i1 %min.iters.check332, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck323

vector.memcheck323:                               ; preds = %iter.check
  %scevgep324 = getelementptr i8, ptr %i.dk, i64 %i.dn
  %i.dt = xor i32 %i.dl, -1
  %i.du = add nsw i32 %i.r, %i.dt
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr i8, ptr %scevgep325, i64 %i.dn
  %scevgep326 = getelementptr i8, ptr %i.dw, i64 %i.dv
  %scevgep327 = getelementptr i8, ptr %scevgep325, i64 %i.dv
  %bound0328 = icmp ult ptr %scevgep324, %scevgep327
  %bound1329 = icmp ult ptr %i.dk, %scevgep326
  %found.conflict330 = and i1 %bound0328, %bound1329
  br i1 %found.conflict330, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck323
  %min.iters.check333 = icmp ult i32 %i.dq, 31
  br i1 %min.iters.check333, label %vec.epilog.ph, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check
  %i.dx = and i64 %i.ds, 24
  %n.vec335 = and i64 %i.ds, 8589934560           ; 4 uses
  %i.dy = add nuw nsw i64 %n.vec335, %i.dn        ; 2 uses
  %broadcast.splatinsert336 = insertelement <32 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat337 = shufflevector <32 x i64> %broadcast.splatinsert336, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat337, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dk, i64 %i.dn
  br label %vector.body345

vector.body345:                                   ; preds = %vector.ph334, %vector.body345
  %index346 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body345 ] ; 2 uses
  %vec.ind347 = phi <32 x i64> [ %induction, %vector.ph334 ], [ %vec.ind.next352, %vector.body345 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index346 ; 2 uses
  %wide.load349 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.dz = sub nuw nsw <32 x i64> %vec.ind347, %broadcast.splat337
  %i.ea = extractelement <32 x i64> %i.dz, i64 0
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ea
  %wide.load350 = load <32 x i8>, ptr %i.eb, align 1, !tbaa !107, !alias.scope !153
  %i.ec = add <32 x i8> %wide.load350, %wide.load349
  store <32 x i8> %i.ec, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next351 = add nuw i64 %index346, 32      ; 2 uses
  %vec.ind.next352 = add nuw nsw <32 x i64> %vec.ind347, splat (i64 32)
  %i.ed = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.ed, label %middle.block354, label %vector.body345, !llvm.loop !119

middle.block354:                                  ; preds = %vector.body345
  %cmp.n355 = icmp eq i64 %i.ds, %n.vec335
  br i1 %cmp.n355, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block354
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec335, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val356 = phi i64 [ %i.dy, %vec.epilog.iter.check ], [ %i.dn, %vector.main.loop.iter.check ]
  %n.vec357 = and i64 %i.ds, 8589934584           ; 3 uses
  %i.ee = add nuw nsw i64 %n.vec357, %i.dn
  %invariant.gep385 = getelementptr i8, ptr %i.dk, i64 %i.dn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next375, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = phi i64 [ %bc.resume.val356, %vec.epilog.ph ], [ %i.ej, %vec.epilog.vector.body ] ; 2 uses
  %gep386 = getelementptr i8, ptr %invariant.gep385, i64 %index370 ; 2 uses
  %wide.load373 = load <8 x i8>, ptr %gep386, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.eg = sub nuw nsw i64 %i.ef, %i.dn
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eg
  %wide.load374 = load <8 x i8>, ptr %i.eh, align 1, !tbaa !107, !alias.scope !153
  %i.ei = add <8 x i8> %wide.load374, %wide.load373
  store <8 x i8> %i.ei, ptr %gep386, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.ej = add nuw nsw i64 %i.ef, 8
  %i.ek = icmp eq i64 %index.next375, %n.vec357
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n378 = icmp eq i64 %i.ds, %n.vec357
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck323, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dn, %iter.check ], [ %i.dn, %vector.memcheck323 ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.el = trunc nuw i64 %indvars.iv.i to i32
  %i.em = icmp sgt i32 %i.r, %i.el
  call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !107
  %i.ep = sub nuw nsw i64 %indvars.iv.i, %i.dn    ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ep, %i.av
  call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ep
  %i.es = load i8, ptr %i.er, align 1, !tbaa !107
  %i.et = add i8 %i.es, %i.eo
  store i8 %i.et, ptr %i.en, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ev = icmp sgt i32 %i.r, %i.eu
  br i1 %i.ev, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block354, %vec.epilog.middle.block, %bb.e
  %i.ew = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.bf
  call void @llvm.assume(i1 %i.ex)
  %i.ey = mul nuw nsw i64 %i.ew, %i.bg
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ey ; 8 uses
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
  %invariant.gep403 = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = phi i64 [ 0, %vector.ph ], [ %i.ge, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fb, align 1, !tbaa !107, !alias.scope !158
  %gep402 = getelementptr i8, ptr %invariant.gep401, i64 %i.fa
  %wide.load216 = load <8 x i8>, ptr %gep402, align 1, !tbaa !107, !alias.scope !159
  %i.fc = zext <8 x i8> %wide.load216 to <8 x i16>
  %i.fd = shl nuw <8 x i16> %i.fc, splat (i16 8)
  %i.fe = zext <8 x i8> %wide.load to <8 x i16>
  %i.ff = or disjoint <8 x i16> %i.fd, %i.fe
  %i.fg = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ff) ; 2 uses
  %i.fh = zext <8 x i16> %i.fg to <8 x i32>       ; 2 uses
  %i.fi = lshr <8 x i32> %i.fh, splat (i32 10)
  %i.fj = and <8 x i32> %i.fi, splat (i32 31)     ; 3 uses
  %i.fk = and <8 x i32> %i.fh, splat (i32 1023)   ; 2 uses
  %i.fl = shl nuw nsw <8 x i32> %i.fk, splat (i32 13) ; 3 uses
  %i.fm = icmp eq <8 x i32> %i.fj, splat (i32 31) ; 2 uses
  %i.fn = add nuw nsw <8 x i32> %i.fj, splat (i32 112)
  %i.fo = icmp eq <8 x i32> %i.fj, zeroinitializer ; 3 uses
  %i.fp = icmp eq <8 x i32> %i.fk, zeroinitializer ; 2 uses
  %i.fq = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fl, i1 true) ; 2 uses
  %i.fr = sub nuw nsw <8 x i32> splat (i32 121), %i.fq
  %i.fs = xor <8 x i32> %i.fq, splat (i32 31)
  %i.ft = sub nuw nsw <8 x i32> splat (i32 23), %i.fs
  %i.fu = shl <8 x i32> %i.fl, %i.ft
  %i.fv = and <8 x i32> %i.fu, splat (i32 8380416)
  %i.fw = xor <8 x i1> %i.fo, %i.fm
  %i.fx = select <8 x i1> %i.fo, <8 x i1> %i.fp, <8 x i1> zeroinitializer
  %predphi = select <8 x i1> %i.fx, <8 x i32> zeroinitializer, <8 x i32> %i.fr
  %predphi217 = select <8 x i1> %i.fw, <8 x i32> %predphi, <8 x i32> %i.fn
  %predphi219 = select <8 x i1> %i.fp, <8 x i32> zeroinitializer, <8 x i32> %i.fv
  %predphi220 = select <8 x i1> %i.fo, <8 x i32> %predphi219, <8 x i32> %i.fl
  %i.fy = sext <8 x i16> %i.fg to <8 x i32>
  %i.fz = and <8 x i32> %i.fy, splat (i32 -2147483648)
  %i.ga = shl nuw nsw <8 x i32> %predphi217, splat (i32 23)
  %i.gb = select <8 x i1> %i.fm, <8 x i32> splat (i32 2139095040), <8 x i32> %i.ga
  %i.gc = or disjoint <8 x i32> %i.gb, %i.fz
  %i.gd = or disjoint <8 x i32> %i.gc, %predphi220
  %gep404 = getelementptr inbounds [4 x i8], ptr %invariant.gep403, i64 %i.fa
  store <8 x i32> %i.gd, ptr %gep404, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ge = add nuw nsw i64 %i.fa, 8
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader380

.lr.ph.i52.preheader380:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader380, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader380 ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i53
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !107
  %i.gi = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.gj = icmp samesign ult i64 %i.gi, %i.av
  call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gi
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gl to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gh to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gm = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = lshr i32 %i.gn, 10
  %i.gp = and i32 %i.go, 31                       ; 3 uses
  %i.gq = and i32 %i.gn, 1023                     ; 2 uses
  %i.gr = shl nuw nsw i32 %i.gq, 13               ; 4 uses
  %i.gs = icmp eq i32 %i.gp, 31
  br i1 %i.gs, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.gt = add nuw nsw i32 %i.gp, 112
  %i.gu = icmp eq i32 %i.gp, 0
  br i1 %i.gu, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.gv = icmp eq i32 %i.gq, 0
  br i1 %i.gv, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gr, i1 true) ; 2 uses
  %i.gw = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.gx = shl i32 %i.gr, %.lr.ph.tripcount.i.i
  %i.gy = and i32 %i.gx, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.gt, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.gw, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gr, %bb.g ], [ %i.gr, %.lr.ph.i52 ], [ %i.gy, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gm to i32
  %i.gz = and i32 %.signext.i, -2147483648
  %i.ha = shl nuw nsw i32 %.116.i.i, 23
  %i.hb = or disjoint i32 %i.ha, %i.gz
  %i.hc = or i32 %i.hb, %.1.i.i
  %i.hd = add nuw nsw i64 %indvars.iv.i53, %i.bb  ; 2 uses
  %i.he = icmp samesign ule i64 %i.hd, %i.bc
  call void @llvm.assume(i1 %i.he)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.hd
  store i32 %i.hc, ptr %i.hf, align 4, !tbaa !161
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i81
  br i1 %exitcond.not.i, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52, !llvm.loop !127

bb.i:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.az, label %.lr.ph.i60.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i60.preheader:                             ; preds = %bb.i
  %brmerge405 = select i1 %min.iters.check241, i1 true, i1 %conflict.rdx239
  br i1 %brmerge405, label %.lr.ph.i60.preheader381, label %vector.ph242

vector.ph242:                                     ; preds = %.lr.ph.i60.preheader
  %invariant.gep395 = getelementptr i8, ptr %i.dk, i64 %i.ba
  %invariant.gep397 = getelementptr i8, ptr %i.dk, i64 %i.bd
  %invariant.gep399 = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.bb
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph242
  %index255 = phi i64 [ 0, %vector.ph242 ], [ %index.next265, %vector.body254 ] ; 2 uses
  %i.hg = phi i64 [ 0, %vector.ph242 ], [ %i.im, %vector.body254 ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index255
  %wide.load257 = load <8 x i8>, ptr %i.hh, align 1, !tbaa !107, !alias.scope !164
  %gep396 = getelementptr i8, ptr %invariant.gep395, i64 %i.hg
  %wide.load258 = load <8 x i8>, ptr %gep396, align 1, !tbaa !107, !alias.scope !165
  %gep398 = getelementptr i8, ptr %invariant.gep397, i64 %i.hg
  %wide.load259 = load <8 x i8>, ptr %gep398, align 1, !tbaa !107, !alias.scope !166
  %i.hi = zext <8 x i8> %wide.load259 to <8 x i32>
  %i.hj = shl nuw nsw <8 x i32> %i.hi, splat (i32 16)
  %i.hk = zext <8 x i8> %wide.load258 to <8 x i32>
  %i.hl = shl nuw nsw <8 x i32> %i.hk, splat (i32 8)
  %i.hm = zext <8 x i8> %wide.load257 to <8 x i32>
  %i.hn = or disjoint <8 x i32> %i.hl, %i.hm
  %i.ho = or disjoint <8 x i32> %i.hn, %i.hj
  %i.hp = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.ho) ; 3 uses
  %i.hq = lshr exact <8 x i32> %i.hp, splat (i32 8)
  %i.hr = lshr <8 x i32> %i.hp, splat (i32 24)
  %i.hs = and <8 x i32> %i.hr, splat (i32 127)    ; 3 uses
  %i.ht = and <8 x i32> %i.hq, splat (i32 65535)  ; 2 uses
  %i.hu = shl nuw nsw <8 x i32> %i.ht, splat (i32 7) ; 3 uses
  %i.hv = icmp eq <8 x i32> %i.hs, splat (i32 127) ; 2 uses
  %i.hw = add nuw nsw <8 x i32> %i.hs, splat (i32 64)
  %i.hx = icmp eq <8 x i32> %i.hs, zeroinitializer ; 3 uses
  %i.hy = icmp eq <8 x i32> %i.ht, zeroinitializer ; 2 uses
  %i.hz = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.hu, i1 true) ; 2 uses
  %i.ia = sub nuw nsw <8 x i32> splat (i32 73), %i.hz
  %i.ib = xor <8 x i32> %i.hz, splat (i32 31)
  %i.ic = sub nuw nsw <8 x i32> splat (i32 23), %i.ib
  %i.id = shl <8 x i32> %i.hu, %i.ic
  %i.ie = and <8 x i32> %i.id, splat (i32 8388480)
  %i.if = xor <8 x i1> %i.hx, %i.hv
  %i.ig = select <8 x i1> %i.hx, <8 x i1> %i.hy, <8 x i1> zeroinitializer
  %predphi260 = select <8 x i1> %i.ig, <8 x i32> zeroinitializer, <8 x i32> %i.ia
  %predphi261 = select <8 x i1> %i.if, <8 x i32> %predphi260, <8 x i32> %i.hw
  %predphi263 = select <8 x i1> %i.hy, <8 x i32> zeroinitializer, <8 x i32> %i.ie
  %predphi264 = select <8 x i1> %i.hx, <8 x i32> %predphi263, <8 x i32> %i.hu
  %i.ih = and <8 x i32> %i.hp, splat (i32 -2147483648)
  %i.ii = shl nuw nsw <8 x i32> %predphi261, splat (i32 23)
  %i.ij = select <8 x i1> %i.hv, <8 x i32> splat (i32 2139095040), <8 x i32> %i.ii
  %i.ik = or disjoint <8 x i32> %i.ij, %i.ih
  %i.il = or disjoint <8 x i32> %i.ik, %predphi264
  %gep400 = getelementptr inbounds [4 x i8], ptr %invariant.gep399, i64 %i.hg
  store <8 x i32> %i.il, ptr %gep400, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next265 = add nuw i64 %index255, 8       ; 2 uses
  %i.im = add nuw nsw i64 %i.hg, 8
  %i.in = icmp eq i64 %index.next265, %n.vec243
  br i1 %i.in, label %middle.block267, label %vector.body254, !llvm.loop !133

middle.block267:                                  ; preds = %vector.body254
  br i1 %cmp.n268, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader381

.lr.ph.i60.preheader381:                          ; preds = %.lr.ph.i60.preheader, %middle.block267
  %indvars.iv.i62.ph = phi i64 [ %n.vec243, %middle.block267 ], [ 0, %.lr.ph.i60.preheader ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader381, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i69, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i62.ph, %.lr.ph.i60.preheader381 ] ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i62
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !107
  %i.iq = add nuw nsw i64 %indvars.iv.i62, %i.ba  ; 2 uses
  %i.ir = icmp samesign ult i64 %i.iq, %i.av
  call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.iq
  %i.it = load i8, ptr %i.is, align 1, !tbaa !107
  %i.iu = add nuw nsw i64 %indvars.iv.i62, %i.bd  ; 2 uses
  %i.iv = icmp samesign ult i64 %i.iu, %i.av
  call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.iu
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !107
  %.sroa.5.0.insert.ext.i = zext i8 %i.ix to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i63 = zext i8 %i.it to i32
  %.sroa.4.0.insert.shift.i64 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i63, 8
  %.sroa.0.0.insert.ext.i65 = zext i8 %i.ip to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i64, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %i.iy = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i66) ; 3 uses
  %i.iz = lshr exact i32 %i.iy, 8
  %i.ja = lshr i32 %i.iy, 24
  %i.jb = and i32 %i.ja, 127                      ; 3 uses
  %i.jc = and i32 %i.iz, 65535                    ; 2 uses
  %i.jd = shl nuw nsw i32 %i.jc, 7                ; 4 uses
  %i.je = icmp eq i32 %i.jb, 127
  br i1 %i.je, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i60
  %i.jf = add nuw nsw i32 %i.jb, 64
  %i.jg = icmp eq i32 %i.jb, 0
  br i1 %i.jg, label %bb.k, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

bb.k:                                             ; preds = %bb.j
  %i.jh = icmp eq i32 %i.jc, 0
  br i1 %i.jh, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %bb.k
  %.masked.numleadingzeros.i.i72 = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jd, i1 true) ; 2 uses
  %i.ji = sub nuw nsw i32 73, %.masked.numleadingzeros.i.i72
  %.masked.leadingonepos.i.i73 = xor i32 %.masked.numleadingzeros.i.i72, 31
  %.lr.ph.tripcount.i.i74 = sub nuw nsw i32 23, %.masked.leadingonepos.i.i73
  %i.jj = shl i32 %i.jd, %.lr.ph.tripcount.i.i74
  %i.jk = and i32 %i.jj, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i71, %bb.k, %bb.j, %.lr.ph.i60
  %.116.i.i67 = phi i32 [ %i.jf, %bb.j ], [ 255, %.lr.ph.i60 ], [ %i.ji, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %.1.i.i68 = phi i32 [ %i.jd, %bb.j ], [ %i.jd, %.lr.ph.i60 ], [ %i.jk, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %i.jl = and i32 %i.iy, -2147483648
  %i.jm = shl nuw nsw i32 %.116.i.i67, 23
  %i.jn = or disjoint i32 %i.jm, %i.jl
  %i.jo = or i32 %i.jn, %.1.i.i68
  %i.jp = add nuw nsw i64 %indvars.iv.i62, %i.bb  ; 2 uses
  %i.jq = icmp samesign ule i64 %i.jp, %i.bc
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.jp
  store i32 %i.jo, ptr %i.jr, align 4, !tbaa !161
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i81
  br i1 %exitcond.not.i70, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60, !llvm.loop !134

bb.l:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.az, label %.lr.ph.i80.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i80.preheader:                             ; preds = %bb.l
  %brmerge406 = select i1 %min.iters.check296, i1 true, i1 %conflict.rdx294
  br i1 %brmerge406, label %.lr.ph.i80.preheader383, label %vector.ph297

vector.ph297:                                     ; preds = %.lr.ph.i80.preheader
  %invariant.gep387 = getelementptr i8, ptr %i.dk, i64 %i.ba
  %invariant.gep389 = getelementptr i8, ptr %i.dk, i64 %i.bd
  %invariant.gep391 = getelementptr i8, ptr %i.dk, i64 %i.be
  %invariant.gep393 = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.bb
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph297
  %index312 = phi i64 [ 0, %vector.ph297 ], [ %index.next318, %vector.body311 ] ; 2 uses
  %i.js = phi i64 [ 0, %vector.ph297 ], [ %i.kf, %vector.body311 ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index312
  %wide.load314 = load <8 x i8>, ptr %i.jt, align 1, !tbaa !107, !alias.scope !169
  %gep388 = getelementptr i8, ptr %invariant.gep387, i64 %i.js
  %wide.load315 = load <8 x i8>, ptr %gep388, align 1, !tbaa !107, !alias.scope !170
  %gep390 = getelementptr i8, ptr %invariant.gep389, i64 %i.js
  %wide.load316 = load <8 x i8>, ptr %gep390, align 1, !tbaa !107, !alias.scope !171
  %gep392 = getelementptr i8, ptr %invariant.gep391, i64 %i.js
  %wide.load317 = load <8 x i8>, ptr %gep392, align 1, !tbaa !107, !alias.scope !172
  %i.ju = zext <8 x i8> %wide.load317 to <8 x i32>
  %i.jv = shl nuw <8 x i32> %i.ju, splat (i32 24)
  %i.jw = zext <8 x i8> %wide.load316 to <8 x i32>
  %i.jx = shl nuw nsw <8 x i32> %i.jw, splat (i32 16)
  %i.jy = zext <8 x i8> %wide.load315 to <8 x i32>
  %i.jz = shl nuw nsw <8 x i32> %i.jy, splat (i32 8)
  %i.ka = zext <8 x i8> %wide.load314 to <8 x i32>
  %i.kb = or disjoint <8 x i32> %i.jz, %i.ka
  %i.kc = or disjoint <8 x i32> %i.kb, %i.jx
  %i.kd = or disjoint <8 x i32> %i.kc, %i.jv
  %i.ke = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.kd)
  %gep394 = getelementptr inbounds [4 x i8], ptr %invariant.gep393, i64 %i.js
  store <8 x i32> %i.ke, ptr %gep394, align 4, !tbaa !161, !alias.scope !173, !noalias !174
  %index.next318 = add nuw i64 %index312, 8       ; 2 uses
  %i.kf = add nuw nsw i64 %i.js, 8
  %i.kg = icmp eq i64 %index.next318, %n.vec298
  br i1 %i.kg, label %middle.block320, label %vector.body311, !llvm.loop !141

middle.block320:                                  ; preds = %vector.body311
  br i1 %cmp.n321, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80.preheader383

.lr.ph.i80.preheader383:                          ; preds = %.lr.ph.i80.preheader, %middle.block320
  %indvars.iv.i82.ph = phi i64 [ %n.vec298, %middle.block320 ], [ 0, %.lr.ph.i80.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i82.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader383
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i82.ph
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !107
  %i.kj = add nuw nsw i64 %indvars.iv.i82.ph, %i.ba ; 2 uses
  %i.kk = icmp samesign ult i64 %i.kj, %i.av
  call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.kj
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !107
  %i.kn = add nuw nsw i64 %indvars.iv.i82.ph, %i.bd ; 2 uses
  %i.ko = icmp samesign ult i64 %i.kn, %i.av
  call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.kn
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !107
  %i.kr = add nuw nsw i64 %indvars.iv.i82.ph, %i.be ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, %i.av
  call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i.prol = zext i8 %i.ku to i32
  %.sroa.6.0.insert.shift.i.prol = shl nuw i32 %.sroa.6.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i83.prol = zext i8 %i.kq to i32
  %.sroa.5.0.insert.shift.i84.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83.prol, 16
  %.sroa.4.0.insert.ext.i85.prol = zext i8 %i.km to i32
  %.sroa.4.0.insert.shift.i86.prol = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85.prol, 8
  %.sroa.0.0.insert.ext.i88.prol = zext i8 %i.ki to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.4.0.insert.shift.i86.prol, %.sroa.0.0.insert.ext.i88.prol
  %.sroa.4.0.insert.insert.i87.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i84.prol
  %.sroa.0.0.insert.insert.i89.prol = or disjoint i32 %.sroa.4.0.insert.insert.i87.prol, %.sroa.6.0.insert.shift.i.prol
  %i.kv = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89.prol)
  %i.kw = add nuw nsw i64 %indvars.iv.i82.ph, %i.bb ; 2 uses
  %i.kx = icmp samesign ule i64 %i.kw, %i.bc
  call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.kw
  store i32 %i.kv, ptr %i.ky, align 4, !tbaa !161
  %indvars.iv.next.i90.prol = or disjoint i64 %indvars.iv.i82.ph, 1
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader383
  %indvars.iv.i82.unr = phi i64 [ %indvars.iv.i82.ph, %.lr.ph.i80.preheader383 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i80.prol ]
  %i.kz = icmp eq i64 %wide.trip.count.i81, %.neg
  br i1 %i.kz, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i90.1, %.lr.ph.i80 ], [ %indvars.iv.i82.unr, %.lr.ph.i80.prol.loopexit ] ; 7 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i82
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !107
  %i.lc = add nuw nsw i64 %indvars.iv.i82, %i.ba  ; 2 uses
  %i.ld = icmp samesign ult i64 %i.lc, %i.av
  call void @llvm.assume(i1 %i.ld)
  %i.le = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.lc
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !107
  %i.lg = add nuw nsw i64 %indvars.iv.i82, %i.bd  ; 2 uses
  %i.lh = icmp samesign ult i64 %i.lg, %i.av
  call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.lg
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !107
  %i.lk = add nuw nsw i64 %indvars.iv.i82, %i.be  ; 2 uses
  %i.ll = icmp samesign ult i64 %i.lk, %i.av
  call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.lk
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i = zext i8 %i.ln to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i83 = zext i8 %i.lj to i32
  %.sroa.5.0.insert.shift.i84 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83, 16
end_hunk_0
