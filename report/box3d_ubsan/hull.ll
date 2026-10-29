Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/hull?download=true
inline.NumInlined: 420
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@b3HullBuilder_Construct:bb.a
  %i.fh = phi float [ %i.ef, %bb.bj ], [ %.sroa.11.0.copyload.i.i, %bb.bi ], [ %i.ef, %bb.bk ] ; 2 uses
  %.sroa.067.0.copyload173.i.i = phi float [ %.sroa.067.0.copyload174195.i.i, %bb.bj ], [ %.sroa.067.0.copyload174195.i.i, %bb.bi ], [ %.sroa.067.0.copyload.i.i, %bb.bk ] ; 2 uses
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i41, 1 ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %indvars.iv.next.i.i42, %wide.trip.count
  br i1 %exitcond.not.i.i43, label %.split774.us.i.i, label %.split.split.split.split.i.i, !llvm.loop !184

bb.bm:                                            ; preds = %.split774.us.i.i
  %i.fi = ptrtoint ptr %8 to i64, !nosanitize !12 ; 2 uses
  %i.fj = add i64 %i.fi, 24, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @377, i64 %i.fi, i64 %i.fj) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bn:                                            ; preds = %.split774.us.i.i
  %i.fk = fsub float %.us-phi785.i.i, %.us-phi786.i.i ; 3 uses
  %i.fl = fsub float %.us-phi797.i.i, %.us-phi798.i.i ; 3 uses
  %i.fm = fsub float %i.ec, %i.ed                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store float %i.fl, ptr %i.c, align 4, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.fk, ptr %i.fn, align 4, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.fm, ptr %i.fo, align 4, !tbaa !28
  %i.fp = fcmp olt float %i.fl, %i.fk
  %i.fq = fcmp olt float %i.fk, %i.fm
  %i.fr = select i1 %i.fq, i64 2, i64 1
  %i.fs = fcmp olt float %i.fl, %i.fm
  %i.ft = select i1 %i.fs, i64 2, i64 0
  %i.fu = select i1 %i.fp, i64 %i.fr, i64 %i.ft   ; 4 uses
  %i.fv = shl nuw nsw i64 %i.fu, 2                ; 3 uses
  %i.fw = ptrtoint ptr %i.c to i64, !nosanitize !12 ; 3 uses
  %i.fx = add i64 %i.fv, %i.fw, !nosanitize !12   ; 2 uses
  %.not55.i.i = icmp ult i64 %i.fx, %i.fw, !nosanitize !12
  br i1 %.not55.i.i, label %bb.bo, label %bb.bp, !prof !22, !nosanitize !12

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @378, i64 %i.fw, i64 %i.fx) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bp:                                            ; preds = %bb.bn
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fu
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !28
  %i.ga = fmul float %i.ba, 2.000000e+00          ; 2 uses
  %i.gb = fcmp ogt float %i.fz, %i.ga
  br i1 %i.gb, label %bb.bq, label %b3FindFarthestPointsAlongCardinalAxes.exit.thread.i

b3FindFarthestPointsAlongCardinalAxes.exit.thread.i: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %b3HullBuilder_BuildInitialHull.exit.thread

bb.bq:                                            ; preds = %bb.bp
  %i.gc = ptrtoint ptr %i.a to i64, !nosanitize !12 ; 3 uses
  %i.gd = add i64 %i.fv, %i.gc, !nosanitize !12   ; 2 uses
  %.not56.i.i = icmp ult i64 %i.gd, %i.gc, !nosanitize !12
  br i1 %.not56.i.i, label %bb.br, label %bb.bs, !prof !22, !nosanitize !12

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @379, i64 %i.gc, i64 %i.gd) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bs:                                            ; preds = %bb.bq
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fu
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !88 ; 2 uses
  %i.gg = ptrtoint ptr %i.b to i64, !nosanitize !12 ; 3 uses
  %i.gh = add i64 %i.fv, %i.gg, !nosanitize !12   ; 2 uses
  %.not57.i.i = icmp ult i64 %i.gh, %i.gg, !nosanitize !12
  br i1 %.not57.i.i, label %bb.bt, label %b3FindFarthestPointsAlongCardinalAxes.exit.i, !prof !22, !nosanitize !12

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @380, i64 %i.gg, i64 %i.gh) #14, !nosanitize !12
  unreachable, !nosanitize !12

b3FindFarthestPointsAlongCardinalAxes.exit.i:     ; preds = %bb.bs
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fu
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !88 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.gk = icmp slt i32 %i.gf, 0
  %i.gl = icmp slt i32 %i.gj, 0
  %or.cond.i = select i1 %i.gk, i1 true, i1 %i.gl
  br i1 %or.cond.i, label %b3HullBuilder_BuildInitialHull.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %b3FindFarthestPointsAlongCardinalAxes.exit.i
  %i.gm = zext nneg i32 %i.gf to i64              ; 5 uses
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.gm ; 4 uses
  %i.go = mul nuw nsw i64 %i.gm, 12
  %i.gp = add i64 %i.go, %i.d, !nosanitize !12    ; 3 uses
  %.not330.i = icmp ult i64 %i.gp, %i.d, !nosanitize !12
  br i1 %.not330.i, label %bb.bv, label %bb.bw, !prof !22, !nosanitize !12

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @381, i64 %i.d, i64 %i.gp) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.bw:                                            ; preds = %bb.bu
  %.sroa.047.0.copyload.i.i = load <2 x float>, ptr %i.gn, align 4, !tbaa !28 ; 7 uses
  %.sroa.549.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %.sroa.549.0.copyload.i.i = load float, ptr %.sroa.549.0..sroa_idx.i.i, align 4, !tbaa !28 ; 3 uses
  %i.gq = zext nneg i32 %i.gj to i64              ; 4 uses
  %i.gr = mul nuw nsw i64 %i.gq, 12
  %i.gs = add i64 %i.gr, %i.d, !nosanitize !12    ; 3 uses
  %.not.i.i = icmp ult i64 %i.gs, %i.d, !nosanitize !12
  br i1 %.not.i.i, label %bb.bx, label %bb.by, !prof !22, !nosanitize !12

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @382, i64 %i.d, i64 %i.gs) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.by:                                            ; preds = %bb.bw
  %i.gt = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.gq ; 2 uses
  %.sroa.045.0.copyload.i.i = load <2 x float>, ptr %i.gt, align 4, !tbaa !28 ; 4 uses
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %.sroa.446.0.copyload.i.i = load float, ptr %.sroa.446.0..sroa_idx.i.i, align 4, !tbaa !28
  %i.gu = fsub <2 x float> %.sroa.045.0.copyload.i.i, %.sroa.047.0.copyload.i.i ; 9 uses
  %i.gv = shufflevector <2 x float> %.sroa.045.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = insertelement <2 x float> %i.gv, float %.sroa.446.0.copyload.i.i, i64 1
  %i.gx = shufflevector <2 x float> %.sroa.047.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %.sroa.549.0.copyload.i.i, i64 1 ; 2 uses
  %i.gz = fsub <2 x float> %i.gw, %i.gy           ; 3 uses
  %i.ha = extractelement <2 x float> %i.gu, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.gu, %i.gu
  %foldExtExtBinop17358 = fmul <2 x float> %i.gu, %i.gu
  %shift = shufflevector <2 x float> %foldExtExtBinop17358, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17360 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.hb = extractelement <2 x float> %foldExtExtBinop17360, i64 0
  %i.hc = extractelement <2 x float> %i.gz, i64 1 ; 4 uses
  %i.hd = fmul float %i.hc, %i.hc
  %i.he = fadd float %i.hd, %i.hb
  %i.hf = fdiv float 1.000000e+00, %i.he
  %i.hg = fmul float %i.ba, %i.bb
  %i.hh = shufflevector <2 x float> %i.gu, <2 x float> %i.gz, <2 x i32> <i32 1, i32 3>
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cd, %bb.by
  %indvars.iv.i255.i = phi i64 [ 0, %bb.by ], [ %indvars.iv.next.i256.i, %bb.cd ] ; 6 uses
  %.089.i.i = phi float [ %i.hg, %bb.by ], [ %.2.i.i, %bb.cd ] ; 3 uses
  %.06088.i.i = phi i32 [ -1, %bb.by ], [ %.262.i.i, %bb.cd ] ; 2 uses
  %i.hi = icmp eq i64 %indvars.iv.i255.i, %i.gm
  %i.hj = icmp eq i64 %indvars.iv.i255.i, %i.gq
  %or.cond.i.i = or i1 %i.hi, %i.hj
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hk = mul nuw nsw i64 %indvars.iv.i255.i, 12
  %i.hl = add i64 %i.hk, %i.d, !nosanitize !12    ; 2 uses
  %.not85.i.i = icmp ult i64 %i.hl, %i.d, !nosanitize !12
  br i1 %.not85.i.i, label %bb.cb, label %bb.cc, !prof !22, !nosanitize !12

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @383, i64 %i.d, i64 %i.hl) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cc:                                            ; preds = %bb.ca
  %i.hm = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv.i255.i ; 2 uses
  %.sroa.018.0.copyload.i.i = load <2 x float>, ptr %i.hm, align 4
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %.sroa.219.0.copyload.i.i = load float, ptr %.sroa.219.0..sroa_idx.i.i, align 4
  %i.hn = fsub <2 x float> %.sroa.018.0.copyload.i.i, %.sroa.047.0.copyload.i.i ; 3 uses
  %i.ho = fsub float %.sroa.219.0.copyload.i.i, %.sroa.549.0.copyload.i.i ; 2 uses
  %i.hp = fmul float %i.ha, %i.ho
  %i.hq = extractelement <2 x float> %i.hn, i64 0
  %i.hr = fmul float %i.hc, %i.hq
  %i.hs = fsub float %i.hp, %i.hr                 ; 2 uses
  %i.ht = fmul <2 x float> %i.hh, %i.hn
  %i.hu = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hv = insertelement <2 x float> %i.hu, float %i.ho, i64 1
  %i.hw = fmul <2 x float> %i.gu, %i.hv
  %i.hx = fsub <2 x float> %i.ht, %i.hw           ; 2 uses
  %i.hy = fmul float %i.hs, %i.hs
  %i.hz = fmul <2 x float> %i.hx, %i.hx           ; 2 uses
  %i.ia = extractelement <2 x float> %i.hz, i64 1
  %i.ib = fadd float %i.ia, %i.hy
  %i.ic = extractelement <2 x float> %i.hz, i64 0
  %i.id = fadd float %i.ic, %i.ib
  %i.ie = fmul float %i.hf, %i.id                 ; 2 uses
  %i.if = fcmp ogt float %i.ie, %.089.i.i         ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv.i255.i to i32
  %.161.i.i = select i1 %i.if, i32 %i.ig, i32 %.06088.i.i
  %.1.i.i = select i1 %i.if, float %i.ie, float %.089.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %.262.i.i = phi i32 [ %.06088.i.i, %bb.bz ], [ %.161.i.i, %bb.cc ] ; 5 uses
  %.2.i.i = phi float [ %.089.i.i, %bb.bz ], [ %.1.i.i, %bb.cc ]
  %indvars.iv.next.i256.i = add nuw nsw i64 %indvars.iv.i255.i, 1 ; 2 uses
  %exitcond.not.i257.i = icmp eq i64 %indvars.iv.next.i256.i, %wide.trip.count
  br i1 %exitcond.not.i257.i, label %b3FindFarthestPointFromLine.exit.i, label %bb.bz, !llvm.loop !185

b3FindFarthestPointFromLine.exit.i:               ; preds = %bb.cd
  %i.ih = icmp slt i32 %.262.i.i, 0
  br i1 %i.ih, label %b3HullBuilder_BuildInitialHull.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %b3FindFarthestPointFromLine.exit.i
  %.not331.i = icmp eq i64 %i.gp, 0
  %.not333.i = icmp eq i64 %i.gs, 0
  %i.ii = zext nneg i32 %.262.i.i to i64          ; 3 uses
  %i.ij = mul nuw nsw i64 %i.ii, 12
  %i.ik = add i64 %i.ij, %i.d, !nosanitize !12    ; 2 uses
  %.not.i258.i = icmp ult i64 %i.ik, %i.d, !nosanitize !12
  br i1 %.not.i258.i, label %bb.cf, label %bb.cg, !prof !22, !nosanitize !12

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @384, i64 %i.d, i64 %i.ik) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cg:                                            ; preds = %bb.ce
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.ii ; 2 uses
  %.sroa.017.0.copyload.i.i = load <2 x float>, ptr %i.il, align 4, !tbaa !28 ; 4 uses
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %.sroa.418.0.copyload.i.i = load float, ptr %.sroa.418.0..sroa_idx.i.i, align 4, !tbaa !28
  %i.im = fsub <2 x float> %.sroa.017.0.copyload.i.i, %.sroa.047.0.copyload.i.i ; 2 uses
  %i.in = shufflevector <2 x float> %.sroa.017.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.io = insertelement <2 x float> %i.in, float %.sroa.418.0.copyload.i.i, i64 1
  %i.ip = fsub <2 x float> %i.io, %i.gy           ; 2 uses
  %i.iq = extractelement <2 x float> %i.im, i64 0
  %i.ir = fmul float %i.hc, %i.iq
  %shift17362 = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17363 = fmul <2 x float> %i.gu, %shift17362
  %i.is = extractelement <2 x float> %foldExtExtBinop17363, i64 0
  %i.it = fsub float %i.ir, %i.is                 ; 3 uses
  %i.iu = fmul <2 x float> %i.gu, %i.ip
  %i.iv = fmul <2 x float> %i.gz, %i.im
  %i.iw = fsub <2 x float> %i.iu, %i.iv           ; 4 uses
  %i.ix = fmul float %i.it, %i.it
  %i.iy = fmul <2 x float> %i.iw, %i.iw           ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 1
  %i.ja = fadd float %i.iz, %i.ix
  %i.jb = extractelement <2 x float> %i.iy, i64 0
  %i.jc = fadd float %i.jb, %i.ja                 ; 2 uses
  %i.jd = fcmp ogt float %i.jc, f0x057A0000
  br i1 %i.jd, label %bb.ch, label %b3MakePlaneFromPoints.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.je = call float @sqrtf(float noundef %i.jc) #15
  %i.jf = fdiv float 1.000000e+00, %i.je          ; 3 uses
  %i.jg = extractelement <2 x float> %i.iw, i64 1
  %i.jh = fmul float %i.jg, %i.jf
  %.sroa.07.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.ji = fmul float %i.it, %i.jf
  %.sroa.07.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.07.0.vec.insert.i.i.i.i, float %i.ji, i64 1
  %i.jj = extractelement <2 x float> %i.iw, i64 0
  %i.jk = fmul float %i.jj, %i.jf
  br label %b3MakePlaneFromPoints.exit.i.i

b3MakePlaneFromPoints.exit.i.i:                   ; preds = %bb.ch, %bb.cg
  %.sroa.07.0.i.i.i.i = phi <2 x float> [ %.sroa.07.4.vec.insert.i.i.i.i, %bb.ch ], [ zeroinitializer, %bb.cg ] ; 3 uses
  %.sroa.5.0.i.i.i.i = phi float [ %i.jk, %bb.ch ], [ 0.000000e+00, %bb.cg ] ; 2 uses
  %foldExtExtBinop17365 = fmul <2 x float> %.sroa.047.0.copyload.i.i, %.sroa.07.0.i.i.i.i
  %foldExtExtBinop17367 = fmul <2 x float> %.sroa.047.0.copyload.i.i, %.sroa.07.0.i.i.i.i
  %shift17369 = shufflevector <2 x float> %foldExtExtBinop17367, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17370 = fadd <2 x float> %foldExtExtBinop17365, %shift17369
  %i.jl = extractelement <2 x float> %foldExtExtBinop17370, i64 0
  %i.jm = fmul float %.sroa.549.0.copyload.i.i, %.sroa.5.0.i.i.i.i
  %i.jn = fadd float %i.jm, %i.jl
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cm, %b3MakePlaneFromPoints.exit.i.i
  %indvars.iv.i260.i = phi i64 [ 0, %b3MakePlaneFromPoints.exit.i.i ], [ %indvars.iv.next.i264.i, %bb.cm ] ; 7 uses
  %.03552.i.i = phi i32 [ -1, %b3MakePlaneFromPoints.exit.i.i ], [ %.2.i263.i, %bb.cm ] ; 2 uses
  %.03651.i.i = phi float [ %i.ga, %b3MakePlaneFromPoints.exit.i.i ], [ %.238.i.i, %bb.cm ] ; 3 uses
  %i.jo = icmp eq i64 %indvars.iv.i260.i, %i.gm
  %i.jp = icmp eq i64 %indvars.iv.i260.i, %i.gq
  %or.cond.i261.i = or i1 %i.jo, %i.jp
  %i.jq = icmp eq i64 %indvars.iv.i260.i, %i.ii
  %or.cond44.i.i = or i1 %i.jq, %or.cond.i261.i
  br i1 %or.cond44.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jr = mul nuw nsw i64 %indvars.iv.i260.i, 12
  %i.js = add i64 %i.jr, %i.d, !nosanitize !12    ; 2 uses
  %.not49.i.i = icmp ult i64 %i.js, %i.d, !nosanitize !12
  br i1 %.not49.i.i, label %bb.ck, label %bb.cl, !prof !22, !nosanitize !12

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @385, i64 %i.d, i64 %i.js) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cl:                                            ; preds = %bb.cj
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %indvars.iv.i260.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.jt, align 4
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %.sroa.2.0.copyload.i.i = load float, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %i.ju = fmul <2 x float> %.sroa.07.0.i.i.i.i, %.sroa.0.0.copyload.i.i ; 2 uses
  %shift17372 = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17373 = fadd <2 x float> %i.ju, %shift17372
  %i.jv = extractelement <2 x float> %foldExtExtBinop17373, i64 0
  %i.jw = fmul float %.sroa.5.0.i.i.i.i, %.sroa.2.0.copyload.i.i
  %i.jx = fadd float %i.jw, %i.jv
  %i.jy = fsub float %i.jx, %i.jn                 ; 3 uses
  %i.jz = fcmp olt float %i.jy, 0.000000e+00
  %i.ka = fneg float %i.jy
  %i.kb = select i1 %i.jz, float %i.ka, float %i.jy ; 2 uses
  %i.kc = fcmp ogt float %i.kb, %.03651.i.i       ; 2 uses
  %.137.i.i = select i1 %i.kc, float %i.kb, float %.03651.i.i
  %i.kd = trunc nuw nsw i64 %indvars.iv.i260.i to i32
  %.1.i262.i = select i1 %i.kc, i32 %i.kd, i32 %.03552.i.i
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ci
  %.238.i.i = phi float [ %.03651.i.i, %bb.ci ], [ %.137.i.i, %bb.cl ]
  %.2.i263.i = phi i32 [ %.03552.i.i, %bb.ci ], [ %.1.i262.i, %bb.cl ] ; 3 uses
  %indvars.iv.next.i264.i = add nuw nsw i64 %indvars.iv.i260.i, 1 ; 2 uses
  %exitcond.not.i265.i = icmp eq i64 %indvars.iv.next.i264.i, %wide.trip.count
  br i1 %exitcond.not.i265.i, label %b3FindFarthestPointFromPlane.exit.i, label %bb.ci, !llvm.loop !186

b3FindFarthestPointFromPlane.exit.i:              ; preds = %bb.cm
  %i.ke = icmp sgt i32 %.2.i263.i, -1
  br i1 %i.ke, label %bb.cn, label %b3HullBuilder_BuildInitialHull.exit.thread

bb.cn:                                            ; preds = %b3FindFarthestPointFromPlane.exit.i
  br i1 %.not331.i, label %bb.co, label %bb.cp, !prof !22, !nosanitize !12

bb.co:                                            ; preds = %bb.cn
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @353, i64 %i.d, i64 0) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cp:                                            ; preds = %bb.cn
  %i.kf = zext nneg i32 %.2.i263.i to i64         ; 3 uses
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.kf ; 4 uses
  %i.kh = mul nuw nsw i64 %i.kf, 12
  %i.ki = add i64 %i.kh, %i.d, !nosanitize !12    ; 2 uses
  %.not334.i = icmp ult i64 %i.ki, %i.d, !nosanitize !12
  br i1 %.not334.i, label %bb.cq, label %bb.cr, !prof !22, !nosanitize !12

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @354, i64 %i.d, i64 %i.ki) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cr:                                            ; preds = %bb.cp
  %.sroa.2147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 3 uses
  br i1 %.not333.i, label %bb.cs, label %bb.ct, !prof !22, !nosanitize !12

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @355, i64 %i.d, i64 0) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.ct:                                            ; preds = %bb.cr
  %.sroa.2149.0.copyload.i = load float, ptr %.sroa.549.0..sroa_idx.i.i, align 4
  %.sroa.2147.0.copyload.i = load float, ptr %.sroa.2147.0..sroa_idx.i, align 4 ; 2 uses
  %i.kj = fsub float %.sroa.2149.0.copyload.i, %.sroa.2147.0.copyload.i
  %.sroa.0146.0.copyload.i = load <2 x float>, ptr %i.kg, align 4 ; 3 uses
  %.sroa.2139.0.copyload.i = load float, ptr %.sroa.446.0..sroa_idx.i.i, align 4
  %.sroa.2129.0.copyload.i = load float, ptr %.sroa.418.0..sroa_idx.i.i, align 4
  %i.kk = fsub <2 x float> %.sroa.047.0.copyload.i.i, %.sroa.0146.0.copyload.i
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.km = shufflevector <2 x float> %.sroa.017.0.copyload.i.i, <2 x float> %.sroa.045.0.copyload.i.i, <2 x i32> <i32 0, i32 3>
  %i.kn = fsub <2 x float> %i.km, %.sroa.0146.0.copyload.i ; 3 uses
  %i.ko = shufflevector <2 x float> %.sroa.045.0.copyload.i.i, <2 x float> %.sroa.017.0.copyload.i.i, <2 x i32> <i32 0, i32 3>
  %i.kp = fsub <2 x float> %i.ko, %.sroa.0146.0.copyload.i ; 3 uses
  %i.kq = insertelement <2 x float> poison, float %.sroa.2139.0.copyload.i, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %.sroa.2129.0.copyload.i, i64 1
  %i.ks = insertelement <2 x float> poison, float %.sroa.2147.0.copyload.i, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fsub <2 x float> %i.kr, %i.kt           ; 2 uses
  %i.kv = fmul <2 x float> %i.ku, %i.kn
  %i.kw = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kx = fmul <2 x float> %i.kp, %i.kw
  %i.ky = fsub <2 x float> %i.kv, %i.kx
  %shift17375 = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17376 = fmul <2 x float> %i.kp, %shift17375
  %shift17378 = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17379 = fmul <2 x float> %shift17378, %i.kn
  %foldExtExtBinop17381 = fsub <2 x float> %foldExtExtBinop17376, %foldExtExtBinop17379
  %i.kz = extractelement <2 x float> %foldExtExtBinop17381, i64 0
  %i.la = fmul <2 x float> %i.kl, %i.ky           ; 2 uses
  %shift17383 = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17384 = fadd <2 x float> %shift17383, %i.la
  %i.lb = extractelement <2 x float> %foldExtExtBinop17384, i64 0
  %i.lc = fmul float %i.kj, %i.kz
  %i.ld = fadd float %i.lc, %i.lb
  %i.le = fcmp olt float %i.ld, 0.000000e+00      ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %spec.select.i = select i1 %i.le, i32 %.262.i.i, i32 %i.gj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lf, i8 0, i64 12, i1 false)
  %.sroa.2112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %.sroa.0109.0.copyload.i = load <2 x float>, ptr %i.gn, align 4
  %.sroa.2110.0.copyload.i = load float, ptr %.sroa.549.0..sroa_idx.i.i, align 4
  %i.lg = fadd <2 x float> %.sroa.0109.0.copyload.i, zeroinitializer ; 2 uses
  %i.lh = fadd float %.sroa.2110.0.copyload.i, 0.000000e+00 ; 2 uses
  store <2 x float> %i.lg, ptr %i.lf, align 4, !tbaa !28
  store float %i.lh, ptr %.sroa.2112.0..sroa_idx.i, align 4, !tbaa !28
  %i.li = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %i.lj = mul nuw nsw i64 %i.li, 12
  %i.lk = add i64 %i.lj, %i.d, !nosanitize !12    ; 2 uses
  %.not1604.i = icmp ult i64 %i.lk, %i.d, !nosanitize !12
  br i1 %.not1604.i, label %bb.cu, label %bb.cv, !prof !22, !nosanitize !12

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @356, i64 %i.d, i64 %i.lk) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cv:                                            ; preds = %bb.ct
  %spec.select2188.i = select i1 %i.le, i32 %i.gj, i32 %.262.i.i
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.li ; 3 uses
  %.sroa.099.0.copyload.i = load <2 x float>, ptr %i.ll, align 4
  %.sroa.2100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %.sroa.2100.0.copyload.i = load float, ptr %.sroa.2100.0..sroa_idx.i, align 4
  %i.lm = fadd <2 x float> %i.lg, %.sroa.099.0.copyload.i ; 2 uses
  %i.ln = fadd float %i.lh, %.sroa.2100.0.copyload.i ; 2 uses
  store <2 x float> %i.lm, ptr %i.lf, align 4, !tbaa !28
  store float %i.ln, ptr %.sroa.2112.0..sroa_idx.i, align 4, !tbaa !28
  %i.lo = zext nneg i32 %spec.select2188.i to i64 ; 3 uses
  %i.lp = getelementptr inbounds nuw [12 x i8], ptr %6, i64 %i.lo ; 3 uses
  %i.lq = mul nuw nsw i64 %i.lo, 12
  %i.lr = add i64 %i.lq, %i.d, !nosanitize !12    ; 2 uses
  %.not337.i = icmp ult i64 %i.lr, %i.d, !nosanitize !12
  br i1 %.not337.i, label %bb.cw, label %bb.cx, !prof !22, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @357, i64 %i.d, i64 %i.lr) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cx:                                            ; preds = %bb.cv
  %.sroa.089.0.copyload.i = load <2 x float>, ptr %i.lp, align 4
  %.sroa.290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %.sroa.290.0.copyload.i = load float, ptr %.sroa.290.0..sroa_idx.i, align 4
  %i.ls = fadd <2 x float> %i.lm, %.sroa.089.0.copyload.i ; 2 uses
  %i.lt = fadd float %i.ln, %.sroa.290.0.copyload.i ; 2 uses
  store <2 x float> %i.ls, ptr %i.lf, align 4, !tbaa !28
  store float %i.lt, ptr %.sroa.2112.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.079.0.copyload.i = load <2 x float>, ptr %i.kg, align 4
  %.sroa.280.0.copyload.i = load float, ptr %.sroa.2147.0..sroa_idx.i, align 4
  %i.lu = fadd float %i.lt, %.sroa.280.0.copyload.i
  %i.lv = fadd <2 x float> %i.ls, %.sroa.079.0.copyload.i
  %i.lw = fmul <2 x float> %i.lv, splat (float 2.500000e-01)
  %i.lx = fmul float %i.lu, 2.500000e-01
  store <2 x float> %i.lw, ptr %i.lf, align 4, !tbaa !28
  store float %i.lx, ptr %.sroa.2112.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.064.0.copyload.i = load <2 x float>, ptr %i.gn, align 4
  %.sroa.265.0.copyload.i = load float, ptr %.sroa.549.0..sroa_idx.i.i, align 4
  %i.ly = call fastcc ptr @b3HullBuilder_NewVertex(ptr noundef nonnull %0, <2 x float> %.sroa.064.0.copyload.i, float %.sroa.265.0.copyload.i) ; 8 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ma = ptrtoint ptr %i.ly to i64, !nosanitize !12 ; 2 uses
  %i.mb = and i64 %i.ma, 7, !nosanitize !12
  %i.mc = icmp eq i64 %i.mb, 0, !nosanitize !12
  br i1 %i.mc, label %bb.cz, label %bb.cy, !prof !13, !nosanitize !12

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @358, i64 %i.ma) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.cz:                                            ; preds = %bb.cx
  %i.md = load ptr, ptr %i.lz, align 8, !tbaa !32 ; 4 uses
  %i.me = icmp ne ptr %i.md, null, !nosanitize !12
  %i.mf = ptrtoint ptr %i.md to i64, !nosanitize !12 ; 2 uses
  %i.mg = and i64 %i.mf, 7, !nosanitize !12
  %i.mh = icmp eq i64 %i.mg, 0, !nosanitize !12
  %i.mi = and i1 %i.me, %i.mh, !nosanitize !12
  br i1 %i.mi, label %bb.db, label %bb.da, !prof !13, !nosanitize !12

bb.da:                                            ; preds = %bb.cz
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.mf) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.db:                                            ; preds = %bb.cz
  %i.mj = load ptr, ptr %i.md, align 8, !tbaa !32 ; 4 uses
  store ptr %i.mj, ptr %i.ly, align 8, !tbaa !32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  store ptr %i.md, ptr %i.mk, align 8, !tbaa !33
  %i.ml = icmp ne ptr %i.mj, null, !nosanitize !12
  %i.mm = ptrtoint ptr %i.mj to i64, !nosanitize !12 ; 2 uses
  %i.mn = and i64 %i.mm, 7, !nosanitize !12
  %i.mo = icmp eq i64 %i.mn, 0, !nosanitize !12
  %i.mp = and i1 %i.ml, %i.mo, !nosanitize !12
  br i1 %i.mp, label %bb.dd, label %bb.dc, !prof !13, !nosanitize !12

bb.dc:                                            ; preds = %bb.db
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.mm) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dd:                                            ; preds = %bb.db
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.ly, ptr %i.mq, align 8, !tbaa !33
  %i.mr = load ptr, ptr %i.mk, align 8, !tbaa !33 ; 3 uses
  %i.ms = icmp ne ptr %i.mr, null, !nosanitize !12
  %i.mt = ptrtoint ptr %i.mr to i64, !nosanitize !12 ; 2 uses
  %i.mu = and i64 %i.mt, 7, !nosanitize !12
  %i.mv = icmp eq i64 %i.mu, 0, !nosanitize !12
  %i.mw = and i1 %i.ms, %i.mv, !nosanitize !12
  br i1 %i.mw, label %bb.df, label %bb.de, !prof !13, !nosanitize !12

bb.de:                                            ; preds = %bb.dd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @393, i64 %i.mt) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.df:                                            ; preds = %bb.dd
  store ptr %i.ly, ptr %i.mr, align 8, !tbaa !32
  %.sroa.058.0.copyload.i = load <2 x float>, ptr %i.ll, align 4
  %.sroa.259.0.copyload.i = load float, ptr %.sroa.2100.0..sroa_idx.i, align 4
  %i.mx = call fastcc ptr @b3HullBuilder_NewVertex(ptr noundef nonnull %0, <2 x float> %.sroa.058.0.copyload.i, float %.sroa.259.0.copyload.i) ; 8 uses
  %i.my = ptrtoint ptr %i.mx to i64, !nosanitize !12 ; 2 uses
  %i.mz = and i64 %i.my, 7, !nosanitize !12
  %i.na = icmp eq i64 %i.mz, 0, !nosanitize !12
  br i1 %i.na, label %bb.dh, label %bb.dg, !prof !13, !nosanitize !12

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @359, i64 %i.my) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dh:                                            ; preds = %bb.df
  %i.nb = load ptr, ptr %i.lz, align 8, !tbaa !32 ; 4 uses
  %i.nc = icmp ne ptr %i.nb, null, !nosanitize !12
  %i.nd = ptrtoint ptr %i.nb to i64, !nosanitize !12 ; 2 uses
  %i.ne = and i64 %i.nd, 7, !nosanitize !12
  %i.nf = icmp eq i64 %i.ne, 0, !nosanitize !12
  %i.ng = and i1 %i.nc, %i.nf, !nosanitize !12
  br i1 %i.ng, label %bb.dj, label %bb.di, !prof !13, !nosanitize !12

bb.di:                                            ; preds = %bb.dh
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @390, i64 %i.nd) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dj:                                            ; preds = %bb.dh
  %i.nh = load ptr, ptr %i.nb, align 8, !tbaa !32 ; 4 uses
  store ptr %i.nh, ptr %i.mx, align 8, !tbaa !32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 2 uses
  store ptr %i.nb, ptr %i.ni, align 8, !tbaa !33
  %i.nj = icmp ne ptr %i.nh, null, !nosanitize !12
  %i.nk = ptrtoint ptr %i.nh to i64, !nosanitize !12 ; 2 uses
  %i.nl = and i64 %i.nk, 7, !nosanitize !12
  %i.nm = icmp eq i64 %i.nl, 0, !nosanitize !12
  %i.nn = and i1 %i.nj, %i.nm, !nosanitize !12
  br i1 %i.nn, label %bb.dl, label %bb.dk, !prof !13, !nosanitize !12

bb.dk:                                            ; preds = %bb.dj
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @392, i64 %i.nk) #14, !nosanitize !12
  unreachable, !nosanitize !12

bb.dl:                                            ; preds = %bb.dj
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.mx, ptr %i.no, align 8, !tbaa !33
end_hunk_0
