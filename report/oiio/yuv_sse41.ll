inline.NumInlined: 76
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ConvertRGB24ToY_SSE41:bb.a
  %i.gx = insertelement <4 x i8> %i.gw, i8 %i.gt, i64 1
  %i.gy = insertelement <4 x i8> %i.gx, i8 %i.gu, i64 2
  %i.gz = insertelement <4 x i8> %i.gy, i8 %i.gv, i64 3
  %i.ha = zext <4 x i8> %i.gz to <4 x i32>
  %i.hb = mul nuw nsw <4 x i32> %i.ga, splat (i32 16839)
  %i.hc = mul nuw nsw <4 x i32> %i.gn, splat (i32 33059)
  %i.hd = mul nuw nsw <4 x i32> %i.ha, splat (i32 6420)
  %i.he = add nuw nsw <4 x i32> %i.hb, splat (i32 1081344)
  %i.hf = add nuw nsw <4 x i32> %i.he, %i.hc
  %i.hg = add nuw nsw <4 x i32> %i.hf, %i.hd
  %i.hh = lshr <4 x i32> %i.hg, splat (i32 16)
  %i.hi = trunc nuw <4 x i32> %i.hh to <4 x i8>
  %gep102 = getelementptr i8, ptr %invariant.gep101, i64 %index92
  store <4 x i8> %i.hi, ptr %gep102, align 1, !tbaa !7, !alias.scope !45, !noalias !42
  %index.next97 = add nuw i64 %index92, 4         ; 2 uses
  %i.hj = icmp eq i64 %index.next97, %n.vec91
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n98, label %._crit_edge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv66.ph = phi i64 [ %i.e, %iter.check ], [ %i.e, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ] ; 5 uses
  %.157.ph = phi ptr [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 5 uses
  %i.hk = sub nsw i64 %wide.trip.count, %indvars.iv66.ph
  %xtraiter = and i64 %i.hk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.hl = load i8, ptr %.157.ph, align 1, !tbaa !7
  %i.hm = zext i8 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %.157.ph, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !7
  %i.hp = zext i8 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %.157.ph, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !7
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nuw nsw i32 %i.hm, 16839
  %i.hu = mul nuw nsw i32 %i.hp, 33059
  %i.hv = mul nuw nsw i32 %i.hs, 6420
  %i.hw = add nuw nsw i32 %i.ht, 1081344
  %i.hx = add nuw nsw i32 %i.hw, %i.hu
  %i.hy = add nuw nsw i32 %i.hx, %i.hv
  %i.hz = lshr i32 %i.hy, 16
  %i.ia = trunc nuw i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66.ph
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !7
  %indvars.iv.next67.prol = add nuw nsw i64 %indvars.iv66.ph, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.157.ph, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv66.unr = phi i64 [ %indvars.iv66.ph, %.lr.ph58.preheader ], [ %indvars.iv.next67.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.157.ph, %.lr.ph58.preheader ], [ %i.ic, %.lr.ph58.prol ]
  %i.id = add nsw i64 %wide.trip.count, -1
  %i.ie = icmp eq i64 %indvars.iv66.ph, %i.id
  br i1 %i.ie, label %._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.054 = phi ptr [ %i.nj, %.lr.ph ], [ %0, %bb.a ] ; 7 uses
  %i.if = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.ih = load <16 x i8>, ptr %i.ig, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.ij = load <16 x i8>, ptr %i.ii, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.il = load <16 x i8>, ptr %i.ik, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.in = load <16 x i8>, ptr %i.im, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.ip = load <16 x i8>, ptr %i.io, align 1, !tbaa !7, !alias.scope !50 ; 3 uses
  %i.iq = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.ir = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.is = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.it = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.iu = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.iv = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.iw = or <16 x i8> %i.ir, %i.iq
  %i.ix = or <16 x i8> %i.iu, %i.it
  %i.iy = or <16 x i8> %i.iw, %i.is               ; 2 uses
  %i.iz = or <16 x i8> %i.ix, %i.iv               ; 2 uses
  %i.ja = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jb = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jc = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14>
  %i.jd = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.je = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jf = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14>
  %i.jg = or <16 x i8> %i.jb, %i.ja
  %i.jh = or <16 x i8> %i.je, %i.jd
  %i.ji = or <16 x i8> %i.jg, %i.jc               ; 2 uses
  %i.jj = or <16 x i8> %i.jh, %i.jf               ; 2 uses
  %i.jk = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jl = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jm = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15>
  %i.jn = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jo = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jp = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15>
  %i.jq = or <16 x i8> %i.jl, %i.jk
  %i.jr = or <16 x i8> %i.jo, %i.jn
  %i.js = or <16 x i8> %i.jq, %i.jm               ; 2 uses
  %i.jt = or <16 x i8> %i.jr, %i.jp               ; 2 uses
  %i.ju = shufflevector <16 x i8> %i.iy, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.jv = shufflevector <16 x i8> %i.ji, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 4 uses
  %i.jw = shufflevector <16 x i8> %i.js, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.jx = shufflevector <16 x i8> %i.ju, <16 x i8> %i.jv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.jy = bitcast <16 x i8> %i.jx to <8 x i16>
  %i.jz = shufflevector <16 x i8> %i.ju, <16 x i8> %i.jv, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ka = bitcast <16 x i8> %i.jz to <8 x i16>
  %i.kb = shufflevector <16 x i8> %i.jv, <16 x i8> %i.jw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.kc = bitcast <16 x i8> %i.kb to <8 x i16>
  %i.kd = shufflevector <16 x i8> %i.jv, <16 x i8> %i.jw, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ke = bitcast <16 x i8> %i.kd to <8 x i16>
  %i.kf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jy, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.kg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ka, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.kh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kc, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.ki = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ke, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.kj = add <4 x i32> %i.kf, splat (i32 1081344)
  %i.kk = add <4 x i32> %i.kj, %i.kh
  %i.kl = add <4 x i32> %i.kg, splat (i32 1081344)
  %i.km = add <4 x i32> %i.kl, %i.ki
  %i.kn = ashr <4 x i32> %i.kk, splat (i32 16)
  %i.ko = ashr <4 x i32> %i.km, splat (i32 16)
  %i.kp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kn, <4 x i32> %i.ko)
  %i.kq = shufflevector <16 x i8> %i.iy, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.kr = shufflevector <16 x i8> %i.ji, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.ks = shufflevector <16 x i8> %i.js, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.kt = shufflevector <16 x i8> %i.kq, <16 x i8> %i.kr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ku = bitcast <16 x i8> %i.kt to <8 x i16>
  %i.kv = shufflevector <16 x i8> %i.kq, <16 x i8> %i.kr, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.kw = bitcast <16 x i8> %i.kv to <8 x i16>
  %i.kx = shufflevector <16 x i8> %i.kr, <16 x i8> %i.ks, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ky = bitcast <16 x i8> %i.kx to <8 x i16>
  %i.kz = shufflevector <16 x i8> %i.kr, <16 x i8> %i.ks, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.la = bitcast <16 x i8> %i.kz to <8 x i16>
  %i.lb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ku, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.lc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kw, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ld = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ky, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.le = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.la, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.lf = add <4 x i32> %i.lb, splat (i32 1081344)
  %i.lg = add <4 x i32> %i.lf, %i.ld
  %i.lh = add <4 x i32> %i.lc, splat (i32 1081344)
  %i.li = add <4 x i32> %i.lh, %i.le
  %i.lj = ashr <4 x i32> %i.lg, splat (i32 16)
  %i.lk = ashr <4 x i32> %i.li, splat (i32 16)
  %i.ll = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lj, <4 x i32> %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.a
  %i.ln = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kp, <8 x i16> %i.ll)
  store <16 x i8> %i.ln, ptr %i.lm, align 1, !tbaa !7
  %i.lo = shufflevector <16 x i8> %i.iz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.lp = shufflevector <16 x i8> %i.jj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 4 uses
  %i.lq = shufflevector <16 x i8> %i.jt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.lr = shufflevector <16 x i8> %i.lo, <16 x i8> %i.lp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ls = bitcast <16 x i8> %i.lr to <8 x i16>
  %i.lt = shufflevector <16 x i8> %i.lo, <16 x i8> %i.lp, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.lu = bitcast <16 x i8> %i.lt to <8 x i16>
  %i.lv = shufflevector <16 x i8> %i.lp, <16 x i8> %i.lq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.lw = bitcast <16 x i8> %i.lv to <8 x i16>
  %i.lx = shufflevector <16 x i8> %i.lp, <16 x i8> %i.lq, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ly = bitcast <16 x i8> %i.lx to <8 x i16>
  %i.lz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ls, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ma = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lu, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lw, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.mc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ly, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.md = add <4 x i32> %i.lz, splat (i32 1081344)
  %i.me = add <4 x i32> %i.md, %i.mb
  %i.mf = add <4 x i32> %i.ma, splat (i32 1081344)
  %i.mg = add <4 x i32> %i.mf, %i.mc
  %i.mh = ashr <4 x i32> %i.me, splat (i32 16)
  %i.mi = ashr <4 x i32> %i.mg, splat (i32 16)
  %i.mj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mh, <4 x i32> %i.mi)
  %i.mk = shufflevector <16 x i8> %i.iz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ml = shufflevector <16 x i8> %i.jj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.mm = shufflevector <16 x i8> %i.jt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mn = shufflevector <16 x i8> %i.mk, <16 x i8> %i.ml, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.mo = bitcast <16 x i8> %i.mn to <8 x i16>
  %i.mp = shufflevector <16 x i8> %i.mk, <16 x i8> %i.ml, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.mq = bitcast <16 x i8> %i.mp to <8 x i16>
  %i.mr = shufflevector <16 x i8> %i.ml, <16 x i8> %i.mm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ms = bitcast <16 x i8> %i.mr to <8 x i16>
  %i.mt = shufflevector <16 x i8> %i.ml, <16 x i8> %i.mm, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.mu = bitcast <16 x i8> %i.mt to <8 x i16>
  %i.mv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mo, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mq, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ms, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.my = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mu, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.mz = add <4 x i32> %i.mv, splat (i32 1081344)
  %i.na = add <4 x i32> %i.mz, %i.mx
  %i.nb = add <4 x i32> %i.mw, splat (i32 1081344)
  %i.nc = add <4 x i32> %i.nb, %i.my
  %i.nd = ashr <4 x i32> %i.na, splat (i32 16)
  %i.ne = ashr <4 x i32> %i.nc, splat (i32 16)
  %i.nf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nd, <4 x i32> %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.a
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.mj, <8 x i16> %i.nf)
  store <16 x i8> %i.ni, ptr %i.nh, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 32 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.nk = icmp sgt i32 %i.a, %indvars
  br i1 %i.nk, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !53

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.1, %.lr.ph58 ], [ %indvars.iv66.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.ov, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.nl = load i8, ptr %.157, align 1, !tbaa !7
  %i.nm = zext i8 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !7
  %i.np = zext i8 %i.no to i32
  %i.nq = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !7
  %i.ns = zext i8 %i.nr to i32
  %i.nt = mul nuw nsw i32 %i.nm, 16839
  %i.nu = mul nuw nsw i32 %i.np, 33059
  %i.nv = mul nuw nsw i32 %i.ns, 6420
  %i.nw = add nuw nsw i32 %i.nt, 1081344
  %i.nx = add nuw nsw i32 %i.nw, %i.nu
  %i.ny = add nuw nsw i32 %i.nx, %i.nv
  %i.nz = lshr i32 %i.ny, 16
  %i.oa = trunc nuw i32 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !7
  %i.oc = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !7
  %i.oe = zext i8 %i.od to i32
  %i.of = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.og = load i8, ptr %i.of, align 1, !tbaa !7
  %i.oh = zext i8 %i.og to i32
  %i.oi = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !7
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul nuw nsw i32 %i.oe, 16839
  %i.om = mul nuw nsw i32 %i.oh, 33059
  %i.on = mul nuw nsw i32 %i.ok, 6420
  %i.oo = add nuw nsw i32 %i.ol, 1081344
  %i.op = add nuw nsw i32 %i.oo, %i.om
  %i.oq = add nuw nsw i32 %i.op, %i.on
  %i.or = lshr i32 %i.oq, 16
  %i.os = trunc nuw i32 %i.or to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store i8 %i.os, ptr %i.ou, align 1, !tbaa !7
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next67.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ConvertBGR24ToY_SSE41(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = and i32 %2, -32
  %i.b = icmp sgt i32 %2, 31
  br i1 %i.b, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.c = and i32 %2, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.nj, %.preheader.loopexit ] ; 26 uses
  %i.d = icmp slt i32 %.031.lcssa, %2
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.e = zext nneg i32 %.031.lcssa to i64         ; 9 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %i.f = sub nsw i64 %wide.trip.count, %i.e       ; 4 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph58.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %1, i64 %i.e
  %scevgep71 = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.g = mul nuw nsw i64 %wide.trip.count, 3
  %.neg = mul nsw i64 %i.e, -3
  %i.h = getelementptr i8, ptr %.0.lcssa, i64 %.neg
  %scevgep72 = getelementptr i8, ptr %i.h, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %.0.lcssa, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph58.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i64 %i.f, 16
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 15        ; 3 uses
  %n.vec = sub nuw nsw i64 %i.f, %n.mod.vf        ; 4 uses
  %i.i = add nsw i64 %n.vec, %i.e
  %i.j = mul nsw i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %.0.lcssa, i64 %i.j
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = mul i64 %index, 3                        ; 16 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %i.m = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep74.a = getelementptr i8, ptr %i.m, i64 3
  %i.n = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep75.a = getelementptr i8, ptr %i.n, i64 6
  %i.o = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep76.a = getelementptr i8, ptr %i.o, i64 9
  %i.p = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep77.a = getelementptr i8, ptr %i.p, i64 12
  %i.q = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep78.a = getelementptr i8, ptr %i.q, i64 15
  %i.r = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep79.a = getelementptr i8, ptr %i.r, i64 18
  %i.s = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep80.a = getelementptr i8, ptr %i.s, i64 21
  %i.t = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep81.a = getelementptr i8, ptr %i.t, i64 24
  %i.u = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep82.a = getelementptr i8, ptr %i.u, i64 27
  %i.v = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep83.a = getelementptr i8, ptr %i.v, i64 30
  %i.w = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep84.a = getelementptr i8, ptr %i.w, i64 33
  %i.x = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep85.a = getelementptr i8, ptr %i.x, i64 36
  %i.y = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep86.a = getelementptr i8, ptr %i.y, i64 39
  %i.z = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep87 = getelementptr i8, ptr %i.z, i64 42
  %i.aa = getelementptr i8, ptr %.0.lcssa, i64 %i.l ; 3 uses
  %next.gep88 = getelementptr i8, ptr %i.aa, i64 45
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ac = getelementptr i8, ptr %i.m, i64 5
  %i.ad = getelementptr i8, ptr %i.n, i64 8
  %i.ae = getelementptr i8, ptr %i.o, i64 11
  %i.af = getelementptr i8, ptr %i.p, i64 14
  %i.ag = getelementptr i8, ptr %i.q, i64 17
  %i.ah = getelementptr i8, ptr %i.r, i64 20
  %i.ai = getelementptr i8, ptr %i.s, i64 23
  %i.aj = getelementptr i8, ptr %i.t, i64 26
  %i.ak = getelementptr i8, ptr %i.u, i64 29
  %i.al = getelementptr i8, ptr %i.v, i64 32
  %i.am = getelementptr i8, ptr %i.w, i64 35
  %i.an = getelementptr i8, ptr %i.x, i64 38
  %i.ao = getelementptr i8, ptr %i.y, i64 41
  %i.ap = getelementptr i8, ptr %i.z, i64 44
  %i.aq = getelementptr i8, ptr %i.aa, i64 47
  %i.ar = load i8, ptr %i.ab, align 1, !tbaa !7, !alias.scope !55
  %i.as = load i8, ptr %i.ac, align 1, !tbaa !7, !alias.scope !55
  %i.at = load i8, ptr %i.ad, align 1, !tbaa !7, !alias.scope !55
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !7, !alias.scope !55
  %i.av = load i8, ptr %i.af, align 1, !tbaa !7, !alias.scope !55
  %i.aw = load i8, ptr %i.ag, align 1, !tbaa !7, !alias.scope !55
  %i.ax = load i8, ptr %i.ah, align 1, !tbaa !7, !alias.scope !55
  %i.ay = load i8, ptr %i.ai, align 1, !tbaa !7, !alias.scope !55
  %i.az = load i8, ptr %i.aj, align 1, !tbaa !7, !alias.scope !55
  %i.ba = load i8, ptr %i.ak, align 1, !tbaa !7, !alias.scope !55
  %i.bb = load i8, ptr %i.al, align 1, !tbaa !7, !alias.scope !55
  %i.bc = load i8, ptr %i.am, align 1, !tbaa !7, !alias.scope !55
  %i.bd = load i8, ptr %i.an, align 1, !tbaa !7, !alias.scope !55
  %i.be = load i8, ptr %i.ao, align 1, !tbaa !7, !alias.scope !55
  %i.bf = load i8, ptr %i.ap, align 1, !tbaa !7, !alias.scope !55
  %i.bg = load i8, ptr %i.aq, align 1, !tbaa !7, !alias.scope !55
  %i.bh = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.bi = insertelement <16 x i8> %i.bh, i8 %i.as, i64 1
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 2
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 3
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 4
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 5
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 6
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 7
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 8
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 9
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 10
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 11
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 12
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 13
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 14
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 15
  %i.bx = zext <16 x i8> %i.bw to <16 x i32>
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.bz = getelementptr i8, ptr %i.m, i64 4
  %i.ca = getelementptr i8, ptr %i.n, i64 7
  %i.cb = getelementptr i8, ptr %i.o, i64 10
  %i.cc = getelementptr i8, ptr %i.p, i64 13
  %i.cd = getelementptr i8, ptr %i.q, i64 16
  %i.ce = getelementptr i8, ptr %i.r, i64 19
  %i.cf = getelementptr i8, ptr %i.s, i64 22
  %i.cg = getelementptr i8, ptr %i.t, i64 25
  %i.ch = getelementptr i8, ptr %i.u, i64 28
  %i.ci = getelementptr i8, ptr %i.v, i64 31
  %i.cj = getelementptr i8, ptr %i.w, i64 34
  %i.ck = getelementptr i8, ptr %i.x, i64 37
  %i.cl = getelementptr i8, ptr %i.y, i64 40
end_hunk_0
begin_hunk_1_@ConvertBGR24ToY_SSE41:bb.a
  %i.gx = insertelement <4 x i8> %i.gw, i8 %i.gt, i64 1
  %i.gy = insertelement <4 x i8> %i.gx, i8 %i.gu, i64 2
  %i.gz = insertelement <4 x i8> %i.gy, i8 %i.gv, i64 3
  %i.ha = zext <4 x i8> %i.gz to <4 x i32>
  %i.hb = mul nuw nsw <4 x i32> %i.ge, splat (i32 16839)
  %i.hc = mul nuw nsw <4 x i32> %i.gr, splat (i32 33059)
  %i.hd = mul nuw nsw <4 x i32> %i.ha, splat (i32 6420)
  %i.he = add nuw nsw <4 x i32> %i.hb, splat (i32 1081344)
  %i.hf = add nuw nsw <4 x i32> %i.he, %i.hc
  %i.hg = add nuw nsw <4 x i32> %i.hf, %i.hd
  %i.hh = lshr <4 x i32> %i.hg, splat (i32 16)
  %i.hi = trunc nuw <4 x i32> %i.hh to <4 x i8>
  %gep102 = getelementptr i8, ptr %invariant.gep101, i64 %index92
  store <4 x i8> %i.hi, ptr %gep102, align 1, !tbaa !7, !alias.scope !58, !noalias !55
  %index.next97 = add nuw i64 %index92, 4         ; 2 uses
  %i.hj = icmp eq i64 %index.next97, %n.vec91
  br i1 %i.hj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %n.mod.vf90, 0
  br i1 %cmp.n98, label %._crit_edge, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv66.ph = phi i64 [ %i.e, %iter.check ], [ %i.e, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ] ; 5 uses
  %.157.ph = phi ptr [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 5 uses
  %i.hk = sub nsw i64 %wide.trip.count, %indvars.iv66.ph
  %xtraiter = and i64 %i.hk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader
  %i.hl = getelementptr inbounds nuw i8, ptr %.157.ph, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !7
  %i.hn = zext i8 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %.157.ph, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !7
  %i.hq = zext i8 %i.hp to i32
  %i.hr = load i8, ptr %.157.ph, align 1, !tbaa !7
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nuw nsw i32 %i.hn, 16839
  %i.hu = mul nuw nsw i32 %i.hq, 33059
  %i.hv = mul nuw nsw i32 %i.hs, 6420
  %i.hw = add nuw nsw i32 %i.ht, 1081344
  %i.hx = add nuw nsw i32 %i.hw, %i.hu
  %i.hy = add nuw nsw i32 %i.hx, %i.hv
  %i.hz = lshr i32 %i.hy, 16
  %i.ia = trunc nuw i32 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66.ph
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !7
  %indvars.iv.next67.prol = add nuw nsw i64 %indvars.iv66.ph, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.157.ph, i64 3
  br label %.lr.ph58.prol.loopexit

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader
  %indvars.iv66.unr = phi i64 [ %indvars.iv66.ph, %.lr.ph58.preheader ], [ %indvars.iv.next67.prol, %.lr.ph58.prol ]
  %.157.unr = phi ptr [ %.157.ph, %.lr.ph58.preheader ], [ %i.ic, %.lr.ph58.prol ]
  %i.id = add nsw i64 %wide.trip.count, -1
  %i.ie = icmp eq i64 %indvars.iv66.ph, %i.id
  br i1 %i.ie, label %._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.054 = phi ptr [ %i.nj, %.lr.ph ], [ %0, %bb.a ] ; 7 uses
  %i.if = load <16 x i8>, ptr %.054, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.ih = load <16 x i8>, ptr %i.ig, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.ij = load <16 x i8>, ptr %i.ii, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.il = load <16 x i8>, ptr %i.ik, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.in = load <16 x i8>, ptr %i.im, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.054, i64 80
  %i.ip = load <16 x i8>, ptr %i.io, align 1, !tbaa !7, !alias.scope !62 ; 3 uses
  %i.iq = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.ir = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.is = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.it = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.iu = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.iv = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13>
  %i.iw = or <16 x i8> %i.ir, %i.iq
  %i.ix = or <16 x i8> %i.iu, %i.it
  %i.iy = or <16 x i8> %i.iw, %i.is               ; 2 uses
  %i.iz = or <16 x i8> %i.ix, %i.iv               ; 2 uses
  %i.ja = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jb = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jc = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14>
  %i.jd = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.je = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jf = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 2, i32 5, i32 8, i32 11, i32 14>
  %i.jg = or <16 x i8> %i.jb, %i.ja
  %i.jh = or <16 x i8> %i.je, %i.jd
  %i.ji = or <16 x i8> %i.jg, %i.jc               ; 2 uses
  %i.jj = or <16 x i8> %i.jh, %i.jf               ; 2 uses
  %i.jk = shufflevector <16 x i8> %i.if, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jl = shufflevector <16 x i8> %i.ih, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jm = shufflevector <16 x i8> %i.ij, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15>
  %i.jn = shufflevector <16 x i8> %i.il, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jo = shufflevector <16 x i8> %i.in, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.jp = shufflevector <16 x i8> %i.ip, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15>
  %i.jq = or <16 x i8> %i.jl, %i.jk
  %i.jr = or <16 x i8> %i.jo, %i.jn
  %i.js = or <16 x i8> %i.jq, %i.jm               ; 2 uses
  %i.jt = or <16 x i8> %i.jr, %i.jp               ; 2 uses
  %i.ju = shufflevector <16 x i8> %i.iy, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.jv = shufflevector <16 x i8> %i.ji, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 4 uses
  %i.jw = shufflevector <16 x i8> %i.js, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.jx = shufflevector <16 x i8> %i.jw, <16 x i8> %i.jv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.jy = bitcast <16 x i8> %i.jx to <8 x i16>
  %i.jz = shufflevector <16 x i8> %i.jw, <16 x i8> %i.jv, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ka = bitcast <16 x i8> %i.jz to <8 x i16>
  %i.kb = shufflevector <16 x i8> %i.jv, <16 x i8> %i.ju, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.kc = bitcast <16 x i8> %i.kb to <8 x i16>
  %i.kd = shufflevector <16 x i8> %i.jv, <16 x i8> %i.ju, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ke = bitcast <16 x i8> %i.kd to <8 x i16>
  %i.kf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.jy, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.kg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ka, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.kh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kc, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.ki = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ke, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.kj = add <4 x i32> %i.kf, splat (i32 1081344)
  %i.kk = add <4 x i32> %i.kj, %i.kh
  %i.kl = add <4 x i32> %i.kg, splat (i32 1081344)
  %i.km = add <4 x i32> %i.kl, %i.ki
  %i.kn = ashr <4 x i32> %i.kk, splat (i32 16)
  %i.ko = ashr <4 x i32> %i.km, splat (i32 16)
  %i.kp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kn, <4 x i32> %i.ko)
  %i.kq = shufflevector <16 x i8> %i.iy, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.kr = shufflevector <16 x i8> %i.ji, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.ks = shufflevector <16 x i8> %i.js, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.kt = shufflevector <16 x i8> %i.ks, <16 x i8> %i.kr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ku = bitcast <16 x i8> %i.kt to <8 x i16>
  %i.kv = shufflevector <16 x i8> %i.ks, <16 x i8> %i.kr, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.kw = bitcast <16 x i8> %i.kv to <8 x i16>
  %i.kx = shufflevector <16 x i8> %i.kr, <16 x i8> %i.kq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ky = bitcast <16 x i8> %i.kx to <8 x i16>
  %i.kz = shufflevector <16 x i8> %i.kr, <16 x i8> %i.kq, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.la = bitcast <16 x i8> %i.kz to <8 x i16>
  %i.lb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ku, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.lc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.kw, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ld = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ky, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.le = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.la, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.lf = add <4 x i32> %i.lb, splat (i32 1081344)
  %i.lg = add <4 x i32> %i.lf, %i.ld
  %i.lh = add <4 x i32> %i.lc, splat (i32 1081344)
  %i.li = add <4 x i32> %i.lh, %i.le
  %i.lj = ashr <4 x i32> %i.lg, splat (i32 16)
  %i.lk = ashr <4 x i32> %i.li, splat (i32 16)
  %i.ll = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.lj, <4 x i32> %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.a
  %i.ln = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kp, <8 x i16> %i.ll)
  store <16 x i8> %i.ln, ptr %i.lm, align 1, !tbaa !7
  %i.lo = shufflevector <16 x i8> %i.iz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.lp = shufflevector <16 x i8> %i.jj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 4 uses
  %i.lq = shufflevector <16 x i8> %i.jt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.lr = shufflevector <16 x i8> %i.lq, <16 x i8> %i.lp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ls = bitcast <16 x i8> %i.lr to <8 x i16>
  %i.lt = shufflevector <16 x i8> %i.lq, <16 x i8> %i.lp, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.lu = bitcast <16 x i8> %i.lt to <8 x i16>
  %i.lv = shufflevector <16 x i8> %i.lp, <16 x i8> %i.lo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.lw = bitcast <16 x i8> %i.lv to <8 x i16>
  %i.lx = shufflevector <16 x i8> %i.lp, <16 x i8> %i.lo, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.ly = bitcast <16 x i8> %i.lx to <8 x i16>
  %i.lz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ls, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.ma = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lu, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.lw, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.mc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ly, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.md = add <4 x i32> %i.lz, splat (i32 1081344)
  %i.me = add <4 x i32> %i.md, %i.mb
  %i.mf = add <4 x i32> %i.ma, splat (i32 1081344)
  %i.mg = add <4 x i32> %i.mf, %i.mc
  %i.mh = ashr <4 x i32> %i.me, splat (i32 16)
  %i.mi = ashr <4 x i32> %i.mg, splat (i32 16)
  %i.mj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mh, <4 x i32> %i.mi)
  %i.mk = shufflevector <16 x i8> %i.iz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ml = shufflevector <16 x i8> %i.jj, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 4 uses
  %i.mm = shufflevector <16 x i8> %i.jt, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mn = shufflevector <16 x i8> %i.mm, <16 x i8> %i.ml, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.mo = bitcast <16 x i8> %i.mn to <8 x i16>
  %i.mp = shufflevector <16 x i8> %i.mm, <16 x i8> %i.ml, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.mq = bitcast <16 x i8> %i.mp to <8 x i16>
  %i.mr = shufflevector <16 x i8> %i.ml, <16 x i8> %i.mk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.ms = bitcast <16 x i8> %i.mr to <8 x i16>
  %i.mt = shufflevector <16 x i8> %i.ml, <16 x i8> %i.mk, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.mu = bitcast <16 x i8> %i.mt to <8 x i16>
  %i.mv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mo, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mq, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.mx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ms, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.my = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.mu, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.mz = add <4 x i32> %i.mv, splat (i32 1081344)
  %i.na = add <4 x i32> %i.mz, %i.mx
  %i.nb = add <4 x i32> %i.mw, splat (i32 1081344)
  %i.nc = add <4 x i32> %i.nb, %i.my
  %i.nd = ashr <4 x i32> %i.na, splat (i32 16)
  %i.ne = ashr <4 x i32> %i.nc, splat (i32 16)
  %i.nf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nd, <4 x i32> %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.a
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.mj, <8 x i16> %i.nf)
  store <16 x i8> %i.ni, ptr %i.nh, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 32 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %.054, i64 96 ; 2 uses
  %i.nk = icmp sgt i32 %i.a, %indvars
  br i1 %i.nk, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !65

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.1, %.lr.ph58 ], [ %indvars.iv66.unr, %.lr.ph58.prol.loopexit ] ; 3 uses
  %.157 = phi ptr [ %i.ov, %.lr.ph58 ], [ %.157.unr, %.lr.ph58.prol.loopexit ] ; 7 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.157, i64 2
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !7
  %i.nn = zext i8 %i.nm to i32
  %i.no = getelementptr inbounds nuw i8, ptr %.157, i64 1
  %i.np = load i8, ptr %i.no, align 1, !tbaa !7
  %i.nq = zext i8 %i.np to i32
  %i.nr = load i8, ptr %.157, align 1, !tbaa !7
  %i.ns = zext i8 %i.nr to i32
  %i.nt = mul nuw nsw i32 %i.nn, 16839
  %i.nu = mul nuw nsw i32 %i.nq, 33059
  %i.nv = mul nuw nsw i32 %i.ns, 6420
  %i.nw = add nuw nsw i32 %i.nt, 1081344
  %i.nx = add nuw nsw i32 %i.nw, %i.nu
  %i.ny = add nuw nsw i32 %i.nx, %i.nv
  %i.nz = lshr i32 %i.ny, 16
  %i.oa = trunc nuw i32 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !7
  %i.oc = getelementptr inbounds nuw i8, ptr %.157, i64 3
  %i.od = getelementptr inbounds nuw i8, ptr %.157, i64 5
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !7
  %i.of = zext i8 %i.oe to i32
  %i.og = getelementptr inbounds nuw i8, ptr %.157, i64 4
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !7
  %i.oi = zext i8 %i.oh to i32
  %i.oj = load i8, ptr %i.oc, align 1, !tbaa !7
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul nuw nsw i32 %i.of, 16839
  %i.om = mul nuw nsw i32 %i.oi, 33059
  %i.on = mul nuw nsw i32 %i.ok, 6420
  %i.oo = add nuw nsw i32 %i.ol, 1081344
  %i.op = add nuw nsw i32 %i.oo, %i.om
  %i.oq = add nuw nsw i32 %i.op, %i.on
  %i.or = lshr i32 %i.oq, 16
  %i.os = trunc nuw i32 %i.or to i8
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv66
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store i8 %i.os, ptr %i.ou, align 1, !tbaa !7
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.157, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next67.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph58, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertRGBA32ToUV_SSE41(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3) #3 {
bb.a:
  %i.a = and i32 %3, -16                          ; 2 uses
  %i.b = shl nsw i32 %i.a, 2
  %i.c = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.c, 1
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.e = icmp sgt i32 %3, 15
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.046 = phi ptr [ %i.dq, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.01845 = phi ptr [ %i.do, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.01944 = phi ptr [ %i.dp, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.f = load <16 x i8>, ptr %.046, align 1, !tbaa !7, !alias.scope !67
  %i.g = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.h = load <16 x i8>, ptr %i.g, align 1, !tbaa !7, !alias.scope !67
  %i.i = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !7, !alias.scope !67
  %i.k = getelementptr inbounds nuw i8, ptr %.046, i64 48
  %i.l = load <16 x i8>, ptr %i.k, align 1, !tbaa !7, !alias.scope !67
  %i.m = shufflevector <16 x i8> %i.f, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 16, i32 16, i32 16, i32 16> ; 2 uses
  %i.n = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.o = shufflevector <16 x i8> %i.j, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 16, i32 16, i32 16, i32 16> ; 2 uses
  %i.p = shufflevector <16 x i8> %i.l, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.q = bitcast <16 x i8> %i.m to <4 x i32>
  %i.r = bitcast <16 x i8> %i.n to <4 x i32>
  %i.s = shufflevector <4 x i32> %i.q, <4 x i32> %i.r, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.t = bitcast <4 x i32> %i.s to <2 x i64>      ; 2 uses
  %i.u = or <16 x i8> %i.n, %i.m
  %i.v = bitcast <16 x i8> %i.u to <2 x i64>
  %i.w = bitcast <16 x i8> %i.o to <4 x i32>
  %i.x = bitcast <16 x i8> %i.p to <4 x i32>
  %i.y = shufflevector <4 x i32> %i.w, <4 x i32> %i.x, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>      ; 2 uses
  %i.aa = or <16 x i8> %i.p, %i.o
  %i.ab = bitcast <16 x i8> %i.aa to <2 x i64>
  %i.ac = shufflevector <2 x i64> %i.t, <2 x i64> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x i64> %i.t, <2 x i64> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ae = shufflevector <2 x i64> %i.v, <2 x i64> %i.ab, <2 x i32> <i32 1, i32 3>
  %i.af = bitcast <2 x i64> %i.ac to <8 x i16>    ; 2 uses
  %i.ag = bitcast <2 x i64> %i.ad to <8 x i16>    ; 4 uses
  %i.ah = shufflevector <8 x i16> %i.af, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ai = shufflevector <8 x i16> %i.af, <8 x i16> %i.ag, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aj = bitcast <2 x i64> %i.ae to <8 x i16>    ; 2 uses
  %i.ak = shufflevector <8 x i16> %i.ag, <8 x i16> %i.aj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.al = shufflevector <8 x i16> %i.ag, <8 x i16> %i.aj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.am = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ah, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.an = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ai, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.ao = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ak, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ap = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.al, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.aq = add <4 x i32> %i.am, splat (i32 33685504)
  %i.ar = add <4 x i32> %i.aq, %i.ao
  %i.as = add <4 x i32> %i.an, splat (i32 33685504)
  %i.at = add <4 x i32> %i.as, %i.ap
  %i.au = ashr <4 x i32> %i.ar, splat (i32 18)
  %i.av = ashr <4 x i32> %i.at, splat (i32 18)
  %i.aw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.au, <4 x i32> %i.av)
  %i.ax = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ah, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ay = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ai, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.az = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ak, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ba = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.al, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.bb = add <4 x i32> %i.ax, splat (i32 33685504)
  %i.bc = add <4 x i32> %i.bb, %i.az
  %i.bd = add <4 x i32> %i.ay, splat (i32 33685504)
  %i.be = add <4 x i32> %i.bd, %i.ba
  %i.bf = ashr <4 x i32> %i.bc, splat (i32 18)
  %i.bg = ashr <4 x i32> %i.be, splat (i32 18)
  %i.bh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bf, <4 x i32> %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %.046, i64 64
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !tbaa !7, !alias.scope !70
  %i.bk = getelementptr inbounds nuw i8, ptr %.046, i64 80
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !7, !alias.scope !70
  %i.bm = getelementptr inbounds nuw i8, ptr %.046, i64 96
  %i.bn = load <16 x i8>, ptr %i.bm, align 1, !tbaa !7, !alias.scope !70
  %i.bo = getelementptr inbounds nuw i8, ptr %.046, i64 112
  %i.bp = load <16 x i8>, ptr %i.bo, align 1, !tbaa !7, !alias.scope !70
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 16, i32 16, i32 16, i32 16> ; 2 uses
  %i.br = shufflevector <16 x i8> %i.bl, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bn, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 4, i32 5, i32 12, i32 13, i32 16, i32 16, i32 16, i32 16> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11, i32 16, i32 16, i32 16, i32 16, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bu = bitcast <16 x i8> %i.bq to <4 x i32>
  %i.bv = bitcast <16 x i8> %i.br to <4 x i32>
  %i.bw = shufflevector <4 x i32> %i.bu, <4 x i32> %i.bv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bx = bitcast <4 x i32> %i.bw to <2 x i64>    ; 2 uses
  %i.by = or <16 x i8> %i.br, %i.bq
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = bitcast <16 x i8> %i.bs to <4 x i32>
  %i.cb = bitcast <16 x i8> %i.bt to <4 x i32>
  %i.cc = shufflevector <4 x i32> %i.ca, <4 x i32> %i.cb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>    ; 2 uses
  %i.ce = or <16 x i8> %i.bt, %i.bs
  %i.cf = bitcast <16 x i8> %i.ce to <2 x i64>
  %i.cg = shufflevector <2 x i64> %i.bx, <2 x i64> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x i64> %i.bx, <2 x i64> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.ci = shufflevector <2 x i64> %i.bz, <2 x i64> %i.cf, <2 x i32> <i32 1, i32 3>
  %i.cj = bitcast <2 x i64> %i.cg to <8 x i16>    ; 2 uses
  %i.ck = bitcast <2 x i64> %i.ch to <8 x i16>    ; 4 uses
  %i.cl = shufflevector <8 x i16> %i.cj, <8 x i16> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cm = shufflevector <8 x i16> %i.cj, <8 x i16> %i.ck, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cn = bitcast <2 x i64> %i.ci to <8 x i16>    ; 2 uses
  %i.co = shufflevector <8 x i16> %i.ck, <8 x i16> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.cp = shufflevector <8 x i16> %i.ck, <8 x i16> %i.cn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cl, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.cr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.cs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ct = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.cu = add <4 x i32> %i.cq, splat (i32 33685504)
  %i.cv = add <4 x i32> %i.cu, %i.cs
  %i.cw = add <4 x i32> %i.cr, splat (i32 33685504)
  %i.cx = add <4 x i32> %i.cw, %i.ct
  %i.cy = ashr <4 x i32> %i.cv, splat (i32 18)
  %i.cz = ashr <4 x i32> %i.cx, splat (i32 18)
  %i.da = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cy, <4 x i32> %i.cz)
  %i.db = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cl, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.co, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.df = add <4 x i32> %i.db, splat (i32 33685504)
  %i.dg = add <4 x i32> %i.df, %i.dd
  %i.dh = add <4 x i32> %i.dc, splat (i32 33685504)
  %i.di = add <4 x i32> %i.dh, %i.de
  %i.dj = ashr <4 x i32> %i.dg, splat (i32 18)
  %i.dk = ashr <4 x i32> %i.di, splat (i32 18)
  %i.dl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dj, <4 x i32> %i.dk)
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aw, <8 x i16> %i.da)
  store <16 x i8> %i.dm, ptr %.01845, align 1, !tbaa !7
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bh, <8 x i16> %i.dl)
  store <16 x i8> %i.dn, ptr %.01944, align 1, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %.01845, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01944, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.046, i64 128 ; 3 uses
  %i.dr = icmp ult ptr %i.dq, %i.d
  br i1 %i.dr, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %i.dp, %.lr.ph ]
  %.018.lcssa = phi ptr [ %1, %bb.a ], [ %i.do, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dq, %.lr.ph ]
  %.not = icmp eq i32 %i.a, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ds = and i32 %3, 15
  tail call void @WebPConvertRGBA32ToUV_C(ptr noundef %.0.lcssa, ptr noundef %.018.lcssa, ptr noundef %.019.lcssa, i32 noundef %i.ds) #7
end_hunk_1
