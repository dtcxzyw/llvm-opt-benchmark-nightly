Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DeflateDecompressor?download=true
inline.NumInlined: 161
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_:bb.a
  %n.vec = and i64 %3, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i81, %n.vec
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit
  %i.di = phi i32 [ %.pre200, %.lr.ph ], [ %i.fd, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit ] ; 4 uses
  %i.dj = icmp samesign ult i64 %indvars.iv, %.sroa.7162.0.extract.shift
  call void @llvm.assume(i1 %i.dj)
  %i.dk = mul nuw i64 %indvars.iv, %i.av          ; 3 uses
  %i.dl = getelementptr i8, ptr %i.q, i64 %i.dk   ; 33 uses
  %i.dm = icmp slt i32 %i.di, %i.r
  br i1 %i.dm, label %iter.check, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

iter.check:                                       ; preds = %bb.e
  %i.dn = zext nneg i32 %i.di to i64              ; 12 uses
  %i.do = icmp sgt i32 %i.di, -1
  call void @llvm.assume(i1 %i.do)
  %i.dp = xor i32 %i.di, -1
  %i.dq = add nsw i32 %i.r, %i.dp                 ; 3 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 5 uses
  %min.iters.check391 = icmp ult i32 %i.dq, 7
  br i1 %min.iters.check391, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck392

vector.memcheck392:                               ; preds = %iter.check
  %i.dt = getelementptr i8, ptr %i.q, i64 %i.dk
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dn
  %i.dv = add i64 %i.dk, 1                        ; 2 uses
  %i.dw = xor i32 %i.di, -1
  %i.dx = add nsw i32 %i.r, %i.dw
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dn
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.q, i64 %i.dv
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dy
  %bound0393 = icmp ult ptr %i.du, %i.ed
  %bound1394 = icmp ult ptr %i.dl, %i.eb
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck392
  %min.iters.check396 = icmp ult i32 %i.dq, 31
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph397

vector.ph397:                                     ; preds = %vector.main.loop.iter.check
  %i.ee = and i64 %i.ds, 24
  %n.vec398 = and i64 %i.ds, 8589934560           ; 4 uses
  %i.ef = add nuw nsw i64 %n.vec398, %i.dn        ; 2 uses
  %broadcast.splatinsert399 = insertelement <32 x i64> poison, i64 %i.dn, i64 0
  %broadcast.splat400 = shufflevector <32 x i64> %broadcast.splatinsert399, <32 x i64> poison, <32 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <32 x i64> %broadcast.splat400, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %invariant.gep = getelementptr i8, ptr %i.dl, i64 %i.dn
  br label %vector.body408

vector.body408:                                   ; preds = %vector.ph397, %vector.body408
  %index409 = phi i64 [ 0, %vector.ph397 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %vec.ind410 = phi <32 x i64> [ %induction, %vector.ph397 ], [ %vec.ind.next415, %vector.body408 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index409 ; 2 uses
  %wide.load412 = load <32 x i8>, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.eg = sub nuw nsw <32 x i64> %vec.ind410, %broadcast.splat400
  %i.eh = extractelement <32 x i64> %i.eg, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.eh
  %wide.load413 = load <32 x i8>, ptr %i.ei, align 1, !tbaa !107, !alias.scope !153
  %i.ej = add <32 x i8> %wide.load413, %wide.load412
  store <32 x i8> %i.ej, ptr %gep, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next414 = add nuw i64 %index409, 32      ; 2 uses
  %vec.ind.next415 = add nuw nsw <32 x i64> %vec.ind410, splat (i64 32)
  %i.ek = icmp eq i64 %index.next414, %n.vec398
  br i1 %i.ek, label %middle.block417, label %vector.body408, !llvm.loop !119

middle.block417:                                  ; preds = %vector.body408
  %cmp.n418 = icmp eq i64 %i.ds, %n.vec398
  br i1 %cmp.n418, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block417
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec398, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val419 = phi i64 [ %i.ef, %vec.epilog.iter.check ], [ %i.dn, %vector.main.loop.iter.check ]
  %n.vec420 = and i64 %i.ds, 8589934584           ; 3 uses
  %i.el = add nuw nsw i64 %n.vec420, %i.dn
  %invariant.gep448 = getelementptr i8, ptr %i.dl, i64 %i.dn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index433 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next438, %vec.epilog.vector.body ] ; 2 uses
  %i.em = phi i64 [ %bc.resume.val419, %vec.epilog.ph ], [ %i.eq, %vec.epilog.vector.body ] ; 2 uses
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %index433 ; 2 uses
  %wide.load436 = load <8 x i8>, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %i.en = sub nuw nsw i64 %i.em, %i.dn
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  %wide.load437 = load <8 x i8>, ptr %i.eo, align 1, !tbaa !107, !alias.scope !153
  %i.ep = add <8 x i8> %wide.load437, %wide.load436
  store <8 x i8> %i.ep, ptr %gep449, align 1, !tbaa !107, !alias.scope !152, !noalias !153
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.eq = add nuw nsw i64 %i.em, 8
  %i.er = icmp eq i64 %index.next438, %n.vec420
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n441 = icmp eq i64 %i.ds, %n.vec420
  br i1 %cmp.n441, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck392, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.dn, %iter.check ], [ %i.dn, %vector.memcheck392 ], [ %i.ef, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.es = trunc nuw i64 %indvars.iv.i to i32
  %i.et = icmp sgt i32 %i.r, %i.es
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !107
  %i.ew = sub nuw nsw i64 %indvars.iv.i, %i.dn    ; 2 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.av
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !107
  %i.fa = add i8 %i.ez, %i.ev
  store i8 %i.fa, ptr %i.eu, align 1, !tbaa !107
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fb = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fc = icmp sgt i32 %i.r, %i.fb
  br i1 %i.fc, label %vec.epilog.scalar.ph, label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, !llvm.loop !121

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block417
  %.pre199 = load i32, ptr %i.au, align 8, !tbaa !27
  br label %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit

_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit: ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit, %bb.e
  %i.fd = phi i32 [ %.pre199, %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit.loopexit ], [ %i.di, %bb.e ]
  %i.fe = add nuw nsw i64 %indvars.iv, %.sroa.243.0.extract.shift ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fe, %i.be
  call void @llvm.assume(i1 %i.ff)
  %i.fg = mul nuw nsw i64 %i.fe, %i.bf
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fg ; 8 uses
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
  %invariant.gep466 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = phi i64 [ 0, %vector.ph ], [ %i.gm, %vector.body ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index
  %wide.load = load <8 x i8>, ptr %i.fj, align 1, !tbaa !107, !alias.scope !158
  %gep465 = getelementptr i8, ptr %invariant.gep464, i64 %i.fi
  %wide.load231 = load <8 x i8>, ptr %gep465, align 1, !tbaa !107, !alias.scope !159
  %i.fk = zext <8 x i8> %wide.load231 to <8 x i16>
  %i.fl = shl nuw <8 x i16> %i.fk, splat (i16 8)
  %i.fm = zext <8 x i8> %wide.load to <8 x i16>
  %i.fn = or disjoint <8 x i16> %i.fl, %i.fm
  %i.fo = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fn) ; 2 uses
  %i.fp = zext <8 x i16> %i.fo to <8 x i32>       ; 2 uses
  %i.fq = lshr <8 x i32> %i.fp, splat (i32 10)
  %i.fr = and <8 x i32> %i.fq, splat (i32 31)     ; 3 uses
  %i.fs = and <8 x i32> %i.fp, splat (i32 1023)   ; 2 uses
  %i.ft = shl nuw nsw <8 x i32> %i.fs, splat (i32 13) ; 3 uses
  %i.fu = icmp eq <8 x i32> %i.fr, splat (i32 31) ; 2 uses
  %i.fv = add nuw nsw <8 x i32> %i.fr, splat (i32 112)
  %i.fw = icmp eq <8 x i32> %i.fr, zeroinitializer ; 3 uses
  %i.fx = icmp eq <8 x i32> %i.fs, zeroinitializer
  %i.fy = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ft, i1 true) ; 2 uses
  %i.fz = sub nuw nsw <8 x i32> splat (i32 121), %i.fy
  %i.ga = xor <8 x i32> %i.fy, splat (i32 31)
  %i.gb = sub nuw nsw <8 x i32> splat (i32 23), %i.ga
  %i.gc = shl <8 x i32> %i.ft, %i.gb
  %i.gd = and <8 x i32> %i.gc, splat (i32 8380416)
  %i.ge = xor <8 x i1> %i.fw, %i.fu
  %i.gf = select <8 x i1> %i.fw, <8 x i1> %i.fx, <8 x i1> zeroinitializer ; 2 uses
  %predphi = select <8 x i1> %i.gf, <8 x i32> zeroinitializer, <8 x i32> %i.fz
  %predphi232 = select <8 x i1> %i.ge, <8 x i32> %predphi, <8 x i32> %i.fv
  %predphi234 = select <8 x i1> %i.gf, <8 x i32> zeroinitializer, <8 x i32> %i.gd
  %predphi235 = select <8 x i1> %i.fw, <8 x i32> %predphi234, <8 x i32> %i.ft
  %i.gg = sext <8 x i16> %i.fo to <8 x i32>
  %i.gh = and <8 x i32> %i.gg, splat (i32 -2147483648)
  %i.gi = shl nuw nsw <8 x i32> %predphi232, splat (i32 23)
  %i.gj = select <8 x i1> %i.fu, <8 x i32> splat (i32 2139095040), <8 x i32> %i.gi
  %i.gk = or disjoint <8 x i32> %i.gj, %i.gh
  %i.gl = or disjoint <8 x i32> %i.gk, %predphi235
  %gep467 = getelementptr inbounds [4 x i8], ptr %invariant.gep466, i64 %i.fi
  store <8 x i32> %i.gl, ptr %gep467, align 4, !tbaa !161, !alias.scope !162, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gm = add nuw nsw i64 %i.fi, 8
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i52.preheader443

.lr.ph.i52.preheader443:                          ; preds = %.lr.ph.i52.preheader, %middle.block
  %indvars.iv.i53.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i52.preheader ]
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.preheader443, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader443 ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i53
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !107
  %i.gq = add nuw nsw i64 %indvars.iv.i53, %i.az  ; 2 uses
  %i.gr = icmp samesign ult i64 %i.gq, %i.av
  call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !107
  %.sroa.4.0.insert.ext.i = zext i8 %i.gt to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.gp to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.gu = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.insert.insert.i) ; 2 uses
  %i.gv = zext i16 %i.gu to i32                   ; 2 uses
  %i.gw = lshr i32 %i.gv, 10
  %i.gx = and i32 %i.gw, 31                       ; 3 uses
  %i.gy = and i32 %i.gv, 1023                     ; 2 uses
  %i.gz = shl nuw nsw i32 %i.gy, 13               ; 4 uses
  %i.ha = icmp eq i32 %i.gx, 31
  br i1 %i.ha, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i52
  %i.hb = add nuw nsw i32 %i.gx, 112
  %i.hc = icmp eq i32 %i.gx, 0
  br i1 %i.hc, label %bb.h, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

bb.h:                                             ; preds = %bb.g
  %i.hd = icmp eq i32 %i.gy, 0
  br i1 %i.hd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.masked.numleadingzeros.i.i = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true) ; 2 uses
  %i.he = sub nuw nsw i32 121, %.masked.numleadingzeros.i.i
  %.masked.leadingonepos.i.i = xor i32 %.masked.numleadingzeros.i.i, 31
  %.lr.ph.tripcount.i.i = sub nuw nsw i32 23, %.masked.leadingonepos.i.i
  %i.hf = shl i32 %i.gz, %.lr.ph.tripcount.i.i
  %i.hg = and i32 %i.hf, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i, %bb.h, %bb.g, %.lr.ph.i52
  %.116.i.i = phi i32 [ %i.hb, %bb.g ], [ 255, %.lr.ph.i52 ], [ %i.he, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.1.i.i = phi i32 [ %i.gz, %bb.g ], [ %i.gz, %.lr.ph.i52 ], [ %i.hg, %._crit_edge.i.i ], [ 0, %bb.h ]
  %.signext.i = sext i16 %i.gu to i32
  %i.hh = and i32 %.signext.i, -2147483648
  %i.hi = shl nuw nsw i32 %.116.i.i, 23
  %i.hj = or disjoint i32 %i.hi, %i.hh
  %i.hk = or i32 %i.hj, %.1.i.i
  %i.hl = add nuw nsw i64 %indvars.iv.i53, %i.ba  ; 2 uses
  %i.hm = icmp samesign ule i64 %i.hl, %i.bb
  call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.hl
  store i32 %i.hk, ptr %i.hn, align 4, !tbaa !161
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
  %invariant.gep462 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph276
  %index289 = phi i64 [ 0, %vector.ph276 ], [ %index.next299, %vector.body288 ] ; 2 uses
  %i.ho = phi i64 [ 0, %vector.ph276 ], [ %i.iu, %vector.body288 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index289
  %wide.load291 = load <8 x i8>, ptr %i.hp, align 1, !tbaa !107, !alias.scope !164
  %gep459 = getelementptr i8, ptr %invariant.gep458, i64 %i.ho
  %wide.load292 = load <8 x i8>, ptr %gep459, align 1, !tbaa !107, !alias.scope !165
  %gep461 = getelementptr i8, ptr %invariant.gep460, i64 %i.ho
  %wide.load293 = load <8 x i8>, ptr %gep461, align 1, !tbaa !107, !alias.scope !166
  %i.hq = zext <8 x i8> %wide.load293 to <8 x i32>
  %i.hr = shl nuw nsw <8 x i32> %i.hq, splat (i32 16)
  %i.hs = zext <8 x i8> %wide.load292 to <8 x i32>
  %i.ht = shl nuw nsw <8 x i32> %i.hs, splat (i32 8)
  %i.hu = zext <8 x i8> %wide.load291 to <8 x i32>
  %i.hv = or disjoint <8 x i32> %i.ht, %i.hu
  %i.hw = or disjoint <8 x i32> %i.hv, %i.hr
  %i.hx = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.hw) ; 3 uses
  %i.hy = lshr exact <8 x i32> %i.hx, splat (i32 8)
  %i.hz = lshr <8 x i32> %i.hx, splat (i32 24)
  %i.ia = and <8 x i32> %i.hz, splat (i32 127)    ; 3 uses
  %i.ib = and <8 x i32> %i.hy, splat (i32 65535)  ; 2 uses
  %i.ic = shl nuw nsw <8 x i32> %i.ib, splat (i32 7) ; 3 uses
  %i.id = icmp eq <8 x i32> %i.ia, splat (i32 127) ; 2 uses
  %i.ie = add nuw nsw <8 x i32> %i.ia, splat (i32 64)
  %i.if = icmp eq <8 x i32> %i.ia, zeroinitializer ; 3 uses
  %i.ig = icmp eq <8 x i32> %i.ib, zeroinitializer
  %i.ih = call range(i32 9, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.ic, i1 true) ; 2 uses
  %i.ii = sub nuw nsw <8 x i32> splat (i32 73), %i.ih
  %i.ij = xor <8 x i32> %i.ih, splat (i32 31)
  %i.ik = sub nuw nsw <8 x i32> splat (i32 23), %i.ij
  %i.il = shl <8 x i32> %i.ic, %i.ik
  %i.im = and <8 x i32> %i.il, splat (i32 8388480)
  %i.in = xor <8 x i1> %i.if, %i.id
  %i.io = select <8 x i1> %i.if, <8 x i1> %i.ig, <8 x i1> zeroinitializer ; 2 uses
  %predphi294 = select <8 x i1> %i.io, <8 x i32> zeroinitializer, <8 x i32> %i.ii
  %predphi295 = select <8 x i1> %i.in, <8 x i32> %predphi294, <8 x i32> %i.ie
  %predphi297 = select <8 x i1> %i.io, <8 x i32> zeroinitializer, <8 x i32> %i.im
  %predphi298 = select <8 x i1> %i.if, <8 x i32> %predphi297, <8 x i32> %i.ic
  %i.ip = and <8 x i32> %i.hx, splat (i32 -2147483648)
  %i.iq = shl nuw nsw <8 x i32> %predphi295, splat (i32 23)
  %i.ir = select <8 x i1> %i.id, <8 x i32> splat (i32 2139095040), <8 x i32> %i.iq
  %i.is = or disjoint <8 x i32> %i.ir, %i.ip
  %i.it = or disjoint <8 x i32> %i.is, %predphi298
  %gep463 = getelementptr inbounds [4 x i8], ptr %invariant.gep462, i64 %i.ho
  store <8 x i32> %i.it, ptr %gep463, align 4, !tbaa !161, !alias.scope !167, !noalias !168
  %index.next299 = add nuw i64 %index289, 8       ; 2 uses
  %i.iu = add nuw nsw i64 %i.ho, 8
  %i.iv = icmp eq i64 %index.next299, %n.vec277
  br i1 %i.iv, label %middle.block301, label %vector.body288, !llvm.loop !133

middle.block301:                                  ; preds = %vector.body288
  br i1 %cmp.n302, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60.preheader444

.lr.ph.i60.preheader444:                          ; preds = %.lr.ph.i60.preheader, %middle.block301
  %indvars.iv.i62.ph = phi i64 [ %n.vec277, %middle.block301 ], [ 0, %.lr.ph.i60.preheader ]
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader444, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i69, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i ], [ %indvars.iv.i62.ph, %.lr.ph.i60.preheader444 ] ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i62
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !107
  %i.iy = add nuw nsw i64 %indvars.iv.i62, %i.az  ; 2 uses
  %i.iz = icmp samesign ult i64 %i.iy, %i.av
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.iy
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !107
  %i.jc = add nuw nsw i64 %indvars.iv.i62, %i.bc  ; 2 uses
  %i.jd = icmp samesign ult i64 %i.jc, %i.av
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !107
  %.sroa.5.0.insert.ext.i = zext i8 %i.jf to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i63 = zext i8 %i.jb to i32
  %.sroa.4.0.insert.shift.i64 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i63, 8
  %.sroa.0.0.insert.ext.i65 = zext i8 %i.ix to i32
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i64, %.sroa.0.0.insert.ext.i65
  %.sroa.0.0.insert.insert.i66 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %i.jg = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i66) ; 3 uses
  %i.jh = lshr exact i32 %i.jg, 8
  %i.ji = lshr i32 %i.jg, 24
  %i.jj = and i32 %i.ji, 127                      ; 3 uses
  %i.jk = and i32 %i.jh, 65535                    ; 2 uses
  %i.jl = shl nuw nsw i32 %i.jk, 7                ; 4 uses
  %i.jm = icmp eq i32 %i.jj, 127
  br i1 %i.jm, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i60
  %i.jn = add nuw nsw i32 %i.jj, 64
  %i.jo = icmp eq i32 %i.jj, 0
  br i1 %i.jo, label %bb.k, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

bb.k:                                             ; preds = %bb.j
  %i.jp = icmp eq i32 %i.jk, 0
  br i1 %i.jp, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i, label %._crit_edge.i.i71

._crit_edge.i.i71:                                ; preds = %bb.k
  %.masked.numleadingzeros.i.i72 = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jl, i1 true) ; 2 uses
  %i.jq = sub nuw nsw i32 73, %.masked.numleadingzeros.i.i72
  %.masked.leadingonepos.i.i73 = xor i32 %.masked.numleadingzeros.i.i72, 31
  %.lr.ph.tripcount.i.i74 = sub nuw nsw i32 23, %.masked.leadingonepos.i.i73
  %i.jr = shl i32 %i.jl, %.lr.ph.tripcount.i.i74
  %i.js = and i32 %i.jr, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.i: ; preds = %._crit_edge.i.i71, %bb.k, %bb.j, %.lr.ph.i60
  %.116.i.i67 = phi i32 [ %i.jn, %bb.j ], [ 255, %.lr.ph.i60 ], [ %i.jq, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %.1.i.i68 = phi i32 [ %i.jl, %bb.j ], [ %i.jl, %.lr.ph.i60 ], [ %i.js, %._crit_edge.i.i71 ], [ 0, %bb.k ]
  %i.jt = and i32 %i.jg, -2147483648
  %i.ju = shl nuw nsw i32 %.116.i.i67, 23
  %i.jv = or disjoint i32 %i.ju, %i.jt
  %i.jw = or i32 %i.jv, %.1.i.i68
  %i.jx = add nuw nsw i64 %indvars.iv.i62, %i.ba  ; 2 uses
  %i.jy = icmp samesign ule i64 %i.jx, %i.bb
  call void @llvm.assume(i1 %i.jy)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.jx
  store i32 %i.jw, ptr %i.jz, align 4, !tbaa !161
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %indvars.iv.next.i69, %wide.trip.count.i81
  br i1 %exitcond.not.i70, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i60, !llvm.loop !134

bb.l:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_116decodeDeltaBytesENS_10Array1DRefIhEEiii.exit
  br i1 %i.ay, label %.lr.ph.i80.preheader, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit

.lr.ph.i80.preheader:                             ; preds = %bb.l
  %brmerge469 = select i1 %min.iters.check339, i1 true, i1 %conflict.rdx355
  br i1 %brmerge469, label %.lr.ph.i80.preheader446, label %vector.ph356

vector.ph356:                                     ; preds = %.lr.ph.i80.preheader
  %invariant.gep450 = getelementptr i8, ptr %i.dl, i64 %i.az
  %invariant.gep452 = getelementptr i8, ptr %i.dl, i64 %i.bc
  %invariant.gep454 = getelementptr i8, ptr %i.dl, i64 %i.bd
  %invariant.gep456 = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.ba
  br label %vector.body370

vector.body370:                                   ; preds = %vector.body370, %vector.ph356
  %index371 = phi i64 [ 0, %vector.ph356 ], [ %index.next377, %vector.body370 ] ; 2 uses
  %i.ka = phi i64 [ 0, %vector.ph356 ], [ %i.kn, %vector.body370 ] ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index371
  %wide.load373 = load <8 x i8>, ptr %i.kb, align 1, !tbaa !107, !alias.scope !169
  %gep451 = getelementptr i8, ptr %invariant.gep450, i64 %i.ka
  %wide.load374 = load <8 x i8>, ptr %gep451, align 1, !tbaa !107, !alias.scope !170
  %gep453 = getelementptr i8, ptr %invariant.gep452, i64 %i.ka
  %wide.load375 = load <8 x i8>, ptr %gep453, align 1, !tbaa !107, !alias.scope !171
  %gep455 = getelementptr i8, ptr %invariant.gep454, i64 %i.ka
  %wide.load376 = load <8 x i8>, ptr %gep455, align 1, !tbaa !107, !alias.scope !172
  %i.kc = zext <8 x i8> %wide.load376 to <8 x i32>
  %i.kd = shl nuw <8 x i32> %i.kc, splat (i32 24)
  %i.ke = zext <8 x i8> %wide.load375 to <8 x i32>
  %i.kf = shl nuw nsw <8 x i32> %i.ke, splat (i32 16)
  %i.kg = zext <8 x i8> %wide.load374 to <8 x i32>
  %i.kh = shl nuw nsw <8 x i32> %i.kg, splat (i32 8)
  %i.ki = zext <8 x i8> %wide.load373 to <8 x i32>
  %i.kj = or disjoint <8 x i32> %i.kh, %i.ki
  %i.kk = or disjoint <8 x i32> %i.kj, %i.kf
  %i.kl = or disjoint <8 x i32> %i.kk, %i.kd
  %i.km = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %i.kl)
  %gep457 = getelementptr inbounds [4 x i8], ptr %invariant.gep456, i64 %i.ka
  store <8 x i32> %i.km, ptr %gep457, align 4, !tbaa !161, !alias.scope !173, !noalias !174
  %index.next377 = add nuw i64 %index371, 8       ; 2 uses
  %i.kn = add nuw nsw i64 %i.ka, 8
  %i.ko = icmp eq i64 %index.next377, %n.vec357
  br i1 %i.ko, label %middle.block379, label %vector.body370, !llvm.loop !141

middle.block379:                                  ; preds = %vector.body370
  br i1 %cmp.n380, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80.preheader446

.lr.ph.i80.preheader446:                          ; preds = %.lr.ph.i80.preheader, %middle.block379
  %indvars.iv.i82.ph = phi i64 [ %n.vec357, %middle.block379 ], [ 0, %.lr.ph.i80.preheader ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.i82.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i80.prol.loopexit, label %.lr.ph.i80.prol

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.i80.preheader446
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i82.ph
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !107
  %i.kr = add nuw nsw i64 %indvars.iv.i82.ph, %i.az ; 2 uses
  %i.ks = icmp samesign ult i64 %i.kr, %i.av
  call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !107
  %i.kv = add nuw nsw i64 %indvars.iv.i82.ph, %i.bc ; 2 uses
  %i.kw = icmp samesign ult i64 %i.kv, %i.av
  call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kv
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !107
  %i.kz = add nuw nsw i64 %indvars.iv.i82.ph, %i.bd ; 2 uses
  %i.la = icmp samesign ult i64 %i.kz, %i.av
  call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i.prol = zext i8 %i.lc to i32
  %.sroa.6.0.insert.shift.i.prol = shl nuw i32 %.sroa.6.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i83.prol = zext i8 %i.ky to i32
  %.sroa.5.0.insert.shift.i84.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83.prol, 16
  %.sroa.4.0.insert.ext.i85.prol = zext i8 %i.ku to i32
  %.sroa.4.0.insert.shift.i86.prol = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85.prol, 8
  %.sroa.0.0.insert.ext.i88.prol = zext i8 %i.kq to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.4.0.insert.shift.i86.prol, %.sroa.0.0.insert.ext.i88.prol
  %.sroa.4.0.insert.insert.i87.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i84.prol
  %.sroa.0.0.insert.insert.i89.prol = or disjoint i32 %.sroa.4.0.insert.insert.i87.prol, %.sroa.6.0.insert.shift.i.prol
  %i.ld = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.insert.insert.i89.prol)
  %i.le = add nuw nsw i64 %indvars.iv.i82.ph, %i.ba ; 2 uses
  %i.lf = icmp samesign ule i64 %i.le, %i.bb
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.le
  store i32 %i.ld, ptr %i.lg, align 4, !tbaa !161
  %indvars.iv.next.i90.prol = or disjoint i64 %indvars.iv.i82.ph, 1
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.i80.preheader446
  %indvars.iv.i82.unr = phi i64 [ %indvars.iv.i82.ph, %.lr.ph.i80.preheader446 ], [ %indvars.iv.next.i90.prol, %.lr.ph.i80.prol ]
  %i.lh = icmp eq i64 %wide.trip.count.i81, %.neg
  br i1 %i.lh, label %_ZN8rawspeed12_GLOBAL__N_116decodeFPDeltaRowINS_13ieee_754_20088Binary16EEEvNS_10Array1DRefIKhEEiNS_17CroppedArray1DRefIfEE.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i90.1, %.lr.ph.i80 ], [ %indvars.iv.i82.unr, %.lr.ph.i80.prol.loopexit ] ; 7 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.i82
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !107
  %i.lk = add nuw nsw i64 %indvars.iv.i82, %i.az  ; 2 uses
  %i.ll = icmp samesign ult i64 %i.lk, %i.av
  call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.lk
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !107
  %i.lo = add nuw nsw i64 %indvars.iv.i82, %i.bc  ; 2 uses
  %i.lp = icmp samesign ult i64 %i.lo, %i.av
  call void @llvm.assume(i1 %i.lp)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.lo
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !107
  %i.ls = add nuw nsw i64 %indvars.iv.i82, %i.bd  ; 2 uses
  %i.lt = icmp samesign ult i64 %i.ls, %i.av
  call void @llvm.assume(i1 %i.lt)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ls
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !107
  %.sroa.6.0.insert.ext.i = zext i8 %i.lv to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i83 = zext i8 %i.lr to i32
  %.sroa.5.0.insert.shift.i84 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i83, 16
  %.sroa.4.0.insert.ext.i85 = zext i8 %i.ln to i32
  %.sroa.4.0.insert.shift.i86 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i85, 8
  %.sroa.0.0.insert.ext.i88 = zext i8 %i.lj to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i86, %.sroa.0.0.insert.ext.i88
  %.sroa.4.0.insert.insert.i87 = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i84
  %.sroa.0.0.insert.insert.i89 = or disjoint i32 %.sroa.4.0.insert.insert.i87, %.sroa.6.0.insert.shift.i
end_hunk_0
