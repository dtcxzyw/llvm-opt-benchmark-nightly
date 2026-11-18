Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed15VC5Decompressor7Wavelet15reconstructPassENS_10Array2DRefIKsEES4_:bb.a
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !6854

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next179, %vec.epilog.vector.body ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %index173
  %wide.load175 = load <4 x i16>, ptr %i.dq, align 2, !tbaa !290
  %i.dr = sext <4 x i16> %wide.load175 to <4 x i32> ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index173 ; 3 uses
  %wide.load176 = load <4 x i16>, ptr %i.ds, align 2, !tbaa !290
  %i.dt = sext <4 x i16> %wide.load176 to <4 x i32> ; 2 uses
  %i.du = mul nsw <4 x i32> %i.dt, splat (i32 11)
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.x
  %wide.load177 = load <4 x i16>, ptr %i.dv, align 2, !tbaa !290
  %i.dw = sext <4 x i16> %wide.load177 to <4 x i32>
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.aq
  %wide.load178 = load <4 x i16>, ptr %i.dx, align 2, !tbaa !290
  %i.dy = sext <4 x i16> %wide.load178 to <4 x i32> ; 2 uses
  %i.dz = add nsw <4 x i32> %i.du, splat (i32 4)
  %i.ea = shl nsw <4 x i32> %i.dw, splat (i32 2)  ; 2 uses
  %i.eb = sub nsw <4 x i32> %i.dz, %i.ea
  %i.ec = add nsw <4 x i32> %i.eb, %i.dy
  %i.ed = lshr <4 x i32> %i.ec, splat (i32 3)
  %i.ee = add nsw <4 x i32> %i.ed, %i.dr
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 1)
  %i.eg = mul nsw <4 x i32> %i.dt, splat (i32 5)
  %i.eh = add nsw <4 x i32> %i.eg, splat (i32 4)
  %i.ei = add nsw <4 x i32> %i.eh, %i.ea
  %i.ej = sub nsw <4 x i32> %i.ei, %i.dy
  %i.ek = lshr <4 x i32> %i.ej, splat (i32 3)
  %i.el = sub nsw <4 x i32> %i.ek, %i.dr
  %i.em = lshr <4 x i32> %i.el, splat (i32 1)
  %i.en = trunc <4 x i32> %i.ef to <4 x i16>
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %index173
  store <4 x i16> %i.en, ptr %i.eo, align 2, !tbaa !290
  %i.ep = trunc <4 x i32> %i.em to <4 x i16>
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index173
  store <4 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !290
  %index.next179 = add nuw i64 %index173, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next179, %n.vec166
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6855

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n181, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv108.ph = phi i64 [ 0, %iter.check ], [ %n.vec166, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 9 uses
  br i1 %lcmp.mod446.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.es = icmp samesign ult i64 %indvars.iv108.ph, %i.ae
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv108.ph
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !290
  %i.ev = sext i16 %i.eu to i32                   ; 2 uses
  %i.ew = icmp samesign ult i64 %indvars.iv108.ph, %i.y
  tail call void @llvm.assume(i1 %i.ew)
  %invariant.gep.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv108.ph ; 3 uses
  %i.ex = load i16, ptr %invariant.gep.i.i.i.i.prol, align 2, !tbaa !290
  %i.ey = sext i16 %i.ex to i32                   ; 2 uses
  %i.ez = mul nsw i32 %i.ey, 11
  %gep.1.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.prol, i64 %i.x
  %i.fa = load i16, ptr %gep.1.i.i.i.i.prol, align 2, !tbaa !290
  %i.fb = sext i16 %i.fa to i32
  %gep.2.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.prol, i64 %i.aq
  %i.fc = load i16, ptr %gep.2.i.i.i.i.prol, align 2, !tbaa !290
  %i.fd = sext i16 %i.fc to i32                   ; 2 uses
  %i.fe = add nsw i32 %i.ez, 4
  %i.ff = shl nsw i32 %i.fb, 2                    ; 2 uses
  %i.fg = sub nsw i32 %i.fe, %i.ff
  %i.fh = add nsw i32 %i.fg, %i.fd
  %i.fi = lshr i32 %i.fh, 3
  %i.fj = add nsw i32 %i.fi, %i.ev
  %i.fk = lshr i32 %i.fj, 1
  %i.fl = mul nsw i32 %i.ey, 5
  %i.fm = add nsw i32 %i.fl, 4
  %i.fn = add nsw i32 %i.fm, %i.ff
  %i.fo = sub nsw i32 %i.fn, %i.fd
  %i.fp = lshr i32 %i.fo, 3
  %i.fq = sub nsw i32 %i.fp, %i.ev
  %i.fr = lshr i32 %i.fq, 1
  %i.fs = trunc i32 %i.fk to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv108.ph
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !290
  %i.fu = trunc i32 %i.fr to i16
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv108.ph
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !290
  %indvars.iv.next109.prol = or disjoint i64 %indvars.iv108.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv108.unr = phi i64 [ %indvars.iv108.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next109.prol, %vec.epilog.scalar.ph.prol ]
  %i.fw = icmp eq i64 %indvars.iv108.ph, %i.cm
  br i1 %i.fw, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109.1, %vec.epilog.scalar.ph ], [ %indvars.iv108.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %i.fx = icmp samesign ult i64 %indvars.iv108, %i.ae
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv108
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !290
  %i.ga = sext i16 %i.fz to i32                   ; 2 uses
  %i.gb = icmp samesign ult i64 %indvars.iv108, %i.y
  tail call void @llvm.assume(i1 %i.gb)
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv108 ; 3 uses
  %i.gc = load i16, ptr %invariant.gep.i.i.i.i, align 2, !tbaa !290
  %i.gd = sext i16 %i.gc to i32                   ; 2 uses
  %i.ge = mul nsw i32 %i.gd, 11
  %gep.1.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.x
  %i.gf = load i16, ptr %gep.1.i.i.i.i, align 2, !tbaa !290
  %i.gg = sext i16 %i.gf to i32
  %gep.2.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.aq
  %i.gh = load i16, ptr %gep.2.i.i.i.i, align 2, !tbaa !290
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = add nsw i32 %i.ge, 4
  %i.gk = shl nsw i32 %i.gg, 2                    ; 2 uses
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = add nsw i32 %i.gl, %i.gi
  %i.gn = lshr i32 %i.gm, 3
  %i.go = add nsw i32 %i.gn, %i.ga
  %i.gp = lshr i32 %i.go, 1
  %i.gq = mul nsw i32 %i.gd, 5
  %i.gr = add nsw i32 %i.gq, 4
  %i.gs = add nsw i32 %i.gr, %i.gk
  %i.gt = sub nsw i32 %i.gs, %i.gi
  %i.gu = lshr i32 %i.gt, 3
  %i.gv = sub nsw i32 %i.gu, %i.ga
  %i.gw = lshr i32 %i.gv, 1
  %i.gx = trunc i32 %i.gp to i16
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv108
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !290
  %i.gz = trunc i32 %i.gw to i16
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv108
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !290
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 6 uses
  %i.hb = icmp samesign ult i64 %indvars.iv.next109, %i.ae
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv.next109
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !290
  %i.he = sext i16 %i.hd to i32                   ; 2 uses
  %i.hf = icmp samesign ult i64 %indvars.iv.next109, %i.y
  tail call void @llvm.assume(i1 %i.hf)
  %invariant.gep.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.next109 ; 3 uses
  %i.hg = load i16, ptr %invariant.gep.i.i.i.i.1, align 2, !tbaa !290
  %i.hh = sext i16 %i.hg to i32                   ; 2 uses
  %i.hi = mul nsw i32 %i.hh, 11
  %gep.1.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.1, i64 %i.x
  %i.hj = load i16, ptr %gep.1.i.i.i.i.1, align 2, !tbaa !290
  %i.hk = sext i16 %i.hj to i32
  %gep.2.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.1, i64 %i.aq
  %i.hl = load i16, ptr %gep.2.i.i.i.i.1, align 2, !tbaa !290
  %i.hm = sext i16 %i.hl to i32                   ; 2 uses
  %i.hn = add nsw i32 %i.hi, 4
  %i.ho = shl nsw i32 %i.hk, 2                    ; 2 uses
  %i.hp = sub nsw i32 %i.hn, %i.ho
  %i.hq = add nsw i32 %i.hp, %i.hm
  %i.hr = lshr i32 %i.hq, 3
  %i.hs = add nsw i32 %i.hr, %i.he
  %i.ht = lshr i32 %i.hs, 1
  %i.hu = mul nsw i32 %i.hh, 5
  %i.hv = add nsw i32 %i.hu, 4
  %i.hw = add nsw i32 %i.hv, %i.ho
  %i.hx = sub nsw i32 %i.hw, %i.hm
  %i.hy = lshr i32 %i.hx, 3
  %i.hz = sub nsw i32 %i.hy, %i.he
  %i.ia = lshr i32 %i.hz, 1
  %i.ib = trunc i32 %i.ht to i16
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv.next109
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !290
  %i.id = trunc i32 %i.ia to i16
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next109
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !290
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next109.1, %i.af
  br i1 %exitcond112.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !6856

bb.d:                                             ; preds = %bb.c
  %i.if = add nuw nsw i64 %indvars.iv113, 1
  %i.ig = icmp samesign ult i64 %i.if, %i.aj
  br i1 %i.ig, label %.preheader84, label %.preheader86

.preheader86:                                     ; preds = %bb.d
  br i1 %i.t, label %.loopexit, label %iter.check415

iter.check415:                                    ; preds = %.preheader86
  %i.ih = icmp samesign ult i64 %indvars.iv113, %i.ai
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = mul nuw nsw i64 %indvars.iv113, %i.ah
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %i.ii ; 5 uses
  tail call void @llvm.assume(i1 %i.w)
  %i.ik = add nuw nsw i64 %indvars.iv113, 4294967294
  %i.il = and i64 %i.ik, 4294967295               ; 4 uses
  %i.im = mul nuw nsw i64 %i.il, %i.x             ; 5 uses
  %i.in = add nuw nsw i64 %i.il, 1                ; 2 uses
  %i.io = mul nuw nsw i64 %i.in, %i.x             ; 5 uses
  %i.ip = add nuw nsw i64 %i.il, 2                ; 3 uses
  %i.iq = icmp samesign ult i64 %i.ip, %i.z
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = mul nuw nsw i64 %i.ip, %i.x             ; 5 uses
  %i.is = shl nuw nsw i64 %indvars.iv113, 1       ; 2 uses
  %i.it = mul nuw nsw i64 %i.is, %i.ac
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.it ; 5 uses
  %i.iv = or disjoint i64 %i.is, 1                ; 2 uses
  %i.iw = icmp samesign ult i64 %i.iv, %i.ag
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = mul nuw nsw i64 %i.iv, %i.ac
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.ix ; 5 uses
  br i1 %min.iters.check359, label %vec.epilog.scalar.ph417.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %iter.check415
  %i.iz = mul nuw i64 %i.ip, %i.x
  %i.ja = shl i64 %i.iz, 1                        ; 2 uses
  %i.jb = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ja ; 2 uses
  %i.jc = getelementptr i8, ptr %scevgep355, i64 %i.ja ; 2 uses
  %i.jd = mul i64 %i.in, %i.x
  %i.je = shl i64 %i.jd, 1                        ; 2 uses
  %i.jf = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.je ; 2 uses
  %i.jg = getelementptr i8, ptr %scevgep355, i64 %i.je ; 2 uses
  %i.jh = mul nuw i64 %i.il, %i.x
  %i.ji = shl i64 %i.jh, 1                        ; 2 uses
  %i.jj = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %scevgep355, i64 %i.ji ; 2 uses
  %bound0368 = icmp ult ptr %.sroa.3469.64.copyload, %i.jc
  %bound1369 = icmp ult ptr %i.jb, %scevgep358
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx371 = or i1 %conflict.rdx367, %found.conflict370
  %bound0372 = icmp ult ptr %.sroa.3469.64.copyload, %i.jg
  %bound1373 = icmp ult ptr %i.jf, %scevgep358
  %found.conflict374 = and i1 %bound0372, %bound1373
  %conflict.rdx375 = or i1 %conflict.rdx371, %found.conflict374
  %bound0376 = icmp ult ptr %.sroa.3469.64.copyload, %i.jk
  %bound1377 = icmp ult ptr %i.jj, %scevgep358
  %found.conflict378 = and i1 %bound0376, %bound1377
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict378
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict382
  %bound0384 = icmp ult ptr %i.ad, %i.jc
  %bound1385 = icmp ult ptr %i.jb, %scevgep357
  %found.conflict386 = and i1 %bound0384, %bound1385
  %conflict.rdx387 = or i1 %conflict.rdx383, %found.conflict386
  %bound0388 = icmp ult ptr %i.ad, %i.jg
  %bound1389 = icmp ult ptr %i.jf, %scevgep357
  %found.conflict390 = and i1 %bound0388, %bound1389
  %conflict.rdx391 = or i1 %conflict.rdx387, %found.conflict390
  %bound0392 = icmp ult ptr %i.ad, %i.jk
  %bound1393 = icmp ult ptr %i.jj, %scevgep357
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx395 = or i1 %conflict.rdx391, %found.conflict394
  br i1 %conflict.rdx395, label %vec.epilog.scalar.ph417.preheader, label %vector.main.loop.iter.check396

vector.main.loop.iter.check396:                   ; preds = %vector.memcheck360
  br i1 %min.iters.check397, label %vec.epilog.ph419, label %vector.body404

vector.body404:                                   ; preds = %vector.main.loop.iter.check396, %vector.body404
  %index405 = phi i64 [ %index.next411, %vector.body404 ], [ 0, %vector.main.loop.iter.check396 ] ; 5 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %index405
  %wide.load407 = load <16 x i16>, ptr %i.jl, align 2, !tbaa !290, !alias.scope !6879
  %i.jm = sext <16 x i16> %wide.load407 to <16 x i32> ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index405 ; 3 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.im
  %wide.load408 = load <16 x i16>, ptr %i.jo, align 2, !tbaa !290, !alias.scope !6880
  %i.jp = sext <16 x i16> %wide.load408 to <16 x i32> ; 2 uses
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.io
  %wide.load409 = load <16 x i16>, ptr %i.jq, align 2, !tbaa !290, !alias.scope !6881
  %i.jr = sext <16 x i16> %wide.load409 to <16 x i32>
  %i.js = shl nsw <16 x i32> %i.jr, splat (i32 2) ; 2 uses
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.ir
  %wide.load410 = load <16 x i16>, ptr %i.jt, align 2, !tbaa !290, !alias.scope !6882
  %i.ju = sext <16 x i16> %wide.load410 to <16 x i32> ; 2 uses
  %i.jv = mul nsw <16 x i32> %i.ju, splat (i32 5)
  %i.jw = sub nsw <16 x i32> %i.js, %i.jp
  %i.jx = add nsw <16 x i32> %i.jw, splat (i32 4)
  %i.jy = add nsw <16 x i32> %i.jx, %i.jv
  %i.jz = lshr <16 x i32> %i.jy, splat (i32 3)
  %i.ka = add nsw <16 x i32> %i.jz, %i.jm
  %i.kb = lshr <16 x i32> %i.ka, splat (i32 1)
  %i.kc = mul nsw <16 x i32> %i.ju, splat (i32 11)
  %i.kd = add nsw <16 x i32> %i.jp, splat (i32 4)
  %i.ke = sub nsw <16 x i32> %i.kd, %i.js
  %i.kf = add nsw <16 x i32> %i.ke, %i.kc
  %i.kg = lshr <16 x i32> %i.kf, splat (i32 3)
  %i.kh = sub nsw <16 x i32> %i.kg, %i.jm
  %i.ki = lshr <16 x i32> %i.kh, splat (i32 1)
  %i.kj = trunc <16 x i32> %i.kb to <16 x i16>
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %index405
  store <16 x i16> %i.kj, ptr %i.kk, align 2, !tbaa !290, !alias.scope !6883, !noalias !6884
  %i.kl = trunc <16 x i32> %i.ki to <16 x i16>
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %index405
  store <16 x i16> %i.kl, ptr %i.km, align 2, !tbaa !290, !alias.scope !6885, !noalias !6886
  %index.next411 = add nuw i64 %index405, 16      ; 2 uses
  %i.kn = icmp eq i64 %index.next411, %n.vec399
  br i1 %i.kn, label %middle.block413, label %vector.body404, !llvm.loop !6864

middle.block413:                                  ; preds = %vector.body404
  br i1 %cmp.n414, label %.loopexit, label %vec.epilog.iter.check416

vec.epilog.iter.check416:                         ; preds = %middle.block413
  br i1 %min.epilog.iters.check418, label %vec.epilog.scalar.ph417.preheader, label %vec.epilog.ph419, !prof !294

vec.epilog.ph419:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check416
  %vec.epilog.resume.val420 = phi i64 [ %n.vec399, %vec.epilog.iter.check416 ], [ 0, %vector.main.loop.iter.check396 ]
  br label %vec.epilog.vector.body429

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429, %vec.epilog.ph419
  %index430 = phi i64 [ %vec.epilog.resume.val420, %vec.epilog.ph419 ], [ %index.next436, %vec.epilog.vector.body429 ] ; 5 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %index430
  %wide.load432 = load <4 x i16>, ptr %i.ko, align 2, !tbaa !290, !alias.scope !6879
  %i.kp = sext <4 x i16> %wide.load432 to <4 x i32> ; 2 uses
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index430 ; 3 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.im
  %wide.load433 = load <4 x i16>, ptr %i.kr, align 2, !tbaa !290, !alias.scope !6880
  %i.ks = sext <4 x i16> %wide.load433 to <4 x i32> ; 2 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.io
  %wide.load434 = load <4 x i16>, ptr %i.kt, align 2, !tbaa !290, !alias.scope !6881
  %i.ku = sext <4 x i16> %wide.load434 to <4 x i32>
  %i.kv = shl nsw <4 x i32> %i.ku, splat (i32 2)  ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kq, i64 %i.ir
  %wide.load435 = load <4 x i16>, ptr %i.kw, align 2, !tbaa !290, !alias.scope !6882
  %i.kx = sext <4 x i16> %wide.load435 to <4 x i32> ; 2 uses
  %i.ky = mul nsw <4 x i32> %i.kx, splat (i32 5)
  %i.kz = sub nsw <4 x i32> %i.kv, %i.ks
  %i.la = add nsw <4 x i32> %i.kz, splat (i32 4)
  %i.lb = add nsw <4 x i32> %i.la, %i.ky
  %i.lc = lshr <4 x i32> %i.lb, splat (i32 3)
  %i.ld = add nsw <4 x i32> %i.lc, %i.kp
  %i.le = lshr <4 x i32> %i.ld, splat (i32 1)
  %i.lf = mul nsw <4 x i32> %i.kx, splat (i32 11)
  %i.lg = add nsw <4 x i32> %i.ks, splat (i32 4)
  %i.lh = sub nsw <4 x i32> %i.lg, %i.kv
  %i.li = add nsw <4 x i32> %i.lh, %i.lf
  %i.lj = lshr <4 x i32> %i.li, splat (i32 3)
  %i.lk = sub nsw <4 x i32> %i.lj, %i.kp
  %i.ll = lshr <4 x i32> %i.lk, splat (i32 1)
  %i.lm = trunc <4 x i32> %i.le to <4 x i16>
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %index430
  store <4 x i16> %i.lm, ptr %i.ln, align 2, !tbaa !290, !alias.scope !6883, !noalias !6884
  %i.lo = trunc <4 x i32> %i.ll to <4 x i16>
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %index430
  store <4 x i16> %i.lo, ptr %i.lp, align 2, !tbaa !290, !alias.scope !6885, !noalias !6886
  %index.next436 = add nuw i64 %index430, 4       ; 2 uses
  %i.lq = icmp eq i64 %index.next436, %n.vec421
  br i1 %i.lq, label %vec.epilog.middle.block438, label %vec.epilog.vector.body429, !llvm.loop !6865

vec.epilog.middle.block438:                       ; preds = %vec.epilog.vector.body429
  br i1 %cmp.n439, label %.loopexit, label %vec.epilog.scalar.ph417.preheader

vec.epilog.scalar.ph417.preheader:                ; preds = %iter.check415, %vector.memcheck360, %vec.epilog.iter.check416, %vec.epilog.middle.block438
  %indvars.iv.ph = phi i64 [ 0, %iter.check415 ], [ 0, %vector.memcheck360 ], [ %n.vec399, %vec.epilog.iter.check416 ], [ %n.vec421, %vec.epilog.middle.block438 ] ; 9 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph417.prol.loopexit, label %vec.epilog.scalar.ph417.prol

vec.epilog.scalar.ph417.prol:                     ; preds = %vec.epilog.scalar.ph417.preheader
  %i.lr = icmp samesign ult i64 %indvars.iv.ph, %i.ae
  tail call void @llvm.assume(i1 %i.lr)
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %indvars.iv.ph
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !290
  %i.lu = sext i16 %i.lt to i32                   ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.ph, %i.y
  tail call void @llvm.assume(i1 %i.lv)
  %invariant.gep.i.i.i.i56.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.ph ; 3 uses
  %gep.i.i.i.i57.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.im
  %i.lw = load i16, ptr %gep.i.i.i.i57.prol, align 2, !tbaa !290
  %i.lx = sext i16 %i.lw to i32                   ; 2 uses
  %gep.1.i.i.i.i58.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.io
  %i.ly = load i16, ptr %gep.1.i.i.i.i58.prol, align 2, !tbaa !290
  %i.lz = sext i16 %i.ly to i32
  %i.ma = shl nsw i32 %i.lz, 2                    ; 2 uses
  %gep.2.i.i.i.i59.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.ir
  %i.mb = load i16, ptr %gep.2.i.i.i.i59.prol, align 2, !tbaa !290
  %i.mc = sext i16 %i.mb to i32                   ; 2 uses
  %i.md = mul nsw i32 %i.mc, 5
  %reass.sub.prol = sub nsw i32 %i.ma, %i.lx
  %i.me = add nsw i32 %reass.sub.prol, 4
  %i.mf = add nsw i32 %i.me, %i.md
  %i.mg = lshr i32 %i.mf, 3
  %i.mh = add nsw i32 %i.mg, %i.lu
  %i.mi = lshr i32 %i.mh, 1
  %i.mj = mul nsw i32 %i.mc, 11
  %i.mk = add nsw i32 %i.lx, 4
  %i.ml = sub nsw i32 %i.mk, %i.ma
  %i.mm = add nsw i32 %i.ml, %i.mj
  %i.mn = lshr i32 %i.mm, 3
  %i.mo = sub nsw i32 %i.mn, %i.lu
  %i.mp = lshr i32 %i.mo, 1
  %i.mq = trunc i32 %i.mi to i16
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.ph
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !290
  %i.ms = trunc i32 %i.mp to i16
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %indvars.iv.ph
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !290
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph417.prol.loopexit

vec.epilog.scalar.ph417.prol.loopexit:            ; preds = %vec.epilog.scalar.ph417.prol, %vec.epilog.scalar.ph417.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph417.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph417.prol ]
  %i.mu = icmp eq i64 %indvars.iv.ph, %i.bz
  br i1 %i.mu, label %.loopexit, label %vec.epilog.scalar.ph417

.preheader84:                                     ; preds = %bb.d
  br i1 %i.t, label %.loopexit, label %iter.check281

iter.check281:                                    ; preds = %.preheader84
  %i.mv = icmp samesign ult i64 %indvars.iv113, %i.ai
  tail call void @llvm.assume(i1 %i.mv)
  %i.mw = mul nuw nsw i64 %indvars.iv113, %i.ah
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %i.mw ; 5 uses
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.w)
  %i.my = add nuw nsw i64 %indvars.iv113, 4294967295
  %i.mz = and i64 %i.my, 4294967295               ; 3 uses
  %i.na = mul nuw nsw i64 %i.mz, %i.x             ; 5 uses
  %i.nb = mul nuw nsw i64 %indvars.iv113, %i.x    ; 5 uses
  %i.nc = add nuw nsw i64 %i.mz, 2                ; 3 uses
  %i.nd = icmp samesign ult i64 %i.nc, %i.z
  tail call void @llvm.assume(i1 %i.nd)
  %i.ne = mul nuw nsw i64 %i.nc, %i.x             ; 5 uses
  %i.nf = shl nuw nsw i64 %indvars.iv113, 1       ; 2 uses
  %i.ng = mul nuw nsw i64 %i.nf, %i.ac
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.ng ; 5 uses
  %i.ni = or disjoint i64 %i.nf, 1                ; 2 uses
  %i.nj = icmp samesign ult i64 %i.ni, %i.ag
  tail call void @llvm.assume(i1 %i.nj)
  %i.nk = mul nuw nsw i64 %i.ni, %i.ac
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.nk ; 5 uses
  br i1 %min.iters.check228, label %vec.epilog.scalar.ph283.preheader, label %vector.memcheck229

vector.memcheck229:                               ; preds = %iter.check281
  %i.nm = mul nuw i64 %i.nc, %i.x
  %i.nn = shl i64 %i.nm, 1                        ; 2 uses
  %i.no = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.nn ; 2 uses
  %i.np = getelementptr i8, ptr %scevgep224, i64 %i.nn ; 2 uses
  %i.nq = mul nuw i64 %i.mz, %i.x
  %i.nr = shl i64 %i.nq, 1                        ; 2 uses
  %i.ns = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.nr ; 2 uses
  %i.nt = getelementptr i8, ptr %scevgep224, i64 %i.nr ; 2 uses
  %bound0234 = icmp ult ptr %.sroa.3469.64.copyload, %i.np
  %bound1235 = icmp ult ptr %i.no, %scevgep227
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx241.reass = or i1 %found.conflict236, %invariant.op
  %bound0242 = icmp ult ptr %.sroa.3469.64.copyload, %i.nt
  %bound1243 = icmp ult ptr %i.ns, %scevgep227
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241.reass, %found.conflict244
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %i.ad, %i.np
  %bound1251 = icmp ult ptr %i.no, %scevgep226
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %i.ad, %i.nt
  %bound1259 = icmp ult ptr %i.ns, %scevgep226
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  br i1 %conflict.rdx261, label %vec.epilog.scalar.ph283.preheader, label %vector.main.loop.iter.check262

vector.main.loop.iter.check262:                   ; preds = %vector.memcheck229
  br i1 %min.iters.check263, label %vec.epilog.ph285, label %vector.body270

vector.body270:                                   ; preds = %vector.main.loop.iter.check262, %vector.body270
  %index271 = phi i64 [ %index.next277, %vector.body270 ], [ 0, %vector.main.loop.iter.check262 ] ; 5 uses
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %index271
  %wide.load273 = load <16 x i16>, ptr %i.nu, align 2, !tbaa !290, !alias.scope !6887
  %i.nv = sext <16 x i16> %wide.load273 to <16 x i32> ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index271 ; 3 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.na
  %wide.load274 = load <16 x i16>, ptr %i.nx, align 2, !tbaa !290, !alias.scope !6888
  %i.ny = sext <16 x i16> %wide.load274 to <16 x i32> ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.nb
  %wide.load275 = load <16 x i16>, ptr %i.nz, align 2, !tbaa !290, !alias.scope !6889
  %i.oa = sext <16 x i16> %wide.load275 to <16 x i32>
  %i.ob = shl nsw <16 x i32> %i.oa, splat (i32 3) ; 2 uses
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.ne
  %wide.load276 = load <16 x i16>, ptr %i.oc, align 2, !tbaa !290, !alias.scope !6890
  %i.od = sext <16 x i16> %wide.load276 to <16 x i32> ; 2 uses
  %i.oe = add nsw <16 x i32> %i.ny, splat (i32 4)
  %i.of = add nsw <16 x i32> %i.oe, %i.ob
  %i.og = sub nsw <16 x i32> %i.of, %i.od
  %i.oh = lshr <16 x i32> %i.og, splat (i32 3)
  %i.oi = add nsw <16 x i32> %i.oh, %i.nv
  %i.oj = lshr <16 x i32> %i.oi, splat (i32 1)
  %i.ok = sub nsw <16 x i32> %i.ob, %i.ny
  %i.ol = add nsw <16 x i32> %i.ok, splat (i32 4)
  %i.om = add nsw <16 x i32> %i.ol, %i.od
  %i.on = lshr <16 x i32> %i.om, splat (i32 3)
  %i.oo = sub nsw <16 x i32> %i.on, %i.nv
  %i.op = lshr <16 x i32> %i.oo, splat (i32 1)
  %i.oq = trunc <16 x i32> %i.oj to <16 x i16>
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %index271
  store <16 x i16> %i.oq, ptr %i.or, align 2, !tbaa !290, !alias.scope !6891, !noalias !6892
  %i.os = trunc <16 x i32> %i.op to <16 x i16>
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.nl, i64 %index271
  store <16 x i16> %i.os, ptr %i.ot, align 2, !tbaa !290, !alias.scope !6893, !noalias !6894
  %index.next277 = add nuw i64 %index271, 16      ; 2 uses
  %i.ou = icmp eq i64 %index.next277, %n.vec265
  br i1 %i.ou, label %middle.block279, label %vector.body270, !llvm.loop !6873

middle.block279:                                  ; preds = %vector.body270
  br i1 %cmp.n280, label %.loopexit, label %vec.epilog.iter.check282

vec.epilog.iter.check282:                         ; preds = %middle.block279
  br i1 %min.epilog.iters.check284, label %vec.epilog.scalar.ph283.preheader, label %vec.epilog.ph285, !prof !294

vec.epilog.ph285:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check282
  %vec.epilog.resume.val286 = phi i64 [ %n.vec265, %vec.epilog.iter.check282 ], [ 0, %vector.main.loop.iter.check262 ]
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph285
  %index296 = phi i64 [ %vec.epilog.resume.val286, %vec.epilog.ph285 ], [ %index.next302, %vec.epilog.vector.body295 ] ; 5 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %index296
  %wide.load298 = load <4 x i16>, ptr %i.ov, align 2, !tbaa !290, !alias.scope !6887
  %i.ow = sext <4 x i16> %wide.load298 to <4 x i32> ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index296 ; 3 uses
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %i.na
  %wide.load299 = load <4 x i16>, ptr %i.oy, align 2, !tbaa !290, !alias.scope !6888
  %i.oz = sext <4 x i16> %wide.load299 to <4 x i32> ; 2 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %i.nb
  %wide.load300 = load <4 x i16>, ptr %i.pa, align 2, !tbaa !290, !alias.scope !6889
  %i.pb = sext <4 x i16> %wide.load300 to <4 x i32>
  %i.pc = shl nsw <4 x i32> %i.pb, splat (i32 3)  ; 2 uses
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %i.ne
  %wide.load301 = load <4 x i16>, ptr %i.pd, align 2, !tbaa !290, !alias.scope !6890
  %i.pe = sext <4 x i16> %wide.load301 to <4 x i32> ; 2 uses
  %i.pf = add nsw <4 x i32> %i.oz, splat (i32 4)
  %i.pg = add nsw <4 x i32> %i.pf, %i.pc
  %i.ph = sub nsw <4 x i32> %i.pg, %i.pe
  %i.pi = lshr <4 x i32> %i.ph, splat (i32 3)
  %i.pj = add nsw <4 x i32> %i.pi, %i.ow
  %i.pk = lshr <4 x i32> %i.pj, splat (i32 1)
  %i.pl = sub nsw <4 x i32> %i.pc, %i.oz
  %i.pm = add nsw <4 x i32> %i.pl, splat (i32 4)
  %i.pn = add nsw <4 x i32> %i.pm, %i.pe
  %i.po = lshr <4 x i32> %i.pn, splat (i32 3)
  %i.pp = sub nsw <4 x i32> %i.po, %i.ow
  %i.pq = lshr <4 x i32> %i.pp, splat (i32 1)
  %i.pr = trunc <4 x i32> %i.pk to <4 x i16>
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %index296
  store <4 x i16> %i.pr, ptr %i.ps, align 2, !tbaa !290, !alias.scope !6891, !noalias !6892
  %i.pt = trunc <4 x i32> %i.pq to <4 x i16>
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.nl, i64 %index296
  store <4 x i16> %i.pt, ptr %i.pu, align 2, !tbaa !290, !alias.scope !6893, !noalias !6894
  %index.next302 = add nuw i64 %index296, 4       ; 2 uses
  %i.pv = icmp eq i64 %index.next302, %n.vec287
  br i1 %i.pv, label %vec.epilog.middle.block304, label %vec.epilog.vector.body295, !llvm.loop !6874

vec.epilog.middle.block304:                       ; preds = %vec.epilog.vector.body295
  br i1 %cmp.n305, label %.loopexit, label %vec.epilog.scalar.ph283.preheader

vec.epilog.scalar.ph283.preheader:                ; preds = %iter.check281, %vector.memcheck229, %vec.epilog.iter.check282, %vec.epilog.middle.block304
  %indvars.iv103.ph = phi i64 [ 0, %iter.check281 ], [ 0, %vector.memcheck229 ], [ %n.vec265, %vec.epilog.iter.check282 ], [ %n.vec287, %vec.epilog.middle.block304 ] ; 9 uses
  br i1 %lcmp.mod444.not, label %vec.epilog.scalar.ph283.prol.loopexit, label %vec.epilog.scalar.ph283.prol

vec.epilog.scalar.ph283.prol:                     ; preds = %vec.epilog.scalar.ph283.preheader
  %i.pw = icmp samesign ult i64 %indvars.iv103.ph, %i.ae
  tail call void @llvm.assume(i1 %i.pw)
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv103.ph
  %i.py = load i16, ptr %i.px, align 2, !tbaa !290
  %i.pz = sext i16 %i.py to i32                   ; 2 uses
  %i.qa = icmp samesign ult i64 %indvars.iv103.ph, %i.y
  tail call void @llvm.assume(i1 %i.qa)
  %invariant.gep.i.i.i.i33.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv103.ph ; 3 uses
  %gep.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.na
  %i.qb = load i16, ptr %gep.i.i.i.i.prol, align 2, !tbaa !290
  %i.qc = sext i16 %i.qb to i32                   ; 2 uses
  %gep.1.i.i.i.i34.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.nb
  %i.qd = load i16, ptr %gep.1.i.i.i.i34.prol, align 2, !tbaa !290
  %i.qe = sext i16 %i.qd to i32
  %i.qf = shl nsw i32 %i.qe, 3                    ; 2 uses
  %gep.2.i.i.i.i35.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.ne
  %i.qg = load i16, ptr %gep.2.i.i.i.i35.prol, align 2, !tbaa !290
  %i.qh = sext i16 %i.qg to i32                   ; 2 uses
  %i.qi = add nsw i32 %i.qc, 4
  %i.qj = add nsw i32 %i.qi, %i.qf
  %i.qk = sub nsw i32 %i.qj, %i.qh
  %i.ql = lshr i32 %i.qk, 3
  %i.qm = add nsw i32 %i.ql, %i.pz
  %i.qn = lshr i32 %i.qm, 1
  %reass.sub99.prol = sub nsw i32 %i.qf, %i.qc
  %i.qo = add nsw i32 %reass.sub99.prol, 4
  %i.qp = add nsw i32 %i.qo, %i.qh
  %i.qq = lshr i32 %i.qp, 3
  %i.qr = sub nsw i32 %i.qq, %i.pz
  %i.qs = lshr i32 %i.qr, 1
  %i.qt = trunc i32 %i.qn to i16
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.nh, i64 %indvars.iv103.ph
  store i16 %i.qt, ptr %i.qu, align 2, !tbaa !290
  %i.qv = trunc i32 %i.qs to i16
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.nl, i64 %indvars.iv103.ph
  store i16 %i.qv, ptr %i.qw, align 2, !tbaa !290
  %indvars.iv.next104.prol = or disjoint i64 %indvars.iv103.ph, 1
  br label %vec.epilog.scalar.ph283.prol.loopexit

vec.epilog.scalar.ph283.prol.loopexit:            ; preds = %vec.epilog.scalar.ph283.prol, %vec.epilog.scalar.ph283.preheader
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %vec.epilog.scalar.ph283.preheader ], [ %indvars.iv.next104.prol, %vec.epilog.scalar.ph283.prol ]
  %i.qx = icmp eq i64 %indvars.iv103.ph, %i.cb
  br i1 %i.qx, label %.loopexit, label %vec.epilog.scalar.ph283

vec.epilog.scalar.ph283:                          ; preds = %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %vec.epilog.scalar.ph283 ], [ %indvars.iv103.unr, %vec.epilog.scalar.ph283.prol.loopexit ] ; 8 uses
  %i.qy = icmp samesign ult i64 %indvars.iv103, %i.ae
  tail call void @llvm.assume(i1 %i.qy)
  %i.qz = getelementptr inbounds nuw [2 x i8], ptr %i.mx, i64 %indvars.iv103
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !290
  %i.rb = sext i16 %i.ra to i32                   ; 2 uses
  %i.rc = icmp samesign ult i64 %indvars.iv103, %i.y
  tail call void @llvm.assume(i1 %i.rc)
  %invariant.gep.i.i.i.i33 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv103 ; 3 uses
  %gep.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33, i64 %i.na
end_hunk_0
begin_hunk_1_@_ZN8rawspeed15VC5Decompressor7Wavelet15reconstructPassENS_10Array2DRefIKsEES4_:bb.a
  %i.us = lshr i32 %i.ur, 3
  %i.ut = add nsw i32 %i.us, %i.ug
  %i.uu = lshr i32 %i.ut, 1
  %i.uv = mul nsw i32 %i.uo, 11
  %i.uw = add nsw i32 %i.uj, 4
  %i.ux = sub nsw i32 %i.uw, %i.um
  %i.uy = add nsw i32 %i.ux, %i.uv
  %i.uz = lshr i32 %i.uy, 3
  %i.va = sub nsw i32 %i.uz, %i.ug
  %i.vb = lshr i32 %i.va, 1
  %i.vc = trunc i32 %i.uu to i16
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %indvars.iv.next
  store i16 %i.vc, ptr %i.vd, align 2, !tbaa !290
  %i.ve = trunc i32 %i.vb to i16
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %indvars.iv.next
  store i16 %i.ve, ptr %i.vf, align 2, !tbaa !290
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.af
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph417, !llvm.loop !6876

.loopexit:                                        ; preds = %vec.epilog.scalar.ph417.prol.loopexit, %vec.epilog.scalar.ph417, %vec.epilog.scalar.ph283.prol.loopexit, %vec.epilog.scalar.ph283, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block413, %vec.epilog.middle.block438, %middle.block279, %vec.epilog.middle.block304, %middle.block, %vec.epilog.middle.block, %.preheader86, %.preheader84, %.preheader
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next114, %i.aj
  br i1 %exitcond119.not, label %._crit_edge, label %bb.c, !llvm.loop !6877

bb.e:                                             ; preds = %bb.a
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  tail call void @__clang_call_terminate(ptr %i.vh) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5Decompressor8BandDataC2Eii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  %i.b = mul nsw i32 %2, %1                       ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #32
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i, label %.noexc4.thread, label %_ZNSt16allocator_traitsIN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE8allocateERS3_m.exit.i.i.i.i.i

.noexc4.thread:                                   ; preds = %_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.e = getelementptr inbounds nuw [2 x i8], ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.f, align 8, !tbaa !296, !noalias !6897
  br label %bb.c

_ZNSt16allocator_traitsIN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE8allocateERS3_m.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.g = shl nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33
          to label %.noexc4 unwind label %bb.d    ; 4 uses

.noexc4:                                          ; preds = %_ZNSt16allocator_traitsIN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE8allocateERS3_m.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !297, !noalias !6897 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !296, !noalias !6897
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.a, align 8, !tbaa !297, !noalias !6897
  store ptr %scevgep.i.i.i.i, ptr %i.j, align 8, !tbaa !6898, !noalias !6897
  store ptr %i.i, ptr %i.k, align 8, !tbaa !296, !noalias !6897
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc4
  %i.l = ptrtoint ptr %.pre5 to i64
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.n) #34, !noalias !6897
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !297, !noalias !6897
  br label %bb.c

bb.c:                                             ; preds = %.noexc4.thread, %bb.b, %.noexc4
  %i.o = phi ptr [ %.pre.i, %bb.b ], [ %i.h, %.noexc4 ], [ null, %.noexc4.thread ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !288, !alias.scope !6897
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.b, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !289, !alias.scope !6897
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.q, align 8, !tbaa !300, !alias.scope !6897
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %1, ptr %i.r, align 4, !tbaa !301, !alias.scope !6897
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.s, align 8, !tbaa !302, !alias.scope !6897
  %i.t = icmp sgt i32 %1, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %i.w)
  ret void

bb.d:                                             ; preds = %_ZNSt16allocator_traitsIN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEE8allocateERS3_m.exit.i.i.i.i.i, %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !296
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #34
  br label %_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEED2Ev.exit

_ZNSt6vectorIsN8rawspeed27DefaultInitAllocatorAdaptorIsSaIsEEEED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.x
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #35 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibb(ptr dead_on_unwind noalias nonnull writable sret(%"struct.rawspeed::VC5Decompressor::BandData") align 8 %0, ptr nofree noundef readonly byval(%"class.rawspeed::Array2DRef.2") align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::Array2DRef.2") align 8 captures(none) %2, i32 noundef %3, i1 noundef zeroext %4, i1 zeroext %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !285  ; 5 uses
  %i.c = icmp sgt i32 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !286  ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287  ; 3 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sge i32 %i.h, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = shl nuw nsw i32 %i.b, 1
  invoke void @_ZN8rawspeed15VC5Decompressor8BandDataC2Eii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.k, i32 noundef %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !288 ; 5 uses
  %.sroa.1856.32.copyload = load ptr, ptr %2, align 8, !tbaa !288 ; 5 uses
  %.sroa.4265.72.copyload = load ptr, ptr %i.l, align 8, !tbaa !288 ; 6 uses
  %.sroa.4968.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4968.72.copyload = load i32, ptr %.sroa.4968.72..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.52.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.52.72.copyload = load i32, ptr %.sroa.52.72..sroa_idx, align 4, !tbaa !289 ; 7 uses
  %.sroa.55.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.55.72.copyload = load i32, ptr %.sroa.55.72..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.m = icmp sgt i32 %.sroa.52.72.copyload, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sgt i32 %.sroa.55.72.copyload, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp ne i32 %.sroa.4968.72.copyload, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %.sroa.4968.72.copyload, %.sroa.52.72.copyload
  tail call void @llvm.assume(i1 %i.p)
  %.not = icmp eq i32 %.sroa.55.72.copyload, 0
  br i1 %.not, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.b
  %.sroa.46.72..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.72.copyload = load i32, ptr %.sroa.46.72..sroa_idx, align 8, !tbaa !289
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !289
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.953.0.copyload = load i32, ptr %.sroa.953.0..sroa_idx, align 8, !tbaa !289 ; 2 uses
  %i.q = icmp sge i32 %.sroa.953.0.copyload, %.sroa.12.0.copyload
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp samesign ugt i32 %.sroa.52.72.copyload, 1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = lshr i32 %.sroa.52.72.copyload, 1        ; 2 uses
  %i.t = icmp samesign ugt i32 %.sroa.52.72.copyload, 5 ; 2 uses
  %i.u = zext i32 %.sroa.12.0.copyload to i64     ; 3 uses
  %i.v = zext nneg i32 %.sroa.52.72.copyload to i64 ; 3 uses
  %i.w = zext nneg i32 %i.b to i64                ; 2 uses
  %i.x = add nsw i32 %i.s, -3
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 2                  ; 2 uses
  %i.aa = add nsw i32 %i.s, -1                    ; 2 uses
  %i.ab = zext i32 %.sroa.4968.72.copyload to i64 ; 4 uses
  %6 = zext nneg i32 %.sroa.46.72.copyload to i64
  %i.ac = zext i32 %.sroa.953.0.copyload to i64   ; 3 uses
  %i.ad = zext nneg i32 %.sroa.15.0.copyload to i64
  %i.ae = zext i32 %i.h to i64                    ; 3 uses
  %i.af = zext nneg i32 %i.e to i64
  %wide.trip.count104 = zext nneg i32 %.sroa.55.72.copyload to i64 ; 3 uses
  %wide.trip.count = zext i32 %i.aa to i64        ; 8 uses
  %i.ag = trunc nuw nsw i64 %i.z to i32           ; 3 uses
  %wide.trip.count101 = zext nneg i32 %i.aa to i64
  %i.ah = trunc nuw nsw i64 %i.z to i32           ; 3 uses
  %i.ai = add nsw i64 %wide.trip.count104, -1     ; 3 uses
  %i.aj = mul nsw i64 %i.ai, %i.ac
  %i.ak = add i64 %i.aj, %wide.trip.count
  %i.al = shl i64 %i.ak, 1
  %i.am = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 2
  %i.an = mul nsw i64 %i.ai, %i.ae
  %i.ao = add i64 %i.an, %wide.trip.count
  %i.ap = shl i64 %i.ao, 1
  %scevgep117 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 %i.ap
  %scevgep118 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 2
  %i.aq = mul nsw i64 %i.ai, %i.ab
  %i.ar = shl i64 %i.aq, 1
  %i.as = shl nuw nsw i64 %wide.trip.count, 2
  %i.at = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 %i.ar
  %scevgep119 = getelementptr i8, ptr %i.at, i64 %i.as ; 2 uses
  %scevgep120 = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 4 ; 2 uses
  %i.au = add nsw i64 %wide.trip.count, -1        ; 14 uses
  %i.av = add nsw i64 %wide.trip.count104, -1     ; 3 uses
  %i.aw = mul nsw i64 %i.av, %i.ac
  %i.ax = add i64 %i.aw, %wide.trip.count
  %i.ay = shl i64 %i.ax, 1
  %i.az = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.ay
  %scevgep168 = getelementptr i8, ptr %i.az, i64 2
  %i.ba = mul nsw i64 %i.av, %i.ae
  %i.bb = add i64 %i.ba, %wide.trip.count
  %i.bc = shl i64 %i.bb, 1
  %scevgep169 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 %i.bc
  %scevgep170 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 2
  %i.bd = mul nsw i64 %i.av, %i.ab
  %i.be = shl i64 %i.bd, 1
  %i.bf = shl nuw nsw i64 %wide.trip.count, 2
  %i.bg = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 %i.be
  %scevgep171 = getelementptr i8, ptr %i.bg, i64 %i.bf ; 2 uses
  %scevgep172 = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 4 ; 2 uses
  %i.bh = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bi = shufflevector <2 x i32> %i.bh, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.au, 4
  %bound0175 = icmp ult ptr %scevgep172, %scevgep169
  %bound1176 = icmp ult ptr %scevgep170, %scevgep171
  %found.conflict177 = and i1 %bound0175, %bound1176
  %bound0178 = icmp ult ptr %scevgep172, %scevgep168
  %bound1179 = icmp ult ptr %.sroa.0.0.copyload, %scevgep171
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %found.conflict177, %found.conflict180
  %min.iters.check183 = icmp ult i64 %i.au, 16
  %i.bj = and i64 %i.au, 12
  %n.vec185 = and i64 %i.au, -16                  ; 4 uses
  %i.bk = or disjoint i64 %n.vec185, 1            ; 2 uses
  %broadcast.splatinsert190 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat191 = shufflevector <16 x i32> %broadcast.splatinsert190, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n205 = icmp eq i64 %i.au, %n.vec185
  %min.epilog.iters.check209 = icmp eq i64 %i.bj, 0
  %n.vec213 = and i64 %i.au, -4                   ; 3 uses
  %i.bl = or disjoint i64 %n.vec213, 1
  %broadcast.splatinsert218 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat219 = shufflevector <4 x i32> %broadcast.splatinsert218, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n236 = icmp eq i64 %i.au, %n.vec213
  %min.iters.check = icmp ult i64 %i.au, 4
  %bound0 = icmp ult ptr %scevgep120, %scevgep117
  %bound1 = icmp ult ptr %scevgep118, %scevgep119
  %found.conflict = and i1 %bound0, %bound1
  %bound0121 = icmp ult ptr %scevgep120, %scevgep
  %bound1122 = icmp ult ptr %.sroa.0.0.copyload, %scevgep119
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx = or i1 %found.conflict, %found.conflict123
  %min.iters.check124 = icmp ult i64 %i.au, 16
  %i.bm = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %i.bn = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec134 = and i64 %i.au, -4                   ; 3 uses
  %i.bo = or disjoint i64 %n.vec134, 1
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n154 = icmp eq i64 %i.au, %n.vec134
  %invariant.op = sub nuw i64 %i.v, 1
  %invariant.op242 = sub nuw i32 %.sroa.52.72.copyload, 1
  br label %bb.c

._crit_edge84:                                    ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.bp = icmp samesign ult i64 %indvars.iv, %i.af
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = mul nuw nsw i64 %indvars.iv, %i.ae
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1856.32.copyload, i64 %i.bq ; 8 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !290
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = icmp samesign ult i64 %indvars.iv, %i.ad
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = mul nuw nsw i64 %indvars.iv, %i.ac
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.bv ; 17 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !290
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = mul nsw i32 %i.by, 11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !290
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !290
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = add nsw i32 %i.bz, 4
  %i.ch = shl nsw i32 %i.cc, 2                    ; 2 uses
  %i.ci = sub nsw i32 %i.cg, %i.ch
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = ashr i32 %i.cj, 3
  %i.cl = add nsw i32 %i.ck, %i.bt
  %i.cm = shl i32 %i.cl, %3
  %i.cn = ashr i32 %i.cm, 1                       ; 2 uses
  %i.co = mul nsw i32 %i.by, 5
  %i.cp = add nsw i32 %i.co, 4
  %i.cq = add nsw i32 %i.cp, %i.ch
  %i.cr = sub nsw i32 %i.cq, %i.cf
  %i.cs = ashr i32 %i.cr, 3
  %i.ct = sub nsw i32 %i.cs, %i.bt
  %i.cu = shl i32 %i.ct, %3
  %i.cv = ashr i32 %i.cu, 1                       ; 2 uses
  br i1 %4, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit", label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit": ; preds = %bb.c
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 16383)
  %.sroa.speculate.load.false.sroa.speculated.i33.i = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %i.cx = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i33.i, i32 16383)
  %i.cy = trunc nuw nsw i32 %i.cw to i16
  %i.cz = mul nuw nsw i64 %indvars.iv, %i.ab
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.cz ; 9 uses
  store i16 %i.cy, ptr %i.da, align 2, !tbaa !290
  %i.db = trunc nuw nsw i32 %i.cx to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !290
  br i1 %i.t, label %iter.check, label %._crit_edge

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread": ; preds = %bb.c
  %i.dd = trunc i32 %i.cn to i16
  %i.de = mul nuw nsw i64 %indvars.iv, %i.ab      ; 2 uses
  %7 = add nuw nsw i64 %i.de, %i.v
  %8 = icmp samesign ule i64 %7, %6
  tail call void @llvm.assume(i1 %8)
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.de ; 10 uses
  store i16 %i.dd, ptr %i.df, align 2, !tbaa !290
  %i.dg = trunc i32 %i.cv to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !290
  br i1 %i.t, label %iter.check206, label %._crit_edge

iter.check:                                       ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit"
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.di = phi i64 [ %i.ep, %vector.body ], [ 1, %vector.main.loop.iter.check ] ; 3 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.dj
  %wide.load = load <16 x i16>, ptr %i.dk, align 2, !tbaa !290, !alias.scope !6914
  %i.dl = sext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.dm = getelementptr [2 x i8], ptr %i.bw, i64 %i.dj ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -2
  %wide.load131 = load <16 x i16>, ptr %i.dn, align 2, !tbaa !290, !alias.scope !6915
  %i.do = sext <16 x i16> %wide.load131 to <16 x i32> ; 2 uses
  %wide.load132 = load <16 x i16>, ptr %i.dm, align 2, !tbaa !290, !alias.scope !6915
  %i.dp = sext <16 x i16> %wide.load132 to <16 x i32>
  %i.dq = shl nsw <16 x i32> %i.dp, splat (i32 3) ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.di
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %wide.load133 = load <16 x i16>, ptr %i.ds, align 2, !tbaa !290, !alias.scope !6915
  %i.dt = sext <16 x i16> %wide.load133 to <16 x i32> ; 2 uses
  %i.du = add nsw <16 x i32> %i.do, splat (i32 4)
  %i.dv = add nsw <16 x i32> %i.du, %i.dq
  %i.dw = sub nsw <16 x i32> %i.dv, %i.dt
  %i.dx = ashr <16 x i32> %i.dw, splat (i32 3)
  %i.dy = add nsw <16 x i32> %i.dx, %i.dl
  %i.dz = shl <16 x i32> %i.dy, %broadcast.splat128
  %i.ea = ashr <16 x i32> %i.dz, splat (i32 1)
  %i.eb = sub nsw <16 x i32> %i.dq, %i.do
  %i.ec = add nsw <16 x i32> %i.eb, splat (i32 4)
  %i.ed = add nsw <16 x i32> %i.ec, %i.dt
  %i.ee = ashr <16 x i32> %i.ed, splat (i32 3)
  %i.ef = sub nsw <16 x i32> %i.ee, %i.dl
  %i.eg = shl <16 x i32> %i.ef, %broadcast.splat128
  %i.eh = ashr <16 x i32> %i.eg, splat (i32 1)
  %i.ei = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ea, <16 x i32> zeroinitializer)
  %i.ej = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ei, <16 x i32> splat (i32 16383))
  %i.ek = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eh, <16 x i32> zeroinitializer)
  %i.el = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ek, <16 x i32> splat (i32 16383))
  %i.em = trunc nuw nsw <16 x i32> %i.ej to <16 x i16>
  %.idx239 = shl nuw nsw i64 %i.di, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx239
  %i.eo = trunc nuw nsw <16 x i32> %i.el to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.em, <16 x i16> %i.eo, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.en, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ep = add nuw nsw i64 %i.di, 16
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !6903

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bn, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 2 uses
  %i.er = phi i64 [ %bc.resume.val, %vec.epilog.ph ], [ %i.fu, %vec.epilog.vector.body ] ; 3 uses
  %i.es = or disjoint i64 %index145, 1            ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.es
  %wide.load147 = load <4 x i16>, ptr %i.et, align 2, !tbaa !290, !alias.scope !6914
  %i.eu = sext <4 x i16> %wide.load147 to <4 x i32> ; 2 uses
  %i.ev = getelementptr [2 x i8], ptr %i.bw, i64 %i.es ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -2
  %wide.load148 = load <4 x i16>, ptr %i.ew, align 2, !tbaa !290, !alias.scope !6915
  %i.ex = sext <4 x i16> %wide.load148 to <4 x i32> ; 2 uses
  %wide.load149 = load <4 x i16>, ptr %i.ev, align 2, !tbaa !290, !alias.scope !6915
  %i.ey = sext <4 x i16> %wide.load149 to <4 x i32>
  %i.ez = shl nsw <4 x i32> %i.ey, splat (i32 3)  ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.er
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %wide.load150 = load <4 x i16>, ptr %i.fb, align 2, !tbaa !290, !alias.scope !6915
  %i.fc = sext <4 x i16> %wide.load150 to <4 x i32> ; 2 uses
  %i.fd = add nsw <4 x i32> %i.ex, splat (i32 4)
  %i.fe = add nsw <4 x i32> %i.fd, %i.ez
  %i.ff = sub nsw <4 x i32> %i.fe, %i.fc
  %i.fg = ashr <4 x i32> %i.ff, splat (i32 3)
  %i.fh = add nsw <4 x i32> %i.fg, %i.eu
  %i.fi = shl <4 x i32> %i.fh, %broadcast.splat140
  %i.fj = sub nsw <4 x i32> %i.ez, %i.ex
  %i.fk = add nsw <4 x i32> %i.fj, splat (i32 4)
  %i.fl = add nsw <4 x i32> %i.fk, %i.fc
  %i.fm = ashr <4 x i32> %i.fl, splat (i32 3)
  %i.fn = sub nsw <4 x i32> %i.fm, %i.eu
  %i.fo = shl <4 x i32> %i.fn, %broadcast.splat140
  %.idx240 = shl nuw nsw i64 %i.er, 2
  %i.fp = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx240
  %i.fq = shufflevector <4 x i32> %i.fi, <4 x i32> %i.fo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fr = ashr <8 x i32> %i.fq, splat (i32 1)
  %i.fs = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fr, <8 x i32> zeroinitializer)
  %i.ft = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fs, <8 x i32> splat (i32 16383))
  %interleaved.vec151 = trunc nuw nsw <8 x i32> %i.ft to <8 x i16>
  store <8 x i16> %interleaved.vec151, ptr %i.fp, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.fu = add nuw nsw i64 %i.er, 4
  %i.fv = icmp eq i64 %index.next152, %n.vec134
  br i1 %i.fv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n154, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader": ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv95.ph = phi i64 [ 1, %iter.check ], [ %i.bo, %vec.epilog.middle.block ], [ %i.bn, %vec.epilog.iter.check ]
  br label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us"

iter.check206:                                    ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"
  %brmerge243 = select i1 %min.iters.check173, i1 true, i1 %conflict.rdx181
  br i1 %brmerge243, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vector.main.loop.iter.check182

vector.main.loop.iter.check182:                   ; preds = %iter.check206
  br i1 %min.iters.check183, label %vec.epilog.ph210, label %vector.body194

vector.body194:                                   ; preds = %vector.main.loop.iter.check182, %vector.body194
  %index195 = phi i64 [ %index.next202, %vector.body194 ], [ 0, %vector.main.loop.iter.check182 ] ; 2 uses
  %i.fw = phi i64 [ %i.gz, %vector.body194 ], [ 1, %vector.main.loop.iter.check182 ] ; 3 uses
  %i.fx = or disjoint i64 %index195, 1            ; 2 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.fx
  %wide.load197 = load <16 x i16>, ptr %i.fy, align 2, !tbaa !290, !alias.scope !6918
  %i.fz = sext <16 x i16> %wide.load197 to <16 x i32> ; 2 uses
  %i.ga = getelementptr [2 x i8], ptr %i.bw, i64 %i.fx ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2
  %wide.load198 = load <16 x i16>, ptr %i.gb, align 2, !tbaa !290, !alias.scope !6919
  %i.gc = sext <16 x i16> %wide.load198 to <16 x i32> ; 2 uses
  %wide.load199 = load <16 x i16>, ptr %i.ga, align 2, !tbaa !290, !alias.scope !6919
  %i.gd = sext <16 x i16> %wide.load199 to <16 x i32>
  %i.ge = shl nsw <16 x i32> %i.gd, splat (i32 3) ; 2 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.fw
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %wide.load200 = load <16 x i16>, ptr %i.gg, align 2, !tbaa !290, !alias.scope !6919
  %i.gh = sext <16 x i16> %wide.load200 to <16 x i32> ; 2 uses
  %i.gi = add nsw <16 x i32> %i.gc, splat (i32 4)
  %i.gj = add nsw <16 x i32> %i.gi, %i.ge
  %i.gk = sub nsw <16 x i32> %i.gj, %i.gh
  %i.gl = lshr <16 x i32> %i.gk, splat (i32 3)
  %i.gm = add nsw <16 x i32> %i.gl, %i.fz
  %i.gn = shl <16 x i32> %i.gm, %broadcast.splat191
  %i.go = lshr <16 x i32> %i.gn, splat (i32 1)
  %i.gp = sub nsw <16 x i32> %i.ge, %i.gc
  %i.gq = add nsw <16 x i32> %i.gp, splat (i32 4)
  %i.gr = add nsw <16 x i32> %i.gq, %i.gh
  %i.gs = lshr <16 x i32> %i.gr, splat (i32 3)
  %i.gt = sub nsw <16 x i32> %i.gs, %i.fz
  %i.gu = shl <16 x i32> %i.gt, %broadcast.splat191
  %i.gv = lshr <16 x i32> %i.gu, splat (i32 1)
  %i.gw = trunc <16 x i32> %i.go to <16 x i16>
  %.idx = shl nuw nsw i64 %i.fw, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx
  %i.gy = trunc <16 x i32> %i.gv to <16 x i16>
  %interleaved.vec201 = shufflevector <16 x i16> %i.gw, <16 x i16> %i.gy, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec201, ptr %i.gx, align 2, !tbaa !290, !alias.scope !6920, !noalias !6921
  %index.next202 = add nuw i64 %index195, 16      ; 2 uses
  %i.gz = add nuw nsw i64 %i.fw, 16
  %i.ha = icmp eq i64 %index.next202, %n.vec185
  br i1 %i.ha, label %middle.block204, label %vector.body194, !llvm.loop !6909

middle.block204:                                  ; preds = %vector.body194
  br i1 %cmp.n205, label %._crit_edge, label %vec.epilog.iter.check207

vec.epilog.iter.check207:                         ; preds = %middle.block204
  br i1 %min.epilog.iters.check209, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vec.epilog.ph210, !prof !294

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check182, %vec.epilog.iter.check207
  %vec.epilog.resume.val211 = phi i64 [ %n.vec185, %vec.epilog.iter.check207 ], [ 0, %vector.main.loop.iter.check182 ]
  %bc.resume.val212 = phi i64 [ %i.bk, %vec.epilog.iter.check207 ], [ 1, %vector.main.loop.iter.check182 ]
  br label %vec.epilog.vector.body225

vec.epilog.vector.body225:                        ; preds = %vec.epilog.vector.body225, %vec.epilog.ph210
  %index226 = phi i64 [ %vec.epilog.resume.val211, %vec.epilog.ph210 ], [ %index.next233, %vec.epilog.vector.body225 ] ; 2 uses
  %i.hb = phi i64 [ %bc.resume.val212, %vec.epilog.ph210 ], [ %i.ic, %vec.epilog.vector.body225 ] ; 3 uses
  %i.hc = or disjoint i64 %index226, 1            ; 2 uses
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.hc
  %wide.load228 = load <4 x i16>, ptr %i.hd, align 2, !tbaa !290, !alias.scope !6918
  %i.he = sext <4 x i16> %wide.load228 to <4 x i32> ; 2 uses
  %i.hf = getelementptr [2 x i8], ptr %i.bw, i64 %i.hc ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 -2
  %wide.load229 = load <4 x i16>, ptr %i.hg, align 2, !tbaa !290, !alias.scope !6919
  %i.hh = sext <4 x i16> %wide.load229 to <4 x i32> ; 2 uses
  %wide.load230 = load <4 x i16>, ptr %i.hf, align 2, !tbaa !290, !alias.scope !6919
  %i.hi = sext <4 x i16> %wide.load230 to <4 x i32>
  %i.hj = shl nsw <4 x i32> %i.hi, splat (i32 3)  ; 2 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.hb
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %wide.load231 = load <4 x i16>, ptr %i.hl, align 2, !tbaa !290, !alias.scope !6919
end_hunk_1
