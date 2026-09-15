Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_XBGR2101010_to_P010:bb.a
  %i.eq = shl nuw nsw i64 %indvars.iv218, 1       ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.eq
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %i.eq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.1166192, i64 4 ; 2 uses
  %i.ey = load <2 x i32>, ptr %i.er, align 4      ; 2 uses
  %i.ez = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.fa = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.fb = and <3 x i32> %i.fa, <i32 1072693248, i32 1023, i32 1047552>
  %i.fc = and <3 x i32> %i.ez, <i32 1072693248, i32 1023, i32 1047552>
  %i.fd = add nuw nsw <3 x i32> %i.fc, %i.fb
  %i.fe = insertelement <3 x i32> poison, i32 %i.et, i64 0
  %i.ff = shufflevector <3 x i32> %i.fe, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fg = and <3 x i32> %i.ff, <i32 1072693248, i32 1023, i32 1047552>
  %i.fh = add nuw <3 x i32> %i.fd, %i.fg
  %i.fi = insertelement <3 x i32> poison, i32 %i.ew, i64 0
  %i.fj = shufflevector <3 x i32> %i.fi, <3 x i32> poison, <3 x i32> zeroinitializer
  %i.fk = and <3 x i32> %i.fj, <i32 1072693248, i32 1023, i32 1047552>
  %i.fl = add nuw <3 x i32> %i.fh, %i.fk
  %i.fm = lshr <3 x i32> %i.fl, <i32 22, i32 2, i32 12>
  %i.fn = uitofp nneg <3 x i32> %i.fm to <3 x float> ; 3 uses
  %i.fo = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fp = fmul <2 x float> %i.en, %i.fo
  %i.fq = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.fq, <2 x float> %i.fp)
  %i.fs = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.fs, <2 x float> %i.fr)
  %i.fu = fadd <2 x float> %i.ft, splat (float 5.000000e-01)
  %i.fv = fptosi <2 x float> %i.fu to <2 x i32>
  %i.fw = trunc <2 x i32> %i.fv to <2 x i16>
  %i.fx = shl <2 x i16> %i.fw, splat (i16 6)
  %i.fy = xor <2 x i16> %i.fx, splat (i16 -32768)
  store <2 x i16> %i.fy, ptr %.1166192, align 2
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge194, label %scalar.ph25, !llvm.loop !116

._crit_edge194:                                   ; preds = %scalar.ph25, %middle.block49, %.preheader184
  %.1166.lcssa = phi ptr [ %.0165197, %.preheader184 ], [ %i.ct, %middle.block49 ], [ %i.ex, %scalar.ph25 ] ; 3 uses
  %.1.lcssa.shrunk = phi i32 [ 0, %.preheader184 ], [ %i.ch, %middle.block49 ], [ %i.ch, %scalar.ph25 ]
  br i1 %.not173, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge194
  %.1.lcssa = zext nneg i32 %.1.lcssa.shrunk to i64 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.1163199, i64 %.1.lcssa
  %i.ga = load i32, ptr %i.fz, align 4            ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.0164198, i64 %.1.lcssa
  %i.gc = load i32, ptr %i.gb, align 4            ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1166.lcssa, i64 4
  %i.ge = and i32 %i.ga, 1047552
  %i.gf = and i32 %i.ga, 1023
  %i.gg = and i32 %i.ga, 1072693248
  %i.gh = and i32 %i.gc, 1047552
  %i.gi = and i32 %i.gc, 1023
  %i.gj = and i32 %i.gc, 1072693248
  %i.gk = add nuw nsw i32 %i.gh, %i.ge
  %i.gl = add nuw nsw i32 %i.gi, %i.gf
  %i.gm = add nuw nsw i32 %i.gj, %i.gg
  %i.gn = lshr i32 %i.gk, 11
  %i.go = lshr i32 %i.gl, 1
  %i.gp = lshr i32 %i.gm, 21
  %i.gq = uitofp nneg i32 %i.gn to float
  %i.gr = uitofp nneg i32 %i.go to float
  %i.gs = uitofp nneg i32 %i.gp to float
  %i.gt = load <4 x float>, ptr %i.cd, align 8    ; 3 uses
  %i.gu = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.gv = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gt, <4 x float> %i.gw, <2 x i32> <i32 1, i32 4>
  %i.gy = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gx, %i.gz
  %i.hb = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hc = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hd, <2 x float> %i.ha)
  %i.hf = shufflevector <2 x float> %i.gv, <2 x float> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.hg = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hh, <2 x float> %i.he)
  %i.hj = fadd <2 x float> %i.hi, splat (float 5.000000e-01)
  %i.hk = fptosi <2 x float> %i.hj to <2 x i32>
  %i.hl = trunc <2 x i32> %i.hk to <2 x i16>
  %i.hm = shl <2 x i16> %i.hl, splat (i16 6)
  %i.hn = xor <2 x i16> %i.hm, splat (i16 -32768)
  store <2 x i16> %i.hn, ptr %.1166.lcssa, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge194
  %.2167 = phi ptr [ %i.gd, %bb.b ], [ %.1166.lcssa, %._crit_edge194 ]
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.2167, i64 %i.cf ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.1163199, i64 %i.cg ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.0164198, i64 %i.cg
  %i.hr = add nuw nsw i32 %.1161200, 1            ; 2 uses
  %exitcond223.not = icmp eq i32 %i.hr, %i.b
  br i1 %exitcond223.not, label %._crit_edge201, label %.preheader184, !llvm.loop !117

._crit_edge201:                                   ; preds = %bb.c, %bb.a, %._crit_edge191.split
  %.0165.lcssa = phi ptr [ %i.p, %._crit_edge191.split ], [ %i.p, %bb.a ], [ %i.ho, %bb.c ] ; 7 uses
  %.1163.lcssa = phi ptr [ %2, %._crit_edge191.split ], [ %2, %bb.a ], [ %i.hp, %bb.c ] ; 5 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge201
  %i.hs = icmp sgt i32 %0, 1
  br i1 %i.hs, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hv = load <4 x float>, ptr %i.ht, align 8    ; 7 uses
  %i.hw = load <2 x float>, ptr %i.hu, align 8    ; 4 uses
  %wide.trip.count227 = zext nneg i32 %i.d to i64 ; 5 uses
  %min.iters.check60 = icmp ult i32 %0, 8
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph206
  %i.hx = shl nuw nsw i64 %wide.trip.count227, 2
  %scevgep54 = getelementptr i8, ptr %.0165.lcssa, i64 %i.hx
  %i.hy = shl nuw nsw i64 %wide.trip.count227, 3
  %scevgep55 = getelementptr i8, ptr %.1163.lcssa, i64 %i.hy
  %bound056 = icmp ult ptr %.0165.lcssa, %scevgep55
  %bound157 = icmp ult ptr %.1163.lcssa, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %wide.trip.count227, 1073741820 ; 4 uses
  %i.hz = shl nuw nsw i64 %n.vec62, 2
  %i.ia = getelementptr i8, ptr %.0165.lcssa, i64 %i.hz ; 2 uses
  %broadcast.splat64 = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat66 = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat68 = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat70 = shufflevector <4 x float> %i.hv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat72 = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat74 = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph61
  %index76 = phi i64 [ 0, %vector.ph61 ], [ %index.next82, %vector.body75 ] ; 3 uses
  %i.ib = shl i64 %index76, 2
  %next.gep77 = getelementptr i8, ptr %.0165.lcssa, i64 %i.ib
  %i.ic = shl nuw nsw i64 %index76, 3
  %i.id = getelementptr inbounds nuw i8, ptr %.1163.lcssa, i64 %i.ic
  %wide.vec78 = load <8 x i32>, ptr %i.id, align 4, !alias.scope !129 ; 2 uses
  %strided.vec79 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec80 = shufflevector <8 x i32> %wide.vec78, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.ie = and <4 x i32> %strided.vec79, splat (i32 1023)
  %i.if = and <4 x i32> %strided.vec80, splat (i32 1023)
  %i.ig = add nuw nsw <4 x i32> %i.if, %i.ie
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 1)
  %i.ii = and <4 x i32> %strided.vec79, splat (i32 1047552)
  %i.ij = and <4 x i32> %strided.vec80, splat (i32 1047552)
  %i.ik = add nuw nsw <4 x i32> %i.ij, %i.ii
  %i.il = lshr <4 x i32> %i.ik, splat (i32 11)
  %i.im = and <4 x i32> %strided.vec79, splat (i32 1072693248)
  %i.in = and <4 x i32> %strided.vec80, splat (i32 1072693248)
  %i.io = add nuw nsw <4 x i32> %i.in, %i.im
  %i.ip = lshr <4 x i32> %i.io, splat (i32 21)
  %i.iq = uitofp nneg <4 x i32> %i.ih to <4 x float> ; 2 uses
  %i.ir = uitofp nneg <4 x i32> %i.il to <4 x float> ; 2 uses
  %i.is = fmul <4 x float> %broadcast.splat66, %i.ir
  %i.it = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat64, <4 x float> %i.iq, <4 x float> %i.is)
  %i.iu = uitofp nneg <4 x i32> %i.ip to <4 x float> ; 2 uses
  %i.iv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat68, <4 x float> %i.iu, <4 x float> %i.it)
  %i.iw = fmul <4 x float> %broadcast.splat72, %i.ir
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat70, <4 x float> %i.iq, <4 x float> %i.iw)
  %i.iy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat74, <4 x float> %i.iu, <4 x float> %i.ix)
  %i.iz = shufflevector <4 x float> %i.iv, <4 x float> %i.iy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ja = fadd <8 x float> %i.iz, splat (float 5.000000e-01)
  %i.jb = fptosi <8 x float> %i.ja to <8 x i32>
  %i.jc = trunc <8 x i32> %i.jb to <8 x i16>
  %i.jd = shl <8 x i16> %i.jc, splat (i16 6)
  %interleaved.vec81 = xor <8 x i16> %i.jd, splat (i16 -32768)
  store <8 x i16> %interleaved.vec81, ptr %next.gep77, align 2, !alias.scope !130, !noalias !129
  %index.next82 = add nuw i64 %index76, 4         ; 2 uses
  %i.je = icmp eq i64 %index.next82, %n.vec62
  br i1 %i.je, label %middle.block83, label %vector.body75, !llvm.loop !121

middle.block83:                                   ; preds = %vector.body75
  %cmp.n84 = icmp eq i64 %n.vec62, %wide.trip.count227
  br i1 %cmp.n84, label %._crit_edge207.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck53, %.lr.ph206, %middle.block83
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck53 ], [ 0, %.lr.ph206 ], [ %n.vec62, %middle.block83 ]
  %.3204.ph = phi ptr [ %.0165.lcssa, %vector.memcheck53 ], [ %.0165.lcssa, %.lr.ph206 ], [ %i.ia, %middle.block83 ]
  %i.jf = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jg = shufflevector <2 x float> %i.hw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jh = shufflevector <4 x float> %i.hv, <4 x float> %i.jg, <2 x i32> <i32 1, i32 4>
  %i.ji = shufflevector <4 x float> %i.hv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jj = shufflevector <2 x float> %i.jf, <2 x float> %i.hw, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %scalar.ph59 ], [ %indvars.iv224.ph, %scalar.ph59.preheader ] ; 2 uses
  %.3204 = phi ptr [ %i.jl, %scalar.ph59 ], [ %.3204.ph, %scalar.ph59.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv224, 3
  %i.jk = getelementptr inbounds nuw i8, ptr %.1163.lcssa, i64 %.idx
  %i.jl = getelementptr inbounds nuw i8, ptr %.3204, i64 4 ; 2 uses
  %7 = load <2 x i32>, ptr %i.jk, align 4         ; 2 uses
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %9 = shufflevector <2 x i32> %7, <2 x i32> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %10 = and <3 x i32> %9, <i32 1072693248, i32 1023, i32 1047552>
  %11 = and <3 x i32> %8, <i32 1072693248, i32 1023, i32 1047552>
  %12 = add nuw nsw <3 x i32> %11, %10
  %13 = lshr <3 x i32> %12, <i32 21, i32 1, i32 11>
  %14 = uitofp nneg <3 x i32> %13 to <3 x float>  ; 3 uses
  %15 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jm = fmul <2 x float> %i.jh, %15
  %16 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %16, <2 x float> %i.jm)
  %i.jo = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jj, <2 x float> %i.jo, <2 x float> %i.jn)
  %i.jq = fadd <2 x float> %i.jp, splat (float 5.000000e-01)
  %i.jr = fptosi <2 x float> %i.jq to <2 x i32>
  %i.js = trunc <2 x i32> %i.jr to <2 x i16>
  %i.jt = shl <2 x i16> %i.js, splat (i16 6)
  %i.ju = xor <2 x i16> %i.jt, splat (i16 -32768)
  store <2 x i16> %i.ju, ptr %.3204, align 2
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge207.loopexit, label %scalar.ph59, !llvm.loop !122

._crit_edge207.loopexit:                          ; preds = %scalar.ph59, %middle.block83
  %.lcssa = phi ptr [ %i.ia, %middle.block83 ], [ %i.jl, %scalar.ph59 ]
  %i.jv = shl nuw nsw i32 %i.d, 1
  %i.jw = zext nneg i32 %i.jv to i64
  br label %._crit_edge207

._crit_edge207:                                   ; preds = %._crit_edge207.loopexit, %.preheader
  %.3.lcssa = phi ptr [ %.0165.lcssa, %.preheader ], [ %.lcssa, %._crit_edge207.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.jw, %._crit_edge207.loopexit ]
  %.not169 = icmp eq i32 %i.e, 0
  br i1 %.not169, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge207
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.1163.lcssa, i64 %.2.lcssa
  %i.jy = load i32, ptr %i.jx, align 4            ; 3 uses
  %i.jz = and i32 %i.jy, 1023
  %i.ka = lshr i32 %i.jy, 10
  %i.kb = and i32 %i.ka, 1023
  %i.kc = lshr i32 %i.jy, 20
  %i.kd = and i32 %i.kc, 1023
  %i.ke = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kf = load float, ptr %i.ke, align 8
  %i.kg = uitofp nneg i32 %i.jz to float          ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ki = load float, ptr %i.kh, align 4
  %i.kj = uitofp nneg i32 %i.kb to float          ; 2 uses
  %i.kk = fmul float %i.ki, %i.kj
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kg, float %i.kk)
  %i.km = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kn = load float, ptr %i.km, align 8
  %i.ko = uitofp nneg i32 %i.kd to float          ; 2 uses
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.kn, float %i.ko, float %i.kl)
  %i.kq = fadd float %i.kp, 5.000000e-01
  %i.kr = fptosi float %i.kq to i32
  %.tr = trunc i32 %i.kr to i16
  %i.ks = shl i16 %.tr, 6
  %i.kt = xor i16 %i.ks, -32768
  %i.ku = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 2
  store i16 %i.kt, ptr %.3.lcssa, align 2
  %i.kv = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.kw = load float, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ky = load float, ptr %i.kx, align 8
  %i.kz = fmul float %i.ky, %i.kj
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.kg, float %i.kz)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.lc = load float, ptr %i.lb, align 4
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.ko, float %i.la)
  %i.le = fadd float %i.ld, 5.000000e-01
  %i.lf = fptosi float %i.le to i32
  %.tr170 = trunc i32 %i.lf to i16
  %i.lg = shl i16 %.tr170, 6
  %i.lh = xor i16 %i.lg, -32768
  store i16 %i.lh, ptr %i.ku, align 2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge201, %bb.d, %._crit_edge207
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ConvertPixels_YUV_to_YUV(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  %i.g = alloca ptr, align 8                      ; 11 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 12 uses
  %i.l = alloca ptr, align 8                      ; 12 uses
  %i.m = alloca ptr, align 8                      ; 14 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 13 uses
  %i.q = alloca ptr, align 8                      ; 10 uses
  %i.r = alloca ptr, align 8                      ; 12 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %3, %8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %2, %7
  br i1 %i.v, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq ptr %5, %10
  br i1 %i.w, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %2, label %IsPacked4Format.exit.i [
    i32 1448433993, label %IsPlanar2x2Format.exit.i
    i32 842094169, label %IsPlanar2x2Format.exit.i
    i32 842094158, label %IsPlanar2x2Format.exit.i
    i32 825382478, label %IsPlanar2x2Format.exit.i
    i32 808530000, label %IsPlanar2x2Format.exit.i
    i32 1498831189, label %bb.i
    i32 844715353, label %bb.i
    i32 1431918169, label %bb.i
  ]

IsPlanar2x2Format.exit.i:                         ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.not8192.i = icmp eq i32 %1, 0
  br i1 %.not8192.i, label %._crit_edge.i, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %IsPlanar2x2Format.exit.i
  %i.x = sext i32 %0 to i64                       ; 5 uses
  %i.y = sext i32 %6 to i64                       ; 5 uses
  %i.z = sext i32 %11 to i64                      ; 5 uses
  %i.aa = add i32 %1, -1
  %xtraiter994 = and i32 %1, 3                    ; 2 uses
  %lcmp.mod995.not = icmp eq i32 %xtraiter994, 0
  br i1 %lcmp.mod995.not, label %.prol.loopexit993, label %.prol.preheader992

.prol.preheader992:                               ; preds = %.lr.ph96.i, %.prol.preheader992
  %.095.i.prol = phi i32 [ %i.ab, %.prol.preheader992 ], [ %1, %.lr.ph96.i ]
  %.06994.i.prol = phi ptr [ %i.ad, %.prol.preheader992 ], [ %10, %.lr.ph96.i ] ; 2 uses
  %.07493.i.prol = phi ptr [ %i.ac, %.prol.preheader992 ], [ %5, %.lr.ph96.i ] ; 2 uses
  %prol.iter996 = phi i32 [ %prol.iter996.next, %.prol.preheader992 ], [ 0, %.lr.ph96.i ]
  %i.ab = add nsw i32 %.095.i.prol, -1            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06994.i.prol, ptr align 1 %.07493.i.prol, i64 %i.x, i1 false)
  %i.ac = getelementptr inbounds i8, ptr %.07493.i.prol, i64 %i.y ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.06994.i.prol, i64 %i.z ; 3 uses
  %prol.iter996.next = add i32 %prol.iter996, 1   ; 2 uses
  %prol.iter996.cmp.not = icmp eq i32 %prol.iter996.next, %xtraiter994
  br i1 %prol.iter996.cmp.not, label %.prol.loopexit993, label %.prol.preheader992, !llvm.loop !131

.prol.loopexit993:                                ; preds = %.prol.preheader992, %.lr.ph96.i
  %.lcssa781.unr = phi ptr [ poison, %.lr.ph96.i ], [ %i.ac, %.prol.preheader992 ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph96.i ], [ %i.ad, %.prol.preheader992 ]
  %.095.i.unr = phi i32 [ %1, %.lr.ph96.i ], [ %i.ab, %.prol.preheader992 ]
  %.06994.i.unr = phi ptr [ %10, %.lr.ph96.i ], [ %i.ad, %.prol.preheader992 ]
  %.07493.i.unr = phi ptr [ %5, %.lr.ph96.i ], [ %i.ac, %.prol.preheader992 ]
  %i.ae = icmp ult i32 %i.aa, 3
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph96.i.new

.lr.ph96.i.new:                                   ; preds = %.prol.loopexit993, %.lr.ph96.i.new
  %.095.i = phi i32 [ %i.al, %.lr.ph96.i.new ], [ %.095.i.unr, %.prol.loopexit993 ]
  %.06994.i = phi ptr [ %i.an, %.lr.ph96.i.new ], [ %.06994.i.unr, %.prol.loopexit993 ] ; 2 uses
  %.07493.i = phi ptr [ %i.am, %.lr.ph96.i.new ], [ %.07493.i.unr, %.prol.loopexit993 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06994.i, ptr align 1 %.07493.i, i64 %i.x, i1 false)
  %i.af = getelementptr inbounds i8, ptr %.07493.i, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.06994.i, i64 %i.z ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.af, i64 %i.x, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.y ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.z ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ah, i64 %i.x, i1 false)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.y ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.z ; 2 uses
  %i.al = add nsw i32 %.095.i, -4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.aj, i64 %i.x, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.y ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.z ; 2 uses
  %.not81.i.3 = icmp eq i32 %i.al, 0
  br i1 %.not81.i.3, label %._crit_edge.i, label %.lr.ph96.i.new, !llvm.loop !132

._crit_edge.i:                                    ; preds = %.prol.loopexit993, %.lr.ph96.i.new, %IsPlanar2x2Format.exit.i
  %.074.lcssa.i = phi ptr [ %5, %IsPlanar2x2Format.exit.i ], [ %.lcssa781.unr, %.prol.loopexit993 ], [ %i.am, %.lr.ph96.i.new ] ; 6 uses
  %.069.lcssa.i = phi ptr [ %10, %IsPlanar2x2Format.exit.i ], [ %.lcssa.unr, %.prol.loopexit993 ], [ %i.an, %.lr.ph96.i.new ] ; 6 uses
  switch i32 %2, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit [
    i32 1448433993, label %bb.f
    i32 842094169, label %bb.f
    i32 842094158, label %bb.g
    i32 825382478, label %bb.g
    i32 808530000, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  %.off117.i = add i32 %1, 2
  %.not84110.i = icmp ult i32 %.off117.i, 3
  br i1 %.not84110.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.f
  %i.ao = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.ap = insertelement <4 x i32> %i.ao, i32 %11, i64 1
  %i.aq = insertelement <4 x i32> %i.ap, i32 %6, i64 2
  %i.ar = insertelement <4 x i32> %i.aq, i32 %0, i64 3
  %i.as = add nsw <4 x i32> %i.ar, splat (i32 1)
  %i.at = sdiv <4 x i32> %i.as, splat (i32 2)     ; 4 uses
  %i.au = extractelement <4 x i32> %i.at, i64 0
end_hunk_0
