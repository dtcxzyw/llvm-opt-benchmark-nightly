Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx2?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4ncnn14lstm_int8_avx2ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE:bb.a
  %i.gk = bitcast <4 x i32> %i.gj to <8 x i16>
  %i.gl = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.gk, <8 x i16> splat (i16 -127))
  %i.gm = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gl, <8 x i16> splat (i16 127))
  %i.gn = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gm, <8 x i16> poison)
  %i.go = bitcast <16 x i8> %i.gn to <2 x i64>
  %i.gp = extractelement <2 x i64> %i.go, i64 0
  store i64 %i.gp, ptr %.02740.i.i, align 8, !tbaa !94
  %i.gq = getelementptr inbounds nuw i8, ptr %.03039.i.i, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.02740.i.i, i64 8 ; 2 uses
  %i.gs = add nuw nsw i32 %.041.i112.i, 8         ; 2 uses
  %i.gt = or disjoint i32 %i.gs, 7
  %i.gu = icmp slt i32 %i.gt, %i.bw
  br i1 %i.gu, label %.lr.ph.i111.i, label %._crit_edge.loopexit.i113.i, !llvm.loop !77

._crit_edge.loopexit.i113.i:                      ; preds = %.lr.ph.i111.i
  %i.gv = and i32 %i.bw, 2147483640
  br label %._crit_edge.i105.i

._crit_edge.i105.i:                               ; preds = %._crit_edge.loopexit.i113.i, %bb.ad
  %.030.lcssa.i.i = phi ptr [ %i.ca, %bb.ad ], [ %i.gq, %._crit_edge.loopexit.i113.i ] ; 2 uses
  %.027.lcssa.i.i = phi ptr [ %i.fx, %bb.ad ], [ %i.gr, %._crit_edge.loopexit.i113.i ] ; 2 uses
  %.0.lcssa.i106.i = phi i32 [ 0, %bb.ad ], [ %i.gv, %._crit_edge.loopexit.i113.i ] ; 3 uses
  %i.gw = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = or disjoint i32 %.0.lcssa.i106.i, 3
  %i.gz = icmp slt i32 %i.gy, %i.bw
  br i1 %i.gz, label %.lr.ph48.i109.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph48.i109.i, %._crit_edge.i105.i
  %.131.lcssa.i.i = phi ptr [ %.030.lcssa.i.i, %._crit_edge.i105.i ], [ %i.kc, %.lr.ph48.i109.i ] ; 8 uses
  %.128.lcssa.i.i = phi ptr [ %.027.lcssa.i.i, %._crit_edge.i105.i ], [ %i.kd, %.lr.ph48.i109.i ] ; 8 uses
  %.1.lcssa.i107.i = phi i32 [ %.0.lcssa.i106.i, %._crit_edge.i105.i ], [ %i.ke, %.lr.ph48.i109.i ] ; 7 uses
  %i.ha = icmp slt i32 %.1.lcssa.i107.i, %i.bw
  br i1 %i.ha, label %iter.check, label %_ZN4ncnn3Mat4fillIaEEvT_.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.hb = xor i32 %.1.lcssa.i107.i, -1
  %i.hc = add i32 %i.bw, %i.hb                    ; 3 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = add nuw nsw i64 %i.hd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hc, 3
  br i1 %min.iters.check, label %.lr.ph55.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.128.lcssa.i.i, i64 1
  %i.hf = xor i32 %.1.lcssa.i107.i, -1
  %i.hg = add i32 %i.bw, %i.hf
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %scevgep70 = getelementptr i8, ptr %scevgep, i64 %i.hh
  %scevgep71 = getelementptr i8, ptr %.131.lcssa.i.i, i64 4
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.hi
  %bound0 = icmp ult ptr %.128.lcssa.i.i, %scevgep72
  %bound1 = icmp ult ptr %.131.lcssa.i.i, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph55.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i32 %i.hc, 31
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hj = and i64 %i.he, 28
  %n.vec = and i64 %i.he, 8589934560              ; 6 uses
  %i.hk = trunc i64 %n.vec to i32
  %i.hl = add i32 %.1.lcssa.i107.i, %i.hk
  %i.hm = getelementptr i8, ptr %.128.lcssa.i.i, i64 %n.vec
  %i.hn = shl nuw nsw i64 %n.vec, 2
  %i.ho = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.hn
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fy, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.128.lcssa.i.i, i64 %index ; 4 uses
  %i.hp = shl i64 %index, 2
  %next.gep74 = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.hp ; 4 uses
  %i.hq = getelementptr i8, ptr %next.gep74, i64 32
  %i.hr = getelementptr i8, ptr %next.gep74, i64 64
  %i.hs = getelementptr i8, ptr %next.gep74, i64 96
  %wide.load = load <8 x float>, ptr %next.gep74, align 4, !tbaa !23, !alias.scope !95
  %wide.load75 = load <8 x float>, ptr %i.hq, align 4, !tbaa !23, !alias.scope !95
  %wide.load76 = load <8 x float>, ptr %i.hr, align 4, !tbaa !23, !alias.scope !95
  %wide.load77 = load <8 x float>, ptr %i.hs, align 4, !tbaa !23, !alias.scope !95
  %i.ht = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.hu = fmul fast <8 x float> %wide.load75, %broadcast.splat
  %i.hv = fmul fast <8 x float> %wide.load76, %broadcast.splat
  %i.hw = fmul fast <8 x float> %wide.load77, %broadcast.splat
  %i.hx = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.ht)
  %i.hy = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.hu)
  %i.hz = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.hv)
  %i.ia = call fast <8 x float> @llvm.round.v8f32(<8 x float> %i.hw)
  %i.ib = fptosi <8 x float> %i.hx to <8 x i32>
  %i.ic = fptosi <8 x float> %i.hy to <8 x i32>
  %i.id = fptosi <8 x float> %i.hz to <8 x i32>
  %i.ie = fptosi <8 x float> %i.ia to <8 x i32>
  %i.if = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ib, <8 x i32> splat (i32 -127))
  %i.ig = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ic, <8 x i32> splat (i32 -127))
  %i.ih = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.id, <8 x i32> splat (i32 -127))
  %i.ii = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ie, <8 x i32> splat (i32 -127))
  %i.ij = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.if, <8 x i32> splat (i32 127))
  %i.ik = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ig, <8 x i32> splat (i32 127))
  %i.il = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ih, <8 x i32> splat (i32 127))
  %i.im = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ii, <8 x i32> splat (i32 127))
  %i.in = trunc nsw <8 x i32> %i.ij to <8 x i8>
  %i.io = trunc nsw <8 x i32> %i.ik to <8 x i8>
  %i.ip = trunc nsw <8 x i32> %i.il to <8 x i8>
  %i.iq = trunc nsw <8 x i32> %i.im to <8 x i8>
  %i.ir = getelementptr i8, ptr %next.gep, i64 8
  %i.is = getelementptr i8, ptr %next.gep, i64 16
  %i.it = getelementptr i8, ptr %next.gep, i64 24
  store <8 x i8> %i.in, ptr %next.gep, align 1, !tbaa !24, !alias.scope !96, !noalias !95
  store <8 x i8> %i.io, ptr %i.ir, align 1, !tbaa !24, !alias.scope !96, !noalias !95
  store <8 x i8> %i.ip, ptr %i.is, align 1, !tbaa !24, !alias.scope !96, !noalias !95
  store <8 x i8> %i.iq, ptr %i.it, align 1, !tbaa !24, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iu = icmp eq i64 %index.next, %n.vec
  br i1 %i.iu, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.he, %n.vec
  br i1 %cmp.n, label %_ZN4ncnn3Mat4fillIaEEvT_.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.i.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %i.he, 8589934588            ; 5 uses
  %i.iv = trunc i64 %n.vec80 to i32
  %i.iw = add i32 %.1.lcssa.i107.i, %i.iv
  %i.ix = getelementptr i8, ptr %.128.lcssa.i.i, i64 %n.vec80
  %i.iy = shl nuw nsw i64 %n.vec80, 2
  %i.iz = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.iy
  %broadcast.splatinsert81 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat82 = shufflevector <4 x float> %broadcast.splatinsert81, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 3 uses
  %next.gep84 = getelementptr i8, ptr %.128.lcssa.i.i, i64 %index83
  %i.ja = shl i64 %index83, 2
  %next.gep85 = getelementptr i8, ptr %.131.lcssa.i.i, i64 %i.ja
  %wide.load86 = load <4 x float>, ptr %next.gep85, align 4, !tbaa !23, !alias.scope !95
  %i.jb = fmul fast <4 x float> %wide.load86, %broadcast.splat82
  %i.jc = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.jb)
  %i.jd = fptosi <4 x float> %i.jc to <4 x i32>
  %i.je = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.jd, <4 x i32> splat (i32 -127))
  %i.jf = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.je, <4 x i32> splat (i32 127))
  %i.jg = trunc nsw <4 x i32> %i.jf to <4 x i8>
  store <4 x i8> %i.jg, ptr %next.gep84, align 1, !tbaa !24, !alias.scope !96, !noalias !95
  %index.next87 = add nuw i64 %index83, 4         ; 2 uses
  %i.jh = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.jh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.he, %n.vec80
  br i1 %cmp.n88, label %_ZN4ncnn3Mat4fillIaEEvT_.exit.i, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.i.ph = phi i32 [ %.1.lcssa.i107.i, %iter.check ], [ %.1.lcssa.i107.i, %vector.memcheck ], [ %i.hl, %vec.epilog.iter.check ], [ %i.iw, %vec.epilog.middle.block ] ; 4 uses
  %.22953.i.i.ph = phi ptr [ %.128.lcssa.i.i, %iter.check ], [ %.128.lcssa.i.i, %vector.memcheck ], [ %i.hm, %vec.epilog.iter.check ], [ %i.ix, %vec.epilog.middle.block ] ; 3 uses
  %.23252.i.i.ph = phi ptr [ %.131.lcssa.i.i, %iter.check ], [ %.131.lcssa.i.i, %vector.memcheck ], [ %i.ho, %vec.epilog.iter.check ], [ %i.iz, %vec.epilog.middle.block ] ; 3 uses
  %i.ji = sub i32 %i.bw, %.254.i.i.ph
  %.neg = add i32 %.254.i.i.ph, 1
  %xtraiter154 = and i32 %i.ji, 1
  %lcmp.mod155.not = icmp eq i32 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph55.i.i.prol.loopexit, label %.lr.ph55.i.i.prol

.lr.ph55.i.i.prol:                                ; preds = %.lr.ph55.i.i.preheader
  %i.jj = getelementptr inbounds nuw i8, ptr %.23252.i.i.ph, i64 4
  %i.jk = load float, ptr %.23252.i.i.ph, align 4, !tbaa !23
  %i.jl = fmul fast float %i.jk, %i.fy
  %i.jm = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.jl)
  %i.jn = fptosi float %i.jm to i32
  %spec.select.i37.i.i.prol = call i32 @llvm.smax.i32(i32 %i.jn, i32 -127)
  %.0.i38.i.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i37.i.i.prol, i32 127)
  %.0.i.i.i.prol = trunc nsw i32 %.0.i38.i.i.prol to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %.22953.i.i.ph, i64 1
  store i8 %.0.i.i.i.prol, ptr %.22953.i.i.ph, align 1, !tbaa !24
  %i.jp = add nuw nsw i32 %.254.i.i.ph, 1
  br label %.lr.ph55.i.i.prol.loopexit

.lr.ph55.i.i.prol.loopexit:                       ; preds = %.lr.ph55.i.i.prol, %.lr.ph55.i.i.preheader
  %.254.i.i.unr = phi i32 [ %.254.i.i.ph, %.lr.ph55.i.i.preheader ], [ %i.jp, %.lr.ph55.i.i.prol ]
  %.22953.i.i.unr = phi ptr [ %.22953.i.i.ph, %.lr.ph55.i.i.preheader ], [ %i.jo, %.lr.ph55.i.i.prol ]
  %.23252.i.i.unr = phi ptr [ %.23252.i.i.ph, %.lr.ph55.i.i.preheader ], [ %i.jj, %.lr.ph55.i.i.prol ]
  %i.jq = icmp eq i32 %i.bw, %.neg
  br i1 %i.jq, label %_ZN4ncnn3Mat4fillIaEEvT_.exit.i, label %.lr.ph55.i.i

.lr.ph48.i109.i:                                  ; preds = %._crit_edge.i105.i, %.lr.ph48.i109.i
  %.146.i110.i = phi i32 [ %i.ke, %.lr.ph48.i109.i ], [ %.0.lcssa.i106.i, %._crit_edge.i105.i ]
  %.12845.i.i = phi ptr [ %i.kd, %.lr.ph48.i109.i ], [ %.027.lcssa.i.i, %._crit_edge.i105.i ] ; 2 uses
  %.13144.i.i = phi ptr [ %i.kc, %.lr.ph48.i109.i ], [ %.030.lcssa.i.i, %._crit_edge.i105.i ] ; 2 uses
  %i.jr = load <4 x float>, ptr %.13144.i.i, align 1, !tbaa !24
  %i.js = fmul fast <4 x float> %i.jr, %i.gx      ; 2 uses
  %i.jt = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.js)
  %i.ju = fadd fast <4 x float> %i.jt, %i.js
  %i.jv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ju) ; 2 uses
  %i.jw = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jv, <4 x i32> %i.jv)
  %i.jx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jw, <8 x i16> splat (i16 -127))
  %i.jy = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jx, <8 x i16> splat (i16 127))
  %i.jz = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jy, <8 x i16> poison)
  %i.ka = bitcast <16 x i8> %i.jz to <4 x i32>
  %i.kb = extractelement <4 x i32> %i.ka, i64 0
  store i32 %i.kb, ptr %.12845.i.i, align 4, !tbaa !9
  %i.kc = getelementptr inbounds nuw i8, ptr %.13144.i.i, i64 16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.12845.i.i, i64 4 ; 2 uses
  %i.ke = add nuw nsw i32 %.146.i110.i, 4         ; 3 uses
  %i.kf = or disjoint i32 %i.ke, 3
  %i.kg = icmp slt i32 %i.kf, %i.bw
  br i1 %i.kg, label %.lr.ph48.i109.i, label %.preheader.i.i, !llvm.loop !83

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.prol.loopexit, %.lr.ph55.i.i
  %.254.i.i = phi i32 [ %i.kt, %.lr.ph55.i.i ], [ %.254.i.i.unr, %.lr.ph55.i.i.prol.loopexit ]
  %.22953.i.i = phi ptr [ %i.ks, %.lr.ph55.i.i ], [ %.22953.i.i.unr, %.lr.ph55.i.i.prol.loopexit ] ; 3 uses
  %.23252.i.i = phi ptr [ %i.kn, %.lr.ph55.i.i ], [ %.23252.i.i.unr, %.lr.ph55.i.i.prol.loopexit ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.23252.i.i, i64 4
  %i.ki = load float, ptr %.23252.i.i, align 4, !tbaa !23
  %i.kj = fmul fast float %i.ki, %i.fy
  %i.kk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.kj)
  %i.kl = fptosi float %i.kk to i32
  %spec.select.i37.i.i = call i32 @llvm.smax.i32(i32 %i.kl, i32 -127)
  %.0.i38.i.i = call i32 @llvm.smin.i32(i32 %spec.select.i37.i.i, i32 127)
  %.0.i.i.i = trunc nsw i32 %.0.i38.i.i to i8
  %i.km = getelementptr inbounds nuw i8, ptr %.22953.i.i, i64 1
  store i8 %.0.i.i.i, ptr %.22953.i.i, align 1, !tbaa !24
  %i.kn = getelementptr inbounds nuw i8, ptr %.23252.i.i, i64 8
  %i.ko = load float, ptr %i.kh, align 4, !tbaa !23
  %i.kp = fmul fast float %i.ko, %i.fy
  %i.kq = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.kp)
  %i.kr = fptosi float %i.kq to i32
  %spec.select.i37.i.i.1 = call i32 @llvm.smax.i32(i32 %i.kr, i32 -127)
  %.0.i38.i.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i37.i.i.1, i32 127)
  %.0.i.i.i.1 = trunc nsw i32 %.0.i38.i.i.1 to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %.22953.i.i, i64 2
  store i8 %.0.i.i.i.1, ptr %i.km, align 1, !tbaa !24
  %i.kt = add nuw nsw i32 %.254.i.i, 2            ; 2 uses
  %exitcond.not.i108.i.1 = icmp eq i32 %i.kt, %i.bw
  br i1 %exitcond.not.i108.i.1, label %_ZN4ncnn3Mat4fillIaEEvT_.exit.i, label %.lr.ph55.i.i, !llvm.loop !84

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.kv = load ptr, ptr %i.ak, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.ag

_ZN4ncnn3Mat4fillIaEEvT_.exit.i:                  ; preds = %.lr.ph55.i.i.prol.loopexit, %.lr.ph55.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i, %bb.ac, %.lr.ph.preheader.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.kw = load i32, ptr %i.c, align 4, !tbaa !9
  %i.kx = ashr i32 %i.kw, 1
  store i32 %i.kx, ptr %i.g, align 4, !tbaa !9
  %i.ky = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ky)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  %i.kz = load i32, ptr %i.g, align 4, !tbaa !9
  %i.la = shl i32 %i.kz, 1
  %i.lb = load i32, ptr %i.f, align 4, !tbaa !9
  %i.lc = add nsw i32 %i.lb, %i.la
  store i32 %i.lc, ptr %i.f, align 4, !tbaa !9
  %i.ld = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ld)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.e, ptr nonnull %13, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %5, ptr nonnull %11, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.le = load i32, ptr %i.e, align 4, !tbaa !9
  %i.lf = load ptr, ptr %2, align 8, !tbaa !19
  %i.lg = load i32, ptr %i.s, align 4, !tbaa !18
  %i.lh = sext i32 %i.lg to i64
  %i.li = sext i32 %i.le to i64
  %i.lj = mul nsw i64 %i.lh, %i.li
  %i.lk = load i64, ptr %i.aq, align 8, !tbaa !21
  %i.ll = mul i64 %i.lj, %i.lk
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ll
  store ptr %i.lm, ptr %i.h, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.ln = load ptr, ptr %9, align 8, !tbaa !19
  store ptr %i.ln, ptr %i.i, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.lo = load ptr, ptr %8, align 8, !tbaa !19
  store ptr %i.lo, ptr %i.j, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.lp = load ptr, ptr %12, align 8, !tbaa !19
  store ptr %i.lp, ptr %i.k, align 8, !tbaa !33
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.lq = load i32, ptr %i.c, align 4, !tbaa !9
  %i.lr = ashr i32 %i.lq, 3
  store i32 %i.lr, ptr %i.g, align 4, !tbaa !9
  %i.ls = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ls)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.lt = load i32, ptr %i.g, align 4, !tbaa !9
  %i.lu = shl i32 %i.lt, 3
  %i.lv = load i32, ptr %i.f, align 4, !tbaa !9
  %i.lw = add nsw i32 %i.lv, %i.lu                ; 2 uses
  store i32 %i.lw, ptr %i.f, align 4, !tbaa !9
  %i.lx = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ly = sub nsw i32 %i.lx, %i.lw
  %i.lz = ashr i32 %i.ly, 2
  store i32 %i.lz, ptr %i.g, align 4, !tbaa !9
  %i.ma = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.ma)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.g, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.mb = load i32, ptr %i.g, align 4, !tbaa !9
  %i.mc = shl i32 %i.mb, 2
  %i.md = load i32, ptr %i.f, align 4, !tbaa !9
  %i.me = add nsw i32 %i.md, %i.mc
  store i32 %i.me, ptr %i.f, align 4, !tbaa !9
  %i.mf = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.mf)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %11, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.k)
  %i.mg = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.mh = load i32, ptr %i.c, align 4, !tbaa !9
  %.not66.i = icmp eq i32 %i.mg, %i.mh
  br i1 %.not66.i, label %bb.am, label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3Mat4fillIaEEvT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  store i32 0, ptr %i.l, align 4, !tbaa !9
  %i.mi = load i32, ptr %i.ap, align 4, !tbaa !14
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %i.mi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.b, ptr nonnull %i.l, ptr nonnull align 8 dereferenceable(72) %7, ptr nonnull %12, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %.pre141.i = load i32, ptr %i.b, align 4, !tbaa !9
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.mj = atomicrmw add ptr %i.kv, i32 -1 acq_rel, align 4
  %i.mk = icmp eq i32 %i.mj, 1
  br i1 %i.mk, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit71.i

bb.ah:                                            ; preds = %bb.ag
  %i.ml = load ptr, ptr %i.al, align 8, !tbaa !89 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.ml, null
  %i.mm = load ptr, ptr %13, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mn = load ptr, ptr %i.ml, align 8, !tbaa !91
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8
  invoke void %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.ml, ptr noundef %i.mm)
          to label %_ZN4ncnn3MatD2Ev.exit71.i unwind label %bb.al, !inline_history !70

bb.aj:                                            ; preds = %bb.ah
  %.not.i101.i = icmp eq ptr %i.mm, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.mm) #4
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.al:                                            ; preds = %bb.ai
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  call void @__clang_call_terminate(ptr %i.mr) #16
  unreachable

bb.am:                                            ; preds = %bb.af, %_ZN4ncnn3Mat4fillIaEEvT_.exit.i
  %i.ms = phi i32 [ %.pre141.i, %bb.af ], [ %i.mg, %_ZN4ncnn3Mat4fillIaEEvT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  %i.mt = add nuw nsw i32 %.0127.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.mt, %i.r
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.z, !llvm.loop !85

_ZN4ncnn3MatD2Ev.exit71.i:                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.y
  %.pn.pn.i = phi { ptr, i32 } [ %i.bv, %bb.y ], [ %i.ku, %bb.ag ], [ %i.ku, %bb.ae ], [ %i.ku, %bb.ai ], [ %i.ku, %bb.aj ], [ %i.ku, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  br label %bb.an

bb.an:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit71.i, %bb.e
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit71.i ], [ %i.ah, %bb.e ]
  %i.mu = load ptr, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %.not.i84.i = icmp eq ptr %i.mu, null
  br i1 %.not.i84.i, label %_ZN4ncnn3MatD2Ev.exit67.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.mv = atomicrmw add ptr %i.mu, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit67.i

bb.ap:                                            ; preds = %bb.ao
  %i.mx = load ptr, ptr %i.ac, align 8, !tbaa !89 ; 3 uses
  %.not3.i85.i = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %12, align 8, !tbaa !19   ; 3 uses
  br i1 %.not3.i85.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !91
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
end_hunk_0
begin_hunk_1_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.bh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> nofpclass(nan inf) %i.bb, <8 x float> splat (float 5.000000e-01))
  %i.bi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bh, <8 x float> nofpclass(nan inf) %i.bc, <8 x float> nofpclass(nan inf) %i.bb)
  %i.bj = fadd fast <8 x float> %i.bi, splat (float 1.000000e+00)
  %i.bk = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ay)
  %i.bl = shl <8 x i32> %i.bk, splat (i32 23)
  %i.bm = add <8 x i32> %i.bl, splat (i32 1065353216)
  %i.bn = bitcast <8 x i32> %i.bm to <8 x float>
  %i.bo = fmul fast <8 x float> %i.bj, %i.bn
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = fneg fast <8 x float> %i.ao
  %i.br = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bq, <8 x float> splat (float f0x42B0C0A5))
  %i.bs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bs, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bu = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bt, i32 1) ; 2 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bu, %i.bt
  %i.bw = select <8 x i1> %i.bv, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bx = fsub fast <8 x float> %i.bu, %i.bw      ; 2 uses
  %i.by = fneg fast <8 x float> %i.bx             ; 2 uses
  %i.bz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.by, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bs)
  %i.ca = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.by, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bz) ; 8 uses
  %i.cb = fmul fast <8 x float> %i.ca, %i.ca
  %i.cc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.cd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3C088908))
  %i.ce = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cd, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3D2AA9C1))
  %i.cf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ce, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float f0x3E2AAAAA))
  %i.cg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cf, <8 x float> nofpclass(nan inf) %i.ca, <8 x float> splat (float 5.000000e-01))
  %i.ch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cg, <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.ca)
  %i.ci = fadd fast <8 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx)
  %i.ck = shl <8 x i32> %i.cj, splat (i32 23)
  %i.cl = add <8 x i32> %i.ck, splat (i32 1065353216)
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = fmul fast <8 x float> %i.ci, %i.cm
  %i.co = fadd fast <8 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = fneg fast <8 x float> %i.ap
  %i.cq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cp, <8 x float> splat (float f0x42B0C0A5))
  %i.cr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ct = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.cs, i32 1) ; 2 uses
  %i.cu = fcmp fast ogt <8 x float> %i.ct, %i.cs
  %i.cv = select <8 x i1> %i.cu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.cw = fsub fast <8 x float> %i.ct, %i.cv      ; 2 uses
  %i.cx = fneg fast <8 x float> %i.cw             ; 2 uses
  %i.cy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.cr)
  %i.cz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.cx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.cy) ; 8 uses
  %i.da = fmul fast <8 x float> %i.cz, %i.cz
  %i.db = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.db, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> splat (float f0x3C088908))
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> splat (float f0x3D2AA9C1))
  %i.de = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dd, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> splat (float f0x3E2AAAAA))
  %i.df = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.de, <8 x float> nofpclass(nan inf) %i.cz, <8 x float> splat (float 5.000000e-01))
  %i.dg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.df, <8 x float> nofpclass(nan inf) %i.da, <8 x float> nofpclass(nan inf) %i.cz)
  %i.dh = fadd fast <8 x float> %i.dg, splat (float 1.000000e+00)
  %i.di = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cw)
  %i.dj = shl <8 x i32> %i.di, splat (i32 23)
  %i.dk = add <8 x i32> %i.dj, splat (i32 1065353216)
  %i.dl = bitcast <8 x i32> %i.dk to <8 x float>
  %i.dm = fmul fast <8 x float> %i.dh, %i.dl
  %i.dn = fadd fast <8 x float> %i.dm, splat (float 1.000000e+00)
  %i.do = fmul fast <8 x float> %i.aq, splat (float -2.000000e+00)
  %i.dp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.do, <8 x float> splat (float f0x42B0C0A5))
  %i.dq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dp, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dq, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ds = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dr, i32 1) ; 2 uses
  %i.dt = fcmp fast ogt <8 x float> %i.ds, %i.dr
  %i.du = select <8 x i1> %i.dt, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dv = fsub fast <8 x float> %i.ds, %i.du      ; 2 uses
  %i.dw = fneg fast <8 x float> %i.dv             ; 2 uses
  %i.dx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.dq)
  %i.dy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.dx) ; 8 uses
  %i.dz = fmul fast <8 x float> %i.dy, %i.dy
  %i.ea = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.dy, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.eb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ea, <8 x float> nofpclass(nan inf) %i.dy, <8 x float> splat (float f0x3C088908))
  %i.ec = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.eb, <8 x float> nofpclass(nan inf) %i.dy, <8 x float> splat (float f0x3D2AA9C1))
  %i.ed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.dy, <8 x float> splat (float f0x3E2AAAAA))
  %i.ee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> nofpclass(nan inf) %i.dy, <8 x float> splat (float 5.000000e-01))
  %i.ef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> nofpclass(nan inf) %i.dz, <8 x float> nofpclass(nan inf) %i.dy)
  %i.eg = fadd fast <8 x float> %i.ef, splat (float 1.000000e+00)
  %i.eh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dv)
  %i.ei = shl <8 x i32> %i.eh, splat (i32 23)
  %i.ej = add <8 x i32> %i.ei, splat (i32 1065353216)
  %i.ek = bitcast <8 x i32> %i.ej to <8 x float>
  %i.el = fmul fast <8 x float> %i.eg, %i.ek
  %i.em = fadd fast <8 x float> %i.el, splat (float 1.000000e+00)
  %i.en = fdiv fast <8 x float> splat (float 1.000000e+00), %i.em
  %i.eo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.en, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.ep = load ptr, ptr %5, align 8, !tbaa !33
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.t ; 2 uses
  %i.er = load <8 x float>, ptr %i.eq, align 1, !tbaa !24
  %i.es = fdiv fast <8 x float> %i.er, %i.co
  %i.et = fdiv fast <8 x float> %i.eo, %i.bp
  %i.eu = fadd fast <8 x float> %i.et, %i.es      ; 2 uses
  %i.ev = fmul fast <8 x float> %i.eu, splat (float -2.000000e+00)
  %i.ew = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> splat (float f0x42B0C0A5))
  %i.ex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ex, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ez = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ey, i32 1) ; 2 uses
  %i.fa = fcmp fast ogt <8 x float> %i.ez, %i.ey
  %i.fb = select <8 x i1> %i.fa, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.fc = fsub fast <8 x float> %i.ez, %i.fb      ; 2 uses
  %i.fd = fneg fast <8 x float> %i.fc             ; 2 uses
  %i.fe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ex)
  %i.ff = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.fd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.fe) ; 8 uses
  %i.fg = fmul fast <8 x float> %i.ff, %i.ff
  %i.fh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.fi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fh, <8 x float> nofpclass(nan inf) %i.ff, <8 x float> splat (float f0x3C088908))
  %i.fj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fi, <8 x float> nofpclass(nan inf) %i.ff, <8 x float> splat (float f0x3D2AA9C1))
  %i.fk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fj, <8 x float> nofpclass(nan inf) %i.ff, <8 x float> splat (float f0x3E2AAAAA))
  %i.fl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> nofpclass(nan inf) %i.ff, <8 x float> splat (float 5.000000e-01))
  %i.fm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fl, <8 x float> nofpclass(nan inf) %i.fg, <8 x float> nofpclass(nan inf) %i.ff)
  %i.fn = fadd fast <8 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fc)
  %i.fp = shl <8 x i32> %i.fo, splat (i32 23)
  %i.fq = add <8 x i32> %i.fp, splat (i32 1065353216)
  %i.fr = bitcast <8 x i32> %i.fq to <8 x float>
  %i.fs = fmul fast <8 x float> %i.fn, %i.fr
  %i.ft = fadd fast <8 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ft
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.fw = fdiv fast <8 x float> %i.fv, %i.dn      ; 2 uses
  store <8 x float> %i.eu, ptr %i.eq, align 1, !tbaa !24
  %i.fx = load i32, ptr %6, align 4, !tbaa !9
  %i.fy = load i32, ptr %7, align 4, !tbaa !9
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ga = load ptr, ptr %8, align 8, !tbaa !33
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.t
  store <8 x float> %i.fw, ptr %i.gb, align 1, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.gc = load ptr, ptr %.sink, align 8, !tbaa !33
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.t
  store <8 x float> %i.fw, ptr %i.gd, align 1, !tbaa !24
  %i.ge = add i32 %.0212, 1
  %exitcond.not = icmp eq i32 %.0212, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not188 = icmp sgt i32 %i.k, %i.j
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0189 = phi i32 [ %i.k, %.lr.ph ], [ %i.ge, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !9
  %i.o = shl nsw i32 %.0189, 2
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !19
  %i.r = load i32, ptr %i.l, align 4, !tbaa !18
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !21
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 2 uses
  %11 = load <8 x float>, ptr %i.x, align 1, !tbaa !24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %12 = load <8 x float>, ptr %i.y, align 1, !tbaa !24 ; 2 uses
  %i.z = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ab = shufflevector <8 x float> %11, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <8 x float> %12, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> %i.z, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.ab, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ah = fneg fast <4 x float> %i.ad
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ah, <4 x float> splat (float f0x42B0C0A5))
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ai, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ak = fmul fast <4 x float> %i.aj, splat (float f0x3FB8AA3B)
  %i.al = fadd fast <4 x float> %i.ak, splat (float 5.000000e-01) ; 2 uses
  %i.am = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.al)
  %i.an = sitofp fast <4 x i32> %i.am to <4 x float> ; 2 uses
  %i.ao = fcmp fast olt <4 x float> %i.al, %i.an
  %i.ap = select <4 x i1> %i.ao, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aq = fsub fast <4 x float> %i.an, %i.ap      ; 2 uses
  %i.ar = fneg fast <4 x float> %i.aq             ; 2 uses
  %i.as = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ar, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aj)
  %i.at = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ar, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.as) ; 8 uses
  %i.au = fmul fast <4 x float> %i.at, %i.at
  %i.av = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.at, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.av, <4 x float> nofpclass(nan inf) %i.at, <4 x float> splat (float f0x3C088908))
  %i.ax = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> nofpclass(nan inf) %i.at, <4 x float> splat (float f0x3D2AA9C1))
  %i.ay = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ax, <4 x float> nofpclass(nan inf) %i.at, <4 x float> splat (float f0x3E2AAAAA))
  %i.az = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ay, <4 x float> nofpclass(nan inf) %i.at, <4 x float> splat (float 5.000000e-01))
  %i.ba = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.az, <4 x float> nofpclass(nan inf) %i.au, <4 x float> nofpclass(nan inf) %i.at)
  %i.bb = fadd fast <4 x float> %i.ba, splat (float 1.000000e+00)
  %i.bc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aq)
  %i.bd = shl <4 x i32> %i.bc, splat (i32 23)
  %i.be = add <4 x i32> %i.bd, splat (i32 1065353216)
  %i.bf = bitcast <4 x i32> %i.be to <4 x float>
  %i.bg = fmul fast <4 x float> %i.bb, %i.bf
  %i.bh = fadd fast <4 x float> %i.bg, splat (float 1.000000e+00)
  %i.bi = fneg fast <4 x float> %i.ae
  %i.bj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bi, <4 x float> splat (float f0x42B0C0A5))
  %i.bk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bk, splat (float f0x3FB8AA3B)
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 5.000000e-01) ; 2 uses
  %i.bn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bm)
  %i.bo = sitofp fast <4 x i32> %i.bn to <4 x float> ; 2 uses
  %i.bp = fcmp fast olt <4 x float> %i.bm, %i.bo
  %i.bq = select <4 x i1> %i.bp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.br = fsub fast <4 x float> %i.bo, %i.bq      ; 2 uses
  %i.bs = fneg fast <4 x float> %i.br             ; 2 uses
  %i.bt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.bk)
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bt) ; 8 uses
  %i.bv = fmul fast <4 x float> %i.bu, %i.bu
  %i.bw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bw, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float f0x3C088908))
  %i.by = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bx, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float f0x3D2AA9C1))
  %i.bz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.by, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float f0x3E2AAAAA))
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bz, <4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float 5.000000e-01))
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ca, <4 x float> nofpclass(nan inf) %i.bv, <4 x float> nofpclass(nan inf) %i.bu)
  %i.cc = fadd fast <4 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.ce = shl <4 x i32> %i.cd, splat (i32 23)
  %i.cf = add <4 x i32> %i.ce, splat (i32 1065353216)
  %i.cg = bitcast <4 x i32> %i.cf to <4 x float>
  %i.ch = fmul fast <4 x float> %i.cc, %i.cg
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = fneg fast <4 x float> %i.af
  %i.ck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cj, <4 x float> splat (float f0x42B0C0A5))
  %i.cl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ck, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cm = fmul fast <4 x float> %i.cl, splat (float f0x3FB8AA3B)
  %i.cn = fadd fast <4 x float> %i.cm, splat (float 5.000000e-01) ; 2 uses
  %i.co = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cn)
  %i.cp = sitofp fast <4 x i32> %i.co to <4 x float> ; 2 uses
  %i.cq = fcmp fast olt <4 x float> %i.cn, %i.cp
  %i.cr = select <4 x i1> %i.cq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cs = fsub fast <4 x float> %i.cp, %i.cr      ; 2 uses
  %i.ct = fneg fast <4 x float> %i.cs             ; 2 uses
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ct, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cl)
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ct, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cu) ; 8 uses
  %i.cw = fmul fast <4 x float> %i.cv, %i.cv
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cv, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.cy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cx, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> splat (float f0x3C088908))
  %i.cz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cy, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> splat (float f0x3D2AA9C1))
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> splat (float f0x3E2AAAAA))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.da, <4 x float> nofpclass(nan inf) %i.cv, <4 x float> splat (float 5.000000e-01))
  %i.dc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.cw, <4 x float> nofpclass(nan inf) %i.cv)
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 1.000000e+00)
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cs)
  %i.df = shl <4 x i32> %i.de, splat (i32 23)
  %i.dg = add <4 x i32> %i.df, splat (i32 1065353216)
  %i.dh = bitcast <4 x i32> %i.dg to <4 x float>
  %i.di = fmul fast <4 x float> %i.dd, %i.dh
  %i.dj = fadd fast <4 x float> %i.di, splat (float 1.000000e+00)
  %i.dk = fmul fast <4 x float> %i.ag, splat (float -2.000000e+00)
  %i.dl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> splat (float f0x42B0C0A5))
  %i.dm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dn = fmul fast <4 x float> %i.dm, splat (float f0x3FB8AA3B)
  %i.do = fadd fast <4 x float> %i.dn, splat (float 5.000000e-01) ; 2 uses
  %i.dp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.do)
  %i.dq = sitofp fast <4 x i32> %i.dp to <4 x float> ; 2 uses
  %i.dr = fcmp fast olt <4 x float> %i.do, %i.dq
  %i.ds = select <4 x i1> %i.dr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dt = fsub fast <4 x float> %i.dq, %i.ds      ; 2 uses
  %i.du = fneg fast <4 x float> %i.dt             ; 2 uses
  %i.dv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.du, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dm)
  %i.dw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.du, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dv) ; 8 uses
  %i.dx = fmul fast <4 x float> %i.dw, %i.dw
  %i.dy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.dz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3C088908))
  %i.ea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dz, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3D2AA9C1))
  %i.eb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float f0x3E2AAAAA))
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> splat (float 5.000000e-01))
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.dx, <4 x float> nofpclass(nan inf) %i.dw)
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 1.000000e+00)
  %i.ef = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt)
  %i.eg = shl <4 x i32> %i.ef, splat (i32 23)
  %i.eh = add <4 x i32> %i.eg, splat (i32 1065353216)
  %i.ei = bitcast <4 x i32> %i.eh to <4 x float>
  %i.ej = fmul fast <4 x float> %i.ee, %i.ei
  %i.ek = fadd fast <4 x float> %i.ej, splat (float 1.000000e+00)
  %i.el = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ek
  %i.em = fadd fast <4 x float> %i.el, splat (float -1.000000e+00)
  %i.en = load ptr, ptr %5, align 8, !tbaa !33
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.t ; 2 uses
  %i.ep = load <4 x float>, ptr %i.eo, align 1, !tbaa !24
  %i.eq = fdiv fast <4 x float> %i.ep, %i.ci
  %i.er = fdiv fast <4 x float> %i.em, %i.bh
  %i.es = fadd fast <4 x float> %i.er, %i.eq      ; 2 uses
  %i.et = fmul fast <4 x float> %i.es, splat (float -2.000000e+00)
  %i.eu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.et, <4 x float> splat (float f0x42B0C0A5))
  %i.ev = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ew = fmul fast <4 x float> %i.ev, splat (float f0x3FB8AA3B)
  %i.ex = fadd fast <4 x float> %i.ew, splat (float 5.000000e-01) ; 2 uses
  %i.ey = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ex)
  %i.ez = sitofp fast <4 x i32> %i.ey to <4 x float> ; 2 uses
  %i.fa = fcmp fast olt <4 x float> %i.ex, %i.ez
  %i.fb = select <4 x i1> %i.fa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fc = fsub fast <4 x float> %i.ez, %i.fb      ; 2 uses
  %i.fd = fneg fast <4 x float> %i.fc             ; 2 uses
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ev)
  %i.ff = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.fd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.fe) ; 8 uses
  %i.fg = fmul fast <4 x float> %i.ff, %i.ff
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.fi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fh, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3C088908))
  %i.fj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3D2AA9C1))
  %i.fk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fj, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float f0x3E2AAAAA))
  %i.fl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.ff, <4 x float> splat (float 5.000000e-01))
  %i.fm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fl, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.ff)
  %i.fn = fadd fast <4 x float> %i.fm, splat (float 1.000000e+00)
  %i.fo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fc)
  %i.fp = shl <4 x i32> %i.fo, splat (i32 23)
  %i.fq = add <4 x i32> %i.fp, splat (i32 1065353216)
  %i.fr = bitcast <4 x i32> %i.fq to <4 x float>
  %i.fs = fmul fast <4 x float> %i.fn, %i.fr
  %i.ft = fadd fast <4 x float> %i.fs, splat (float 1.000000e+00)
  %i.fu = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ft
  %i.fv = fadd fast <4 x float> %i.fu, splat (float -1.000000e+00)
  %i.fw = fdiv fast <4 x float> %i.fv, %i.dj      ; 2 uses
  store <4 x float> %i.es, ptr %i.eo, align 1, !tbaa !24
  %i.fx = load i32, ptr %6, align 4, !tbaa !9
  %i.fy = load i32, ptr %7, align 4, !tbaa !9
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ga = load ptr, ptr %8, align 8, !tbaa !33
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.t
  store <4 x float> %i.fw, ptr %i.gb, align 1, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.gc = load ptr, ptr %.sink, align 8, !tbaa !33
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.t
  store <4 x float> %i.fw, ptr %i.gd, align 1, !tbaa !24
  %i.ge = add i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !9      ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
end_hunk_1
