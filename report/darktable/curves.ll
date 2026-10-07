Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/curves?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw12cubic_splineEPKiS1_i:bb.a
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %.lr.ph193 ], [ %indvars.iv224.ph, %.lr.ph193.preheader ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv224
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !46
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.br, f0x37800080
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv224
  store float %i.bs, ptr %i.bt, align 4, !tbaa !47
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv224
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.bv to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x37800080
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv224
  store float %i.bx, ptr %i.by, align 4, !tbaa !47
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge194, label %.lr.ph193, !llvm.loop !23

._crit_edge194:                                   ; preds = %.lr.ph193, %vec.epilog.middle.block361, %middle.block347
  %i.bz = add nsw i32 %3, -1                      ; 8 uses
  %.not319 = icmp eq i32 %3, 1
  br i1 %.not319, label %.preheader.split.preheader, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %._crit_edge194
  %i.ca = zext i32 %i.bz to i64                   ; 6 uses
  %i.cb = icmp ne i32 %i.bz, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = zext nneg i32 %3 to i64
  %i.cd = add nsw i64 %.neg, %i.cc                ; 3 uses
  %min.iters.check379 = icmp ult i64 %i.cd, 24
  br i1 %min.iters.check379, label %.lr.ph197.preheader514, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph197.preheader
  %i.ce = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.cf = add nsw i64 %i.ce, -5
  %diff.check365 = icmp ult i64 %i.cf, 31
  %i.cg = shl nuw nsw i64 %wide.trip.count227, 2
  %i.ch = add nuw nsw i64 %i.ce, %i.cg
  %i.ci = icmp samesign ult i64 %i.ch, 36
  %conflict.rdx370 = or i1 %diff.check365, %i.ci
  %i.cj = shl nuw nsw i64 %wide.trip.count, 2
  %i.ck = or disjoint i64 %i.cj, 3
  %diff.check371 = icmp samesign ult i64 %i.ck, 31
  %conflict.rdx372 = or i1 %conflict.rdx370, %diff.check371
  %diff.check373 = icmp slt i32 %3, 4
  %conflict.rdx374 = or i1 %conflict.rdx372, %diff.check373
  %i.cl = add nuw nsw i64 %wide.trip.count227, %wide.trip.count ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = or disjoint i64 %i.cm, 3
  %diff.check375 = icmp samesign ult i64 %i.cn, 31
  %conflict.rdx376 = or i1 %conflict.rdx374, %diff.check375
  %diff.check377 = icmp samesign ult i64 %i.cl, 8
  %conflict.rdx378 = or i1 %conflict.rdx376, %diff.check377
  br i1 %conflict.rdx378, label %.lr.ph197.preheader514, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck
  %n.vec381 = and i64 %i.cd, -8                   ; 3 uses
  %i.co = sub nsw i64 %i.ca, %n.vec381
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph380
  %index383 = phi i64 [ 0, %vector.ph380 ], [ %index.next391, %vector.body382 ] ; 2 uses
  %i.cp = sub i64 %i.ca, %index383                ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load384 = load <8 x float>, ptr %i.cr, align 4, !tbaa !47
  %i.cs = add nsw i64 %i.cp, -1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -28
  %wide.load385 = load <8 x float>, ptr %i.cu, align 4, !tbaa !47
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load384, %wide.load385
  %reverse = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %reverse)
  %i.cx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cw, splat (float 1.000000e-15)
  %i.cy = select <8 x i1> %i.cx, <8 x float> splat (float 1.000000e+00), <8 x float> %reverse ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cp
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -28
  %wide.load386 = load <8 x float>, ptr %i.da, align 4, !tbaa !47
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cs
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -28
  %wide.load387 = load <8 x float>, ptr %i.dc, align 4, !tbaa !47
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load386, %wide.load387
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -28
  %i.dg = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse389 = fdiv reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dg
  store <8 x float> %reverse389, ptr %i.df, align 4, !tbaa !47
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cs
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -28
  %reverse390 = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse390, ptr %i.di, align 4, !tbaa !47
  %index.next391 = add nuw i64 %index383, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next391, %n.vec381
  br i1 %i.dj, label %middle.block392, label %vector.body382, !llvm.loop !24

middle.block392:                                  ; preds = %vector.body382
  %cmp.n393 = icmp eq i64 %i.cd, %n.vec381
  br i1 %cmp.n393, label %.preheader189, label %.lr.ph197.preheader514

.lr.ph197.preheader514:                           ; preds = %vector.memcheck, %.lr.ph197.preheader, %middle.block392
  %indvars.iv229.ph = phi i64 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph197.preheader ], [ %i.co, %middle.block392 ]
  br label %.lr.ph197

.preheader189:                                    ; preds = %.lr.ph197, %middle.block392
  %i.dk = icmp samesign ugt i32 %3, 2
  br i1 %i.dk, label %bb.c, label %.lr.ph217.us.preheader

bb.c:                                             ; preds = %.preheader189
  %i.dl = zext nneg i32 %i.bz to i64              ; 4 uses
  %i.dm = load float, ptr %i.ak, align 4, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !47
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dm
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 2.000000e+00
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !42 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store float %i.dq, ptr %i.dt, align 4, !tbaa !47
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.pre267 = load float, ptr %.phi.trans.insert266, align 4, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !47
  %i.du = fsub reassoc nsz arcp contract afn float %.pre, %.pre267
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 6.000000e+00
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  store float %i.dv, ptr %i.dw, align 4, !tbaa !47
  %exitcond236.peel.not = icmp eq i32 %i.bz, 2
  br i1 %exitcond236.peel.not, label %.preheader188, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.ca, 1
  %i.dx = icmp eq i32 %i.bz, 3
  br i1 %i.dx, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %i.dy = and i64 %i.ca, 4294967294
  %i.dz = add nsw i64 %i.dy, -4
  br label %.peel.next

.lr.ph197:                                        ; preds = %.lr.ph197.preheader514, %.lr.ph197
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph197 ], [ %indvars.iv229.ph, %.lr.ph197.preheader514 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv229
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !47
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1 ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next230
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !47
  %i.ee = fsub reassoc nsz arcp contract afn float %i.eb, %i.ed ; 2 uses
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ee)
  %i.eg = fcmp reassoc nsz arcp contract afn olt float %i.ef, 1.000000e-15
  %spec.store.select = select i1 %i.eg, float 1.000000e+00, float %i.ee ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv229
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !47
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next230
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !47
  %i.el = fsub reassoc nsz arcp contract afn float %i.ei, %i.ek
  %i.em = fdiv reassoc nsz arcp contract afn float %i.el, %spec.store.select
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv229
  store float %i.em, ptr %i.en, align 4, !tbaa !47
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next230
  store float %spec.store.select, ptr %i.eo, align 4, !tbaa !47
  %i.ep = icmp samesign ugt i64 %indvars.iv229, 1
  br i1 %i.ep, label %.lr.ph197, label %.preheader189, !llvm.loop !25

.preheader188.loopexit.unr-lcssa:                 ; preds = %.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader188, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.preheader188.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv232.epil.init = phi i64 [ 2, %.peel.next.preheader ], [ %indvars.iv.next233.1, %.preheader188.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod515 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod515)
  %i.eq = add nsw i64 %indvars.iv232.epil.init, -1 ; 3 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.eq ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !47
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv232.epil.init
  %i.eu = load float, ptr %i.et, align 4, !tbaa !47
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 2.000000e+00
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv232.epil.init
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !42 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv232.epil.init
  store float %i.ew, ptr %i.ez, align 4, !tbaa !47
  %i.fa = load float, ptr %i.er, align 4, !tbaa !47 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.eq
  store float %i.fa, ptr %i.fb, align 4, !tbaa !47
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.eq
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv232.epil.init
  store float %i.fa, ptr %i.fe, align 4, !tbaa !47
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.epil.init
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !47
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.epil.init
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !47
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fh, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 6.000000e+00
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.dl
  store float %i.fl, ptr %i.fm, align 4, !tbaa !47
  br label %.preheader188

.preheader188:                                    ; preds = %.peel.next.epil.preheader, %.preheader188.loopexit.unr-lcssa, %bb.c
  %i.fn = add nsw i32 %3, -2                      ; 6 uses
  %i.fo = icmp sgt i32 %3, 3
  br i1 %i.fo, label %.lr.ph203.preheader, label %.preheader186.lr.ph

.lr.ph203.preheader:                              ; preds = %.preheader188
  %wide.trip.count246 = zext nneg i32 %i.fn to i64
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre270 = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !42
  %wide.trip.count241 = zext nneg i32 %3 to i64
  %i.fp = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.fq = add nsw i64 %wide.trip.count227, -1     ; 5 uses
  %min.iters.check400 = icmp eq i32 %3, 4
  %min.iters.check402 = icmp ult i32 %3, 33
  %i.fr = and i64 %i.fq, 28
  %n.vec404 = and i64 %i.fq, -32                  ; 4 uses
  %i.fs = or disjoint i64 %n.vec404, 1
  %cmp.n421 = icmp eq i64 %i.fq, %n.vec404
  %min.epilog.iters.check427 = icmp eq i64 %i.fr, 0
  %n.vec429 = and i64 %i.fq, -4                   ; 3 uses
  %i.ft = or disjoint i64 %n.vec429, 1
  %cmp.n440 = icmp eq i64 %i.fq, %n.vec429
  br label %iter.check424

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %indvars.iv232 = phi i64 [ 2, %.peel.next.preheader.new ], [ %indvars.iv.next233.1, %.peel.next ] ; 10 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %.peel.next ] ; 2 uses
  %i.fu = add nsw i64 %indvars.iv232, -1          ; 3 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.fu ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !47
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv232
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !47
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fw
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 2.000000e+00
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv232
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !42 ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv232
  store float %i.ga, ptr %i.gd, align 4, !tbaa !47
  %i.ge = load float, ptr %i.fv, align 4, !tbaa !47 ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.fu
  store float %i.ge, ptr %i.gf, align 4, !tbaa !47
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fu
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv232
  store float %i.ge, ptr %i.gi, align 4, !tbaa !47
  %indvars.iv.next233 = or disjoint i64 %indvars.iv232, 1 ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next233
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !47
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !47
  %i.gn = fsub reassoc nsz arcp contract afn float %i.gk, %i.gm
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, 6.000000e+00
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.dl
  store float %i.go, ptr %i.gp, align 4, !tbaa !47
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv232 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !47
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next233
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !47
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, %i.gr
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gu, 2.000000e+00
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next233
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !42 ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next233
  store float %i.gv, ptr %i.gy, align 4, !tbaa !47
  %i.gz = load float, ptr %i.gq, align 4, !tbaa !47 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv232
  store float %i.gz, ptr %i.ha, align 4, !tbaa !47
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next233
  store float %i.gz, ptr %i.hb, align 4, !tbaa !47
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2 ; 3 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next233.1
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !47
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next233
  %i.hf = load float, ptr %i.he, align 4, !tbaa !47
  %i.hg = fsub reassoc nsz arcp contract afn float %i.hd, %i.hf
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, 6.000000e+00
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.dl
  store float %i.hh, ptr %i.hi, align 4, !tbaa !47
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.dz
  br i1 %niter.ncmp.1, label %.preheader188.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !26

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph425.prol.loopexit, %vec.epilog.scalar.ph425, %vec.epilog.middle.block439, %middle.block420
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader186.lr.ph, label %iter.check424, !llvm.loop !27

.preheader186.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader188
  %i.hj = sext i32 %i.bz to i64
  %i.hk = zext i32 %i.fn to i64
  %i.hl = sext i32 %i.fn to i64
  %invariant.op = sub i32 2, %3
  br label %.preheader186

iter.check424:                                    ; preds = %.lr.ph203.preheader, %..loopexit_crit_edge
  %i.hm = phi ptr [ %.pre270, %.lr.ph203.preheader ], [ %i.ho, %..loopexit_crit_edge ] ; 10 uses
  %indvars.iv243 = phi i64 [ 1, %.lr.ph203.preheader ], [ %indvars.iv.next244, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next244
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !42 ; 11 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv243
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !47 ; 7 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv243
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !47 ; 7 uses
  br i1 %min.iters.check400, label %vec.epilog.scalar.ph425.preheader, label %vector.memcheck395

vector.memcheck395:                               ; preds = %iter.check424
  %scevgep = getelementptr nuw i8, ptr %i.ho, i64 4
  %scevgep396 = getelementptr i8, ptr %i.ho, i64 %i.fp
  %scevgep397 = getelementptr nuw i8, ptr %i.hm, i64 4
  %scevgep398 = getelementptr i8, ptr %i.hm, i64 %i.fp
  %bound0 = icmp ult ptr %scevgep, %scevgep398
  %bound1 = icmp ult ptr %scevgep397, %scevgep396
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph425.preheader, label %vector.main.loop.iter.check401

vector.main.loop.iter.check401:                   ; preds = %vector.memcheck395
  br i1 %min.iters.check402, label %vec.epilog.ph428, label %vector.ph403

vector.ph403:                                     ; preds = %vector.main.loop.iter.check401
  %broadcast.splatinsert405 = insertelement <8 x float> poison, float %i.hq, i64 0
  %broadcast.splat406 = shufflevector <8 x float> %broadcast.splatinsert405, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert407 = insertelement <8 x float> poison, float %i.hs, i64 0
  %broadcast.splat408 = shufflevector <8 x float> %broadcast.splatinsert407, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ht = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat408
  %i.hu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat408
  %i.hv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat408
  %i.hw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat408
  br label %vector.body409

vector.body409:                                   ; preds = %vector.ph403, %vector.body409
  %index410 = phi i64 [ 0, %vector.ph403 ], [ %index.next419, %vector.body409 ] ; 2 uses
  %i.hx = or disjoint i64 %index410, 1            ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hx ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 96
  %wide.load411 = load <8 x float>, ptr %i.hy, align 4, !tbaa !47, !alias.scope !49
  %wide.load412 = load <8 x float>, ptr %i.hz, align 4, !tbaa !47, !alias.scope !49
  %wide.load413 = load <8 x float>, ptr %i.ia, align 4, !tbaa !47, !alias.scope !49
  %wide.load414 = load <8 x float>, ptr %i.ib, align 4, !tbaa !47, !alias.scope !49
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, %wide.load411
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, %wide.load412
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, %wide.load413
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat406, %wide.load414
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %i.ic, %i.ht
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.hu
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.ie, %i.hv
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %i.if, %i.hw
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hx ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 64 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 96 ; 2 uses
  %wide.load415 = load <8 x float>, ptr %i.ik, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %wide.load416 = load <8 x float>, ptr %i.il, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %wide.load417 = load <8 x float>, ptr %i.im, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %wide.load418 = load <8 x float>, ptr %i.in, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %i.io = fsub reassoc nsz arcp contract afn <8 x float> %wide.load415, %i.ig
  %i.ip = fsub reassoc nsz arcp contract afn <8 x float> %wide.load416, %i.ih
  %i.iq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load417, %i.ii
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %wide.load418, %i.ij
  store <8 x float> %i.io, ptr %i.ik, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  store <8 x float> %i.ip, ptr %i.il, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  store <8 x float> %i.iq, ptr %i.im, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  store <8 x float> %i.ir, ptr %i.in, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %index.next419 = add nuw i64 %index410, 32      ; 2 uses
  %i.is = icmp eq i64 %index.next419, %n.vec404
  br i1 %i.is, label %middle.block420, label %vector.body409, !llvm.loop !31

middle.block420:                                  ; preds = %vector.body409
  br i1 %cmp.n421, label %..loopexit_crit_edge, label %vec.epilog.iter.check426

vec.epilog.iter.check426:                         ; preds = %middle.block420
  br i1 %min.epilog.iters.check427, label %vec.epilog.scalar.ph425.preheader, label %vec.epilog.ph428, !prof !51

vec.epilog.ph428:                                 ; preds = %vector.main.loop.iter.check401, %vec.epilog.iter.check426
  %vec.epilog.resume.val422 = phi i64 [ %n.vec404, %vec.epilog.iter.check426 ], [ 0, %vector.main.loop.iter.check401 ]
  %broadcast.splatinsert430 = insertelement <4 x float> poison, float %i.hq, i64 0
  %broadcast.splat431 = shufflevector <4 x float> %broadcast.splatinsert430, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <4 x float> poison, float %i.hs, i64 0
  %broadcast.splat433 = shufflevector <4 x float> %broadcast.splatinsert432, <4 x float> poison, <4 x i32> zeroinitializer
  %i.it = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat433
  br label %vec.epilog.vector.body434

vec.epilog.vector.body434:                        ; preds = %vec.epilog.vector.body434, %vec.epilog.ph428
  %index435 = phi i64 [ %vec.epilog.resume.val422, %vec.epilog.ph428 ], [ %index.next438, %vec.epilog.vector.body434 ] ; 2 uses
  %i.iu = or disjoint i64 %index435, 1            ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.iu
  %wide.load436 = load <4 x float>, ptr %i.iv, align 4, !tbaa !47, !alias.scope !49
  %i.iw = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat431, %wide.load436
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.it
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.iu ; 2 uses
  %wide.load437 = load <4 x float>, ptr %i.iy, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %i.iz = fsub reassoc nsz arcp contract afn <4 x float> %wide.load437, %i.ix
  store <4 x float> %i.iz, ptr %i.iy, align 4, !tbaa !47, !alias.scope !50, !noalias !49
  %index.next438 = add nuw i64 %index435, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next438, %n.vec429
  br i1 %i.ja, label %vec.epilog.middle.block439, label %vec.epilog.vector.body434, !llvm.loop !32

vec.epilog.middle.block439:                       ; preds = %vec.epilog.vector.body434
  br i1 %cmp.n440, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph425.preheader

vec.epilog.scalar.ph425.preheader:                ; preds = %iter.check424, %vector.memcheck395, %vec.epilog.iter.check426, %vec.epilog.middle.block439
  %indvars.iv238.ph = phi i64 [ 1, %iter.check424 ], [ 1, %vector.memcheck395 ], [ %i.fs, %vec.epilog.iter.check426 ], [ %i.ft, %vec.epilog.middle.block439 ] ; 4 uses
  %i.jb = sub nsw i64 %wide.trip.count227, %indvars.iv238.ph
  %xtraiter516 = and i64 %i.jb, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %vec.epilog.scalar.ph425.prol.loopexit, label %vec.epilog.scalar.ph425.prol.preheader

vec.epilog.scalar.ph425.prol.preheader:           ; preds = %vec.epilog.scalar.ph425.preheader
  %i.jc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  br label %vec.epilog.scalar.ph425.prol

vec.epilog.scalar.ph425.prol:                     ; preds = %vec.epilog.scalar.ph425.prol, %vec.epilog.scalar.ph425.prol.preheader
  %indvars.iv238.prol = phi i64 [ %indvars.iv.next239.prol, %vec.epilog.scalar.ph425.prol ], [ %indvars.iv238.ph, %vec.epilog.scalar.ph425.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph425.prol ], [ 0, %vec.epilog.scalar.ph425.prol.preheader ]
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv238.prol
  %i.je = load float, ptr %i.jd, align 4, !tbaa !47
  %i.jf = fmul reassoc nsz arcp contract afn float %i.hq, %i.je
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jc
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv238.prol ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !47
  %i.jj = fsub reassoc nsz arcp contract afn float %i.ji, %i.jg
  store float %i.jj, ptr %i.jh, align 4, !tbaa !47
  %indvars.iv.next239.prol = add nuw nsw i64 %indvars.iv238.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph425.prol.loopexit, label %vec.epilog.scalar.ph425.prol, !llvm.loop !33

vec.epilog.scalar.ph425.prol.loopexit:            ; preds = %vec.epilog.scalar.ph425.prol, %vec.epilog.scalar.ph425.preheader
  %indvars.iv238.unr = phi i64 [ %indvars.iv238.ph, %vec.epilog.scalar.ph425.preheader ], [ %indvars.iv.next239.prol, %vec.epilog.scalar.ph425.prol ]
  %i.jk = sub nsw i64 %indvars.iv238.ph, %wide.trip.count227
  %i.jl = icmp ugt i64 %i.jk, -4
  br i1 %i.jl, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph425.preheader.new

vec.epilog.scalar.ph425.preheader.new:            ; preds = %vec.epilog.scalar.ph425.prol.loopexit
  %i.jm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  %i.jn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  %i.jo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  %i.jp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  br label %vec.epilog.scalar.ph425

vec.epilog.scalar.ph425:                          ; preds = %vec.epilog.scalar.ph425, %vec.epilog.scalar.ph425.preheader.new
  %indvars.iv238 = phi i64 [ %indvars.iv238.unr, %vec.epilog.scalar.ph425.preheader.new ], [ %indvars.iv.next239.3, %vec.epilog.scalar.ph425 ] ; 6 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv238
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !47
  %i.js = fmul reassoc nsz arcp contract afn float %i.hq, %i.jr
  %i.jt = fmul reassoc nsz arcp contract afn float %i.js, %i.jm
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv238 ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !47
  %i.jw = fsub reassoc nsz arcp contract afn float %i.jv, %i.jt
  store float %i.jw, ptr %i.ju, align 4, !tbaa !47
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next239
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !47
  %i.jz = fmul reassoc nsz arcp contract afn float %i.hq, %i.jy
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.jn
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next239 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !47
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kc, %i.ka
  store float %i.kd, ptr %i.kb, align 4, !tbaa !47
  %indvars.iv.next239.1 = add nuw nsw i64 %indvars.iv238, 2 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next239.1
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !47
  %i.kg = fmul reassoc nsz arcp contract afn float %i.hq, %i.kf
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, %i.jo
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next239.1 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !47
  %i.kk = fsub reassoc nsz arcp contract afn float %i.kj, %i.kh
  store float %i.kk, ptr %i.ki, align 4, !tbaa !47
  %indvars.iv.next239.2 = add nuw nsw i64 %indvars.iv238, 3 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.next239.2
  %i.km = load float, ptr %i.kl, align 4, !tbaa !47
  %i.kn = fmul reassoc nsz arcp contract afn float %i.hq, %i.km
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, %i.jp
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv.next239.2 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !47
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kq, %i.ko
  store float %i.kr, ptr %i.kp, align 4, !tbaa !47
  %indvars.iv.next239.3 = add nuw nsw i64 %indvars.iv238, 4 ; 2 uses
  %exitcond242.not.3 = icmp eq i64 %indvars.iv.next239.3, %wide.trip.count241
  br i1 %exitcond242.not.3, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph425, !llvm.loop !34

.preheader186:                                    ; preds = %.preheader186.lr.ph, %._crit_edge211
  %indvar = phi i32 [ 0, %.preheader186.lr.ph ], [ %indvar.next, %._crit_edge211 ] ; 3 uses
  %indvars.iv248 = phi i64 [ %i.hk, %.preheader186.lr.ph ], [ %indvars.iv.next249, %._crit_edge211 ] ; 11 uses
  %i.ks = sub i32 %i.fn, %indvar
  %smax442 = tail call i32 @llvm.smax.i32(i32 %i.ks, i32 %i.fn)
  %.reass = add i32 %indvar, %invariant.op
  %i.kt = add i32 %smax442, %.reass               ; 3 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 5 uses
  %.not184207 = icmp sgt i64 %indvars.iv248, %i.hl
  %.phi.trans.insert271 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv248
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8, !tbaa !42 ; 5 uses
  br i1 %.not184207, label %._crit_edge211, label %iter.check469

iter.check469:                                    ; preds = %.preheader186
  %min.iters.check444 = icmp ult i32 %i.kt, 7
  br i1 %min.iters.check444, label %.lr.ph210.preheader, label %vector.main.loop.iter.check445

vector.main.loop.iter.check445:                   ; preds = %iter.check469
  %min.iters.check446 = icmp ult i32 %i.kt, 31
  br i1 %min.iters.check446, label %vec.epilog.ph473, label %vector.ph447

vector.ph447:                                     ; preds = %vector.main.loop.iter.check445
  %i.kw = and i64 %i.kv, 24
  %n.vec448 = and i64 %i.kv, 8589934560           ; 4 uses
  %i.kx = add i64 %indvars.iv248, %n.vec448
  br label %vector.body449

vector.body449:                                   ; preds = %vector.ph447, %vector.body449
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next462, %vector.body449 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph447 ], [ %i.ll, %vector.body449 ]
  %vec.phi451 = phi <8 x float> [ zeroinitializer, %vector.ph447 ], [ %i.lm, %vector.body449 ]
  %vec.phi452 = phi <8 x float> [ zeroinitializer, %vector.ph447 ], [ %i.ln, %vector.body449 ]
  %vec.phi453 = phi <8 x float> [ zeroinitializer, %vector.ph447 ], [ %i.lo, %vector.body449 ]
  %i.ky = add nuw i64 %indvars.iv248, %index450   ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %i.ky ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 96
  %wide.load454 = load <8 x float>, ptr %i.kz, align 4, !tbaa !47
  %wide.load455 = load <8 x float>, ptr %i.la, align 4, !tbaa !47
  %wide.load456 = load <8 x float>, ptr %i.lb, align 4, !tbaa !47
  %wide.load457 = load <8 x float>, ptr %i.lc, align 4, !tbaa !47
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ky ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 96
  %wide.load458 = load <8 x float>, ptr %i.ld, align 4, !tbaa !47
  %wide.load459 = load <8 x float>, ptr %i.le, align 4, !tbaa !47
  %wide.load460 = load <8 x float>, ptr %i.lf, align 4, !tbaa !47
  %wide.load461 = load <8 x float>, ptr %i.lg, align 4, !tbaa !47
  %i.lh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load458, %wide.load454
  %i.li = fmul reassoc nsz arcp contract afn <8 x float> %wide.load459, %wide.load455
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load460, %wide.load456
  %i.lk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load461, %wide.load457
  %i.ll = fadd reassoc nsz arcp contract afn <8 x float> %i.lh, %vec.phi ; 2 uses
  %i.lm = fadd reassoc nsz arcp contract afn <8 x float> %i.li, %vec.phi451 ; 2 uses
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %i.lj, %vec.phi452 ; 2 uses
  %i.lo = fadd reassoc nsz arcp contract afn <8 x float> %i.lk, %vec.phi453 ; 2 uses
  %index.next462 = add nuw i64 %index450, 32      ; 2 uses
  %i.lp = icmp eq i64 %index.next462, %n.vec448
  br i1 %i.lp, label %middle.block463, label %vector.body449, !llvm.loop !35

middle.block463:                                  ; preds = %vector.body449
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.lm, %i.ll
  %bin.rdx464 = fadd reassoc nsz arcp contract afn <8 x float> %i.ln, %bin.rdx
  %bin.rdx465 = fadd reassoc nsz arcp contract afn <8 x float> %i.lo, %bin.rdx464
  %i.lq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx465) ; 3 uses
  %cmp.n466 = icmp eq i64 %i.kv, %n.vec448
  br i1 %cmp.n466, label %._crit_edge211, label %vec.epilog.iter.check471

vec.epilog.iter.check471:                         ; preds = %middle.block463
  %min.epilog.iters.check472 = icmp eq i64 %i.kw, 0
  br i1 %min.epilog.iters.check472, label %.lr.ph210.preheader, label %vec.epilog.ph473, !prof !52

vec.epilog.ph473:                                 ; preds = %vector.main.loop.iter.check445, %vec.epilog.iter.check471
  %vec.epilog.resume.val467 = phi i64 [ %n.vec448, %vec.epilog.iter.check471 ], [ 0, %vector.main.loop.iter.check445 ]
  %bc.merge.rdx = phi float [ %i.lq, %vec.epilog.iter.check471 ], [ 0.000000e+00, %vector.main.loop.iter.check445 ]
  %n.vec474 = and i64 %i.kv, 8589934584           ; 3 uses
  %i.lr = add i64 %indvars.iv248, %n.vec474
  %i.ls = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body475

vec.epilog.vector.body475:                        ; preds = %vec.epilog.vector.body475, %vec.epilog.ph473
  %index476 = phi i64 [ %vec.epilog.resume.val467, %vec.epilog.ph473 ], [ %index.next480, %vec.epilog.vector.body475 ] ; 2 uses
  %vec.phi477 = phi <8 x float> [ %i.ls, %vec.epilog.ph473 ], [ %i.lx, %vec.epilog.vector.body475 ]
  %i.lt = add nuw i64 %indvars.iv248, %index476   ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %i.lt
  %wide.load478 = load <8 x float>, ptr %i.lu, align 4, !tbaa !47
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.lt
  %wide.load479 = load <8 x float>, ptr %i.lv, align 4, !tbaa !47
  %i.lw = fmul reassoc nsz arcp contract afn <8 x float> %wide.load479, %wide.load478
  %i.lx = fadd reassoc nsz arcp contract afn <8 x float> %i.lw, %vec.phi477 ; 2 uses
  %index.next480 = add nuw i64 %index476, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next480, %n.vec474
  br i1 %i.ly, label %vec.epilog.middle.block481, label %vec.epilog.vector.body475, !llvm.loop !36

vec.epilog.middle.block481:                       ; preds = %vec.epilog.vector.body475
  %i.lz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.lx) ; 2 uses
  %cmp.n482 = icmp eq i64 %i.kv, %n.vec474
  br i1 %cmp.n482, label %._crit_edge211, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %iter.check469, %vec.epilog.iter.check471, %vec.epilog.middle.block481
  %indvars.iv250.ph = phi i64 [ %indvars.iv248, %iter.check469 ], [ %i.kx, %vec.epilog.iter.check471 ], [ %i.lr, %vec.epilog.middle.block481 ]
  %.0169209.ph = phi float [ 0.000000e+00, %iter.check469 ], [ %i.lq, %vec.epilog.iter.check471 ], [ %i.lz, %vec.epilog.middle.block481 ]
  br label %.lr.ph210

.preheader.split.preheader:                       ; preds = %bb.b, %._crit_edge194
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.ma, i8 0, i64 131072, i1 false), !tbaa !17
  br label %.split.us

.lr.ph217.us.preheader.loopexit:                  ; preds = %._crit_edge211
  %i.mb = zext i32 %i.bz to i64
  br label %.lr.ph217.us.preheader

.lr.ph217.us.preheader:                           ; preds = %.lr.ph217.us.preheader.loopexit, %.preheader189
  %wide.trip.count260 = phi i64 [ 1, %.preheader189 ], [ %i.mb, %.lr.ph217.us.preheader.loopexit ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %min.iters.check486 = icmp samesign ult i64 %wide.trip.count260, 8
  %n.vec488 = and i64 %wide.trip.count260, 4294967288 ; 3 uses
  %cmp.n502 = icmp eq i64 %wide.trip.count260, %n.vec488
  br label %.lr.ph217.us

.lr.ph217.us:                                     ; preds = %.lr.ph217.us.preheader, %bb.h
  %indvars.iv262 = phi i64 [ 0, %.lr.ph217.us.preheader ], [ %indvars.iv.next263, %bb.h ] ; 3 uses
  %i.md = trunc nuw nsw i64 %indvars.iv262 to i32
  %i.me = uitofp nsz nneg i32 %i.md to float
  %i.mf = fmul reassoc nnan nsz arcp contract afn float %i.me, f0x37800080 ; 4 uses
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph217.us
  %broadcast.splatinsert489 = insertelement <8 x float> poison, float %i.mf, i64 0
  %broadcast.splat490 = shufflevector <8 x float> %broadcast.splatinsert489, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body491

vector.body491:                                   ; preds = %vector.body491, %vector.ph487
  %index492 = phi i64 [ 0, %vector.ph487 ], [ %index.next500, %vector.body491 ] ; 6 uses
  %vec.phi493 = phi <8 x float> [ zeroinitializer, %vector.ph487 ], [ %i.np, %vector.body491 ]
  %i.mg = phi <8 x i1> [ zeroinitializer, %vector.ph487 ], [ %i.no, %vector.body491 ]
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index492
  %wide.load494 = load <8 x float>, ptr %i.mh, align 4, !tbaa !47 ; 2 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load494, %broadcast.splat490 ; 2 uses
  %i.mj = or disjoint i64 %index492, 1            ; 3 uses
  %i.mk = getelementptr [4 x i8], ptr %i.al, i64 %i.mj
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mk, <8 x i1> %i.mi, <8 x float> poison), !tbaa !47
  %i.ml = fcmp reassoc nsz arcp contract afn ole <8 x float> %broadcast.splat490, %wide.masked.load
  %i.mm = select <8 x i1> %i.mi, <8 x i1> %i.ml, <8 x i1> zeroinitializer
  %i.mn = freeze <8 x i1> %i.mm                   ; 7 uses
  %i.mo = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat490, %wide.load494 ; 4 uses
  %i.mp = getelementptr [4 x i8], ptr %i.an, i64 %index492
  %wide.masked.load495 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mp, <8 x i1> %i.mn, <8 x float> poison), !tbaa !47 ; 2 uses
  %i.mq = getelementptr [4 x i8], ptr %i.an, i64 %i.mj
  %wide.masked.load496 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mq, <8 x i1> %i.mn, <8 x float> poison), !tbaa !47
  %i.mr = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load496, %wide.masked.load495
  %i.ms = getelementptr [4 x i8], ptr %i.ak, i64 %index492
  %wide.masked.load497 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ms, <8 x i1> %i.mn, <8 x float> poison), !tbaa !47 ; 3 uses
  %i.mt = fdiv reassoc nsz arcp contract afn <8 x float> %i.mr, %wide.masked.load497
  %i.mu = getelementptr [4 x i8], ptr %i.aj, i64 %index492
  %wide.masked.load498 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mu, <8 x i1> %i.mn, <8 x float> poison), !tbaa !47 ; 3 uses
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load498, splat (float 2.000000e+00)
  %i.mw = getelementptr [4 x i8], ptr %i.aj, i64 %i.mj
  %wide.masked.load499 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mw, <8 x i1> %i.mn, <8 x float> poison), !tbaa !47 ; 2 uses
  %i.mx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load499, %i.mv
  %i.my = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load497, splat (float f0x3E2AAAAB)
  %i.mz = fmul reassoc nsz arcp contract afn <8 x float> %i.my, %i.mx
  %i.na = fsub reassoc nsz arcp contract afn <8 x float> %i.mt, %i.mz
  %i.nb = fmul reassoc nsz arcp contract afn <8 x float> %i.na, %i.mo
  %i.nc = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load495, %i.nb
  %i.nd = fmul reassoc nsz arcp contract afn <8 x float> %i.mo, %i.mo ; 2 uses
  %i.ne = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, splat (float 5.000000e-01)
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %i.ne, %wide.masked.load498
  %i.ng = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load499, %wide.masked.load498
  %i.nh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load497, splat (float 6.000000e+00)
  %i.ni = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, %i.mo
  %i.nj = fmul reassoc nsz arcp contract afn <8 x float> %i.ni, %i.ng
  %i.nk = fdiv reassoc nsz arcp contract afn <8 x float> %i.nj, %i.nh
  %i.nl = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, %i.nk
  %i.nm = fadd reassoc nsz arcp contract afn <8 x float> %i.nl, %i.nc
  %i.nn = bitcast <8 x i1> %i.mn to i8
  %.not505 = icmp eq i8 %i.nn, 0                  ; 2 uses
  %i.no = select i1 %.not505, <8 x i1> %i.mg, <8 x i1> %i.mn ; 2 uses
  %i.np = select i1 %.not505, <8 x float> %vec.phi493, <8 x float> %i.nm ; 2 uses
  %index.next500 = add nuw i64 %index492, 8       ; 2 uses
  %i.nq = icmp eq i64 %index.next500, %n.vec488
  br i1 %i.nq, label %middle.block501, label %vector.body491, !llvm.loop !37

middle.block501:                                  ; preds = %vector.body491
  %i.nr = tail call float @llvm.experimental.vector.extract.last.active.v8f32(<8 x float> %i.np, <8 x i1> %i.no, float 0.000000e+00) ; 2 uses
  br i1 %cmp.n502, label %._crit_edge218.us, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %.lr.ph217.us, %middle.block501
  %indvars.iv257.ph = phi i64 [ 0, %.lr.ph217.us ], [ %n.vec488, %middle.block501 ]
  %.0215.us.ph = phi float [ 0.000000e+00, %.lr.ph217.us ], [ %i.nr, %middle.block501 ]
  br label %scalar.ph485

scalar.ph485:                                     ; preds = %scalar.ph485.preheader, %._crit_edge273
  %indvars.iv257 = phi i64 [ %.pre274, %._crit_edge273 ], [ %indvars.iv257.ph, %scalar.ph485.preheader ] ; 5 uses
  %.0215.us = phi float [ %.1.us, %._crit_edge273 ], [ %.0215.us.ph, %scalar.ph485.preheader ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv257
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !47 ; 2 uses
  %i.nu = fcmp reassoc nsz arcp contract afn ugt float %i.nt, %i.mf
  %.pre274 = add nuw nsw i64 %indvars.iv257, 1    ; 5 uses
  br i1 %i.nu, label %._crit_edge273, label %bb.d

bb.d:                                             ; preds = %scalar.ph485
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.pre274
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !47
  %i.nx = fcmp reassoc nsz arcp contract afn ugt float %i.mf, %i.nw
  br i1 %i.nx, label %._crit_edge273, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ny = fsub reassoc nsz arcp contract afn float %i.mf, %i.nt ; 4 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv257
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !47 ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.pre274
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !47
  %i.od = fsub reassoc nsz arcp contract afn float %i.oc, %i.oa
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv257
  %i.of = load float, ptr %i.oe, align 4, !tbaa !47 ; 3 uses
  %i.og = fdiv reassoc nsz arcp contract afn float %i.od, %i.of
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv257
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !47 ; 3 uses
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oi, 2.000000e+00
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre274
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !47 ; 2 uses
  %reass.add.us = fadd reassoc nsz arcp contract afn float %i.ol, %i.oj
  %reass.mul.us = fmul reassoc nsz arcp contract afn float %i.of, f0x3E2AAAAB
  %i.om = fmul reassoc nsz arcp contract afn float %reass.mul.us, %reass.add.us
  %i.on = fsub reassoc nsz arcp contract afn float %i.og, %i.om
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %i.ny
  %i.op = fadd reassoc nsz arcp contract afn float %i.oa, %i.oo
  %i.oq = fmul reassoc nsz arcp contract afn float %i.ny, %i.ny ; 2 uses
  %i.or = fmul reassoc nsz arcp contract afn float %i.oq, 5.000000e-01
  %i.os = fmul reassoc nsz arcp contract afn float %i.or, %i.oi
  %i.ot = fsub reassoc nsz arcp contract afn float %i.ol, %i.oi
  %i.ou = fmul reassoc nsz arcp contract afn float %i.of, 6.000000e+00
  %i.ov = fmul reassoc nsz arcp contract afn float %i.oq, %i.ny
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ov, %i.ot
  %i.ox = fdiv reassoc nsz arcp contract afn float %i.ow, %i.ou
  %i.oy = fadd reassoc nsz arcp contract afn float %i.os, %i.ox
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %i.op
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %scalar.ph485, %bb.e, %bb.d
  %.1.us = phi nsz float [ %.0215.us, %bb.d ], [ %i.oz, %bb.e ], [ %.0215.us, %scalar.ph485 ] ; 2 uses
  %exitcond261.not = icmp eq i64 %.pre274, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge218.us, label %scalar.ph485, !llvm.loop !38

bb.f:                                             ; preds = %._crit_edge218.us
  %i.pa = fcmp reassoc nsz arcp contract afn ult float %.1.us.lcssa, 1.000000e+00
  br i1 %i.pa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.pb = fmul reassoc nsz arcp contract afn float %.1.us.lcssa, 6.553500e+04
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, 5.000000e-01
  %i.pd = fptoui float %i.pc to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge218.us
  %i.pe = phi i16 [ 0, %._crit_edge218.us ], [ %i.pd, %bb.g ], [ -1, %bb.f ]
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %indvars.iv262
  store i16 %i.pe, ptr %i.pf, align 2, !tbaa !17
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 65536
  br i1 %exitcond265.not, label %.split.us, label %.lr.ph217.us, !llvm.loop !39

._crit_edge218.us:                                ; preds = %._crit_edge273, %middle.block501
  %.1.us.lcssa = phi float [ %i.nr, %middle.block501 ], [ %.1.us, %._crit_edge273 ] ; 3 uses
  %i.pg = fcmp reassoc nsz arcp contract afn olt float %.1.us.lcssa, 0.000000e+00
  br i1 %i.pg, label %bb.h, label %bb.f

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph210 ], [ %indvars.iv250.ph, %.lr.ph210.preheader ] ; 4 uses
  %.0169209 = phi float [ %i.pm, %.lr.ph210 ], [ %.0169209.ph, %.lr.ph210.preheader ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv250
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !47
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv250
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !47
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.pi
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, %.0169209 ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %i.pn = trunc nuw i64 %indvars.iv250 to i32
  %.not184.not = icmp sgt i32 %i.fn, %i.pn
  br i1 %.not184.not, label %.lr.ph210, label %._crit_edge211, !llvm.loop !40

._crit_edge211:                                   ; preds = %.lr.ph210, %middle.block463, %vec.epilog.middle.block481, %.preheader186
  %.0169.lcssa = phi float [ 0.000000e+00, %.preheader186 ], [ %i.lz, %vec.epilog.middle.block481 ], [ %i.lq, %middle.block463 ], [ %i.pm, %.lr.ph210 ]
  %i.po = getelementptr inbounds [4 x i8], ptr %.pre272, i64 %i.hj
  %i.pp = load float, ptr %i.po, align 4, !tbaa !47
  %i.pq = fsub reassoc nsz arcp contract afn float %i.pp, %.0169.lcssa
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.pre272, i64 %indvars.iv248
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !47
  %i.pt = fdiv reassoc nsz arcp contract afn float %i.pq, %i.ps
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv248
  store float %i.pt, ptr %i.pu, align 4, !tbaa !47
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, -1
  %i.pv = icmp sgt i64 %indvars.iv248, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.pv, label %.preheader186, label %.lr.ph217.us.preheader.loopexit, !llvm.loop !41

.split.us:                                        ; preds = %bb.h, %.preheader.split.preheader
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.split.us
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

end_hunk_0
