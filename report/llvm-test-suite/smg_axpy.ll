Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smg_axpy?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGAxpy(double noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call ptr @hypre_BoxCreate() #4      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %broadcast.splatinsert = insertelement <2 x double> poison, double %0, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv276 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next277, %.critedge ] ; 6 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv276 ; 6 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  store i32 %i.ae, ptr %i.k, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  store i32 %i.ai, ptr %i.m, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  store i32 %i.ak, ptr %i.n, align 4, !tbaa !7
  %i.al = call i32 @hypre_ProjectBox(ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %4) #4 ; 0 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %indvars.iv276 ; 5 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv276 ; 5 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !32  ; 3 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv276
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.aw ; 4 uses
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !32  ; 3 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv276
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bc ; 4 uses
  %i.be = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.bg = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.j, align 4, !tbaa !7   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  %i.bl = sub i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = sub nsw i32 %i.bo, %i.bk                ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, -1                  ; 2 uses
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i32, ptr %i.k, align 4, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = add nuw nsw i32 %i.bp, 1
  %i.bw = mul nsw i32 %i.bu, %i.bv
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bx = phi i32 [ %i.bw, %bb.c ], [ 0, %bb.b ]
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bz = sub nsw i32 %i.by, %i.bg                ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1                  ; 2 uses
  %i.cb = add nsw i32 %i.bl, %i.bx
  %i.cc = add nuw nsw i32 %i.bz, 1                ; 3 uses
  %i.cd = mul nsw i32 %i.cc, %i.cb
  %i.ce = select i1 %i.ca, i32 %i.cd, i32 0
  %i.cf = add nsw i32 %i.bh, %i.ce
  %i.cg = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.ch = sub i32 %i.bf, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7  ; 2 uses
  %i.ck = sub i32 %i.bi, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = sub nsw i32 %i.cn, %i.cj                ; 3 uses
  %i.cp = icmp sgt i32 %i.co, -1                  ; 2 uses
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = load i32, ptr %i.k, align 4, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = sub nsw i32 %i.cq, %i.cs
  %i.cu = add nuw nsw i32 %i.co, 1
  %i.cv = mul nsw i32 %i.ct, %i.cu
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cw = phi i32 [ %i.cv, %bb.e ], [ 0, %bb.d ]
  %i.cx = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cy = sub nsw i32 %i.cx, %i.cg                ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, -1                  ; 2 uses
  %i.da = add nsw i32 %i.ck, %i.cw
  %i.db = add nuw nsw i32 %i.cy, 1                ; 3 uses
  %i.dc = mul nsw i32 %i.db, %i.da
  %i.dd = select i1 %i.cz, i32 %i.dc, i32 0
  %i.de = add nsw i32 %i.ch, %i.dd
  %i.df = load i32, ptr %4, align 4, !tbaa !7     ; 3 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dg = load i32, ptr %i.u, align 4, !tbaa !7
  %i.dh = mul nsw i32 %i.dg, %i.cc
  %i.di = load i32, ptr %i.v, align 4, !tbaa !7
  %i.dj = mul nsw i32 %i.di, %i.cc
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dk = phi i32 [ %i.dh, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.dl = phi i32 [ %i.dj, %bb.g ], [ 0, %bb.f ]
  %i.dm = add nuw nsw i32 %i.bp, 1
  %i.dn = mul nsw i32 %i.dl, %i.dm
  %i.do = select i1 %i.bq, i32 %i.dn, i32 0
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !7
  %i.dq = mul nsw i32 %i.dp, %i.db
  %i.dr = load i32, ptr %i.v, align 4, !tbaa !7
  %i.ds = mul nsw i32 %i.dr, %i.db
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dt = phi i32 [ %i.dq, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.du = phi i32 [ %i.ds, %bb.i ], [ 0, %bb.h ]
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !7   ; 8 uses
  %i.dw = load i32, ptr %i.w, align 4, !tbaa !7   ; 4 uses
  %i.dx = load i32, ptr %i.x, align 4, !tbaa !7   ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader241.lr.ph, label %.critedge

.preheader241.lr.ph:                              ; preds = %bb.j
  %i.dz = add nuw nsw i32 %i.co, 1
  %i.ea = mul nsw i32 %i.du, %i.dz
  %i.eb = select i1 %i.cp, i32 %i.ea, i32 0
  %i.ec = mul i32 %i.df, %i.dv                    ; 2 uses
  %i.ed = icmp sgt i32 %i.dw, 0
  %i.ee = sub i32 %i.dk, %i.ec
  %i.ef = sub i32 %i.dt, %i.ec
  %i.eg = mul i32 %i.dw, %i.dk
  %i.eh = sub i32 %i.do, %i.eg
  %i.ei = mul i32 %i.dw, %i.dt
  %i.ej = sub i32 %i.eb, %i.ei
  %i.ek = icmp sgt i32 %i.dv, 0
  %or.cond286 = and i1 %i.ed, %i.ek
  br i1 %or.cond286, label %.preheader241.us.preheader, label %.critedge

.preheader241.us.preheader:                       ; preds = %.preheader241.lr.ph
  %i.el = sext i32 %i.df to i64                   ; 6 uses
  %5 = shl nsw i64 %i.aw, 3                       ; 2 uses
  %i.em = add nsw i32 %i.dv, -1
  %i.en = zext i32 %i.em to i64
  %6 = shl nuw nsw i64 %i.en, 3                   ; 2 uses
  %i.eo = shl nsw i64 %i.bc, 3                    ; 2 uses
  %i.ep = zext nneg i32 %i.dv to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.dv, 3
  %ident.check.not = icmp eq i32 %i.df, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.gep308 = getelementptr i8, ptr %i.ay, i64 %i.eo
  %7 = getelementptr i8, ptr %i.ay, i64 %i.eo
  %8 = getelementptr i8, ptr %7, i64 8
  %9 = getelementptr i8, ptr %8, i64 %6
  %invariant.gep310 = getelementptr i8, ptr %i.as, i64 %5
  %10 = getelementptr i8, ptr %i.as, i64 %5
  %invariant.gep308.a = getelementptr i8, ptr %10, i64 8
  %invariant.gep310.a = getelementptr i8, ptr %invariant.gep308.a, i64 %6
  %n.vec = and i64 %i.ep, 2147483644              ; 5 uses
  %i.eq = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ep
  br label %.preheader241.us

.preheader241.us:                                 ; preds = %.preheader241.us.preheader, %._crit_edge250.split.us.us
  %.1210259.us = phi i32 [ %i.ge, %._crit_edge250.split.us.us ], [ 0, %.preheader241.us.preheader ]
  %.0216258.us = phi i32 [ %i.gd, %._crit_edge250.split.us.us ], [ %i.de, %.preheader241.us.preheader ]
  %.0218257.us = phi i32 [ %i.gc, %._crit_edge250.split.us.us ], [ %i.cf, %.preheader241.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader241.us
  %.1212249.us.us = phi i32 [ 0, %.preheader241.us ], [ %i.gb, %._crit_edge.us.us ]
  %.1217248.us.us = phi i32 [ %.0216258.us, %.preheader241.us ], [ %i.ga, %._crit_edge.us.us ]
  %.1219247.us.us = phi i32 [ %.0218257.us, %.preheader241.us ], [ %i.fz, %._crit_edge.us.us ]
  %i.er = sext i32 %.1217248.us.us to i64         ; 5 uses
  %i.es = sext i32 %.1219247.us.us to i64         ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us
  %i.et = shl nsw i64 %i.er, 3                    ; 2 uses
  %gep309 = getelementptr i8, ptr %invariant.gep308, i64 %i.et
  %i.eu = getelementptr i8, ptr %9, i64 %i.et
  %i.ev = shl nsw i64 %i.es, 3                    ; 2 uses
  %gep311 = getelementptr i8, ptr %invariant.gep310, i64 %i.ev
  %i.ew = getelementptr i8, ptr %invariant.gep310.a, i64 %i.ev
  %bound0 = icmp ult ptr %gep309, %i.ew
  %bound1 = icmp ult ptr %gep311, %i.eu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ex = add nsw i64 %n.vec, %i.es               ; 2 uses
  %i.ey = add nsw i64 %n.vec, %i.er               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ax, i64 %i.es
  %invariant.gep306 = getelementptr [8 x i8], ptr %i.bd, i64 %i.er
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !35, !alias.scope !36
  %wide.load297 = load <2 x double>, ptr %i.ez, align 8, !tbaa !35, !alias.scope !36
  %gep307 = getelementptr [8 x i8], ptr %invariant.gep306, i64 %index ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep307, i64 16 ; 2 uses
  %wide.load298 = load <2 x double>, ptr %gep307, align 8, !tbaa !35, !alias.scope !37, !noalias !36
  %wide.load299 = load <2 x double>, ptr %i.fa, align 8, !tbaa !35, !alias.scope !37, !noalias !36
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load298)
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load297, <2 x double> %wide.load299)
  store <2 x double> %i.fb, ptr %gep307, align 8, !tbaa !35, !alias.scope !37, !noalias !36
  store <2 x double> %i.fc, ptr %i.fa, align 8, !tbaa !35, !alias.scope !37, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv269.ph = phi i64 [ %i.es, %vector.memcheck ], [ %i.es, %.preheader.us.us ], [ %i.ex, %middle.block ] ; 3 uses
  %indvars.iv.ph = phi i64 [ %i.er, %vector.memcheck ], [ %i.er, %.preheader.us.us ], [ %i.ey, %middle.block ] ; 3 uses
  %.1214245.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.eq, %middle.block ] ; 4 uses
  %i.fe = sub i32 %i.dv, %.1214245.us.us.ph
  %.neg = add i32 %.1214245.us.us.ph, 1
  %xtraiter = and i32 %i.fe, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv269.ph
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.ph ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !35
  %i.fj = call double @llvm.fmuladd.f64(double %0, double %i.fg, double %i.fi)
  store double %i.fj, ptr %i.fh, align 8, !tbaa !35
  %indvars.iv.next270.prol = add nsw i64 %indvars.iv269.ph, %i.el ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, %i.el ; 2 uses
  %i.fk = add nuw nsw i32 %.1214245.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next270.lcssa303.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next270.prol, %scalar.ph.prol ]
  %indvars.iv.next.lcssa302.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv269.unr = phi i64 [ %indvars.iv269.ph, %scalar.ph.preheader ], [ %indvars.iv.next270.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1214245.us.us.unr = phi i32 [ %.1214245.us.us.ph, %scalar.ph.preheader ], [ %i.fk, %scalar.ph.prol ]
  %i.fl = icmp eq i32 %i.dv, %.neg
  br i1 %i.fl, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv269 = phi i64 [ %indvars.iv.next270.1, %scalar.ph ], [ %indvars.iv269.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1214245.us.us = phi i32 [ %i.fw, %scalar.ph ], [ %.1214245.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv269
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !35
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !35
  %i.fq = call double @llvm.fmuladd.f64(double %0, double %i.fn, double %i.fp)
  store double %i.fq, ptr %i.fo, align 8, !tbaa !35
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, %i.el ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.el ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %indvars.iv.next270
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !35
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !35
  %i.fv = call double @llvm.fmuladd.f64(double %0, double %i.fs, double %i.fu)
  store double %i.fv, ptr %i.ft, align 8, !tbaa !35
  %indvars.iv.next270.1 = add nsw i64 %indvars.iv.next270, %i.el ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.el ; 2 uses
  %i.fw = add nuw nsw i32 %.1214245.us.us, 2      ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.fw, %i.dv
  br i1 %exitcond.not.1, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !12

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next270.lcssa = phi i64 [ %i.ex, %middle.block ], [ %indvars.iv.next270.lcssa303.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next270.1, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ey, %middle.block ], [ %indvars.iv.next.lcssa302.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %i.fx = trunc nsw i64 %indvars.iv.next270.lcssa to i32
  %i.fy = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.fz = add nsw i32 %i.ee, %i.fx                ; 2 uses
  %i.ga = add nsw i32 %i.ef, %i.fy                ; 2 uses
  %i.gb = add nuw nsw i32 %.1212249.us.us, 1      ; 2 uses
  %exitcond274.not = icmp eq i32 %i.gb, %i.dw
  br i1 %exitcond274.not, label %._crit_edge250.split.us.us, label %.preheader.us.us, !llvm.loop !13

._crit_edge250.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.gc = add nsw i32 %i.eh, %i.fz
  %i.gd = add nsw i32 %i.ej, %i.ga
  %i.ge = add nuw nsw i32 %.1210259.us, 1         ; 2 uses
  %exitcond275.not = icmp eq i32 %i.ge, %i.dx
  br i1 %exitcond275.not, label %.critedge, label %.preheader241.us, !llvm.loop !14

.critedge:                                        ; preds = %._crit_edge250.split.us.us, %.preheader241.lr.ph, %bb.j
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.gf = load i32, ptr %i.g, align 8, !tbaa !29
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next277, %i.gg
  br i1 %i.gh, label %bb.b, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %i.gi = call i32 @hypre_BoxDestroy(ptr noundef %i.b) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_ProjectBox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !38, !39, !40}
!12 = distinct !{!12, !38, !39}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = !{i64 -63328915795383317}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS23hypre_StructGrid_struct", !17, i64 0}
!19 = !{!"p1 _ZTS21hypre_BoxArray_struct", !17, i64 0}
!20 = !{!"p1 double", !17, i64 0}
!21 = !{!"p1 int", !17, i64 0}
!22 = !{!"hypre_StructVector_struct", !6, i64 0, !18, i64 8, !19, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !21, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!23 = !{!22, !18, i64 8}
!24 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !17, i64 0}
!25 = !{!"p1 _ZTS16hypre_Box_struct", !17, i64 0}
!26 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !19, i64 8, !21, i64 16, !24, i64 24, !6, i64 32, !25, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!27 = !{!26, !19, i64 8}
!28 = !{!"hypre_BoxArray_struct", !25, i64 0, !6, i64 8, !6, i64 12}
!29 = !{!28, !6, i64 8}
!30 = !{!28, !25, i64 0}
!31 = !{!22, !19, i64 16}
!32 = !{!22, !20, i64 24}
!33 = !{!22, !21, i64 40}
!34 = !{!"double", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!9}
!37 = !{!10}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
