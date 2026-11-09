Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/HYPRE_struct_pcg?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@HYPRE_StructDiagScaleSetup:bb.a

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @HYPRE_StructDiagScale(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv332 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next333, %.critedge ] ; 8 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv332 ; 4 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv332 ; 5 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv332 ; 5 uses
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %indvars.iv332 ; 5 uses
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i32 0, ptr %i.m, align 4, !tbaa !7
  store i32 0, ptr %i.n, align 4, !tbaa !7
  %i.af = trunc nuw nsw i64 %indvars.iv332 to i32
  %i.ag = call ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef %1, i32 noundef %i.af, ptr noundef nonnull %i.a) #4 ; 5 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !50  ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv332
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.an ; 4 uses
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !50  ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv332
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.au ; 4 uses
  %i.aw = call i32 @hypre_BoxGetSize(ptr noundef %i.v, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.ax = load i32, ptr %i.v, align 4, !tbaa !7   ; 3 uses
  %i.ay = load i32, ptr %i.y, align 4, !tbaa !7   ; 2 uses
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %i.be = sub i32 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = sub nsw i32 %i.bi, %i.bd                ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 2 uses
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = sub nsw i32 %i.bl, %i.bn
  %i.bp = add nuw nsw i32 %i.bj, 1
  %i.bq = mul nsw i32 %i.bo, %i.bp
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.br = phi i32 [ %i.bq, %bb.c ], [ 0, %bb.b ]
  %i.bs = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bt = sub i32 %i.bs, %i.ay                    ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1                  ; 2 uses
  %i.bv = add nsw i32 %i.be, %i.br
  %i.bw = add i32 %i.bt, 1                        ; 2 uses
  %i.bx = mul nsw i32 %i.bw, %i.bv
  %i.by = select i1 %i.bu, i32 %i.bx, i32 0
  %i.bz = add nsw i32 %i.az, %i.by
  %i.ca = load i32, ptr %i.ab, align 4, !tbaa !7  ; 2 uses
  %i.cb = sub i32 %i.ax, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  %i.ce = sub i32 %i.bb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sub nsw i32 %i.ch, %i.cd                ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, -1                  ; 2 uses
  br i1 %i.cj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ck = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = sub nsw i32 %i.ck, %i.cm
  %i.co = add nuw nsw i32 %i.ci, 1
  %i.cp = mul nsw i32 %i.cn, %i.co
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cq = phi i32 [ %i.cp, %bb.e ], [ 0, %bb.d ]
  %i.cr = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.cs = sub i32 %i.cr, %i.ca                    ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 2 uses
  %i.cu = add nsw i32 %i.ce, %i.cq
  %i.cv = add i32 %i.cs, 1                        ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cu
  %i.cx = select i1 %i.ct, i32 %i.cw, i32 0
  %i.cy = add nsw i32 %i.cb, %i.cx
  %i.cz = load i32, ptr %i.ae, align 4, !tbaa !7  ; 2 uses
  %i.da = sub i32 %i.ax, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = sub i32 %i.bb, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = sub nsw i32 %i.dg, %i.dc                ; 3 uses
  %i.di = icmp sgt i32 %i.dh, -1                  ; 2 uses
  br i1 %i.di, label %bb.g, label %._crit_edge335

._crit_edge335:                                   ; preds = %bb.f
  %.pre = add nuw nsw i32 %i.dh, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dj = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = sub nsw i32 %i.dj, %i.dl
  %i.dn = add nuw nsw i32 %i.dh, 1                ; 2 uses
  %i.do = mul nsw i32 %i.dm, %i.dn
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge335, %bb.g
  %.pre-phi = phi i32 [ %.pre, %._crit_edge335 ], [ %i.dn, %bb.g ]
  %i.dp = phi i32 [ 0, %._crit_edge335 ], [ %i.do, %bb.g ]
  %i.dq = load i32, ptr %i.b, align 4, !tbaa !7   ; 9 uses
  %i.dr = load i32, ptr %i.s, align 4, !tbaa !7   ; 5 uses
  %i.ds = load i32, ptr %i.t, align 4, !tbaa !7   ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.preheader281.lr.ph, label %.critedge

.preheader281.lr.ph:                              ; preds = %bb.h
  %i.du = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dv = sub i32 %i.du, %i.cz                    ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, -1                  ; 2 uses
  %i.dx = add i32 %i.dv, 1                        ; 2 uses
  %i.dy = select i1 %i.dw, i32 %i.dx, i32 0       ; 3 uses
  %i.dz = mul nsw i32 %i.dy, %.pre-phi
  %i.ea = select i1 %i.di, i32 %i.dz, i32 0
  %i.eb = select i1 %i.ct, i32 %i.cv, i32 0       ; 3 uses
  %i.ec = add nuw nsw i32 %i.ci, 1
  %i.ed = mul nsw i32 %i.eb, %i.ec
  %i.ee = select i1 %i.cj, i32 %i.ed, i32 0
  %i.ef = select i1 %i.bu, i32 %i.bw, i32 0       ; 3 uses
  %i.eg = add nuw nsw i32 %i.bj, 1
  %i.eh = mul nsw i32 %i.ef, %i.eg
  %i.ei = select i1 %i.bk, i32 %i.eh, i32 0
  %i.ej = icmp sgt i32 %i.dr, 0
  %i.ek = sub i32 %i.ef, %i.dq
  %i.el = sub i32 %i.eb, %i.dq
  %i.em = sub i32 %i.dy, %i.dq
  %i.en = mul i32 %i.dr, %i.ef
  %i.eo = sub i32 %i.ei, %i.en
  %i.ep = mul i32 %i.dr, %i.eb
  %i.eq = sub i32 %i.ee, %i.ep
  %i.er = mul i32 %i.dy, %i.dr
  %i.es = sub i32 %i.ea, %i.er
  %i.et = icmp sgt i32 %i.dq, 0
  %or.cond346 = and i1 %i.ej, %i.et
  br i1 %or.cond346, label %.preheader281.us.preheader, label %.critedge

.preheader281.us.preheader:                       ; preds = %.preheader281.lr.ph
  %i.eu = add nsw i32 %i.dd, %i.dp
  %i.ev = mul nsw i32 %i.dx, %i.eu
  %i.ew = select i1 %i.dw, i32 %i.ev, i32 0
  %i.ex = add nsw i32 %i.da, %i.ew
  %4 = shl nsw i64 %i.an, 3
  %5 = add i64 %4, %i.aj                          ; 2 uses
  %6 = sub i64 %5, %i.ah
  %i.ey = zext nneg i32 %i.dq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.dq, 2
  %invariant.op = add i64 %5, -1
  %invariant.op366 = add i64 %6, -1
  %n.vec = and i64 %i.ey, 2147483646              ; 6 uses
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ey
  br label %.preheader281.us

.preheader281.us:                                 ; preds = %.preheader281.us.preheader, %._crit_edge293.split.us.us
  %.1240306.us = phi i32 [ %i.gv, %._crit_edge293.split.us.us ], [ 0, %.preheader281.us.preheader ]
  %.0246305.us = phi i32 [ %i.gt, %._crit_edge293.split.us.us ], [ %i.cy, %.preheader281.us.preheader ]
  %.0248304.us = phi i32 [ %i.gu, %._crit_edge293.split.us.us ], [ %i.ex, %.preheader281.us.preheader ]
  %.0251303.us = phi i32 [ %i.gs, %._crit_edge293.split.us.us ], [ %i.bz, %.preheader281.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader281.us
  %.1242292.us.us = phi i32 [ 0, %.preheader281.us ], [ %i.gr, %._crit_edge.us.us ]
  %.1247291.us.us = phi i32 [ %.0246305.us, %.preheader281.us ], [ %i.gp, %._crit_edge.us.us ]
  %.1249290.us.us = phi i32 [ %.0248304.us, %.preheader281.us ], [ %i.gq, %._crit_edge.us.us ]
  %.1252289.us.us = phi i32 [ %.0251303.us, %.preheader281.us ], [ %i.go, %._crit_edge.us.us ]
  %i.fa = sext i32 %.1247291.us.us to i64         ; 6 uses
  %i.fb = sext i32 %.1249290.us.us to i64         ; 5 uses
  %i.fc = sext i32 %.1252289.us.us to i64         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %7 = shl nsw i64 %i.fa, 3
  %8 = add nsw i64 %i.au, %i.fb
  %9 = shl nsw i64 %8, 3
  %i.fd = add i64 %9, %i.aq
  %10 = sub i64 %7, %i.fd
  %i.fe = add i64 %10, %invariant.op
  %diff.check = icmp ult i64 %i.fe, 15
  %11 = sub nsw i64 %i.fa, %i.fc
  %i.ff = shl nsw i64 %11, 3
  %i.fg = add i64 %i.ff, %invariant.op366
  %diff.check350 = icmp ult i64 %i.fg, 15
  %conflict.rdx = or i1 %diff.check, %diff.check350
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fh = add nsw i64 %n.vec, %i.fc               ; 2 uses
  %i.fi = add nsw i64 %n.vec, %i.fb               ; 2 uses
  %i.fj = add nsw i64 %n.vec, %i.fa               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.av, i64 %i.fb
  %invariant.gep362 = getelementptr [8 x i8], ptr %i.ag, i64 %i.fc
  %invariant.gep364 = getelementptr [8 x i8], ptr %i.ao, i64 %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !53
  %gep363 = getelementptr [8 x i8], ptr %invariant.gep362, i64 %index
  %wide.load351 = load <2 x double>, ptr %gep363, align 8, !tbaa !53
  %i.fk = fdiv <2 x double> %wide.load, %wide.load351
  %gep365 = getelementptr [8 x i8], ptr %invariant.gep364, i64 %index
  store <2 x double> %i.fk, ptr %gep365, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv323.ph = phi i64 [ %i.fc, %vector.memcheck ], [ %i.fc, %.preheader.us.us ], [ %i.fh, %middle.block ] ; 3 uses
  %indvars.iv321.ph = phi i64 [ %i.fb, %vector.memcheck ], [ %i.fb, %.preheader.us.us ], [ %i.fi, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.fa, %vector.memcheck ], [ %i.fa, %.preheader.us.us ], [ %i.fj, %middle.block ] ; 3 uses
  %.1244286.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.ez, %middle.block ] ; 4 uses
  %i.fm = sub i32 %i.dq, %.1244286.us.us.ph
  %.neg = add i32 %.1244286.us.us.ph, 1
  %xtraiter = and i32 %i.fm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv321.ph
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !53
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv323.ph
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !53
  %i.fr = fdiv double %i.fo, %i.fq
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv.ph
  store double %i.fr, ptr %i.fs, align 8, !tbaa !53
  %indvars.iv.next324.prol = add nsw i64 %indvars.iv323.ph, 1 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next322.prol = add nsw i64 %indvars.iv321.ph, 1 ; 2 uses
  %i.ft = add nuw nsw i32 %.1244286.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next324.lcssa357.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next324.prol, %scalar.ph.prol ]
  %indvars.iv.next.lcssa356.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv.next322.lcssa355.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next322.prol, %scalar.ph.prol ]
  %indvars.iv323.unr = phi i64 [ %indvars.iv323.ph, %scalar.ph.preheader ], [ %indvars.iv.next324.prol, %scalar.ph.prol ]
  %indvars.iv321.unr = phi i64 [ %indvars.iv321.ph, %scalar.ph.preheader ], [ %indvars.iv.next322.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1244286.us.us.unr = phi i32 [ %.1244286.us.us.ph, %scalar.ph.preheader ], [ %i.ft, %scalar.ph.prol ]
  %i.fu = icmp eq i32 %i.dq, %.neg
  br i1 %i.fu, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv323 = phi i64 [ %indvars.iv.next324.1, %scalar.ph ], [ %indvars.iv323.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.1, %scalar.ph ], [ %indvars.iv321.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.1244286.us.us = phi i32 [ %i.gk, %scalar.ph ], [ %.1244286.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv321
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !53
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv323
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !53
  %i.fz = fdiv double %i.fw, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %indvars.iv
  store double %i.fz, ptr %i.ga, align 8, !tbaa !53
  %i.gb = getelementptr [8 x i8], ptr %i.av, i64 %indvars.iv321
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !53
  %i.ge = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv323
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !53
  %i.gh = fdiv double %i.gd, %i.gg
  %i.gi = getelementptr [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  store double %i.gh, ptr %i.gj, align 8, !tbaa !53
  %indvars.iv.next324.1 = add nsw i64 %indvars.iv323, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next322.1 = add nsw i64 %indvars.iv321, 2 ; 2 uses
  %i.gk = add nuw nsw i32 %.1244286.us.us, 2      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.gk, %i.dq
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !25

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next324.lcssa = phi i64 [ %i.fh, %middle.block ], [ %indvars.iv.next324.lcssa357.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next324.1, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.fj, %middle.block ], [ %indvars.iv.next.lcssa356.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next322.lcssa = phi i64 [ %i.fi, %middle.block ], [ %indvars.iv.next322.lcssa355.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next322.1, %scalar.ph ]
  %i.gl = trunc nsw i64 %indvars.iv.next324.lcssa to i32
  %i.gm = trunc nsw i64 %indvars.iv.next322.lcssa to i32
  %i.gn = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.go = add nsw i32 %i.ek, %i.gl                ; 2 uses
  %i.gp = add nsw i32 %i.el, %i.gn                ; 2 uses
  %i.gq = add nsw i32 %i.em, %i.gm                ; 2 uses
  %i.gr = add nuw nsw i32 %.1242292.us.us, 1      ; 2 uses
  %exitcond330.not = icmp eq i32 %i.gr, %i.dr
  br i1 %exitcond330.not, label %._crit_edge293.split.us.us, label %.preheader.us.us, !llvm.loop !26

._crit_edge293.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.gs = add nsw i32 %i.eo, %i.go
  %i.gt = add nsw i32 %i.eq, %i.gp
  %i.gu = add nsw i32 %i.es, %i.gq
  %i.gv = add nuw nsw i32 %.1240306.us, 1         ; 2 uses
  %exitcond331.not = icmp eq i32 %i.gv, %i.ds
  br i1 %exitcond331.not, label %.critedge, label %.preheader281.us, !llvm.loop !27

.critedge:                                        ; preds = %._crit_edge293.split.us.us, %.preheader281.lr.ph, %bb.h
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.gw = load i32, ptr %i.g, align 8, !tbaa !45
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next333, %i.gx
  br i1 %i.gy, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{i64 4727312533930373239}
!10 = !{!"p1 _ZTS25hypre_StructSolver_struct", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i64 9052232824303191113}
!13 = !{i64 3899574687740094775}
!14 = !{i64 9057246849885209317}
!15 = !{i64 -1021371731735914081}
!16 = !{i64 9217731948564114512}
!17 = !{i64 6376398696761827884}
!18 = !{i64 -4157575718101941124}
!19 = !{i64 1908300821813716186}
!20 = !{i64 -8850542880851894135}
!21 = !{i64 -511557375724080658}
!22 = !{i64 1980146391747965419}
!23 = !{i64 -900862237367988813}
!24 = distinct !{!24, !54, !55, !56}
!25 = distinct !{!25, !54, !55}
!26 = distinct !{!26, !54}
!27 = distinct !{!27, !54}
!28 = distinct !{!28, !54}
!29 = !{i64 4782930432612920797}
!30 = !{!"p1 _ZTS23hypre_StructGrid_struct", !8, i64 0}
!31 = !{!"p1 _ZTS26hypre_StructStencil_struct", !8, i64 0}
!32 = !{!"p1 _ZTS21hypre_BoxArray_struct", !8, i64 0}
!33 = !{!"p1 double", !8, i64 0}
!34 = !{!"any p2 pointer", !8, i64 0}
!35 = !{!"p2 int", !34, i64 0}
!36 = !{!"p1 int", !8, i64 0}
!37 = !{!"p1 _ZTS20hypre_CommPkg_struct", !8, i64 0}
!38 = !{!"hypre_StructMatrix_struct", !6, i64 0, !30, i64 8, !31, i64 16, !31, i64 24, !6, i64 32, !32, i64 40, !33, i64 48, !6, i64 56, !6, i64 60, !35, i64 64, !6, i64 72, !36, i64 80, !5, i64 88, !6, i64 112, !37, i64 120, !6, i64 128}
!39 = !{!38, !30, i64 8}
!40 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !8, i64 0}
!41 = !{!"p1 _ZTS16hypre_Box_struct", !8, i64 0}
!42 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !32, i64 8, !36, i64 16, !40, i64 24, !6, i64 32, !41, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!43 = !{!42, !32, i64 8}
!44 = !{!"hypre_BoxArray_struct", !41, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!44, !6, i64 8}
!46 = !{!44, !41, i64 0}
!47 = !{!38, !32, i64 40}
!48 = !{!"hypre_StructVector_struct", !6, i64 0, !30, i64 8, !32, i64 16, !33, i64 24, !6, i64 32, !6, i64 36, !36, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!49 = !{!48, !32, i64 16}
!50 = !{!48, !33, i64 24}
!51 = !{!48, !36, i64 40}
!52 = !{!"double", !5, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
