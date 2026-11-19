Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/height_field?download=true
inline.NumInlined: 203
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3CreateHeightField:bb.a

.lr.ph1334.prol:                                  ; preds = %.lr.ph1334.preheader1443
  %i.ce = load float, ptr %i.aw, align 4, !tbaa !34
  %i.cf = load float, ptr %i.bf, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv1353.ph
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !36
  %i.ci = uitofp i16 %i.ch to float
  %i.cj = fmul float %i.cf, %i.ci
  %i.ck = fadd float %i.ce, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1353.ph
  store float %i.ck, ptr %i.cl, align 4, !tbaa !21
  %indvars.iv.next1354.prol = or disjoint i64 %indvars.iv1353.ph, 1
  br label %.lr.ph1334.prol.loopexit

.lr.ph1334.prol.loopexit:                         ; preds = %.lr.ph1334.prol, %.lr.ph1334.preheader1443
  %indvars.iv1353.unr = phi i64 [ %indvars.iv1353.ph, %.lr.ph1334.preheader1443 ], [ %indvars.iv.next1354.prol, %.lr.ph1334.prol ]
  %i.cm = add nsw i64 %wide.trip.count, -1
  %i.cn = icmp eq i64 %indvars.iv1353.ph, %i.cm
  br i1 %i.cn, label %._crit_edge1335, label %.lr.ph1334

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.01330 = phi float [ %i.bg, %.lr.ph.preheader ], [ %i.db, %.lr.ph ] ; 2 uses
  %.09261329 = phi float [ %i.bh, %.lr.ph.preheader ], [ %i.dd, %.lr.ph ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.cp = load float, ptr %i.co, align 4, !tbaa !21 ; 3 uses
  %i.cq = fcmp olt float %i.cp, %i.bh
  %i.cr = fcmp olt float %i.bg, %i.cp
  %i.cs = select i1 %i.cr, float %i.bg, float %i.cp
  %i.ct = select i1 %i.cq, float %i.bh, float %i.cs ; 5 uses
  %i.cu = fsub float %i.ct, %i.bh
  %i.cv = fmul float %i.bi, %i.cu                 ; 2 uses
  %i.cw = fcmp olt float %i.cv, 6.553500e+04
  %i.cx = select i1 %i.cw, float %i.cv, float 6.553500e+04
  %i.cy = fptoui float %i.cx to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !36
  %i.da = fcmp olt float %.01330, %i.ct
  %i.db = select i1 %i.da, float %.01330, float %i.ct ; 4 uses
  %i.dc = fcmp ogt float %.09261329, %i.ct
  %i.dd = select i1 %i.dc, float %.09261329, float %i.ct ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph1334.preheader, label %.lr.ph, !llvm.loop !61

._crit_edge1335:                                  ; preds = %.lr.ph1334.prol.loopexit, %.lr.ph1334, %middle.block, %._crit_edge
  %i.de = phi ptr [ %i.bl, %._crit_edge ], [ %i.bn, %middle.block ], [ %i.bn, %.lr.ph1334 ], [ %i.bn, %.lr.ph1334.prol.loopexit ] ; 8 uses
  %i.df = phi i64 [ %i.bk, %._crit_edge ], [ %i.bm, %middle.block ], [ %i.bm, %.lr.ph1334 ], [ %i.bm, %.lr.ph1334.prol.loopexit ]
  %.0.lcssa1395 = phi float [ %i.bg, %._crit_edge ], [ %i.db, %middle.block ], [ %i.db, %.lr.ph1334 ], [ %i.db, %.lr.ph1334.prol.loopexit ]
  %.0926.lcssa1393 = phi float [ %i.bh, %._crit_edge ], [ %i.dd, %middle.block ], [ %i.dd, %.lr.ph1334 ], [ %i.dd, %.lr.ph1334.prol.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40
  %.not = icmp eq ptr %i.dh, null
  %i.di = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %.not, label %.preheader1325, label %.preheader1326

.preheader1326:                                   ; preds = %._crit_edge1335
  br i1 %i.di, label %.lr.ph1337.preheader, label %.loopexit

.lr.ph1337.preheader:                             ; preds = %.preheader1326
  %wide.trip.count1361 = zext nneg i32 %i.h to i64 ; 2 uses
  %xtraiter1445 = and i64 %wide.trip.count1361, 3 ; 3 uses
  %i.dj = icmp ult i32 %i.h, 4
  br i1 %i.dj, label %.lr.ph1337.epil.preheader, label %.lr.ph1337.preheader.new

.lr.ph1337.preheader.new:                         ; preds = %.lr.ph1337.preheader
  %unroll_iter = and i64 %wide.trip.count1361, 2147483644
  br label %.lr.ph1337

.preheader1325:                                   ; preds = %._crit_edge1335
  br i1 %i.di, label %.lr.ph1339.preheader, label %.loopexit

.lr.ph1339.preheader:                             ; preds = %.preheader1325
  %i.dk = zext nneg i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.dk, i1 false), !tbaa !41
  br label %.loopexit

.lr.ph1334:                                       ; preds = %.lr.ph1334.prol.loopexit, %.lr.ph1334
  %indvars.iv1353 = phi i64 [ %indvars.iv.next1354.1, %.lr.ph1334 ], [ %indvars.iv1353.unr, %.lr.ph1334.prol.loopexit ] ; 4 uses
  %i.dl = load float, ptr %i.aw, align 4, !tbaa !34
  %i.dm = load float, ptr %i.bf, align 4, !tbaa !33
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv1353
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !36
  %i.dp = uitofp i16 %i.do to float
  %i.dq = fmul float %i.dm, %i.dp
  %i.dr = fadd float %i.dl, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv1353
  store float %i.dr, ptr %i.ds, align 4, !tbaa !21
  %indvars.iv.next1354 = add nuw nsw i64 %indvars.iv1353, 1 ; 2 uses
  %i.dt = load float, ptr %i.aw, align 4, !tbaa !34
  %i.du = load float, ptr %i.bf, align 4, !tbaa !33
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.next1354
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !36
  %i.dx = uitofp i16 %i.dw to float
  %i.dy = fmul float %i.du, %i.dx
  %i.dz = fadd float %i.dt, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next1354
  store float %i.dz, ptr %i.ea, align 4, !tbaa !21
  %indvars.iv.next1354.1 = add nuw nsw i64 %indvars.iv1353, 2 ; 2 uses
  %exitcond1357.not.1 = icmp eq i64 %indvars.iv.next1354.1, %wide.trip.count1356
  br i1 %exitcond1357.not.1, label %._crit_edge1335, label %.lr.ph1334, !llvm.loop !62

.lr.ph1337:                                       ; preds = %.lr.ph1337, %.lr.ph1337.preheader.new
  %indvars.iv1358 = phi i64 [ 0, %.lr.ph1337.preheader.new ], [ %indvars.iv.next1359.3, %.lr.ph1337 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph1337.preheader.new ], [ %niter.next.3, %.lr.ph1337 ]
  %i.eb = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv1358
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv1358
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !41
  %indvars.iv.next1359 = or disjoint i64 %indvars.iv1358, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next1359
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !41
  %indvars.iv.next1359.1 = or disjoint i64 %indvars.iv1358, 2 ; 2 uses
  %i.ej = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next1359.1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359.1
  store i8 %i.el, ptr %i.em, align 1, !tbaa !41
  %indvars.iv.next1359.2 = or disjoint i64 %indvars.iv1358, 3 ; 2 uses
  %i.en = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %indvars.iv.next1359.2
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next1359.2
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !41
  %indvars.iv.next1359.3 = add nuw nsw i64 %indvars.iv1358, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph1337, !llvm.loop !63

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph1337
  %lcmp.mod1446.not = icmp eq i64 %xtraiter1445, 0
  br i1 %lcmp.mod1446.not, label %.loopexit, label %.lr.ph1337.epil.preheader

.lr.ph1337.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1337.preheader
  %indvars.iv1358.epil.init = phi i64 [ 0, %.lr.ph1337.preheader ], [ %indvars.iv.next1359.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod1447 = icmp ne i64 %xtraiter1445, 0
  tail call void @llvm.assume(i1 %lcmp.mod1447)
  br label %.lr.ph1337.epil

.lr.ph1337.epil:                                  ; preds = %.lr.ph1337.epil, %.lr.ph1337.epil.preheader
  %indvars.iv1358.epil = phi i64 [ %indvars.iv1358.epil.init, %.lr.ph1337.epil.preheader ], [ %indvars.iv.next1359.epil, %.lr.ph1337.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1337.epil.preheader ], [ %epil.iter.next, %.lr.ph1337.epil ]
  %i.er = load ptr, ptr %i.dg, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv1358.epil
  %i.et = load i8, ptr %i.es, align 1, !tbaa !41
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv1358.epil
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !41
  %indvars.iv.next1359.epil = add nuw nsw i64 %indvars.iv1358.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1445
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph1337.epil, !llvm.loop !64

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph1337.epil, %.lr.ph1339.preheader, %.preheader1326, %.preheader1325
  %i.ev = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  store float 0.000000e+00, ptr %i.ev, align 4, !tbaa !21
  %.sroa.2769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !72 ; 5 uses
  %i.ey = load <2 x i32>, ptr %i.ad, align 4, !tbaa !42
  %i.ez = add nsw <2 x i32> %i.ey, splat (i32 -1)
  %i.fa = sitofp <2 x i32> %i.ez to <2 x float>   ; 2 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 1
  %i.fc = fmul float %i.ex, %i.fb
  %i.fd = load <2 x float>, ptr %i.ab, align 8, !tbaa !21
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fh = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.0.lcssa1395, i64 0
  %i.fi = insertelement <4 x float> %i.fh, float %.0926.lcssa1393, i64 3
  %i.fj = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fl = fmul <4 x float> %i.fg, %i.fk
  store <4 x float> %i.fl, ptr %.sroa.2769.0..sroa_idx, align 8, !tbaa !21
  %.sroa.3767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store float %i.fc, ptr %.sroa.3767.0..sroa_idx, align 8, !tbaa !21
  %i.fm = icmp sgt i32 %i.d, 1
  br i1 %i.fm, label %.preheader.lr.ph, label %._crit_edge1348.split

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.sroa.0737.0.copyload = load <2 x float>, ptr %i.ab, align 8, !tbaa !21 ; 5 uses
  %i.fn = icmp sgt i32 %i.b, 1
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.0737.0.copyload, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.0737.0.copyload, i64 1 ; 6 uses
  br i1 %i.fn, label %.preheader.preheader, label %._crit_edge1348.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.fo = zext nneg i32 %i.f to i64               ; 4 uses
  %i.fp = zext nneg i32 %i.b to i64               ; 4 uses
  %i.fq = zext nneg i32 %i.g to i64
  %wide.trip.count1378 = zext nneg i32 %i.g to i64
  %wide.trip.count1373 = zext i32 %i.f to i64
  %i.fr = shufflevector <2 x float> %.sroa.0737.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1344
  %indvars.iv1375 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1376, %._crit_edge1344 ] ; 7 uses
  %.09311347 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next1367, %._crit_edge1344 ]
  %i.fs = mul nuw nsw i64 %indvars.iv1375, %i.fo
  %i.ft = mul nuw nsw i64 %indvars.iv1375, %i.fp  ; 2 uses
  %indvars.iv.next1376 = add nuw nsw i64 %indvars.iv1375, 1 ; 6 uses
  %i.fu = mul nuw nsw i64 %indvars.iv.next1376, %i.fp ; 3 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv1375 to i32
  %i.fw = uitofp nneg i32 %i.fv to float
  %i.fx = trunc nuw nsw i64 %indvars.iv.next1376 to i32
  %i.fy = uitofp nneg i32 %i.fx to float
  %i.fz = fmul float %i.ex, %i.fw                 ; 7 uses
  %i.ga = fmul float %i.ex, %i.fy                 ; 7 uses
  %i.gb = fsub float %i.ga, %i.fz                 ; 4 uses
  %i.gc = fsub float %i.fz, %i.fz                 ; 6 uses
  %i.gd = fsub float %i.fz, %i.ga                 ; 4 uses
  %i.ge = fsub float %i.ga, %i.ga                 ; 6 uses
  %i.gf = add nsw i64 %indvars.iv1375, -1         ; 3 uses
  %.not952 = icmp eq i64 %indvars.iv1375, 0
  %i.gg = mul nuw nsw i64 %i.gf, %i.fo
  %i.gh = mul nuw nsw i64 %i.gf, %i.fp
  %i.gi = trunc nsw i64 %i.gf to i32
  %i.gj = sitofp i32 %i.gi to float
  %i.gk = fmul float %i.ex, %i.gj                 ; 2 uses
  %i.gl = fsub float %i.gk, %i.fz                 ; 2 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next1376, %i.fq
  %i.gn = mul nuw nsw i64 %indvars.iv.next1376, %i.fo
  %i.go = add nuw nsw i64 %indvars.iv1375, 2      ; 2 uses
  %i.gp = mul nuw nsw i64 %i.go, %i.fp
  %i.gq = trunc nuw nsw i64 %i.go to i32
  %i.gr = uitofp nneg i32 %i.gq to float
  %i.gs = fmul float %i.ex, %i.gr                 ; 2 uses
  %i.gt = fsub float %i.gs, %i.ga                 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.aq, i64 %i.fs
  %invariant.gep1398 = getelementptr [4 x i8], ptr %i.de, i64 %i.ft
  %invariant.gep1400 = getelementptr [4 x i8], ptr %i.de, i64 %i.fu
  %invariant.gep1402 = getelementptr i8, ptr %i.aq, i64 %i.gg
  %invariant.gep1404 = getelementptr [4 x i8], ptr %i.de, i64 %i.gh
  %invariant.gep1406 = getelementptr i8, ptr %i.aq, i64 %i.gn
  %invariant.gep1408 = getelementptr [4 x i8], ptr %i.de, i64 %i.gp
  %invariant.gep1410 = getelementptr [4 x i8], ptr %i.de, i64 %i.fu
  %invariant.gep1412 = getelementptr [4 x i8], ptr %i.de, i64 %i.ft
  %invariant.gep1414 = getelementptr [4 x i8], ptr %i.de, i64 %i.fu
  br label %bb.b

._crit_edge1348.split:                            ; preds = %._crit_edge1344, %.preheader.lr.ph, %.loopexit
  tail call void @b3Free(ptr noundef %i.de, i64 noundef %i.df) #14
  %i.gu = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i64 0, ptr %i.gu, align 8, !tbaa !73
  %i.gv = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.gw = tail call i64 @b3Hash64NonZero(ptr noundef nonnull %i.y, i32 noundef %i.gv) #14
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !73
  ret ptr %i.y

._crit_edge1344:                                  ; preds = %bb.v
  %exitcond1379.not = icmp eq i64 %indvars.iv.next1376, %wide.trip.count1378
  br i1 %exitcond1379.not, label %._crit_edge1348.split, label %.preheader, !llvm.loop !65

bb.b:                                             ; preds = %.preheader, %bb.v
  %indvars.iv1368 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next1369.pre-phi, %bb.v ] ; 13 uses
  %indvars.iv1366 = phi i64 [ %.09311347, %.preheader ], [ %indvars.iv.next1367, %bb.v ] ; 2 uses
  %indvars.iv.next1367 = add nsw i64 %indvars.iv1366, 2 ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv1368 ; 3 uses
  %i.gx = load i8, ptr %gep, align 1, !tbaa !41
  %i.gy = icmp eq i8 %i.gx, -1
  br i1 %i.gy, label %._crit_edge1380, label %bb.c

._crit_edge1380:                                  ; preds = %bb.b
  %.pre = add nuw nsw i64 %indvars.iv1368, 1
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %gep1399 = getelementptr [4 x i8], ptr %invariant.gep1398, i64 %indvars.iv1368
  %gep1401 = getelementptr [4 x i8], ptr %invariant.gep1400, i64 %indvars.iv1368 ; 2 uses
  %i.gz = load float, ptr %gep1401, align 4, !tbaa !21
  %i.ha = getelementptr i8, ptr %gep1401, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !21
  %i.hc = trunc nuw nsw i64 %indvars.iv1368 to i32
  %i.hd = uitofp nneg i32 %i.hc to float
  %i.he = add nuw nsw i64 %indvars.iv1368, 1      ; 5 uses
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = uitofp nneg i32 %i.hf to float
  %i.hh = fmul float %.sroa.06.0.vec.extract.i, %i.hd ; 7 uses
  %i.hi = fmul float %.sroa.06.4.vec.extract.i, %i.gz ; 6 uses
  %i.hj = fmul float %.sroa.06.0.vec.extract.i, %i.hg ; 7 uses
  %i.hk = load <2 x float>, ptr %gep1399, align 4, !tbaa !21
  %i.hl = fmul <2 x float> %i.fr, %i.hk           ; 2 uses
  %i.hm = extractelement <2 x float> %i.hl, i64 0 ; 5 uses
  %i.hn = fsub float %i.hh, %i.hh                 ; 6 uses
  %i.ho = fsub float %i.hi, %i.hm                 ; 2 uses
  %i.hp = fsub float %i.hj, %i.hh                 ; 4 uses
  %i.hq = extractelement <2 x float> %i.hl, i64 1 ; 4 uses
  %i.hr = fsub float %i.hq, %i.hm                 ; 2 uses
  %i.hs = fmul float %i.gc, %i.ho
  %i.ht = fmul float %i.gb, %i.hr
  %i.hu = fsub float %i.hs, %i.ht                 ; 3 uses
  %i.hv = fmul float %i.gb, %i.hp
  %i.hw = fmul float %i.gc, %i.hn
  %i.hx = fsub float %i.hv, %i.hw                 ; 3 uses
  %i.hy = fmul float %i.hn, %i.hr
  %i.hz = fmul float %i.hp, %i.ho
  %i.ia = fsub float %i.hy, %i.hz                 ; 3 uses
  %i.ib = fmul float %i.hu, %i.hu
  %i.ic = fmul float %i.hx, %i.hx
  %i.id = fadd float %i.ic, %i.ib
  %i.ie = fmul float %i.ia, %i.ia
  %i.if = fadd float %i.ie, %i.id                 ; 2 uses
  %i.ig = fcmp ogt float %i.if, f0x057A0000
  br i1 %i.ig, label %bb.d, label %b3MakePlaneFromPoints.exit

bb.d:                                             ; preds = %bb.c
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ih = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ii = fmul float %i.hu, %i.ih
  %.sroa.018.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.ij = fmul float %i.hx, %i.ih
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i, float %i.ij, i64 1
  %i.ik = fmul float %i.ia, %i.ih
  br label %b3MakePlaneFromPoints.exit

b3MakePlaneFromPoints.exit:                       ; preds = %bb.c, %bb.d
  %.sroa.018.0.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i, %bb.d ], [ zeroinitializer, %bb.c ] ; 6 uses
  %.sroa.5.0.i.i = phi float [ %i.ik, %bb.d ], [ 0.000000e+00, %bb.c ] ; 6 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0.i.i, i64 0 ; 2 uses
  %i.il = fmul float %i.hh, %.sroa.04.0.vec.extract.i.i
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0.i.i, i64 1 ; 3 uses
  %i.im = fmul float %i.hm, %.sroa.04.4.vec.extract.i.i
  %i.in = fadd float %i.il, %i.im
  %i.io = fmul float %i.fz, %.sroa.5.0.i.i
  %i.ip = fadd float %i.io, %i.in                 ; 3 uses
  %i.iq = fmul float %.sroa.06.4.vec.extract.i, %i.hb ; 5 uses
  %i.ir = fsub float %i.hj, %i.hj                 ; 6 uses
  %i.is = fsub float %i.hq, %i.iq                 ; 2 uses
  %i.it = fsub float %i.hh, %i.hj                 ; 4 uses
  %i.iu = fsub float %i.hi, %i.iq                 ; 2 uses
  %i.iv = fmul float %i.ge, %i.is
  %i.iw = fmul float %i.gd, %i.iu
  %i.ix = fsub float %i.iv, %i.iw                 ; 3 uses
  %i.iy = fmul float %i.gd, %i.it
  %i.iz = fmul float %i.ge, %i.ir
  %i.ja = fsub float %i.iy, %i.iz                 ; 3 uses
  %i.jb = fmul float %i.ir, %i.iu
  %i.jc = fmul float %i.it, %i.is
  %i.jd = fsub float %i.jb, %i.jc                 ; 3 uses
  %i.je = fmul float %i.ix, %i.ix
  %i.jf = fmul float %i.ja, %i.ja
  %i.jg = fadd float %i.jf, %i.je
  %i.jh = fmul float %i.jd, %i.jd
  %i.ji = fadd float %i.jh, %i.jg                 ; 2 uses
  %i.jj = fcmp ogt float %i.ji, f0x057A0000
  br i1 %i.jj, label %bb.e, label %b3MakePlaneFromPoints.exit1067

bb.e:                                             ; preds = %b3MakePlaneFromPoints.exit
  %sqrt.i1064 = tail call float @llvm.sqrt.f32(float %i.ji)
  %i.jk = fdiv float 1.000000e+00, %sqrt.i1064    ; 3 uses
  %i.jl = fmul float %i.ix, %i.jk
  %.sroa.018.0.vec.insert.i.i1065 = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jm = fmul float %i.ja, %i.jk
  %.sroa.018.4.vec.insert.i.i1066 = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i1065, float %i.jm, i64 1
  %i.jn = fmul float %i.jd, %i.jk
  br label %b3MakePlaneFromPoints.exit1067

b3MakePlaneFromPoints.exit1067:                   ; preds = %b3MakePlaneFromPoints.exit, %bb.e
  %.sroa.018.0.i.i1056 = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i1066, %bb.e ], [ zeroinitializer, %b3MakePlaneFromPoints.exit ] ; 6 uses
  %.sroa.5.0.i.i1057 = phi float [ %i.jn, %bb.e ], [ 0.000000e+00, %b3MakePlaneFromPoints.exit ] ; 6 uses
  %.sroa.04.0.vec.extract.i.i1059 = extractelement <2 x float> %.sroa.018.0.i.i1056, i64 0 ; 2 uses
  %i.jo = fmul float %i.hj, %.sroa.04.0.vec.extract.i.i1059
  %.sroa.04.4.vec.extract.i.i1060 = extractelement <2 x float> %.sroa.018.0.i.i1056, i64 1 ; 2 uses
  %i.jp = fmul float %i.iq, %.sroa.04.4.vec.extract.i.i1060
  %i.jq = fadd float %i.jo, %i.jp
  %i.jr = fmul float %i.ga, %.sroa.5.0.i.i1057
  %i.js = fadd float %i.jr, %i.jq                 ; 2 uses
  %i.jt = fmul float %i.hj, %.sroa.04.0.vec.extract.i.i ; 2 uses
  %i.ju = fmul float %i.iq, %.sroa.04.4.vec.extract.i.i
  %i.jv = fadd float %i.jt, %i.ju
  %i.jw = fmul float %i.ga, %.sroa.5.0.i.i        ; 2 uses
  %i.jx = fadd float %i.jw, %i.jv
  %i.jy = fsub float %i.jx, %i.ip                 ; 2 uses
  %i.jz = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.018.0.i.i1056 ; 2 uses
  %shift1422 = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1423 = fadd <2 x float> %i.jz, %shift1422
  %i.ka = extractelement <2 x float> %foldExtExtBinop1423, i64 0
  %i.kb = fmul float %.sroa.5.0.i.i, %.sroa.5.0.i.i1057
  %i.kc = fadd float %i.kb, %i.ka
  %i.kd = fcmp ogt float %i.jy, 0.000000e+00
  %i.ke = fcmp ogt float %i.kc, 9.962000e-01      ; 2 uses
  %or.cond = select i1 %i.kd, i1 true, i1 %i.ke
  %.0934 = select i1 %or.cond, i32 2, i32 0       ; 2 uses
  %i.kf = fcmp olt float %i.jy, 0.000000e+00
  %or.cond958 = select i1 %i.kf, i1 true, i1 %i.ke
  %i.kg = or disjoint i32 %.0934, 32
  %.1937 = select i1 %or.cond958, i32 %i.kg, i32 %.0934 ; 8 uses
  br i1 %.not952, label %bb.i, label %bb.f

bb.f:                                             ; preds = %b3MakePlaneFromPoints.exit1067
  %gep1403 = getelementptr i8, ptr %invariant.gep1402, i64 %indvars.iv1368
  %i.kh = load i8, ptr %gep1403, align 1, !tbaa !41
  %.not953 = icmp eq i8 %i.kh, -1
  br i1 %.not953, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep1405 = getelementptr [4 x i8], ptr %invariant.gep1404, i64 %indvars.iv1368
  %i.ki = getelementptr i8, ptr %gep1405, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !21
  %i.kk = fmul float %.sroa.06.4.vec.extract.i, %i.kj ; 2 uses
  %i.kl = fsub float %i.kk, %i.hq                 ; 2 uses
  %i.km = fsub float %i.hm, %i.hq                 ; 2 uses
  %i.kn = fmul float %i.gc, %i.kl
  %i.ko = fmul float %i.gl, %i.km
  %i.kp = fsub float %i.kn, %i.ko                 ; 3 uses
  %i.kq = fmul float %i.gl, %i.it
  %i.kr = fmul float %i.gc, %i.ir
  %i.ks = fsub float %i.kq, %i.kr                 ; 3 uses
  %i.kt = fmul float %i.ir, %i.km
  %i.ku = fmul float %i.it, %i.kl
  %i.kv = fsub float %i.kt, %i.ku                 ; 3 uses
  %i.kw = fmul float %i.kp, %i.kp
  %i.kx = fmul float %i.ks, %i.ks
  %i.ky = fadd float %i.kx, %i.kw
  %i.kz = fmul float %i.kv, %i.kv
  %i.la = fadd float %i.kz, %i.ky                 ; 2 uses
  %i.lb = fcmp ogt float %i.la, f0x057A0000
  br i1 %i.lb, label %bb.h, label %b3Normalize.exit993

bb.h:                                             ; preds = %bb.g
  %sqrt = tail call float @llvm.sqrt.f32(float %i.la)
  %i.lc = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ld = fmul float %i.kp, %i.lc
  %.sroa.018.0.vec.insert.i991 = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.le = fmul float %i.ks, %i.lc
  %.sroa.018.4.vec.insert.i992 = insertelement <2 x float> %.sroa.018.0.vec.insert.i991, float %i.le, i64 1
  %i.lf = fmul float %i.kv, %i.lc
  br label %b3Normalize.exit993

b3Normalize.exit993:                              ; preds = %bb.g, %bb.h
  %.sroa.018.0.i987 = phi <2 x float> [ %.sroa.018.4.vec.insert.i992, %bb.h ], [ zeroinitializer, %bb.g ]
  %.sroa.5.0.i988 = phi float [ %i.lf, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.lg = fmul float %.sroa.04.4.vec.extract.i.i, %i.kk
  %i.lh = fadd float %i.jt, %i.lg
  %i.li = fmul float %i.gk, %.sroa.5.0.i.i
  %i.lj = fadd float %i.li, %i.lh
  %i.lk = fsub float %i.lj, %i.ip                 ; 2 uses
  %i.ll = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.018.0.i987 ; 2 uses
  %shift1425 = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1426 = fadd <2 x float> %i.ll, %shift1425
  %i.lm = extractelement <2 x float> %foldExtExtBinop1426, i64 0
  %i.ln = fmul float %.sroa.5.0.i.i, %.sroa.5.0.i988
  %i.lo = fadd float %i.ln, %i.lm
  %i.lp = fcmp ogt float %i.lk, 0.000000e+00
  %i.lq = fcmp ogt float %i.lo, 9.962000e-01      ; 2 uses
  %or.cond959 = select i1 %i.lp, i1 true, i1 %i.lq
  %i.lr = or disjoint i32 %.1937, 4
  %.2 = select i1 %or.cond959, i32 %i.lr, i32 %.1937 ; 2 uses
  %i.ls = fcmp olt float %i.lk, 0.000000e+00
  %or.cond960 = select i1 %i.ls, i1 true, i1 %i.lq
  %i.lt = or disjoint i32 %.2, 64
  %.3 = select i1 %or.cond960, i32 %i.lt, i32 %.2
  br label %bb.i

bb.i:                                             ; preds = %b3Normalize.exit993, %bb.f, %b3MakePlaneFromPoints.exit1067
  %.4 = phi i32 [ %.3, %b3Normalize.exit993 ], [ %.1937, %bb.f ], [ %.1937, %b3MakePlaneFromPoints.exit1067 ] ; 3 uses
  br i1 %i.gm, label %bb.j, label %bb.m
end_hunk_0
begin_hunk_1_@b3CreateHeightField:bb.a
  %i.mo = fdiv float 1.000000e+00, %sqrt1322      ; 3 uses
  %i.mp = fmul float %i.mb, %i.mo
  %.sroa.018.0.vec.insert.i982 = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.mq = fmul float %i.me, %i.mo
  %.sroa.018.4.vec.insert.i983 = insertelement <2 x float> %.sroa.018.0.vec.insert.i982, float %i.mq, i64 1
  %i.mr = fmul float %i.mh, %i.mo
  br label %b3Normalize.exit984

b3Normalize.exit984:                              ; preds = %bb.k, %bb.l
  %.sroa.018.0.i978 = phi <2 x float> [ %.sroa.018.4.vec.insert.i983, %bb.l ], [ zeroinitializer, %bb.k ]
  %.sroa.5.0.i979 = phi float [ %i.mr, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.ms = fmul float %i.hh, %.sroa.04.0.vec.extract.i.i1059
  %i.mt = fmul float %.sroa.04.4.vec.extract.i.i1060, %i.lw
  %i.mu = fadd float %i.ms, %i.mt
  %i.mv = fmul float %i.gs, %.sroa.5.0.i.i1057
  %i.mw = fadd float %i.mv, %i.mu
  %i.mx = fsub float %i.mw, %i.js                 ; 2 uses
  %i.my = fmul <2 x float> %.sroa.018.0.i.i1056, %.sroa.018.0.i978 ; 2 uses
  %shift1428 = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1429 = fadd <2 x float> %i.my, %shift1428
  %i.mz = extractelement <2 x float> %foldExtExtBinop1429, i64 0
  %i.na = fmul float %.sroa.5.0.i.i1057, %.sroa.5.0.i979
  %i.nb = fadd float %i.na, %i.mz
  %i.nc = fcmp ogt float %i.mx, 0.000000e+00
  %i.nd = fcmp ogt float %i.nb, 9.962000e-01      ; 2 uses
  %or.cond961 = select i1 %i.nc, i1 true, i1 %i.nd
  %i.ne = or disjoint i32 %.1937, 4
  %.2938 = select i1 %or.cond961, i32 %i.ne, i32 %.1937 ; 2 uses
  %i.nf = fcmp olt float %i.mx, 0.000000e+00
  %or.cond962 = select i1 %i.nf, i1 true, i1 %i.nd
  %i.ng = or disjoint i32 %.2938, 64
  %.3939 = select i1 %or.cond962, i32 %i.ng, i32 %.2938
  br label %bb.m

bb.m:                                             ; preds = %b3Normalize.exit984, %bb.j, %bb.i
  %.4940 = phi i32 [ %.3939, %b3Normalize.exit984 ], [ %.1937, %bb.j ], [ %.1937, %bb.i ] ; 3 uses
  %i.nh = add nsw i64 %indvars.iv1368, -1         ; 2 uses
  %.not955 = icmp eq i64 %indvars.iv1368, 0
  br i1 %.not955, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ni = getelementptr i8, ptr %gep, i64 -1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !41
  %.not956 = icmp eq i8 %i.nj, -1
  br i1 %.not956, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep1411 = getelementptr [4 x i8], ptr %invariant.gep1410, i64 %i.nh
  %i.nk = load float, ptr %gep1411, align 4, !tbaa !21
  %i.nl = trunc nsw i64 %i.nh to i32
  %i.nm = uitofp nneg i32 %i.nl to float
  %i.nn = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.no = insertelement <2 x float> %i.nn, float %i.nk, i64 1
  %i.np = fmul <2 x float> %.sroa.0737.0.copyload, %i.no ; 3 uses
  %i.nq = fsub float %i.hm, %i.hi                 ; 2 uses
  %i.nr = extractelement <2 x float> %i.np, i64 0
  %i.ns = fsub float %i.nr, %i.hh                 ; 2 uses
  %i.nt = extractelement <2 x float> %i.np, i64 1
  %i.nu = fsub float %i.nt, %i.hi                 ; 2 uses
  %i.nv = fmul float %i.ge, %i.nq
  %i.nw = fmul float %i.gd, %i.nu
  %i.nx = fsub float %i.nv, %i.nw                 ; 3 uses
  %i.ny = fmul float %i.gd, %i.ns
  %i.nz = fmul float %i.ge, %i.hn
  %i.oa = fsub float %i.ny, %i.nz                 ; 3 uses
  %i.ob = fmul float %i.hn, %i.nu
  %i.oc = fmul float %i.ns, %i.nq
  %i.od = fsub float %i.ob, %i.oc                 ; 3 uses
  %i.oe = fmul float %i.nx, %i.nx
  %i.of = fmul float %i.oa, %i.oa
  %i.og = fadd float %i.of, %i.oe
  %i.oh = fmul float %i.od, %i.od
  %i.oi = fadd float %i.oh, %i.og                 ; 2 uses
  %i.oj = fcmp ogt float %i.oi, f0x057A0000
  br i1 %i.oj, label %bb.p, label %b3Normalize.exit975

bb.p:                                             ; preds = %bb.o
  %sqrt1323 = tail call float @llvm.sqrt.f32(float %i.oi)
  %i.ok = fdiv float 1.000000e+00, %sqrt1323      ; 3 uses
  %i.ol = fmul float %i.nx, %i.ok
  %.sroa.018.0.vec.insert.i973 = insertelement <2 x float> poison, float %i.ol, i64 0
  %i.om = fmul float %i.oa, %i.ok
  %.sroa.018.4.vec.insert.i974 = insertelement <2 x float> %.sroa.018.0.vec.insert.i973, float %i.om, i64 1
  %i.on = fmul float %i.od, %i.ok
  br label %b3Normalize.exit975

b3Normalize.exit975:                              ; preds = %bb.o, %bb.p
  %.sroa.018.0.i969 = phi <2 x float> [ %.sroa.018.4.vec.insert.i974, %bb.p ], [ zeroinitializer, %bb.o ]
  %.sroa.5.0.i970 = phi float [ %i.on, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.oo = fmul <2 x float> %i.np, %.sroa.018.0.i.i ; 2 uses
  %shift1431 = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1432 = fadd <2 x float> %i.oo, %shift1431
  %i.op = extractelement <2 x float> %foldExtExtBinop1432, i64 0
  %i.oq = fadd float %i.jw, %i.op
  %i.or = fsub float %i.oq, %i.ip                 ; 2 uses
  %i.os = fmul <2 x float> %.sroa.018.0.i.i, %.sroa.018.0.i969 ; 2 uses
  %shift1434 = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1435 = fadd <2 x float> %i.os, %shift1434
  %i.ot = extractelement <2 x float> %foldExtExtBinop1435, i64 0
  %i.ou = fmul float %.sroa.5.0.i.i, %.sroa.5.0.i970
  %i.ov = fadd float %i.ou, %i.ot
  %i.ow = fcmp ogt float %i.or, 0.000000e+00
  %i.ox = fcmp ogt float %i.ov, 9.962000e-01      ; 2 uses
  %or.cond963 = select i1 %i.ow, i1 true, i1 %i.ox
  %i.oy = zext i1 %or.cond963 to i32
  %.5 = or i32 %.4, %i.oy                         ; 2 uses
  %i.oz = fcmp olt float %i.or, 0.000000e+00
  %or.cond964 = select i1 %i.oz, i1 true, i1 %i.ox
  %i.pa = or i32 %.5, 16
  %.6 = select i1 %or.cond964, i32 %i.pa, i32 %.5
  br label %bb.q

bb.q:                                             ; preds = %b3Normalize.exit975, %bb.n, %bb.m
  %.7 = phi i32 [ %.6, %b3Normalize.exit975 ], [ %.4, %bb.n ], [ %.4, %bb.m ]
  %i.pb = icmp slt i64 %i.he, %i.fo
  br i1 %i.pb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.pc = getelementptr i8, ptr %gep, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !41
  %.not957 = icmp eq i8 %i.pd, -1
  br i1 %.not957, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %gep1413 = getelementptr [4 x i8], ptr %invariant.gep1412, i64 %i.he ; 2 uses
  %i.pe = load float, ptr %gep1413, align 4, !tbaa !21
  %i.pf = getelementptr i8, ptr %gep1413, i64 4
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !21
  %gep1415 = getelementptr [4 x i8], ptr %invariant.gep1414, i64 %i.he
  %i.ph = load float, ptr %gep1415, align 4, !tbaa !21
  %i.pi = trunc i64 %indvars.iv1368 to i32
  %i.pj = add i32 %i.pi, 2
  %i.pk = uitofp nneg i32 %i.pj to float
  %i.pl = fmul float %.sroa.06.4.vec.extract.i, %i.pe ; 2 uses
  %i.pm = fmul float %.sroa.06.4.vec.extract.i, %i.ph
  %i.pn = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %i.pg, i64 1
  %i.pp = fmul <2 x float> %.sroa.0737.0.copyload, %i.po ; 3 uses
  %i.pq = fsub float %i.pm, %i.pl                 ; 2 uses
  %i.pr = extractelement <2 x float> %i.pp, i64 0
  %i.ps = fsub float %i.pr, %i.hj                 ; 2 uses
  %i.pt = extractelement <2 x float> %i.pp, i64 1
  %i.pu = fsub float %i.pt, %i.pl                 ; 2 uses
  %i.pv = fmul float %i.gc, %i.pq
  %i.pw = fmul float %i.gb, %i.pu
  %i.px = fsub float %i.pv, %i.pw                 ; 3 uses
  %i.py = fmul float %i.gb, %i.ps
  %i.pz = fmul float %i.gc, %i.ir
  %i.qa = fsub float %i.py, %i.pz                 ; 3 uses
  %i.qb = fmul float %i.ir, %i.pu
  %i.qc = fmul float %i.ps, %i.pq
  %i.qd = fsub float %i.qb, %i.qc                 ; 3 uses
  %i.qe = fmul float %i.px, %i.px
  %i.qf = fmul float %i.qa, %i.qa
  %i.qg = fadd float %i.qf, %i.qe
  %i.qh = fmul float %i.qd, %i.qd
  %i.qi = fadd float %i.qh, %i.qg                 ; 2 uses
  %i.qj = fcmp ogt float %i.qi, f0x057A0000
  br i1 %i.qj, label %bb.t, label %b3Normalize.exit

bb.t:                                             ; preds = %bb.s
  %sqrt1324 = tail call float @llvm.sqrt.f32(float %i.qi)
  %i.qk = fdiv float 1.000000e+00, %sqrt1324      ; 3 uses
  %i.ql = fmul float %i.px, %i.qk
  %.sroa.018.0.vec.insert.i = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.qm = fmul float %i.qa, %i.qk
  %.sroa.018.4.vec.insert.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i, float %i.qm, i64 1
  %i.qn = fmul float %i.qd, %i.qk
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.s, %bb.t
  %.sroa.018.0.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i, %bb.t ], [ zeroinitializer, %bb.s ]
  %.sroa.5.0.i = phi float [ %i.qn, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.qo = fmul <2 x float> %i.pp, %.sroa.018.0.i.i1056 ; 2 uses
  %shift1437 = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1438 = fadd <2 x float> %i.qo, %shift1437
  %i.qp = extractelement <2 x float> %foldExtExtBinop1438, i64 0
  %i.qq = fmul float %i.fz, %.sroa.5.0.i.i1057
  %i.qr = fadd float %i.qq, %i.qp
  %i.qs = fsub float %i.qr, %i.js                 ; 2 uses
  %i.qt = fmul <2 x float> %.sroa.018.0.i.i1056, %.sroa.018.0.i ; 2 uses
  %shift1440 = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1441 = fadd <2 x float> %i.qt, %shift1440
  %i.qu = extractelement <2 x float> %foldExtExtBinop1441, i64 0
  %i.qv = fmul float %.sroa.5.0.i.i1057, %.sroa.5.0.i
  %i.qw = fadd float %i.qv, %i.qu
  %i.qx = fcmp ogt float %i.qs, 0.000000e+00
  %i.qy = fcmp ogt float %i.qw, 9.962000e-01      ; 2 uses
  %or.cond965 = select i1 %i.qx, i1 true, i1 %i.qy
  %i.qz = zext i1 %or.cond965 to i32
  %.5941 = or i32 %.4940, %i.qz                   ; 2 uses
  %i.ra = fcmp olt float %i.qs, 0.000000e+00
  %or.cond966 = select i1 %i.ra, i1 true, i1 %i.qy
  %i.rb = or i32 %.5941, 16
  %.6942 = select i1 %or.cond966, i32 %i.rb, i32 %.5941
  br label %bb.u

bb.u:                                             ; preds = %b3Normalize.exit, %bb.r, %bb.q
  %.7943 = phi i32 [ %.6942, %b3Normalize.exit ], [ %.4940, %bb.r ], [ %.4940, %bb.q ]
  %i.rc = trunc nuw nsw i32 %.7 to i8
  %i.rd = getelementptr inbounds i8, ptr %i.at, i64 %indvars.iv1366 ; 2 uses
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !41
  %i.re = trunc nuw nsw i32 %.7943 to i8
  %i.rf = getelementptr i8, ptr %i.rd, i64 1
  store i8 %i.re, ptr %i.rf, align 1, !tbaa !41
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge1380, %bb.u
  %indvars.iv.next1369.pre-phi = phi i64 [ %.pre, %._crit_edge1380 ], [ %i.he, %bb.u ] ; 2 uses
  %exitcond1374.not = icmp eq i64 %indvars.iv.next1369.pre-phi, %wide.trip.count1373
  br i1 %exitcond1374.not, label %._crit_edge1344, label %bb.b, !llvm.loop !66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b3Alloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @b3Free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @b3Hash64NonZero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3GetHeightFieldTriangle(ptr dead_on_unwind noalias nofree writable sret(%struct.b3Triangle) align 4 captures(none) initializes((0, 52)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sext i32 %i.c to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !41
  %i.k = zext i8 %i.j to i32                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23   ; 3 uses
  %i.o = ashr i32 %2, 1                           ; 2 uses
  %i.p = add nsw i32 %i.n, -1                     ; 3 uses
  %i.q = sdiv i32 %i.o, %i.p                      ; 4 uses
  %i.r = mul nsw i32 %i.q, %i.p                   ; 0 uses
  %.recomposed = srem i32 %i.o, %i.p              ; 4 uses
  %i.s = mul nsw i32 %i.q, %i.n
  %i.t = add nsw i32 %.recomposed, %i.s           ; 3 uses
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = add nsw i32 %i.q, 1                      ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.n
  %i.x = add nsw i32 %i.w, %.recomposed           ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load float, ptr %i.y, align 4, !tbaa !34 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !33 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !25 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64
  %i.ag = add nsw i64 %i.af, %i.d
  %i.ah = inttoptr i64 %i.ag to ptr
  %.0.i.i = select i1 %i.ae, ptr null, ptr %i.ah  ; 2 uses
  %i.ai = sext i32 %i.t to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !36
  %i.am = uitofp i16 %i.al to float
  %i.an = fmul float %i.ab, %i.am
  %i.ao = fadd float %i.z, %i.an
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !36
  %i.as = uitofp i16 %i.ar to float
  %i.at = fmul float %i.ab, %i.as
  %i.au = fadd float %i.z, %i.at
  %i.av = sitofp i32 %.recomposed to float
  %i.aw = add nsw i32 %.recomposed, 1
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = sitofp i32 %i.q to float
  %i.az = sitofp i32 %i.v to float
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.047.0.copyload.i = load <2 x float>, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !21 ; 2 uses
  %.sroa.06.0.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 0 ; 2 uses
  %i.bb = fmul float %.sroa.06.0.vec.extract.i.i, %i.av
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bb, i64 0 ; 2 uses
  %.sroa.06.4.vec.extract.i.i = extractelement <2 x float> %.sroa.047.0.copyload.i, i64 1 ; 4 uses
  %i.bc = fmul float %.sroa.7.0.copyload.i, %i.ay ; 2 uses
  %i.bd = fmul float %.sroa.06.0.vec.extract.i.i, %i.ax
  %.sroa.08.0.vec.insert.i99.i = insertelement <2 x float> poison, float %i.bd, i64 0 ; 2 uses
  %i.be = fmul float %i.ao, %.sroa.06.4.vec.extract.i.i
  %.sroa.08.4.vec.insert.i101.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.be, i64 1 ; 2 uses
  %i.bf = fmul float %.sroa.06.4.vec.extract.i.i, %i.au
  %.sroa.08.4.vec.insert.i107.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i.i, float %i.bf, i64 1 ; 2 uses
  %i.bg = fmul float %.sroa.7.0.copyload.i, %i.az ; 2 uses
  %i.bh = and i32 %2, 1
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bj = load i16, ptr %i.aj, align 2, !tbaa !36
  %i.bk = uitofp i16 %i.bj to float
  %i.bl = fmul float %i.ab, %i.bk
  %i.bm = fadd float %i.z, %i.bl
  %i.bn = fmul float %.sroa.06.4.vec.extract.i.i, %i.bm
  %.sroa.08.4.vec.insert.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i.i, float %i.bn, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bo = getelementptr i8, ptr %i.aq, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !36
  %i.bq = uitofp i16 %i.bp to float
  %i.br = fmul float %i.ab, %i.bq
  %i.bs = fadd float %i.z, %i.br
  %i.bt = fmul float %.sroa.06.4.vec.extract.i.i, %i.bs
  %.sroa.08.4.vec.insert.i113.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i99.i, float %i.bt, i64 1
  %i.bu = add nsw i32 %i.x, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.08.4.vec.insert.i113.i.sink = phi <2 x float> [ %.sroa.08.4.vec.insert.i.i, %bb.b ], [ %.sroa.08.4.vec.insert.i113.i, %bb.c ]
  %.sink50 = phi float [ %i.bc, %bb.b ], [ %i.bg, %bb.c ] ; 2 uses
  %.sroa.08.4.vec.insert.i101.i.sink = phi <2 x float> [ %.sroa.08.4.vec.insert.i107.i, %bb.b ], [ %.sroa.08.4.vec.insert.i101.i, %bb.c ]
  %.sink49 = phi float [ %i.bg, %bb.b ], [ %i.bc, %bb.c ]
  %.sroa.08.4.vec.insert.i107.i.sink = phi <2 x float> [ %.sroa.08.4.vec.insert.i101.i, %bb.b ], [ %.sroa.08.4.vec.insert.i107.i, %bb.c ]
  %.sink47 = phi i32 [ %i.t, %bb.b ], [ %i.bu, %bb.c ]
  %.sroa.0.0.copyload = phi i32 [ %i.x, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.bv = phi i32 [ %i.u, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  store <2 x float> %.sroa.08.4.vec.insert.i113.i.sink, ptr %0, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink50, ptr %i.bw, align 4, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store <2 x float> %.sroa.08.4.vec.insert.i101.i.sink, ptr %i.bx, align 4, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sink49, ptr %i.by, align 4, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store <2 x float> %.sroa.08.4.vec.insert.i107.i.sink, ptr %i.bz, align 4, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sink50, ptr %i.ca, align 4, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink47, ptr %i.cb, align 4, !tbaa !76
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %.sroa.0.0.copyload, ptr %i.cc, align 4, !tbaa !77
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.bv, ptr %i.cd, align 4, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !31
  %.not = icmp eq i8 %i.cf, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bx, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 1 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 %i.bv, ptr %i.cc, align 4
  store i32 %.sroa.0.0.copyload, ptr %i.cd, align 4
  %i.cg = and i32 %i.k, 170
  %i.ch = shl nuw nsw i32 %i.k, 2
  %i.ci = and i32 %i.ch, 68
  %i.cj = or disjoint i32 %i.ci, %i.cg
  %i.ck = lshr i32 %i.k, 2
  %i.cl = and i32 %i.ck, 17
  %i.cm = or disjoint i32 %i.cj, %i.cl
  store i32 %i.cm, ptr %i.l, align 4, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 256) i32 @b3GetHeightFieldMaterial(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sext i32 %i.c to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !41
  %i.k = zext i8 %i.j to i32
  ret i32 %i.k
}

end_hunk_1
