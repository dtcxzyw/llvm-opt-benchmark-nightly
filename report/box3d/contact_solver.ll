Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3PrepareContacts_Convex:bb.a
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv1200
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !165
  %i.dk = add nsw i32 %i.dh, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv1200
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !165
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1200
  store ptr %i.dd, ptr %i.dm, align 8, !tbaa !166
  %i.dn = icmp eq i32 %i.df, -1                   ; 2 uses
  br i1 %i.dn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.do = sext i32 %i.df to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [216 x i8], ptr %i.d, i64 %i.do ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !102
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 144
  %.sroa.01026.0.copyload1031 = load float, ptr %i.ds, align 4, !tbaa !103
  %.sroa.111034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 148
  %.sroa.211054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 156
  %.sroa.211054.0.copyload1055 = load float, ptr %.sroa.211054.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.251063.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  %i.dt = load <2 x float>, ptr %.sroa.251063.0..sroa_idx, align 4, !tbaa !103
  %.sroa.351083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  %.sroa.351083.0.copyload1084 = load float, ptr %.sroa.351083.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.391092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 172
  %i.du = load <2 x float>, ptr %.sroa.111034.0..sroa_idx, align 4, !tbaa !103
  %i.dv = load <2 x float>, ptr %.sroa.391092.0..sroa_idx, align 4, !tbaa !103
  %i.dw = getelementptr inbounds [56 x i8], ptr %i.f, i64 %i.do ; 4 uses
  %.sroa.0448.0.copyload449 = load <2 x float>, ptr %i.dw, align 4
  %.sroa.5450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.5450.0.copyload451 = load float, ptr %.sroa.5450.0..sroa_idx, align 4, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %.sroa.0444.0.copyload445 = load <2 x float>, ptr %i.dx, align 4
  %.sroa.5446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %.sroa.5446.0.copyload447 = load float, ptr %.sroa.5446.0..sroa_idx, align 4, !tbaa !103
  %i.dy = insertelement <2 x float> poison, float %.sroa.211054.0.copyload1055, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.351083.0.copyload1084, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.01026.0 = phi float [ %.sroa.01026.0.copyload1031, %bb.f ], [ 0.000000e+00, %bb.e ] ; 4 uses
  %.sroa.211054.0 = phi float [ %.sroa.211054.0.copyload1055, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.sroa.351083.0 = phi float [ %.sroa.351083.0.copyload1084, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.sroa.0444.0 = phi <2 x float> [ %.sroa.0444.0.copyload445, %bb.f ], [ zeroinitializer, %bb.e ] ; 3 uses
  %.sroa.5446.0 = phi float [ %.sroa.5446.0.copyload447, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.sroa.0448.0 = phi <2 x float> [ %.sroa.0448.0.copyload449, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5450.0 = phi float [ %.sroa.5450.0.copyload451, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.0694 = phi float [ %i.dr, %bb.f ], [ 0.000000e+00, %bb.e ] ; 6 uses
  %i.ea = phi <2 x float> [ %i.du, %bb.f ], [ zeroinitializer, %bb.e ] ; 5 uses
  %i.eb = phi <2 x float> [ %i.dv, %bb.f ], [ zeroinitializer, %bb.e ] ; 4 uses
  %i.ec = phi <2 x float> [ %i.dt, %bb.f ], [ zeroinitializer, %bb.e ] ; 5 uses
  %i.ed = phi <2 x float> [ %i.dz, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.ee = icmp eq i32 %i.dh, -1                   ; 2 uses
  br i1 %i.ee, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ef = sext i32 %i.dh to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [216 x i8], ptr %i.d, i64 %i.ef ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 104
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !102
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %.sroa.0948.0.copyload953 = load float, ptr %i.ej, align 4, !tbaa !103
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 148
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 156
  %.sroa.21.0.copyload975 = load float, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 160
  %i.ek = load <2 x float>, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !103
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 168
  %.sroa.35.0.copyload1001 = load float, ptr %.sroa.35.0..sroa_idx, align 4, !tbaa !103 ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 172
  %i.el = load <2 x float>, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !103
  %i.em = load <2 x float>, ptr %.sroa.39.0..sroa_idx, align 4, !tbaa !103
  %i.en = getelementptr inbounds [56 x i8], ptr %i.f, i64 %i.ef ; 4 uses
  %.sroa.0432.0.copyload433 = load <2 x float>, ptr %i.en, align 4
  %.sroa.5434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.5434.0.copyload435 = load float, ptr %.sroa.5434.0..sroa_idx, align 4, !tbaa !103
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %.sroa.0428.0.copyload429 = load <2 x float>, ptr %i.eo, align 4
  %.sroa.5430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %.sroa.5430.0.copyload431 = load float, ptr %.sroa.5430.0..sroa_idx, align 4, !tbaa !103
  %i.ep = insertelement <2 x float> poison, float %.sroa.21.0.copyload975, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %.sroa.35.0.copyload1001, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.21.0 = phi float [ %.sroa.21.0.copyload975, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0948.0 = phi float [ %.sroa.0948.0.copyload953, %bb.h ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %.sroa.35.0 = phi float [ %.sroa.35.0.copyload1001, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0428.0 = phi <2 x float> [ %.sroa.0428.0.copyload429, %bb.h ], [ zeroinitializer, %bb.g ] ; 3 uses
  %.sroa.5430.0 = phi float [ %.sroa.5430.0.copyload431, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0432.0 = phi <2 x float> [ %.sroa.0432.0.copyload433, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %.sroa.5434.0 = phi float [ %.sroa.5434.0.copyload435, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.0695 = phi float [ %i.ei, %bb.h ], [ 0.000000e+00, %bb.g ] ; 6 uses
  %i.er = phi <2 x float> [ %i.el, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.es = phi <2 x float> [ %i.em, %bb.h ], [ zeroinitializer, %bb.g ] ; 4 uses
  %i.et = phi <2 x float> [ %i.ek, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.eu = phi <2 x float> [ %i.eq, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv1200
  store float %.0694, ptr %i.ev, align 4, !tbaa !167
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv1200
  store float %.0695, ptr %i.ew, align 4, !tbaa !167
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv1200
  store float %.sroa.01026.0, ptr %i.ex, align 4, !tbaa !167
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv1200
  %i.ez = extractelement <2 x float> %i.ea, i64 0
  store float %i.ez, ptr %i.ey, align 4, !tbaa !167
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv1200
  %i.fb = extractelement <2 x float> %i.ea, i64 1
  store float %i.fb, ptr %i.fa, align 4, !tbaa !167
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv1200
  %i.fd = extractelement <2 x float> %i.ec, i64 0
  store float %i.fd, ptr %i.fc, align 4, !tbaa !167
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1200
  %i.ff = extractelement <2 x float> %i.ec, i64 1
  store float %i.ff, ptr %i.fe, align 4, !tbaa !167
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv1200
  %i.fh = extractelement <2 x float> %i.eb, i64 1
  store float %i.fh, ptr %i.fg, align 4, !tbaa !167
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv1200
  store float %.sroa.0948.0, ptr %i.fi, align 4, !tbaa !167
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv1200
  %i.fk = extractelement <2 x float> %i.er, i64 0
  store float %i.fk, ptr %i.fj, align 4, !tbaa !167
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv1200
  %i.fm = extractelement <2 x float> %i.er, i64 1
  store float %i.fm, ptr %i.fl, align 4, !tbaa !167
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv1200
  %i.fo = extractelement <2 x float> %i.et, i64 0
  store float %i.fo, ptr %i.fn, align 4, !tbaa !167
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv1200
  %i.fq = extractelement <2 x float> %i.et, i64 1
  store float %i.fq, ptr %i.fp, align 4, !tbaa !167
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv1200
  %i.fs = extractelement <2 x float> %i.es, i64 1
  store float %i.fs, ptr %i.fr, align 4, !tbaa !167
  %or.cond = or i1 %i.dn, %i.ee                   ; 3 uses
  %.sroa.0661.0.copyload..sroa.0664.0.copyload = select i1 %or.cond, float %.sroa.0661.0.copyload, float %.sroa.0664.0.copyload
  %.sroa.4662.0.copyload..sroa.4665.0.copyload = select i1 %or.cond, float %.sroa.4662.0.copyload, float %.sroa.4665.0.copyload
  %.sroa.5663.0.copyload..sroa.5666.0.copyload = select i1 %or.cond, float %.sroa.5663.0.copyload, float %.sroa.5666.0.copyload
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dd, i64 224
  %.sroa.0407.0.copyload = load <2 x float>, ptr %i.ft, align 4 ; 14 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 232
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !103 ; 11 uses
  %.sroa.0407.0.vec.extract = extractelement <2 x float> %.sroa.0407.0.copyload, i64 0 ; 5 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1200
  store float %.sroa.0407.0.vec.extract, ptr %i.fu, align 4, !tbaa !167
  %.sroa.0407.4.vec.extract = extractelement <2 x float> %.sroa.0407.0.copyload, i64 1 ; 6 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv1200
  store float %.sroa.0407.4.vec.extract, ptr %i.fv, align 4, !tbaa !167
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv1200
  store float %.sroa.13.0.copyload, ptr %i.fw, align 4, !tbaa !167
  %i.fx = tail call float @llvm.fabs.f32(float %.sroa.0407.0.vec.extract)
  %or.cond.i = fcmp ogt float %i.fx, 5.000000e-01
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.012.0.vec.insert15.i = shufflevector <2 x float> %.sroa.0407.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fy = fneg <2 x float> %.sroa.0407.0.copyload
  %.sroa.012.4.vec.insert17.i = shufflevector <2 x float> %.sroa.012.0.vec.insert15.i, <2 x float> %i.fy, <2 x i32> <i32 0, i32 2>
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fz = fneg float %.sroa.0407.4.vec.extract
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.sroa.13.0.copyload, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert17.i, %bb.j ], [ %.sroa.012.4.vec.insert.i, %bb.k ] ; 3 uses
  %.sroa.7.0.i = phi float [ 0.000000e+00, %bb.j ], [ %i.fz, %bb.k ] ; 3 uses
  %i.ga = fmul <2 x float> %.sroa.012.0.i, %.sroa.012.0.i ; 2 uses
  %shift = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ga, %shift
  %i.gb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.gc = fmul float %.sroa.7.0.i, %.sroa.7.0.i
  %i.gd = fadd float %i.gc, %i.gb                 ; 2 uses
  %i.ge = fcmp ogt float %i.gd, f0x057A0000
  br i1 %i.ge, label %bb.m, label %b3Perp.exit

bb.m:                                             ; preds = %bb.l
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.gd)
  %i.gf = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.gg = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %.sroa.012.0.i, %i.gh
  %i.gj = fmul float %.sroa.7.0.i, %i.gf
  br label %b3Perp.exit

b3Perp.exit:                                      ; preds = %bb.l, %bb.m
  %.sroa.018.0.i.i = phi <2 x float> [ %i.gi, %bb.m ], [ zeroinitializer, %bb.l ] ; 8 uses
  %.sroa.5.0.i.i = phi float [ %i.gj, %bb.m ], [ 0.000000e+00, %bb.l ] ; 8 uses
  %.sroa.0401.0.vec.extract = extractelement <2 x float> %.sroa.018.0.i.i, i64 0 ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv1200
  store float %.sroa.0401.0.vec.extract, ptr %i.gk, align 4, !tbaa !167
  %.sroa.0401.4.vec.extract = extractelement <2 x float> %.sroa.018.0.i.i, i64 1 ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv1200
  store float %.sroa.0401.4.vec.extract, ptr %i.gl, align 4, !tbaa !167
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv1200
  store float %.sroa.5.0.i.i, ptr %i.gm, align 4, !tbaa !167
  %i.gn = fmul float %.sroa.13.0.copyload, %.sroa.0401.4.vec.extract
  %i.go = fmul float %.sroa.0407.4.vec.extract, %.sroa.5.0.i.i
  %i.gp = fsub float %i.gn, %i.go                 ; 6 uses
  %i.gq = fmul float %.sroa.0407.0.vec.extract, %.sroa.5.0.i.i
  %i.gr = fmul float %.sroa.0407.4.vec.extract, %.sroa.0401.0.vec.extract
  %i.gs = fmul float %.sroa.13.0.copyload, %.sroa.0401.0.vec.extract
  %i.gt = fmul float %.sroa.0407.0.vec.extract, %.sroa.0401.4.vec.extract
  %i.gu = fsub float %i.gq, %i.gs                 ; 6 uses
  %i.gv = fsub float %i.gr, %i.gt                 ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1200
  store float %i.gp, ptr %i.gw, align 4, !tbaa !167
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv1200
  store float %i.gu, ptr %i.gx, align 4, !tbaa !167
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv1200
  store float %i.gv, ptr %i.gy, align 4, !tbaa !167
  %i.gz = getelementptr inbounds nuw i8, ptr %i.db, i64 144
  %i.ha = load float, ptr %i.gz, align 8, !tbaa !112
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv1200
  store float %i.ha, ptr %i.hb, align 4, !tbaa !167
  %i.hc = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !216
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1200
  store float %i.hd, ptr %i.he, align 4, !tbaa !167
  %i.hf = getelementptr inbounds nuw i8, ptr %i.db, i64 196
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !217
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv1200
  store float %i.hg, ptr %i.hh, align 4, !tbaa !167
  %i.hi = getelementptr inbounds nuw i8, ptr %i.db, i64 200 ; 2 uses
  %.sroa.0379.0.copyload = load <2 x float>, ptr %i.hi, align 8 ; 2 uses
  %.sroa.2380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 208 ; 2 uses
  %.sroa.2380.0.copyload = load float, ptr %.sroa.2380.0..sroa_idx, align 8
  %foldExtExtBinop1221 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.0379.0.copyload
  %foldExtExtBinop1223 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.0379.0.copyload
  %shift1225 = shufflevector <2 x float> %foldExtExtBinop1223, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1226 = fadd <2 x float> %foldExtExtBinop1221, %shift1225
  %i.hj = extractelement <2 x float> %foldExtExtBinop1226, i64 0
  %i.hk = fmul float %.sroa.5.0.i.i, %.sroa.2380.0.copyload
  %i.hl = fadd float %i.hk, %i.hj
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv1200
  store float %i.hl, ptr %i.hm, align 4, !tbaa !167
  %.sroa.0375.0.copyload = load <2 x float>, ptr %i.hi, align 8 ; 2 uses
  %.sroa.2376.0.copyload = load float, ptr %.sroa.2380.0..sroa_idx, align 8
  %.sroa.04.0.vec.extract.i705 = extractelement <2 x float> %.sroa.0375.0.copyload, i64 0
  %i.hn = fmul float %i.gp, %.sroa.04.0.vec.extract.i705
  %.sroa.04.4.vec.extract.i707 = extractelement <2 x float> %.sroa.0375.0.copyload, i64 1
  %i.ho = fmul float %i.gu, %.sroa.04.4.vec.extract.i707
  %i.hp = fadd float %i.hn, %i.ho
  %i.hq = fmul float %i.gv, %.sroa.2376.0.copyload
  %i.hr = fadd float %i.hq, %i.hp
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1200
  store float %i.hr, ptr %i.hs, align 4, !tbaa !167
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv1200
  store float %.sroa.0661.0.copyload..sroa.0664.0.copyload, ptr %i.ht, align 4, !tbaa !167
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv1200
  store float %.sroa.4662.0.copyload..sroa.4665.0.copyload, ptr %i.hu, align 4, !tbaa !167
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv1200
  store float %.sroa.5663.0.copyload..sroa.5666.0.copyload, ptr %i.hv, align 4, !tbaa !167
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dd, i64 264
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !117 ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv1200
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !165
  %i.hz = icmp sgt i32 %i.hx, 0                   ; 2 uses
  br i1 %i.hz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b3Perp.exit
  %i.ia = fadd float %.0694, %.0695
  %.sroa.06.0.vec.extract.i779 = extractelement <2 x float> %.sroa.0448.0, i64 0
  %.sroa.06.4.vec.extract.i782 = extractelement <2 x float> %.sroa.0448.0, i64 1
  %.sroa.011.0.vec.extract.i791 = extractelement <2 x float> %.sroa.0428.0, i64 0 ; 2 uses
  %.sroa.06.0.vec.extract.i795 = extractelement <2 x float> %.sroa.0432.0, i64 0
  %.sroa.06.4.vec.extract.i798 = extractelement <2 x float> %.sroa.0432.0, i64 1
  %wide.trip.count = zext nneg i32 %i.hx to i64
  %i.ib = shufflevector <2 x float> %i.eb, <2 x float> %i.es, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.ic = insertelement <8 x float> %i.ib, float %.sroa.351083.0, i64 0
  %i.id = insertelement <8 x float> %i.ic, float %.sroa.35.0, i64 3
  %i.ie = shufflevector <2 x float> %i.ea, <2 x float> %i.er, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.if = insertelement <8 x float> %i.ie, float %.sroa.01026.0, i64 0
  %i.ig = insertelement <8 x float> %i.if, float %.sroa.0948.0, i64 3
  %i.ih = shufflevector <2 x float> %i.ec, <2 x float> %i.et, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.ii = insertelement <8 x float> %i.ih, float %.sroa.211054.0, i64 0
  %i.ij = insertelement <8 x float> %i.ii, float %.sroa.21.0, i64 3
  %i.ik = shufflevector <2 x float> %.sroa.0407.0.copyload, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.il = insertelement <8 x float> %i.ik, float %.0695, i64 6
  %i.im = insertelement <8 x float> %i.il, float %.0694, i64 7
  %i.in = shufflevector <2 x float> %.sroa.0444.0, <2 x float> %.sroa.0428.0, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.io = insertelement <4 x float> %i.in, float %.sroa.5446.0, i64 1
  %shift1232 = shufflevector <2 x float> %.sroa.0428.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %b3Perp.exit
  %.0696.lcssa = phi float [ 0.000000e+00, %b3Perp.exit ], [ %i.kl, %bb.n ]
  %.sroa.0358.0.lcssa = phi <2 x float> [ zeroinitializer, %b3Perp.exit ], [ %i.kg, %bb.n ] ; 2 uses
  %.sroa.0363.0.lcssa = phi <2 x float> [ zeroinitializer, %b3Perp.exit ], [ %i.ke, %bb.n ] ; 2 uses
  %i.ip = phi <2 x float> [ zeroinitializer, %b3Perp.exit ], [ %i.kk, %bb.n ] ; 2 uses
  %.sroa.05.0.vec.extract.i = extractelement <2 x float> %.sroa.0363.0.lcssa, i64 0
  %i.iq = fdiv float 1.000000e+00, %.0696.lcssa   ; 2 uses
  %i.ir = fmul float %i.iq, %.sroa.05.0.vec.extract.i ; 6 uses
  %i.is = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.it = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.iu = shufflevector <2 x float> %.sroa.0358.0.lcssa, <2 x float> %.sroa.0363.0.lcssa, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.iv = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ix = fmul <4 x float> %i.it, %i.iw           ; 10 uses
  %i.iy = shufflevector <2 x float> %i.ip, <2 x float> %.sroa.0358.0.lcssa, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.iz = fmul <4 x float> %i.it, %i.iy           ; 4 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv1200
  store float %i.ir, ptr %i.ja, align 4, !tbaa !167
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv1200
  %i.jc = extractelement <4 x float> %i.ix, i64 3 ; 3 uses
  store float %i.jc, ptr %i.jb, align 4, !tbaa !167
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv1200
  %i.je = extractelement <4 x float> %i.iz, i64 3 ; 3 uses
  store float %i.je, ptr %i.jd, align 4, !tbaa !167
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv1200
  %i.jg = extractelement <4 x float> %i.ix, i64 2 ; 2 uses
  store float %i.jg, ptr %i.jf, align 4, !tbaa !167
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv1200
  %i.ji = extractelement <4 x float> %i.ix, i64 0 ; 2 uses
  store float %i.ji, ptr %i.jh, align 4, !tbaa !167
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv1200
  %i.jk = extractelement <4 x float> %i.ix, i64 1
  store float %i.jk, ptr %i.jj, align 4, !tbaa !167
  br i1 %i.hz, label %.lr.ph1169.preheader, label %._crit_edge1170

.lr.ph1169.preheader:                             ; preds = %._crit_edge
  %wide.trip.count1194 = zext nneg i32 %i.hx to i64
  %i.jl = shufflevector <4 x float> %i.ix, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.jm = insertelement <2 x float> %i.jl, float %i.ir, i64 0
  br label %.lr.ph1169

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv1188 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1189, %bb.n ] ; 3 uses
  %.sroa.0363.01161 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ke, %bb.n ]
  %.sroa.0358.01159 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.kg, %bb.n ]
  %.06961158 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.kl, %bb.n ]
  %i.jn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.kk, %bb.n ]
  %i.jo = getelementptr inbounds nuw [56 x i8], ptr %i.dd, i64 %indvars.iv1188 ; 6 uses
  %i.jp = getelementptr inbounds nuw [192 x i8], ptr %i.bz, i64 %indvars.iv1188 ; 11 uses
  %.sroa.0331.0.copyload = load <2 x float>, ptr %i.jo, align 4 ; 11 uses
  %.sroa.9336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.9336.0.copyload = load float, ptr %.sroa.9336.0..sroa_idx, align 4, !tbaa !103 ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %.sroa.0326.0.copyload = load <2 x float>, ptr %i.jq, align 4 ; 10 uses
  %i.jr = shufflevector <2 x float> %.sroa.0326.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.js = shufflevector <2 x float> %.sroa.0326.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !103 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !124 ; 2 uses
  %i.jv = fmul float %i.v, %i.ju
  %i.jw = fsub float 2.000000e+00, %i.jv          ; 3 uses
  %i.jx = fcmp olt float %i.jw, 1.000000e-10
  %i.jy = fcmp ogt float %i.jw, 1.000000e+00
  %i.jz = select i1 %i.jy, float 1.000000e+00, float %i.jw
  %i.ka = select i1 %i.jx, float 1.000000e-10, float %i.jz ; 2 uses
  %.sroa.05.0.vec.extract.i717 = extractelement <2 x float> %.sroa.0331.0.copyload, i64 0
  %.sroa.05.4.vec.extract.i718 = extractelement <2 x float> %.sroa.0331.0.copyload, i64 1 ; 2 uses
  %i.kb = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kd = fmul <2 x float> %.sroa.0331.0.copyload, %i.kc
  %i.ke = fadd <2 x float> %.sroa.0363.01161, %i.kd ; 2 uses
  %.sroa.05.0.vec.extract.i722 = extractelement <2 x float> %.sroa.0326.0.copyload, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i725 = extractelement <2 x float> %.sroa.0326.0.copyload, i64 1 ; 3 uses
  %i.kf = fmul <2 x float> %.sroa.0326.0.copyload, %i.kc
  %i.kg = fadd <2 x float> %.sroa.0358.01159, %i.kf ; 2 uses
  %i.kh = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %.sroa.9336.0.copyload, i64 1
  %i.kj = fmul <2 x float> %i.ki, %i.kc
  %i.kk = fadd <2 x float> %i.jn, %i.kj           ; 2 uses
  %i.kl = fadd float %.06961158, %i.ka            ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv1200
  store float %.sroa.05.0.vec.extract.i717, ptr %i.km, align 4, !tbaa !167
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv1200
  store float %.sroa.05.4.vec.extract.i718, ptr %i.ko, align 4, !tbaa !167
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv1200
  store float %.sroa.9336.0.copyload, ptr %i.kq, align 4, !tbaa !167
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv1200
  store float %.sroa.05.0.vec.extract.i722, ptr %i.ks, align 4, !tbaa !167
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv1200
  store float %.sroa.05.4.vec.extract.i725, ptr %i.ku, align 4, !tbaa !167
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv1200
  store float %.sroa.9.0.copyload, ptr %i.kw, align 4, !tbaa !167
  %foldExtExtBinop1228 = fsub <2 x float> %.sroa.0326.0.copyload, %.sroa.0331.0.copyload
  %i.kx = fsub float %.sroa.05.4.vec.extract.i725, %.sroa.05.4.vec.extract.i718
  %i.ky = fsub float %.sroa.9.0.copyload, %.sroa.9336.0.copyload
  %foldExtExtBinop1230 = fmul <2 x float> %.sroa.0407.0.copyload, %foldExtExtBinop1228
  %i.kz = extractelement <2 x float> %foldExtExtBinop1230, i64 0
  %i.la = fmul float %.sroa.0407.4.vec.extract, %i.kx
  %i.lb = fadd float %i.kz, %i.la
  %i.lc = fmul float %.sroa.13.0.copyload, %i.ky
  %i.ld = fadd float %i.lc, %i.lb
  %i.le = fsub float %i.ju, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jp, i64 96
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %indvars.iv1200
  store float %i.le, ptr %i.lg, align 4, !tbaa !167
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.li = load float, ptr %i.lh, align 4, !tbaa !125
  %i.lj = fmul float %i.s, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jp, i64 112
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv1200
  store float %i.lj, ptr %i.ll, align 4, !tbaa !167
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv1200
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !167
  %i.lo = shufflevector <2 x float> %.sroa.0331.0.copyload, <2 x float> %.sroa.0407.0.copyload, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = shufflevector <8 x float> %i.lq, <8 x float> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ls = shufflevector <2 x float> %.sroa.0331.0.copyload, <2 x float> %.sroa.0326.0.copyload, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.lt = shufflevector <8 x float> %i.ls, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.lu = insertelement <8 x float> %i.lt, float %.sroa.13.0.copyload, i64 0
  %i.lv = insertelement <8 x float> %i.lu, float %.sroa.9336.0.copyload, i64 1
  %i.lw = insertelement <8 x float> %i.lv, float %.sroa.9.0.copyload, i64 4
  %i.lx = shufflevector <8 x float> %i.lw, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 4, i32 5, i32 6, i32 7>
  %i.ly = fmul <8 x float> %i.lr, %i.lx
  %i.lz = shufflevector <2 x float> %.sroa.0326.0.copyload, <2 x float> %.sroa.0407.0.copyload, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mb = shufflevector <8 x float> %i.ma, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %i.mc = shufflevector <2 x float> %.sroa.0407.0.copyload, <2 x float> %.sroa.0331.0.copyload, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.md = shufflevector <8 x float> %i.mc, <8 x float> %i.mb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.me = shufflevector <2 x float> %.sroa.0331.0.copyload, <2 x float> %.sroa.0326.0.copyload, <8 x i32> <i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 3, i32 poison, i32 poison>
  %i.mf = shufflevector <8 x float> %i.me, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 5, i32 14, i32 15>
  %i.mg = insertelement <8 x float> %i.mf, float %.sroa.9336.0.copyload, i64 0
  %i.mh = insertelement <8 x float> %i.mg, float %.sroa.13.0.copyload, i64 1
  %i.mi = insertelement <8 x float> %i.mh, float %.sroa.9.0.copyload, i64 3
  %i.mj = shufflevector <8 x float> %i.mi, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %i.mk = fmul <8 x float> %i.md, %i.mj
  %i.ml = fsub <8 x float> %i.ly, %i.mk           ; 4 uses
  %i.mm = shufflevector <8 x float> %i.ml, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 poison, i32 poison>
  %i.mn = fmul <8 x float> %i.ig, %i.mm
  %i.mo = shufflevector <8 x float> %i.ml, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 4, i32 4, i32 4, i32 poison, i32 poison>
  %i.mp = fmul <8 x float> %i.ij, %i.mo
  %i.mq = fadd <8 x float> %i.mn, %i.mp
  %i.mr = shufflevector <8 x float> %i.ml, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 5, i32 5, i32 5, i32 poison, i32 poison>
  %i.ms = fmul <8 x float> %i.id, %i.mr
  %i.mt = fadd <8 x float> %i.ms, %i.mq
  %i.mu = fmul <8 x float> %i.ml, %i.mt           ; 6 uses
  %i.mv = extractelement <8 x float> %i.mu, i64 0
  %i.mw = extractelement <8 x float> %i.mu, i64 1
  %i.mx = fadd float %i.mv, %i.mw
  %i.my = extractelement <8 x float> %i.mu, i64 2
  %i.mz = fadd float %i.my, %i.mx
  %i.na = fadd float %i.ia, %i.mz
  %i.nb = extractelement <8 x float> %i.mu, i64 3
  %i.nc = extractelement <8 x float> %i.mu, i64 4
  %i.nd = fadd float %i.nb, %i.nc
  %i.ne = extractelement <8 x float> %i.mu, i64 5
  %i.nf = fadd float %i.ne, %i.nd
  %i.ng = fadd float %i.na, %i.nf                 ; 2 uses
  %i.nh = fcmp ogt float %i.ng, 0.000000e+00
  %i.ni = fdiv float 1.000000e+00, %i.ng
  %i.nj = select i1 %i.nh, float %i.ni, float 0.000000e+00
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jp, i64 144
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv1200
  store float %i.nj, ptr %i.nl, align 4, !tbaa !167
  %i.nm = insertelement <4 x float> %i.io, float %.sroa.9336.0.copyload, i64 0 ; 2 uses
  %i.nn = shufflevector <2 x float> %.sroa.0444.0, <2 x float> %.sroa.0331.0.copyload, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.no = insertelement <4 x float> %i.nn, float %.sroa.9.0.copyload, i64 3
  %i.np = fmul <4 x float> %i.nm, %i.no
  %i.nq = shufflevector <2 x float> %.sroa.0331.0.copyload, <2 x float> %.sroa.0444.0, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ns = shufflevector <2 x float> %.sroa.0331.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> %i.nm, <4 x i32> <i32 5, i32 4, i32 2, i32 poison>
  %i.nu = insertelement <4 x float> %i.nt, float %.sroa.5430.0, i64 3
  %i.nv = fmul <4 x float> %i.nr, %i.nu
  %i.nw = fsub <4 x float> %i.np, %i.nv           ; 4 uses
  %i.nx = extractelement <4 x float> %i.nw, i64 0
  %i.ny = fadd float %.sroa.06.0.vec.extract.i779, %i.nx
  %i.nz = extractelement <4 x float> %i.nw, i64 1
  %i.oa = fadd float %.sroa.06.4.vec.extract.i782, %i.nz
  %i.ob = extractelement <4 x float> %i.nw, i64 2
  %i.oc = fadd float %.sroa.5450.0, %i.ob
  %i.od = fmul float %.sroa.5430.0, %.sroa.05.0.vec.extract.i722
  %i.oe = fmul float %.sroa.011.0.vec.extract.i791, %.sroa.9.0.copyload
  %i.of = fsub float %i.od, %i.oe
  %i.og = fmul float %.sroa.011.0.vec.extract.i791, %.sroa.05.4.vec.extract.i725
  %foldExtExtBinop1233 = fmul <2 x float> %shift1232, %.sroa.0326.0.copyload
  %i.oh = extractelement <2 x float> %foldExtExtBinop1233, i64 0
  %i.oi = fsub float %i.og, %i.oh
  %i.oj = extractelement <4 x float> %i.nw, i64 3
  %i.ok = fadd float %.sroa.06.0.vec.extract.i795, %i.oj
  %i.ol = fadd float %.sroa.06.4.vec.extract.i798, %i.of
  %i.om = fadd float %.sroa.5434.0, %i.oi
  %i.on = fsub float %i.ok, %i.ny
  %i.oo = fsub float %i.ol, %i.oa
  %i.op = fsub float %i.om, %i.oc
  %i.oq = fmul float %.sroa.0407.0.vec.extract, %i.on
  %i.or = fmul float %.sroa.0407.4.vec.extract, %i.oo
  %i.os = fadd float %i.oq, %i.or
  %i.ot = fmul float %.sroa.13.0.copyload, %i.op
  %i.ou = fadd float %i.ot, %i.os
  %i.ov = getelementptr inbounds nuw i8, ptr %i.jp, i64 176
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %indvars.iv1200
  store float %i.ou, ptr %i.ow, align 4, !tbaa !167
  %indvars.iv.next1189 = add nuw nsw i64 %indvars.iv1188, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1189, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !211

._crit_edge1170:                                  ; preds = %.lr.ph1169, %._crit_edge
  %i.ox = fadd float %.0694, %.0695
  %i.oy = fmul float %.sroa.0401.4.vec.extract, %i.ir
  %i.oz = fmul float %.sroa.0401.0.vec.extract, %i.je
  %i.pa = shufflevector <2 x float> %.sroa.018.0.i.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.pb = insertelement <4 x float> poison, float %.sroa.5.0.i.i, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> %i.pa, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.pe = fmul <4 x float> %i.pd, %i.ix
  %i.pf = fmul float %.sroa.0401.0.vec.extract, %i.jc
  %i.pg = fmul float %.sroa.5.0.i.i, %i.ir
  %i.ph = shufflevector <2 x float> %.sroa.018.0.i.i, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.pi = insertelement <4 x float> %i.ph, float %.sroa.5.0.i.i, i64 1
  %i.pj = fmul <4 x float> %i.pi, %i.iz
  %i.pk = fsub float %i.oz, %i.pg                 ; 3 uses
  %i.pl = fsub float %i.oy, %i.pf                 ; 3 uses
  %i.pm = shufflevector <2 x float> %i.er, <2 x float> %i.ea, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 14, i32 15>
  %i.po = insertelement <8 x float> %i.pn, float %.sroa.0948.0, i64 0
  %i.pp = insertelement <8 x float> %i.po, float %.sroa.01026.0, i64 3 ; 2 uses
  %i.pq = shufflevector <2 x float> %i.et, <2 x float> %i.ec, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.pr = shufflevector <8 x float> %i.pq, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 14, i32 15>
  %i.ps = insertelement <8 x float> %i.pr, float %.sroa.21.0, i64 0
  %i.pt = insertelement <8 x float> %i.ps, float %.sroa.211054.0, i64 3 ; 2 uses
  %i.pu = shufflevector <2 x float> %i.es, <2 x float> %i.eb, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison, i32 poison>
  %i.pv = shufflevector <8 x float> %i.pu, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 poison, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 14, i32 15>
  %i.pw = insertelement <8 x float> %i.pv, float %.sroa.35.0, i64 0
  %i.px = insertelement <8 x float> %i.pw, float %.sroa.351083.0, i64 3 ; 2 uses
  %i.py = fmul float %i.gu, %i.ir
  %i.pz = fmul float %i.gu, %i.jg
  %i.qa = fmul float %i.gp, %i.jc
  %i.qb = fmul float %i.gp, %i.ji
  %2 = insertelement <2 x float> poison, float %i.gp, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = shufflevector <4 x float> %i.iz, <4 x float> %i.ix, <2 x i32> <i32 3, i32 5>
  %5 = fmul <2 x float> %3, %4
  %6 = insertelement <2 x float> poison, float %i.gv, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %8 = shufflevector <4 x float> %i.ix, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qc = insertelement <2 x float> %8, float %i.ir, i64 0
  %9 = fmul <2 x float> %7, %i.qc
  %10 = fsub <2 x float> %5, %9                   ; 3 uses
  %i.qd = shufflevector <4 x float> %i.ix, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qe = fmul <2 x float> %7, %i.qd
  %i.qf = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qh = shufflevector <4 x float> %i.ix, <4 x float> %i.iz, <2 x i32> <i32 1, i32 7>
  %i.qi = fmul <2 x float> %i.qg, %i.qh
  %i.qj = fsub <2 x float> %i.qe, %i.qi           ; 2 uses
  %i.qk = fsub float %i.py, %i.qa                 ; 2 uses
  %i.ql = fsub float %i.pz, %i.qb                 ; 2 uses
  %i.qm = shufflevector <2 x float> %i.qj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qn = shufflevector <8 x float> %i.qm, <8 x float> <float poison, float poison, float 1.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 11>
  %i.qo = fmul <8 x float> %i.pp, %i.qn
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x float> %11, <8 x float> <float poison, float poison, float 1.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 11>
  %i.qp = fmul <8 x float> %i.pt, %12
  %i.qq = fadd <8 x float> %i.qo, %i.qp
  %i.qr = insertelement <8 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00, float poison, float poison, float poison, float poison>, float %i.ql, i64 0
  %i.qs = insertelement <8 x float> %i.qr, float %i.qk, i64 1
  %i.qt = shufflevector <8 x float> %i.qs, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3>
  %i.qu = fmul <8 x float> %i.px, %i.qt
  %i.qv = fadd <8 x float> %i.qu, %i.qq           ; 4 uses
  %13 = shufflevector <2 x float> %i.qj, <2 x float> %10, <8 x i32> <i32 0, i32 3, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qw = insertelement <8 x float> %13, float %i.ql, i64 2
  %i.qx = insertelement <8 x float> %i.qw, float %.0695, i64 6
  %i.qy = insertelement <8 x float> %i.qx, float %.0694, i64 7
  %14 = shufflevector <2 x float> %10, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x float> %i.qy, <8 x float> %14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 6, i32 7>
  %i.qz = insertelement <8 x float> %15, float %i.qk, i64 5
  %i.ra = fmul <8 x float> %i.qz, %i.qv           ; 6 uses
  %i.rb = extractelement <8 x float> %i.qv, i64 4
  %i.rc = fmul float %i.pk, %i.rb
  %i.rd = extractelement <8 x float> %i.qv, i64 5
  %i.re = fmul float %i.pl, %i.rd
  %i.rf = fsub <4 x float> %i.pe, %i.pj           ; 2 uses
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.rh = shufflevector <8 x float> %i.rg, <8 x float> <float poison, float poison, float 1.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison>, <8 x i32> <i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 10, i32 11>
  %i.ri = fmul <8 x float> %i.pp, %i.rh
  %i.rj = shufflevector <8 x float> <float poison, float poison, float 1.000000e+00, float -0.000000e+00, float poison, float poison, float poison, float poison>, <8 x float> %i.rg, <8 x i32> <i32 9, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rk = insertelement <8 x float> %i.rj, float %i.pk, i64 1
  %i.rl = shufflevector <8 x float> %i.rk, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3>
  %i.rm = fmul <8 x float> %i.pt, %i.rl
  %i.rn = fadd <8 x float> %i.ri, %i.rm
  %i.ro = shufflevector <8 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00, float poison, float poison, float poison, float poison>, <8 x float> %i.rg, <8 x i32> <i32 10, i32 poison, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rp = insertelement <8 x float> %i.ro, float %i.pl, i64 1
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 3>
  %i.rr = fmul <8 x float> %i.px, %i.rq
  %i.rs = fadd <8 x float> %i.rr, %i.rn
  %i.rt = insertelement <8 x float> %i.rg, float %i.pk, i64 4
  %i.ru = insertelement <8 x float> %i.rt, float %i.pl, i64 5
  %i.rv = insertelement <8 x float> %i.ru, float %.0695, i64 6
  %i.rw = insertelement <8 x float> %i.rv, float %.0694, i64 7
  %i.rx = fmul <8 x float> %i.rw, %i.rs           ; 6 uses
  %i.ry = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 3, i32 11>
  %i.rz = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 4, i32 12>
  %i.sa = fadd <2 x float> %i.ry, %i.rz
  %i.sb = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 5, i32 13>
  %i.sc = fadd <2 x float> %i.sb, %i.sa
  %i.sd = insertelement <2 x float> poison, float %i.ox, i64 0
  %i.se = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sf = fadd <2 x float> %i.se, %i.sc
  %i.sg = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 0, i32 8>
  %i.sh = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 1, i32 9>
  %i.si = fadd <2 x float> %i.sg, %i.sh
  %i.sj = shufflevector <8 x float> %i.rx, <8 x float> %i.ra, <2 x i32> <i32 2, i32 10>
  %i.sk = fadd <2 x float> %i.sj, %i.si
  %i.sl = fadd <2 x float> %i.sk, %i.sf           ; 2 uses
  %i.sm = shufflevector <8 x float> %i.qv, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sn = fmul <4 x float> %i.rf, %i.sm           ; 4 uses
  %i.so = extractelement <4 x float> %i.sn, i64 3
  %i.sp = fadd float %i.so, %i.rc
  %i.sq = fadd float %i.re, %i.sp
  %shift1235 = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1236 = fadd <4 x float> %i.sn, %shift1235
  %shift1238 = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop1239 = fadd <4 x float> %shift1238, %foldExtExtBinop1236
  %i.sr = extractelement <4 x float> %foldExtExtBinop1239, i64 0
  %i.ss = fadd float %i.sr, %i.sq                 ; 3 uses
  %i.st = extractelement <2 x float> %i.sl, i64 0 ; 2 uses
  %i.su = extractelement <2 x float> %i.sl, i64 1 ; 2 uses
  %i.sv = fmul float %i.st, %i.su
  %i.sw = fmul float %i.ss, %i.ss
  %i.sx = fsub float %i.sv, %i.sw                 ; 2 uses
  %i.sy = tail call float @llvm.fabs.f32(float %i.sx)
  %i.sz = fcmp ogt float %i.sy, f0x057A0000
  br i1 %i.sz, label %bb.o, label %b3Invert2.exit

bb.o:                                             ; preds = %._crit_edge1170
  %i.ta = fdiv float 1.000000e+00, %i.sx          ; 3 uses
  %i.tb = fmul float %i.su, %i.ta
  %.sroa.08.0.vec.insert.i909 = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.tc = fneg float %i.ta
  %i.td = fmul float %i.ss, %i.tc                 ; 2 uses
  %.sroa.08.4.vec.insert.i910 = insertelement <2 x float> %.sroa.08.0.vec.insert.i909, float %i.td, i64 1
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.td, i64 0
  %i.te = fmul float %i.st, %i.ta
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.te, i64 1
  br label %b3Invert2.exit

b3Invert2.exit:                                   ; preds = %._crit_edge1170, %bb.o
  %.sroa.08.0.i = phi <2 x float> [ %.sroa.08.4.vec.insert.i910, %bb.o ], [ zeroinitializer, %._crit_edge1170 ] ; 2 uses
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.12.vec.insert.i, %bb.o ], [ zeroinitializer, %._crit_edge1170 ]
  %.sroa.033.0.vec.extract = extractelement <2 x float> %.sroa.08.0.i, i64 0
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv1200
  store float %.sroa.033.0.vec.extract, ptr %i.tf, align 4, !tbaa !167
  %.sroa.033.4.vec.extract = extractelement <2 x float> %.sroa.08.0.i, i64 1
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv1200
  store float %.sroa.033.4.vec.extract, ptr %i.tg, align 4, !tbaa !167
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.sroa.5.0.i, i64 1
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv1200
  store float %.sroa.5.12.vec.extract, ptr %i.th, align 4, !tbaa !167
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dd, i64 240 ; 2 uses
  %.sroa.031.0.copyload = load <2 x float>, ptr %i.ti, align 4 ; 2 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 248 ; 2 uses
  %.sroa.232.0.copyload = load float, ptr %.sroa.232.0..sroa_idx, align 4
  %foldExtExtBinop1241 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.031.0.copyload
  %foldExtExtBinop1243 = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.031.0.copyload
  %shift1245 = shufflevector <2 x float> %foldExtExtBinop1243, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1246 = fadd <2 x float> %foldExtExtBinop1241, %shift1245
  %i.tj = extractelement <2 x float> %foldExtExtBinop1246, i64 0
  %i.tk = fmul float %.sroa.5.0.i.i, %.sroa.232.0.copyload
  %i.tl = fadd float %i.tk, %i.tj
  %i.tm = fmul float %i.s, %i.tl
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv1200
  store float %i.tm, ptr %i.tn, align 4, !tbaa !167
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.ti, align 4 ; 2 uses
  %.sroa.228.0.copyload = load float, ptr %.sroa.232.0..sroa_idx, align 4
  %.sroa.04.0.vec.extract.i915 = extractelement <2 x float> %.sroa.027.0.copyload, i64 0
  %i.to = fmul float %i.gp, %.sroa.04.0.vec.extract.i915
  %.sroa.04.4.vec.extract.i917 = extractelement <2 x float> %.sroa.027.0.copyload, i64 1
  %i.tp = fmul float %i.gu, %.sroa.04.4.vec.extract.i917
  %i.tq = fadd float %i.to, %i.tp
  %i.tr = fmul float %i.gv, %.sroa.228.0.copyload
  %i.ts = fadd float %i.tr, %i.tq
  %i.tt = fmul float %i.s, %i.ts
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv1200
  store float %i.tt, ptr %i.tu, align 4, !tbaa !167
  %i.tv = fadd float %.sroa.01026.0, %.sroa.0948.0 ; 5 uses
  %i.tw = fadd <2 x float> %i.ea, %i.er           ; 2 uses
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 7 uses
  %i.ty = fadd <2 x float> %i.ed, %i.eu           ; 7 uses
  %i.tz = fadd <2 x float> %i.ec, %i.et           ; 8 uses
  %i.ua = fadd <2 x float> %i.eb, %i.es           ; 6 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop1248 = fmul <2 x float> %i.tx, %.sroa.0407.0.copyload
  %foldExtExtBinop1250 = fmul <2 x float> %i.tz, %.sroa.0407.0.copyload
  %shift1252 = shufflevector <2 x float> %foldExtExtBinop1250, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1253 = fadd <2 x float> %foldExtExtBinop1248, %shift1252
  %i.uc = extractelement <2 x float> %foldExtExtBinop1253, i64 0
  %i.ud = extractelement <2 x float> %i.ua, i64 1 ; 2 uses
  %i.ue = fmul float %i.ud, %.sroa.13.0.copyload
  %i.uf = fadd float %i.ue, %i.uc
  %i.ug = shufflevector <2 x float> %i.tw, <2 x float> %i.ty, <2 x i32> <i32 2, i32 0>
  %i.uh = shufflevector <2 x float> %.sroa.0407.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ui = fmul <2 x float> %i.ug, %i.uh
  %i.uj = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.uk = insertelement <2 x float> %i.uj, float %i.tv, i64 0
  %i.ul = fmul <2 x float> %i.uk, %.sroa.0407.0.copyload
  %i.um = fadd <2 x float> %i.ui, %i.ul
  %i.un = shufflevector <2 x float> %i.ty, <2 x float> %i.ua, <2 x i32> <i32 1, i32 2>
  %i.uo = insertelement <2 x float> poison, float %.sroa.13.0.copyload, i64 0
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = fmul <2 x float> %i.un, %i.up
  %i.ur = fadd <2 x float> %i.uq, %i.um
  %i.us = fmul <2 x float> %.sroa.0407.0.copyload, %i.ur ; 2 uses
  %shift1255 = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1256 = fadd <2 x float> %i.us, %shift1255
  %i.ut = extractelement <2 x float> %foldExtExtBinop1256, i64 0
  %i.uu = fmul float %.sroa.13.0.copyload, %i.uf
  %i.uv = fadd float %i.uu, %i.ut                 ; 2 uses
  %i.uw = fcmp ogt float %i.uv, 0.000000e+00
  %i.ux = fdiv float 1.000000e+00, %i.uv
  %i.uy = select i1 %i.uw, float %i.ux, float 0.000000e+00
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv1200
  store float %i.uy, ptr %i.uz, align 4, !tbaa !167
  %i.va = getelementptr inbounds nuw i8, ptr %i.dd, i64 236
  %i.vb = load float, ptr %i.va, align 4, !tbaa !135
  %i.vc = fmul float %i.s, %i.vb
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv1200
  store float %i.vc, ptr %i.vd, align 4, !tbaa !167
  %i.ve = fmul <2 x float> %i.tz, %i.ub           ; 2 uses
  %shift1258 = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1259 = fsub <2 x float> %i.ve, %shift1258
  %i.vf = extractelement <2 x float> %foldExtExtBinop1259, i64 0 ; 2 uses
  %i.vg = fmul float %i.tv, %i.vf
  %i.vh = shufflevector <2 x float> %i.ua, <2 x float> %i.tz, <2 x i32> <i32 0, i32 3>
  %i.vi = fmul <2 x float> %i.ty, %i.vh
  %i.vj = shufflevector <2 x float> %i.tz, <2 x float> %i.ua, <2 x i32> <i32 0, i32 3>
  %i.vk = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vl = fmul <2 x float> %i.vj, %i.vk
  %i.vm = fsub <2 x float> %i.vi, %i.vl
  %i.vn = fmul <2 x float> %i.tx, %i.vm           ; 2 uses
  %i.vo = extractelement <2 x float> %i.vn, i64 1
  %i.vp = fadd float %i.vg, %i.vo
  %i.vq = extractelement <2 x float> %i.vn, i64 0
  %i.vr = fadd float %i.vq, %i.vp                 ; 2 uses
  %i.vs = tail call float @llvm.fabs.f32(float %i.vr)
  %i.vt = fcmp ogt float %i.vs, f0x057A0000
  br i1 %i.vt, label %bb.p, label %b3InvertMatrix.exit

bb.p:                                             ; preds = %b3Invert2.exit
  %i.vu = fdiv float 1.000000e+00, %i.vr          ; 5 uses
  %i.vv = fmul float %i.vf, %i.vu
  %i.vw = fmul <2 x float> %i.tx, %i.ua           ; 2 uses
  %shift1261 = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1262 = fsub <2 x float> %i.vw, %shift1261
  %i.vx = extractelement <2 x float> %foldExtExtBinop1262, i64 0
  %i.vy = fmul float %i.tv, %i.ud
  %shift1264 = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1265 = fmul <2 x float> %i.tx, %shift1264
  %i.vz = extractelement <2 x float> %foldExtExtBinop1265, i64 0
  %i.wa = fsub float %i.vy, %i.vz
  %i.wb = fmul float %i.vx, %i.vu
  %i.wc = fmul float %i.wa, %i.vu
  %i.wd = fmul <2 x float> %i.tz, %i.tx           ; 2 uses
  %shift1267 = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1268 = fsub <2 x float> %shift1267, %i.wd
  %i.we = extractelement <2 x float> %foldExtExtBinop1268, i64 0
  %i.wf = shufflevector <2 x float> %i.ty, <2 x float> %i.tz, <2 x i32> <i32 0, i32 2>
  %i.wg = insertelement <2 x float> %i.tx, float %i.tv, i64 1
  %i.wh = fmul <2 x float> %i.wf, %i.wg
  %i.wi = shufflevector <2 x float> %i.tz, <2 x float> %i.ty, <2 x i32> <i32 1, i32 2>
  %i.wj = insertelement <2 x float> %i.tx, float %i.tv, i64 0
  %i.wk = fmul <2 x float> %i.wi, %i.wj
  %i.wl = fsub <2 x float> %i.wh, %i.wk
  %i.wm = fmul float %i.we, %i.vu
  %i.wn = insertelement <2 x float> poison, float %i.vu, i64 0
  %i.wo = shufflevector <2 x float> %i.wn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wp = fmul <2 x float> %i.wl, %i.wo           ; 2 uses
end_hunk_0
