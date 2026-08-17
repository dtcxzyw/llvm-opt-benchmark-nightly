loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw12cubic_splineEPKiS1_i:bb.a
  %wide.load360 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !21
  %i.bl = sitofp reassoc nsz arcp contract afn <4 x i32> %wide.load360 to <4 x float>
  %i.bm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bl, splat (float f0x37800080)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index358
  store <4 x float> %i.bm, ptr %i.bn, align 4, !tbaa !22
  %index.next361 = add nuw i64 %index358, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next361, %n.vec356
  br i1 %i.bo, label %vec.epilog.middle.block362, label %vec.epilog.vector.body357, !llvm.loop !25

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body357
  %cmp.n363 = icmp eq i64 %n.vec356, %wide.trip.count228
  br i1 %cmp.n363, label %._crit_edge195, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %iter.check351, %vec.epilog.iter.check353, %vec.epilog.middle.block362
  %indvars.iv225.ph = phi i64 [ 0, %iter.check351 ], [ %n.vec341, %vec.epilog.iter.check353 ], [ %n.vec356, %vec.epilog.middle.block362 ]
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.preheader, %.lr.ph194
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %.lr.ph194 ], [ %indvars.iv225.ph, %.lr.ph194.preheader ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv225
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %i.bs = fmul reassoc nnan nsz arcp contract afn float %i.br, f0x37800080
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv225
  store float %i.bs, ptr %i.bt, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv225
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.bv to float
  %i.bx = fmul reassoc nnan nsz arcp contract afn float %i.bw, f0x37800080
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv225
  store float %i.bx, ptr %i.by, align 4, !tbaa !22
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %._crit_edge195, label %.lr.ph194, !llvm.loop !26

._crit_edge195:                                   ; preds = %.lr.ph194, %vec.epilog.middle.block362, %middle.block348
  %i.bz = add nsw i32 %3, -1                      ; 8 uses
  %.not320 = icmp eq i32 %3, 1
  br i1 %.not320, label %.preheader.split.preheader, label %.lr.ph198.preheader

.lr.ph198.preheader:                              ; preds = %._crit_edge195
  %i.ca = zext i32 %i.bz to i64                   ; 6 uses
  %i.cb = icmp ne i32 %i.bz, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = zext nneg i32 %3 to i64
  %i.cd = add nsw i64 %.neg, %i.cc                ; 3 uses
  %min.iters.check380 = icmp ult i64 %i.cd, 24
  br i1 %min.iters.check380, label %.lr.ph198.preheader515, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198.preheader
  %i.ce = mul nuw nsw i64 %wide.trip.count, 12    ; 2 uses
  %i.cf = add nsw i64 %i.ce, -5
  %diff.check366 = icmp ult i64 %i.cf, 31
  %i.cg = shl nuw nsw i64 %wide.trip.count228, 2
  %i.ch = add nuw nsw i64 %i.ce, %i.cg
  %i.ci = icmp samesign ult i64 %i.ch, 36
  %conflict.rdx371 = or i1 %diff.check366, %i.ci
  %i.cj = shl nuw nsw i64 %wide.trip.count, 2
  %i.ck = or disjoint i64 %i.cj, 3
  %diff.check372 = icmp samesign ult i64 %i.ck, 31
  %conflict.rdx373 = or i1 %conflict.rdx371, %diff.check372
  %diff.check374 = icmp slt i32 %3, 4
  %conflict.rdx375 = or i1 %conflict.rdx373, %diff.check374
  %i.cl = add nuw nsw i64 %wide.trip.count228, %wide.trip.count ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = or disjoint i64 %i.cm, 3
  %diff.check376 = icmp samesign ult i64 %i.cn, 31
  %conflict.rdx377 = or i1 %conflict.rdx375, %diff.check376
  %diff.check378 = icmp samesign ult i64 %i.cl, 8
  %conflict.rdx379 = or i1 %conflict.rdx377, %diff.check378
  br i1 %conflict.rdx379, label %.lr.ph198.preheader515, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck
  %n.vec382 = and i64 %i.cd, -8                   ; 3 uses
  %i.co = sub nsw i64 %i.ca, %n.vec382
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next392, %vector.body383 ] ; 2 uses
  %i.cp = sub i64 %i.ca, %index384                ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load385 = load <8 x float>, ptr %i.cr, align 4, !tbaa !22
  %i.cs = add nsw i64 %i.cp, -1                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -28
  %wide.load386 = load <8 x float>, ptr %i.cu, align 4, !tbaa !22
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load385, %wide.load386
  %reverse = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %reverse)
  %i.cx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cw, splat (float 1.000000e-15)
  %i.cy = select nsz <8 x i1> %i.cx, <8 x float> splat (float 1.000000e+00), <8 x float> %reverse ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cp
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -28
  %wide.load387 = load <8 x float>, ptr %i.da, align 4, !tbaa !22
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cs
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -28
  %wide.load388 = load <8 x float>, ptr %i.dc, align 4, !tbaa !22
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %wide.load387, %wide.load388
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -28
  %i.dg = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse390 = fdiv reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dg
  store <8 x float> %reverse390, ptr %i.df, align 4, !tbaa !22
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cs
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -28
  %reverse391 = shufflevector <8 x float> %i.cy, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse391, ptr %i.di, align 4, !tbaa !22
  %index.next392 = add nuw i64 %index384, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next392, %n.vec382
  br i1 %i.dj, label %middle.block393, label %vector.body383, !llvm.loop !27

middle.block393:                                  ; preds = %vector.body383
  %cmp.n394 = icmp eq i64 %i.cd, %n.vec382
  br i1 %cmp.n394, label %.preheader190, label %.lr.ph198.preheader515

.lr.ph198.preheader515:                           ; preds = %vector.memcheck, %.lr.ph198.preheader, %middle.block393
  %indvars.iv230.ph = phi i64 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph198.preheader ], [ %i.co, %middle.block393 ]
  br label %.lr.ph198

.preheader190:                                    ; preds = %.lr.ph198, %middle.block393
  %i.dk = icmp samesign ugt i32 %3, 2
  br i1 %i.dk, label %bb.c, label %.lr.ph218.us.preheader

bb.c:                                             ; preds = %.preheader190
  %i.dl = zext nneg i32 %i.bz to i64              ; 4 uses
  %i.dm = load float, ptr %i.ak, align 4, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !22
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dm
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 2.000000e+00
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store float %i.dq, ptr %i.dt, align 4, !tbaa !22
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.pre268 = load float, ptr %.phi.trans.insert267, align 4, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !22
  %i.du = fsub reassoc nsz arcp contract afn float %.pre, %.pre268
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 6.000000e+00
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  store float %i.dv, ptr %i.dw, align 4, !tbaa !22
  %exitcond237.peel.not = icmp eq i32 %i.bz, 2
  br i1 %exitcond237.peel.not, label %.preheader189, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %xtraiter = and i64 %i.ca, 1
  %i.dx = icmp eq i32 %i.bz, 3
  br i1 %i.dx, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %i.dy = and i64 %i.ca, 4294967294
  %i.dz = add nsw i64 %i.dy, -4
  br label %.peel.next

.lr.ph198:                                        ; preds = %.lr.ph198.preheader515, %.lr.ph198
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %.lr.ph198 ], [ %indvars.iv230.ph, %.lr.ph198.preheader515 ] ; 5 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv230
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !22
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, -1 ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next231
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !22
  %i.ee = fsub reassoc nsz arcp contract afn float %i.eb, %i.ed ; 2 uses
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ee)
  %i.eg = fcmp reassoc nsz arcp contract afn olt float %i.ef, 1.000000e-15
  %.0175 = select nsz i1 %i.eg, float 1.000000e+00, float %i.ee ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv230
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !22
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next231
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !22
  %i.el = fsub reassoc nsz arcp contract afn float %i.ei, %i.ek
  %i.em = fdiv reassoc nsz arcp contract afn float %i.el, %.0175
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv230
  store float %i.em, ptr %i.en, align 4, !tbaa !22
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next231
  store float %.0175, ptr %i.eo, align 4, !tbaa !22
  %i.ep = icmp samesign ugt i64 %indvars.iv230, 1
  br i1 %i.ep, label %.lr.ph198, label %.preheader190, !llvm.loop !28

.preheader189.loopexit.unr-lcssa:                 ; preds = %.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader189, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.preheader189.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv233.epil.init = phi i64 [ 2, %.peel.next.preheader ], [ %indvars.iv.next234.1, %.preheader189.loopexit.unr-lcssa ] ; 7 uses
  %lcmp.mod516 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod516)
  %i.eq = add nsw i64 %indvars.iv233.epil.init, -1 ; 3 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.eq ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !22
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv233.epil.init
  %i.eu = load float, ptr %i.et, align 4, !tbaa !22
  %i.ev = fadd reassoc nsz arcp contract afn float %i.eu, %i.es
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 2.000000e+00
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv233.epil.init
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !11 ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv233.epil.init
  store float %i.ew, ptr %i.ez, align 4, !tbaa !22
  %i.fa = load float, ptr %i.er, align 4, !tbaa !22 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.eq
  store float %i.fa, ptr %i.fb, align 4, !tbaa !22
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.eq
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !11
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv233.epil.init
  store float %i.fa, ptr %i.fe, align 4, !tbaa !22
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv233.epil.init
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !22
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv233.epil.init
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !22
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fh, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 6.000000e+00
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.dl
  store float %i.fl, ptr %i.fm, align 4, !tbaa !22
  br label %.preheader189

.preheader189:                                    ; preds = %.peel.next.epil.preheader, %.preheader189.loopexit.unr-lcssa, %bb.c
  %i.fn = phi i32 [ 2, %bb.c ], [ %i.bz, %.preheader189.loopexit.unr-lcssa ], [ %i.bz, %.peel.next.epil.preheader ] ; 2 uses
  %i.fo = add nsw i32 %3, -2                      ; 6 uses
  %i.fp = icmp sgt i32 %3, 3
  br i1 %i.fp, label %.lr.ph204.preheader, label %.preheader187.lr.ph

.lr.ph204.preheader:                              ; preds = %.preheader189
  %wide.trip.count247 = zext nneg i32 %i.fo to i64
  %.phi.trans.insert270 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre271 = load ptr, ptr %.phi.trans.insert270, align 8, !tbaa !11
  %wide.trip.count242 = zext nneg i32 %3 to i64
  %i.fq = shl nuw nsw i64 %wide.trip.count228, 2  ; 2 uses
  %i.fr = add nsw i64 %wide.trip.count228, -1     ; 5 uses
  %min.iters.check401 = icmp eq i32 %3, 4
  %min.iters.check403 = icmp ult i32 %3, 33
  %i.fs = and i64 %i.fr, 28
  %n.vec405 = and i64 %i.fr, -32                  ; 4 uses
  %i.ft = or disjoint i64 %n.vec405, 1
  %cmp.n422 = icmp eq i64 %i.fr, %n.vec405
  %min.epilog.iters.check428 = icmp eq i64 %i.fs, 0
  %n.vec430 = and i64 %i.fr, -4                   ; 3 uses
  %i.fu = or disjoint i64 %n.vec430, 1
  %cmp.n441 = icmp eq i64 %i.fr, %n.vec430
  br label %iter.check425

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %indvars.iv233 = phi i64 [ 2, %.peel.next.preheader.new ], [ %indvars.iv.next234.1, %.peel.next ] ; 10 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %.peel.next ] ; 2 uses
  %i.fv = add nsw i64 %indvars.iv233, -1          ; 3 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !22
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv233
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !22
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fx
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, 2.000000e+00
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv233
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11 ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv233
  store float %i.gb, ptr %i.ge, align 4, !tbaa !22
  %i.gf = load float, ptr %i.fw, align 4, !tbaa !22 ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.fv
  store float %i.gf, ptr %i.gg, align 4, !tbaa !22
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.fv
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !11
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv233
  store float %i.gf, ptr %i.gj, align 4, !tbaa !22
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 1 ; 6 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next234
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !22
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv233
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !22
  %i.go = fsub reassoc nsz arcp contract afn float %i.gl, %i.gn
  %i.gp = fmul reassoc nsz arcp contract afn float %i.go, 6.000000e+00
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.dl
  store float %i.gp, ptr %i.gq, align 4, !tbaa !22
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv233 ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !22
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next234
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !22
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, %i.gs
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 2.000000e+00
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next234
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !11 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next234
  store float %i.gw, ptr %i.gz, align 4, !tbaa !22
  %i.ha = load float, ptr %i.gr, align 4, !tbaa !22 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv233
  store float %i.ha, ptr %i.hb, align 4, !tbaa !22
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next234
  store float %i.ha, ptr %i.hc, align 4, !tbaa !22
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 2 ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next234.1
  %i.he = load float, ptr %i.hd, align 4, !tbaa !22
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next234
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !22
  %i.hh = fsub reassoc nsz arcp contract afn float %i.he, %i.hg
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hh, 6.000000e+00
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.dl
  store float %i.hi, ptr %i.hj, align 4, !tbaa !22
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.dz
  br i1 %niter.ncmp.1, label %.preheader189.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !29

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph426.prol.loopexit, %vec.epilog.scalar.ph426, %vec.epilog.middle.block440, %middle.block421
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %.preheader187.lr.ph, label %iter.check425, !llvm.loop !31

.preheader187.lr.ph:                              ; preds = %..loopexit_crit_edge, %.preheader189
  %i.hk = sext i32 %i.fn to i64
  %i.hl = zext i32 %i.fo to i64
  %i.hm = sext i32 %i.fo to i64
  %invariant.op = sub i32 2, %3
  br label %.preheader187

iter.check425:                                    ; preds = %.lr.ph204.preheader, %..loopexit_crit_edge
  %i.hn = phi ptr [ %.pre271, %.lr.ph204.preheader ], [ %i.hp, %..loopexit_crit_edge ] ; 10 uses
  %indvars.iv244 = phi i64 [ 1, %.lr.ph204.preheader ], [ %indvars.iv.next245, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next245
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !11 ; 11 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv244
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !22 ; 7 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv244
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !22 ; 7 uses
  br i1 %min.iters.check401, label %vec.epilog.scalar.ph426.preheader, label %vector.memcheck396

vector.memcheck396:                               ; preds = %iter.check425
  %scevgep = getelementptr nuw i8, ptr %i.hp, i64 4
  %scevgep397 = getelementptr i8, ptr %i.hp, i64 %i.fq
  %scevgep398 = getelementptr nuw i8, ptr %i.hn, i64 4
  %scevgep399 = getelementptr i8, ptr %i.hn, i64 %i.fq
  %bound0 = icmp ult ptr %scevgep, %scevgep399
  %bound1 = icmp ult ptr %scevgep398, %scevgep397
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph426.preheader, label %vector.main.loop.iter.check402

vector.main.loop.iter.check402:                   ; preds = %vector.memcheck396
  br i1 %min.iters.check403, label %vec.epilog.ph429, label %vector.ph404

vector.ph404:                                     ; preds = %vector.main.loop.iter.check402
  %broadcast.splatinsert406 = insertelement <8 x float> poison, float %i.hr, i64 0
  %broadcast.splat407 = shufflevector <8 x float> %broadcast.splatinsert406, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert408 = insertelement <8 x float> poison, float %i.ht, i64 0
  %broadcast.splat409 = shufflevector <8 x float> %broadcast.splatinsert408, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.hu = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat409
  %i.hv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat409
  %i.hw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat409
  %i.hx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat409
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph404
  %index411 = phi i64 [ 0, %vector.ph404 ], [ %index.next420, %vector.body410 ] ; 2 uses
  %i.hy = or disjoint i64 %index411, 1            ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hy ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 96
  %wide.load412 = load <8 x float>, ptr %i.hz, align 4, !tbaa !22, !alias.scope !32
  %wide.load413 = load <8 x float>, ptr %i.ia, align 4, !tbaa !22, !alias.scope !32
  %wide.load414 = load <8 x float>, ptr %i.ib, align 4, !tbaa !22, !alias.scope !32
  %wide.load415 = load <8 x float>, ptr %i.ic, align 4, !tbaa !22, !alias.scope !32
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, %wide.load412
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, %wide.load413
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, %wide.load414
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat407, %wide.load415
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.hu
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.ie, %i.hv
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %i.if, %i.hw
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.hx
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hy ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 64 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 96 ; 2 uses
  %wide.load416 = load <8 x float>, ptr %i.il, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %wide.load417 = load <8 x float>, ptr %i.im, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %wide.load418 = load <8 x float>, ptr %i.in, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %wide.load419 = load <8 x float>, ptr %i.io, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %i.ip = fsub reassoc nsz arcp contract afn <8 x float> %wide.load416, %i.ih
  %i.iq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load417, %i.ii
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %wide.load418, %i.ij
  %i.is = fsub reassoc nsz arcp contract afn <8 x float> %wide.load419, %i.ik
  store <8 x float> %i.ip, ptr %i.il, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  store <8 x float> %i.iq, ptr %i.im, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  store <8 x float> %i.ir, ptr %i.in, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  store <8 x float> %i.is, ptr %i.io, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %index.next420 = add nuw i64 %index411, 32      ; 2 uses
  %i.it = icmp eq i64 %index.next420, %n.vec405
  br i1 %i.it, label %middle.block421, label %vector.body410, !llvm.loop !37

middle.block421:                                  ; preds = %vector.body410
  br i1 %cmp.n422, label %..loopexit_crit_edge, label %vec.epilog.iter.check427

vec.epilog.iter.check427:                         ; preds = %middle.block421
  br i1 %min.epilog.iters.check428, label %vec.epilog.scalar.ph426.preheader, label %vec.epilog.ph429, !prof !38

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check402, %vec.epilog.iter.check427
  %vec.epilog.resume.val423 = phi i64 [ %n.vec405, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check402 ]
  %broadcast.splatinsert431 = insertelement <4 x float> poison, float %i.hr, i64 0
  %broadcast.splat432 = shufflevector <4 x float> %broadcast.splatinsert431, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert433 = insertelement <4 x float> poison, float %i.ht, i64 0
  %broadcast.splat434 = shufflevector <4 x float> %broadcast.splatinsert433, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iu = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat434
  br label %vec.epilog.vector.body435

vec.epilog.vector.body435:                        ; preds = %vec.epilog.vector.body435, %vec.epilog.ph429
  %index436 = phi i64 [ %vec.epilog.resume.val423, %vec.epilog.ph429 ], [ %index.next439, %vec.epilog.vector.body435 ] ; 2 uses
  %i.iv = or disjoint i64 %index436, 1            ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.iv
  %wide.load437 = load <4 x float>, ptr %i.iw, align 4, !tbaa !22, !alias.scope !32
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat432, %wide.load437
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.ix, %i.iu
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.iv ; 2 uses
  %wide.load438 = load <4 x float>, ptr %i.iz, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %i.ja = fsub reassoc nsz arcp contract afn <4 x float> %wide.load438, %i.iy
  store <4 x float> %i.ja, ptr %i.iz, align 4, !tbaa !22, !alias.scope !35, !noalias !32
  %index.next439 = add nuw i64 %index436, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next439, %n.vec430
  br i1 %i.jb, label %vec.epilog.middle.block440, label %vec.epilog.vector.body435, !llvm.loop !39

vec.epilog.middle.block440:                       ; preds = %vec.epilog.vector.body435
  br i1 %cmp.n441, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph426.preheader

vec.epilog.scalar.ph426.preheader:                ; preds = %vector.memcheck396, %iter.check425, %vec.epilog.iter.check427, %vec.epilog.middle.block440
  %indvars.iv239.ph = phi i64 [ 1, %iter.check425 ], [ 1, %vector.memcheck396 ], [ %i.ft, %vec.epilog.iter.check427 ], [ %i.fu, %vec.epilog.middle.block440 ] ; 4 uses
  %i.jc = sub nsw i64 %wide.trip.count228, %indvars.iv239.ph
  %xtraiter517 = and i64 %i.jc, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %vec.epilog.scalar.ph426.prol.loopexit, label %vec.epilog.scalar.ph426.prol.preheader

vec.epilog.scalar.ph426.prol.preheader:           ; preds = %vec.epilog.scalar.ph426.preheader
  %i.jd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  br label %vec.epilog.scalar.ph426.prol

vec.epilog.scalar.ph426.prol:                     ; preds = %vec.epilog.scalar.ph426.prol, %vec.epilog.scalar.ph426.prol.preheader
  %indvars.iv239.prol = phi i64 [ %indvars.iv.next240.prol, %vec.epilog.scalar.ph426.prol ], [ %indvars.iv239.ph, %vec.epilog.scalar.ph426.prol.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph426.prol ], [ 0, %vec.epilog.scalar.ph426.prol.preheader ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv239.prol
  %i.jf = load float, ptr %i.je, align 4, !tbaa !22
  %i.jg = fmul reassoc nsz arcp contract afn float %i.hr, %i.jf
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, %i.jd
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv239.prol ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !22
  %i.jk = fsub reassoc nsz arcp contract afn float %i.jj, %i.jh
  store float %i.jk, ptr %i.ji, align 4, !tbaa !22
  %indvars.iv.next240.prol = add nuw nsw i64 %indvars.iv239.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter517
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph426.prol.loopexit, label %vec.epilog.scalar.ph426.prol, !llvm.loop !40

vec.epilog.scalar.ph426.prol.loopexit:            ; preds = %vec.epilog.scalar.ph426.prol, %vec.epilog.scalar.ph426.preheader
  %indvars.iv239.unr = phi i64 [ %indvars.iv239.ph, %vec.epilog.scalar.ph426.preheader ], [ %indvars.iv.next240.prol, %vec.epilog.scalar.ph426.prol ]
  %i.jl = sub nsw i64 %indvars.iv239.ph, %wide.trip.count228
  %i.jm = icmp ugt i64 %i.jl, -4
  br i1 %i.jm, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph426.preheader.new

vec.epilog.scalar.ph426.preheader.new:            ; preds = %vec.epilog.scalar.ph426.prol.loopexit
  %i.jn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  %i.jo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  %i.jp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  %i.jq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  br label %vec.epilog.scalar.ph426

vec.epilog.scalar.ph426:                          ; preds = %vec.epilog.scalar.ph426, %vec.epilog.scalar.ph426.preheader.new
end_hunk_0
