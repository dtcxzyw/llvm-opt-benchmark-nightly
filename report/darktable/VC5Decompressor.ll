Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed15VC5Decompressor7Wavelet15reconstructPassENS_10Array2DRefIKsEES4_:bb.a
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !6854

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next161, %vec.epilog.vector.body ] ; 5 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %index155
  %wide.load157 = load <4 x i16>, ptr %i.eh, align 2, !tbaa !290
  %i.ei = sext <4 x i16> %wide.load157 to <4 x i32> ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index155 ; 3 uses
  %wide.load158 = load <4 x i16>, ptr %i.ej, align 2, !tbaa !290
  %i.ek = sext <4 x i16> %wide.load158 to <4 x i32> ; 2 uses
  %i.el = mul nsw <4 x i32> %i.ek, splat (i32 11)
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.x
  %wide.load159 = load <4 x i16>, ptr %i.em, align 2, !tbaa !290
  %i.en = sext <4 x i16> %wide.load159 to <4 x i32>
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.ap
  %wide.load160 = load <4 x i16>, ptr %i.eo, align 2, !tbaa !290
  %i.ep = sext <4 x i16> %wide.load160 to <4 x i32> ; 2 uses
  %i.eq = add nsw <4 x i32> %i.el, splat (i32 4)
  %i.er = shl nsw <4 x i32> %i.en, splat (i32 2)  ; 2 uses
  %i.es = sub nsw <4 x i32> %i.eq, %i.er
  %i.et = add nsw <4 x i32> %i.es, %i.ep
  %i.eu = lshr <4 x i32> %i.et, splat (i32 3)
  %i.ev = add nsw <4 x i32> %i.eu, %i.ei
  %i.ew = lshr <4 x i32> %i.ev, splat (i32 1)
  %i.ex = mul nsw <4 x i32> %i.ek, splat (i32 5)
  %i.ey = add nsw <4 x i32> %i.ex, splat (i32 4)
  %i.ez = add nsw <4 x i32> %i.ey, %i.er
  %i.fa = sub nsw <4 x i32> %i.ez, %i.ep
  %i.fb = lshr <4 x i32> %i.fa, splat (i32 3)
  %i.fc = sub nsw <4 x i32> %i.fb, %i.ei
  %i.fd = lshr <4 x i32> %i.fc, splat (i32 1)
  %i.fe = trunc <4 x i32> %i.ew to <4 x i16>
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %index155
  store <4 x i16> %i.fe, ptr %i.ff, align 2, !tbaa !290
  %i.fg = trunc <4 x i32> %i.fd to <4 x i16>
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index155
  store <4 x i16> %i.fg, ptr %i.fh, align 2, !tbaa !290
  %index.next161 = add nuw i64 %index155, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next161, %n.vec148
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6855

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n163, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv108.ph = phi i64 [ 0, %iter.check ], [ %n.vec148, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 9 uses
  br i1 %lcmp.mod351.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.fj = icmp samesign ult i64 %indvars.iv108.ph, %i.ae
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv108.ph
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !290
  %i.fm = sext i16 %i.fl to i32                   ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv108.ph, %i.y
  tail call void @llvm.assume(i1 %i.fn)
  %invariant.gep.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv108.ph ; 3 uses
  %i.fo = load i16, ptr %invariant.gep.i.i.i.i.prol, align 2, !tbaa !290
  %i.fp = sext i16 %i.fo to i32                   ; 2 uses
  %i.fq = mul nsw i32 %i.fp, 11
  %gep.1.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.prol, i64 %i.x
  %i.fr = load i16, ptr %gep.1.i.i.i.i.prol, align 2, !tbaa !290
  %i.fs = sext i16 %i.fr to i32
  %gep.2.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.prol, i64 %i.ap
  %i.ft = load i16, ptr %gep.2.i.i.i.i.prol, align 2, !tbaa !290
  %i.fu = sext i16 %i.ft to i32                   ; 2 uses
  %i.fv = add nsw i32 %i.fq, 4
  %i.fw = shl nsw i32 %i.fs, 2                    ; 2 uses
  %i.fx = sub nsw i32 %i.fv, %i.fw
  %i.fy = add nsw i32 %i.fx, %i.fu
  %i.fz = lshr i32 %i.fy, 3
  %i.ga = add nsw i32 %i.fz, %i.fm
  %i.gb = lshr i32 %i.ga, 1
  %i.gc = mul nsw i32 %i.fp, 5
  %i.gd = add nsw i32 %i.gc, 4
  %i.ge = add nsw i32 %i.gd, %i.fw
  %i.gf = sub nsw i32 %i.ge, %i.fu
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = sub nsw i32 %i.gg, %i.fm
  %i.gi = lshr i32 %i.gh, 1
  %i.gj = trunc i32 %i.gb to i16
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv108.ph
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !290
  %i.gl = trunc i32 %i.gi to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv108.ph
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !290
  %indvars.iv.next109.prol = or disjoint i64 %indvars.iv108.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv108.unr = phi i64 [ %indvars.iv108.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next109.prol, %vec.epilog.scalar.ph.prol ]
  %i.gn = icmp eq i64 %indvars.iv108.ph, %i.cr
  br i1 %i.gn, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109.1, %vec.epilog.scalar.ph ], [ %indvars.iv108.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %i.go = icmp samesign ult i64 %indvars.iv108, %i.ae
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv108
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !290
  %i.gr = sext i16 %i.gq to i32                   ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv108, %i.y
  tail call void @llvm.assume(i1 %i.gs)
  %invariant.gep.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv108 ; 3 uses
  %i.gt = load i16, ptr %invariant.gep.i.i.i.i, align 2, !tbaa !290
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %i.gv = mul nsw i32 %i.gu, 11
  %gep.1.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.x
  %i.gw = load i16, ptr %gep.1.i.i.i.i, align 2, !tbaa !290
  %i.gx = sext i16 %i.gw to i32
  %gep.2.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.ap
  %i.gy = load i16, ptr %gep.2.i.i.i.i, align 2, !tbaa !290
  %i.gz = sext i16 %i.gy to i32                   ; 2 uses
  %i.ha = add nsw i32 %i.gv, 4
  %i.hb = shl nsw i32 %i.gx, 2                    ; 2 uses
  %i.hc = sub nsw i32 %i.ha, %i.hb
  %i.hd = add nsw i32 %i.hc, %i.gz
  %i.he = lshr i32 %i.hd, 3
  %i.hf = add nsw i32 %i.he, %i.gr
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = mul nsw i32 %i.gu, 5
  %i.hi = add nsw i32 %i.hh, 4
  %i.hj = add nsw i32 %i.hi, %i.hb
  %i.hk = sub nsw i32 %i.hj, %i.gz
  %i.hl = lshr i32 %i.hk, 3
  %i.hm = sub nsw i32 %i.hl, %i.gr
  %i.hn = lshr i32 %i.hm, 1
  %i.ho = trunc i32 %i.hg to i16
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv108
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !290
  %i.hq = trunc i32 %i.hn to i16
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv108
  store i16 %i.hq, ptr %i.hr, align 2, !tbaa !290
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 6 uses
  %i.hs = icmp samesign ult i64 %indvars.iv.next109, %i.ae
  tail call void @llvm.assume(i1 %i.hs)
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %indvars.iv.next109
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !290
  %i.hv = sext i16 %i.hu to i32                   ; 2 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next109, %i.y
  tail call void @llvm.assume(i1 %i.hw)
  %invariant.gep.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.next109 ; 3 uses
  %i.hx = load i16, ptr %invariant.gep.i.i.i.i.1, align 2, !tbaa !290
  %i.hy = sext i16 %i.hx to i32                   ; 2 uses
  %i.hz = mul nsw i32 %i.hy, 11
  %gep.1.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.1, i64 %i.x
  %i.ia = load i16, ptr %gep.1.i.i.i.i.1, align 2, !tbaa !290
  %i.ib = sext i16 %i.ia to i32
  %gep.2.i.i.i.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i.1, i64 %i.ap
  %i.ic = load i16, ptr %gep.2.i.i.i.i.1, align 2, !tbaa !290
  %i.id = sext i16 %i.ic to i32                   ; 2 uses
  %i.ie = add nsw i32 %i.hz, 4
  %i.if = shl nsw i32 %i.ib, 2                    ; 2 uses
  %i.ig = sub nsw i32 %i.ie, %i.if
  %i.ih = add nsw i32 %i.ig, %i.id
  %i.ii = lshr i32 %i.ih, 3
  %i.ij = add nsw i32 %i.ii, %i.hv
  %i.ik = lshr i32 %i.ij, 1
  %i.il = mul nsw i32 %i.hy, 5
  %i.im = add nsw i32 %i.il, 4
  %i.in = add nsw i32 %i.im, %i.if
  %i.io = sub nsw i32 %i.in, %i.id
  %i.ip = lshr i32 %i.io, 3
  %i.iq = sub nsw i32 %i.ip, %i.hv
  %i.ir = lshr i32 %i.iq, 1
  %i.is = trunc i32 %i.ik to i16
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %indvars.iv.next109
  store i16 %i.is, ptr %i.it, align 2, !tbaa !290
  %i.iu = trunc i32 %i.ir to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv.next109
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !290
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next109.1, %i.af
  br i1 %exitcond112.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !6856

bb.d:                                             ; preds = %bb.c
  %i.iw = add nuw nsw i64 %indvars.iv113, 1
  %i.ix = icmp samesign ult i64 %i.iw, %i.aj
  br i1 %i.ix, label %.preheader84, label %.preheader86

.preheader86:                                     ; preds = %bb.d
  br i1 %i.t, label %.loopexit, label %iter.check321

iter.check321:                                    ; preds = %.preheader86
  %i.iy = icmp samesign ult i64 %indvars.iv113, %i.ai
  tail call void @llvm.assume(i1 %i.iy)
  %i.iz = mul nuw nsw i64 %indvars.iv113, %i.ah
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %i.iz ; 5 uses
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.assume(i1 %i.w)
  %i.jb = add nuw i64 %indvars.iv113, 4294967294
  %i.jc = and i64 %i.jb, 4294967295               ; 3 uses
  %i.jd = mul nuw nsw i64 %i.jc, %i.x             ; 5 uses
  %i.je = add nuw nsw i64 %i.jc, 1
  %i.jf = mul nuw nsw i64 %i.je, %i.x             ; 5 uses
  %i.jg = add nuw nsw i64 %i.jc, 2                ; 2 uses
  %i.jh = icmp samesign ult i64 %i.jg, %i.z
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = mul nuw nsw i64 %i.jg, %i.x             ; 5 uses
  %i.jj = shl nuw nsw i64 %indvars.iv113, 1       ; 2 uses
  %i.jk = mul nuw nsw i64 %i.jj, %i.ac
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.jk ; 5 uses
  %i.jm = or disjoint i64 %i.jj, 1                ; 2 uses
  %i.jn = icmp samesign ult i64 %i.jm, %i.ag
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = mul nuw nsw i64 %i.jm, %i.ac
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.jo ; 5 uses
  br i1 %min.iters.check300, label %vec.epilog.scalar.ph322.preheader, label %vector.memcheck252

vector.memcheck252:                               ; preds = %iter.check321
  %bound0272 = icmp ult ptr %.sroa.3469.64.copyload, %scevgep258
  %bound1273 = icmp ult ptr %scevgep256, %scevgep253
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %.sroa.3469.64.copyload, %scevgep261
  %bound1277 = icmp ult ptr %scevgep259, %scevgep253
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %.sroa.3469.64.copyload, %scevgep264
  %bound1281 = icmp ult ptr %scevgep262, %scevgep253
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %i.ad, %scevgep258
  %bound1289 = icmp ult ptr %scevgep256, %scevgep254
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %i.ad, %scevgep261
  %bound1293 = icmp ult ptr %scevgep259, %scevgep254
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.ad, %scevgep264
  %bound1297 = icmp ult ptr %scevgep262, %scevgep254
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  br i1 %conflict.rdx299, label %vec.epilog.scalar.ph322.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck252
  br i1 %min.iters.check302, label %vec.epilog.ph325, label %vector.body309

vector.body309:                                   ; preds = %vector.main.loop.iter.check301, %vector.body309
  %index310 = phi i64 [ %index.next316, %vector.body309 ], [ 0, %vector.main.loop.iter.check301 ] ; 5 uses
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %index310
  %wide.load312 = load <16 x i16>, ptr %i.jq, align 2, !tbaa !290, !alias.scope !6879
  %i.jr = sext <16 x i16> %wide.load312 to <16 x i32> ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index310 ; 3 uses
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.jd
  %wide.load313 = load <16 x i16>, ptr %i.jt, align 2, !tbaa !290, !alias.scope !6880
  %i.ju = sext <16 x i16> %wide.load313 to <16 x i32> ; 2 uses
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.jf
  %wide.load314 = load <16 x i16>, ptr %i.jv, align 2, !tbaa !290, !alias.scope !6881
  %i.jw = sext <16 x i16> %wide.load314 to <16 x i32>
  %i.jx = shl nsw <16 x i32> %i.jw, splat (i32 2) ; 2 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.js, i64 %i.ji
  %wide.load315 = load <16 x i16>, ptr %i.jy, align 2, !tbaa !290, !alias.scope !6882
  %i.jz = sext <16 x i16> %wide.load315 to <16 x i32> ; 2 uses
  %i.ka = mul nsw <16 x i32> %i.jz, splat (i32 5)
  %i.kb = sub nsw <16 x i32> %i.jx, %i.ju
  %i.kc = add nsw <16 x i32> %i.kb, splat (i32 4)
  %i.kd = add nsw <16 x i32> %i.kc, %i.ka
  %i.ke = lshr <16 x i32> %i.kd, splat (i32 3)
  %i.kf = add nsw <16 x i32> %i.ke, %i.jr
  %i.kg = lshr <16 x i32> %i.kf, splat (i32 1)
  %i.kh = mul nsw <16 x i32> %i.jz, splat (i32 11)
  %i.ki = add nsw <16 x i32> %i.ju, splat (i32 4)
  %i.kj = sub nsw <16 x i32> %i.ki, %i.jx
  %i.kk = add nsw <16 x i32> %i.kj, %i.kh
  %i.kl = lshr <16 x i32> %i.kk, splat (i32 3)
  %i.km = sub nsw <16 x i32> %i.kl, %i.jr
  %i.kn = lshr <16 x i32> %i.km, splat (i32 1)
  %i.ko = trunc <16 x i32> %i.kg to <16 x i16>
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %index310
  store <16 x i16> %i.ko, ptr %i.kp, align 2, !tbaa !290, !alias.scope !6883, !noalias !6884
  %i.kq = trunc <16 x i32> %i.kn to <16 x i16>
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %index310
  store <16 x i16> %i.kq, ptr %i.kr, align 2, !tbaa !290, !alias.scope !6885, !noalias !6886
  %index.next316 = add nuw i64 %index310, 16      ; 2 uses
  %i.ks = icmp eq i64 %index.next316, %n.vec304
  br i1 %i.ks, label %middle.block318, label %vector.body309, !llvm.loop !6864

middle.block318:                                  ; preds = %vector.body309
  br i1 %cmp.n319, label %.loopexit, label %vec.epilog.iter.check323

vec.epilog.iter.check323:                         ; preds = %middle.block318
  br i1 %min.epilog.iters.check324, label %vec.epilog.scalar.ph322.preheader, label %vec.epilog.ph325, !prof !294

vec.epilog.ph325:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check323
  %vec.epilog.resume.val320 = phi i64 [ %n.vec304, %vec.epilog.iter.check323 ], [ 0, %vector.main.loop.iter.check301 ]
  br label %vec.epilog.vector.body334

vec.epilog.vector.body334:                        ; preds = %vec.epilog.vector.body334, %vec.epilog.ph325
  %index335 = phi i64 [ %vec.epilog.resume.val320, %vec.epilog.ph325 ], [ %index.next341, %vec.epilog.vector.body334 ] ; 5 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %index335
  %wide.load337 = load <4 x i16>, ptr %i.kt, align 2, !tbaa !290, !alias.scope !6879
  %i.ku = sext <4 x i16> %wide.load337 to <4 x i32> ; 2 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index335 ; 3 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.jd
  %wide.load338 = load <4 x i16>, ptr %i.kw, align 2, !tbaa !290, !alias.scope !6880
  %i.kx = sext <4 x i16> %wide.load338 to <4 x i32> ; 2 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.jf
  %wide.load339 = load <4 x i16>, ptr %i.ky, align 2, !tbaa !290, !alias.scope !6881
  %i.kz = sext <4 x i16> %wide.load339 to <4 x i32>
  %i.la = shl nsw <4 x i32> %i.kz, splat (i32 2)  ; 2 uses
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.kv, i64 %i.ji
  %wide.load340 = load <4 x i16>, ptr %i.lb, align 2, !tbaa !290, !alias.scope !6882
  %i.lc = sext <4 x i16> %wide.load340 to <4 x i32> ; 2 uses
  %i.ld = mul nsw <4 x i32> %i.lc, splat (i32 5)
  %i.le = sub nsw <4 x i32> %i.la, %i.kx
  %i.lf = add nsw <4 x i32> %i.le, splat (i32 4)
  %i.lg = add nsw <4 x i32> %i.lf, %i.ld
  %i.lh = lshr <4 x i32> %i.lg, splat (i32 3)
  %i.li = add nsw <4 x i32> %i.lh, %i.ku
  %i.lj = lshr <4 x i32> %i.li, splat (i32 1)
  %i.lk = mul nsw <4 x i32> %i.lc, splat (i32 11)
  %i.ll = add nsw <4 x i32> %i.kx, splat (i32 4)
  %i.lm = sub nsw <4 x i32> %i.ll, %i.la
  %i.ln = add nsw <4 x i32> %i.lm, %i.lk
  %i.lo = lshr <4 x i32> %i.ln, splat (i32 3)
  %i.lp = sub nsw <4 x i32> %i.lo, %i.ku
  %i.lq = lshr <4 x i32> %i.lp, splat (i32 1)
  %i.lr = trunc <4 x i32> %i.lj to <4 x i16>
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %index335
  store <4 x i16> %i.lr, ptr %i.ls, align 2, !tbaa !290, !alias.scope !6883, !noalias !6884
  %i.lt = trunc <4 x i32> %i.lq to <4 x i16>
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %index335
  store <4 x i16> %i.lt, ptr %i.lu, align 2, !tbaa !290, !alias.scope !6885, !noalias !6886
  %index.next341 = add nuw i64 %index335, 4       ; 2 uses
  %i.lv = icmp eq i64 %index.next341, %n.vec326
  br i1 %i.lv, label %vec.epilog.middle.block343, label %vec.epilog.vector.body334, !llvm.loop !6865

vec.epilog.middle.block343:                       ; preds = %vec.epilog.vector.body334
  br i1 %cmp.n344, label %.loopexit, label %vec.epilog.scalar.ph322.preheader

vec.epilog.scalar.ph322.preheader:                ; preds = %iter.check321, %vector.memcheck252, %vec.epilog.iter.check323, %vec.epilog.middle.block343
  %indvars.iv.ph = phi i64 [ 0, %iter.check321 ], [ 0, %vector.memcheck252 ], [ %n.vec304, %vec.epilog.iter.check323 ], [ %n.vec326, %vec.epilog.middle.block343 ] ; 9 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph322.prol.loopexit, label %vec.epilog.scalar.ph322.prol

vec.epilog.scalar.ph322.prol:                     ; preds = %vec.epilog.scalar.ph322.preheader
  %i.lw = icmp samesign ult i64 %indvars.iv.ph, %i.ae
  tail call void @llvm.assume(i1 %i.lw)
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %indvars.iv.ph
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !290
  %i.lz = sext i16 %i.ly to i32                   ; 2 uses
  %i.ma = icmp samesign ult i64 %indvars.iv.ph, %i.y
  tail call void @llvm.assume(i1 %i.ma)
  %invariant.gep.i.i.i.i56.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.ph ; 3 uses
  %gep.i.i.i.i57.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.jd
  %i.mb = load i16, ptr %gep.i.i.i.i57.prol, align 2, !tbaa !290
  %i.mc = sext i16 %i.mb to i32                   ; 2 uses
  %gep.1.i.i.i.i58.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.jf
  %i.md = load i16, ptr %gep.1.i.i.i.i58.prol, align 2, !tbaa !290
  %i.me = sext i16 %i.md to i32
  %i.mf = shl nsw i32 %i.me, 2                    ; 2 uses
  %gep.2.i.i.i.i59.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i56.prol, i64 %i.ji
  %i.mg = load i16, ptr %gep.2.i.i.i.i59.prol, align 2, !tbaa !290
  %i.mh = sext i16 %i.mg to i32                   ; 2 uses
  %i.mi = mul nsw i32 %i.mh, 5
  %reass.sub.prol = sub nsw i32 %i.mf, %i.mc
  %i.mj = add nsw i32 %reass.sub.prol, 4
  %i.mk = add nsw i32 %i.mj, %i.mi
  %i.ml = lshr i32 %i.mk, 3
  %i.mm = add nsw i32 %i.ml, %i.lz
  %i.mn = lshr i32 %i.mm, 1
  %i.mo = mul nsw i32 %i.mh, 11
  %i.mp = add nsw i32 %i.mc, 4
  %i.mq = sub nsw i32 %i.mp, %i.mf
  %i.mr = add nsw i32 %i.mq, %i.mo
  %i.ms = lshr i32 %i.mr, 3
  %i.mt = sub nsw i32 %i.ms, %i.lz
  %i.mu = lshr i32 %i.mt, 1
  %i.mv = trunc i32 %i.mn to i16
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %indvars.iv.ph
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !290
  %i.mx = trunc i32 %i.mu to i16
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv.ph
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !290
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph322.prol.loopexit

vec.epilog.scalar.ph322.prol.loopexit:            ; preds = %vec.epilog.scalar.ph322.prol, %vec.epilog.scalar.ph322.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph322.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph322.prol ]
  %i.mz = icmp eq i64 %indvars.iv.ph, %i.ce
  br i1 %i.mz, label %.loopexit, label %vec.epilog.scalar.ph322

.preheader84:                                     ; preds = %bb.d
  br i1 %i.t, label %.loopexit, label %iter.check227

iter.check227:                                    ; preds = %.preheader84
  %i.na = icmp samesign ult i64 %indvars.iv113, %i.ai
  tail call void @llvm.assume(i1 %i.na)
  %i.nb = mul nuw nsw i64 %indvars.iv113, %i.ah
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1865.32.copyload, i64 %i.nb ; 5 uses
  tail call void @llvm.assume(i1 %i.w)
  %i.nd = add nuw i64 %indvars.iv113, 4294967295
  %i.ne = and i64 %i.nd, 4294967295               ; 2 uses
  %i.nf = mul nuw nsw i64 %i.ne, %i.x             ; 5 uses
  %i.ng = mul nuw nsw i64 %indvars.iv113, %i.x    ; 5 uses
  %i.nh = add nuw nsw i64 %i.ne, 2                ; 2 uses
  %i.ni = icmp samesign ult i64 %i.nh, %i.z
  tail call void @llvm.assume(i1 %i.ni)
  %i.nj = mul nuw nsw i64 %i.nh, %i.x             ; 5 uses
  %i.nk = shl nuw nsw i64 %indvars.iv113, 1       ; 2 uses
  %i.nl = mul nuw nsw i64 %i.nk, %i.ac
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.nl ; 5 uses
  %i.nn = or disjoint i64 %i.nk, 1                ; 2 uses
  %i.no = icmp samesign ult i64 %i.nn, %i.ag
  tail call void @llvm.assume(i1 %i.no)
  %i.np = mul nuw nsw i64 %i.nn, %i.ac
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3469.64.copyload, i64 %i.np ; 5 uses
  br i1 %min.iters.check206, label %vec.epilog.scalar.ph228.preheader, label %vector.memcheck164

vector.memcheck164:                               ; preds = %iter.check227
  %bound0178 = icmp ult ptr %.sroa.3469.64.copyload, %scevgep169
  %bound1179 = icmp ult ptr %scevgep167, %scevgep
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx185.reass = or i1 %found.conflict180, %invariant.op
  %bound0186 = icmp ult ptr %.sroa.3469.64.copyload, %scevgep173
  %bound1187 = icmp ult ptr %scevgep171, %scevgep
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185.reass, %found.conflict188
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %i.ad, %scevgep169
  %bound1195 = icmp ult ptr %scevgep167, %scevgep165
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %i.ad, %scevgep173
  %bound1203 = icmp ult ptr %scevgep171, %scevgep165
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  br i1 %conflict.rdx205, label %vec.epilog.scalar.ph228.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %vector.memcheck164
  br i1 %min.iters.check208, label %vec.epilog.ph231, label %vector.body215

vector.body215:                                   ; preds = %vector.main.loop.iter.check207, %vector.body215
  %index216 = phi i64 [ %index.next222, %vector.body215 ], [ 0, %vector.main.loop.iter.check207 ] ; 5 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %index216
  %wide.load218 = load <16 x i16>, ptr %i.nr, align 2, !tbaa !290, !alias.scope !6887
  %i.ns = sext <16 x i16> %wide.load218 to <16 x i32> ; 2 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index216 ; 3 uses
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.nf
  %wide.load219 = load <16 x i16>, ptr %i.nu, align 2, !tbaa !290, !alias.scope !6888
  %i.nv = sext <16 x i16> %wide.load219 to <16 x i32> ; 2 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.ng
  %wide.load220 = load <16 x i16>, ptr %i.nw, align 2, !tbaa !290, !alias.scope !6889
  %i.nx = sext <16 x i16> %wide.load220 to <16 x i32>
  %i.ny = shl nsw <16 x i32> %i.nx, splat (i32 3) ; 2 uses
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.nj
  %wide.load221 = load <16 x i16>, ptr %i.nz, align 2, !tbaa !290, !alias.scope !6890
  %i.oa = sext <16 x i16> %wide.load221 to <16 x i32> ; 2 uses
  %i.ob = add nsw <16 x i32> %i.nv, splat (i32 4)
  %i.oc = add nsw <16 x i32> %i.ob, %i.ny
  %i.od = sub nsw <16 x i32> %i.oc, %i.oa
  %i.oe = lshr <16 x i32> %i.od, splat (i32 3)
  %i.of = add nsw <16 x i32> %i.oe, %i.ns
  %i.og = lshr <16 x i32> %i.of, splat (i32 1)
  %i.oh = sub nsw <16 x i32> %i.ny, %i.nv
  %i.oi = add nsw <16 x i32> %i.oh, splat (i32 4)
  %i.oj = add nsw <16 x i32> %i.oi, %i.oa
  %i.ok = lshr <16 x i32> %i.oj, splat (i32 3)
  %i.ol = sub nsw <16 x i32> %i.ok, %i.ns
  %i.om = lshr <16 x i32> %i.ol, splat (i32 1)
  %i.on = trunc <16 x i32> %i.og to <16 x i16>
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %index216
  store <16 x i16> %i.on, ptr %i.oo, align 2, !tbaa !290, !alias.scope !6891, !noalias !6892
  %i.op = trunc <16 x i32> %i.om to <16 x i16>
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %index216
  store <16 x i16> %i.op, ptr %i.oq, align 2, !tbaa !290, !alias.scope !6893, !noalias !6894
  %index.next222 = add nuw i64 %index216, 16      ; 2 uses
  %i.or = icmp eq i64 %index.next222, %n.vec210
  br i1 %i.or, label %middle.block224, label %vector.body215, !llvm.loop !6873

middle.block224:                                  ; preds = %vector.body215
  br i1 %cmp.n225, label %.loopexit, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block224
  br i1 %min.epilog.iters.check230, label %vec.epilog.scalar.ph228.preheader, label %vec.epilog.ph231, !prof !294

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check229
  %vec.epilog.resume.val226 = phi i64 [ %n.vec210, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check207 ]
  br label %vec.epilog.vector.body240

vec.epilog.vector.body240:                        ; preds = %vec.epilog.vector.body240, %vec.epilog.ph231
  %index241 = phi i64 [ %vec.epilog.resume.val226, %vec.epilog.ph231 ], [ %index.next247, %vec.epilog.vector.body240 ] ; 5 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %index241
  %wide.load243 = load <4 x i16>, ptr %i.os, align 2, !tbaa !290, !alias.scope !6887
  %i.ot = sext <4 x i16> %wide.load243 to <4 x i32> ; 2 uses
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %index241 ; 3 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.nf
  %wide.load244 = load <4 x i16>, ptr %i.ov, align 2, !tbaa !290, !alias.scope !6888
  %i.ow = sext <4 x i16> %wide.load244 to <4 x i32> ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.ng
  %wide.load245 = load <4 x i16>, ptr %i.ox, align 2, !tbaa !290, !alias.scope !6889
  %i.oy = sext <4 x i16> %wide.load245 to <4 x i32>
  %i.oz = shl nsw <4 x i32> %i.oy, splat (i32 3)  ; 2 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.nj
  %wide.load246 = load <4 x i16>, ptr %i.pa, align 2, !tbaa !290, !alias.scope !6890
  %i.pb = sext <4 x i16> %wide.load246 to <4 x i32> ; 2 uses
  %i.pc = add nsw <4 x i32> %i.ow, splat (i32 4)
  %i.pd = add nsw <4 x i32> %i.pc, %i.oz
  %i.pe = sub nsw <4 x i32> %i.pd, %i.pb
  %i.pf = lshr <4 x i32> %i.pe, splat (i32 3)
  %i.pg = add nsw <4 x i32> %i.pf, %i.ot
  %i.ph = lshr <4 x i32> %i.pg, splat (i32 1)
  %i.pi = sub nsw <4 x i32> %i.oz, %i.ow
  %i.pj = add nsw <4 x i32> %i.pi, splat (i32 4)
  %i.pk = add nsw <4 x i32> %i.pj, %i.pb
  %i.pl = lshr <4 x i32> %i.pk, splat (i32 3)
  %i.pm = sub nsw <4 x i32> %i.pl, %i.ot
  %i.pn = lshr <4 x i32> %i.pm, splat (i32 1)
  %i.po = trunc <4 x i32> %i.ph to <4 x i16>
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %index241
  store <4 x i16> %i.po, ptr %i.pp, align 2, !tbaa !290, !alias.scope !6891, !noalias !6892
  %i.pq = trunc <4 x i32> %i.pn to <4 x i16>
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %index241
  store <4 x i16> %i.pq, ptr %i.pr, align 2, !tbaa !290, !alias.scope !6893, !noalias !6894
  %index.next247 = add nuw i64 %index241, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next247, %n.vec232
  br i1 %i.ps, label %vec.epilog.middle.block249, label %vec.epilog.vector.body240, !llvm.loop !6874

vec.epilog.middle.block249:                       ; preds = %vec.epilog.vector.body240
  br i1 %cmp.n250, label %.loopexit, label %vec.epilog.scalar.ph228.preheader

vec.epilog.scalar.ph228.preheader:                ; preds = %iter.check227, %vector.memcheck164, %vec.epilog.iter.check229, %vec.epilog.middle.block249
  %indvars.iv103.ph = phi i64 [ 0, %iter.check227 ], [ 0, %vector.memcheck164 ], [ %n.vec210, %vec.epilog.iter.check229 ], [ %n.vec232, %vec.epilog.middle.block249 ] ; 9 uses
  br i1 %lcmp.mod349.not, label %vec.epilog.scalar.ph228.prol.loopexit, label %vec.epilog.scalar.ph228.prol

vec.epilog.scalar.ph228.prol:                     ; preds = %vec.epilog.scalar.ph228.preheader
  %i.pt = icmp samesign ult i64 %indvars.iv103.ph, %i.ae
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %indvars.iv103.ph
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !290
  %i.pw = sext i16 %i.pv to i32                   ; 2 uses
  %i.px = icmp samesign ult i64 %indvars.iv103.ph, %i.y
  tail call void @llvm.assume(i1 %i.px)
  %invariant.gep.i.i.i.i33.prol = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv103.ph ; 3 uses
  %gep.i.i.i.i.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.nf
  %i.py = load i16, ptr %gep.i.i.i.i.prol, align 2, !tbaa !290
  %i.pz = sext i16 %i.py to i32                   ; 2 uses
  %gep.1.i.i.i.i34.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.ng
  %i.qa = load i16, ptr %gep.1.i.i.i.i34.prol, align 2, !tbaa !290
  %i.qb = sext i16 %i.qa to i32
  %i.qc = shl nsw i32 %i.qb, 3                    ; 2 uses
  %gep.2.i.i.i.i35.prol = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33.prol, i64 %i.nj
  %i.qd = load i16, ptr %gep.2.i.i.i.i35.prol, align 2, !tbaa !290
  %i.qe = sext i16 %i.qd to i32                   ; 2 uses
  %i.qf = add nsw i32 %i.pz, 4
  %i.qg = add nsw i32 %i.qf, %i.qc
  %i.qh = sub nsw i32 %i.qg, %i.qe
  %i.qi = lshr i32 %i.qh, 3
  %i.qj = add nsw i32 %i.qi, %i.pw
  %i.qk = lshr i32 %i.qj, 1
  %reass.sub99.prol = sub nsw i32 %i.qc, %i.pz
  %i.ql = add nsw i32 %reass.sub99.prol, 4
  %i.qm = add nsw i32 %i.ql, %i.qe
  %i.qn = lshr i32 %i.qm, 3
  %i.qo = sub nsw i32 %i.qn, %i.pw
  %i.qp = lshr i32 %i.qo, 1
  %i.qq = trunc i32 %i.qk to i16
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.nm, i64 %indvars.iv103.ph
  store i16 %i.qq, ptr %i.qr, align 2, !tbaa !290
  %i.qs = trunc i32 %i.qp to i16
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.nq, i64 %indvars.iv103.ph
  store i16 %i.qs, ptr %i.qt, align 2, !tbaa !290
  %indvars.iv.next104.prol = or disjoint i64 %indvars.iv103.ph, 1
  br label %vec.epilog.scalar.ph228.prol.loopexit

vec.epilog.scalar.ph228.prol.loopexit:            ; preds = %vec.epilog.scalar.ph228.prol, %vec.epilog.scalar.ph228.preheader
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %vec.epilog.scalar.ph228.preheader ], [ %indvars.iv.next104.prol, %vec.epilog.scalar.ph228.prol ]
  %i.qu = icmp eq i64 %indvars.iv103.ph, %i.cg
  br i1 %i.qu, label %.loopexit, label %vec.epilog.scalar.ph228

vec.epilog.scalar.ph228:                          ; preds = %vec.epilog.scalar.ph228.prol.loopexit, %vec.epilog.scalar.ph228
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %vec.epilog.scalar.ph228 ], [ %indvars.iv103.unr, %vec.epilog.scalar.ph228.prol.loopexit ] ; 8 uses
  %i.qv = icmp samesign ult i64 %indvars.iv103, %i.ae
  tail call void @llvm.assume(i1 %i.qv)
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %indvars.iv103
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !290
  %i.qy = sext i16 %i.qx to i32                   ; 2 uses
  %i.qz = icmp samesign ult i64 %indvars.iv103, %i.y
  tail call void @llvm.assume(i1 %i.qz)
  %invariant.gep.i.i.i.i33 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv103 ; 3 uses
  %gep.i.i.i.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33, i64 %i.nf
  %i.ra = load i16, ptr %gep.i.i.i.i, align 2, !tbaa !290
  %i.rb = sext i16 %i.ra to i32                   ; 2 uses
  %gep.1.i.i.i.i34 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33, i64 %i.ng
  %i.rc = load i16, ptr %gep.1.i.i.i.i34, align 2, !tbaa !290
  %i.rd = sext i16 %i.rc to i32
  %i.re = shl nsw i32 %i.rd, 3                    ; 2 uses
  %gep.2.i.i.i.i35 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.i.i.i33, i64 %i.nj
  %i.rf = load i16, ptr %gep.2.i.i.i.i35, align 2, !tbaa !290
  %i.rg = sext i16 %i.rf to i32                   ; 2 uses
  %i.rh = add nsw i32 %i.rb, 4
end_hunk_0
begin_hunk_1_@_ZN8rawspeed15VC5Decompressor8BandDataC2Eii:bb.a
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !285  ; 6 uses
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
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !289
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !289 ; 2 uses
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.953.0.copyload = load i32, ptr %.sroa.953.0..sroa_idx, align 8, !tbaa !289 ; 2 uses
  %i.q = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp sge i32 %.sroa.953.0.copyload, %.sroa.12.0.copyload
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp samesign ugt i32 %.sroa.52.72.copyload, 1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = lshr i32 %.sroa.52.72.copyload, 1        ; 2 uses
  %i.u = icmp samesign ugt i32 %.sroa.52.72.copyload, 5 ; 2 uses
  %i.v = zext i32 %.sroa.12.0.copyload to i64     ; 3 uses
  %i.w = zext nneg i32 %.sroa.52.72.copyload to i64 ; 2 uses
  %i.x = zext nneg i32 %i.b to i64                ; 2 uses
  %i.y = add nsw i32 %i.t, -3
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 2                 ; 2 uses
  %i.ab = add nsw i32 %i.t, -1                    ; 2 uses
  %i.ac = zext i32 %.sroa.4968.72.copyload to i64 ; 4 uses
  %i.ad = zext i32 %.sroa.953.0.copyload to i64   ; 3 uses
  %i.ae = zext nneg i32 %.sroa.15.0.copyload to i64
  %i.af = zext i32 %i.h to i64                    ; 3 uses
  %i.ag = zext nneg i32 %i.e to i64
  %wide.trip.count104 = zext nneg i32 %.sroa.55.72.copyload to i64 ; 3 uses
  %wide.trip.count = zext i32 %i.ab to i64        ; 8 uses
  %i.ah = trunc nuw nsw i64 %i.aa to i32          ; 3 uses
  %wide.trip.count101 = zext nneg i32 %i.ab to i64
  %i.ai = trunc nuw nsw i64 %i.aa to i32          ; 3 uses
  %scevgep = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 4 ; 2 uses
  %i.aj = add nsw i64 %wide.trip.count104, -1     ; 3 uses
  %i.ak = mul nsw i64 %i.aj, %i.ac
  %i.al = shl i64 %i.ak, 1
  %i.am = shl nuw nsw i64 %wide.trip.count, 2
  %i.an = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 %i.al
  %scevgep109 = getelementptr i8, ptr %i.an, i64 %i.am ; 2 uses
  %scevgep110 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 2
  %i.ao = mul nsw i64 %i.aj, %i.af
  %i.ap = add i64 %i.ao, %wide.trip.count
  %i.aq = shl i64 %i.ap, 1
  %scevgep111 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 %i.aq
  %i.ar = mul nsw i64 %i.aj, %i.ad
  %i.as = add i64 %i.ar, %wide.trip.count
  %i.at = shl i64 %i.as, 1
  %i.au = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.at
  %scevgep112 = getelementptr i8, ptr %i.au, i64 2
  %i.av = add nsw i64 %wide.trip.count, -1        ; 14 uses
  %scevgep149 = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 4 ; 2 uses
  %i.aw = add nsw i64 %wide.trip.count104, -1     ; 3 uses
  %i.ax = mul nsw i64 %i.aw, %i.ac
  %i.ay = shl i64 %i.ax, 1
  %i.az = shl nuw nsw i64 %wide.trip.count, 2
  %i.ba = getelementptr i8, ptr %.sroa.4265.72.copyload, i64 %i.ay
  %scevgep150 = getelementptr i8, ptr %i.ba, i64 %i.az ; 2 uses
  %scevgep151 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 2
  %i.bb = mul nsw i64 %i.aw, %i.af
  %i.bc = add i64 %i.bb, %wide.trip.count
  %i.bd = shl i64 %i.bc, 1
  %scevgep152 = getelementptr i8, ptr %.sroa.1856.32.copyload, i64 %i.bd
  %i.be = mul nsw i64 %i.aw, %i.ad
  %i.bf = add i64 %i.be, %wide.trip.count
  %i.bg = shl i64 %i.bf, 1
  %i.bh = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.bg
  %scevgep153 = getelementptr i8, ptr %i.bh, i64 2
  %i.bi = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.av, 4
  %bound0154 = icmp ult ptr %scevgep149, %scevgep152
  %bound1155 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %scevgep149, %scevgep153
  %bound1158 = icmp ult ptr %.sroa.0.0.copyload, %scevgep150
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  %min.iters.check163 = icmp ult i64 %i.av, 16
  %i.bk = and i64 %i.av, 12
  %n.vec165 = and i64 %i.av, -16                  ; 4 uses
  %i.bl = or disjoint i64 %n.vec165, 1            ; 2 uses
  %broadcast.splatinsert170 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat171 = shufflevector <16 x i32> %broadcast.splatinsert170, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n185 = icmp eq i64 %i.av, %n.vec165
  %min.epilog.iters.check191 = icmp eq i64 %i.bk, 0
  %n.vec193 = and i64 %i.av, -4                   ; 3 uses
  %i.bm = or disjoint i64 %n.vec193, 1
  %broadcast.splatinsert198 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat199 = shufflevector <4 x i32> %broadcast.splatinsert198, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n216 = icmp eq i64 %i.av, %n.vec193
  %min.iters.check = icmp ult i64 %i.av, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %scevgep, %scevgep112
  %bound1114 = icmp ult ptr %.sroa.0.0.copyload, %scevgep109
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  %min.iters.check116 = icmp ult i64 %i.av, 16
  %i.bn = and i64 %i.av, 12
  %n.vec = and i64 %i.av, -16                     ; 4 uses
  %i.bo = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert119 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat120 = shufflevector <16 x i32> %broadcast.splatinsert119, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec126 = and i64 %i.av, -4                   ; 3 uses
  %i.bp = or disjoint i64 %n.vec126, 1
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n146 = icmp eq i64 %i.av, %n.vec126
  %invariant.op.a = sub nuw i32 %.sroa.52.72.copyload, 1
  br label %bb.c

._crit_edge84:                                    ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph83, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.bq = icmp samesign ult i64 %indvars.iv, %i.ag
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = mul nuw nsw i64 %indvars.iv, %i.af
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.1856.32.copyload, i64 %i.br ; 8 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !290
  %i.bu = sext i16 %i.bt to i32                   ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.ae
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = mul nuw nsw i64 %indvars.iv, %i.ad
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.bw ; 17 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !290
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = mul nsw i32 %i.bz, 11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !290
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !290
  %i.cg = sext i16 %i.cf to i32                   ; 2 uses
  %i.ch = add nsw i32 %i.ca, 4
  %i.ci = shl nsw i32 %i.cd, 2                    ; 2 uses
  %i.cj = sub nsw i32 %i.ch, %i.ci
  %i.ck = add nsw i32 %i.cj, %i.cg
  %i.cl = ashr i32 %i.ck, 3
  %i.cm = add nsw i32 %i.cl, %i.bu
  %i.cn = shl i32 %i.cm, %3
  %i.co = ashr i32 %i.cn, 1                       ; 2 uses
  %i.cp = mul nsw i32 %i.bz, 5
  %i.cq = add nsw i32 %i.cp, 4
  %i.cr = add nsw i32 %i.cq, %i.ci
  %i.cs = sub nsw i32 %i.cr, %i.cg
  %i.ct = ashr i32 %i.cs, 3
  %i.cu = sub nsw i32 %i.ct, %i.bu
  %i.cv = shl i32 %i.cu, %3
  %i.cw = ashr i32 %i.cv, 1                       ; 2 uses
  br i1 %4, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit", label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit": ; preds = %bb.c
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cx = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 16383)
  %.sroa.speculate.load.false.sroa.speculated.i33.i = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cy = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i33.i, i32 16383)
  %i.cz = trunc nuw nsw i32 %i.cx to i16
  %i.da = mul nuw nsw i64 %indvars.iv, %i.ac
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.da ; 9 uses
  store i16 %i.cz, ptr %i.db, align 2, !tbaa !290
  %i.dc = trunc nuw nsw i32 %i.cy to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !290
  br i1 %i.u, label %iter.check, label %._crit_edge

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread": ; preds = %bb.c
  %i.de = trunc i32 %i.co to i16
  %i.df = mul nuw nsw i64 %indvars.iv, %i.ac
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4265.72.copyload, i64 %i.df ; 10 uses
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !290
  %i.dh = trunc i32 %i.cw to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !290
  br i1 %i.u, label %iter.check188, label %._crit_edge

iter.check:                                       ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit"
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dj = phi i64 [ %i.eq, %vector.body ], [ 1, %vector.main.loop.iter.check ] ; 3 uses
  %i.dk = or disjoint i64 %index, 1               ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.dk
  %wide.load = load <16 x i16>, ptr %i.dl, align 2, !tbaa !290, !alias.scope !6914
  %i.dm = sext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.dn = getelementptr [2 x i8], ptr %i.bx, i64 %i.dk ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %wide.load123 = load <16 x i16>, ptr %i.do, align 2, !tbaa !290, !alias.scope !6915
  %i.dp = sext <16 x i16> %wide.load123 to <16 x i32> ; 2 uses
  %wide.load124 = load <16 x i16>, ptr %i.dn, align 2, !tbaa !290, !alias.scope !6915
  %i.dq = sext <16 x i16> %wide.load124 to <16 x i32>
  %i.dr = shl nsw <16 x i32> %i.dq, splat (i32 3) ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.dj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %wide.load125 = load <16 x i16>, ptr %i.dt, align 2, !tbaa !290, !alias.scope !6915
  %i.du = sext <16 x i16> %wide.load125 to <16 x i32> ; 2 uses
  %i.dv = add nsw <16 x i32> %i.dp, splat (i32 4)
  %i.dw = add nsw <16 x i32> %i.dv, %i.dr
  %i.dx = sub nsw <16 x i32> %i.dw, %i.du
  %i.dy = ashr <16 x i32> %i.dx, splat (i32 3)
  %i.dz = add nsw <16 x i32> %i.dy, %i.dm
  %i.ea = shl <16 x i32> %i.dz, %broadcast.splat120
  %i.eb = ashr <16 x i32> %i.ea, splat (i32 1)
  %i.ec = sub nsw <16 x i32> %i.dr, %i.dp
  %i.ed = add nsw <16 x i32> %i.ec, splat (i32 4)
  %i.ee = add nsw <16 x i32> %i.ed, %i.du
  %i.ef = ashr <16 x i32> %i.ee, splat (i32 3)
  %i.eg = sub nsw <16 x i32> %i.ef, %i.dm
  %i.eh = shl <16 x i32> %i.eg, %broadcast.splat120
  %i.ei = ashr <16 x i32> %i.eh, splat (i32 1)
  %i.ej = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eb, <16 x i32> zeroinitializer)
  %i.ek = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ej, <16 x i32> splat (i32 16383))
  %i.el = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ei, <16 x i32> zeroinitializer)
  %i.em = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.el, <16 x i32> splat (i32 16383))
  %i.en = trunc nuw nsw <16 x i32> %i.ek to <16 x i16>
  %.idx219 = shl nuw nsw i64 %i.dj, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx219
  %i.ep = trunc nuw nsw <16 x i32> %i.em to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.en, <16 x i16> %i.ep, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.eo, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eq = add nuw nsw i64 %i.dj, 16
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !6903

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", label %vec.epilog.ph, !prof !294

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.bo, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %i.es = phi i64 [ %bc.resume.val, %vec.epilog.ph ], [ %i.fv, %vec.epilog.vector.body ] ; 3 uses
  %i.et = or disjoint i64 %index137, 1            ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.et
  %wide.load139 = load <4 x i16>, ptr %i.eu, align 2, !tbaa !290, !alias.scope !6914
  %i.ev = sext <4 x i16> %wide.load139 to <4 x i32> ; 2 uses
  %i.ew = getelementptr [2 x i8], ptr %i.bx, i64 %i.et ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
  %wide.load140 = load <4 x i16>, ptr %i.ex, align 2, !tbaa !290, !alias.scope !6915
  %i.ey = sext <4 x i16> %wide.load140 to <4 x i32> ; 2 uses
  %wide.load141 = load <4 x i16>, ptr %i.ew, align 2, !tbaa !290, !alias.scope !6915
  %i.ez = sext <4 x i16> %wide.load141 to <4 x i32>
  %i.fa = shl nsw <4 x i32> %i.ez, splat (i32 3)  ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.es
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %wide.load142 = load <4 x i16>, ptr %i.fc, align 2, !tbaa !290, !alias.scope !6915
  %i.fd = sext <4 x i16> %wide.load142 to <4 x i32> ; 2 uses
  %i.fe = add nsw <4 x i32> %i.ey, splat (i32 4)
  %i.ff = add nsw <4 x i32> %i.fe, %i.fa
  %i.fg = sub nsw <4 x i32> %i.ff, %i.fd
  %i.fh = ashr <4 x i32> %i.fg, splat (i32 3)
  %i.fi = add nsw <4 x i32> %i.fh, %i.ev
  %i.fj = shl <4 x i32> %i.fi, %broadcast.splat132
  %i.fk = sub nsw <4 x i32> %i.fa, %i.ey
  %i.fl = add nsw <4 x i32> %i.fk, splat (i32 4)
  %i.fm = add nsw <4 x i32> %i.fl, %i.fd
  %i.fn = ashr <4 x i32> %i.fm, splat (i32 3)
  %i.fo = sub nsw <4 x i32> %i.fn, %i.ev
  %i.fp = shl <4 x i32> %i.fo, %broadcast.splat132
  %.idx220 = shl nuw nsw i64 %i.es, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx220
  %i.fr = shufflevector <4 x i32> %i.fj, <4 x i32> %i.fp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.fs = ashr <8 x i32> %i.fr, splat (i32 1)
  %i.ft = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fs, <8 x i32> zeroinitializer)
  %i.fu = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ft, <8 x i32> splat (i32 16383))
  %interleaved.vec143 = trunc nuw nsw <8 x i32> %i.fu to <8 x i16>
  store <8 x i16> %interleaved.vec143, ptr %i.fq, align 2, !tbaa !290, !alias.scope !6916, !noalias !6917
  %index.next144 = add nuw i64 %index137, 4       ; 2 uses
  %i.fv = add nuw nsw i64 %i.es, 4
  %i.fw = icmp eq i64 %index.next144, %n.vec126
  br i1 %i.fw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n146, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader": ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv95.ph = phi i64 [ 1, %iter.check ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bo, %vec.epilog.iter.check ]
  br label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us"

iter.check188:                                    ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread"
  %brmerge222 = select i1 %min.iters.check161, i1 true, i1 %conflict.rdx160
  br i1 %brmerge222, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check188
  br i1 %min.iters.check163, label %vec.epilog.ph192, label %vector.body174

vector.body174:                                   ; preds = %vector.main.loop.iter.check162, %vector.body174
  %index175 = phi i64 [ %index.next182, %vector.body174 ], [ 0, %vector.main.loop.iter.check162 ] ; 2 uses
  %i.fx = phi i64 [ %i.ha, %vector.body174 ], [ 1, %vector.main.loop.iter.check162 ] ; 3 uses
  %i.fy = or disjoint i64 %index175, 1            ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.fy
  %wide.load177 = load <16 x i16>, ptr %i.fz, align 2, !tbaa !290, !alias.scope !6918
  %i.ga = sext <16 x i16> %wide.load177 to <16 x i32> ; 2 uses
  %i.gb = getelementptr [2 x i8], ptr %i.bx, i64 %i.fy ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 -2
  %wide.load178 = load <16 x i16>, ptr %i.gc, align 2, !tbaa !290, !alias.scope !6919
  %i.gd = sext <16 x i16> %wide.load178 to <16 x i32> ; 2 uses
  %wide.load179 = load <16 x i16>, ptr %i.gb, align 2, !tbaa !290, !alias.scope !6919
  %i.ge = sext <16 x i16> %wide.load179 to <16 x i32>
  %i.gf = shl nsw <16 x i32> %i.ge, splat (i32 3) ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.fx
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %wide.load180 = load <16 x i16>, ptr %i.gh, align 2, !tbaa !290, !alias.scope !6919
  %i.gi = sext <16 x i16> %wide.load180 to <16 x i32> ; 2 uses
  %i.gj = add nsw <16 x i32> %i.gd, splat (i32 4)
  %i.gk = add nsw <16 x i32> %i.gj, %i.gf
  %i.gl = sub nsw <16 x i32> %i.gk, %i.gi
  %i.gm = lshr <16 x i32> %i.gl, splat (i32 3)
  %i.gn = add nsw <16 x i32> %i.gm, %i.ga
  %i.go = shl <16 x i32> %i.gn, %broadcast.splat171
  %i.gp = lshr <16 x i32> %i.go, splat (i32 1)
  %i.gq = sub nsw <16 x i32> %i.gf, %i.gd
  %i.gr = add nsw <16 x i32> %i.gq, splat (i32 4)
  %i.gs = add nsw <16 x i32> %i.gr, %i.gi
  %i.gt = lshr <16 x i32> %i.gs, splat (i32 3)
  %i.gu = sub nsw <16 x i32> %i.gt, %i.ga
  %i.gv = shl <16 x i32> %i.gu, %broadcast.splat171
  %i.gw = lshr <16 x i32> %i.gv, splat (i32 1)
  %i.gx = trunc <16 x i32> %i.gp to <16 x i16>
  %.idx = shl nuw nsw i64 %i.fx, 2
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx
  %i.gz = trunc <16 x i32> %i.gw to <16 x i16>
  %interleaved.vec181 = shufflevector <16 x i16> %i.gx, <16 x i16> %i.gz, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec181, ptr %i.gy, align 2, !tbaa !290, !alias.scope !6920, !noalias !6921
  %index.next182 = add nuw i64 %index175, 16      ; 2 uses
  %i.ha = add nuw nsw i64 %i.fx, 16
  %i.hb = icmp eq i64 %index.next182, %n.vec165
  br i1 %i.hb, label %middle.block184, label %vector.body174, !llvm.loop !6909

middle.block184:                                  ; preds = %vector.body174
  br i1 %cmp.n185, label %._crit_edge, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block184
  br i1 %min.epilog.iters.check191, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", label %vec.epilog.ph192, !prof !294

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check190
  %vec.epilog.resume.val186 = phi i64 [ %n.vec165, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check162 ]
  %bc.resume.val187 = phi i64 [ %i.bl, %vec.epilog.iter.check190 ], [ 1, %vector.main.loop.iter.check162 ]
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph192
  %index206 = phi i64 [ %vec.epilog.resume.val186, %vec.epilog.ph192 ], [ %index.next213, %vec.epilog.vector.body205 ] ; 2 uses
  %i.hc = phi i64 [ %bc.resume.val187, %vec.epilog.ph192 ], [ %i.id, %vec.epilog.vector.body205 ] ; 3 uses
  %i.hd = or disjoint i64 %index206, 1            ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.hd
  %wide.load208 = load <4 x i16>, ptr %i.he, align 2, !tbaa !290, !alias.scope !6918
  %i.hf = sext <4 x i16> %wide.load208 to <4 x i32> ; 2 uses
  %i.hg = getelementptr [2 x i8], ptr %i.bx, i64 %i.hd ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 -2
  %wide.load209 = load <4 x i16>, ptr %i.hh, align 2, !tbaa !290, !alias.scope !6919
  %i.hi = sext <4 x i16> %wide.load209 to <4 x i32> ; 2 uses
  %wide.load210 = load <4 x i16>, ptr %i.hg, align 2, !tbaa !290, !alias.scope !6919
  %i.hj = sext <4 x i16> %wide.load210 to <4 x i32>
  %i.hk = shl nsw <4 x i32> %i.hj, splat (i32 3)  ; 2 uses
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.hc
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %wide.load211 = load <4 x i16>, ptr %i.hm, align 2, !tbaa !290, !alias.scope !6919
  %i.hn = sext <4 x i16> %wide.load211 to <4 x i32> ; 2 uses
  %i.ho = add nsw <4 x i32> %i.hi, splat (i32 4)
  %i.hp = add nsw <4 x i32> %i.ho, %i.hk
  %i.hq = sub nsw <4 x i32> %i.hp, %i.hn
  %i.hr = lshr <4 x i32> %i.hq, splat (i32 3)
  %i.hs = add nsw <4 x i32> %i.hr, %i.hf
  %i.ht = shl <4 x i32> %i.hs, %broadcast.splat199
  %i.hu = sub nsw <4 x i32> %i.hk, %i.hi
  %i.hv = add nsw <4 x i32> %i.hu, splat (i32 4)
  %i.hw = add nsw <4 x i32> %i.hv, %i.hn
  %i.hx = lshr <4 x i32> %i.hw, splat (i32 3)
  %i.hy = sub nsw <4 x i32> %i.hx, %i.hf
  %i.hz = shl <4 x i32> %i.hy, %broadcast.splat199
  %.idx218 = shl nuw nsw i64 %i.hc, 2
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx218
  %i.ib = shufflevector <4 x i32> %i.ht, <4 x i32> %i.hz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ic = lshr <8 x i32> %i.ib, splat (i32 1)
  %interleaved.vec212 = trunc <8 x i32> %i.ic to <8 x i16>
  store <8 x i16> %interleaved.vec212, ptr %i.ia, align 2, !tbaa !290, !alias.scope !6920, !noalias !6921
  %index.next213 = add nuw i64 %index206, 4       ; 2 uses
  %i.id = add nuw nsw i64 %i.hc, 4
  %i.ie = icmp eq i64 %index.next213, %n.vec193
  br i1 %i.ie, label %vec.epilog.middle.block215, label %vec.epilog.vector.body205, !llvm.loop !6910

vec.epilog.middle.block215:                       ; preds = %vec.epilog.vector.body205
  br i1 %cmp.n216, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader": ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block215
  %indvars.iv89.ph = phi i64 [ 1, %iter.check188 ], [ %i.bm, %vec.epilog.middle.block215 ], [ %i.bl, %vec.epilog.iter.check190 ]
  br label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit"

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us": ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us"
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us" ], [ %indvars.iv95.ph, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us.preheader" ] ; 6 uses
  %i.if = icmp samesign ult i64 %indvars.iv95, %i.x
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv95
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !290
  %i.ii = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv95 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 -2
  %i.ik = add nuw nsw i64 %indvars.iv95, 1        ; 2 uses
  %i.il = icmp samesign ult i64 %i.ik, %i.v
  tail call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ik
  %i.in = load i16, ptr %i.im, align 2, !tbaa !290
  %i.io = shl nuw nsw i64 %indvars.iv95, 1        ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.io
  %6 = or disjoint i64 %i.io, 1
  %i.iq = icmp samesign ult i64 %6, %i.w
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = sext i16 %i.ih to i32                   ; 2 uses
  %i.is = load i16, ptr %i.ij, align 2, !tbaa !290
  %i.it = sext i16 %i.is to i32                   ; 2 uses
  %i.iu = load i16, ptr %i.ii, align 2, !tbaa !290
  %i.iv = sext i16 %i.iu to i32
  %i.iw = shl nsw i32 %i.iv, 3                    ; 2 uses
  %i.ix = sext i16 %i.in to i32                   ; 2 uses
  %i.iy = add nsw i32 %i.it, 4
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = sub nsw i32 %i.iz, %i.ix
  %i.jb = ashr i32 %i.ja, 3
  %i.jc = add nsw i32 %i.jb, %i.ir
  %reass.sub85 = sub nsw i32 %i.iw, %i.it
  %i.jd = add nsw i32 %reass.sub85, 4
  %i.je = add nsw i32 %i.jd, %i.ix
  %i.jf = ashr i32 %i.je, 3
  %i.jg = sub nsw i32 %i.jf, %i.ir
  %i.jh = insertelement <2 x i32> poison, i32 %i.jc, i64 0
  %i.ji = insertelement <2 x i32> %i.jh, i32 %i.jg, i64 1
  %i.jj = shl <2 x i32> %i.ji, %i.bj
  %i.jk = ashr <2 x i32> %i.jj, splat (i32 1)
  %i.jl = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jk, <2 x i32> zeroinitializer)
  %i.jm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jl, <2 x i32> splat (i32 16383))
  %i.jn = trunc nuw nsw <2 x i32> %i.jm to <2 x i16>
  store <2 x i16> %i.jn, ptr %i.ip, align 2, !tbaa !290
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us", !llvm.loop !6911

"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit": ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit"
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit" ], [ %indvars.iv89.ph, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.preheader" ] ; 6 uses
  %i.jo = icmp samesign ult i64 %indvars.iv89, %i.x
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv89
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !290
  %i.jr = sext i16 %i.jq to i32                   ; 2 uses
  %i.js = getelementptr [2 x i8], ptr %i.bx, i64 %indvars.iv89 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !290
  %i.jv = sext i16 %i.ju to i32                   ; 2 uses
  %i.jw = load i16, ptr %i.js, align 2, !tbaa !290
  %i.jx = sext i16 %i.jw to i32
  %i.jy = shl nsw i32 %i.jx, 3                    ; 2 uses
  %i.jz = add nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.ka = icmp samesign ult i64 %i.jz, %i.v
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.jz
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !290
  %i.kd = sext i16 %i.kc to i32                   ; 2 uses
  %i.ke = add nsw i32 %i.jv, 4
  %i.kf = add nsw i32 %i.ke, %i.jy
  %i.kg = sub nsw i32 %i.kf, %i.kd
  %i.kh = lshr i32 %i.kg, 3
  %i.ki = add nsw i32 %i.kh, %i.jr
  %i.kj = shl i32 %i.ki, %3
  %i.kk = lshr i32 %i.kj, 1
  %reass.sub = sub nsw i32 %i.jy, %i.jv
  %i.kl = add nsw i32 %reass.sub, 4
  %i.km = add nsw i32 %i.kl, %i.kd
  %i.kn = lshr i32 %i.km, 3
  %i.ko = sub nsw i32 %i.kn, %i.jr
  %i.kp = shl i32 %i.ko, %3
  %i.kq = lshr i32 %i.kp, 1
  %i.kr = trunc i32 %i.kk to i16
  %i.ks = shl nuw nsw i64 %indvars.iv89, 1        ; 2 uses
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.ks
  store i16 %i.kr, ptr %i.kt, align 2, !tbaa !290
  %i.ku = trunc i32 %i.kq to i16
  %i.kv = or disjoint i64 %i.ks, 1                ; 2 uses
  %i.kw = icmp samesign ult i64 %i.kv, %i.w
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.kv
  store i16 %i.ku, ptr %i.kx, align 2, !tbaa !290
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit", !llvm.loop !6912

._crit_edge:                                      ; preds = %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us", %middle.block184, %vec.epilog.middle.block215, %middle.block, %vec.epilog.middle.block, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread", %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit"
  %i.ky = phi ptr [ %i.db, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit" ], [ %i.dg, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread" ], [ %i.db, %middle.block ], [ %i.dg, %middle.block184 ], [ %i.db, %vec.epilog.middle.block ], [ %i.db, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us" ], [ %i.dg, %vec.epilog.middle.block215 ], [ %i.dg, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit" ]
  %.0.lcssa = phi i32 [ 1, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit" ], [ 1, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams5FirstEEEDaii.exit.thread" ], [ %i.ai, %middle.block ], [ %i.ah, %middle.block184 ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ai, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit.us" ], [ %i.ah, %vec.epilog.middle.block215 ], [ %i.ah, %"_ZZN8rawspeed15VC5Decompressor7Wavelet18combineLowHighPassENS_10Array2DRefIKsEES4_ibbENK3$_0clINS_12_GLOBAL__N_117ConvolutionParams6MiddleEEEDaii.exit" ] ; 4 uses
  %i.kz = icmp samesign ult i32 %.0.lcssa, %i.b
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = zext nneg i32 %.0.lcssa to i64
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !290
  %invariant.op.i.i.i.i46 = add nsw i32 %.0.lcssa, -2
  %i.ld = zext i32 %invariant.op.i.i.i.i46 to i64 ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ld ; 2 uses
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !290
  %i.lg = sext i16 %i.lf to i32                   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !290
  %i.lj = sext i16 %i.li to i32
  %i.lk = add nuw nsw i64 %i.ld, 2                ; 2 uses
  %i.ll = icmp samesign ult i64 %i.lk, %i.v
  tail call void @llvm.assume(i1 %i.ll)
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.lk
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !290
  %i.lo = sext i16 %i.lc to i32                   ; 2 uses
  %i.lp = shl nsw i32 %i.lj, 2                    ; 2 uses
  %i.lq = sext i16 %i.ln to i32                   ; 2 uses
  %i.lr = mul nsw i32 %i.lq, 5
  %reass.sub86 = sub nsw i32 %i.lp, %i.lg
  %i.ls = add nsw i32 %reass.sub86, 4
  %i.lt = add nsw i32 %i.ls, %i.lr
  %i.lu = ashr i32 %i.lt, 3
  %i.lv = add nsw i32 %i.lu, %i.lo
  %i.lw = mul nsw i32 %i.lq, 11
  %i.lx = add nsw i32 %i.lg, 4
  %i.ly = sub nsw i32 %i.lx, %i.lp
  %i.lz = add nsw i32 %i.ly, %i.lw
  %i.ma = ashr i32 %i.lz, 3
  %i.mb = sub nsw i32 %i.ma, %i.lo
  %i.mc = insertelement <2 x i32> poison, i32 %i.lv, i64 0
  %i.md = insertelement <2 x i32> %i.mc, i32 %i.mb, i64 1
  %i.me = shl <2 x i32> %i.md, %i.bj
  %i.mf = ashr <2 x i32> %i.me, splat (i32 1)     ; 2 uses
  %i.mg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mf, <2 x i32> zeroinitializer)
  %i.mh = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mg, <2 x i32> splat (i32 16383))
  %i.mi = select i1 %4, <2 x i32> %i.mh, <2 x i32> %i.mf
  %i.mj = trunc <2 x i32> %i.mi to <2 x i16>
  %i.mk = shl nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.ml
  %i.mn = icmp ult i32 %i.mk, %invariant.op.a
  tail call void @llvm.assume(i1 %i.mn)
  store <2 x i16> %i.mj, ptr %i.mm, align 2, !tbaa !290
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge84, label %bb.c, !llvm.loop !6913

bb.d:                                             ; preds = %bb.a
  %i.mo = landingpad { ptr, i32 }
          catch ptr null
  %i.mp = extractvalue { ptr, i32 } %i.mo, 0
  tail call void @__clang_call_terminate(ptr %i.mp) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor7Wavelet19ReconstructableBand31createLowpassReconstructionTaskERKb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::VC5Decompressor::BandData", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %4 = alloca %"class.rawspeed::Array2DRef.2", align 8 ; 5 uses
  %.val = load i8, ptr %1, align 1, !tbaa !304, !range !305, !noundef !306
  %i.a = trunc nuw i8 %.val to i1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315, !nonnull !306, !align !316
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !317  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !319  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !319  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.010.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.613.0.copyload = load i32, ptr %.sroa.613.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.j = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.j)
  store ptr %.sroa.010.0.copyload, ptr %3, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !289
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <2 x i32>, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !289
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.613.0.copyload, ptr %i.m, align 8, !tbaa !286
  %i.n = extractelement <2 x i32> %i.l, i64 1     ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sgt i32 %.sroa.613.0.copyload, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = extractelement <2 x i32> %i.l, i64 0     ; 3 uses
  %i.r = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sge i32 %i.q, %i.n
  tail call void @llvm.assume(i1 %i.s)
  %i.t = mul nuw nsw i32 %.sroa.613.0.copyload, %i.q
  %i.u = icmp eq i32 %.sroa.2.0.copyload, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.022.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !288
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.223.0.copyload = load i32, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.627.0.copyload = load i32, ptr %.sroa.627.0..sroa_idx, align 8, !tbaa !289 ; 3 uses
  %i.w = icmp sgt i32 %.sroa.223.0.copyload, -1
  tail call void @llvm.assume(i1 %i.w)
  store ptr %.sroa.022.0.copyload, ptr %4, align 8, !tbaa !288
  %.sroa.2.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
