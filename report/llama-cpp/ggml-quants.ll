Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_row_iq3_xxs_impl:bb.a
  %.0355..10 = select i1 %i.qr, float %.0355..9, float %i.qq ; 2 uses
  %i.qs = load float, ptr %i.ca, align 16, !tbaa !36 ; 2 uses
  %i.qt = fcmp ogt float %.0355..10, %i.qs
  %.0355..11 = select i1 %i.qt, float %.0355..10, float %i.qs ; 2 uses
  %i.qu = load float, ptr %i.cb, align 4, !tbaa !36 ; 2 uses
  %i.qv = fcmp ogt float %.0355..11, %i.qu
  %.0355..12 = select i1 %i.qv, float %.0355..11, float %i.qu ; 2 uses
  %i.qw = load float, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.qx = fcmp ogt float %.0355..12, %i.qw
  %.0355..13 = select i1 %i.qx, float %.0355..12, float %i.qw ; 2 uses
  %i.qy = load float, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.qz = fcmp ogt float %.0355..13, %i.qy
  %.0355..14 = select i1 %i.qz, float %.0355..13, float %i.qy ; 2 uses
  %i.ra = load float, ptr %i.ce, align 16, !tbaa !36 ; 2 uses
  %i.rb = fcmp ogt float %.0355..14, %i.ra
  %.0355..15 = select i1 %i.rb, float %.0355..14, float %i.ra ; 2 uses
  %i.rc = load float, ptr %i.cf, align 4, !tbaa !36 ; 2 uses
  %i.rd = fcmp ogt float %.0355..15, %i.rc
  %.0355..16 = select i1 %i.rd, float %.0355..15, float %i.rc ; 2 uses
  %i.re = load float, ptr %i.cg, align 8, !tbaa !36 ; 2 uses
  %i.rf = fcmp ogt float %.0355..16, %i.re
  %.0355..17 = select i1 %i.rf, float %.0355..16, float %i.re ; 2 uses
  %i.rg = load float, ptr %i.ch, align 4, !tbaa !36 ; 2 uses
  %i.rh = fcmp ogt float %.0355..17, %i.rg
  %.0355..18 = select i1 %i.rh, float %.0355..17, float %i.rg ; 2 uses
  %i.ri = load float, ptr %i.ci, align 16, !tbaa !36 ; 2 uses
  %i.rj = fcmp ogt float %.0355..18, %i.ri
  %.0355..19 = select i1 %i.rj, float %.0355..18, float %i.ri ; 2 uses
  %i.rk = load float, ptr %i.cj, align 4, !tbaa !36 ; 2 uses
  %i.rl = fcmp ogt float %.0355..19, %i.rk
  %.0355..20 = select i1 %i.rl, float %.0355..19, float %i.rk ; 2 uses
  %i.rm = load float, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %i.rn = fcmp ogt float %.0355..20, %i.rm
  %.0355..21 = select i1 %i.rn, float %.0355..20, float %i.rm ; 2 uses
  %i.ro = load float, ptr %i.cl, align 4, !tbaa !36 ; 2 uses
  %i.rp = fcmp ogt float %.0355..21, %i.ro
  %.0355..22 = select i1 %i.rp, float %.0355..21, float %i.ro ; 2 uses
  %i.rq = load float, ptr %i.cm, align 16, !tbaa !36 ; 2 uses
  %i.rr = fcmp ogt float %.0355..22, %i.rq
  %.0355..23 = select i1 %i.rr, float %.0355..22, float %i.rq ; 2 uses
  %i.rs = load float, ptr %i.cn, align 4, !tbaa !36 ; 2 uses
  %i.rt = fcmp ogt float %.0355..23, %i.rs
  %.0355..24 = select i1 %i.rt, float %.0355..23, float %i.rs ; 2 uses
  %i.ru = load float, ptr %i.co, align 8, !tbaa !36 ; 2 uses
  %i.rv = fcmp ogt float %.0355..24, %i.ru
  %.0355..25 = select i1 %i.rv, float %.0355..24, float %i.ru ; 2 uses
  %i.rw = load float, ptr %i.cp, align 4, !tbaa !36 ; 2 uses
  %i.rx = fcmp ogt float %.0355..25, %i.rw
  %.0355..26 = select i1 %i.rx, float %.0355..25, float %i.rw ; 2 uses
  %i.ry = load float, ptr %i.cq, align 16, !tbaa !36 ; 2 uses
  %i.rz = fcmp ogt float %.0355..26, %i.ry
  %.0355..27 = select i1 %i.rz, float %.0355..26, float %i.ry ; 2 uses
  %i.sa = load float, ptr %i.cr, align 4, !tbaa !36 ; 2 uses
  %i.sb = fcmp ogt float %.0355..27, %i.sa
  %.0355..28 = select i1 %i.sb, float %.0355..27, float %i.sa ; 2 uses
  %i.sc = load float, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.sd = fcmp ogt float %.0355..28, %i.sc
  %.0355..29 = select i1 %i.sd, float %.0355..28, float %i.sc ; 2 uses
  %i.se = load float, ptr %i.ct, align 4, !tbaa !36 ; 2 uses
  %i.sf = fcmp ogt float %.0355..29, %i.se
  %.0355..30 = select i1 %i.sf, float %.0355..29, float %i.se ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.sg = fcmp olt float %.0355..30, f0x322BCC77
  br i1 %i.sg, label %bb.r, label %.preheader431.preheader

bb.p:                                             ; preds = %.preheader427
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.on
  %i.si = load float, ptr %i.sh, align 16, !tbaa !36
  %i.sj = extractelement <4 x float> %i.oq, i64 0 ; 2 uses
  %i.sk = fmul float %i.si, %i.sj
  %i.sl = fmul float %i.sj, %i.sk                 ; 2 uses
  %i.sm = or disjoint i64 %i.on, 1                ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.sm
  %i.so = load float, ptr %i.sn, align 4, !tbaa !36
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.sm
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !36 ; 2 uses
  %i.sr = fmul float %i.so, %i.sq
  %i.ss = fmul float %i.sq, %i.sr                 ; 2 uses
  %i.st = fcmp olt float %i.ss, %i.sl             ; 2 uses
  %.1360 = zext i1 %i.st to i32
  %.1358 = select i1 %i.st, float %i.ss, float %i.sl ; 2 uses
  %i.su = or disjoint i64 %i.on, 2                ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.su
  %i.sx = load <4 x float>, ptr %i.sv, align 8, !tbaa !36
  %i.sy = load <4 x float>, ptr %i.sw, align 4, !tbaa !36 ; 5 uses
  %i.sz = fmul <4 x float> %i.sx, %i.sy           ; 4 uses
  %foldExtExtBinop = fmul <4 x float> %i.sy, %i.sz
  %i.ta = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.tb = fcmp olt float %i.ta, %.1358            ; 2 uses
  %.1360.1 = select i1 %i.tb, i32 2, i32 %.1360
  %.1358.1 = select i1 %i.tb, float %i.ta, float %.1358 ; 2 uses
  %foldExtExtBinop11 = fmul <4 x float> %i.sy, %i.sz
  %i.tc = extractelement <4 x float> %foldExtExtBinop11, i64 1 ; 2 uses
  %i.td = fcmp olt float %i.tc, %.1358.1          ; 2 uses
  %.1360.2 = select i1 %i.td, i32 3, i32 %.1360.1
  %.1358.2 = select i1 %i.td, float %i.tc, float %.1358.1 ; 2 uses
  %foldExtExtBinop13 = fmul <4 x float> %i.sy, %i.sz
  %i.te = extractelement <4 x float> %foldExtExtBinop13, i64 2 ; 2 uses
  %i.tf = fcmp olt float %i.te, %.1358.2          ; 2 uses
  %.1360.3 = select i1 %i.tf, i32 4, i32 %.1360.2
  %.1358.3 = select i1 %i.tf, float %i.te, float %.1358.2 ; 2 uses
  %foldExtExtBinop15 = fmul <4 x float> %i.sy, %i.sz
  %i.tg = extractelement <4 x float> %foldExtExtBinop15, i64 3 ; 2 uses
  %i.th = fcmp olt float %i.tg, %.1358.3          ; 2 uses
  %.1360.4 = select i1 %i.th, i32 5, i32 %.1360.3
  %.1358.4 = select i1 %i.th, float %i.tg, float %.1358.3 ; 2 uses
  %i.ti = or disjoint i64 %i.on, 6                ; 2 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ti
  %i.tk = load float, ptr %i.tj, align 8, !tbaa !36
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.ti
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !36 ; 2 uses
  %i.tn = fmul float %i.tk, %i.tm
  %i.to = fmul float %i.tm, %i.tn                 ; 2 uses
  %i.tp = fcmp olt float %i.to, %.1358.4          ; 2 uses
  %.1360.5 = select i1 %i.tp, i32 6, i32 %.1360.4
  %.1358.5 = select i1 %i.tp, float %i.to, float %.1358.4
  %i.tq = or disjoint i64 %i.on, 7                ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.tq
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !36
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.tq
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !36 ; 2 uses
  %i.tv = fmul float %i.ts, %i.tu
  %i.tw = fmul float %i.tu, %i.tv
  %i.tx = fcmp olt float %i.tw, %.1358.5
  %.1360.6 = select i1 %i.tx, i32 7, i32 %.1360.5 ; 2 uses
  %i.ty = zext nneg i32 %.1360.6 to i64
  %i.tz = or i64 %i.on, %i.ty
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.tz ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !36
  %i.uc = fneg float %i.ub
  store float %i.uc, ptr %i.ua, align 4, !tbaa !36
  %i.ud = shl nuw nsw i32 1, %.1360.6
  %i.ue = trunc nuw i32 %i.ud to i8
  %i.uf = xor i8 %.1363.6, %i.ue
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader427
  %.2364 = phi i8 [ %i.uf, %bb.p ], [ %.1363.6, %.preheader427 ]
  %i.ug = and i8 %.2364, 127
  %i.uh = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv522
  store i8 %i.ug, ptr %i.uh, align 1, !tbaa !34
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next523, 4
  br i1 %exitcond525.not, label %bb.o, label %.preheader427, !llvm.loop !672

bb.r:                                             ; preds = %bb.o
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv585
  store float 0.000000e+00, ptr %i.ui, align 4, !tbaa !36
  br label %bb.al

.preheader431.preheader:                          ; preds = %bb.o
  store i64 72340172838076673, ptr %i.g, align 8
  %i.uj = fdiv float %.0355..30, 1.500000e+01
  br label %.preheader431

.preheader430:                                    ; preds = %.loopexit425
  store i64 %i.ys, ptr %i.g, align 8
  %i.uk = load <4 x i8>, ptr %i.g, align 8, !tbaa !87
  %i.ul = xor <4 x i8> %i.uk, splat (i8 1)
  %i.um = load i8, ptr %i.cu, align 4, !tbaa !87, !range !88, !noundef !48
  %i.un = xor i8 %i.um, 1
  %i.uo = load i8, ptr %i.cv, align 1, !tbaa !87, !range !88, !noundef !48
  %i.up = xor i8 %i.uo, 1
  %i.uq = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.ul)
  %op.rdx = add i8 %i.uq, %i.un
  %op.rdx9 = add i8 %op.rdx, %i.up
  %spec.select.5 = zext nneg i8 %op.rdx9 to i32
  %i.ur = load i8, ptr %i.cw, align 2, !tbaa !87, !range !88, !noundef !48
  %i.us = xor i8 %i.ur, 1
  %i.ut = zext nneg i8 %i.us to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %i.ut
  %i.uu = load i8, ptr %i.cx, align 1, !tbaa !87, !range !88, !noundef !48
  %i.uv = xor i8 %i.uu, 1
  %i.uw = zext nneg i8 %i.uv to i32
  %i.ux = or i32 %spec.select.6, %i.uw
  %i.uy = icmp ne i32 %i.ux, 0
  %i.uz = fcmp ogt float %.1350, 0.000000e+00
  %or.cond = select i1 %i.uy, i1 %i.uz, i1 false
  br i1 %or.cond, label %bb.z, label %bb.ag

.preheader431:                                    ; preds = %.preheader431.preheader, %.loopexit425
  %i.va = phi i64 [ %i.ys, %.loopexit425 ], [ 72340172838076673, %.preheader431.preheader ] ; 4 uses
  %.0347471 = phi i32 [ %i.yt, %.loopexit425 ], [ -15, %.preheader431.preheader ] ; 2 uses
  %.0349470 = phi float [ %.1350, %.loopexit425 ], [ %i.uj, %.preheader431.preheader ] ; 2 uses
  %.0352469 = phi float [ %.1353, %.loopexit425 ], [ 0.000000e+00, %.preheader431.preheader ] ; 3 uses
  %i.vb = sitofp i32 %.0347471 to float
  %i.vc = tail call float @llvm.fmuladd.f32(float %i.vb, float 2.000000e-01, float 1.500000e+01)
  %i.vd = fdiv float %i.vc, %.0355..30            ; 2 uses
  %i.ve = fdiv float 1.000000e+00, %i.vd
  %i.vf = insertelement <4 x float> poison, float %i.vd, i64 0
  %i.vg = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = insertelement <4 x float> poison, float %i.ve, i64 0
  %i.vi = shufflevector <4 x float> %i.vh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader421

.preheader421:                                    ; preds = %.preheader431, %bb.w
  %indvars.iv540 = phi i64 [ 0, %.preheader431 ], [ %indvars.iv.next541, %bb.w ] ; 3 uses
  %i.vj = shl nuw nsw i64 %indvars.iv540, 2       ; 3 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vj ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.vj ; 2 uses
  %i.vm = load <4 x float>, ptr %i.vk, align 16, !tbaa !36 ; 2 uses
  %i.vn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vg, <4 x float> %i.vm, <4 x float> splat (float -1.000000e+00))
  %i.vo = fmul <4 x float> %i.vn, splat (float 5.000000e-01)
  %i.vp = fadd <4 x float> %i.vo, splat (float f0x4B400000)
  %i.vq = bitcast <4 x float> %i.vp to <4 x i32>
  %i.vr = and <4 x i32> %i.vq, splat (i32 8388607)
  %i.vs = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.vr, <4 x i32> splat (i32 4194304))
  %i.vt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vs, <4 x i32> splat (i32 7)) ; 2 uses
  %i.vu = trunc nuw nsw <4 x i32> %i.vt to <4 x i8>
  store <4 x i8> %i.vu, ptr %i.vl, align 4, !tbaa !34
  %4 = shl nuw nsw <4 x i32> %i.vt, <i32 0, i32 3, i32 6, i32 9>
  %5 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %4)
  %i.vv = zext nneg i32 %5 to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.vv
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !47 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv540 ; 2 uses
  store i8 1, ptr %i.vy, align 1, !tbaa !87
  %i.vz = icmp slt i32 %i.vx, 0
  br i1 %i.vz, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.preheader421
  store i8 0, ptr %i.vy, align 1, !tbaa !87
  %i.wa = sext i32 %i.vx to i64
  %i.wb = sub nsw i64 0, %i.wa
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.wb
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 -2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !58, !alias.scope !692, !noalias !697 ; 2 uses
  %.not.i = icmp eq i16 %i.we, 0
  br i1 %.not.i, label %bb.t, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.vj
  %i.wg = zext i16 %i.we to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %.pre56.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !36, !alias.scope !694, !noalias !698
  %.phi.trans.insert59.i = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.wh = load <2 x float>, ptr %.phi.trans.insert59.i, align 8, !tbaa !36, !alias.scope !694, !noalias !698
  %i.wi = load <4 x float>, ptr %i.wf, align 16, !tbaa !36, !alias.scope !695, !noalias !699
  %i.wj = insertelement <4 x float> %i.vm, float %.pre56.i, i64 1
  %i.wk = shufflevector <2 x float> %i.wh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wl = shufflevector <4 x float> %i.wj, <4 x float> %i.wk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wm = fneg <4 x float> %i.wl
  br label %.preheader.i

bb.t:                                             ; preds = %bb.s
  store i64 %i.va, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24, !noalias !700
  unreachable

bb.u:                                             ; preds = %.preheader.i
  %i.wn = icmp sgt i32 %.140.i, -1
  br i1 %i.wn, label %iq3_find_best_neighbour.exit, label %bb.v

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 3 uses
  %.03547.i = phi float [ f0x7F7FFFFF, %.preheader.preheader.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %.03945.i = phi i32 [ -1, %.preheader.preheader.i ], [ %.140.i, %.preheader.i ]
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.wd, i64 %indvars.iv.i
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !58, !alias.scope !692, !noalias !697 ; 2 uses
  %i.wq = zext i16 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.wq
  %i.ws = load <4 x i8>, ptr %i.wr, align 1, !tbaa !34, !alias.scope !693, !noalias !701
  %i.wt = sitofp <4 x i8> %i.ws to <4 x float>
  %i.wu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vi, <4 x float> %i.wt, <4 x float> %i.wm) ; 5 uses
  %i.wv = fmul <4 x float> %i.wi, %i.wu           ; 4 uses
  %i.ww = extractelement <4 x float> %i.wv, i64 0
  %i.wx = extractelement <4 x float> %i.wu, i64 0
  %i.wy = tail call float @llvm.fmuladd.f32(float %i.ww, float %i.wx, float 0.000000e+00)
  %i.wz = extractelement <4 x float> %i.wv, i64 1
  %i.xa = extractelement <4 x float> %i.wu, i64 1
  %i.xb = tail call float @llvm.fmuladd.f32(float %i.wz, float %i.xa, float %i.wy)
  %i.xc = extractelement <4 x float> %i.wv, i64 2
  %i.xd = extractelement <4 x float> %i.wu, i64 2
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.xc, float %i.xd, float %i.xb)
  %i.xf = extractelement <4 x float> %i.wv, i64 3
  %i.xg = extractelement <4 x float> %i.wu, i64 3
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.xf, float %i.xg, float %i.xe) ; 2 uses
  %i.xi = fcmp olt float %i.xh, %.03547.i         ; 2 uses
  %i.xj = zext i16 %i.wp to i32
  %.140.i = select i1 %i.xi, i32 %i.xj, i32 %.03945.i ; 3 uses
  %.1.i = select i1 %i.xi, float %i.xh, float %.03547.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.wg
  br i1 %exitcond.not.i, label %bb.u, label %.preheader.i, !llvm.loop !20

bb.v:                                             ; preds = %bb.u
  store i64 %i.va, ptr %i.g, align 8
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3932, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24, !noalias !700
  unreachable

iq3_find_best_neighbour.exit:                     ; preds = %bb.u
  %i.xk = zext nneg i32 %.140.i to i64
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.xk
  %i.xm = load <4 x i8>, ptr %i.xl, align 1, !tbaa !34, !alias.scope !693, !noalias !701
  %i.xn = sext <4 x i8> %i.xm to <4 x i16>
  %i.xo = add nsw <4 x i16> %i.xn, splat (i16 -1)
  %i.xp = sdiv <4 x i16> %i.xo, splat (i16 2)
  %i.xq = trunc nsw <4 x i16> %i.xp to <4 x i8>
  store <4 x i8> %i.xq, ptr %i.vl, align 4, !tbaa !34, !alias.scope !696, !noalias !702
  br label %bb.w

bb.w:                                             ; preds = %iq3_find_best_neighbour.exit, %.preheader421
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next541, 8
  br i1 %exitcond543.not, label %.preheader426, label %.preheader421, !llvm.loop !679

bb.x:                                             ; preds = %.preheader426
  %i.xr = extractelement <2 x float> %i.yk, i64 0 ; 3 uses
  %i.xs = fcmp ogt float %i.xr, 0.000000e+00
  br i1 %i.xs, label %bb.y, label %.loopexit425

.preheader426:                                    ; preds = %bb.w, %.preheader426
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %.preheader426 ], [ 0, %bb.w ] ; 4 uses
  %i.xt = phi <2 x float> [ %i.yk, %.preheader426 ], [ zeroinitializer, %bb.w ]
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv544
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !36
  %i.xw = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv544
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !34
  %i.xy = sext i8 %i.xx to i32
  %i.xz = shl nsw i32 %i.xy, 1
  %i.ya = or disjoint i32 %i.xz, 1
  %i.yb = sitofp i32 %i.ya to float
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv544
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !36
  %i.ye = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.yf = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yg = insertelement <2 x float> poison, float %i.yb, i64 0 ; 2 uses
  %i.yh = insertelement <2 x float> %i.yg, float %i.yd, i64 1
  %i.yi = fmul <2 x float> %i.yf, %i.yh
  %i.yj = shufflevector <2 x float> %i.yg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yi, <2 x float> %i.yj, <2 x float> %i.xt) ; 3 uses
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %exitcond547.not = icmp eq i64 %indvars.iv.next545, 32
  br i1 %exitcond547.not, label %bb.x, label %.preheader426, !llvm.loop !680

bb.y:                                             ; preds = %bb.x
  %i.yl = extractelement <2 x float> %i.yk, i64 1 ; 4 uses
  %i.ym = fmul float %i.yl, %i.yl
  %i.yn = fmul float %.0352469, %i.xr
  %i.yo = fcmp ogt float %i.ym, %i.yn
  br i1 %i.yo, label %.preheader424.preheader, label %.loopexit425

.preheader424.preheader:                          ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 32, i1 false), !tbaa !34
  %i.yp = load i64, ptr %i.h, align 8, !tbaa !87
  %i.yq = fdiv float %i.yl, %i.xr                 ; 2 uses
  %i.yr = fmul float %i.yl, %i.yq
  br label %.loopexit425

.loopexit425:                                     ; preds = %.preheader424.preheader, %bb.y, %bb.x
  %i.ys = phi i64 [ %i.va, %bb.x ], [ %i.va, %bb.y ], [ %i.yp, %.preheader424.preheader ] ; 2 uses
  %.1353 = phi float [ %.0352469, %bb.x ], [ %.0352469, %bb.y ], [ %i.yr, %.preheader424.preheader ]
  %.1350 = phi float [ %.0349470, %bb.x ], [ %.0349470, %bb.y ], [ %i.yq, %.preheader424.preheader ] ; 6 uses
  %i.yt = add nsw i32 %.0347471, 1                ; 2 uses
  %exitcond554.not = icmp eq i32 %i.yt, 16
  br i1 %exitcond554.not, label %.preheader430, label %.preheader431, !llvm.loop !681

bb.z:                                             ; preds = %.preheader430
  %i.yu = fdiv nnan float 1.000000e+00, %.1350
  %i.yv = insertelement <4 x float> poison, float %i.yu, i64 0
  %i.yw = shufflevector <4 x float> %i.yv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yx = insertelement <4 x float> poison, float %.1350, i64 0
  %i.yy = shufflevector <4 x float> %i.yx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  %indvars.iv566 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next567, %.loopexit ] ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv566
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !87, !range !88, !noundef !48
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %.loopexit, label %.preheader423

.preheader423:                                    ; preds = %bb.aa
  %i.zc = shl nuw nsw i64 %indvars.iv566, 2       ; 3 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.zc ; 3 uses
  %i.ze = load <4 x float>, ptr %i.zd, align 16, !tbaa !36 ; 2 uses
  %i.zf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yw, <4 x float> %i.ze, <4 x float> splat (float -1.000000e+00))
  %i.zg = fmul <4 x float> %i.zf, splat (float 5.000000e-01)
  %i.zh = fadd <4 x float> %i.zg, splat (float f0x4B400000)
  %i.zi = bitcast <4 x float> %i.zh to <4 x i32>
  %i.zj = and <4 x i32> %i.zi, splat (i32 8388607)
  %i.zk = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.zj, <4 x i32> splat (i32 4194304))
  %i.zl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.zk, <4 x i32> splat (i32 7))
  %i.zm = shl nuw nsw <4 x i32> %i.zl, <i32 0, i32 3, i32 6, i32 9>
  %i.zn = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.zm)
  %i.zo = zext nneg i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !47 ; 3 uses
  %i.zr = icmp slt i32 %i.zq, 0
  br i1 %i.zr, label %bb.ab, label %.loopexit.loopexit

bb.ab:                                            ; preds = %.preheader423
  %i.zs = sext i32 %i.zq to i64
  %i.zt = sub nsw i64 0, %i.zs
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.zt
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !58, !alias.scope !703, !noalias !707 ; 2 uses
  %.not.i392 = icmp eq i16 %i.zw, 0
  br i1 %.not.i392, label %bb.ac, label %.preheader.preheader.i393

.preheader.preheader.i393:                        ; preds = %bb.ab
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.zc
  %i.zy = zext i16 %i.zw to i64
  %.phi.trans.insert.i396 = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %.pre56.i397 = load float, ptr %.phi.trans.insert.i396, align 4, !tbaa !36, !alias.scope !705, !noalias !708
end_hunk_0
