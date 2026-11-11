Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
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
  %i.dn = zext nneg i32 %i.dl to i64              ; 12 uses
  %i.do = icmp sgt i32 %i.dl, -1
  call void @llvm.assume(i1 %i.do)
  %i.dp = xor i32 %i.dl, -1
  %i.dq = add nsw i32 %i.r, %i.dp                 ; 3 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 5 uses
  %min.iters.check389 = icmp ult i32 %i.dq, 7
  br i1 %min.iters.check389, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %iter.check
  %i.dt = getelementptr i8, ptr %i.q, i64 %i.dj
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dn
  %i.dv = add i64 %i.dj, 1                        ; 2 uses
  %i.dw = xor i32 %i.dl, -1
  %i.dx = add nsw i32 %i.r, %i.dw
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dn
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dy
  %bound0391 = icmp ult ptr %i.du, %i.ed
  %bound1392 = icmp ult ptr %i.dk, %i.eb
  %found.conflict393 = and i1 %bound0391, %bound1392
  br i1 %found.conflict393, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck390
  %min.iters.check394 = icmp ult i32 %i.dq, 31
  br i1 %min.iters.check394, label %vec.epilog.ph, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check
  %i.ee = and i64 %i.ds, 24
  %n.vec396 = and i64 %i.ds, 8589934560           ; 4 uses
  %i.ef = add nuw nsw i64 %n.vec396, %i.dn        ; 2 uses
  %broadcast.splatinsert397 = insertelement <32 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat398 = shufflevector <32 x i64> %broadcast.splatinsert397, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat398, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dk, i64 %i.dn
  br label %vector.body406

vector.body406:                                   ; preds = %vector.ph395, %vector.body406
  %index407 = phi i64 [ 0, %vector.ph395 ], [ %index.next412, %vector.body406 ] ; 2 uses
  %vec.ind408 = phi <32 x i64> [ %induction, %vector.ph395 ], [ %vec.ind.next413, %vector.body406 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index407 ; 2 uses
  %wide.load410 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.eg = sub nuw nsw <32 x i64> %vec.ind408, %broadcast.splat398
  %i.eh = extractelement <32 x i64> %i.eg, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eh
  %wide.load411 = load <32 x i8>, ptr %i.ei, align 1, !tbaa !107, !alias.scope !153
  %i.ej = add <32 x i8> %wide.load411, %wide.load410
  store <32 x i8> %i.ej, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next412 = add nuw i64 %index407, 32      ; 2 uses
  %vec.ind.next413 = add nuw nsw <32 x i64> %vec.ind408, splat (i64 32)
  %i.ek = icmp eq i64 %index.next412, %n.vec396
  br i1 %i.ek, label %middle.block415, label %vector.body406, !llvm.loop !119

middle.block415:                                  ; preds = %vector.body406
  %cmp.n416 = icmp eq i64 %i.ds, %n.vec396
  br i1 %cmp.n416, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block415
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec396, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val417 = phi i64 [ %i.ef, %vec.epilog.iter.check ], [ %i.dn, %vector.main.loop.iter.check ]
  %n.vec418 = and i64 %i.ds, 8589934584           ; 3 uses
  %i.el = add nuw nsw i64 %n.vec418, %i.dn
  %invariant.gep446 = getelementptr i8, ptr %i.dk, i64 %i.dn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index431 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next436, %vec.epilog.vector.body ] ; 2 uses
  %i.em = phi i64 [ %bc.resume.val417, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ] ; 2 uses
  %gep447 = getelementptr i8, ptr %invariant.gep446, i64 %index431 ; 2 uses
  %wide.load434 = load <8 x i8>, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.en = sub nuw nsw i64 %i.em, %i.dn
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.en
  %wide.load435 = load <8 x i8>, ptr %i.eo, align 1, !tbaa !107, !alias.scope !153
  %i.ep = add <8 x i8> %wide.load435, %wide.load434
  store <8 x i8> %i.ep, ptr %gep447, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.eq = add nuw nsw i64 %i.em, 8
  %i.er = icmp eq i64 %index.next436, %n.vec418
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n439 = icmp eq i64 %i.ds, %n.vec418
  br i1 %cmp.n439, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck390, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dn, %iter.check ], [ %i.dn, %vector.memcheck390 ], [ %i.ef, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.es = trunc nuw i64 %indvars.iv.i to i32
  %i.et = icmp sgt i32 %i.r, %i.es
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !107
  %i.ew = sub nuw nsw i64 %indvars.iv.i, %i.dn    ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.av
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !107
  %i.fa = add i8 %i.ez, %i.ev
  store i8 %i.fa, ptr %i.eu, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fb = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fc = icmp sgt i32 %i.r, %i.fb
  br i1 %i.fc, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %vec.epilog.scalar.ph, %middle.block415, %vec.epilog.middle.block, %bb.e
  %i.fd = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.fe = icmp samesign ult i64 %i.fd, %i.be
  call void @llvm.assume(i1 %i.fe)
  %i.ff = mul nuw nsw i64 %i.fd, %i.bf
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ff ; 8 uses
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
  %invariant.gep464 = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = phi i64 [ 0, %vector.ph ], [ %i.gl, %vector.body ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fi, align 1, !tbaa !107, !alias.scope !158
  %gep463 = getelementptr i8, ptr %invariant.gep462, i64 %i.fh
  %wide.load229 = load <8 x i8>, ptr %gep463, align 1, !tbaa !107, !alias.scope !159
  %i.fj = zext <8 x i8> %wide.load229 to <8 x i16>
  %i.fk = shl nuw <8 x i16> %i.fj, splat (i16 8)
  %i.fl = zext <8 x i8> %wide.load to <8 x i16>
  %i.fm = or disjoint <8 x i16> %i.fk, %i.fl
  %i.fn = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fm) ; 2 uses
  %i.fo = zext <8 x i16> %i.fn to <8 x i32>       ; 2 uses
  %i.fp = lshr <8 x i32> %i.fo, splat (i32 10)
  %i.fq = and <8 x i32> %i.fp, splat (i32 31)     ; 3 uses
  %i.fr = and <8 x i32> %i.fo, splat (i32 1023)   ; 2 uses
  %i.fs = shl nuw nsw <8 x i32> %i.fr, splat (i32 13) ; 3 uses
  %i.ft = icmp eq <8 x i32> %i.fq, splat (i32 31) ; 2 uses
  %i.fu = add nuw nsw <8 x i32> %i.fq, splat (i32 112)
  %i.fv = icmp eq <8 x i32> %i.fq, zeroinitializer ; 3 uses
  %i.fw = icmp eq <8 x i32> %i.fr, zeroinitializer ; 2 uses
  %i.fx = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.fs, i1 true) ; 2 uses
  %i.fy = sub nuw nsw <8 x i32> splat (i32 121), %i.fx
  %i.fz = xor <8 x i32> %i.fx, splat (i32 31)
  %i.ga = sub nuw nsw <8 x i32> splat (i32 23), %i.fz
  %i.gb = shl <8 x i32> %i.fs, %i.ga
  %i.gc = and <8 x i32> %i.gb, splat (i32 8380416)
  %i.gd = xor <8 x i1> %i.fv, %i.ft
  %i.ge = select <8 x i1> %i.fv, <8 x i1> %i.fw, <8 x i1> zeroinitializer
  %predphi = select <8 x i1> %i.ge, <8 x i32> zeroinitializer, <8 x i32> %i.fy
  %predphi230 = select <8 x i1> %i.gd, <8 x i32> %predphi, <8 x i32> %i.fu
  %predphi232 = select <8 x i1> %i.fw, <8 x i32> zeroinitializer, <8 x i32> %i.gc
  %predphi233 = select <8 x i1> %i.fv, <8 x i32> %predphi232, <8 x i32> %i.fs
  %i.gf = sext <8 x i16> %i.fn to <8 x i32>
  %i.gg = and <8 x i32> %i.gf, splat (i32 -2147483648)
  %i.gh = shl nuw nsw <8 x i32> %predphi230, splat (i32 23)
  %i.gi = select <8 x i1> %i.ft, <8 x i32> splat (i32 2139095040), <8 x i32> %i.gh
  %i.gj = or disjoint <8 x i32> %i.gi, %i.gg
  %i.gk = or disjoint <8 x i32> %i.gj, %predphi233
  %gep465 = getelementptr inbounds [4 x i8], ptr %invariant.gep464, i64 %i.fh
  store <8 x i32> %i.gk, ptr %gep465, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gl = add nuw nsw i64 %i.fh, 8
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader441

.lr.ph.i52.preheader441:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader441, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader441 ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i53
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !107
  %i.gp = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gq = icmp samesign ult i64 %i.gp, %i.av
  call void @llvm.assume(i1 %i.gq)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gp
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gs to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.go to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gt = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gu = zext i16 %i.gt to i32                   ; 2 uses
  %i.gv = lshr i32 %i.gu, 10
  %i.gw = and i32 %i.gv, 31                       ; 3 uses
  %i.gx = and i32 %i.gu, 1023                     ; 2 uses
  %i.gy = shl nuw nsw i32 %i.gx, 13               ; 4 uses
  %i.gz = icmp eq i32 %i.gw, 31
  br i1 %i.gz, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.ha = add nuw nsw i32 %i.gw, 112
  %i.hb = icmp eq i32 %i.gw, 0
  br i1 %i.hb, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.hc = icmp eq i32 %i.gx, 0
  br i1 %i.hc, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gy, i1 true) ; 2 uses
  %i.hd = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.he = shl i32 %i.gy, %.lr.ph.tripcount.i.i
  %i.hf = and i32 %i.he, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.ha, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.hd, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gy, %bb.g ], [ %i.gy, %.lr.ph.i52 ], [ %i.hf, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gt to i32
  %i.hg = and i32 %.signext.i, -2147483648
  %i.hh = shl nuw nsw i32 %.116.i.i, 23
  %i.hi = or disjoint i32 %i.hh, %i.hg
  %i.hj = or i32 %i.hi, %.1.i.i
  %i.hk = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hl = icmp samesign ule i64 %i.hk, %i.bb
  call void @llvm.assume(i1 %i.hl)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hk
  store i32 %i.hj, ptr %i.hm, align 4, !tbaa !161
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
  %invariant.gep460 = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.ba
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph274
  %index287 = phi i64 [ 0, %vector.ph274 ], [ %index.next297, %vector.body286 ] ; 2 uses
  %i.hn = phi i64 [ 0, %vector.ph274 ], [ %i.it, %vector.body286 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index287
  %wide.load289 = load <8 x i8>, ptr %i.ho, align 1, !tbaa !107, !alias.scope !164
  %gep457 = getelementptr i8, ptr %invariant.gep456, i64 %i.hn
  %wide.load290 = load <8 x i8>, ptr %gep457, align 1, !tbaa !107, !alias.scope !165
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.hn
  %wide.load291 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !166
  %i.hp = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.hq = shl nuw nsw <8 x i32> %i.hp, splat (i32 16)
  %i.hr = zext <8 x i8> %wide.load290 to <8 x i32>
  %i.hs = shl nuw nsw <8 x i32> %i.hr, splat (i32 8)
  %i.ht = zext <8 x i8> %wide.load289 to <8 x i32>
  %i.hu = or disjoint <8 x i32> %i.hs, %i.ht
  %i.hv = or disjoint <8 x i32> %i.hu, %i.hq
  %i.hw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hv) ; 3 uses
  %i.hx = lshr exact <8 x i32> %i.hw, splat (i32 8)
  %i.hy = lshr <8 x i32> %i.hw, splat (i32 24)
  %i.hz = and <8 x i32> %i.hy, splat (i32 127)    ; 3 uses
  %i.ia = and <8 x i32> %i.hx, splat (i32 65535)  ; 2 uses
  %i.ib = shl nuw nsw <8 x i32> %i.ia, splat (i32 7) ; 3 uses
  %i.ic = icmp eq <8 x i32> %i.hz, splat (i32 127) ; 2 uses
  %i.id = add nuw nsw <8 x i32> %i.hz, splat (i32 64)
  %i.ie = icmp eq <8 x i32> %i.hz, zeroinitializer ; 3 uses
  %i.if = icmp eq <8 x i32> %i.ia, zeroinitializer ; 2 uses
  %i.ig = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ib, i1 true) ; 2 uses
  %i.ih = sub nuw nsw <8 x i32> splat (i32 73), %i.ig
  %i.ii = xor <8 x i32> %i.ig, splat (i32 31)
  %i.ij = sub nuw nsw <8 x i32> splat (i32 23), %i.ii
  %i.ik = shl <8 x i32> %i.ib, %i.ij
  %i.il = and <8 x i32> %i.ik, splat (i32 8388480)
  %i.im = xor <8 x i1> %i.ie, %i.ic
  %i.in = select <8 x i1> %i.ie, <8 x i1> %i.if, <8 x i1> zeroinitializer
  %predphi292 = select <8 x i1> %i.in, <8 x i32> zeroinitializer, <8 x i32> %i.ih
  %predphi293 = select <8 x i1> %i.im, <8 x i32> %predphi292, <8 x i32> %i.id
  %predphi295 = select <8 x i1> %i.if, <8 x i32> zeroinitializer, <8 x i32> %i.il
  %predphi296 = select <8 x i1> %i.ie, <8 x i32> %predphi295, <8 x i32> %i.ib
  %i.io = and <8 x i32> %i.hw, splat (i32 -2147483648)
  %i.ip = shl nuw nsw <8 x i32> %predphi293, splat (i32 23)
  %i.iq = select <8 x i1> %i.ic, <8 x i32> splat (i32 2139095040), <8 x i32> %i.ip
  %i.ir = or disjoint <8 x i32> %i.iq, %i.io
  %i.is = or disjoint <8 x i32> %i.ir, %predphi296
  %gep461 = getelementptr inbounds [4 x i8], ptr %invariant.gep460, i64 %i.hn
  store <8 x i32> %i.is, ptr %gep461, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next297 = add nuw i64 %index287, 8       ; 2 uses
  %i.it = add nuw nsw i64 %i.hn, 8
  %i.iu = icmp eq i64 %index.next297, %n.vec275
  br i1 %i.iu, label %middle.block299, label %vector.body286, !llvm.loop !133

middle.block299:                                  ; preds = %vector.body286
  br i1 %cmp.n300, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader442

.lr.ph.i60.preheader442:                          ; preds = %.lr.ph.i60.preheader, %middle.block299
  %indvars.iv.i62.ph = phi i64 [ %n.vec275, %middle.block299 ], [ 0, %.lr.ph.i60.preheader ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader442, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i69, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i62.ph, %.lr.ph.i60.preheader442 ] ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i62
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !107
  %i.ix = add nuw nsw i64 %indvars.iv.i62, %i.az  ; 2 uses
  %i.iy = icmp samesign ult i64 %i.ix, %i.av
  call void @llvm.assume(i1 %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ix
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !107
  %i.jb = add nuw nsw i64 %indvars.iv.i62, %i.bc  ; 2 uses
  %i.jc = icmp samesign ult i64 %i.jb, %i.av
  call void @llvm.assume(i1 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.jb
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !107
  %.sroa.5.0.insert.ext.i = zext i8 %i.je to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i63 = zext i8 %i.ja to i32
  %.sroa.4.0.insert.shift.i64 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i63, 8
  %.sroa.0.0.insert.ext.i65 = zext i8 %i.iw to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i64, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %i.jf = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i66) ; 3 uses
  %i.jg = lshr exact i32 %i.jf, 8
  %i.jh = lshr i32 %i.jf, 24
  %i.ji = and i32 %i.jh, 127                      ; 3 uses
  %i.jj = and i32 %i.jg, 65535                    ; 2 uses
  %i.jk = shl nuw nsw i32 %i.jj, 7                ; 4 uses
  %i.jl = icmp eq i32 %i.ji, 127
  br i1 %i.jl, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i60
  %i.jm = add nuw nsw i32 %i.ji, 64
  %i.jn = icmp eq i32 %i.ji, 0
  br i1 %i.jn, label %bb.k, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

bb.k:                                             ; preds = %bb.j
  %i.jo = icmp eq i32 %i.jj, 0
  br i1 %i.jo, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %bb.k
  %.masked.numleadingzeros.i.i72 = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jk, i1 true) ; 2 uses
  %i.jp = sub nuw nsw i32 73, %.masked.numleadingzeros.i.i72
  %.masked.leadingonepos.i.i73 = xor i32 %.masked.numleadingzeros.i.i72, 31
  %.lr.ph.tripcount.i.i74 = sub nuw nsw i32 23, %.masked.leadingonepos.i.i73
  %i.jq = shl i32 %i.jk, %.lr.ph.tripcount.i.i74
  %i.jr = and i32 %i.jq, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i71, %bb.k, %bb.j, %.lr.ph.i60
  %.116.i.i67 = phi i32 [ %i.jm, %bb.j ], [ 255, %.lr.ph.i60 ], [ %i.jp, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %.1.i.i68 = phi i32 [ %i.jk, %bb.j ], [ %i.jk, %.lr.ph.i60 ], [ %i.jr, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %i.js = and i32 %i.jf, -2147483648
  %i.jt = shl nuw nsw i32 %.116.i.i67, 23
  %i.ju = or disjoint i32 %i.jt, %i.js
  %i.jv = or i32 %i.ju, %.1.i.i68
  %i.jw = add nuw nsw i64 %indvars.iv.i62, %i.ba  ; 2 uses
  %i.jx = icmp samesign ule i64 %i.jw, %i.bb
  call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.jw
  store i32 %i.jv, ptr %i.jy, align 4, !tbaa !161
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i81
  br i1 %exitcond.not.i70, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60, !llvm.loop !134

bb.l:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i80.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i80.preheader:                             ; preds = %bb.l
  %brmerge467 = select i1 %min.iters.check337, i1 true, i1 %conflict.rdx353
  br i1 %brmerge467, label %.lr.ph.i80.preheader444, label %vector.ph354

vector.ph354:                                     ; preds = %.lr.ph.i80.preheader
  %invariant.gep448 = getelementptr i8, ptr %i.dk, i64 %i.az
  %invariant.gep450 = getelementptr i8, ptr %i.dk, i64 %i.bc
  %invariant.gep452 = getelementptr i8, ptr %i.dk, i64 %i.bd
  %invariant.gep454 = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.ba
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph354
  %index369 = phi i64 [ 0, %vector.ph354 ], [ %index.next375, %vector.body368 ] ; 2 uses
  %i.jz = phi i64 [ 0, %vector.ph354 ], [ %i.km, %vector.body368 ] ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index369
  %wide.load371 = load <8 x i8>, ptr %i.ka, align 1, !tbaa !107, !alias.scope !169
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %i.jz
  %wide.load372 = load <8 x i8>, ptr %gep449, align 1, !tbaa !107, !alias.scope !170
  %gep451 = getelementptr i8, ptr %invariant.gep450, i64 %i.jz
  %wide.load373 = load <8 x i8>, ptr %gep451, align 1, !tbaa !107, !alias.scope !171
  %gep453 = getelementptr i8, ptr %invariant.gep452, i64 %i.jz
  %wide.load374 = load <8 x i8>, ptr %gep453, align 1, !tbaa !107, !alias.scope !172
  %i.kb = zext <8 x i8> %wide.load374 to <8 x i32>
  %i.kc = shl nuw <8 x i32> %i.kb, splat (i32 24)
  %i.kd = zext <8 x i8> %wide.load373 to <8 x i32>
  %i.ke = shl nuw nsw <8 x i32> %i.kd, splat (i32 16)
  %i.kf = zext <8 x i8> %wide.load372 to <8 x i32>
  %i.kg = shl nuw nsw <8 x i32> %i.kf, splat (i32 8)
  %i.kh = zext <8 x i8> %wide.load371 to <8 x i32>
  %i.ki = or disjoint <8 x i32> %i.kg, %i.kh
  %i.kj = or disjoint <8 x i32> %i.ki, %i.ke
  %i.kk = or disjoint <8 x i32> %i.kj, %i.kc
  %i.kl = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.kk)
  %gep455 = getelementptr inbounds [4 x i8], ptr %invariant.gep454, i64 %i.jz
  store <8 x i32> %i.kl, ptr %gep455, align 4, !tbaa !161, !alias.scope !173, !noalias !174
  %index.next375 = add nuw i64 %index369, 8       ; 2 uses
  %i.km = add nuw nsw i64 %i.jz, 8
  %i.kn = icmp eq i64 %index.next375, %n.vec355
  br i1 %i.kn, label %middle.block377, label %vector.body368, !llvm.loop !141

middle.block377:                                  ; preds = %vector.body368
  br i1 %cmp.n378, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80.preheader444

.lr.ph.i80.preheader444:                          ; preds = %.lr.ph.i80.preheader, %middle.block377
  %indvars.iv.i82.ph = phi i64 [ %n.vec355, %middle.block377 ], [ 0, %.lr.ph.i80.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i82.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader444
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i82.ph
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !107
  %i.kq = add nuw nsw i64 %indvars.iv.i82.ph, %i.az ; 2 uses
  %i.kr = icmp samesign ult i64 %i.kq, %i.av
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.kq
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !107
  %i.ku = add nuw nsw i64 %indvars.iv.i82.ph, %i.bc ; 2 uses
  %i.kv = icmp samesign ult i64 %i.ku, %i.av
  call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ku
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !107
  %i.ky = add nuw nsw i64 %indvars.iv.i82.ph, %i.bd ; 2 uses
  %i.kz = icmp samesign ult i64 %i.ky, %i.av
  call void @llvm.assume(i1 %i.kz)
  %i.la = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ky
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i.prol = zext i8 %i.lb to i32
  %.sroa.6.0.insert.shift.i.prol = shl nuw i32 %.sroa.6.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i83.prol = zext i8 %i.kx to i32
  %.sroa.5.0.insert.shift.i84.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83.prol, 16
  %.sroa.4.0.insert.ext.i85.prol = zext i8 %i.kt to i32
  %.sroa.4.0.insert.shift.i86.prol = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85.prol, 8
  %.sroa.0.0.insert.ext.i88.prol = zext i8 %i.kp to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.4.0.insert.shift.i86.prol, %.sroa.0.0.insert.ext.i88.prol
  %.sroa.4.0.insert.insert.i87.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i84.prol
  %.sroa.0.0.insert.insert.i89.prol = or disjoint i32 %.sroa.4.0.insert.insert.i87.prol, %.sroa.6.0.insert.shift.i.prol
  %i.lc = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89.prol)
  %i.ld = add nuw nsw i64 %indvars.iv.i82.ph, %i.ba ; 2 uses
  %i.le = icmp samesign ule i64 %i.ld, %i.bb
  call void @llvm.assume(i1 %i.le)
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ld
  store i32 %i.lc, ptr %i.lf, align 4, !tbaa !161
  %indvars.iv.next.i90.prol = or disjoint i64 %indvars.iv.i82.ph, 1
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader444
  %indvars.iv.i82.unr = phi i64 [ %indvars.iv.i82.ph, %.lr.ph.i80.preheader444 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i80.prol ]
  %i.lg = icmp eq i64 %wide.trip.count.i81, %.neg
  br i1 %i.lg, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i90.1, %.lr.ph.i80 ], [ %indvars.iv.i82.unr, %.lr.ph.i80.prol.loopexit ] ; 7 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i82
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !107
  %i.lj = add nuw nsw i64 %indvars.iv.i82, %i.az  ; 2 uses
  %i.lk = icmp samesign ult i64 %i.lj, %i.av
  call void @llvm.assume(i1 %i.lk)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.lj
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !107
  %i.ln = add nuw nsw i64 %indvars.iv.i82, %i.bc  ; 2 uses
  %i.lo = icmp samesign ult i64 %i.ln, %i.av
  call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ln
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !107
  %i.lr = add nuw nsw i64 %indvars.iv.i82, %i.bd  ; 2 uses
  %i.ls = icmp samesign ult i64 %i.lr, %i.av
  call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.lr
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i = zext i8 %i.lu to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i83 = zext i8 %i.lq to i32
  %.sroa.5.0.insert.shift.i84 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83, 16
end_hunk_0
