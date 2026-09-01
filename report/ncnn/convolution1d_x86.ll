Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNK4ncnn17Convolution1D_x8613forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.0241486.i = phi ptr [ %i.er, %.lr.ph489.i ], [ %i.op, %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i ] ; 2 uses
  %.0242485.i = phi ptr [ %i.eo, %.lr.ph489.i ], [ %i.oo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i ] ; 2 uses
  br i1 %.not249.i, label %_ZN4ncnn3MatD2Ev.exit250.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fn = load <2 x float>, ptr %i.es, align 4, !tbaa !53
  br label %_ZN4ncnn3MatD2Ev.exit250.i

_ZN4ncnn3MatD2Ev.exit250.i:                       ; preds = %bb.h, %bb.g
  %i.fo = phi <2 x float> [ %i.fn, %bb.h ], [ zeroinitializer, %bb.g ]
  br i1 %i.da, label %.lr.ph427.i, label %._crit_edge.i

.lr.ph427.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit250.i
  %i.fp = trunc nuw nsw i64 %indvars.iv639.i to i32
  %.reass492.i = mul i32 %factor.op.mul491.i, %i.fp
  %i.fq = sext i32 %.reass492.i to i64
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.fq ; 2 uses
  %i.fr = load i32, ptr %i.a, align 4             ; 5 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  %i.ft = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fu = shl nsw i32 %i.ft, 2
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i32, ptr %i.e, align 4             ; 3 uses
  %i.fx = mul nsw i32 %i.fw, 3
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i32 %i.fw, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = sext i32 %i.fw to i64
  %i.gc = sext i32 %i.ft to i64
  %i.gd = add i32 %i.fr, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 4                ; 2 uses
  br i1 %i.db, label %.preheader403.i.us, label %.lr.ph427.i.split

.preheader403.i.us:                               ; preds = %.lr.ph427.i, %.loopexit402.i.us
  %.0218426.i.us = phi i32 [ %i.hf, %.loopexit402.i.us ], [ 0, %.lr.ph427.i ] ; 2 uses
  %.0221425.i.us = phi ptr [ %.4225.i.us, %.loopexit402.i.us ], [ %i.ez, %.lr.ph427.i ] ; 3 uses
  %.0366424.i.us = phi <4 x float> [ %.4370.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i ] ; 2 uses
  %.0371423.i.us = phi <4 x float> [ %.4375.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i ] ; 2 uses
  br i1 %i.fs, label %.lr.ph.i.us.preheader, label %.loopexit402.i.us

.lr.ph.i.us.preheader:                            ; preds = %.preheader403.i.us
  %i.gg = lshr exact i32 %.0218426.i.us, 2
  %i.gh = zext nneg i32 %i.gg to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.gh
  %gep.i.us = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i.us
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.0214410.i.us = phi i32 [ %i.he, %.lr.ph.i.us ], [ 0, %.lr.ph.i.us.preheader ]
  %.0215409.i.us = phi ptr [ %i.hc, %.lr.ph.i.us ], [ %gep.i.us, %.lr.ph.i.us.preheader ] ; 2 uses
  %.1222408.i.us = phi ptr [ %i.hd, %.lr.ph.i.us ], [ %.0221425.i.us, %.lr.ph.i.us.preheader ] ; 3 uses
  %.1367407.i.us = phi <4 x float> [ %i.gz, %.lr.ph.i.us ], [ %.0366424.i.us, %.lr.ph.i.us.preheader ]
  %.1372406.i.us = phi <4 x float> [ %i.hb, %.lr.ph.i.us ], [ %.0371423.i.us, %.lr.ph.i.us.preheader ]
  %i.gi = load i64, ptr %.0215409.i.us, align 1, !tbaa !227
  %i.gj = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %i.gk = bitcast <2 x i64> %i.gj to <8 x i16>
  %i.gl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gm = bitcast <8 x i16> %i.gl to <4 x float>  ; 2 uses
  %i.gn = load i64, ptr %.1222408.i.us, align 1, !tbaa !227
  %i.go = insertelement <2 x i64> poison, i64 %i.gn, i64 0
  %i.gp = bitcast <2 x i64> %i.go to <8 x i16>
  %i.gq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gr = bitcast <8 x i16> %i.gq to <4 x float>
  %i.gs = getelementptr inbounds nuw i8, ptr %.1222408.i.us, i64 8
  %i.gt = load i64, ptr %i.gs, align 1, !tbaa !227
  %i.gu = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %i.gv = bitcast <2 x i64> %i.gu to <8 x i16>
  %i.gw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gx = bitcast <8 x i16> %i.gw to <4 x float>
  %i.gy = fmul fast <4 x float> %i.gr, %i.gm
  %i.gz = fadd fast <4 x float> %i.gy, %.1367407.i.us ; 2 uses
  %i.ha = fmul fast <4 x float> %i.gx, %i.gm
  %i.hb = fadd fast <4 x float> %i.ha, %.1372406.i.us ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %.0215409.i.us, i64 %i.fv
  %i.hd = getelementptr inbounds nuw i8, ptr %.1222408.i.us, i64 16
  %i.he = add nuw nsw i32 %.0214410.i.us, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.he, %i.fr
  br i1 %exitcond.not.i.us, label %.loopexit404.loopexit.i.us, label %.lr.ph.i.us, !llvm.loop !296

.loopexit404.loopexit.i.us:                       ; preds = %.lr.ph.i.us
  %scevgep.i.us = getelementptr i8, ptr %.0221425.i.us, i64 16
  %scevgep625.i.us = getelementptr i8, ptr %scevgep.i.us, i64 %i.gf
  br label %.loopexit402.i.us

.loopexit402.i.us:                                ; preds = %.loopexit404.loopexit.i.us, %.preheader403.i.us
  %.4375.i.us = phi nsz <4 x float> [ %.0371423.i.us, %.preheader403.i.us ], [ %i.hb, %.loopexit404.loopexit.i.us ] ; 2 uses
  %.4370.i.us = phi nsz <4 x float> [ %.0366424.i.us, %.preheader403.i.us ], [ %i.gz, %.loopexit404.loopexit.i.us ] ; 2 uses
  %.4225.i.us = phi ptr [ %.0221425.i.us, %.preheader403.i.us ], [ %scevgep625.i.us, %.loopexit404.loopexit.i.us ] ; 2 uses
  %i.hf = add nuw nsw i32 %.0218426.i.us, 4       ; 2 uses
  %i.hg = or disjoint i32 %i.hf, 3
  %i.hh = icmp slt i32 %i.hg, %i.cr
  br i1 %i.hh, label %.preheader403.i.us, label %._crit_edge.i, !llvm.loop !297

.lr.ph427.i.split:                                ; preds = %.lr.ph427.i
  %i.hi = icmp slt i32 %i.fr, 1
  %brmerge.i = select i1 %i.dc, i1 true, i1 %i.hi
  br i1 %brmerge.i, label %._crit_edge.i, label %.loopexit404.i

.loopexit404.i:                                   ; preds = %.lr.ph427.i.split, %.loopexit402.loopexit.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit402.loopexit.i ], [ 0, %.lr.ph427.i.split ] ; 2 uses
  %.0221425.i = phi ptr [ %scevgep627.i, %.loopexit402.loopexit.i ], [ %i.ez, %.lr.ph427.i.split ] ; 2 uses
  %.0366424.i = phi <4 x float> [ %i.ij, %.loopexit402.loopexit.i ], [ zeroinitializer, %.lr.ph427.i.split ]
  %.0371423.i = phi <4 x float> [ %i.il, %.loopexit402.loopexit.i ], [ zeroinitializer, %.lr.ph427.i.split ]
  %.reass.i = mul i64 %factor.op.mul.i, %indvars.iv
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass.i
  br label %.lr.ph419.i

.lr.ph419.i:                                      ; preds = %.loopexit404.i, %.lr.ph419.i
  %.0213418.i = phi i32 [ %i.io, %.lr.ph419.i ], [ 0, %.loopexit404.i ]
  %.2217417.i = phi ptr [ %i.im, %.lr.ph419.i ], [ %gep.i, %.loopexit404.i ] ; 5 uses
  %.3224416.i = phi ptr [ %i.in, %.lr.ph419.i ], [ %.0221425.i, %.loopexit404.i ] ; 3 uses
  %.3369415.i = phi <4 x float> [ %i.ij, %.lr.ph419.i ], [ %.0366424.i, %.loopexit404.i ]
  %.3374414.i = phi <4 x float> [ %i.il, %.lr.ph419.i ], [ %.0371423.i, %.loopexit404.i ]
  %i.hj = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.fy
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !256
  %i.hl = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.ga
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !256
  %i.hn = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.gb
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !256
  %i.hp = load i16, ptr %.2217417.i, align 2, !tbaa !256
  %i.hq = insertelement <4 x i16> poison, i16 %i.hp, i64 0
  %i.hr = insertelement <4 x i16> %i.hq, i16 %i.ho, i64 1
  %i.hs = insertelement <4 x i16> %i.hr, i16 %i.hm, i64 2
  %i.ht = insertelement <4 x i16> %i.hs, i16 %i.hk, i64 3
  %i.hu = zext <4 x i16> %i.ht to <4 x i32>
  %i.hv = shl nuw <4 x i32> %i.hu, splat (i32 16)
  %i.hw = bitcast <4 x i32> %i.hv to <4 x float>  ; 2 uses
  %i.hx = load i64, ptr %.3224416.i, align 1, !tbaa !227
  %i.hy = insertelement <2 x i64> poison, i64 %i.hx, i64 0
  %i.hz = bitcast <2 x i64> %i.hy to <8 x i16>
  %i.ia = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ib = bitcast <8 x i16> %i.ia to <4 x float>
  %i.ic = getelementptr inbounds nuw i8, ptr %.3224416.i, i64 8
  %i.id = load i64, ptr %i.ic, align 1, !tbaa !227
  %i.ie = insertelement <2 x i64> poison, i64 %i.id, i64 0
  %i.if = bitcast <2 x i64> %i.ie to <8 x i16>
  %i.ig = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.if, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ih = bitcast <8 x i16> %i.ig to <4 x float>
  %i.ii = fmul fast <4 x float> %i.hw, %i.ib
  %i.ij = fadd fast <4 x float> %i.ii, %.3369415.i ; 3 uses
  %i.ik = fmul fast <4 x float> %i.hw, %i.ih
  %i.il = fadd fast <4 x float> %i.ik, %.3374414.i ; 3 uses
  %i.im = getelementptr inbounds [2 x i8], ptr %.2217417.i, i64 %i.gc
  %i.in = getelementptr inbounds nuw i8, ptr %.3224416.i, i64 16
  %i.io = add nuw nsw i32 %.0213418.i, 1          ; 2 uses
  %exitcond628.not.i = icmp eq i32 %i.io, %i.fr
  br i1 %exitcond628.not.i, label %.loopexit402.loopexit.i, label %.lr.ph419.i, !llvm.loop !298

.loopexit402.loopexit.i:                          ; preds = %.lr.ph419.i
  %scevgep626.i = getelementptr i8, ptr %.0221425.i, i64 16
  %scevgep627.i = getelementptr i8, ptr %scevgep626.i, i64 %i.gf ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.ip, label %.loopexit404.i, label %._crit_edge.i, !llvm.loop !297

._crit_edge.i:                                    ; preds = %.loopexit402.loopexit.i, %.loopexit402.i.us, %.lr.ph427.i.split, %_ZN4ncnn3MatD2Ev.exit250.i
  %.0371.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4375.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i.split ], [ %i.il, %.loopexit402.loopexit.i ] ; 2 uses
  %.0366.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4370.i.us, %.loopexit402.i.us ], [ zeroinitializer, %.lr.ph427.i.split ], [ %i.ij, %.loopexit402.loopexit.i ] ; 2 uses
  %.0221.lcssa.i = phi ptr [ %i.ez, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %.4225.i.us, %.loopexit402.i.us ], [ %i.ez, %.lr.ph427.i.split ], [ %scevgep627.i, %.loopexit402.loopexit.i ] ; 2 uses
  %.0218.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit250.i ], [ %i.dj, %.loopexit402.i.us ], [ %i.dj, %.lr.ph427.i.split ], [ %i.dj, %.loopexit402.loopexit.i ] ; 3 uses
  %i.iq = shufflevector <4 x float> %.0366.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ir = fadd fast <4 x float> %i.iq, %.0366.lcssa.i ; 2 uses
  %i.is = shufflevector <4 x float> %.0371.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.it = fadd fast <4 x float> %i.is, %.0371.lcssa.i ; 2 uses
  %i.iu = shufflevector <4 x float> %i.ir, <4 x float> %i.it, <2 x i32> <i32 1, i32 5>
  %i.iv = fadd fast <2 x float> %i.iu, %i.fo
  %i.iw = shufflevector <4 x float> %i.ir, <4 x float> %i.it, <2 x i32> <i32 0, i32 4>
  %i.ix = fadd fast <2 x float> %i.iv, %i.iw      ; 3 uses
  %i.iy = or disjoint i32 %.0218.lcssa.i, 1
  %i.iz = icmp slt i32 %i.iy, %i.cr
  br i1 %i.iz, label %.lr.ph448.i, label %.preheader405.i

.lr.ph448.i:                                      ; preds = %._crit_edge.i
  %i.ja = mul nsw i64 %indvars.iv639.i, %i.fh
  %invariant.gep455.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.ja
  %i.jb = load i32, ptr %i.e, align 4
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i32, ptr %i.b, align 4
  %i.je = sext i32 %i.jd to i64
  br i1 %i.fc, label %.lr.ph438.us.preheader.i, label %._crit_edge476.i

.lr.ph438.us.preheader.i:                         ; preds = %.lr.ph448.i
  %i.jf = zext i32 %.0218.lcssa.i to i64
  br label %.lr.ph438.us.i

.lr.ph438.us.i:                                   ; preds = %._crit_edge439.us.i, %.lr.ph438.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.jf, %.lr.ph438.us.preheader.i ], [ %indvars.iv.next.i, %._crit_edge439.us.i ] ; 2 uses
  %.5226445.us.i = phi ptr [ %.0221.lcssa.i, %.lr.ph438.us.preheader.i ], [ %scevgep630.i, %._crit_edge439.us.i ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.ix, %.lr.ph438.us.preheader.i ], [ %i.jz, %._crit_edge439.us.i ]
  %.reass454.us.i = mul i64 %factor.op.mul.i, %indvars.iv.i
  %gep456.us.i = getelementptr i8, ptr %invariant.gep455.i, i64 %.reass454.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph438.us.i
  %.0211436.us.i = phi i32 [ 0, %.lr.ph438.us.i ], [ %i.kc, %bb.i ]
  %.0212435.us.i = phi ptr [ %gep456.us.i, %.lr.ph438.us.i ], [ %i.ka, %bb.i ] ; 3 uses
  %.6227434.us.i = phi ptr [ %.5226445.us.i, %.lr.ph438.us.i ], [ %i.kb, %bb.i ] ; 3 uses
  %i.jh = phi <2 x float> [ %i.jg, %.lr.ph438.us.i ], [ %i.jz, %bb.i ]
  %i.ji = load i16, ptr %.0212435.us.i, align 2, !tbaa !256
  %i.jj = getelementptr inbounds [2 x i8], ptr %.0212435.us.i, i64 %i.jc
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !256
  %i.jl = getelementptr inbounds nuw i8, ptr %.6227434.us.i, i64 4
  %i.jm = load <2 x i16>, ptr %.6227434.us.i, align 2, !tbaa !256
  %i.jn = zext <2 x i16> %i.jm to <2 x i32>
  %i.jo = shl nuw <2 x i32> %i.jn, splat (i32 16)
  %i.jp = bitcast <2 x i32> %i.jo to <2 x float>
  %5 = insertelement <2 x i16> poison, i16 %i.jk, i64 0
  %6 = insertelement <2 x i16> %5, i16 %i.ji, i64 1
  %7 = zext <2 x i16> %6 to <2 x i32>
  %8 = shl nuw <2 x i32> %7, splat (i32 16)
  %i.jq = bitcast <2 x i32> %8 to <2 x float>     ; 2 uses
  %9 = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jr = fmul fast <2 x float> %9, %i.jp
  %i.js = fadd fast <2 x float> %i.jh, %i.jr
  %i.jt = load <2 x i16>, ptr %i.jl, align 2, !tbaa !256
  %i.ju = zext <2 x i16> %i.jt to <2 x i32>
  %i.jv = shl nuw <2 x i32> %i.ju, splat (i32 16)
  %i.jw = bitcast <2 x i32> %i.jv to <2 x float>
  %i.jx = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul fast <2 x float> %i.jx, %i.jw
  %i.jz = fadd fast <2 x float> %i.jy, %i.js      ; 3 uses
  %i.ka = getelementptr inbounds [2 x i8], ptr %.0212435.us.i, i64 %i.je
  %i.kb = getelementptr inbounds nuw i8, ptr %.6227434.us.i, i64 8
  %i.kc = add nuw nsw i32 %.0211436.us.i, 1       ; 2 uses
  %exitcond631.not.i = icmp eq i32 %i.kc, %i.fb
  br i1 %exitcond631.not.i, label %._crit_edge439.us.i, label %bb.i, !llvm.loop !299

._crit_edge439.us.i:                              ; preds = %bb.i
  %scevgep629.i = getelementptr i8, ptr %.5226445.us.i, i64 8
  %scevgep630.i = getelementptr i8, ptr %scevgep629.i, i64 %i.ff ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.kd = trunc i64 %indvars.iv.next.i to i32     ; 2 uses
  %i.ke = or i32 %i.kd, 1
  %i.kf = icmp slt i32 %i.ke, %i.cr
  br i1 %i.kf, label %.lr.ph438.us.i, label %.preheader405.i, !llvm.loop !300

.preheader405.i:                                  ; preds = %._crit_edge439.us.i, %._crit_edge.i
  %.5226.lcssa.i = phi ptr [ %.0221.lcssa.i, %._crit_edge.i ], [ %scevgep630.i, %._crit_edge439.us.i ]
  %.1219.lcssa.i = phi i32 [ %.0218.lcssa.i, %._crit_edge.i ], [ %i.kd, %._crit_edge439.us.i ] ; 2 uses
  %i.kg = phi <2 x float> [ %i.ix, %._crit_edge.i ], [ %i.jz, %._crit_edge439.us.i ] ; 3 uses
  %i.kh = icmp slt i32 %.1219.lcssa.i, %i.cr
  br i1 %i.kh, label %.lr.ph475.i, label %._crit_edge476.i

.lr.ph475.i:                                      ; preds = %.preheader405.i
  %i.ki = mul nsw i64 %indvars.iv639.i, %i.fh
  %invariant.gep481.i = getelementptr [2 x i8], ptr %i.fi, i64 %i.ki
  %i.kj = load i32, ptr %i.b, align 4
  %i.kk = sext i32 %i.kj to i64                   ; 2 uses
  br i1 %i.fc, label %.lr.ph466.us.preheader.i, label %._crit_edge476.i

.lr.ph466.us.preheader.i:                         ; preds = %.lr.ph475.i
  %i.kl = zext i32 %.1219.lcssa.i to i64
  br label %.lr.ph466.us.i

.lr.ph466.us.i:                                   ; preds = %._crit_edge467.us.i, %.lr.ph466.us.preheader.i
  %indvars.iv636.i = phi i64 [ %i.kl, %.lr.ph466.us.preheader.i ], [ %indvars.iv.next637.i, %._crit_edge467.us.i ] ; 2 uses
  %.7228473.us.i = phi ptr [ %.5226.lcssa.i, %.lr.ph466.us.preheader.i ], [ %scevgep634.i, %._crit_edge467.us.i ] ; 3 uses
  %i.km = phi <2 x float> [ %i.kg, %.lr.ph466.us.preheader.i ], [ %.lcssa183, %._crit_edge467.us.i ] ; 2 uses
  %.reass480.us.i = mul i64 %factor.op.mul.i, %indvars.iv636.i
  %gep482.us.i = getelementptr i8, ptr %invariant.gep481.i, i64 %.reass480.us.i ; 2 uses
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph466.us.i.new

.lr.ph466.us.i.new:                               ; preds = %.lr.ph466.us.i, %.lr.ph466.us.i.new
  %.0210463.us.i = phi ptr [ %i.lo, %.lr.ph466.us.i.new ], [ %gep482.us.i, %.lr.ph466.us.i ] ; 2 uses
  %.8229462.us.i = phi ptr [ %i.lp, %.lr.ph466.us.i.new ], [ %.7228473.us.i, %.lr.ph466.us.i ] ; 3 uses
  %i.kn = phi <2 x float> [ %i.ln, %.lr.ph466.us.i.new ], [ %i.km, %.lr.ph466.us.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph466.us.i.new ], [ 0, %.lr.ph466.us.i ]
  %i.ko = load i16, ptr %.0210463.us.i, align 2, !tbaa !256
  %i.kp = zext i16 %i.ko to i32
  %i.kq = shl nuw i32 %i.kp, 16
  %i.kr = load <2 x i16>, ptr %.8229462.us.i, align 2, !tbaa !256
  %i.ks = zext <2 x i16> %i.kr to <2 x i32>
  %i.kt = shl nuw <2 x i32> %i.ks, splat (i32 16)
  %i.ku = bitcast <2 x i32> %i.kt to <2 x float>
  %i.kv = insertelement <2 x i32> poison, i32 %i.kq, i64 0
  %i.kw = bitcast <2 x i32> %i.kv to <2 x float>
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = fmul fast <2 x float> %i.kx, %i.ku
  %i.kz = fadd fast <2 x float> %i.ky, %i.kn
  %i.la = getelementptr inbounds [2 x i8], ptr %.0210463.us.i, i64 %i.kk ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.8229462.us.i, i64 4
  %i.lc = load i16, ptr %i.la, align 2, !tbaa !256
  %i.ld = zext i16 %i.lc to i32
  %i.le = shl nuw i32 %i.ld, 16
  %i.lf = load <2 x i16>, ptr %i.lb, align 2, !tbaa !256
  %i.lg = zext <2 x i16> %i.lf to <2 x i32>
  %i.lh = shl nuw <2 x i32> %i.lg, splat (i32 16)
  %i.li = bitcast <2 x i32> %i.lh to <2 x float>
  %i.lj = insertelement <2 x i32> poison, i32 %i.le, i64 0
  %i.lk = bitcast <2 x i32> %i.lj to <2 x float>
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul fast <2 x float> %i.ll, %i.li
  %i.ln = fadd fast <2 x float> %i.lm, %i.kz      ; 3 uses
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.la, i64 %i.kk ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.8229462.us.i, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge467.us.i.unr-lcssa, label %.lr.ph466.us.i.new, !llvm.loop !301

._crit_edge467.us.i.unr-lcssa:                    ; preds = %.lr.ph466.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge467.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge467.us.i.unr-lcssa, %.lr.ph466.us.i
  %.0210463.us.i.epil.init = phi ptr [ %gep482.us.i, %.lr.ph466.us.i ], [ %i.lo, %._crit_edge467.us.i.unr-lcssa ]
  %.8229462.us.i.epil.init = phi ptr [ %.7228473.us.i, %.lr.ph466.us.i ], [ %i.lp, %._crit_edge467.us.i.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.km, %.lr.ph466.us.i ], [ %i.ln, %._crit_edge467.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod185)
  %i.lq = load i16, ptr %.0210463.us.i.epil.init, align 2, !tbaa !256
  %i.lr = zext i16 %i.lq to i32
  %i.ls = shl nuw i32 %i.lr, 16
  %i.lt = load <2 x i16>, ptr %.8229462.us.i.epil.init, align 2, !tbaa !256
  %i.lu = zext <2 x i16> %i.lt to <2 x i32>
  %i.lv = shl nuw <2 x i32> %i.lu, splat (i32 16)
  %i.lw = bitcast <2 x i32> %i.lv to <2 x float>
  %i.lx = insertelement <2 x i32> poison, i32 %i.ls, i64 0
  %i.ly = bitcast <2 x i32> %i.lx to <2 x float>
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul fast <2 x float> %i.lz, %i.lw
  %i.mb = fadd fast <2 x float> %i.ma, %.epil.init
  br label %._crit_edge467.us.i

._crit_edge467.us.i:                              ; preds = %._crit_edge467.us.i.unr-lcssa, %.epil.preheader
  %.lcssa183 = phi <2 x float> [ %i.ln, %._crit_edge467.us.i.unr-lcssa ], [ %i.mb, %.epil.preheader ] ; 2 uses
  %scevgep633.i = getelementptr i8, ptr %.7228473.us.i, i64 4
  %scevgep634.i = getelementptr i8, ptr %scevgep633.i, i64 %i.fg
  %indvars.iv.next637.i = add nuw nsw i64 %indvars.iv636.i, 1 ; 2 uses
  %i.mc = trunc nuw i64 %indvars.iv.next637.i to i32
  %i.md = icmp sgt i32 %i.cr, %i.mc
  br i1 %i.md, label %.lr.ph466.us.i, label %._crit_edge476.i, !llvm.loop !302

._crit_edge476.i:                                 ; preds = %._crit_edge467.us.i, %.lr.ph448.i, %.lr.ph475.i, %.preheader405.i
  %i.me = phi <2 x float> [ %i.kg, %.preheader405.i ], [ %i.kg, %.lr.ph475.i ], [ %i.ix, %.lr.ph448.i ], [ %.lcssa183, %._crit_edge467.us.i ] ; 12 uses
  switch i32 %i.dd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread384.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread387.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread390.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread393.i
    i32 6, label %bb.j
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread384.i: ; preds = %._crit_edge476.i
  %i.mf = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.me, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread387.i: ; preds = %._crit_edge476.i
  %i.mg = load ptr, ptr %i.bp, align 8, !tbaa !18
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !53
  %i.mi = fcmp fast ogt <2 x float> %i.me, zeroinitializer
  %i.mj = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = select <2 x i1> %i.mi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mk
  %i.mm = fmul fast <2 x float> %i.ml, %i.me
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i: ; preds = %._crit_edge476.i
  %i.mn = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !53 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !53 ; 4 uses
  %i.mr = extractelement <2 x float> %i.me, i64 0
  %.0355.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.mr, float %i.mo) ; 2 uses
  %i.ms = fcmp fast ogt float %.0355.i, %i.mq
  %.1356383.i = select i1 %i.ms, float %i.mq, float %.0355.i
  %i.mt = extractelement <2 x float> %i.me, i64 1
  %.0357.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.mt, float %i.mo) ; 2 uses
  %i.mu = fcmp fast ogt float %.0357.i, %i.mq
  %i.mv = insertelement <2 x float> poison, float %.1356383.i, i64 0
  %i.mw = insertelement <2 x float> %i.mv, float %.0357.i, i64 1 ; 2 uses
  br i1 %i.mu, label %bb.m, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread390.i: ; preds = %._crit_edge476.i
  %i.mx = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.me, <2 x float> splat (float f0x42B0C0A5))
  %i.my = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mx, <2 x float> splat (float f0xC2B0C0A5))
  %i.mz = fneg fast <2 x float> %i.my
  %i.na = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.mz)
  %i.nb = fadd fast <2 x float> %i.na, splat (float 1.000000e+00)
  %i.nc = fdiv fast <2 x float> splat (float 1.000000e+00), %i.nb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread393.i: ; preds = %._crit_edge476.i
  %i.nd = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.me)
  %i.ne = fadd fast <2 x float> %i.nd, splat (float 1.000000e+00)
  %i.nf = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.ne)
  %i.ng = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.nf)
  %i.nh = fmul fast <2 x float> %i.ng, %i.me
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

bb.j:                                             ; preds = %._crit_edge476.i
  %i.ni = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !53 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !53 ; 3 uses
  %i.nm = fneg fast float %i.nl
  %i.nn = fdiv fast float %i.nm, %i.nj            ; 4 uses
  %i.no = extractelement <2 x float> %i.me, i64 0 ; 5 uses
  %i.np = fcmp fast olt float %i.no, %i.nn
  br i1 %i.np, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.nq = fdiv fast float 1.000000e+00, %i.nj
  %i.nr = fadd fast float %i.nn, %i.nq
  %i.ns = fcmp fast ogt float %i.no, %i.nr
  br i1 %i.ns, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.nt = fmul fast float %i.nj, %i.no
  %i.nu = fadd fast float %i.nt, %i.nl
  %i.nv = fmul fast float %i.nu, %i.no
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i

bb.m:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread381.i
  %i.nw = insertelement <2 x float> %i.mw, float %i.mq, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit259.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit260.thread.i: ; preds = %bb.l, %bb.k, %bb.j
  %.1356377.i = phi float [ %i.nv, %bb.l ], [ 0.000000e+00, %bb.j ], [ %i.no, %bb.k ] ; 2 uses
  %i.nx = extractelement <2 x float> %i.me, i64 1 ; 4 uses
  %i.ny = fcmp fast olt float %i.nx, %i.nn
  %i.nz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1356377.i, i64 0 ; 2 uses
end_hunk_0
