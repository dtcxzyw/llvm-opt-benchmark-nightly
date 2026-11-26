Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_9UpTo8BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %i.gv = zext <16 x i8> %wide.load177 to <16 x i16>
  %i.gw = zext <16 x i8> %wide.load178 to <16 x i16>
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.go ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  store <16 x i16> %i.gt, ptr %i.gx, align 2, !tbaa !104, !alias.scope !422, !noalias !421
  store <16 x i16> %i.gu, ptr %i.gy, align 2, !tbaa !104, !alias.scope !422, !noalias !421
  store <16 x i16> %i.gv, ptr %i.gz, align 2, !tbaa !104, !alias.scope !422, !noalias !421
  store <16 x i16> %i.gw, ptr %i.ha, align 2, !tbaa !104, !alias.scope !422, !noalias !421
  %index.next179 = add nuw i64 %index175, 64      ; 2 uses
  %i.hb = icmp eq i64 %index.next179, %n.vec173
  br i1 %i.hb, label %middle.block180, label %vector.body174, !llvm.loop !377

middle.block180:                                  ; preds = %vector.body174
  %cmp.n181 = icmp eq i64 %i.ge, %n.vec173
  br i1 %cmp.n181, label %.lr.ph96.i.i, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block180
  %min.epilog.iters.check185 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check185, label %.lr.ph18.i.i.i.preheader, label %vec.epilog.vector.body189.preheader, !prof !185

vec.epilog.vector.body189.preheader:              ; preds = %vector.main.loop.iter.check170, %vec.epilog.iter.check183
  %index190.ph = phi i64 [ 0, %vector.main.loop.iter.check170 ], [ %n.vec173, %vec.epilog.iter.check183 ]
  br label %vec.epilog.vector.body189

.lr.ph18.i.i.i.preheader:                         ; preds = %iter.check182, %vec.epilog.iter.check183
  %.117.i.i.i.ph = phi i64 [ %i.gn, %vec.epilog.iter.check183 ], [ %.0.lcssa.i.i.i, %iter.check182 ] ; 4 uses
  %i.hc = sub i64 0, %.117.i.i.i.ph
  %xtraiter444 = and i64 %i.hc, 3                 ; 2 uses
  %lcmp.mod445.not = icmp eq i64 %xtraiter444, 0
  br i1 %lcmp.mod445.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol

.lr.ph18.i.i.i.prol:                              ; preds = %.lr.ph18.i.i.i.preheader, %.lr.ph18.i.i.i.prol
  %.117.i.i.i.prol = phi i64 [ %i.hh, %.lr.ph18.i.i.i.prol ], [ %.117.i.i.i.ph, %.lr.ph18.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.preheader ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.117.i.i.i.prol
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !85
  %i.hf = zext i8 %i.he to i16
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.117.i.i.i.prol
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !104
  %i.hh = add nuw nsw i64 %.117.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter444
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.prol, !llvm.loop !378

.lr.ph18.i.i.i.prol.loopexit:                     ; preds = %.lr.ph18.i.i.i.prol, %.lr.ph18.i.i.i.preheader
  %.117.i.i.i.unr = phi i64 [ %.117.i.i.i.ph, %.lr.ph18.i.i.i.preheader ], [ %i.hh, %.lr.ph18.i.i.i.prol ]
  %i.hi = sub i64 %.117.i.i.i.ph, %i.aa
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %.lr.ph96.i.i, label %.lr.ph18.i.i.i

vec.epilog.vector.body189:                        ; preds = %vec.epilog.vector.body189.preheader, %vec.epilog.vector.body189
  %index190 = phi i64 [ %index.next192, %vec.epilog.vector.body189 ], [ %index190.ph, %vec.epilog.vector.body189.preheader ] ; 2 uses
  %i.hk = add nuw i64 %.0.lcssa.i.i.i, %index190  ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hk
  %wide.load191 = load <8 x i8>, ptr %i.hl, align 1, !tbaa !85, !alias.scope !421
  %i.hm = zext <8 x i8> %wide.load191 to <8 x i16>
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.hk
  store <8 x i16> %i.hm, ptr %i.hn, align 2, !tbaa !104, !alias.scope !422, !noalias !421
  %index.next192 = add nuw i64 %index190, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next192, %i.ge
  br i1 %i.ho, label %.lr.ph96.i.i, label %vec.epilog.vector.body189, !llvm.loop !379

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.hp = phi i64 [ %i.if, %.lr.ph.i.i.i ], [ 16, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.016.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %niter443 = phi i64 [ %niter443.next.3, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.016.i.i.i
  %.val14.i.i.i = load <16 x i8>, ptr %i.hq, align 1, !tbaa !85
  %i.hr = zext <16 x i8> %.val14.i.i.i to <16 x i16>
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.016.i.i.i
  store <16 x i16> %i.hr, ptr %i.hs, align 1, !tbaa !85
  %i.ht = add nuw nsw i64 %i.hp, 16               ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hp
  %.val14.i.i.i.1 = load <16 x i8>, ptr %i.hu, align 1, !tbaa !85
  %i.hv = zext <16 x i8> %.val14.i.i.i.1 to <16 x i16>
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.hp
  store <16 x i16> %i.hv, ptr %i.hw, align 1, !tbaa !85
  %i.hx = add nuw nsw i64 %i.hp, 32               ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ht
  %.val14.i.i.i.2 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !85
  %i.hz = zext <16 x i8> %.val14.i.i.i.2 to <16 x i16>
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ht
  store <16 x i16> %i.hz, ptr %i.ia, align 1, !tbaa !85
  %i.ib = add nuw nsw i64 %i.hp, 48               ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.hx
  %.val14.i.i.i.3 = load <16 x i8>, ptr %i.ic, align 1, !tbaa !85
  %i.id = zext <16 x i8> %.val14.i.i.i.3 to <16 x i16>
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.hx
  store <16 x i16> %i.id, ptr %i.ie, align 1, !tbaa !85
  %i.if = add nuw nsw i64 %i.hp, 64               ; 2 uses
  %niter443.next.3 = add i64 %niter443, 4         ; 2 uses
  %niter443.ncmp.3.not = icmp eq i64 %niter443.next.3, %unroll_iter442
  br i1 %niter443.ncmp.3.not, label %.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !4

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i.prol.loopexit, %.lr.ph18.i.i.i
  %.117.i.i.i = phi i64 [ %i.iz, %.lr.ph18.i.i.i ], [ %.117.i.i.i.unr, %.lr.ph18.i.i.i.prol.loopexit ] ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.117.i.i.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !85
  %i.ii = zext i8 %i.ih to i16
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.117.i.i.i
  store i16 %i.ii, ptr %i.ij, align 2, !tbaa !104
  %i.ik = add nuw nsw i64 %.117.i.i.i, 1          ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !85
  %i.in = zext i8 %i.im to i16
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ik
  store i16 %i.in, ptr %i.io, align 2, !tbaa !104
  %i.ip = add nuw nsw i64 %.117.i.i.i, 2          ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !85
  %i.is = zext i8 %i.ir to i16
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ip
  store i16 %i.is, ptr %i.it, align 2, !tbaa !104
  %i.iu = add nuw nsw i64 %.117.i.i.i, 3          ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !85
  %i.ix = zext i8 %i.iw to i16
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.iu
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !104
  %i.iz = add nuw nsw i64 %.117.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.iz, %i.aa
  br i1 %exitcond.not.i.i.i.3, label %.lr.ph96.i.i, label %.lr.ph18.i.i.i, !llvm.loop !380

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ja = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 10 uses
  br i1 %.not34.i.i.i, label %.preheader.i71.i.i, label %.lr.ph.i69.i.i.preheader

.lr.ph.i69.i.i.preheader:                         ; preds = %bb.e
  br i1 %i.dc, label %.lr.ph.i69.i.i.epil.preheader, label %.lr.ph.i69.i.i

.preheader.i71.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph.i69.i.i
  br i1 %lcmp.mod429.not.not, label %.lr.ph.i69.i.i.epil.preheader, label %.preheader.i71.i.i

.lr.ph.i69.i.i.epil.preheader:                    ; preds = %.preheader.i71.i.i.loopexit.unr-lcssa, %.lr.ph.i69.i.i.preheader
  %.epil.init = phi i64 [ 16, %.lr.ph.i69.i.i.preheader ], [ %i.lr, %.preheader.i71.i.i.loopexit.unr-lcssa ]
  %.023.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i69.i.i.preheader ], [ %i.lj, %.preheader.i71.i.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod431)
  %i.jb = shl nuw nsw i64 %.023.i.i.i.epil.init, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jb
  %.val.i.i.i.epil = load <4 x i64>, ptr %i.jc, align 1, !tbaa !85 ; 2 uses
  %i.jd = and <4 x i64> %.val.i.i.i.epil, splat (i64 71777214294589695)
  %i.je = bitcast <4 x i64> %.val.i.i.i.epil to <16 x i16>
  %i.jf = lshr <16 x i16> %i.je, splat (i16 8)
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.023.i.i.i.epil.init
  store <4 x i64> %i.jd, ptr %i.jg, align 1, !tbaa !85
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %.023.i.i.i.epil.init
  store <16 x i16> %i.jf, ptr %i.jh, align 1, !tbaa !85
  br label %.preheader.i71.i.i

.preheader.i71.i.i:                               ; preds = %.lr.ph.i69.i.i.epil.preheader, %.preheader.i71.i.i.loopexit.unr-lcssa, %bb.e
  %.0.lcssa.i72.i.i = phi i64 [ 0, %bb.e ], [ %i.lj, %.preheader.i71.i.i.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph.i69.i.i.epil.preheader ] ; 7 uses
  %i.ji = icmp samesign ult i64 %.0.lcssa.i72.i.i, %i.aa
  br i1 %i.ji, label %iter.check241, label %.lr.ph96.i.i

iter.check241:                                    ; preds = %.preheader.i71.i.i
  %i.jj = sub nuw nsw i64 %i.aa, %.0.lcssa.i72.i.i ; 5 uses
  %i.jk = shl nuw nsw i64 %.0.lcssa.i72.i.i, 1    ; 3 uses
  %i.jl = getelementptr i8, ptr %.pre.i, i64 %i.jk ; 2 uses
  %i.jm = getelementptr i8, ptr %.pre.i, i64 %i.cn ; 2 uses
  %i.jn = getelementptr i8, ptr %i.ja, i64 %i.jk  ; 2 uses
  %i.jo = getelementptr i8, ptr %i.ja, i64 %i.cn  ; 2 uses
  %i.jp = getelementptr i8, ptr %i.s, i64 %i.do
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.jk  ; 2 uses
  %i.jr = mul i64 %.066100.i.i, %i.ab
  %i.js = getelementptr i8, ptr %i.df, i64 %i.jr  ; 2 uses
  %bound0215 = icmp ult ptr %i.jl, %i.jo
  %bound1216 = icmp ult ptr %i.jn, %i.jm
  %found.conflict217 = and i1 %bound0215, %bound1216
  %bound0218 = icmp ult ptr %i.jl, %i.js
  %bound1219 = icmp ult ptr %i.jq, %i.jm
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %found.conflict217, %found.conflict220
  %bound0222 = icmp ult ptr %i.jn, %i.js
  %bound1223 = icmp ult ptr %i.jq, %i.jo
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  br i1 %conflict.rdx225, label %.lr.ph25.i.i.i.preheader, label %vector.main.loop.iter.check226

vector.main.loop.iter.check226:                   ; preds = %iter.check241
  %min.iters.check227 = icmp samesign ult i64 %i.jj, 32
  br i1 %min.iters.check227, label %vec.epilog.vector.body248.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.main.loop.iter.check226
  %i.jt = and i64 %i.jj, 16
  %n.vec229 = and i64 %i.jj, 480                  ; 4 uses
  %i.ju = add nuw i64 %.0.lcssa.i72.i.i, %n.vec229
  br label %vector.body230

vector.body230:                                   ; preds = %vector.ph228, %vector.body230
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next238, %vector.body230 ] ; 2 uses
  %i.jv = add nuw i64 %.0.lcssa.i72.i.i, %index231 ; 4 uses
  %i.jw = shl nuw nsw i64 %i.jv, 1
  %i.jx = shl i64 %i.jv, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jw
  %i.jz = getelementptr i8, ptr %i.dp, i64 %i.jx
  %i.ka = getelementptr i8, ptr %i.jz, i64 32
  %wide.vec232 = load <32 x i8>, ptr %i.jy, align 1, !tbaa !85, !alias.scope !423
  %i.kb = freeze <32 x i8> %wide.vec232           ; 2 uses
  %8 = bitcast <32 x i8> %i.kb to <16 x i16>
  %i.kc = bitcast <32 x i8> %i.kb to <16 x i16>
  %9 = and <16 x i16> %i.kc, splat (i16 255)
  %i.kd = lshr <16 x i16> %8, splat (i16 8)
  %wide.vec235 = load <32 x i8>, ptr %i.ka, align 1, !tbaa !85, !alias.scope !423
  %i.ke = freeze <32 x i8> %wide.vec235           ; 2 uses
  %i.kf = bitcast <32 x i8> %i.ke to <16 x i16>
  %10 = bitcast <32 x i8> %i.ke to <16 x i16>
  %11 = and <16 x i16> %10, splat (i16 255)
  %12 = lshr <16 x i16> %i.kf, splat (i16 8)
  %13 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.jv ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store <16 x i16> %9, ptr %13, align 2, !tbaa !104, !alias.scope !424, !noalias !425
  store <16 x i16> %11, ptr %14, align 2, !tbaa !104, !alias.scope !424, !noalias !425
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %i.jv ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store <16 x i16> %i.kd, ptr %i.kg, align 2, !tbaa !104, !alias.scope !426, !noalias !423
  store <16 x i16> %12, ptr %i.kh, align 2, !tbaa !104, !alias.scope !426, !noalias !423
  %index.next238 = add nuw i64 %index231, 32      ; 2 uses
  %i.ki = icmp eq i64 %index.next238, %n.vec229
  br i1 %i.ki, label %middle.block239, label %vector.body230, !llvm.loop !385

middle.block239:                                  ; preds = %vector.body230
  %cmp.n240 = icmp eq i64 %i.jj, %n.vec229
  br i1 %cmp.n240, label %.lr.ph96.i.i, label %vec.epilog.iter.check242

vec.epilog.iter.check242:                         ; preds = %middle.block239
  %min.epilog.iters.check244 = icmp eq i64 %i.jt, 0
  br i1 %min.epilog.iters.check244, label %.lr.ph25.i.i.i.preheader, label %vec.epilog.vector.body248.preheader, !prof !186

vec.epilog.vector.body248.preheader:              ; preds = %vector.main.loop.iter.check226, %vec.epilog.iter.check242
  %index249.ph = phi i64 [ 0, %vector.main.loop.iter.check226 ], [ %n.vec229, %vec.epilog.iter.check242 ]
  br label %vec.epilog.vector.body248

.lr.ph25.i.i.i.preheader:                         ; preds = %iter.check241, %vec.epilog.iter.check242
  %.124.i.i.i.ph = phi i64 [ %i.ju, %vec.epilog.iter.check242 ], [ %.0.lcssa.i72.i.i, %iter.check241 ] ; 7 uses
  %.neg = add i64 %.124.i.i.i.ph, 1
  %xtraiter434 = and i64 %.124.i.i.i.ph, 1
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %.lr.ph25.i.i.i.prol.loopexit, label %.lr.ph25.i.i.i.prol

.lr.ph25.i.i.i.prol:                              ; preds = %.lr.ph25.i.i.i.preheader
  %i.kj = shl nuw nsw i64 %.124.i.i.i.ph, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.kj ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !85
  %i.km = zext i8 %i.kl to i16
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.124.i.i.i.ph
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !104
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !85
  %i.kq = zext i8 %i.kp to i16
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %.124.i.i.i.ph
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !104
  %i.ks = add nuw nsw i64 %.124.i.i.i.ph, 1
  br label %.lr.ph25.i.i.i.prol.loopexit

.lr.ph25.i.i.i.prol.loopexit:                     ; preds = %.lr.ph25.i.i.i.prol, %.lr.ph25.i.i.i.preheader
  %.124.i.i.i.unr = phi i64 [ %.124.i.i.i.ph, %.lr.ph25.i.i.i.preheader ], [ %i.ks, %.lr.ph25.i.i.i.prol ]
  %i.kt = icmp eq i64 %i.aa, %.neg
  br i1 %i.kt, label %.lr.ph96.i.i, label %.lr.ph25.i.i.i

vec.epilog.vector.body248:                        ; preds = %vec.epilog.vector.body248.preheader, %vec.epilog.vector.body248
  %index249 = phi i64 [ %index.next253, %vec.epilog.vector.body248 ], [ %index249.ph, %vec.epilog.vector.body248.preheader ] ; 2 uses
  %i.ku = add nuw i64 %.0.lcssa.i72.i.i, %index249 ; 3 uses
  %i.kv = shl nuw nsw i64 %i.ku, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.kv
  %wide.vec250 = load <16 x i8>, ptr %i.kw, align 1, !tbaa !85, !alias.scope !423
  %i.kx = freeze <16 x i8> %wide.vec250           ; 2 uses
  %15 = bitcast <16 x i8> %i.kx to <8 x i16>
  %i.ky = bitcast <16 x i8> %i.kx to <8 x i16>
  %16 = and <8 x i16> %i.ky, splat (i16 255)
  %17 = lshr <8 x i16> %15, splat (i16 8)
  %18 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ku
  store <8 x i16> %16, ptr %18, align 2, !tbaa !104, !alias.scope !424, !noalias !425
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %i.ku
  store <8 x i16> %17, ptr %i.kz, align 2, !tbaa !104, !alias.scope !426, !noalias !423
  %index.next253 = add nuw i64 %index249, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next253, %i.jj
  br i1 %i.la, label %.lr.ph96.i.i, label %vec.epilog.vector.body248, !llvm.loop !386

.lr.ph.i69.i.i:                                   ; preds = %.lr.ph.i69.i.i.preheader, %.lr.ph.i69.i.i
  %i.lb = phi i64 [ %i.lr, %.lr.ph.i69.i.i ], [ 16, %.lr.ph.i69.i.i.preheader ] ; 5 uses
  %.023.i.i.i = phi i64 [ %i.lj, %.lr.ph.i69.i.i ], [ 0, %.lr.ph.i69.i.i.preheader ] ; 3 uses
  %niter433 = phi i64 [ %niter433.next.1, %.lr.ph.i69.i.i ], [ 0, %.lr.ph.i69.i.i.preheader ]
  %i.lc = shl nuw nsw i64 %.023.i.i.i, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lc
  %.val.i.i.i = load <4 x i64>, ptr %i.ld, align 1, !tbaa !85 ; 2 uses
  %i.le = and <4 x i64> %.val.i.i.i, splat (i64 71777214294589695)
  %i.lf = bitcast <4 x i64> %.val.i.i.i to <16 x i16>
  %i.lg = lshr <16 x i16> %i.lf, splat (i16 8)
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.023.i.i.i
  store <4 x i64> %i.le, ptr %i.lh, align 1, !tbaa !85
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %.023.i.i.i
  store <16 x i16> %i.lg, ptr %i.li, align 1, !tbaa !85
  %i.lj = add nuw nsw i64 %i.lb, 16               ; 3 uses
  %i.lk = shl nuw nsw i64 %i.lb, 1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.lk
  %.val.i.i.i.1 = load <4 x i64>, ptr %i.ll, align 1, !tbaa !85 ; 2 uses
  %i.lm = and <4 x i64> %.val.i.i.i.1, splat (i64 71777214294589695)
  %i.ln = bitcast <4 x i64> %.val.i.i.i.1 to <16 x i16>
  %i.lo = lshr <16 x i16> %i.ln, splat (i16 8)
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.lb
  store <4 x i64> %i.lm, ptr %i.lp, align 1, !tbaa !85
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %i.lb
  store <16 x i16> %i.lo, ptr %i.lq, align 1, !tbaa !85
  %i.lr = add nuw nsw i64 %i.lb, 32               ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1.not = icmp eq i64 %niter433.next.1, %unroll_iter432
  br i1 %niter433.ncmp.1.not, label %.preheader.i71.i.i.loopexit.unr-lcssa, label %.lr.ph.i69.i.i, !llvm.loop !5

.lr.ph25.i.i.i:                                   ; preds = %.lr.ph25.i.i.i.prol.loopexit, %.lr.ph25.i.i.i
  %.124.i.i.i = phi i64 [ %i.ml, %.lr.ph25.i.i.i ], [ %.124.i.i.i.unr, %.lr.ph25.i.i.i.prol.loopexit ] ; 5 uses
  %i.ls = shl nuw nsw i64 %.124.i.i.i, 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ls ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !85
  %i.lv = zext i8 %i.lu to i16
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %.124.i.i.i
  store i16 %i.lv, ptr %i.lw, align 2, !tbaa !104
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !85
  %i.lz = zext i8 %i.ly to i16
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %.124.i.i.i
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !104
  %i.mb = add nuw nsw i64 %.124.i.i.i, 1          ; 3 uses
  %i.mc = shl nuw nsw i64 %i.mb, 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mc ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !85
  %i.mf = zext i8 %i.me to i16
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.mb
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !104
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !85
  %i.mj = zext i8 %i.mi to i16
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %i.mb
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !104
  %i.ml = add nuw nsw i64 %.124.i.i.i, 2          ; 2 uses
  %exitcond.not.i73.i.i.1 = icmp eq i64 %i.ml, %i.aa
  br i1 %exitcond.not.i73.i.i.1, label %.lr.ph96.i.i, label %.lr.ph25.i.i.i, !llvm.loop !387

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.mm = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 6 uses
  %i.mn = load ptr, ptr %i.ci, align 16, !tbaa !92 ; 6 uses
  br i1 %.not34.i.i.i, label %.preheader.i76.i.i, label %.lr.ph.i74.i.i

.preheader.i76.i.i:                               ; preds = %.lr.ph.i74.i.i, %bb.f
  %.0.lcssa.i77.i.i = phi i64 [ 0, %bb.f ], [ %i.or, %.lr.ph.i74.i.i ] ; 10 uses
  %i.mo = icmp samesign ult i64 %.0.lcssa.i77.i.i, %i.aa
  br i1 %i.mo, label %iter.check330, label %.lr.ph96.i.i

iter.check330:                                    ; preds = %.preheader.i76.i.i
  %i.mp = sub nuw nsw i64 %i.aa, %.0.lcssa.i77.i.i ; 2 uses
  %i.mq = xor i64 %.0.lcssa.i77.i.i, -1
  %i.mr = add nsw i64 %i.aa, %i.mq
  %i.ms = mul nuw nsw i64 %.0.lcssa.i77.i.i, 3    ; 2 uses
  %scevgep257 = getelementptr i8, ptr %scevgep, i64 %i.ms ; 2 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.mr, i64 3) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.mt = getelementptr i8, ptr %scevgep257, i64 %mul.result
  %i.mu = icmp ult ptr %i.mt, %scevgep257
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.ms ; 2 uses
  %i.mv = getelementptr i8, ptr %scevgep259, i64 %mul.result
  %i.mw = icmp ult ptr %i.mv, %scevgep259
  %i.mx = or i1 %i.mw, %mul.overflow
  %i.my = or i1 %i.mu, %i.mx
  br i1 %i.my, label %.lr.ph37.i.i.i.preheader, label %vector.memcheck293

vector.memcheck293:                               ; preds = %iter.check330
  %i.mz = shl nuw nsw i64 %.0.lcssa.i77.i.i, 1    ; 3 uses
  %i.na = getelementptr i8, ptr %i.mm, i64 %i.mz  ; 3 uses
  %i.nb = getelementptr i8, ptr %i.mm, i64 %i.cr  ; 3 uses
  %i.nc = getelementptr i8, ptr %i.mn, i64 %i.mz  ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mn, i64 %i.cr  ; 3 uses
  %i.ne = getelementptr i8, ptr %.pre.i, i64 %i.mz ; 3 uses
  %i.nf = getelementptr i8, ptr %.pre.i, i64 %i.cr ; 3 uses
  %i.ng = mul nuw nsw i64 %.0.lcssa.i77.i.i, 3
  %i.nh = getelementptr i8, ptr %i.s, i64 %i.do
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.ng  ; 3 uses
  %i.nj = mul i64 %.066100.i.i, %i.ab
  %i.nk = getelementptr i8, ptr %i.db, i64 %i.nj  ; 3 uses
  %bound0294 = icmp ult ptr %i.na, %i.nd
  %bound1295 = icmp ult ptr %i.nc, %i.nb
  %found.conflict296 = and i1 %bound0294, %bound1295
  %bound0297 = icmp ult ptr %i.na, %i.nf
  %bound1298 = icmp ult ptr %i.ne, %i.nb
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %found.conflict296, %found.conflict299
  %bound0301 = icmp ult ptr %i.na, %i.nk
  %bound1302 = icmp ult ptr %i.ni, %i.nb
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %i.nc, %i.nf
  %bound1306 = icmp ult ptr %i.ne, %i.nd
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  %bound0309 = icmp ult ptr %i.nc, %i.nk
  %bound1310 = icmp ult ptr %i.ni, %i.nd
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  %bound0313 = icmp ult ptr %i.ne, %i.nk
  %bound1314 = icmp ult ptr %i.ni, %i.nf
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx316 = or i1 %conflict.rdx312, %found.conflict315
  br i1 %conflict.rdx316, label %.lr.ph37.i.i.i.preheader, label %vector.main.loop.iter.check317

.lr.ph37.i.i.i.preheader:                         ; preds = %iter.check330, %vector.memcheck293
  br label %.lr.ph37.i.i.i

vector.main.loop.iter.check317:                   ; preds = %vector.memcheck293
  %min.iters.check318 = icmp eq i64 %i.aa, %.0.lcssa.i77.i.i
  br i1 %min.iters.check318, label %vec.epilog.vector.body337, label %vector.body321

vector.body321:                                   ; preds = %vector.main.loop.iter.check317, %vector.body321
  %index322 = phi i64 [ %index.next327, %vector.body321 ], [ 0, %vector.main.loop.iter.check317 ] ; 2 uses
  %i.nl = add nuw i64 %.0.lcssa.i77.i.i, %index322 ; 4 uses
  %i.nm = mul i64 %i.nl, 3
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.nm
  %wide.vec323 = load <48 x i8>, ptr %i.nn, align 1, !tbaa !85, !alias.scope !427 ; 3 uses
  %strided.vec324 = shufflevector <48 x i8> %wide.vec323, <48 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>
  %strided.vec325 = shufflevector <48 x i8> %wide.vec323, <48 x i8> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
  %strided.vec326 = shufflevector <48 x i8> %wide.vec323, <48 x i8> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47>
  %i.no = zext <16 x i8> %strided.vec324 to <16 x i16>
  %i.np = zext <16 x i8> %strided.vec325 to <16 x i16>
  %i.nq = zext <16 x i8> %strided.vec326 to <16 x i16> ; 2 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.nl
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %i.nl
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.nl
  %i.nu = sub nsw <16 x i16> %i.no, %i.nq         ; 2 uses
  store <16 x i16> %i.nu, ptr %i.ns, align 2, !tbaa !104, !alias.scope !428, !noalias !429
  %i.nv = ashr <16 x i16> %i.nu, splat (i16 1)
  %i.nw = add nsw <16 x i16> %i.nv, %i.nq         ; 2 uses
  %i.nx = sub nsw <16 x i16> %i.np, %i.nw         ; 2 uses
  store <16 x i16> %i.nx, ptr %i.nt, align 2, !tbaa !104, !alias.scope !430, !noalias !431
  %i.ny = ashr <16 x i16> %i.nx, splat (i16 1)
  %i.nz = add nsw <16 x i16> %i.ny, %i.nw
  store <16 x i16> %i.nz, ptr %i.nr, align 2, !tbaa !104, !alias.scope !432, !noalias !427
  %index.next327 = add nuw i64 %index322, 16      ; 2 uses
  %i.oa = icmp eq i64 %index.next327, %i.mp
  br i1 %i.oa, label %.lr.ph96.i.i, label %vector.body321, !llvm.loop !393

vec.epilog.vector.body337:                        ; preds = %vector.main.loop.iter.check317, %vec.epilog.vector.body337
  %index338 = phi i64 [ %index.next343, %vec.epilog.vector.body337 ], [ 0, %vector.main.loop.iter.check317 ] ; 2 uses
  %i.ob = add nuw i64 %.0.lcssa.i77.i.i, %index338 ; 4 uses
  %i.oc = mul i64 %i.ob, 3
  %i.od = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.oc
  %wide.vec339 = load <12 x i8>, ptr %i.od, align 1, !tbaa !85, !alias.scope !427 ; 3 uses
  %strided.vec340 = shufflevector <12 x i8> %wide.vec339, <12 x i8> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec341 = shufflevector <12 x i8> %wide.vec339, <12 x i8> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec342 = shufflevector <12 x i8> %wide.vec339, <12 x i8> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.oe = zext <4 x i8> %strided.vec340 to <4 x i16>
  %i.of = zext <4 x i8> %strided.vec341 to <4 x i16>
  %i.og = zext <4 x i8> %strided.vec342 to <4 x i16> ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.pre.i, i64 %i.ob
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %i.ob
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.ob
  %i.ok = sub nsw <4 x i16> %i.oe, %i.og          ; 2 uses
  store <4 x i16> %i.ok, ptr %i.oi, align 2, !tbaa !104, !alias.scope !428, !noalias !429
  %i.ol = ashr <4 x i16> %i.ok, splat (i16 1)
  %i.om = add nsw <4 x i16> %i.ol, %i.og          ; 2 uses
  %i.on = sub nsw <4 x i16> %i.of, %i.om          ; 2 uses
  store <4 x i16> %i.on, ptr %i.oj, align 2, !tbaa !104, !alias.scope !430, !noalias !431
  %i.oo = ashr <4 x i16> %i.on, splat (i16 1)
  %i.op = add nsw <4 x i16> %i.oo, %i.om
  store <4 x i16> %i.op, ptr %i.oh, align 2, !tbaa !104, !alias.scope !432, !noalias !427
  %index.next343 = add nuw i64 %index338, 4       ; 2 uses
  %i.oq = icmp eq i64 %index.next343, %i.mp
  br i1 %i.oq, label %.lr.ph96.i.i, label %vec.epilog.vector.body337, !llvm.loop !394

.lr.ph.i74.i.i:                                   ; preds = %bb.f, %.lr.ph.i74.i.i
  %i.or = phi i64 [ %i.pw, %.lr.ph.i74.i.i ], [ 16, %bb.f ] ; 4 uses
  %.035.i.i.i = phi i64 [ %i.or, %.lr.ph.i74.i.i ], [ 0, %bb.f ] ; 4 uses
  %i.os = mul nuw nsw i64 %.035.i.i.i, 3
  %i.ot = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.os ; 3 uses
  %i.ou = load <16 x i8>, ptr %i.ot, align 1, !tbaa !85, !noalias !433
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ow = load <16 x i8>, ptr %i.ov, align 1, !tbaa !85, !noalias !433
end_hunk_0
begin_hunk_1_@_ZZN4AVX212_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %bound1325 = icmp ult ptr %i.jd, %i.ja
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph21.i.i.i.preheader, label %vector.main.loop.iter.check327

vector.main.loop.iter.check327:                   ; preds = %iter.check340
  %min.iters.check328 = icmp samesign ult i64 %i.ix, 32
  br i1 %min.iters.check328, label %vec.epilog.vector.body347.preheader, label %vector.ph329

vector.ph329:                                     ; preds = %vector.main.loop.iter.check327
  %i.jg = and i64 %i.ix, 16
  %n.vec330 = and i64 %i.ix, 480                  ; 4 uses
  %i.jh = add nuw i64 %.0.lcssa.i84.i.i, %n.vec330
  br label %vector.body331

vector.body331:                                   ; preds = %vector.ph329, %vector.body331
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next337, %vector.body331 ] ; 2 uses
  %i.ji = add nuw i64 %.0.lcssa.i84.i.i, %index332 ; 2 uses
  %i.jj = shl nuw i64 %i.ji, 1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.jj ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %wide.load333 = load <8 x i16>, ptr %i.jk, align 1, !alias.scope !892
  %wide.load334 = load <8 x i16>, ptr %i.jl, align 1, !alias.scope !892
  %wide.load335 = load <8 x i16>, ptr %i.jm, align 1, !alias.scope !892
  %wide.load336 = load <8 x i16>, ptr %i.jn, align 1, !alias.scope !892
  %i.jo = zext <8 x i16> %wide.load333 to <8 x i32>
  %i.jp = zext <8 x i16> %wide.load334 to <8 x i32>
  %i.jq = zext <8 x i16> %wide.load335 to <8 x i32>
  %i.jr = zext <8 x i16> %wide.load336 to <8 x i32>
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.ji ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  store <8 x i32> %i.jo, ptr %i.js, align 4, !tbaa !94, !alias.scope !893, !noalias !892
  store <8 x i32> %i.jp, ptr %i.jt, align 4, !tbaa !94, !alias.scope !893, !noalias !892
  store <8 x i32> %i.jq, ptr %i.ju, align 4, !tbaa !94, !alias.scope !893, !noalias !892
  store <8 x i32> %i.jr, ptr %i.jv, align 4, !tbaa !94, !alias.scope !893, !noalias !892
  %index.next337 = add nuw i64 %index332, 32      ; 2 uses
  %i.jw = icmp eq i64 %index.next337, %n.vec330
  br i1 %i.jw, label %middle.block338, label %vector.body331, !llvm.loop !810

middle.block338:                                  ; preds = %vector.body331
  %cmp.n339 = icmp eq i64 %i.ix, %n.vec330
  br i1 %cmp.n339, label %.lr.ph146.i.i, label %vec.epilog.iter.check341

vec.epilog.iter.check341:                         ; preds = %middle.block338
  %min.epilog.iters.check343 = icmp eq i64 %i.jg, 0
  br i1 %min.epilog.iters.check343, label %.lr.ph21.i.i.i.preheader, label %vec.epilog.vector.body347.preheader, !prof !186

vec.epilog.vector.body347.preheader:              ; preds = %vector.main.loop.iter.check327, %vec.epilog.iter.check341
  %index348.ph = phi i64 [ 0, %vector.main.loop.iter.check327 ], [ %n.vec330, %vec.epilog.iter.check341 ]
  br label %vec.epilog.vector.body347

.lr.ph21.i.i.i.preheader:                         ; preds = %iter.check340, %vec.epilog.iter.check341
  %.120.i.i.i.ph = phi i64 [ %i.jh, %vec.epilog.iter.check341 ], [ %.0.lcssa.i84.i.i, %iter.check340 ] ; 4 uses
  %i.jx = sub i64 0, %.120.i.i.i.ph
  %xtraiter720 = and i64 %i.jx, 3                 ; 2 uses
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  br i1 %lcmp.mod721.not, label %.lr.ph21.i.i.i.prol.loopexit, label %.lr.ph21.i.i.i.prol

.lr.ph21.i.i.i.prol:                              ; preds = %.lr.ph21.i.i.i.preheader, %.lr.ph21.i.i.i.prol
  %.120.i.i.i.prol = phi i64 [ %i.kc, %.lr.ph21.i.i.i.prol ], [ %.120.i.i.i.ph, %.lr.ph21.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph21.i.i.i.prol ], [ 0, %.lr.ph21.i.i.i.preheader ]
  %i.jy = shl nuw i64 %.120.i.i.i.prol, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.jy
  %.val15.i.i.i.prol = load i16, ptr %i.jz, align 1
  %i.ka = zext i16 %.val15.i.i.i.prol to i32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.120.i.i.i.prol
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !94
  %i.kc = add nuw nsw i64 %.120.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter720
  br i1 %prol.iter.cmp.not, label %.lr.ph21.i.i.i.prol.loopexit, label %.lr.ph21.i.i.i.prol, !llvm.loop !811

.lr.ph21.i.i.i.prol.loopexit:                     ; preds = %.lr.ph21.i.i.i.prol, %.lr.ph21.i.i.i.preheader
  %.120.i.i.i.unr = phi i64 [ %.120.i.i.i.ph, %.lr.ph21.i.i.i.preheader ], [ %i.kc, %.lr.ph21.i.i.i.prol ]
  %i.kd = sub i64 %.120.i.i.i.ph, %i.aa
  %i.ke = icmp ugt i64 %i.kd, -4
  br i1 %i.ke, label %.lr.ph146.i.i, label %.lr.ph21.i.i.i

vec.epilog.vector.body347:                        ; preds = %vec.epilog.vector.body347.preheader, %vec.epilog.vector.body347
  %index348 = phi i64 [ %index.next350, %vec.epilog.vector.body347 ], [ %index348.ph, %vec.epilog.vector.body347.preheader ] ; 2 uses
  %i.kf = add nuw i64 %.0.lcssa.i84.i.i, %index348 ; 2 uses
  %i.kg = shl nuw i64 %i.kf, 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.kg
  %wide.load349 = load <8 x i16>, ptr %i.kh, align 1, !alias.scope !892
  %i.ki = zext <8 x i16> %wide.load349 to <8 x i32>
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.kf
  store <8 x i32> %i.ki, ptr %i.kj, align 4, !tbaa !94, !alias.scope !893, !noalias !892
  %index.next350 = add nuw i64 %index348, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next350, %i.ix
  br i1 %i.kk, label %.lr.ph146.i.i, label %vec.epilog.vector.body347, !llvm.loop !812

.lr.ph.i81.i.i:                                   ; preds = %bb.f, %.lr.ph.i81.i.i
  %i.kl = phi i64 [ %i.kw, %.lr.ph.i81.i.i ], [ 16, %bb.f ] ; 4 uses
  %.019.i.i.i = phi i64 [ %i.kl, %.lr.ph.i81.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.km = shl nuw nsw i64 %.019.i.i.i, 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.km
  %.val17.i.i.i = load <16 x i16>, ptr %i.kn, align 1, !tbaa !85 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.019.i.i.i ; 2 uses
  %i.kp = shufflevector <16 x i16> %.val17.i.i.i, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.kq = bitcast <16 x i16> %i.kp to <4 x i64>
  %i.kr = shufflevector <16 x i16> %.val17.i.i.i, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ks = bitcast <16 x i16> %i.kr to <4 x i64>
  %i.kt = shufflevector <16 x i16> %i.kp, <16 x i16> %i.kr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ku = shufflevector <4 x i64> %i.kq, <4 x i64> %i.ks, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.kt, ptr %i.ko, align 1, !tbaa !85
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store <4 x i64> %i.ku, ptr %i.kv, align 1, !tbaa !85
  %i.kw = add nuw nsw i64 %i.kl, 16
  %.not.i82.i.i.not = icmp samesign ult i64 %i.kl, %i.aa
  br i1 %.not.i82.i.i.not, label %.lr.ph.i81.i.i, label %.preheader.i83.i.i, !llvm.loop !20

.lr.ph21.i.i.i:                                   ; preds = %.lr.ph21.i.i.i.prol.loopexit, %.lr.ph21.i.i.i
  %.120.i.i.i = phi i64 [ %i.lq, %.lr.ph21.i.i.i ], [ %.120.i.i.i.unr, %.lr.ph21.i.i.i.prol.loopexit ] ; 6 uses
  %i.kx = shl nuw i64 %.120.i.i.i, 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.kx
  %.val15.i.i.i = load i16, ptr %i.ky, align 1
  %i.kz = zext i16 %.val15.i.i.i to i32
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.120.i.i.i
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !94
  %i.lb = add nuw nsw i64 %.120.i.i.i, 1          ; 2 uses
  %i.lc = shl nuw i64 %i.lb, 1
  %i.ld = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lc
  %.val15.i.i.i.1 = load i16, ptr %i.ld, align 1
  %i.le = zext i16 %.val15.i.i.i.1 to i32
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.lb
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !94
  %i.lg = add nuw nsw i64 %.120.i.i.i, 2          ; 2 uses
  %i.lh = shl nuw i64 %i.lg, 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lh
  %.val15.i.i.i.2 = load i16, ptr %i.li, align 1
  %i.lj = zext i16 %.val15.i.i.i.2 to i32
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.lg
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !94
  %i.ll = add nuw nsw i64 %.120.i.i.i, 3          ; 2 uses
  %i.lm = shl nuw i64 %i.ll, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lm
  %.val15.i.i.i.3 = load i16, ptr %i.ln, align 1
  %i.lo = zext i16 %.val15.i.i.i.3 to i32
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.ll
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !94
  %i.lq = add nuw nsw i64 %.120.i.i.i, 4          ; 2 uses
  %exitcond.not.i85.i.i.3 = icmp eq i64 %i.lq, %i.aa
  br i1 %exitcond.not.i85.i.i.3, label %.lr.ph146.i.i, label %.lr.ph21.i.i.i, !llvm.loop !813

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.lr = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 14 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not39.i.i.i, label %.preheader.i88.i.i, label %.lr.ph.i86.i.i

.preheader.i88.i.i:                               ; preds = %.lr.ph.i86.i.i, %bb.h
  %.0.lcssa.i89.i.i = phi i64 [ 0, %bb.h ], [ %i.ng, %.lr.ph.i86.i.i ] ; 7 uses
  %i.ls = icmp samesign ult i64 %.0.lcssa.i89.i.i, %i.aa
  br i1 %i.ls, label %iter.check400, label %.lr.ph146.i.i

iter.check400:                                    ; preds = %.preheader.i88.i.i
  %i.lt = sub nuw nsw i64 %i.aa, %.0.lcssa.i89.i.i ; 2 uses
  %i.lu = shl nuw nsw i64 %.0.lcssa.i89.i.i, 2    ; 3 uses
  %i.lv = getelementptr i8, ptr %.pre.i, i64 %i.lu ; 2 uses
  %i.lw = getelementptr i8, ptr %.pre.i, i64 %i.cx ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lr, i64 %i.lu  ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lr, i64 %i.cx  ; 2 uses
  %i.lz = getelementptr i8, ptr %i.s, i64 %i.dt
  %i.ma = getelementptr i8, ptr %i.lz, i64 %i.lu  ; 2 uses
  %i.mb = mul i64 %.078150.i.i, %i.ab
  %i.mc = getelementptr i8, ptr %i.dk, i64 %i.mb  ; 2 uses
  %bound0374 = icmp ult ptr %i.lv, %i.ly
  %bound1375 = icmp ult ptr %i.lx, %i.lw
  %found.conflict376 = and i1 %bound0374, %bound1375
  %bound0377 = icmp ult ptr %i.lv, %i.mc
  %bound1378 = icmp ult ptr %i.ma, %i.lw
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %found.conflict376, %found.conflict379
  %bound0381 = icmp ult ptr %i.lx, %i.mc
  %bound1382 = icmp ult ptr %i.ma, %i.ly
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %conflict.rdx380, %found.conflict383
  br i1 %conflict.rdx384, label %.lr.ph39.i.i.i, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %iter.check400
  %min.iters.check386 = icmp eq i64 %i.aa, %.0.lcssa.i89.i.i
  br i1 %min.iters.check386, label %vec.epilog.vector.body407, label %vector.body389

vector.body389:                                   ; preds = %vector.main.loop.iter.check385, %vector.body389
  %index390 = phi i64 [ %index.next397, %vector.body389 ], [ 0, %vector.main.loop.iter.check385 ] ; 2 uses
  %i.md = add nuw i64 %.0.lcssa.i89.i.i, %index390 ; 4 uses
  %i.me = shl nuw nsw i64 %i.md, 2
  %i.mf = shl i64 %i.md, 2
  %i.mg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.me
  %i.mh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.mf
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %wide.vec391 = load <16 x i16>, ptr %i.mg, align 1, !alias.scope !894
  %wide.vec391.fr = freeze <16 x i16> %wide.vec391 ; 2 uses
  %wide.vec394 = load <16 x i16>, ptr %i.mi, align 1, !alias.scope !894
  %wide.vec394.fr = freeze <16 x i16> %wide.vec394 ; 2 uses
  %i.mj = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec391.fr)
  %8 = bitcast <16 x i16> %i.mj to <8 x i32>
  %9 = and <8 x i32> %8, splat (i32 65535)
  %i.mk = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec394.fr)
  %10 = bitcast <16 x i16> %i.mk to <8 x i32>
  %11 = and <8 x i32> %10, splat (i32 65535)
  %i.ml = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec391.fr)
  %i.mm = bitcast <16 x i16> %i.ml to <8 x i32>
  %i.mn = lshr <8 x i32> %i.mm, splat (i32 16)
  %i.mo = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec394.fr)
  %i.mp = bitcast <16 x i16> %i.mo to <8 x i32>
  %i.mq = lshr <8 x i32> %i.mp, splat (i32 16)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.md ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  store <8 x i32> %9, ptr %i.mr, align 4, !tbaa !94, !alias.scope !895, !noalias !896
  store <8 x i32> %11, ptr %i.ms, align 4, !tbaa !94, !alias.scope !895, !noalias !896
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.md ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  store <8 x i32> %i.mn, ptr %i.mt, align 4, !tbaa !94, !alias.scope !897, !noalias !894
  store <8 x i32> %i.mq, ptr %i.mu, align 4, !tbaa !94, !alias.scope !897, !noalias !894
  %index.next397 = add nuw i64 %index390, 16      ; 2 uses
  %i.mv = icmp eq i64 %index.next397, %i.lt
  br i1 %i.mv, label %.lr.ph146.i.i, label %vector.body389, !llvm.loop !818

vec.epilog.vector.body407:                        ; preds = %vector.main.loop.iter.check385, %vec.epilog.vector.body407
  %index408 = phi i64 [ %index.next412, %vec.epilog.vector.body407 ], [ 0, %vector.main.loop.iter.check385 ] ; 2 uses
  %i.mw = add nuw i64 %.0.lcssa.i89.i.i, %index408 ; 3 uses
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.mx
  %wide.vec409 = load <8 x i16>, ptr %i.my, align 1, !alias.scope !894
  %wide.vec409.fr = freeze <8 x i16> %wide.vec409 ; 2 uses
  %i.mz = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec409.fr)
  %12 = bitcast <8 x i16> %i.mz to <4 x i32>
  %13 = and <4 x i32> %12, splat (i32 65535)
  %i.na = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec409.fr)
  %i.nb = bitcast <8 x i16> %i.na to <4 x i32>
  %i.nc = lshr <4 x i32> %i.nb, splat (i32 16)
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.mw
  store <4 x i32> %13, ptr %i.nd, align 4, !tbaa !94, !alias.scope !895, !noalias !896
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.mw
  store <4 x i32> %i.nc, ptr %i.ne, align 4, !tbaa !94, !alias.scope !897, !noalias !894
  %index.next412 = add nuw i64 %index408, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next412, %i.lt
  br i1 %i.nf, label %.lr.ph146.i.i, label %vec.epilog.vector.body407, !llvm.loop !819

.lr.ph.i86.i.i:                                   ; preds = %bb.h, %.lr.ph.i86.i.i
  %i.ng = phi i64 [ %i.oq, %.lr.ph.i86.i.i ], [ 16, %bb.h ] ; 4 uses
  %.037.i.i.i = phi i64 [ %i.ng, %.lr.ph.i86.i.i ], [ 0, %bb.h ] ; 3 uses
  %i.nh = shl nuw nsw i64 %.037.i.i.i, 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.nh ; 2 uses
  %.val2834.i.i.i = load <8 x i32>, ptr %i.ni, align 1, !tbaa !85 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 32
  %.val2935.i.i.i = load <8 x i32>, ptr %i.nj, align 1, !tbaa !85 ; 2 uses
  %i.nk = and <8 x i32> %.val2834.i.i.i, splat (i32 65535)
  %i.nl = and <8 x i32> %.val2935.i.i.i, splat (i32 65535)
  %i.nm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.nk, <8 x i32> %i.nl)
  %i.nn = bitcast <16 x i16> %i.nm to <4 x i64>
  %i.no = shufflevector <4 x i64> %i.nn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.np = lshr <8 x i32> %.val2834.i.i.i, splat (i32 16)
  %i.nq = lshr <8 x i32> %.val2935.i.i.i, splat (i32 16)
  %i.nr = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.np, <8 x i32> %i.nq)
  %i.ns = bitcast <16 x i16> %i.nr to <4 x i64>
  %i.nt = shufflevector <4 x i64> %i.ns, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.nu = bitcast <4 x i64> %i.no to <32 x i8>
  %i.nv = shufflevector <32 x i8> %i.nu, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.nw = bitcast <4 x i64> %i.nt to <32 x i8>
  %i.nx = shufflevector <32 x i8> %i.nw, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.037.i.i.i ; 2 uses
  %i.nz = bitcast <32 x i8> %i.nv to <16 x i16>   ; 2 uses
  %i.oa = shufflevector <16 x i16> %i.nz, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ob = bitcast <16 x i16> %i.oa to <4 x i64>
  %i.oc = shufflevector <16 x i16> %i.nz, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.od = bitcast <16 x i16> %i.oc to <4 x i64>
  %i.oe = shufflevector <16 x i16> %i.oa, <16 x i16> %i.oc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.of = shufflevector <4 x i64> %i.ob, <4 x i64> %i.od, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.oe, ptr %i.ny, align 1, !tbaa !85
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  store <4 x i64> %i.of, ptr %i.og, align 1, !tbaa !85
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.037.i.i.i ; 2 uses
  %i.oi = bitcast <32 x i8> %i.nx to <16 x i16>   ; 2 uses
  %i.oj = shufflevector <16 x i16> %i.oi, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ok = bitcast <16 x i16> %i.oj to <4 x i64>
  %i.ol = shufflevector <16 x i16> %i.oi, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.om = bitcast <16 x i16> %i.ol to <4 x i64>
  %i.on = shufflevector <16 x i16> %i.oj, <16 x i16> %i.ol, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oo = shufflevector <4 x i64> %i.ok, <4 x i64> %i.om, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.on, ptr %i.oh, align 1, !tbaa !85
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  store <4 x i64> %i.oo, ptr %i.op, align 1, !tbaa !85
  %i.oq = add nuw nsw i64 %i.ng, 16
  %.not.i87.i.i.not = icmp samesign ult i64 %i.ng, %i.aa
  br i1 %.not.i87.i.i.not, label %.lr.ph.i86.i.i, label %.preheader.i88.i.i, !llvm.loop !21

.lr.ph39.i.i.i:                                   ; preds = %iter.check400, %.lr.ph39.i.i.i
  %.138.i.i.i = phi i64 [ %i.pk, %.lr.ph39.i.i.i ], [ %.0.lcssa.i89.i.i, %iter.check400 ] ; 5 uses
  %i.or = shl nuw nsw i64 %.138.i.i.i, 2
  %i.os = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.or ; 2 uses
  %.val26.i.i.i = load i16, ptr %i.os, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  %.val.i.i.i = load i16, ptr %i.ot, align 1
  %i.ou = call noundef i16 @llvm.bswap.i16(i16 %.val26.i.i.i)
  %i.ov = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i)
  %i.ow = zext i16 %i.ou to i32
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.138.i.i.i
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !94
  %i.oy = zext i16 %i.ov to i32
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.138.i.i.i
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !94
  %i.pa = or disjoint i64 %.138.i.i.i, 1          ; 3 uses
  %i.pb = shl nuw nsw i64 %i.pa, 2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.pb ; 2 uses
  %.val26.i.i.i.1 = load i16, ptr %i.pc, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  %.val.i.i.i.1 = load i16, ptr %i.pd, align 1
  %i.pe = call noundef i16 @llvm.bswap.i16(i16 %.val26.i.i.i.1)
  %i.pf = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.1)
  %i.pg = zext i16 %i.pe to i32
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.pa
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !94
  %i.pi = zext i16 %i.pf to i32
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.pa
  store i32 %i.pi, ptr %i.pj, align 4, !tbaa !94
  %i.pk = add nuw nsw i64 %.138.i.i.i, 2          ; 2 uses
  %exitcond.not.i90.i.i.1 = icmp eq i64 %i.pk, %i.aa
  br i1 %exitcond.not.i90.i.i.1, label %.lr.ph146.i.i, label %.lr.ph39.i.i.i, !llvm.loop !820

bb.i:                                             ; preds = %bb.g
  br i1 %.not39.i.i.i, label %.preheader.i93.i.i, label %.lr.ph.i91.i.i

.preheader.i93.i.i:                               ; preds = %.lr.ph.i91.i.i, %bb.i
  %.0.lcssa.i94.i.i = phi i64 [ 0, %bb.i ], [ %i.qr, %.lr.ph.i91.i.i ] ; 7 uses
  %i.pl = icmp samesign ult i64 %.0.lcssa.i94.i.i, %i.aa
  br i1 %i.pl, label %iter.check462, label %.lr.ph146.i.i

iter.check462:                                    ; preds = %.preheader.i93.i.i
  %i.pm = sub nuw nsw i64 %i.aa, %.0.lcssa.i94.i.i ; 2 uses
  %i.pn = shl nuw nsw i64 %.0.lcssa.i94.i.i, 2    ; 3 uses
  %i.po = getelementptr i8, ptr %.pre.i, i64 %i.pn ; 2 uses
  %i.pp = getelementptr i8, ptr %.pre.i, i64 %i.cx ; 2 uses
  %i.pq = getelementptr i8, ptr %i.lr, i64 %i.pn  ; 2 uses
  %i.pr = getelementptr i8, ptr %i.lr, i64 %i.cx  ; 2 uses
  %i.ps = getelementptr i8, ptr %i.s, i64 %i.dt
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.pn  ; 2 uses
  %i.pu = mul i64 %.078150.i.i, %i.ab
  %i.pv = getelementptr i8, ptr %i.dj, i64 %i.pu  ; 2 uses
  %bound0436 = icmp ult ptr %i.po, %i.pr
  %bound1437 = icmp ult ptr %i.pq, %i.pp
  %found.conflict438 = and i1 %bound0436, %bound1437
  %bound0439 = icmp ult ptr %i.po, %i.pv
  %bound1440 = icmp ult ptr %i.pt, %i.pp
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %found.conflict438, %found.conflict441
  %bound0443 = icmp ult ptr %i.pq, %i.pv
  %bound1444 = icmp ult ptr %i.pt, %i.pr
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  br i1 %conflict.rdx446, label %.lr.ph33.i.i.i, label %vector.main.loop.iter.check447

vector.main.loop.iter.check447:                   ; preds = %iter.check462
  %min.iters.check448 = icmp eq i64 %i.aa, %.0.lcssa.i94.i.i
  br i1 %min.iters.check448, label %vec.epilog.vector.body469, label %vector.body451

vector.body451:                                   ; preds = %vector.main.loop.iter.check447, %vector.body451
  %index452 = phi i64 [ %index.next459, %vector.body451 ], [ 0, %vector.main.loop.iter.check447 ] ; 2 uses
  %i.pw = add nuw i64 %.0.lcssa.i94.i.i, %index452 ; 4 uses
  %i.px = shl nuw nsw i64 %i.pw, 2
  %i.py = shl i64 %i.pw, 2
  %i.pz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.px
  %i.qa = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.py
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %wide.vec453 = load <16 x i16>, ptr %i.pz, align 1, !alias.scope !898
  %i.qc = freeze <16 x i16> %wide.vec453          ; 2 uses
  %14 = bitcast <16 x i16> %i.qc to <8 x i32>
  %i.qd = bitcast <16 x i16> %i.qc to <8 x i32>
  %15 = and <8 x i32> %i.qd, splat (i32 65535)
  %i.qe = lshr <8 x i32> %14, splat (i32 16)
  %wide.vec456 = load <16 x i16>, ptr %i.qb, align 1, !alias.scope !898
  %i.qf = freeze <16 x i16> %wide.vec456          ; 2 uses
  %i.qg = bitcast <16 x i16> %i.qf to <8 x i32>
  %16 = bitcast <16 x i16> %i.qf to <8 x i32>
  %17 = and <8 x i32> %16, splat (i32 65535)
  %18 = lshr <8 x i32> %i.qg, splat (i32 16)
  %19 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.pw ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 32
  store <8 x i32> %15, ptr %19, align 4, !tbaa !94, !alias.scope !899, !noalias !900
  store <8 x i32> %17, ptr %20, align 4, !tbaa !94, !alias.scope !899, !noalias !900
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.pw ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  store <8 x i32> %i.qe, ptr %i.qh, align 4, !tbaa !94, !alias.scope !901, !noalias !898
  store <8 x i32> %18, ptr %i.qi, align 4, !tbaa !94, !alias.scope !901, !noalias !898
  %index.next459 = add nuw i64 %index452, 16      ; 2 uses
  %i.qj = icmp eq i64 %index.next459, %i.pm
  br i1 %i.qj, label %.lr.ph146.i.i, label %vector.body451, !llvm.loop !825

vec.epilog.vector.body469:                        ; preds = %vector.main.loop.iter.check447, %vec.epilog.vector.body469
  %index470 = phi i64 [ %index.next474, %vec.epilog.vector.body469 ], [ 0, %vector.main.loop.iter.check447 ] ; 2 uses
  %i.qk = add nuw i64 %.0.lcssa.i94.i.i, %index470 ; 3 uses
  %i.ql = shl nuw nsw i64 %i.qk, 2
  %i.qm = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ql
  %wide.vec471 = load <8 x i16>, ptr %i.qm, align 1, !alias.scope !898
  %i.qn = freeze <8 x i16> %wide.vec471           ; 2 uses
  %21 = bitcast <8 x i16> %i.qn to <4 x i32>
  %i.qo = bitcast <8 x i16> %i.qn to <4 x i32>
  %22 = and <4 x i32> %i.qo, splat (i32 65535)
  %23 = lshr <4 x i32> %21, splat (i32 16)
  %24 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.qk
  store <4 x i32> %22, ptr %24, align 4, !tbaa !94, !alias.scope !899, !noalias !900
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.qk
  store <4 x i32> %23, ptr %i.qp, align 4, !tbaa !94, !alias.scope !901, !noalias !898
  %index.next474 = add nuw i64 %index470, 4       ; 2 uses
  %i.qq = icmp eq i64 %index.next474, %i.pm
  br i1 %i.qq, label %.lr.ph146.i.i, label %vec.epilog.vector.body469, !llvm.loop !826

.lr.ph.i91.i.i:                                   ; preds = %bb.i, %.lr.ph.i91.i.i
  %i.qr = phi i64 [ %i.rx, %.lr.ph.i91.i.i ], [ 16, %bb.i ] ; 4 uses
  %.031.i.i.i = phi i64 [ %i.qr, %.lr.ph.i91.i.i ], [ 0, %bb.i ] ; 3 uses
  %i.qs = shl nuw nsw i64 %.031.i.i.i, 2
  %i.qt = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.qs ; 2 uses
  %.val2628.i.i.i = load <8 x i32>, ptr %i.qt, align 1, !tbaa !85 ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qt, i64 32
  %.val2729.i.i.i = load <8 x i32>, ptr %i.qu, align 1, !tbaa !85 ; 2 uses
  %i.qv = and <8 x i32> %.val2628.i.i.i, splat (i32 65535)
  %i.qw = and <8 x i32> %.val2729.i.i.i, splat (i32 65535)
  %i.qx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qv, <8 x i32> %i.qw)
  %i.qy = bitcast <16 x i16> %i.qx to <4 x i64>
  %i.qz = shufflevector <4 x i64> %i.qy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ra = lshr <8 x i32> %.val2628.i.i.i, splat (i32 16)
  %i.rb = lshr <8 x i32> %.val2729.i.i.i, splat (i32 16)
  %i.rc = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ra, <8 x i32> %i.rb)
  %i.rd = bitcast <16 x i16> %i.rc to <4 x i64>
  %i.re = shufflevector <4 x i64> %i.rd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.031.i.i.i ; 2 uses
  %i.rg = bitcast <4 x i64> %i.qz to <16 x i16>   ; 2 uses
  %i.rh = shufflevector <16 x i16> %i.rg, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ri = bitcast <16 x i16> %i.rh to <4 x i64>
  %i.rj = shufflevector <16 x i16> %i.rg, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.rk = bitcast <16 x i16> %i.rj to <4 x i64>
  %i.rl = shufflevector <16 x i16> %i.rh, <16 x i16> %i.rj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.rm = shufflevector <4 x i64> %i.ri, <4 x i64> %i.rk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.rl, ptr %i.rf, align 1, !tbaa !85
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rf, i64 32
  store <4 x i64> %i.rm, ptr %i.rn, align 1, !tbaa !85
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.031.i.i.i ; 2 uses
  %i.rp = bitcast <4 x i64> %i.re to <16 x i16>   ; 2 uses
  %i.rq = shufflevector <16 x i16> %i.rp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.rr = bitcast <16 x i16> %i.rq to <4 x i64>
  %i.rs = shufflevector <16 x i16> %i.rp, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.rt = bitcast <16 x i16> %i.rs to <4 x i64>
  %i.ru = shufflevector <16 x i16> %i.rq, <16 x i16> %i.rs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.rv = shufflevector <4 x i64> %i.rr, <4 x i64> %i.rt, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.ru, ptr %i.ro, align 1, !tbaa !85
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store <4 x i64> %i.rv, ptr %i.rw, align 1, !tbaa !85
  %i.rx = add nuw nsw i64 %i.qr, 16
  %.not.i92.i.i.not = icmp samesign ult i64 %i.qr, %i.aa
  br i1 %.not.i92.i.i.not, label %.lr.ph.i91.i.i, label %.preheader.i93.i.i, !llvm.loop !22

.lr.ph33.i.i.i:                                   ; preds = %iter.check462, %.lr.ph33.i.i.i
  %.132.i.i.i = phi i64 [ %i.sn, %.lr.ph33.i.i.i ], [ %.0.lcssa.i94.i.i, %iter.check462 ] ; 5 uses
  %i.ry = shl nuw nsw i64 %.132.i.i.i, 2
  %i.rz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ry ; 2 uses
  %.val24.i.i.i = load i16, ptr %i.rz, align 1
  %i.sa = zext i16 %.val24.i.i.i to i32
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 2
  %.val.i95.i.i = load i16, ptr %i.sb, align 1
  %i.sc = zext i16 %.val.i95.i.i to i32
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.132.i.i.i
  store i32 %i.sa, ptr %i.sd, align 4, !tbaa !94
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.132.i.i.i
  store i32 %i.sc, ptr %i.se, align 4, !tbaa !94
  %i.sf = or disjoint i64 %.132.i.i.i, 1          ; 3 uses
  %i.sg = shl nuw nsw i64 %i.sf, 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.sg ; 2 uses
  %.val24.i.i.i.1 = load i16, ptr %i.sh, align 1
  %i.si = zext i16 %.val24.i.i.i.1 to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %.val.i95.i.i.1 = load i16, ptr %i.sj, align 1
  %i.sk = zext i16 %.val.i95.i.i.1 to i32
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.sf
  store i32 %i.si, ptr %i.sl, align 4, !tbaa !94
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.sf
  store i32 %i.sk, ptr %i.sm, align 4, !tbaa !94
  %i.sn = add nuw nsw i64 %.132.i.i.i, 2          ; 2 uses
  %exitcond.not.i96.i.i.1 = icmp eq i64 %i.sn, %i.aa
  br i1 %exitcond.not.i96.i.i.1, label %.lr.ph146.i.i, label %.lr.ph33.i.i.i, !llvm.loop !827

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.so = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 10 uses
  %i.sp = load ptr, ptr %i.cl, align 16, !tbaa !101 ; 10 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not39.i.i.i, label %.preheader.i99.i.i, label %.lr.ph.i97.i.i

.preheader.i99.i.i:                               ; preds = %.lr.ph.i97.i.i, %bb.k
  %.0.lcssa.i100.i.i = phi i64 [ 0, %bb.k ], [ %i.ua, %.lr.ph.i97.i.i ] ; 6 uses
  %i.sq = icmp samesign ult i64 %.0.lcssa.i100.i.i, %i.aa
  br i1 %i.sq, label %.lr.ph51.i.i.i.preheader, label %.lr.ph146.i.i

.lr.ph51.i.i.i.preheader:                         ; preds = %.preheader.i99.i.i
  %i.sr = sub nuw nsw i64 %i.aa, %.0.lcssa.i100.i.i
  %i.ss = shl nuw nsw i64 %.0.lcssa.i100.i.i, 2   ; 3 uses
  %i.st = getelementptr i8, ptr %i.so, i64 %i.ss  ; 3 uses
  %i.su = getelementptr i8, ptr %i.so, i64 %i.cx  ; 3 uses
  %i.sv = getelementptr i8, ptr %i.sp, i64 %i.ss  ; 3 uses
  %i.sw = getelementptr i8, ptr %i.sp, i64 %i.cx  ; 3 uses
  %i.sx = getelementptr i8, ptr %.pre.i, i64 %i.ss ; 3 uses
  %i.sy = getelementptr i8, ptr %.pre.i, i64 %i.cx ; 3 uses
  %i.sz = mul nuw nsw i64 %.0.lcssa.i100.i.i, 6
  %i.ta = getelementptr i8, ptr %i.s, i64 %i.dt
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.sz  ; 3 uses
  %i.tc = mul i64 %.078150.i.i, %i.ab
  %i.td = getelementptr i8, ptr %i.di, i64 %i.tc  ; 3 uses
  %bound0512 = icmp ult ptr %i.st, %i.sw
  %bound1513 = icmp ult ptr %i.sv, %i.su
  %found.conflict514 = and i1 %bound0512, %bound1513
  %bound0515 = icmp ult ptr %i.st, %i.sy
  %bound1516 = icmp ult ptr %i.sx, %i.su
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx518 = or i1 %found.conflict514, %found.conflict517
  %bound0519 = icmp ult ptr %i.st, %i.td
  %bound1520 = icmp ult ptr %i.tb, %i.su
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx522 = or i1 %conflict.rdx518, %found.conflict521
  %bound0523 = icmp ult ptr %i.sv, %i.sy
  %bound1524 = icmp ult ptr %i.sx, %i.sw
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %conflict.rdx522, %found.conflict525
  %bound0527 = icmp ult ptr %i.sv, %i.td
  %bound1528 = icmp ult ptr %i.tb, %i.sw
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %conflict.rdx526, %found.conflict529
  %bound0531 = icmp ult ptr %i.sx, %i.td
  %bound1532 = icmp ult ptr %i.tb, %i.sy
  %found.conflict533 = and i1 %bound0531, %bound1532
  %conflict.rdx534 = or i1 %conflict.rdx530, %found.conflict533
  br i1 %conflict.rdx534, label %.lr.ph51.i.i.i, label %vector.body537

vector.body537:                                   ; preds = %.lr.ph51.i.i.i.preheader, %vector.body537
  %index538 = phi i64 [ %index.next543, %vector.body537 ], [ 0, %.lr.ph51.i.i.i.preheader ] ; 2 uses
  %i.te = add nuw i64 %.0.lcssa.i100.i.i, %index538 ; 4 uses
  %i.tf = mul i64 %i.te, 6
  %i.tg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.tf
  %wide.vec539 = load <24 x i16>, ptr %i.tg, align 1, !alias.scope !902 ; 3 uses
  %i.th = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec539)
  %i.ti = shufflevector <24 x i16> %i.th, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.tj = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec539)
  %i.tk = shufflevector <24 x i16> %i.tj, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.tl = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec539)
  %i.tm = shufflevector <24 x i16> %i.tl, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.tn = zext <8 x i16> %i.ti to <8 x i32>
  %i.to = zext <8 x i16> %i.tk to <8 x i32>
  %i.tp = zext <8 x i16> %i.tm to <8 x i32>       ; 2 uses
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.te
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.te
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.te
  %i.tt = sub nsw <8 x i32> %i.tn, %i.tp          ; 2 uses
  store <8 x i32> %i.tt, ptr %i.tr, align 4, !tbaa !94, !alias.scope !903, !noalias !904
  %i.tu = ashr <8 x i32> %i.tt, splat (i32 1)
  %i.tv = add nsw <8 x i32> %i.tu, %i.tp          ; 2 uses
  %i.tw = sub nsw <8 x i32> %i.to, %i.tv          ; 2 uses
  store <8 x i32> %i.tw, ptr %i.ts, align 4, !tbaa !94, !alias.scope !905, !noalias !906
  %i.tx = ashr <8 x i32> %i.tw, splat (i32 1)
  %i.ty = add nsw <8 x i32> %i.tx, %i.tv
  store <8 x i32> %i.ty, ptr %i.tq, align 4, !tbaa !94, !alias.scope !907, !noalias !902
  %index.next543 = add nuw i64 %index538, 8       ; 2 uses
  %i.tz = icmp eq i64 %index.next543, %i.sr
  br i1 %i.tz, label %.lr.ph146.i.i, label %vector.body537, !llvm.loop !833

.lr.ph.i97.i.i:                                   ; preds = %bb.k, %.lr.ph.i97.i.i
  %i.ua = phi i64 [ %i.xx, %.lr.ph.i97.i.i ], [ 16, %bb.k ] ; 4 uses
  %.049.i.i.i = phi i64 [ %i.ua, %.lr.ph.i97.i.i ], [ 0, %bb.k ] ; 4 uses
  %i.ub = mul nuw nsw i64 %.049.i.i.i, 6
  %i.uc = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ub ; 3 uses
  %.val3436.i.i.i.i = load <16 x i16>, ptr %i.uc, align 1, !tbaa !85, !noalias !908 ; 2 uses
  %i.ud = lshr <16 x i16> %.val3436.i.i.i.i, splat (i16 8)
  %i.ue = and <16 x i16> %.val3436.i.i.i.i, splat (i16 255)
  %i.uf = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.ue, <16 x i16> %i.ud)
  %i.ug = bitcast <32 x i8> %i.uf to <4 x i64>
  %i.uh = shufflevector <4 x i64> %i.ug, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %.val3337.i.i.i.i = load <16 x i16>, ptr %i.ui, align 1, !tbaa !85, !noalias !908 ; 2 uses
  %i.uj = lshr <16 x i16> %.val3337.i.i.i.i, splat (i16 8)
  %i.uk = and <16 x i16> %.val3337.i.i.i.i, splat (i16 255)
  %i.ul = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.uk, <16 x i16> %i.uj)
  %i.um = bitcast <32 x i8> %i.ul to <4 x i64>
  %i.un = shufflevector <4 x i64> %i.um, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uc, i64 64
  %.val38.i.i.i.i = load <16 x i16>, ptr %i.uo, align 1, !tbaa !85, !noalias !908 ; 2 uses
  %i.up = lshr <16 x i16> %.val38.i.i.i.i, splat (i16 8)
  %i.uq = and <16 x i16> %.val38.i.i.i.i, splat (i16 255)
  %i.ur = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.uq, <16 x i16> %i.up)
  %i.us = bitcast <32 x i8> %i.ur to <4 x i64>
  %i.ut = shufflevector <4 x i64> %i.us, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uu = bitcast <4 x i64> %i.uh to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.uw = bitcast <4 x i64> %i.un to <32 x i8>
  %i.ux = shufflevector <32 x i8> %i.uw, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.uy = bitcast <4 x i64> %i.ut to <32 x i8>
  %i.uz = shufflevector <32 x i8> %i.uy, <32 x i8> poison, <32 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 2, i32 5, i32 8, i32 11, i32 14, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 18, i32 21, i32 24, i32 27, i32 30, i32 17, i32 20, i32 23, i32 26, i32 29> ; 3 uses
  %i.va = shufflevector <32 x i8> %i.uz, <32 x i8> %i.ux, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.vb = shufflevector <32 x i8> %i.uv, <32 x i8> %i.ux, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vc = shufflevector <32 x i8> %i.vb, <32 x i8> %i.uz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63> ; 2 uses
  %i.vd = shufflevector <32 x i8> %i.ux, <32 x i8> %i.uv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 43, i32 44, i32 45, i32 46, i32 47, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ve = shufflevector <32 x i8> %i.vd, <32 x i8> %i.uz, <32 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 38, i32 39, i32 40, i32 41, i32 42, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 54, i32 55, i32 56, i32 57, i32 58> ; 2 uses
  %i.vf = shufflevector <32 x i8> %i.uv, <32 x i8> %i.va, <32 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 43, i32 44, i32 45, i32 46, i32 47, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 22, i32 23, i32 24, i32 25, i32 26, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53> ; 2 uses
  %i.vg = shufflevector <32 x i8> %i.vc, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vh = zext <16 x i8> %i.vg to <16 x i16>
  %i.vi = shufflevector <32 x i8> %i.vc, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
end_hunk_1
begin_hunk_2_@_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a
  %wide.gep509 = getelementptr inbounds nuw [4 x i8], <2 x ptr> %wide.gep507, <2 x i64> %i.fj
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index496 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x ptr> %wide.gep508, ptr %i.fk, align 16, !tbaa !101
  store <2 x ptr> %wide.gep509, ptr %i.fl, align 16, !tbaa !101
  %index.next510 = add nuw i64 %index496, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.fm = icmp eq i64 %index.next510, %n.vec
  br i1 %i.fm, label %middle.block511, label %vector.body495, !llvm.loop !1248

middle.block511:                                  ; preds = %vector.body495
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph492.preheader

scalar.ph492.preheader:                           ; preds = %.lr.ph.i.i, %middle.block511
  %.077123.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block511 ]
  br label %scalar.ph492

._crit_edge.i.i:                                  ; preds = %scalar.ph492, %middle.block511
  %.pre.i = load ptr, ptr %i.b, align 16, !tbaa !101 ; 37 uses
  switch i64 %i.ar, label %._crit_edge.i.._crit_edge.thread.i_crit_edge.i [
    i64 1, label %bb.d
    i64 2, label %bb.g
    i64 3, label %bb.j
  ]

._crit_edge.i.._crit_edge.thread.i_crit_edge.i:   ; preds = %._crit_edge.i.i
  %.pre68.i = load ptr, ptr %i.ck, align 8, !tbaa !101
  %.pre69.i = load ptr, ptr %i.cl, align 16, !tbaa !101
  %.pre70.i = load ptr, ptr %i.cm, align 8, !tbaa !101
  br label %._crit_edge.thread.i.i

scalar.ph492:                                     ; preds = %scalar.ph492.preheader, %scalar.ph492
  %.077123.i.i = phi i64 [ %i.gc, %scalar.ph492 ], [ %.077123.i.i.ph, %scalar.ph492.preheader ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [2688 x i8], ptr %.sroa.0.0, i64 %.077123.i.i ; 2 uses
  %i.fo = getelementptr inbounds nuw [1344 x i8], ptr %i.fn, i64 %i.eu
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 128 ; 2 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = and i64 %i.fr, 15
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.077123.i.i
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !101
  %i.fv = getelementptr inbounds nuw [1344 x i8], ptr %i.fn, i64 %i.ev
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 128 ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = lshr i64 %i.fx, 2
  %i.fz = and i64 %i.fy, 15
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.077123.i.i
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !101
  %i.gc = add nuw nsw i64 %.077123.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gc, %i.ar
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph492, !llvm.loop !1249

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck255

vector.memcheck255:                               ; preds = %bb.e
  %i.gd = getelementptr i8, ptr %.pre.i, i64 %i.di
  %bound0256 = icmp ult ptr %.pre.i, %scevgep252
  %bound1257 = icmp ult ptr %scevgep253, %i.gd
  %found.conflict258 = and i1 %bound0256, %bound1257
  %i.ge = or i1 %found.conflict258, %stride.check259
  br i1 %i.ge, label %.lr.ph.i.i.i, label %vector.body261

vector.body261:                                   ; preds = %vector.memcheck255, %vector.body261
  %index262 = phi i64 [ %index.next264, %vector.body261 ], [ 0, %vector.memcheck255 ] ; 3 uses
  %i.gf = shl nuw nsw i64 %index262, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %wide.load = load <4 x i16>, ptr %i.gg, align 1, !alias.scope !1326
  %wide.load263 = load <4 x i16>, ptr %i.gh, align 1, !alias.scope !1326
  %i.gi = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.gj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load263)
  %i.gk = zext <4 x i16> %i.gi to <4 x i32>
  %i.gl = zext <4 x i16> %i.gj to <4 x i32>
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index262 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !94, !alias.scope !1327, !noalias !1326
  store <4 x i32> %i.gl, ptr %i.gn, align 4, !tbaa !94, !alias.scope !1327, !noalias !1326
  %index.next264 = add nuw i64 %index262, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next264, %i.aa
  br i1 %i.go, label %.lr.ph125.i.i, label %vector.body261, !llvm.loop !1253

.lr.ph.i.i.i:                                     ; preds = %vector.memcheck255, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.i.i ], [ 0, %vector.memcheck255 ] ; 4 uses
  %i.gp = shl nuw nsw i64 %.09.i.i.i, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gp
  %.val.i.i.i = load i16, ptr %i.gq, align 1
  %i.gr = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i)
  %i.gs = zext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.09.i.i.i
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !94
  %i.gu = or disjoint i64 %.09.i.i.i, 1           ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gu, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gv
  %.val.i.i.i.1 = load i16, ptr %i.gw, align 1
  %i.gx = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.1)
  %i.gy = zext i16 %i.gx to i32
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.gu
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !94
  %i.ha = add nuw nsw i64 %.09.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.ha, %i.aa
  br i1 %exitcond.not.i.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i.i.i, !llvm.loop !1254

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck276

vector.memcheck276:                               ; preds = %bb.f
  %i.hb = getelementptr i8, ptr %.pre.i, i64 %i.dp
  %bound0277 = icmp ult ptr %.pre.i, %scevgep273
  %bound1278 = icmp ult ptr %scevgep274, %i.hb
  %found.conflict279 = and i1 %bound0277, %bound1278
  %i.hc = or i1 %found.conflict279, %stride.check280
  br i1 %i.hc, label %.lr.ph.i82.i.i, label %vector.body282

vector.body282:                                   ; preds = %vector.memcheck276, %vector.body282
  %index283 = phi i64 [ %index.next286, %vector.body282 ], [ 0, %vector.memcheck276 ] ; 3 uses
  %i.hd = shl nuw nsw i64 %index283, 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %wide.load284 = load <4 x i16>, ptr %i.he, align 1, !alias.scope !1328
  %wide.load285 = load <4 x i16>, ptr %i.hf, align 1, !alias.scope !1328
  %i.hg = zext <4 x i16> %wide.load284 to <4 x i32>
  %i.hh = zext <4 x i16> %wide.load285 to <4 x i32>
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index283 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store <4 x i32> %i.hg, ptr %i.hi, align 4, !tbaa !94, !alias.scope !1329, !noalias !1328
  store <4 x i32> %i.hh, ptr %i.hj, align 4, !tbaa !94, !alias.scope !1329, !noalias !1328
  %index.next286 = add nuw i64 %index283, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next286, %i.aa
  br i1 %i.hk, label %.lr.ph125.i.i, label %vector.body282, !llvm.loop !1258

.lr.ph.i82.i.i:                                   ; preds = %vector.memcheck276, %.lr.ph.i82.i.i
  %.08.i.i.i = phi i64 [ %i.ie, %.lr.ph.i82.i.i ], [ 0, %vector.memcheck276 ] ; 6 uses
  %i.hl = shl nuw nsw i64 %.08.i.i.i, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hl
  %.val.i83.i.i = load i16, ptr %i.hm, align 1
  %i.hn = zext i16 %.val.i83.i.i to i32
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.08.i.i.i
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !94
  %i.hp = or disjoint i64 %.08.i.i.i, 1           ; 2 uses
  %i.hq = shl nuw nsw i64 %i.hp, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hq
  %.val.i83.i.i.1 = load i16, ptr %i.hr, align 1
  %i.hs = zext i16 %.val.i83.i.i.1 to i32
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hp
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !94
  %i.hu = or disjoint i64 %.08.i.i.i, 2           ; 2 uses
  %i.hv = shl nuw nsw i64 %i.hu, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hv
  %.val.i83.i.i.2 = load i16, ptr %i.hw, align 1
  %i.hx = zext i16 %.val.i83.i.i.2 to i32
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hu
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !94
  %i.hz = or disjoint i64 %.08.i.i.i, 3           ; 2 uses
  %i.ia = shl nuw nsw i64 %i.hz, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ia
  %.val.i83.i.i.3 = load i16, ptr %i.ib, align 1
  %i.ic = zext i16 %.val.i83.i.i.3 to i32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.hz
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !94
  %i.ie = add nuw nsw i64 %.08.i.i.i, 4           ; 2 uses
  %exitcond.not.i84.i.i.3 = icmp eq i64 %i.ie, %i.aa
  br i1 %exitcond.not.i84.i.i.3, label %.lr.ph125.i.i, label %.lr.ph.i82.i.i, !llvm.loop !1259

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.if = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 12 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck307

vector.memcheck307:                               ; preds = %bb.h
  %i.ig = getelementptr i8, ptr %.pre.i, i64 %i.dt ; 2 uses
  %i.ih = getelementptr i8, ptr %i.if, i64 %i.dt  ; 2 uses
  %bound0308 = icmp ult ptr %.pre.i, %i.ih
  %bound1309 = icmp ult ptr %i.if, %i.ig
  %found.conflict310 = and i1 %bound0308, %bound1309
  %bound0311 = icmp ult ptr %.pre.i, %scevgep304
  %bound1312 = icmp ult ptr %scevgep305, %i.ig
  %found.conflict313 = and i1 %bound0311, %bound1312
  %i.ii = or i1 %found.conflict313, %stride.check314
  %conflict.rdx315 = or i1 %found.conflict310, %i.ii
  %bound0316 = icmp ult ptr %i.if, %scevgep304
  %bound1317 = icmp ult ptr %scevgep305, %i.ih
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  br i1 %conflict.rdx319, label %.lr.ph.i86.i.i, label %vector.body321

vector.body321:                                   ; preds = %vector.memcheck307, %vector.body321
  %index322 = phi i64 [ %index.next324, %vector.body321 ], [ 0, %vector.memcheck307 ] ; 4 uses
  %i.ij = shl nuw nsw i64 %index322, 2
  %i.ik = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ij
  %wide.vec = load <8 x i16>, ptr %i.ik, align 1, !alias.scope !1330
  %wide.vec.fr = freeze <8 x i16> %wide.vec       ; 2 uses
  %i.il = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %8 = bitcast <8 x i16> %i.il to <4 x i32>
  %9 = and <4 x i32> %8, splat (i32 65535)
  %i.im = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %i.in = bitcast <8 x i16> %i.im to <4 x i32>
  %i.io = lshr <4 x i32> %i.in, splat (i32 16)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index322
  store <4 x i32> %9, ptr %i.ip, align 4, !tbaa !94, !alias.scope !1331, !noalias !1332
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index322
  store <4 x i32> %i.io, ptr %i.iq, align 4, !tbaa !94, !alias.scope !1333, !noalias !1330
  %index.next324 = add nuw i64 %index322, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next324, %i.aa
  br i1 %i.ir, label %.lr.ph125.i.i, label %vector.body321, !llvm.loop !1264

.lr.ph.i86.i.i:                                   ; preds = %vector.memcheck307, %.lr.ph.i86.i.i
  %.017.i.i.i = phi i64 [ %i.jl, %.lr.ph.i86.i.i ], [ 0, %vector.memcheck307 ] ; 5 uses
  %i.is = shl nuw nsw i64 %.017.i.i.i, 2
  %i.it = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.is ; 2 uses
  %.val15.i.i.i = load i16, ptr %i.it, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %.val.i87.i.i = load i16, ptr %i.iu, align 1
  %i.iv = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i)
  %i.iw = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i)
  %i.ix = zext i16 %i.iv to i32
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.017.i.i.i
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !94
  %i.iz = zext i16 %i.iw to i32
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.017.i.i.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !94
  %i.jb = or disjoint i64 %.017.i.i.i, 1          ; 3 uses
  %i.jc = shl nuw nsw i64 %i.jb, 2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.jc ; 2 uses
  %.val15.i.i.i.1 = load i16, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %.val.i87.i.i.1 = load i16, ptr %i.je, align 1
  %i.jf = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.1)
  %i.jg = call noundef i16 @llvm.bswap.i16(i16 %.val.i87.i.i.1)
  %i.jh = zext i16 %i.jf to i32
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.jb
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !94
  %i.jj = zext i16 %i.jg to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jb
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !94
  %i.jl = add nuw nsw i64 %.017.i.i.i, 2          ; 2 uses
  %exitcond.not.i88.i.i.1 = icmp eq i64 %i.jl, %i.aa
  br i1 %exitcond.not.i88.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i86.i.i, !llvm.loop !1265

bb.i:                                             ; preds = %bb.g
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i.preheader

.lr.ph.i90.i.i.preheader:                         ; preds = %bb.i
  br i1 %min.iters.check345, label %.lr.ph.i90.i.i.preheader524, label %vector.memcheck346

.lr.ph.i90.i.i.preheader524:                      ; preds = %vector.memcheck346, %.lr.ph.i90.i.i.preheader
  br label %.lr.ph.i90.i.i

vector.memcheck346:                               ; preds = %.lr.ph.i90.i.i.preheader
  %i.jm = getelementptr i8, ptr %.pre.i, i64 %i.dz ; 2 uses
  %i.jn = getelementptr i8, ptr %i.if, i64 %i.dz  ; 2 uses
  %bound0347 = icmp ult ptr %.pre.i, %i.jn
  %bound1348 = icmp ult ptr %i.if, %i.jm
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult ptr %.pre.i, %scevgep342
  %bound1351 = icmp ult ptr %scevgep343, %i.jm
  %found.conflict352 = and i1 %bound0350, %bound1351
  %i.jo = or i1 %found.conflict352, %stride.check353
  %conflict.rdx354 = or i1 %found.conflict349, %i.jo
  %bound0355 = icmp ult ptr %i.if, %scevgep342
  %bound1356 = icmp ult ptr %scevgep343, %i.jn
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx358 = or i1 %conflict.rdx354, %found.conflict357
  br i1 %conflict.rdx358, label %.lr.ph.i90.i.i.preheader524, label %vector.body360

vector.body360:                                   ; preds = %vector.memcheck346, %vector.body360
  %index361 = phi i64 [ %index.next365, %vector.body360 ], [ 0, %vector.memcheck346 ] ; 4 uses
  %i.jp = shl nuw nsw i64 %index361, 2
  %i.jq = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.jp
  %wide.vec362 = load <8 x i16>, ptr %i.jq, align 1, !alias.scope !1334
  %i.jr = freeze <8 x i16> %wide.vec362           ; 2 uses
  %10 = bitcast <8 x i16> %i.jr to <4 x i32>
  %i.js = bitcast <8 x i16> %i.jr to <4 x i32>
  %11 = and <4 x i32> %i.js, splat (i32 65535)
  %12 = lshr <4 x i32> %10, splat (i32 16)
  %13 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index361
  store <4 x i32> %11, ptr %13, align 4, !tbaa !94, !alias.scope !1335, !noalias !1336
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index361
  store <4 x i32> %12, ptr %i.jt, align 4, !tbaa !94, !alias.scope !1337, !noalias !1334
  %index.next365 = add nuw i64 %index361, 4       ; 2 uses
  %i.ju = icmp eq i64 %index.next365, %i.aa
  br i1 %i.ju, label %.lr.ph125.i.i, label %vector.body360, !llvm.loop !1270

.lr.ph.i90.i.i:                                   ; preds = %.lr.ph.i90.i.i, %.lr.ph.i90.i.i.preheader524
  %.015.i.i.i = phi i64 [ 0, %.lr.ph.i90.i.i.preheader524 ], [ %i.kk, %.lr.ph.i90.i.i ] ; 5 uses
  %i.jv = shl nuw nsw i64 %.015.i.i.i, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.jv ; 2 uses
  %.val13.i.i.i = load i16, ptr %i.jw, align 1
  %i.jx = zext i16 %.val13.i.i.i to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %.val.i91.i.i = load i16, ptr %i.jy, align 1
  %i.jz = zext i16 %.val.i91.i.i to i32
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.015.i.i.i
  store i32 %i.jx, ptr %i.ka, align 4, !tbaa !94
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.015.i.i.i
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !94
  %i.kc = or disjoint i64 %.015.i.i.i, 1          ; 3 uses
  %i.kd = shl nuw nsw i64 %i.kc, 2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kd ; 2 uses
  %.val13.i.i.i.1 = load i16, ptr %i.ke, align 1
  %i.kf = zext i16 %.val13.i.i.i.1 to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %.val.i91.i.i.1 = load i16, ptr %i.kg, align 1
  %i.kh = zext i16 %.val.i91.i.i.1 to i32
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.kc
  store i32 %i.kf, ptr %i.ki, align 4, !tbaa !94
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.kc
  store i32 %i.kh, ptr %i.kj, align 4, !tbaa !94
  %i.kk = add nuw nsw i64 %.015.i.i.i, 2          ; 2 uses
  %exitcond.not.i92.i.i.1 = icmp eq i64 %i.kk, %i.aa
  br i1 %exitcond.not.i92.i.i.1, label %.lr.ph125.i.i, label %.lr.ph.i90.i.i, !llvm.loop !1271

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.kl = load ptr, ptr %i.ck, align 8, !tbaa !101 ; 12 uses
  %i.km = load ptr, ptr %i.cl, align 16, !tbaa !101 ; 12 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck400

vector.memcheck400:                               ; preds = %bb.k
  %i.kn = getelementptr i8, ptr %i.kl, i64 %i.ei  ; 3 uses
  %i.ko = getelementptr i8, ptr %i.km, i64 %i.ei  ; 3 uses
  %i.kp = getelementptr i8, ptr %.pre.i, i64 %i.ei ; 3 uses
  %bound0401 = icmp ult ptr %i.kl, %i.ko
  %bound1402 = icmp ult ptr %i.km, %i.kn
  %found.conflict403 = and i1 %bound0401, %bound1402
  %bound0404 = icmp ult ptr %i.kl, %i.kp
  %bound1405 = icmp ult ptr %.pre.i, %i.kn
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %found.conflict403, %found.conflict406
  %bound0408 = icmp ult ptr %i.kl, %scevgep397
  %bound1409 = icmp ult ptr %scevgep398, %i.kn
  %found.conflict410 = and i1 %bound0408, %bound1409
  %i.kq = or i1 %found.conflict410, %stride.check411
  %conflict.rdx412 = or i1 %conflict.rdx407, %i.kq
  %bound0413 = icmp ult ptr %i.km, %i.kp
  %bound1414 = icmp ult ptr %.pre.i, %i.ko
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %conflict.rdx412, %found.conflict415
  %bound0417 = icmp ult ptr %i.km, %scevgep397
  %bound1418 = icmp ult ptr %scevgep398, %i.ko
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx416, %found.conflict419
  %bound0421 = icmp ult ptr %.pre.i, %scevgep397
  %bound1422 = icmp ult ptr %scevgep398, %i.kp
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  br i1 %conflict.rdx424, label %.lr.ph.i94.i.i, label %vector.body426

vector.body426:                                   ; preds = %vector.memcheck400, %vector.body426
  %index427 = phi i64 [ %index.next428, %vector.body426 ], [ 0, %vector.memcheck400 ] ; 8 uses
  %i.kr = mul nuw nsw i64 %index427, 6
  %i.ks = mul nuw i64 %index427, 6
  %i.kt = mul nuw i64 %index427, 6
  %i.ku = mul nuw i64 %index427, 6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kr ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ks ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  %i.ky = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.kt ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ku ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 18
  %i.lc = load i16, ptr %i.kv, align 1, !alias.scope !1338
  %i.ld = load i16, ptr %i.kx, align 1, !alias.scope !1338
  %i.le = load i16, ptr %i.kz, align 1, !alias.scope !1338
  %i.lf = load i16, ptr %i.lb, align 1, !alias.scope !1338
  %i.lg = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %i.lh = insertelement <4 x i16> %i.lg, i16 %i.ld, i64 1
  %i.li = insertelement <4 x i16> %i.lh, i16 %i.le, i64 2
  %i.lj = insertelement <4 x i16> %i.li, i16 %i.lf, i64 3
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  %i.ln = getelementptr inbounds nuw i8, ptr %i.la, i64 20
  %i.lo = load i16, ptr %i.lk, align 1, !alias.scope !1338
  %i.lp = load i16, ptr %i.ll, align 1, !alias.scope !1338
  %i.lq = load i16, ptr %i.lm, align 1, !alias.scope !1338
  %i.lr = load i16, ptr %i.ln, align 1, !alias.scope !1338
  %i.ls = insertelement <4 x i16> poison, i16 %i.lo, i64 0
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.lp, i64 1
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lq, i64 2
  %i.lv = insertelement <4 x i16> %i.lu, i16 %i.lr, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kw, i64 10
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.la, i64 22
  %i.ma = load i16, ptr %i.lw, align 1, !alias.scope !1338
  %i.mb = load i16, ptr %i.lx, align 1, !alias.scope !1338
  %i.mc = load i16, ptr %i.ly, align 1, !alias.scope !1338
  %i.md = load i16, ptr %i.lz, align 1, !alias.scope !1338
  %i.me = insertelement <4 x i16> poison, i16 %i.ma, i64 0
  %i.mf = insertelement <4 x i16> %i.me, i16 %i.mb, i64 1
  %i.mg = insertelement <4 x i16> %i.mf, i16 %i.mc, i64 2
  %i.mh = insertelement <4 x i16> %i.mg, i16 %i.md, i64 3
  %i.mi = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.lj)
  %i.mj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.lv)
  %i.mk = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.mh)
  %i.ml = zext <4 x i16> %i.mi to <4 x i32>
  %i.mm = zext <4 x i16> %i.mj to <4 x i32>
  %i.mn = zext <4 x i16> %i.mk to <4 x i32>       ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index427
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %index427
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index427
  %i.mr = sub nsw <4 x i32> %i.ml, %i.mn          ; 2 uses
  store <4 x i32> %i.mr, ptr %i.mp, align 4, !tbaa !94, !alias.scope !1339, !noalias !1340
  %i.ms = ashr <4 x i32> %i.mr, splat (i32 1)
  %i.mt = add nsw <4 x i32> %i.ms, %i.mn          ; 2 uses
  %i.mu = sub nsw <4 x i32> %i.mm, %i.mt          ; 2 uses
  store <4 x i32> %i.mu, ptr %i.mq, align 4, !tbaa !94, !alias.scope !1341, !noalias !1342
  %i.mv = ashr <4 x i32> %i.mu, splat (i32 1)
  %i.mw = add nsw <4 x i32> %i.mv, %i.mt
  store <4 x i32> %i.mw, ptr %i.mo, align 4, !tbaa !94, !alias.scope !1343, !noalias !1338
  %index.next428 = add nuw i64 %index427, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next428, %i.aa
  br i1 %i.mx, label %.lr.ph125.i.i, label %vector.body426, !llvm.loop !1277

.lr.ph.i94.i.i:                                   ; preds = %vector.memcheck400, %.lr.ph.i94.i.i
  %.025.i.i.i = phi i64 [ %i.nr, %.lr.ph.i94.i.i ], [ 0, %vector.memcheck400 ] ; 5 uses
  %i.my = mul nuw nsw i64 %.025.i.i.i, 6
  %i.mz = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.my ; 3 uses
  %.val23.i.i.i = load i16, ptr %i.mz, align 1
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %.val21.i.i.i = load i16, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.val.i95.i.i = load i16, ptr %i.nb, align 1
  %i.nc = call noundef i16 @llvm.bswap.i16(i16 %.val23.i.i.i)
  %i.nd = call noundef i16 @llvm.bswap.i16(i16 %.val21.i.i.i)
  %i.ne = call noundef i16 @llvm.bswap.i16(i16 %.val.i95.i.i)
  %i.nf = zext i16 %i.nc to i32
  %i.ng = zext i16 %i.nd to i32
  %i.nh = zext i16 %i.ne to i32                   ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.025.i.i.i
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.025.i.i.i
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.025.i.i.i
  %i.nl = sub nsw i32 %i.nf, %i.nh                ; 2 uses
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !94
  %i.nm = ashr i32 %i.nl, 1
  %i.nn = add nsw i32 %i.nm, %i.nh                ; 2 uses
  %i.no = sub nsw i32 %i.ng, %i.nn                ; 2 uses
  store i32 %i.no, ptr %i.nk, align 4, !tbaa !94
  %i.np = ashr i32 %i.no, 1
  %i.nq = add nsw i32 %i.np, %i.nn
  store i32 %i.nq, ptr %i.ni, align 4, !tbaa !94
  %i.nr = add nuw nsw i64 %.025.i.i.i, 1          ; 2 uses
  %exitcond.not.i96.i.i = icmp eq i64 %i.nr, %i.aa
  br i1 %exitcond.not.i96.i.i, label %.lr.ph125.i.i, label %.lr.ph.i94.i.i, !llvm.loop !1278

bb.l:                                             ; preds = %bb.j
  br i1 %.not.i97.i.i, label %.lr.ph125.i.i, label %vector.memcheck462

vector.memcheck462:                               ; preds = %bb.l
  %i.ns = getelementptr i8, ptr %i.kl, i64 %i.ep  ; 3 uses
  %i.nt = getelementptr i8, ptr %i.km, i64 %i.ep  ; 3 uses
  %i.nu = getelementptr i8, ptr %.pre.i, i64 %i.ep ; 3 uses
  %bound0463 = icmp ult ptr %i.kl, %i.nt
  %bound1464 = icmp ult ptr %i.km, %i.ns
  %found.conflict465 = and i1 %bound0463, %bound1464
  %bound0466 = icmp ult ptr %i.kl, %i.nu
  %bound1467 = icmp ult ptr %.pre.i, %i.ns
  %found.conflict468 = and i1 %bound0466, %bound1467
  %conflict.rdx469 = or i1 %found.conflict465, %found.conflict468
  %bound0470 = icmp ult ptr %i.kl, %scevgep459
  %bound1471 = icmp ult ptr %scevgep460, %i.ns
  %found.conflict472 = and i1 %bound0470, %bound1471
  %i.nv = or i1 %found.conflict472, %stride.check473
  %conflict.rdx474 = or i1 %conflict.rdx469, %i.nv
  %bound0475 = icmp ult ptr %i.km, %i.nu
  %bound1476 = icmp ult ptr %.pre.i, %i.nt
  %found.conflict477 = and i1 %bound0475, %bound1476
  %conflict.rdx478 = or i1 %conflict.rdx474, %found.conflict477
  %bound0479 = icmp ult ptr %i.km, %scevgep459
  %bound1480 = icmp ult ptr %scevgep460, %i.nt
  %found.conflict481 = and i1 %bound0479, %bound1480
  %conflict.rdx482 = or i1 %conflict.rdx478, %found.conflict481
  %bound0483 = icmp ult ptr %.pre.i, %scevgep459
  %bound1484 = icmp ult ptr %scevgep460, %i.nu
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx486 = or i1 %conflict.rdx482, %found.conflict485
end_hunk_2
begin_hunk_3_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a
  %i.ha = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.hb = getelementptr i8, ptr %.pre.i.i, i64 %i.ha
  %i.hc = getelementptr i8, ptr %.pre.i.i, i64 %i.ef
  %i.hd = getelementptr i8, ptr %i.ah, i64 %.0.lcssa.i.i.i.i
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.eo
  %i.hf = getelementptr i8, ptr %i.eg, i64 %i.eo
  %bound0145 = icmp ult ptr %i.hb, %i.hf
  %bound1146 = icmp ult ptr %i.he, %i.hc
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph18.i.i.i.i.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck144
  %min.iters.check149 = icmp samesign ult i64 %i.gz, 64
  br i1 %min.iters.check149, label %vec.epilog.ph164, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.hg = and i64 %i.gz, 56
  %n.vec151 = and i64 %i.gz, 448                  ; 4 uses
  %i.hh = add nuw i64 %.0.lcssa.i.i.i.i, %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next157, %vector.body152 ] ; 2 uses
  %i.hi = add nuw i64 %.0.lcssa.i.i.i.i, %index153 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hi ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %wide.load = load <16 x i8>, ptr %i.hj, align 1, !tbaa !85, !alias.scope !1423
  %wide.load154 = load <16 x i8>, ptr %i.hk, align 1, !tbaa !85, !alias.scope !1423
  %wide.load155 = load <16 x i8>, ptr %i.hl, align 1, !tbaa !85, !alias.scope !1423
  %wide.load156 = load <16 x i8>, ptr %i.hm, align 1, !tbaa !85, !alias.scope !1423
  %i.hn = zext <16 x i8> %wide.load to <16 x i16>
  %i.ho = zext <16 x i8> %wide.load154 to <16 x i16>
  %i.hp = zext <16 x i8> %wide.load155 to <16 x i16>
  %i.hq = zext <16 x i8> %wide.load156 to <16 x i16>
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.hi ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 96
  store <16 x i16> %i.hn, ptr %i.hr, align 2, !tbaa !104, !alias.scope !1424, !noalias !1423
  store <16 x i16> %i.ho, ptr %i.hs, align 2, !tbaa !104, !alias.scope !1424, !noalias !1423
  store <16 x i16> %i.hp, ptr %i.ht, align 2, !tbaa !104, !alias.scope !1424, !noalias !1423
  store <16 x i16> %i.hq, ptr %i.hu, align 2, !tbaa !104, !alias.scope !1424, !noalias !1423
  %index.next157 = add nuw i64 %index153, 64      ; 2 uses
  %i.hv = icmp eq i64 %index.next157, %n.vec151
  br i1 %i.hv, label %middle.block158, label %vector.body152, !llvm.loop !1382

middle.block158:                                  ; preds = %vector.body152
  %cmp.n159 = icmp eq i64 %i.gz, %n.vec151
  br i1 %cmp.n159, label %.lr.ph127.i.i.i, label %vec.epilog.iter.check161

vec.epilog.iter.check161:                         ; preds = %middle.block158
  %min.epilog.iters.check163 = icmp eq i64 %i.hg, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph18.i.i.i.i.preheader, label %vec.epilog.ph164, !prof !185

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check161
  %vec.epilog.resume.val165 = phi i64 [ %n.vec151, %vec.epilog.iter.check161 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec166 = sub nsw i64 %i.gz, %i.eh            ; 2 uses
  %i.hw = add i64 %.0.lcssa.i.i.i.i, %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph164
  %index168 = phi i64 [ %vec.epilog.resume.val165, %vec.epilog.ph164 ], [ %index.next170, %vec.epilog.vector.body167 ] ; 2 uses
  %i.hx = add nuw i64 %.0.lcssa.i.i.i.i, %index168 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hx
  %wide.load169 = load <8 x i8>, ptr %i.hy, align 1, !tbaa !85, !alias.scope !1423
  %i.hz = zext <8 x i8> %wide.load169 to <8 x i16>
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.hx
  store <8 x i16> %i.hz, ptr %i.ia, align 2, !tbaa !104, !alias.scope !1424, !noalias !1423
  %index.next170 = add nuw i64 %index168, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next170, %n.vec166
  br i1 %i.ib, label %vec.epilog.middle.block171, label %vec.epilog.vector.body167, !llvm.loop !1383

vec.epilog.middle.block171:                       ; preds = %vec.epilog.vector.body167
  br i1 %cmp.n172, label %.lr.ph127.i.i.i, label %.lr.ph18.i.i.i.i.preheader

.lr.ph18.i.i.i.i.preheader:                       ; preds = %iter.check160, %vector.memcheck144, %vec.epilog.iter.check161, %vec.epilog.middle.block171
  %.117.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %iter.check160 ], [ %.0.lcssa.i.i.i.i, %vector.memcheck144 ], [ %i.hh, %vec.epilog.iter.check161 ], [ %i.hw, %vec.epilog.middle.block171 ] ; 4 uses
  %i.ic = sub i64 %.sroa.speculated35.i, %.117.i.i.i.i.ph
  %xtraiter408 = and i64 %i.ic, 3                 ; 2 uses
  %lcmp.mod409.not = icmp eq i64 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %.lr.ph18.i.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.i.prol

.lr.ph18.i.i.i.i.prol:                            ; preds = %.lr.ph18.i.i.i.i.preheader, %.lr.ph18.i.i.i.i.prol
  %.117.i.i.i.i.prol = phi i64 [ %i.ih, %.lr.ph18.i.i.i.i.prol ], [ %.117.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.i.i.i.prol ], [ 0, %.lr.ph18.i.i.i.i.preheader ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.117.i.i.i.i.prol
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !85
  %i.if = zext i8 %i.ie to i16
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.117.i.i.i.i.prol
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !104
  %i.ih = add nuw nsw i64 %.117.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter408
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.i.i.i.prol.loopexit, label %.lr.ph18.i.i.i.i.prol, !llvm.loop !1384

.lr.ph18.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i.i.i.i.prol, %.lr.ph18.i.i.i.i.preheader
  %.117.i.i.i.i.unr = phi i64 [ %.117.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ], [ %i.ih, %.lr.ph18.i.i.i.i.prol ]
  %i.ii = sub i64 %.117.i.i.i.i.ph, %.sroa.speculated35.i
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %.lr.ph127.i.i.i, label %.lr.ph18.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i.i.i
  %i.ik = phi i64 [ %i.io, %.lr.ph.i.i.i.i ], [ 16, %bb.k ] ; 3 uses
  %.016.i.i.i.i = phi i64 [ %i.ik, %.lr.ph.i.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.016.i.i.i.i
  %.val14.i.i.i.i = load <16 x i8>, ptr %i.il, align 1, !tbaa !85
  %i.im = zext <16 x i8> %.val14.i.i.i.i to <16 x i16>
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.016.i.i.i.i
  store <16 x i16> %i.im, ptr %i.in, align 1, !tbaa !85
  %i.io = add nuw nsw i64 %i.ik, 16               ; 2 uses
  %.not.i70.i.i.i = icmp samesign ugt i64 %i.io, %.sroa.speculated35.i
  br i1 %.not.i70.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.i.i.i.prol.loopexit, %.lr.ph18.i.i.i.i
  %.117.i.i.i.i = phi i64 [ %i.ji, %.lr.ph18.i.i.i.i ], [ %.117.i.i.i.i.unr, %.lr.ph18.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.117.i.i.i.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !85
  %i.ir = zext i8 %i.iq to i16
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.117.i.i.i.i
  store i16 %i.ir, ptr %i.is, align 2, !tbaa !104
  %i.it = add nuw nsw i64 %.117.i.i.i.i, 1        ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !85
  %i.iw = zext i8 %i.iv to i16
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.it
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !104
  %i.iy = add nuw nsw i64 %.117.i.i.i.i, 2        ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !85
  %i.jb = zext i8 %i.ja to i16
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.iy
  store i16 %i.jb, ptr %i.jc, align 2, !tbaa !104
  %i.jd = add nuw nsw i64 %.117.i.i.i.i, 3        ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !85
  %i.jg = zext i8 %i.jf to i16
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.jd
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !104
  %i.ji = add nuw nsw i64 %.117.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ji, %.sroa.speculated35.i
  br i1 %exitcond.not.i.i.i.i.3, label %.lr.ph127.i.i.i, label %.lr.ph18.i.i.i.i, !llvm.loop !1385

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.jj = load ptr, ptr %i.dt, align 8, !tbaa !92 ; 8 uses
  br i1 %.not34.i.i.i.i, label %.preheader.i73.i.i.i, label %.lr.ph.i71.i.i.i

.preheader.i73.i.i.i:                             ; preds = %.lr.ph.i71.i.i.i, %bb.l
  %.0.lcssa.i74.i.i.i = phi i64 [ 0, %bb.l ], [ %i.le, %.lr.ph.i71.i.i.i ] ; 9 uses
  %i.jk = icmp samesign ult i64 %.0.lcssa.i74.i.i.i, %.sroa.speculated35.i
  br i1 %i.jk, label %iter.check219, label %.lr.ph127.i.i.i

iter.check219:                                    ; preds = %.preheader.i73.i.i.i
  %i.jl = sub nuw nsw i64 %.sroa.speculated35.i, %.0.lcssa.i74.i.i.i ; 6 uses
  %min.iters.check191 = icmp samesign ult i64 %i.jl, 8
  br i1 %min.iters.check191, label %.lr.ph25.i.i.i.i.preheader, label %vector.memcheck192

vector.memcheck192:                               ; preds = %iter.check219
  %i.jm = shl nuw nsw i64 %.0.lcssa.i74.i.i.i, 1  ; 3 uses
  %i.jn = getelementptr i8, ptr %.pre.i.i, i64 %i.jm ; 2 uses
  %i.jo = getelementptr i8, ptr %.pre.i.i, i64 %i.ec ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jj, i64 %i.jm  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jj, i64 %i.ec  ; 2 uses
  %i.jr = getelementptr i8, ptr %i.ah, i64 %i.eo
  %i.js = getelementptr i8, ptr %i.jr, i64 %i.jm  ; 2 uses
  %i.jt = getelementptr i8, ptr %i.ed, i64 %i.eo  ; 2 uses
  %bound0193 = icmp ult ptr %i.jn, %i.jq
  %bound1194 = icmp ult ptr %i.jp, %i.jo
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %i.jn, %i.jt
  %bound1197 = icmp ult ptr %i.js, %i.jo
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %found.conflict195, %found.conflict198
  %bound0200 = icmp ult ptr %i.jp, %i.jt
  %bound1201 = icmp ult ptr %i.js, %i.jq
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  br i1 %conflict.rdx203, label %.lr.ph25.i.i.i.i.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %vector.memcheck192
  %min.iters.check205 = icmp samesign ult i64 %i.jl, 32
  br i1 %min.iters.check205, label %vec.epilog.ph223, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.ju = and i64 %i.jl, 24
  %n.vec207 = and i64 %i.jl, 480                  ; 4 uses
  %i.jv = add nuw i64 %.0.lcssa.i74.i.i.i, %n.vec207
  br label %vector.body208

vector.body208:                                   ; preds = %vector.ph206, %vector.body208
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next216, %vector.body208 ] ; 2 uses
  %i.jw = add nuw i64 %.0.lcssa.i74.i.i.i, %index209 ; 4 uses
  %i.jx = shl nuw nsw i64 %i.jw, 1
  %i.jy = shl i64 %i.jw, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.jx
  %i.ka = getelementptr i8, ptr %i.ep, i64 %i.jy
  %i.kb = getelementptr i8, ptr %i.ka, i64 32
  %wide.vec210 = load <32 x i8>, ptr %i.jz, align 1, !tbaa !85, !alias.scope !1425
  %i.kc = freeze <32 x i8> %wide.vec210           ; 2 uses
  %4 = bitcast <32 x i8> %i.kc to <16 x i16>
  %i.kd = bitcast <32 x i8> %i.kc to <16 x i16>
  %5 = and <16 x i16> %i.kd, splat (i16 255)
  %i.ke = lshr <16 x i16> %4, splat (i16 8)
  %wide.vec213 = load <32 x i8>, ptr %i.kb, align 1, !tbaa !85, !alias.scope !1425
  %i.kf = freeze <32 x i8> %wide.vec213           ; 2 uses
  %i.kg = bitcast <32 x i8> %i.kf to <16 x i16>
  %6 = bitcast <32 x i8> %i.kf to <16 x i16>
  %7 = and <16 x i16> %6, splat (i16 255)
  %8 = lshr <16 x i16> %i.kg, splat (i16 8)
  %9 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.jw ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store <16 x i16> %5, ptr %9, align 2, !tbaa !104, !alias.scope !1426, !noalias !1427
  store <16 x i16> %7, ptr %10, align 2, !tbaa !104, !alias.scope !1426, !noalias !1427
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.jw ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store <16 x i16> %i.ke, ptr %i.kh, align 2, !tbaa !104, !alias.scope !1428, !noalias !1425
  store <16 x i16> %8, ptr %i.ki, align 2, !tbaa !104, !alias.scope !1428, !noalias !1425
  %index.next216 = add nuw i64 %index209, 32      ; 2 uses
  %i.kj = icmp eq i64 %index.next216, %n.vec207
  br i1 %i.kj, label %middle.block217, label %vector.body208, !llvm.loop !1390

middle.block217:                                  ; preds = %vector.body208
  %cmp.n218 = icmp eq i64 %i.jl, %n.vec207
  br i1 %cmp.n218, label %.lr.ph127.i.i.i, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block217
  %min.epilog.iters.check222 = icmp eq i64 %i.ju, 0
  br i1 %min.epilog.iters.check222, label %.lr.ph25.i.i.i.i.preheader, label %vec.epilog.ph223, !prof !186

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check220
  %vec.epilog.resume.val224 = phi i64 [ %n.vec207, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec225 = sub nsw i64 %i.jl, %i.ee            ; 2 uses
  %i.kk = add i64 %.0.lcssa.i74.i.i.i, %n.vec225
  br label %vec.epilog.vector.body226

vec.epilog.vector.body226:                        ; preds = %vec.epilog.vector.body226, %vec.epilog.ph223
  %index227 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph223 ], [ %index.next231, %vec.epilog.vector.body226 ] ; 2 uses
  %i.kl = add nuw i64 %.0.lcssa.i74.i.i.i, %index227 ; 3 uses
  %i.km = shl nuw nsw i64 %i.kl, 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.km
  %wide.vec228 = load <16 x i8>, ptr %i.kn, align 1, !tbaa !85, !alias.scope !1425
  %i.ko = freeze <16 x i8> %wide.vec228           ; 2 uses
  %11 = bitcast <16 x i8> %i.ko to <8 x i16>
  %i.kp = bitcast <16 x i8> %i.ko to <8 x i16>
  %12 = and <8 x i16> %i.kp, splat (i16 255)
  %13 = lshr <8 x i16> %11, splat (i16 8)
  %14 = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.kl
  store <8 x i16> %12, ptr %14, align 2, !tbaa !104, !alias.scope !1426, !noalias !1427
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.kl
  store <8 x i16> %13, ptr %i.kq, align 2, !tbaa !104, !alias.scope !1428, !noalias !1425
  %index.next231 = add nuw i64 %index227, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next231, %n.vec225
  br i1 %i.kr, label %vec.epilog.middle.block232, label %vec.epilog.vector.body226, !llvm.loop !1391

vec.epilog.middle.block232:                       ; preds = %vec.epilog.vector.body226
  br i1 %cmp.n233, label %.lr.ph127.i.i.i, label %.lr.ph25.i.i.i.i.preheader

.lr.ph25.i.i.i.i.preheader:                       ; preds = %iter.check219, %vector.memcheck192, %vec.epilog.iter.check220, %vec.epilog.middle.block232
  %.124.i.i.i.i.ph = phi i64 [ %.0.lcssa.i74.i.i.i, %iter.check219 ], [ %.0.lcssa.i74.i.i.i, %vector.memcheck192 ], [ %i.jv, %vec.epilog.iter.check220 ], [ %i.kk, %vec.epilog.middle.block232 ] ; 7 uses
  %i.ks = sub i64 %.sroa.speculated35.i, %.124.i.i.i.i.ph
  %.neg = add i64 %.124.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ks, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph25.i.i.i.i.prol.loopexit, label %.lr.ph25.i.i.i.i.prol

.lr.ph25.i.i.i.i.prol:                            ; preds = %.lr.ph25.i.i.i.i.preheader
  %i.kt = shl nuw nsw i64 %.124.i.i.i.i.ph, 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.kt ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !85
  %i.kw = zext i8 %i.kv to i16
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.124.i.i.i.i.ph
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !104
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !85
  %i.la = zext i8 %i.kz to i16
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %.124.i.i.i.i.ph
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !104
  %i.lc = add nuw nsw i64 %.124.i.i.i.i.ph, 1
  br label %.lr.ph25.i.i.i.i.prol.loopexit

.lr.ph25.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph25.i.i.i.i.prol, %.lr.ph25.i.i.i.i.preheader
  %.124.i.i.i.i.unr = phi i64 [ %.124.i.i.i.i.ph, %.lr.ph25.i.i.i.i.preheader ], [ %i.lc, %.lr.ph25.i.i.i.i.prol ]
  %i.ld = icmp eq i64 %.sroa.speculated35.i, %.neg
  br i1 %i.ld, label %.lr.ph127.i.i.i, label %.lr.ph25.i.i.i.i

.lr.ph.i71.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i71.i.i.i
  %i.le = phi i64 [ %i.lm, %.lr.ph.i71.i.i.i ], [ 16, %bb.l ] ; 3 uses
  %.023.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i71.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %i.lf = shl nuw nsw i64 %.023.i.i.i.i, 1
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.lf
  %.val.i.i.i.i = load <4 x i64>, ptr %i.lg, align 1, !tbaa !85 ; 2 uses
  %i.lh = and <4 x i64> %.val.i.i.i.i, splat (i64 71777214294589695)
  %i.li = bitcast <4 x i64> %.val.i.i.i.i to <16 x i16>
  %i.lj = lshr <16 x i16> %i.li, splat (i16 8)
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.023.i.i.i.i
  store <4 x i64> %i.lh, ptr %i.lk, align 1, !tbaa !85
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %.023.i.i.i.i
  store <16 x i16> %i.lj, ptr %i.ll, align 1, !tbaa !85
  %i.lm = add nuw nsw i64 %i.le, 16               ; 2 uses
  %.not.i72.i.i.i = icmp samesign ugt i64 %i.lm, %.sroa.speculated35.i
  br i1 %.not.i72.i.i.i, label %.preheader.i73.i.i.i, label %.lr.ph.i71.i.i.i, !llvm.loop !5

.lr.ph25.i.i.i.i:                                 ; preds = %.lr.ph25.i.i.i.i.prol.loopexit, %.lr.ph25.i.i.i.i
  %.124.i.i.i.i = phi i64 [ %i.mg, %.lr.ph25.i.i.i.i ], [ %.124.i.i.i.i.unr, %.lr.ph25.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ln = shl nuw nsw i64 %.124.i.i.i.i, 1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ln ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !85
  %i.lq = zext i8 %i.lp to i16
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %.124.i.i.i.i
  store i16 %i.lq, ptr %i.lr, align 2, !tbaa !104
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !85
  %i.lu = zext i8 %i.lt to i16
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %.124.i.i.i.i
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !104
  %i.lw = add nuw nsw i64 %.124.i.i.i.i, 1        ; 3 uses
  %i.lx = shl nuw nsw i64 %i.lw, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.lx ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !85
  %i.ma = zext i8 %i.lz to i16
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.lw
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !104
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !85
  %i.me = zext i8 %i.md to i16
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.jj, i64 %i.lw
  store i16 %i.me, ptr %i.mf, align 2, !tbaa !104
  %i.mg = add nuw nsw i64 %.124.i.i.i.i, 2        ; 2 uses
  %exitcond.not.i75.i.i.i.1 = icmp eq i64 %i.mg, %.sroa.speculated35.i
  br i1 %exitcond.not.i75.i.i.i.1, label %.lr.ph127.i.i.i, label %.lr.ph25.i.i.i.i, !llvm.loop !1392

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.mh = load ptr, ptr %i.dt, align 8, !tbaa !92 ; 6 uses
  %i.mi = load ptr, ptr %i.du, align 16, !tbaa !92 ; 6 uses
  br i1 %.not34.i.i.i.i, label %.preheader.i78.i.i.i, label %.lr.ph.i76.i.i.i

.preheader.i78.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %bb.m
  %.0.lcssa.i79.i.i.i = phi i64 [ 0, %bb.m ], [ %i.oe, %.lr.ph.i76.i.i.i ] ; 10 uses
  %i.mj = icmp samesign ult i64 %.0.lcssa.i79.i.i.i, %.sroa.speculated35.i
  br i1 %i.mj, label %iter.check304, label %.lr.ph127.i.i.i

iter.check304:                                    ; preds = %.preheader.i78.i.i.i
  %i.mk = sub nuw nsw i64 %.sroa.speculated35.i, %.0.lcssa.i79.i.i.i ; 4 uses
  %min.iters.check266 = icmp samesign ult i64 %i.mk, 4
  br i1 %min.iters.check266, label %.lr.ph37.i.i.i.i.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %iter.check304
  %i.ml = shl nuw nsw i64 %.0.lcssa.i79.i.i.i, 1  ; 3 uses
  %i.mm = getelementptr i8, ptr %i.mh, i64 %i.ml  ; 3 uses
  %i.mn = getelementptr i8, ptr %i.mh, i64 %i.dx  ; 3 uses
  %i.mo = getelementptr i8, ptr %i.mi, i64 %i.ml  ; 3 uses
  %i.mp = getelementptr i8, ptr %i.mi, i64 %i.dx  ; 3 uses
  %i.mq = getelementptr i8, ptr %.pre.i.i, i64 %i.ml ; 3 uses
  %i.mr = getelementptr i8, ptr %.pre.i.i, i64 %i.dx ; 3 uses
  %i.ms = mul nuw nsw i64 %.0.lcssa.i79.i.i.i, 3
  %i.mt = getelementptr i8, ptr %i.ah, i64 %i.eo
  %i.mu = getelementptr i8, ptr %i.mt, i64 %i.ms  ; 3 uses
  %i.mv = getelementptr i8, ptr %i.dz, i64 %i.eo  ; 3 uses
  %bound0268 = icmp ult ptr %i.mm, %i.mp
  %bound1269 = icmp ult ptr %i.mo, %i.mn
  %found.conflict270 = and i1 %bound0268, %bound1269
  %bound0271 = icmp ult ptr %i.mm, %i.mr
  %bound1272 = icmp ult ptr %i.mq, %i.mn
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %found.conflict270, %found.conflict273
  %bound0275 = icmp ult ptr %i.mm, %i.mv
  %bound1276 = icmp ult ptr %i.mu, %i.mn
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %i.mo, %i.mr
  %bound1280 = icmp ult ptr %i.mq, %i.mp
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  %bound0283 = icmp ult ptr %i.mo, %i.mv
  %bound1284 = icmp ult ptr %i.mu, %i.mp
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %conflict.rdx282, %found.conflict285
  %bound0287 = icmp ult ptr %i.mq, %i.mv
  %bound1288 = icmp ult ptr %i.mu, %i.mr
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  br i1 %conflict.rdx290, label %.lr.ph37.i.i.i.i.preheader, label %vector.main.loop.iter.check291

vector.main.loop.iter.check291:                   ; preds = %vector.memcheck267
  %min.iters.check292 = icmp samesign ult i64 %i.mk, 16
  br i1 %min.iters.check292, label %vec.epilog.ph308, label %vector.ph293

vector.ph293:                                     ; preds = %vector.main.loop.iter.check291
  %n.vec294 = sub nuw nsw i64 %i.mk, %i.ea        ; 3 uses
  %i.mw = add nuw i64 %.0.lcssa.i79.i.i.i, %n.vec294
  br label %vector.body295

vector.body295:                                   ; preds = %vector.ph293, %vector.body295
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %i.mx = add nuw i64 %.0.lcssa.i79.i.i.i, %index296 ; 4 uses
  %i.my = mul nuw nsw i64 %i.mx, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.my
  %wide.vec297 = load <48 x i8>, ptr %i.mz, align 1, !tbaa !85, !alias.scope !1429 ; 3 uses
  %strided.vec298 = shufflevector <48 x i8> %wide.vec297, <48 x i8> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 33, i32 36, i32 39, i32 42, i32 45>
  %strided.vec299 = shufflevector <48 x i8> %wide.vec297, <48 x i8> poison, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22, i32 25, i32 28, i32 31, i32 34, i32 37, i32 40, i32 43, i32 46>
  %strided.vec300 = shufflevector <48 x i8> %wide.vec297, <48 x i8> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 26, i32 29, i32 32, i32 35, i32 38, i32 41, i32 44, i32 47>
  %i.na = zext <16 x i8> %strided.vec298 to <16 x i16>
  %i.nb = zext <16 x i8> %strided.vec299 to <16 x i16>
  %i.nc = zext <16 x i8> %strided.vec300 to <16 x i16> ; 2 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.mx
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %i.mx
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.mx
  %i.ng = sub nsw <16 x i16> %i.na, %i.nc         ; 2 uses
  store <16 x i16> %i.ng, ptr %i.ne, align 2, !tbaa !104, !alias.scope !1430, !noalias !1431
  %i.nh = ashr <16 x i16> %i.ng, splat (i16 1)
  %i.ni = add nsw <16 x i16> %i.nh, %i.nc         ; 2 uses
  %i.nj = sub nsw <16 x i16> %i.nb, %i.ni         ; 2 uses
  store <16 x i16> %i.nj, ptr %i.nf, align 2, !tbaa !104, !alias.scope !1432, !noalias !1433
  %i.nk = ashr <16 x i16> %i.nj, splat (i16 1)
  %i.nl = add nsw <16 x i16> %i.nk, %i.ni
  store <16 x i16> %i.nl, ptr %i.nd, align 2, !tbaa !104, !alias.scope !1434, !noalias !1429
  %index.next301 = add nuw i64 %index296, 16      ; 2 uses
  %i.nm = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.nm, label %middle.block302, label %vector.body295, !llvm.loop !1398

middle.block302:                                  ; preds = %vector.body295
  br i1 %cmp.n303, label %.lr.ph127.i.i.i, label %vec.epilog.iter.check305

vec.epilog.iter.check305:                         ; preds = %middle.block302
  br i1 %min.epilog.iters.check307, label %.lr.ph37.i.i.i.i.preheader, label %vec.epilog.ph308, !prof !119

vec.epilog.ph308:                                 ; preds = %vector.main.loop.iter.check291, %vec.epilog.iter.check305
  %vec.epilog.resume.val309 = phi i64 [ %n.vec294, %vec.epilog.iter.check305 ], [ 0, %vector.main.loop.iter.check291 ]
  %n.vec310 = sub nsw i64 %i.mk, %i.eb            ; 2 uses
  %i.nn = add i64 %.0.lcssa.i79.i.i.i, %n.vec310
  br label %vec.epilog.vector.body311

vec.epilog.vector.body311:                        ; preds = %vec.epilog.vector.body311, %vec.epilog.ph308
  %index312 = phi i64 [ %vec.epilog.resume.val309, %vec.epilog.ph308 ], [ %index.next317, %vec.epilog.vector.body311 ] ; 2 uses
  %i.no = add nuw i64 %.0.lcssa.i79.i.i.i, %index312 ; 4 uses
  %i.np = mul nuw nsw i64 %i.no, 3
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.np
  %wide.vec313 = load <12 x i8>, ptr %i.nq, align 1, !tbaa !85, !alias.scope !1429 ; 3 uses
  %strided.vec314 = shufflevector <12 x i8> %wide.vec313, <12 x i8> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec315 = shufflevector <12 x i8> %wide.vec313, <12 x i8> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec316 = shufflevector <12 x i8> %wide.vec313, <12 x i8> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.nr = zext <4 x i8> %strided.vec314 to <4 x i16>
  %i.ns = zext <4 x i8> %strided.vec315 to <4 x i16>
  %i.nt = zext <4 x i8> %strided.vec316 to <4 x i16> ; 2 uses
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.pre.i.i, i64 %i.no
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %i.no
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.no
  %i.nx = sub nsw <4 x i16> %i.nr, %i.nt          ; 2 uses
  store <4 x i16> %i.nx, ptr %i.nv, align 2, !tbaa !104, !alias.scope !1430, !noalias !1431
  %i.ny = ashr <4 x i16> %i.nx, splat (i16 1)
end_hunk_3
begin_hunk_4_@_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m:bb.a

vector.body267:                                   ; preds = %vector.ph265, %vector.body267
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next272, %vector.body267 ] ; 2 uses
  %i.ky = add nuw i64 %.0.lcssa.i86.i.i.i, %index268 ; 2 uses
  %i.kz = shl nuw nsw i64 %i.ky, 1
  %i.la = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.kz ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  %wide.load = load <8 x i16>, ptr %i.la, align 1, !alias.scope !1802
  %wide.load269 = load <8 x i16>, ptr %i.lb, align 1, !alias.scope !1802
  %wide.load270 = load <8 x i16>, ptr %i.lc, align 1, !alias.scope !1802
  %wide.load271 = load <8 x i16>, ptr %i.ld, align 1, !alias.scope !1802
  %i.le = zext <8 x i16> %wide.load to <8 x i32>
  %i.lf = zext <8 x i16> %wide.load269 to <8 x i32>
  %i.lg = zext <8 x i16> %wide.load270 to <8 x i32>
  %i.lh = zext <8 x i16> %wide.load271 to <8 x i32>
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.ky ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 96
  store <8 x i32> %i.le, ptr %i.li, align 4, !tbaa !94, !alias.scope !1803, !noalias !1802
  store <8 x i32> %i.lf, ptr %i.lj, align 4, !tbaa !94, !alias.scope !1803, !noalias !1802
  store <8 x i32> %i.lg, ptr %i.lk, align 4, !tbaa !94, !alias.scope !1803, !noalias !1802
  store <8 x i32> %i.lh, ptr %i.ll, align 4, !tbaa !94, !alias.scope !1803, !noalias !1802
  %index.next272 = add nuw i64 %index268, 32      ; 2 uses
  %i.lm = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.lm, label %middle.block273, label %vector.body267, !llvm.loop !1729

middle.block273:                                  ; preds = %vector.body267
  %cmp.n274 = icmp eq i64 %i.ko, %n.vec266
  br i1 %cmp.n274, label %.lr.ph148.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block273
  %min.epilog.iters.check = icmp eq i64 %i.kw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph21.i.i.i.i.preheader, label %vec.epilog.ph, !prof !186

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec266, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec275 = sub nsw i64 %i.ko, %i.ez            ; 2 uses
  %i.ln = add i64 %.0.lcssa.i86.i.i.i, %n.vec275
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next278, %vec.epilog.vector.body ] ; 2 uses
  %i.lo = add nuw i64 %.0.lcssa.i86.i.i.i, %index276 ; 2 uses
  %i.lp = shl nuw nsw i64 %i.lo, 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.lp
  %wide.load277 = load <8 x i16>, ptr %i.lq, align 1, !alias.scope !1802
  %i.lr = zext <8 x i16> %wide.load277 to <8 x i32>
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.lo
  store <8 x i32> %i.lr, ptr %i.ls, align 4, !tbaa !94, !alias.scope !1803, !noalias !1802
  %index.next278 = add nuw i64 %index276, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next278, %n.vec275
  br i1 %i.lt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1730

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n279, label %.lr.ph148.i.i.i, label %.lr.ph21.i.i.i.i.preheader

.lr.ph21.i.i.i.i.preheader:                       ; preds = %iter.check, %vector.memcheck260, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.120.i.i.i.i.ph = phi i64 [ %.0.lcssa.i86.i.i.i, %iter.check ], [ %.0.lcssa.i86.i.i.i, %vector.memcheck260 ], [ %i.kx, %vec.epilog.iter.check ], [ %i.ln, %vec.epilog.middle.block ] ; 4 uses
  %i.lu = sub i64 %.sroa.speculated35.i, %.120.i.i.i.i.ph
  %xtraiter671 = and i64 %i.lu, 3                 ; 2 uses
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  br i1 %lcmp.mod672.not, label %.lr.ph21.i.i.i.i.prol.loopexit, label %.lr.ph21.i.i.i.i.prol

.lr.ph21.i.i.i.i.prol:                            ; preds = %.lr.ph21.i.i.i.i.preheader, %.lr.ph21.i.i.i.i.prol
  %.120.i.i.i.i.prol = phi i64 [ %i.lz, %.lr.ph21.i.i.i.i.prol ], [ %.120.i.i.i.i.ph, %.lr.ph21.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph21.i.i.i.i.prol ], [ 0, %.lr.ph21.i.i.i.i.preheader ]
  %i.lv = shl nuw nsw i64 %.120.i.i.i.i.prol, 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.lv
  %.val15.i.i.i.i.prol = load i16, ptr %i.lw, align 1
  %i.lx = zext i16 %.val15.i.i.i.i.prol to i32
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.120.i.i.i.i.prol
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !94
  %i.lz = add nuw nsw i64 %.120.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter671
  br i1 %prol.iter.cmp.not, label %.lr.ph21.i.i.i.i.prol.loopexit, label %.lr.ph21.i.i.i.i.prol, !llvm.loop !1731

.lr.ph21.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph21.i.i.i.i.prol, %.lr.ph21.i.i.i.i.preheader
  %.120.i.i.i.i.unr = phi i64 [ %.120.i.i.i.i.ph, %.lr.ph21.i.i.i.i.preheader ], [ %i.lz, %.lr.ph21.i.i.i.i.prol ]
  %i.ma = sub i64 %.120.i.i.i.i.ph, %.sroa.speculated35.i
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %.lr.ph148.i.i.i, label %.lr.ph21.i.i.i.i

.lr.ph.i83.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i83.i.i.i
  %i.mc = phi i64 [ %i.mn, %.lr.ph.i83.i.i.i ], [ 16, %bb.m ] ; 3 uses
  %.019.i.i.i.i = phi i64 [ %i.mc, %.lr.ph.i83.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.md = shl nuw nsw i64 %.019.i.i.i.i, 1
  %i.me = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.md
  %.val17.i.i.i.i = load <16 x i16>, ptr %i.me, align 1, !tbaa !85 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.019.i.i.i.i ; 2 uses
  %i.mg = shufflevector <16 x i16> %.val17.i.i.i.i, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.mh = bitcast <16 x i16> %i.mg to <4 x i64>
  %i.mi = shufflevector <16 x i16> %.val17.i.i.i.i, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mj = bitcast <16 x i16> %i.mi to <4 x i64>
  %i.mk = shufflevector <16 x i16> %i.mg, <16 x i16> %i.mi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ml = shufflevector <4 x i64> %i.mh, <4 x i64> %i.mj, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.mk, ptr %i.mf, align 1, !tbaa !85
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  store <4 x i64> %i.ml, ptr %i.mm, align 1, !tbaa !85
  %i.mn = add nuw nsw i64 %i.mc, 16               ; 2 uses
  %.not.i84.i.i.i = icmp samesign ugt i64 %i.mn, %.sroa.speculated35.i
  br i1 %.not.i84.i.i.i, label %.preheader.i85.i.i.i, label %.lr.ph.i83.i.i.i, !llvm.loop !20

.lr.ph21.i.i.i.i:                                 ; preds = %.lr.ph21.i.i.i.i.prol.loopexit, %.lr.ph21.i.i.i.i
  %.120.i.i.i.i = phi i64 [ %i.nh, %.lr.ph21.i.i.i.i ], [ %.120.i.i.i.i.unr, %.lr.ph21.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.mo = shl nuw nsw i64 %.120.i.i.i.i, 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.mo
  %.val15.i.i.i.i = load i16, ptr %i.mp, align 1
  %i.mq = zext i16 %.val15.i.i.i.i to i32
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.120.i.i.i.i
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !94
  %i.ms = add nuw nsw i64 %.120.i.i.i.i, 1        ; 2 uses
  %i.mt = shl nuw nsw i64 %i.ms, 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.mt
  %.val15.i.i.i.i.1 = load i16, ptr %i.mu, align 1
  %i.mv = zext i16 %.val15.i.i.i.i.1 to i32
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.ms
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !94
  %i.mx = add nuw nsw i64 %.120.i.i.i.i, 2        ; 2 uses
  %i.my = shl nuw nsw i64 %i.mx, 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.my
  %.val15.i.i.i.i.2 = load i16, ptr %i.mz, align 1
  %i.na = zext i16 %.val15.i.i.i.i.2 to i32
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.mx
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !94
  %i.nc = add nuw nsw i64 %.120.i.i.i.i, 3        ; 2 uses
  %i.nd = shl nuw nsw i64 %i.nc, 1
  %i.ne = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nd
  %.val15.i.i.i.i.3 = load i16, ptr %i.ne, align 1
  %i.nf = zext i16 %.val15.i.i.i.i.3 to i32
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.nc
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !94
  %i.nh = add nuw nsw i64 %.120.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i87.i.i.i.3 = icmp eq i64 %i.nh, %.sroa.speculated35.i
  br i1 %exitcond.not.i87.i.i.i.3, label %.lr.ph148.i.i.i, label %.lr.ph21.i.i.i.i, !llvm.loop !1732

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.ni = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 16 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not39.i.i.i.i, label %.preheader.i90.i.i.i, label %.lr.ph.i88.i.i.i

.preheader.i90.i.i.i:                             ; preds = %.lr.ph.i88.i.i.i, %bb.o
  %.0.lcssa.i91.i.i.i = phi i64 [ 0, %bb.o ], [ %i.pk, %.lr.ph.i88.i.i.i ] ; 9 uses
  %i.nj = icmp samesign ult i64 %.0.lcssa.i91.i.i.i, %.sroa.speculated35.i
  br i1 %i.nj, label %iter.check429, label %.lr.ph148.i.i.i

iter.check429:                                    ; preds = %.preheader.i90.i.i.i
  %i.nk = sub nuw nsw i64 %.sroa.speculated35.i, %.0.lcssa.i91.i.i.i ; 4 uses
  %min.iters.check401 = icmp samesign ult i64 %i.nk, 4
  br i1 %min.iters.check401, label %.lr.ph39.i.i.i.i.preheader, label %vector.memcheck402

vector.memcheck402:                               ; preds = %iter.check429
  %i.nl = shl nuw nsw i64 %.0.lcssa.i91.i.i.i, 2  ; 3 uses
  %i.nm = getelementptr i8, ptr %.pre.i.i, i64 %i.nl ; 2 uses
  %i.nn = getelementptr i8, ptr %.pre.i.i, i64 %i.ek ; 2 uses
  %i.no = getelementptr i8, ptr %i.ni, i64 %i.nl  ; 2 uses
  %i.np = getelementptr i8, ptr %i.ni, i64 %i.ek  ; 2 uses
  %i.nq = getelementptr i8, ptr %i.ai, i64 %i.fj
  %i.nr = getelementptr i8, ptr %i.nq, i64 %i.nl  ; 2 uses
  %i.ns = getelementptr i8, ptr %i.el, i64 %i.fj  ; 2 uses
  %bound0403 = icmp ult ptr %i.nm, %i.np
  %bound1404 = icmp ult ptr %i.no, %i.nn
  %found.conflict405 = and i1 %bound0403, %bound1404
  %bound0406 = icmp ult ptr %i.nm, %i.ns
  %bound1407 = icmp ult ptr %i.nr, %i.nn
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %found.conflict405, %found.conflict408
  %bound0410 = icmp ult ptr %i.no, %i.ns
  %bound1411 = icmp ult ptr %i.nr, %i.np
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %.lr.ph39.i.i.i.i.preheader, label %vector.main.loop.iter.check414

vector.main.loop.iter.check414:                   ; preds = %vector.memcheck402
  %min.iters.check415 = icmp samesign ult i64 %i.nk, 16
  br i1 %min.iters.check415, label %vec.epilog.ph433, label %vector.ph416

vector.ph416:                                     ; preds = %vector.main.loop.iter.check414
  %n.vec417 = sub nuw nsw i64 %i.nk, %i.em        ; 3 uses
  %i.nt = add nuw i64 %.0.lcssa.i91.i.i.i, %n.vec417
  br label %vector.body418

vector.body418:                                   ; preds = %vector.ph416, %vector.body418
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next426, %vector.body418 ] ; 2 uses
  %i.nu = add nuw i64 %.0.lcssa.i91.i.i.i, %index419 ; 4 uses
  %i.nv = shl nuw nsw i64 %i.nu, 2
  %i.nw = shl i64 %i.nu, 2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nw
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %wide.vec420 = load <16 x i16>, ptr %i.nx, align 1, !alias.scope !1804
  %wide.vec420.fr = freeze <16 x i16> %wide.vec420 ; 2 uses
  %wide.vec423 = load <16 x i16>, ptr %i.nz, align 1, !alias.scope !1804
  %wide.vec423.fr = freeze <16 x i16> %wide.vec423 ; 2 uses
  %i.oa = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec420.fr)
  %4 = bitcast <16 x i16> %i.oa to <8 x i32>
  %5 = and <8 x i32> %4, splat (i32 65535)
  %i.ob = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec423.fr)
  %6 = bitcast <16 x i16> %i.ob to <8 x i32>
  %7 = and <8 x i32> %6, splat (i32 65535)
  %i.oc = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec420.fr)
  %i.od = bitcast <16 x i16> %i.oc to <8 x i32>
  %i.oe = lshr <8 x i32> %i.od, splat (i32 16)
  %i.of = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec423.fr)
  %i.og = bitcast <16 x i16> %i.of to <8 x i32>
  %i.oh = lshr <8 x i32> %i.og, splat (i32 16)
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.nu ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  store <8 x i32> %5, ptr %i.oi, align 4, !tbaa !94, !alias.scope !1805, !noalias !1806
  store <8 x i32> %7, ptr %i.oj, align 4, !tbaa !94, !alias.scope !1805, !noalias !1806
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nu ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  store <8 x i32> %i.oe, ptr %i.ok, align 4, !tbaa !94, !alias.scope !1807, !noalias !1804
  store <8 x i32> %i.oh, ptr %i.ol, align 4, !tbaa !94, !alias.scope !1807, !noalias !1804
  %index.next426 = add nuw i64 %index419, 16      ; 2 uses
  %i.om = icmp eq i64 %index.next426, %n.vec417
  br i1 %i.om, label %middle.block427, label %vector.body418, !llvm.loop !1737

middle.block427:                                  ; preds = %vector.body418
  br i1 %cmp.n428, label %.lr.ph148.i.i.i, label %vec.epilog.iter.check430

vec.epilog.iter.check430:                         ; preds = %middle.block427
  br i1 %min.epilog.iters.check432, label %.lr.ph39.i.i.i.i.preheader, label %vec.epilog.ph433, !prof !119

vec.epilog.ph433:                                 ; preds = %vector.main.loop.iter.check414, %vec.epilog.iter.check430
  %vec.epilog.resume.val434 = phi i64 [ %n.vec417, %vec.epilog.iter.check430 ], [ 0, %vector.main.loop.iter.check414 ]
  %n.vec435 = sub nsw i64 %i.nk, %i.en            ; 2 uses
  %i.on = add i64 %.0.lcssa.i91.i.i.i, %n.vec435
  br label %vec.epilog.vector.body436

vec.epilog.vector.body436:                        ; preds = %vec.epilog.vector.body436, %vec.epilog.ph433
  %index437 = phi i64 [ %vec.epilog.resume.val434, %vec.epilog.ph433 ], [ %index.next441, %vec.epilog.vector.body436 ] ; 2 uses
  %i.oo = add nuw i64 %.0.lcssa.i91.i.i.i, %index437 ; 3 uses
  %i.op = shl nuw nsw i64 %i.oo, 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.op
  %wide.vec438 = load <8 x i16>, ptr %i.oq, align 1, !alias.scope !1804
  %wide.vec438.fr = freeze <8 x i16> %wide.vec438 ; 2 uses
  %i.or = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec438.fr)
  %8 = bitcast <8 x i16> %i.or to <4 x i32>
  %9 = and <4 x i32> %8, splat (i32 65535)
  %i.os = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec438.fr)
  %i.ot = bitcast <8 x i16> %i.os to <4 x i32>
  %i.ou = lshr <4 x i32> %i.ot, splat (i32 16)
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.oo
  store <4 x i32> %9, ptr %i.ov, align 4, !tbaa !94, !alias.scope !1805, !noalias !1806
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.oo
  store <4 x i32> %i.ou, ptr %i.ow, align 4, !tbaa !94, !alias.scope !1807, !noalias !1804
  %index.next441 = add nuw i64 %index437, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next441, %n.vec435
  br i1 %i.ox, label %vec.epilog.middle.block442, label %vec.epilog.vector.body436, !llvm.loop !1738

vec.epilog.middle.block442:                       ; preds = %vec.epilog.vector.body436
  br i1 %cmp.n443, label %.lr.ph148.i.i.i, label %.lr.ph39.i.i.i.i.preheader

.lr.ph39.i.i.i.i.preheader:                       ; preds = %iter.check429, %vector.memcheck402, %vec.epilog.iter.check430, %vec.epilog.middle.block442
  %.138.i.i.i.i.ph = phi i64 [ %.0.lcssa.i91.i.i.i, %iter.check429 ], [ %.0.lcssa.i91.i.i.i, %vector.memcheck402 ], [ %i.nt, %vec.epilog.iter.check430 ], [ %i.on, %vec.epilog.middle.block442 ] ; 7 uses
  %i.oy = sub i64 %.sroa.speculated35.i, %.138.i.i.i.i.ph
  %.neg = add i64 %.138.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.oy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph39.i.i.i.i.prol.loopexit, label %.lr.ph39.i.i.i.i.prol

.lr.ph39.i.i.i.i.prol:                            ; preds = %.lr.ph39.i.i.i.i.preheader
  %i.oz = shl nuw nsw i64 %.138.i.i.i.i.ph, 2
  %i.pa = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.oz ; 2 uses
  %.val26.i.i.i.i.prol = load i16, ptr %i.pa, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  %.val.i.i.i.i.prol = load i16, ptr %i.pb, align 1
  %i.pc = call noundef i16 @llvm.bswap.i16(i16 %.val26.i.i.i.i.prol)
  %i.pd = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.prol)
  %i.pe = zext i16 %i.pc to i32
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.138.i.i.i.i.ph
  store i32 %i.pe, ptr %i.pf, align 4, !tbaa !94
  %i.pg = zext i16 %i.pd to i32
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.138.i.i.i.i.ph
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !94
  %i.pi = add nuw nsw i64 %.138.i.i.i.i.ph, 1
  br label %.lr.ph39.i.i.i.i.prol.loopexit

.lr.ph39.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph39.i.i.i.i.prol, %.lr.ph39.i.i.i.i.preheader
  %.138.i.i.i.i.unr = phi i64 [ %.138.i.i.i.i.ph, %.lr.ph39.i.i.i.i.preheader ], [ %i.pi, %.lr.ph39.i.i.i.i.prol ]
  %i.pj = icmp eq i64 %.sroa.speculated35.i, %.neg
  br i1 %i.pj, label %.lr.ph148.i.i.i, label %.lr.ph39.i.i.i.i

.lr.ph.i88.i.i.i:                                 ; preds = %bb.o, %.lr.ph.i88.i.i.i
  %i.pk = phi i64 [ %i.qu, %.lr.ph.i88.i.i.i ], [ 16, %bb.o ] ; 3 uses
  %.037.i.i.i.i = phi i64 [ %i.pk, %.lr.ph.i88.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.pl = shl nuw nsw i64 %.037.i.i.i.i, 2
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.pl ; 2 uses
  %.val2834.i.i.i.i = load <8 x i32>, ptr %i.pm, align 1, !tbaa !85 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 32
  %.val2935.i.i.i.i = load <8 x i32>, ptr %i.pn, align 1, !tbaa !85 ; 2 uses
  %i.po = and <8 x i32> %.val2834.i.i.i.i, splat (i32 65535)
  %i.pp = and <8 x i32> %.val2935.i.i.i.i, splat (i32 65535)
  %i.pq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.po, <8 x i32> %i.pp)
  %i.pr = bitcast <16 x i16> %i.pq to <4 x i64>
  %i.ps = shufflevector <4 x i64> %i.pr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pt = lshr <8 x i32> %.val2834.i.i.i.i, splat (i32 16)
  %i.pu = lshr <8 x i32> %.val2935.i.i.i.i, splat (i32 16)
  %i.pv = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.pt, <8 x i32> %i.pu)
  %i.pw = bitcast <16 x i16> %i.pv to <4 x i64>
  %i.px = shufflevector <4 x i64> %i.pw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.py = bitcast <4 x i64> %i.ps to <32 x i8>
  %i.pz = shufflevector <32 x i8> %i.py, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.qa = bitcast <4 x i64> %i.px to <32 x i8>
  %i.qb = shufflevector <32 x i8> %i.qa, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30>
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.037.i.i.i.i ; 2 uses
  %i.qd = bitcast <32 x i8> %i.pz to <16 x i16>   ; 2 uses
  %i.qe = shufflevector <16 x i16> %i.qd, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.qf = bitcast <16 x i16> %i.qe to <4 x i64>
  %i.qg = shufflevector <16 x i16> %i.qd, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qh = bitcast <16 x i16> %i.qg to <4 x i64>
  %i.qi = shufflevector <16 x i16> %i.qe, <16 x i16> %i.qg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qj = shufflevector <4 x i64> %i.qf, <4 x i64> %i.qh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.qi, ptr %i.qc, align 1, !tbaa !85
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  store <4 x i64> %i.qj, ptr %i.qk, align 1, !tbaa !85
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.037.i.i.i.i ; 2 uses
  %i.qm = bitcast <32 x i8> %i.qb to <16 x i16>   ; 2 uses
  %i.qn = shufflevector <16 x i16> %i.qm, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.qo = bitcast <16 x i16> %i.qn to <4 x i64>
  %i.qp = shufflevector <16 x i16> %i.qm, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qq = bitcast <16 x i16> %i.qp to <4 x i64>
  %i.qr = shufflevector <16 x i16> %i.qn, <16 x i16> %i.qp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qs = shufflevector <4 x i64> %i.qo, <4 x i64> %i.qq, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.qr, ptr %i.ql, align 1, !tbaa !85
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  store <4 x i64> %i.qs, ptr %i.qt, align 1, !tbaa !85
  %i.qu = add nuw nsw i64 %i.pk, 16               ; 2 uses
  %.not.i89.i.i.i = icmp samesign ugt i64 %i.qu, %.sroa.speculated35.i
  br i1 %.not.i89.i.i.i, label %.preheader.i90.i.i.i, label %.lr.ph.i88.i.i.i, !llvm.loop !21

.lr.ph39.i.i.i.i:                                 ; preds = %.lr.ph39.i.i.i.i.prol.loopexit, %.lr.ph39.i.i.i.i
  %.138.i.i.i.i = phi i64 [ %i.ro, %.lr.ph39.i.i.i.i ], [ %.138.i.i.i.i.unr, %.lr.ph39.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.qv = shl nuw nsw i64 %.138.i.i.i.i, 2
  %i.qw = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.qv ; 2 uses
  %.val26.i.i.i.i = load i16, ptr %i.qw, align 1
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 2
  %.val.i.i.i.i = load i16, ptr %i.qx, align 1
  %i.qy = call noundef i16 @llvm.bswap.i16(i16 %.val26.i.i.i.i)
  %i.qz = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i)
  %i.ra = zext i16 %i.qy to i32
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.138.i.i.i.i
  store i32 %i.ra, ptr %i.rb, align 4, !tbaa !94
  %i.rc = zext i16 %i.qz to i32
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.138.i.i.i.i
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !94
  %i.re = add nuw nsw i64 %.138.i.i.i.i, 1        ; 3 uses
  %i.rf = shl nuw nsw i64 %i.re, 2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.rf ; 2 uses
  %.val26.i.i.i.i.1 = load i16, ptr %i.rg, align 1
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 2
  %.val.i.i.i.i.1 = load i16, ptr %i.rh, align 1
  %i.ri = call noundef i16 @llvm.bswap.i16(i16 %.val26.i.i.i.i.1)
  %i.rj = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.1)
  %i.rk = zext i16 %i.ri to i32
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.re
  store i32 %i.rk, ptr %i.rl, align 4, !tbaa !94
  %i.rm = zext i16 %i.rj to i32
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.re
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !94
  %i.ro = add nuw nsw i64 %.138.i.i.i.i, 2        ; 2 uses
  %exitcond.not.i92.i.i.i.1 = icmp eq i64 %i.ro, %.sroa.speculated35.i
  br i1 %exitcond.not.i92.i.i.i.1, label %.lr.ph148.i.i.i, label %.lr.ph39.i.i.i.i, !llvm.loop !1739

bb.p:                                             ; preds = %bb.n
  br i1 %.not39.i.i.i.i, label %.preheader.i95.i.i.i, label %.lr.ph.i93.i.i.i

.preheader.i95.i.i.i:                             ; preds = %.lr.ph.i93.i.i.i, %bb.p
  %.0.lcssa.i96.i.i.i = phi i64 [ 0, %bb.p ], [ %i.tg, %.lr.ph.i93.i.i.i ] ; 9 uses
  %i.rp = icmp samesign ult i64 %.0.lcssa.i96.i.i.i, %.sroa.speculated35.i
  br i1 %i.rp, label %iter.check367, label %.lr.ph148.i.i.i

iter.check367:                                    ; preds = %.preheader.i95.i.i.i
  %i.rq = sub nuw nsw i64 %.sroa.speculated35.i, %.0.lcssa.i96.i.i.i ; 4 uses
  %min.iters.check339 = icmp samesign ult i64 %i.rq, 4
  br i1 %min.iters.check339, label %.lr.ph33.i.i.i.i.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %iter.check367
  %i.rr = shl nuw nsw i64 %.0.lcssa.i96.i.i.i, 2  ; 3 uses
  %i.rs = getelementptr i8, ptr %.pre.i.i, i64 %i.rr ; 2 uses
  %i.rt = getelementptr i8, ptr %.pre.i.i, i64 %i.eo ; 2 uses
  %i.ru = getelementptr i8, ptr %i.ni, i64 %i.rr  ; 2 uses
  %i.rv = getelementptr i8, ptr %i.ni, i64 %i.eo  ; 2 uses
  %i.rw = getelementptr i8, ptr %i.ai, i64 %i.fj
  %i.rx = getelementptr i8, ptr %i.rw, i64 %i.rr  ; 2 uses
  %i.ry = getelementptr i8, ptr %i.ep, i64 %i.fj  ; 2 uses
  %bound0341 = icmp ult ptr %i.rs, %i.rv
  %bound1342 = icmp ult ptr %i.ru, %i.rt
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %i.rs, %i.ry
  %bound1345 = icmp ult ptr %i.rx, %i.rt
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %i.ru, %i.ry
  %bound1349 = icmp ult ptr %i.rx, %i.rv
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  br i1 %conflict.rdx351, label %.lr.ph33.i.i.i.i.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck340
  %min.iters.check353 = icmp samesign ult i64 %i.rq, 16
  br i1 %min.iters.check353, label %vec.epilog.ph371, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %n.vec355 = sub nuw nsw i64 %i.rq, %i.eq        ; 3 uses
  %i.rz = add nuw i64 %.0.lcssa.i96.i.i.i, %n.vec355
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next364, %vector.body356 ] ; 2 uses
  %i.sa = add nuw i64 %.0.lcssa.i96.i.i.i, %index357 ; 4 uses
  %i.sb = shl nuw nsw i64 %i.sa, 2
  %i.sc = shl i64 %i.sa, 2
  %i.sd = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.sb
  %i.se = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.sc
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %wide.vec358 = load <16 x i16>, ptr %i.sd, align 1, !alias.scope !1808
  %i.sg = freeze <16 x i16> %wide.vec358          ; 2 uses
  %10 = bitcast <16 x i16> %i.sg to <8 x i32>
  %i.sh = bitcast <16 x i16> %i.sg to <8 x i32>
  %11 = and <8 x i32> %i.sh, splat (i32 65535)
  %i.si = lshr <8 x i32> %10, splat (i32 16)
  %wide.vec361 = load <16 x i16>, ptr %i.sf, align 1, !alias.scope !1808
  %i.sj = freeze <16 x i16> %wide.vec361          ; 2 uses
  %i.sk = bitcast <16 x i16> %i.sj to <8 x i32>
  %12 = bitcast <16 x i16> %i.sj to <8 x i32>
  %13 = and <8 x i32> %12, splat (i32 65535)
  %14 = lshr <8 x i32> %i.sk, splat (i32 16)
  %15 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.sa ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store <8 x i32> %11, ptr %15, align 4, !tbaa !94, !alias.scope !1809, !noalias !1810
  store <8 x i32> %13, ptr %16, align 4, !tbaa !94, !alias.scope !1809, !noalias !1810
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.sa ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  store <8 x i32> %i.si, ptr %i.sl, align 4, !tbaa !94, !alias.scope !1811, !noalias !1808
  store <8 x i32> %14, ptr %i.sm, align 4, !tbaa !94, !alias.scope !1811, !noalias !1808
  %index.next364 = add nuw i64 %index357, 16      ; 2 uses
  %i.sn = icmp eq i64 %index.next364, %n.vec355
  br i1 %i.sn, label %middle.block365, label %vector.body356, !llvm.loop !1744

middle.block365:                                  ; preds = %vector.body356
  br i1 %cmp.n366, label %.lr.ph148.i.i.i, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block365
  br i1 %min.epilog.iters.check370, label %.lr.ph33.i.i.i.i.preheader, label %vec.epilog.ph371, !prof !119

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val372 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec373 = sub nsw i64 %i.rq, %i.er            ; 2 uses
  %i.so = add i64 %.0.lcssa.i96.i.i.i, %n.vec373
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph371
  %index375 = phi i64 [ %vec.epilog.resume.val372, %vec.epilog.ph371 ], [ %index.next379, %vec.epilog.vector.body374 ] ; 2 uses
  %i.sp = add nuw i64 %.0.lcssa.i96.i.i.i, %index375 ; 3 uses
  %i.sq = shl nuw nsw i64 %i.sp, 2
  %i.sr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.sq
  %wide.vec376 = load <8 x i16>, ptr %i.sr, align 1, !alias.scope !1808
  %i.ss = freeze <8 x i16> %wide.vec376           ; 2 uses
  %17 = bitcast <8 x i16> %i.ss to <4 x i32>
  %i.st = bitcast <8 x i16> %i.ss to <4 x i32>
  %18 = and <4 x i32> %i.st, splat (i32 65535)
  %19 = lshr <4 x i32> %17, splat (i32 16)
  %20 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.sp
  store <4 x i32> %18, ptr %20, align 4, !tbaa !94, !alias.scope !1809, !noalias !1810
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.sp
  store <4 x i32> %19, ptr %i.su, align 4, !tbaa !94, !alias.scope !1811, !noalias !1808
  %index.next379 = add nuw i64 %index375, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.sv, label %vec.epilog.middle.block380, label %vec.epilog.vector.body374, !llvm.loop !1745

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body374
  br i1 %cmp.n381, label %.lr.ph148.i.i.i, label %.lr.ph33.i.i.i.i.preheader

.lr.ph33.i.i.i.i.preheader:                       ; preds = %iter.check367, %vector.memcheck340, %vec.epilog.iter.check368, %vec.epilog.middle.block380
  %.132.i.i.i.i.ph = phi i64 [ %.0.lcssa.i96.i.i.i, %iter.check367 ], [ %.0.lcssa.i96.i.i.i, %vector.memcheck340 ], [ %i.rz, %vec.epilog.iter.check368 ], [ %i.so, %vec.epilog.middle.block380 ] ; 7 uses
  %i.sw = sub i64 %.sroa.speculated35.i, %.132.i.i.i.i.ph
  %.neg676 = add i64 %.132.i.i.i.i.ph, 1
  %xtraiter667 = and i64 %i.sw, 1
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  br i1 %lcmp.mod668.not, label %.lr.ph33.i.i.i.i.prol.loopexit, label %.lr.ph33.i.i.i.i.prol

.lr.ph33.i.i.i.i.prol:                            ; preds = %.lr.ph33.i.i.i.i.preheader
  %i.sx = shl nuw nsw i64 %.132.i.i.i.i.ph, 2
  %i.sy = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.sx ; 2 uses
  %.val24.i.i.i.i.prol = load i16, ptr %i.sy, align 1
  %i.sz = zext i16 %.val24.i.i.i.i.prol to i32
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %.val.i97.i.i.i.prol = load i16, ptr %i.ta, align 1
  %i.tb = zext i16 %.val.i97.i.i.i.prol to i32
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.132.i.i.i.i.ph
  store i32 %i.sz, ptr %i.tc, align 4, !tbaa !94
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.132.i.i.i.i.ph
  store i32 %i.tb, ptr %i.td, align 4, !tbaa !94
  %i.te = add nuw nsw i64 %.132.i.i.i.i.ph, 1
  br label %.lr.ph33.i.i.i.i.prol.loopexit

.lr.ph33.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph33.i.i.i.i.prol, %.lr.ph33.i.i.i.i.preheader
  %.132.i.i.i.i.unr = phi i64 [ %.132.i.i.i.i.ph, %.lr.ph33.i.i.i.i.preheader ], [ %i.te, %.lr.ph33.i.i.i.i.prol ]
  %i.tf = icmp eq i64 %.sroa.speculated35.i, %.neg676
  br i1 %i.tf, label %.lr.ph148.i.i.i, label %.lr.ph33.i.i.i.i

.lr.ph.i93.i.i.i:                                 ; preds = %bb.p, %.lr.ph.i93.i.i.i
  %i.tg = phi i64 [ %i.um, %.lr.ph.i93.i.i.i ], [ 16, %bb.p ] ; 3 uses
  %.031.i.i.i.i = phi i64 [ %i.tg, %.lr.ph.i93.i.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.th = shl nuw nsw i64 %.031.i.i.i.i, 2
  %i.ti = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.th ; 2 uses
  %.val2628.i.i.i.i = load <8 x i32>, ptr %i.ti, align 1, !tbaa !85 ; 2 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 32
  %.val2729.i.i.i.i = load <8 x i32>, ptr %i.tj, align 1, !tbaa !85 ; 2 uses
  %i.tk = and <8 x i32> %.val2628.i.i.i.i, splat (i32 65535)
  %i.tl = and <8 x i32> %.val2729.i.i.i.i, splat (i32 65535)
  %i.tm = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.tk, <8 x i32> %i.tl)
  %i.tn = bitcast <16 x i16> %i.tm to <4 x i64>
  %i.to = shufflevector <4 x i64> %i.tn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.tp = lshr <8 x i32> %.val2628.i.i.i.i, splat (i32 16)
  %i.tq = lshr <8 x i32> %.val2729.i.i.i.i, splat (i32 16)
  %i.tr = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.tp, <8 x i32> %i.tq)
  %i.ts = bitcast <16 x i16> %i.tr to <4 x i64>
  %i.tt = shufflevector <4 x i64> %i.ts, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.031.i.i.i.i ; 2 uses
  %i.tv = bitcast <4 x i64> %i.to to <16 x i16>   ; 2 uses
  %i.tw = shufflevector <16 x i16> %i.tv, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.tx = bitcast <16 x i16> %i.tw to <4 x i64>
  %i.ty = shufflevector <16 x i16> %i.tv, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.tz = bitcast <16 x i16> %i.ty to <4 x i64>
  %i.ua = shufflevector <16 x i16> %i.tw, <16 x i16> %i.ty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ub = shufflevector <4 x i64> %i.tx, <4 x i64> %i.tz, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.ua, ptr %i.tu, align 1, !tbaa !85
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  store <4 x i64> %i.ub, ptr %i.uc, align 1, !tbaa !85
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.031.i.i.i.i ; 2 uses
  %i.ue = bitcast <4 x i64> %i.tt to <16 x i16>   ; 2 uses
  %i.uf = shufflevector <16 x i16> %i.ue, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ug = bitcast <16 x i16> %i.uf to <4 x i64>
  %i.uh = shufflevector <16 x i16> %i.ue, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ui = bitcast <16 x i16> %i.uh to <4 x i64>
  %i.uj = shufflevector <16 x i16> %i.uf, <16 x i16> %i.uh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.uk = shufflevector <4 x i64> %i.ug, <4 x i64> %i.ui, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <16 x i16> %i.uj, ptr %i.ud, align 1, !tbaa !85
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ud, i64 32
  store <4 x i64> %i.uk, ptr %i.ul, align 1, !tbaa !85
  %i.um = add nuw nsw i64 %i.tg, 16               ; 2 uses
  %.not.i94.i.i.i = icmp samesign ugt i64 %i.um, %.sroa.speculated35.i
  br i1 %.not.i94.i.i.i, label %.preheader.i95.i.i.i, label %.lr.ph.i93.i.i.i, !llvm.loop !22

.lr.ph33.i.i.i.i:                                 ; preds = %.lr.ph33.i.i.i.i.prol.loopexit, %.lr.ph33.i.i.i.i
  %.132.i.i.i.i = phi i64 [ %i.vc, %.lr.ph33.i.i.i.i ], [ %.132.i.i.i.i.unr, %.lr.ph33.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.un = shl nuw nsw i64 %.132.i.i.i.i, 2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.un ; 2 uses
  %.val24.i.i.i.i = load i16, ptr %i.uo, align 1
  %i.up = zext i16 %.val24.i.i.i.i to i32
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 2
  %.val.i97.i.i.i = load i16, ptr %i.uq, align 1
  %i.ur = zext i16 %.val.i97.i.i.i to i32
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %.132.i.i.i.i
  store i32 %i.up, ptr %i.us, align 4, !tbaa !94
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.132.i.i.i.i
  store i32 %i.ur, ptr %i.ut, align 4, !tbaa !94
  %i.uu = add nuw nsw i64 %.132.i.i.i.i, 1        ; 3 uses
  %i.uv = shl nuw nsw i64 %i.uu, 2
  %i.uw = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.uv ; 2 uses
  %.val24.i.i.i.i.1 = load i16, ptr %i.uw, align 1
  %i.ux = zext i16 %.val24.i.i.i.i.1 to i32
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  %.val.i97.i.i.i.1 = load i16, ptr %i.uy, align 1
  %i.uz = zext i16 %.val.i97.i.i.i.1 to i32
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.uu
  store i32 %i.ux, ptr %i.va, align 4, !tbaa !94
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.uu
  store i32 %i.uz, ptr %i.vb, align 4, !tbaa !94
  %i.vc = add nuw nsw i64 %.132.i.i.i.i, 2        ; 2 uses
  %exitcond.not.i98.i.i.i.1 = icmp eq i64 %i.vc, %.sroa.speculated35.i
  br i1 %exitcond.not.i98.i.i.i.1, label %.lr.ph148.i.i.i, label %.lr.ph33.i.i.i.i, !llvm.loop !1746

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.vd = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 10 uses
  %i.ve = load ptr, ptr %i.dy, align 16, !tbaa !101 ; 10 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not39.i.i.i.i, label %.preheader.i101.i.i.i, label %.lr.ph.i99.i.i.i

.preheader.i101.i.i.i:                            ; preds = %.lr.ph.i99.i.i.i, %bb.r
  %.0.lcssa.i102.i.i.i = phi i64 [ 0, %bb.r ], [ %i.wp, %.lr.ph.i99.i.i.i ] ; 8 uses
  %i.vf = icmp samesign ult i64 %.0.lcssa.i102.i.i.i, %.sroa.speculated35.i
  br i1 %i.vf, label %.lr.ph51.i.i.i.i.preheader, label %.lr.ph148.i.i.i

.lr.ph51.i.i.i.i.preheader:                       ; preds = %.preheader.i101.i.i.i
  %i.vg = sub nuw nsw i64 %.sroa.speculated35.i, %.0.lcssa.i102.i.i.i ; 2 uses
  %min.iters.check546 = icmp samesign ult i64 %i.vg, 8
  br i1 %min.iters.check546, label %.lr.ph51.i.i.i.i.preheader658, label %vector.memcheck547

vector.memcheck547:                               ; preds = %.lr.ph51.i.i.i.i.preheader
  %i.vh = shl nuw nsw i64 %.0.lcssa.i102.i.i.i, 2 ; 3 uses
  %i.vi = getelementptr i8, ptr %i.vd, i64 %i.vh  ; 3 uses
  %i.vj = getelementptr i8, ptr %i.vd, i64 %i.ec  ; 3 uses
  %i.vk = getelementptr i8, ptr %i.ve, i64 %i.vh  ; 3 uses
  %i.vl = getelementptr i8, ptr %i.ve, i64 %i.ec  ; 3 uses
  %i.vm = getelementptr i8, ptr %.pre.i.i, i64 %i.vh ; 3 uses
  %i.vn = getelementptr i8, ptr %.pre.i.i, i64 %i.ec ; 3 uses
  %i.vo = mul nuw nsw i64 %.0.lcssa.i102.i.i.i, 6
  %i.vp = getelementptr i8, ptr %i.ai, i64 %i.fj
  %i.vq = getelementptr i8, ptr %i.vp, i64 %i.vo  ; 3 uses
  %i.vr = getelementptr i8, ptr %i.ee, i64 %i.fj  ; 3 uses
  %bound0548 = icmp ult ptr %i.vi, %i.vl
  %bound1549 = icmp ult ptr %i.vk, %i.vj
  %found.conflict550 = and i1 %bound0548, %bound1549
  %bound0551 = icmp ult ptr %i.vi, %i.vn
  %bound1552 = icmp ult ptr %i.vm, %i.vj
  %found.conflict553 = and i1 %bound0551, %bound1552
  %conflict.rdx554 = or i1 %found.conflict550, %found.conflict553
  %bound0555 = icmp ult ptr %i.vi, %i.vr
  %bound1556 = icmp ult ptr %i.vq, %i.vj
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %conflict.rdx554, %found.conflict557
  %bound0559 = icmp ult ptr %i.vk, %i.vn
  %bound1560 = icmp ult ptr %i.vm, %i.vl
  %found.conflict561 = and i1 %bound0559, %bound1560
  %conflict.rdx562 = or i1 %conflict.rdx558, %found.conflict561
  %bound0563 = icmp ult ptr %i.vk, %i.vr
  %bound1564 = icmp ult ptr %i.vq, %i.vl
  %found.conflict565 = and i1 %bound0563, %bound1564
  %conflict.rdx566 = or i1 %conflict.rdx562, %found.conflict565
  %bound0567 = icmp ult ptr %i.vm, %i.vr
  %bound1568 = icmp ult ptr %i.vq, %i.vn
  %found.conflict569 = and i1 %bound0567, %bound1568
  %conflict.rdx570 = or i1 %conflict.rdx566, %found.conflict569
  br i1 %conflict.rdx570, label %.lr.ph51.i.i.i.i.preheader658, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck547
  %n.vec572 = sub nsw i64 %i.vg, %i.ef            ; 2 uses
  %i.vs = add i64 %.0.lcssa.i102.i.i.i, %n.vec572
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph571
  %index574 = phi i64 [ 0, %vector.ph571 ], [ %index.next579, %vector.body573 ] ; 2 uses
  %i.vt = add nuw i64 %.0.lcssa.i102.i.i.i, %index574 ; 4 uses
  %i.vu = mul nuw nsw i64 %i.vt, 6
  %i.vv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.vu
  %wide.vec575 = load <24 x i16>, ptr %i.vv, align 1, !alias.scope !1812 ; 3 uses
  %i.vw = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec575)
  %i.vx = shufflevector <24 x i16> %i.vw, <24 x i16> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.vy = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec575)
  %i.vz = shufflevector <24 x i16> %i.vy, <24 x i16> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.wa = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec575)
  %i.wb = shufflevector <24 x i16> %i.wa, <24 x i16> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.wc = zext <8 x i16> %i.vx to <8 x i32>
  %i.wd = zext <8 x i16> %i.vz to <8 x i32>
  %i.we = zext <8 x i16> %i.wb to <8 x i32>       ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.vt
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.vt
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %i.vt
  %i.wi = sub nsw <8 x i32> %i.wc, %i.we          ; 2 uses
  store <8 x i32> %i.wi, ptr %i.wg, align 4, !tbaa !94, !alias.scope !1813, !noalias !1814
  %i.wj = ashr <8 x i32> %i.wi, splat (i32 1)
  %i.wk = add nsw <8 x i32> %i.wj, %i.we          ; 2 uses
  %i.wl = sub nsw <8 x i32> %i.wd, %i.wk          ; 2 uses
  store <8 x i32> %i.wl, ptr %i.wh, align 4, !tbaa !94, !alias.scope !1815, !noalias !1816
  %i.wm = ashr <8 x i32> %i.wl, splat (i32 1)
  %i.wn = add nsw <8 x i32> %i.wm, %i.wk
  store <8 x i32> %i.wn, ptr %i.wf, align 4, !tbaa !94, !alias.scope !1817, !noalias !1812
  %index.next579 = add nuw i64 %index574, 8       ; 2 uses
  %i.wo = icmp eq i64 %index.next579, %n.vec572
  br i1 %i.wo, label %middle.block580, label %vector.body573, !llvm.loop !1752

middle.block580:                                  ; preds = %vector.body573
end_hunk_4
begin_hunk_5_@_ZZN22default_implementation12_GLOBAL__N_19LLProcessINS0_14MoreThan14BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m:bb.a
.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.l
  br i1 %min.iters.check241, label %.lr.ph.i.i.i.i.i.preheader492, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.hh = getelementptr i8, ptr %.pre.i.i.i, i64 %i.ex
  %bound0243 = icmp ult ptr %.pre.i.i.i, %i.fc
  %bound1244 = icmp ult ptr %i.ai, %i.hh
  %found.conflict245 = and i1 %bound0243, %bound1244
  %i.hi = or i1 %found.conflict245, %stride.check246
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i.preheader492, label %vector.body249

vector.body249:                                   ; preds = %vector.memcheck242, %vector.body249
  %index250 = phi i64 [ %index.next253, %vector.body249 ], [ 0, %vector.memcheck242 ] ; 3 uses
  %i.hj = shl i64 %index250, 1
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %wide.load251 = load <4 x i16>, ptr %i.hk, align 1, !alias.scope !2199
  %wide.load252 = load <4 x i16>, ptr %i.hl, align 1, !alias.scope !2199
  %i.hm = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load251)
  %i.hn = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load252)
  %i.ho = zext <4 x i16> %i.hm to <4 x i32>
  %i.hp = zext <4 x i16> %i.hn to <4 x i32>
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index250 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x i32> %i.ho, ptr %i.hq, align 4, !tbaa !94, !alias.scope !2200, !noalias !2199
  store <4 x i32> %i.hp, ptr %i.hr, align 4, !tbaa !94, !alias.scope !2200, !noalias !2199
  %index.next253 = add nuw i64 %index250, 8       ; 2 uses
  %i.hs = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.hs, label %middle.block254, label %vector.body249, !llvm.loop !2133

middle.block254:                                  ; preds = %vector.body249
  br i1 %cmp.n255, label %.lr.ph127.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader492

.lr.ph.i.i.i.i.i.preheader492:                    ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i.preheader, %middle.block254
  %.09.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck242 ], [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec248, %middle.block254 ] ; 5 uses
  %.neg512 = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod505.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader492
  %i.ht = shl nuw nsw i64 %.09.i.i.i.i.i.ph, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ht
  %.val.i.i.i.i.i.prol = load i16, ptr %i.hu, align 1
  %i.hv = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.i.prol)
  %i.hw = zext i16 %i.hv to i32
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.09.i.i.i.i.i.ph
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !94
  %i.hy = or disjoint i64 %.09.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader492
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader492 ], [ %i.hy, %.lr.ph.i.i.i.i.i.prol ]
  %i.hz = icmp eq i64 %.sroa.speculated35.i.i, %.neg512
  br i1 %i.hz, label %.lr.ph127.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.il, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ia = shl i64 %.09.i.i.i.i.i, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ia
  %.val.i.i.i.i.i = load i16, ptr %i.ib, align 1
  %i.ic = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.i)
  %i.id = zext i16 %i.ic to i32
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.09.i.i.i.i.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !94
  %i.if = add nuw i64 %.09.i.i.i.i.i, 1           ; 2 uses
  %i.ig = shl i64 %i.if, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ig
  %.val.i.i.i.i.i.1 = load i16, ptr %i.ih, align 1
  %i.ii = call noundef i16 @llvm.bswap.i16(i16 %.val.i.i.i.i.i.1)
  %i.ij = zext i16 %i.ii to i32
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.if
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !94
  %i.il = add nuw i64 %.09.i.i.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.il, %.sroa.speculated35.i.i
  br i1 %exitcond.not.i.i.i.i.i.1, label %.lr.ph127.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2134

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i99.i.i.i.i, label %.lr.ph127.i.i.i.i, label %.lr.ph.i84.i.i.i.i.preheader

.lr.ph.i84.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %min.iters.check219, label %.lr.ph.i84.i.i.i.i.preheader491, label %vector.memcheck220

vector.memcheck220:                               ; preds = %.lr.ph.i84.i.i.i.i.preheader
  %i.im = getelementptr i8, ptr %.pre.i.i.i, i64 %i.fd
  %bound0221 = icmp ult ptr %.pre.i.i.i, %i.fi
  %bound1222 = icmp ult ptr %i.ai, %i.im
  %found.conflict223 = and i1 %bound0221, %bound1222
  %i.in = or i1 %found.conflict223, %stride.check224
  br i1 %i.in, label %.lr.ph.i84.i.i.i.i.preheader491, label %vector.body227

vector.body227:                                   ; preds = %vector.memcheck220, %vector.body227
  %index228 = phi i64 [ %index.next230, %vector.body227 ], [ 0, %vector.memcheck220 ] ; 3 uses
  %i.io = shl i64 %index228, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %wide.load = load <4 x i16>, ptr %i.ip, align 1, !alias.scope !2201
  %wide.load229 = load <4 x i16>, ptr %i.iq, align 1, !alias.scope !2201
  %i.ir = zext <4 x i16> %wide.load to <4 x i32>
  %i.is = zext <4 x i16> %wide.load229 to <4 x i32>
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index228 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store <4 x i32> %i.ir, ptr %i.it, align 4, !tbaa !94, !alias.scope !2202, !noalias !2201
  store <4 x i32> %i.is, ptr %i.iu, align 4, !tbaa !94, !alias.scope !2202, !noalias !2201
  %index.next230 = add nuw i64 %index228, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.iv, label %middle.block231, label %vector.body227, !llvm.loop !2138

middle.block231:                                  ; preds = %vector.body227
  br i1 %cmp.n232, label %.lr.ph127.i.i.i.i, label %.lr.ph.i84.i.i.i.i.preheader491

.lr.ph.i84.i.i.i.i.preheader491:                  ; preds = %vector.memcheck220, %.lr.ph.i84.i.i.i.i.preheader, %middle.block231
  %.08.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck220 ], [ 0, %.lr.ph.i84.i.i.i.i.preheader ], [ %n.vec226, %middle.block231 ] ; 3 uses
  br i1 %lcmp.mod507.not, label %.lr.ph.i84.i.i.i.i.prol.loopexit, label %.lr.ph.i84.i.i.i.i.prol

.lr.ph.i84.i.i.i.i.prol:                          ; preds = %.lr.ph.i84.i.i.i.i.preheader491, %.lr.ph.i84.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi i64 [ %i.ja, %.lr.ph.i84.i.i.i.i.prol ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i84.i.i.i.i.preheader491 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i84.i.i.i.i.prol ], [ 0, %.lr.ph.i84.i.i.i.i.preheader491 ]
  %i.iw = shl i64 %.08.i.i.i.i.i.prol, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.iw
  %.val.i85.i.i.i.i.prol = load i16, ptr %i.ix, align 1
  %i.iy = zext i16 %.val.i85.i.i.i.i.prol to i32
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.08.i.i.i.i.i.prol
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !94
  %i.ja = add nuw i64 %.08.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter506
  br i1 %prol.iter.cmp.not, label %.lr.ph.i84.i.i.i.i.prol.loopexit, label %.lr.ph.i84.i.i.i.i.prol, !llvm.loop !2139

.lr.ph.i84.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i84.i.i.i.i.prol, %.lr.ph.i84.i.i.i.i.preheader491
  %.08.i.i.i.i.i.unr = phi i64 [ %.08.i.i.i.i.i.ph, %.lr.ph.i84.i.i.i.i.preheader491 ], [ %i.ja, %.lr.ph.i84.i.i.i.i.prol ]
  %i.jb = sub nsw i64 %.08.i.i.i.i.i.ph, %.sroa.speculated35.i.i
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %.lr.ph127.i.i.i.i, label %.lr.ph.i84.i.i.i.i

.lr.ph.i84.i.i.i.i:                               ; preds = %.lr.ph.i84.i.i.i.i.prol.loopexit, %.lr.ph.i84.i.i.i.i
  %.08.i.i.i.i.i = phi i64 [ %i.jw, %.lr.ph.i84.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i84.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.jd = shl i64 %.08.i.i.i.i.i, 1
  %i.je = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.jd
  %.val.i85.i.i.i.i = load i16, ptr %i.je, align 1
  %i.jf = zext i16 %.val.i85.i.i.i.i to i32
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.08.i.i.i.i.i
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !94
  %i.jh = add nuw i64 %.08.i.i.i.i.i, 1           ; 2 uses
  %i.ji = shl i64 %i.jh, 1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ji
  %.val.i85.i.i.i.i.1 = load i16, ptr %i.jj, align 1
  %i.jk = zext i16 %.val.i85.i.i.i.i.1 to i32
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.jh
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !94
  %i.jm = add nuw i64 %.08.i.i.i.i.i, 2           ; 2 uses
  %i.jn = shl i64 %i.jm, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.jn
  %.val.i85.i.i.i.i.2 = load i16, ptr %i.jo, align 1
  %i.jp = zext i16 %.val.i85.i.i.i.i.2 to i32
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.jm
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !94
  %i.jr = add nuw i64 %.08.i.i.i.i.i, 3           ; 2 uses
  %i.js = shl i64 %i.jr, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.js
  %.val.i85.i.i.i.i.3 = load i16, ptr %i.jt, align 1
  %i.ju = zext i16 %.val.i85.i.i.i.i.3 to i32
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.jr
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !94
  %i.jw = add nuw i64 %.08.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i86.i.i.i.i.3 = icmp eq i64 %i.jw, %.sroa.speculated35.i.i
  br i1 %exitcond.not.i86.i.i.i.i.3, label %.lr.ph127.i.i.i.i, label %.lr.ph.i84.i.i.i.i, !llvm.loop !2140

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.jx = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 14 uses
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i99.i.i.i.i, label %.lr.ph127.i.i.i.i, label %.lr.ph.i88.i.i.i.i.preheader

.lr.ph.i88.i.i.i.i.preheader:                     ; preds = %bb.o
  br i1 %min.iters.check312, label %.lr.ph.i88.i.i.i.i.preheader496, label %vector.memcheck313

vector.memcheck313:                               ; preds = %.lr.ph.i88.i.i.i.i.preheader
  %i.jy = getelementptr i8, ptr %.pre.i.i.i, i64 %i.en ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jx, i64 %i.en  ; 2 uses
  %bound0314 = icmp ult ptr %.pre.i.i.i, %i.jz
  %bound1315 = icmp ult ptr %i.jx, %i.jy
  %found.conflict316 = and i1 %bound0314, %bound1315
  %bound0317 = icmp ult ptr %.pre.i.i.i, %i.er
  %bound1318 = icmp ult ptr %i.ai, %i.jy
  %found.conflict319 = and i1 %bound0317, %bound1318
  %i.ka = or i1 %found.conflict319, %stride.check320
  %conflict.rdx321 = or i1 %found.conflict316, %i.ka
  %bound0322 = icmp ult ptr %i.jx, %i.er
  %bound1323 = icmp ult ptr %i.ai, %i.jz
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  br i1 %conflict.rdx325, label %.lr.ph.i88.i.i.i.i.preheader496, label %vector.body328

vector.body328:                                   ; preds = %vector.memcheck313, %vector.body328
  %index329 = phi i64 [ %index.next333, %vector.body328 ], [ 0, %vector.memcheck313 ] ; 4 uses
  %i.kb = shl nuw i64 %index329, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.kb
  %wide.vec330 = load <8 x i16>, ptr %i.kc, align 1, !alias.scope !2203
  %wide.vec330.fr = freeze <8 x i16> %wide.vec330 ; 2 uses
  %i.kd = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec330.fr)
  %4 = bitcast <8 x i16> %i.kd to <4 x i32>
  %5 = and <4 x i32> %4, splat (i32 65535)
  %i.ke = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec330.fr)
  %i.kf = bitcast <8 x i16> %i.ke to <4 x i32>
  %i.kg = lshr <4 x i32> %i.kf, splat (i32 16)
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index329
  store <4 x i32> %5, ptr %i.kh, align 4, !tbaa !94, !alias.scope !2204, !noalias !2205
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index329
  store <4 x i32> %i.kg, ptr %i.ki, align 4, !tbaa !94, !alias.scope !2206, !noalias !2203
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.kj, label %middle.block334, label %vector.body328, !llvm.loop !2145

middle.block334:                                  ; preds = %vector.body328
  br i1 %cmp.n335, label %.lr.ph127.i.i.i.i, label %.lr.ph.i88.i.i.i.i.preheader496

.lr.ph.i88.i.i.i.i.preheader496:                  ; preds = %vector.memcheck313, %.lr.ph.i88.i.i.i.i.preheader, %middle.block334
  %.017.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck313 ], [ 0, %.lr.ph.i88.i.i.i.i.preheader ], [ %n.vec327, %middle.block334 ] ; 6 uses
  %.neg = or disjoint i64 %.017.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i88.i.i.i.i.prol.loopexit, label %.lr.ph.i88.i.i.i.i.prol

.lr.ph.i88.i.i.i.i.prol:                          ; preds = %.lr.ph.i88.i.i.i.i.preheader496
  %i.kk = shl nuw nsw i64 %.017.i.i.i.i.i.ph, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.kk ; 2 uses
  %.val15.i.i.i.i.i.prol = load i16, ptr %i.kl, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %.val.i89.i.i.i.i.prol = load i16, ptr %i.km, align 1
  %i.kn = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.i.i.prol)
  %i.ko = call noundef i16 @llvm.bswap.i16(i16 %.val.i89.i.i.i.i.prol)
  %i.kp = zext i16 %i.kn to i32
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.017.i.i.i.i.i.ph
  store i32 %i.kp, ptr %i.kq, align 4, !tbaa !94
  %i.kr = zext i16 %i.ko to i32
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.017.i.i.i.i.i.ph
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !94
  %i.kt = or disjoint i64 %.017.i.i.i.i.i.ph, 1
  br label %.lr.ph.i88.i.i.i.i.prol.loopexit

.lr.ph.i88.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i88.i.i.i.i.prol, %.lr.ph.i88.i.i.i.i.preheader496
  %.017.i.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.i.ph, %.lr.ph.i88.i.i.i.i.preheader496 ], [ %i.kt, %.lr.ph.i88.i.i.i.i.prol ]
  %i.ku = icmp eq i64 %.sroa.speculated35.i.i, %.neg
  br i1 %i.ku, label %.lr.ph127.i.i.i.i, label %.lr.ph.i88.i.i.i.i

.lr.ph.i88.i.i.i.i:                               ; preds = %.lr.ph.i88.i.i.i.i.prol.loopexit, %.lr.ph.i88.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.lo, %.lr.ph.i88.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i88.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.kv = shl nuw i64 %.017.i.i.i.i.i, 2
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.kv ; 2 uses
  %.val15.i.i.i.i.i = load i16, ptr %i.kw, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %.val.i89.i.i.i.i = load i16, ptr %i.kx, align 1
  %i.ky = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.i.i)
  %i.kz = call noundef i16 @llvm.bswap.i16(i16 %.val.i89.i.i.i.i)
  %i.la = zext i16 %i.ky to i32
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.017.i.i.i.i.i
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !94
  %i.lc = zext i16 %i.kz to i32
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.017.i.i.i.i.i
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !94
  %i.le = add nuw i64 %.017.i.i.i.i.i, 1          ; 3 uses
  %i.lf = shl nuw i64 %i.le, 2
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.lf ; 2 uses
  %.val15.i.i.i.i.i.1 = load i16, ptr %i.lg, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %.val.i89.i.i.i.i.1 = load i16, ptr %i.lh, align 1
  %i.li = call noundef i16 @llvm.bswap.i16(i16 %.val15.i.i.i.i.i.1)
  %i.lj = call noundef i16 @llvm.bswap.i16(i16 %.val.i89.i.i.i.i.1)
  %i.lk = zext i16 %i.li to i32
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.le
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !94
  %i.lm = zext i16 %i.lj to i32
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.le
  store i32 %i.lm, ptr %i.ln, align 4, !tbaa !94
  %i.lo = add nuw i64 %.017.i.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i90.i.i.i.i.1 = icmp eq i64 %i.lo, %.sroa.speculated35.i.i
  br i1 %exitcond.not.i90.i.i.i.i.1, label %.lr.ph127.i.i.i.i, label %.lr.ph.i88.i.i.i.i, !llvm.loop !2146

bb.p:                                             ; preds = %bb.n
  br i1 %.not.i99.i.i.i.i, label %.lr.ph127.i.i.i.i, label %.lr.ph.i92.i.i.i.i.preheader

.lr.ph.i92.i.i.i.i.preheader:                     ; preds = %bb.p
  br i1 %min.iters.check273, label %.lr.ph.i92.i.i.i.i.preheader494, label %vector.memcheck274

vector.memcheck274:                               ; preds = %.lr.ph.i92.i.i.i.i.preheader
  %i.lp = getelementptr i8, ptr %.pre.i.i.i, i64 %i.es ; 2 uses
  %i.lq = getelementptr i8, ptr %i.jx, i64 %i.es  ; 2 uses
  %bound0275 = icmp ult ptr %.pre.i.i.i, %i.lq
  %bound1276 = icmp ult ptr %i.jx, %i.lp
  %found.conflict277 = and i1 %bound0275, %bound1276
  %bound0278 = icmp ult ptr %.pre.i.i.i, %i.ew
  %bound1279 = icmp ult ptr %i.ai, %i.lp
  %found.conflict280 = and i1 %bound0278, %bound1279
  %i.lr = or i1 %found.conflict280, %stride.check281
  %conflict.rdx282 = or i1 %found.conflict277, %i.lr
  %bound0283 = icmp ult ptr %i.jx, %i.ew
  %bound1284 = icmp ult ptr %i.ai, %i.lq
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %conflict.rdx282, %found.conflict285
  br i1 %conflict.rdx286, label %.lr.ph.i92.i.i.i.i.preheader494, label %vector.body289

vector.body289:                                   ; preds = %vector.memcheck274, %vector.body289
  %index290 = phi i64 [ %index.next292, %vector.body289 ], [ 0, %vector.memcheck274 ] ; 4 uses
  %i.ls = shl nuw i64 %index290, 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ls
  %wide.vec = load <8 x i16>, ptr %i.lt, align 1, !alias.scope !2207
  %i.lu = freeze <8 x i16> %wide.vec              ; 2 uses
  %6 = bitcast <8 x i16> %i.lu to <4 x i32>
  %i.lv = bitcast <8 x i16> %i.lu to <4 x i32>
  %7 = and <4 x i32> %i.lv, splat (i32 65535)
  %8 = lshr <4 x i32> %6, splat (i32 16)
  %9 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index290
  store <4 x i32> %7, ptr %9, align 4, !tbaa !94, !alias.scope !2208, !noalias !2209
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %index290
  store <4 x i32> %8, ptr %i.lw, align 4, !tbaa !94, !alias.scope !2210, !noalias !2207
  %index.next292 = add nuw i64 %index290, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.lx, label %middle.block293, label %vector.body289, !llvm.loop !2151

middle.block293:                                  ; preds = %vector.body289
  br i1 %cmp.n294, label %.lr.ph127.i.i.i.i, label %.lr.ph.i92.i.i.i.i.preheader494

.lr.ph.i92.i.i.i.i.preheader494:                  ; preds = %vector.memcheck274, %.lr.ph.i92.i.i.i.i.preheader, %middle.block293
  %.015.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck274 ], [ 0, %.lr.ph.i92.i.i.i.i.preheader ], [ %n.vec288, %middle.block293 ] ; 6 uses
  %.neg511 = or disjoint i64 %.015.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod503.not, label %.lr.ph.i92.i.i.i.i.prol.loopexit, label %.lr.ph.i92.i.i.i.i.prol

.lr.ph.i92.i.i.i.i.prol:                          ; preds = %.lr.ph.i92.i.i.i.i.preheader494
  %i.ly = shl nuw nsw i64 %.015.i.i.i.i.i.ph, 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ly ; 2 uses
  %.val13.i.i.i.i.i.prol = load i16, ptr %i.lz, align 1
  %i.ma = zext i16 %.val13.i.i.i.i.i.prol to i32
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %.val.i93.i.i.i.i.prol = load i16, ptr %i.mb, align 1
  %i.mc = zext i16 %.val.i93.i.i.i.i.prol to i32
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.015.i.i.i.i.i.ph
  store i32 %i.ma, ptr %i.md, align 4, !tbaa !94
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.015.i.i.i.i.i.ph
  store i32 %i.mc, ptr %i.me, align 4, !tbaa !94
  %i.mf = or disjoint i64 %.015.i.i.i.i.i.ph, 1
  br label %.lr.ph.i92.i.i.i.i.prol.loopexit

.lr.ph.i92.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i92.i.i.i.i.prol, %.lr.ph.i92.i.i.i.i.preheader494
  %.015.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.ph, %.lr.ph.i92.i.i.i.i.preheader494 ], [ %i.mf, %.lr.ph.i92.i.i.i.i.prol ]
  %i.mg = icmp eq i64 %.sroa.speculated35.i.i, %.neg511
  br i1 %i.mg, label %.lr.ph127.i.i.i.i, label %.lr.ph.i92.i.i.i.i

.lr.ph.i92.i.i.i.i:                               ; preds = %.lr.ph.i92.i.i.i.i.prol.loopexit, %.lr.ph.i92.i.i.i.i
  %.015.i.i.i.i.i = phi i64 [ %i.mw, %.lr.ph.i92.i.i.i.i ], [ %.015.i.i.i.i.i.unr, %.lr.ph.i92.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.mh = shl nuw i64 %.015.i.i.i.i.i, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.mh ; 2 uses
  %.val13.i.i.i.i.i = load i16, ptr %i.mi, align 1
  %i.mj = zext i16 %.val13.i.i.i.i.i to i32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %.val.i93.i.i.i.i = load i16, ptr %i.mk, align 1
  %i.ml = zext i16 %.val.i93.i.i.i.i to i32
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.015.i.i.i.i.i
  store i32 %i.mj, ptr %i.mm, align 4, !tbaa !94
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.015.i.i.i.i.i
  store i32 %i.ml, ptr %i.mn, align 4, !tbaa !94
  %i.mo = add nuw i64 %.015.i.i.i.i.i, 1          ; 3 uses
  %i.mp = shl nuw i64 %i.mo, 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.mp ; 2 uses
  %.val13.i.i.i.i.i.1 = load i16, ptr %i.mq, align 1
  %i.mr = zext i16 %.val13.i.i.i.i.i.1 to i32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %.val.i93.i.i.i.i.1 = load i16, ptr %i.ms, align 1
  %i.mt = zext i16 %.val.i93.i.i.i.i.1 to i32
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %i.mo
  store i32 %i.mr, ptr %i.mu, align 4, !tbaa !94
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.mo
  store i32 %i.mt, ptr %i.mv, align 4, !tbaa !94
  %i.mw = add nuw i64 %.015.i.i.i.i.i, 2          ; 2 uses
  %exitcond.not.i94.i.i.i.i.1 = icmp eq i64 %i.mw, %.sroa.speculated35.i.i
  br i1 %exitcond.not.i94.i.i.i.i.1, label %.lr.ph127.i.i.i.i, label %.lr.ph.i92.i.i.i.i, !llvm.loop !2152

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.mx = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 12 uses
  %i.my = load ptr, ptr %i.dy, align 16, !tbaa !101 ; 12 uses
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i99.i.i.i.i, label %.lr.ph127.i.i.i.i, label %.lr.ph.i96.i.i.i.i.preheader

.lr.ph.i96.i.i.i.i.preheader:                     ; preds = %bb.r
  br i1 %min.iters.check429, label %.lr.ph.i96.i.i.i.i.preheader500, label %vector.memcheck430

vector.memcheck430:                               ; preds = %.lr.ph.i96.i.i.i.i.preheader
  %i.mz = getelementptr i8, ptr %i.mx, i64 %i.eb  ; 3 uses
  %i.na = getelementptr i8, ptr %i.my, i64 %i.eb  ; 3 uses
  %i.nb = getelementptr i8, ptr %.pre.i.i.i, i64 %i.eb ; 3 uses
  %bound0431 = icmp ult ptr %i.mx, %i.na
  %bound1432 = icmp ult ptr %i.my, %i.mz
  %found.conflict433 = and i1 %bound0431, %bound1432
  %bound0434 = icmp ult ptr %i.mx, %i.nb
  %bound1435 = icmp ult ptr %.pre.i.i.i, %i.mz
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %found.conflict433, %found.conflict436
  %bound0438 = icmp ult ptr %i.mx, %i.eg
  %bound1439 = icmp ult ptr %i.ai, %i.mz
  %found.conflict440 = and i1 %bound0438, %bound1439
  %i.nc = or i1 %found.conflict440, %stride.check441
  %conflict.rdx442 = or i1 %conflict.rdx437, %i.nc
  %bound0443 = icmp ult ptr %i.my, %i.nb
  %bound1444 = icmp ult ptr %.pre.i.i.i, %i.na
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %i.my, %i.eg
  %bound1448 = icmp ult ptr %i.ai, %i.na
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %.pre.i.i.i, %i.eg
  %bound1452 = icmp ult ptr %i.ai, %i.nb
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  br i1 %conflict.rdx454, label %.lr.ph.i96.i.i.i.i.preheader500, label %vector.body457

vector.body457:                                   ; preds = %vector.memcheck430, %vector.body457
  %index458 = phi i64 [ %index.next459, %vector.body457 ], [ 0, %vector.memcheck430 ] ; 8 uses
  %i.nd = mul i64 %index458, 6
  %i.ne = mul i64 %index458, 6
  %i.nf = mul i64 %index458, 6
  %i.ng = mul i64 %index458, 6
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.nd ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ne ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 6
  %i.nk = getelementptr i8, ptr %i.fx, i64 %i.nf  ; 3 uses
  %i.nl = getelementptr i8, ptr %i.nk, i64 12
  %i.nm = getelementptr i8, ptr %i.fx, i64 %i.ng  ; 3 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 18
  %i.no = load i16, ptr %i.nh, align 1, !alias.scope !2211
  %i.np = load i16, ptr %i.nj, align 1, !alias.scope !2211
  %i.nq = load i16, ptr %i.nl, align 1, !alias.scope !2211
  %i.nr = load i16, ptr %i.nn, align 1, !alias.scope !2211
  %i.ns = insertelement <4 x i16> poison, i16 %i.no, i64 0
  %i.nt = insertelement <4 x i16> %i.ns, i16 %i.np, i64 1
  %i.nu = insertelement <4 x i16> %i.nt, i16 %i.nq, i64 2
  %i.nv = insertelement <4 x i16> %i.nu, i16 %i.nr, i64 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.ny = getelementptr i8, ptr %i.nk, i64 14
  %i.nz = getelementptr i8, ptr %i.nm, i64 20
  %i.oa = load i16, ptr %i.nw, align 1, !alias.scope !2211
  %i.ob = load i16, ptr %i.nx, align 1, !alias.scope !2211
  %i.oc = load i16, ptr %i.ny, align 1, !alias.scope !2211
  %i.od = load i16, ptr %i.nz, align 1, !alias.scope !2211
  %i.oe = insertelement <4 x i16> poison, i16 %i.oa, i64 0
  %i.of = insertelement <4 x i16> %i.oe, i16 %i.ob, i64 1
  %i.og = insertelement <4 x i16> %i.of, i16 %i.oc, i64 2
  %i.oh = insertelement <4 x i16> %i.og, i16 %i.od, i64 3
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ni, i64 10
  %i.ok = getelementptr i8, ptr %i.nk, i64 16
  %i.ol = getelementptr i8, ptr %i.nm, i64 22
  %i.om = load i16, ptr %i.oi, align 1, !alias.scope !2211
  %i.on = load i16, ptr %i.oj, align 1, !alias.scope !2211
  %i.oo = load i16, ptr %i.ok, align 1, !alias.scope !2211
  %i.op = load i16, ptr %i.ol, align 1, !alias.scope !2211
  %i.oq = insertelement <4 x i16> poison, i16 %i.om, i64 0
  %i.or = insertelement <4 x i16> %i.oq, i16 %i.on, i64 1
  %i.os = insertelement <4 x i16> %i.or, i16 %i.oo, i64 2
  %i.ot = insertelement <4 x i16> %i.os, i16 %i.op, i64 3
  %i.ou = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.nv)
  %i.ov = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.oh)
  %i.ow = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ot)
  %i.ox = zext <4 x i16> %i.ou to <4 x i32>
  %i.oy = zext <4 x i16> %i.ov to <4 x i32>
  %i.oz = zext <4 x i16> %i.ow to <4 x i32>       ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index458
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index458
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %index458
  %i.pd = sub nsw <4 x i32> %i.ox, %i.oz          ; 2 uses
  store <4 x i32> %i.pd, ptr %i.pb, align 4, !tbaa !94, !alias.scope !2212, !noalias !2213
  %i.pe = ashr <4 x i32> %i.pd, splat (i32 1)
  %i.pf = add nsw <4 x i32> %i.pe, %i.oz          ; 2 uses
  %i.pg = sub nsw <4 x i32> %i.oy, %i.pf          ; 2 uses
  store <4 x i32> %i.pg, ptr %i.pc, align 4, !tbaa !94, !alias.scope !2214, !noalias !2215
  %i.ph = ashr <4 x i32> %i.pg, splat (i32 1)
  %i.pi = add nsw <4 x i32> %i.ph, %i.pf
  store <4 x i32> %i.pi, ptr %i.pa, align 4, !tbaa !94, !alias.scope !2216, !noalias !2211
  %index.next459 = add nuw i64 %index458, 4       ; 2 uses
  %i.pj = icmp eq i64 %index.next459, %n.vec456
  br i1 %i.pj, label %middle.block460, label %vector.body457, !llvm.loop !2158

middle.block460:                                  ; preds = %vector.body457
  br i1 %cmp.n461, label %.lr.ph127.i.i.i.i, label %.lr.ph.i96.i.i.i.i.preheader500

.lr.ph.i96.i.i.i.i.preheader500:                  ; preds = %vector.memcheck430, %.lr.ph.i96.i.i.i.i.preheader, %middle.block460
  %.025.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck430 ], [ 0, %.lr.ph.i96.i.i.i.i.preheader ], [ %n.vec456, %middle.block460 ]
  br label %.lr.ph.i96.i.i.i.i

.lr.ph.i96.i.i.i.i:                               ; preds = %.lr.ph.i96.i.i.i.i.preheader500, %.lr.ph.i96.i.i.i.i
  %.025.i.i.i.i.i = phi i64 [ %i.qd, %.lr.ph.i96.i.i.i.i ], [ %.025.i.i.i.i.i.ph, %.lr.ph.i96.i.i.i.i.preheader500 ] ; 5 uses
  %i.pk = mul i64 %.025.i.i.i.i.i, 6
  %i.pl = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.pk ; 3 uses
  %.val23.i.i.i.i.i = load i16, ptr %i.pl, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %.val21.i.i.i.i.i = load i16, ptr %i.pm, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %.val.i97.i.i.i.i = load i16, ptr %i.pn, align 1
  %i.po = call noundef i16 @llvm.bswap.i16(i16 %.val23.i.i.i.i.i)
  %i.pp = call noundef i16 @llvm.bswap.i16(i16 %.val21.i.i.i.i.i)
  %i.pq = call noundef i16 @llvm.bswap.i16(i16 %.val.i97.i.i.i.i)
  %i.pr = zext i16 %i.po to i32
  %i.ps = zext i16 %i.pp to i32
  %i.pt = zext i16 %i.pq to i32                   ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %.025.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.025.i.i.i.i.i
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %.025.i.i.i.i.i
  %i.px = sub nsw i32 %i.pr, %i.pt                ; 2 uses
  store i32 %i.px, ptr %i.pv, align 4, !tbaa !94
  %i.py = ashr i32 %i.px, 1
  %i.pz = add nsw i32 %i.py, %i.pt                ; 2 uses
  %i.qa = sub nsw i32 %i.ps, %i.pz                ; 2 uses
  store i32 %i.qa, ptr %i.pw, align 4, !tbaa !94
end_hunk_5
