Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_copy?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 !guid !14 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv253 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next254, %.critedge ] ; 6 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv253 ; 4 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv253 ; 5 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv253 ; 5 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv253
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 6 uses
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !30  ; 2 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv253
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 6 uses
  %i.am = call i32 @hypre_BoxGetSize(ptr noundef %i.r, ptr noundef nonnull %i.a) #3 ; 0 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !7   ; 2 uses
  %i.ao = load i32, ptr %i.u, align 4, !tbaa !7   ; 2 uses
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7  ; 2 uses
  %i.au = sub i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = sub nsw i32 %i.ay, %i.at                ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = sub nsw i32 %i.bb, %i.bd
  %i.bf = add nuw nsw i32 %i.az, 1
  %i.bg = mul nsw i32 %i.be, %i.bf
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bh = phi i32 [ %i.bg, %bb.c ], [ 0, %bb.b ]
  %i.bi = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.bj = sub i32 %i.bi, %i.ao                    ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, -1                  ; 2 uses
  %i.bl = add nsw i32 %i.au, %i.bh
  %i.bm = add i32 %i.bj, 1                        ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bl
  %i.bo = select i1 %i.bk, i32 %i.bn, i32 0
  %i.bp = add nsw i32 %i.ap, %i.bo
  %i.bq = load i32, ptr %i.x, align 4, !tbaa !7   ; 2 uses
  %i.br = sub i32 %i.an, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7  ; 2 uses
  %i.bu = sub i32 %i.ar, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = sub nsw i32 %i.bx, %i.bt                ; 3 uses
  %i.bz = icmp sgt i32 %i.by, -1                  ; 2 uses
  br i1 %i.bz, label %bb.e, label %._crit_edge256

._crit_edge256:                                   ; preds = %bb.d
  %.pre = add nuw nsw i32 %i.by, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = load i32, ptr %i.av, align 4, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.cf = mul nsw i32 %i.cd, %i.ce
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge256, %bb.e
  %.pre-phi = phi i32 [ %.pre, %._crit_edge256 ], [ %i.ce, %bb.e ]
  %i.cg = phi i32 [ 0, %._crit_edge256 ], [ %i.cf, %bb.e ]
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !7   ; 8 uses
  %i.ci = load i32, ptr %i.o, align 4, !tbaa !7   ; 4 uses
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !7   ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.preheader215.lr.ph, label %.critedge

.preheader215.lr.ph:                              ; preds = %bb.f
  %i.cl = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.cm = sub i32 %i.cl, %i.bq                    ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1                  ; 2 uses
  %i.co = add i32 %i.cm, 1                        ; 2 uses
  %i.cp = select i1 %i.cn, i32 %i.co, i32 0       ; 3 uses
  %i.cq = mul nsw i32 %i.cp, %.pre-phi
  %i.cr = select i1 %i.bz, i32 %i.cq, i32 0
  %i.cs = select i1 %i.bk, i32 %i.bm, i32 0       ; 3 uses
  %i.ct = add nuw nsw i32 %i.az, 1
  %i.cu = mul nsw i32 %i.cs, %i.ct
  %i.cv = select i1 %i.ba, i32 %i.cu, i32 0
  %i.cw = icmp sgt i32 %i.ci, 0
  %i.cx = sub i32 %i.cs, %i.ch
  %i.cy = sub i32 %i.cp, %i.ch
  %i.cz = mul i32 %i.ci, %i.cs
  %i.da = sub i32 %i.cv, %i.cz
  %i.db = mul i32 %i.cp, %i.ci
  %i.dc = sub i32 %i.cr, %i.db
  %i.dd = icmp sgt i32 %i.ch, 0
  %or.cond265 = and i1 %i.cw, %i.dd
  br i1 %or.cond265, label %.preheader215.us.preheader, label %.critedge

.preheader215.us.preheader:                       ; preds = %.preheader215.lr.ph
  %i.de = add nsw i32 %i.bu, %i.cg
  %i.df = mul nsw i32 %i.co, %i.de
  %i.dg = select i1 %i.cn, i32 %i.df, i32 0
  %i.dh = add nsw i32 %i.br, %i.dg
  %i.di = zext nneg i32 %i.ch to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 6
  %n.vec = and i64 %i.di, 2147483644              ; 5 uses
  %i.dj = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.di
  br label %.preheader215.us

.preheader215.us:                                 ; preds = %.preheader215.us.preheader, %._crit_edge224.split.us.us
  %.1185232.us = phi i32 [ %i.fd, %._crit_edge224.split.us.us ], [ 0, %.preheader215.us.preheader ]
  %.0191231.us = phi i32 [ %i.fc, %._crit_edge224.split.us.us ], [ %i.dh, %.preheader215.us.preheader ]
  %.0193230.us = phi i32 [ %i.fb, %._crit_edge224.split.us.us ], [ %i.bp, %.preheader215.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader215.us
  %.1187223.us.us = phi i32 [ 0, %.preheader215.us ], [ %i.fa, %._crit_edge.us.us ]
  %.1192222.us.us = phi i32 [ %.0191231.us, %.preheader215.us ], [ %i.ez, %._crit_edge.us.us ]
  %.1194221.us.us = phi i32 [ %.0193230.us, %.preheader215.us ], [ %i.ey, %._crit_edge.us.us ]
  %i.dk = sext i32 %.1192222.us.us to i64         ; 5 uses
  %i.dl = sext i32 %.1194221.us.us to i64         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %2 = add nsw i64 %i.dl, %i.ad
  %i.dm = shl nsw i64 %2, 3
  %3 = add i64 %i.dm, %i.z
  %i.dn = add nsw i64 %i.dk, %i.ak
  %i.do = shl nsw i64 %i.dn, 3
  %i.dp = add i64 %i.do, %i.ag
  %i.dq = sub i64 %3, %i.dp
  %diff.check = icmp ugt i64 %i.dq, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dr = add nsw i64 %n.vec, %i.dl               ; 2 uses
  %i.ds = add nsw i64 %n.vec, %i.dk               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ae, i64 %i.dl
  %invariant.gep275 = getelementptr [8 x i8], ptr %i.al, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !33
  %wide.load267 = load <2 x double>, ptr %i.dt, align 8, !tbaa !33
  %gep276 = getelementptr [8 x i8], ptr %invariant.gep275, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %gep276, i64 16
  store <2 x double> %wide.load, ptr %gep276, align 8, !tbaa !33
  store <2 x double> %wide.load267, ptr %i.du, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv246.ph = phi i64 [ %i.dl, %vector.memcheck ], [ %i.dl, %.preheader.us.us ], [ %i.dr, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ %i.dk, %vector.memcheck ], [ %i.dk, %.preheader.us.us ], [ %i.ds, %middle.block ] ; 2 uses
  %.1189219.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.dj, %middle.block ] ; 4 uses
  %i.dw = sub i32 %i.ch, %.1189219.us.us.ph
  %xtraiter = and i32 %i.dw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv246.prol = phi i64 [ %indvars.iv.next247.prol, %scalar.ph.prol ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1189219.us.us.prol = phi i32 [ %i.ea, %scalar.ph.prol ], [ %.1189219.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv246.prol
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !33
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.prol
  store double %i.dy, ptr %i.dz, align 8, !tbaa !33
  %indvars.iv.next247.prol = add nsw i64 %indvars.iv246.prol, 1 ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.ea = add nuw nsw i32 %.1189219.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !9

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next247.lcssa271.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next247.prol, %scalar.ph.prol ]
  %indvars.iv.next.lcssa270.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv246.unr = phi i64 [ %indvars.iv246.ph, %scalar.ph.preheader ], [ %indvars.iv.next247.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1189219.us.us.unr = phi i32 [ %.1189219.us.us.ph, %scalar.ph.preheader ], [ %i.ea, %scalar.ph.prol ]
  %i.eb = sub i32 %.1189219.us.us.ph, %i.ch
  %i.ec = icmp ugt i32 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247.3, %scalar.ph ], [ %indvars.iv246.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1189219.us.us = phi i32 [ %i.ev, %scalar.ph ], [ %.1189219.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv246
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !33
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  store double %i.ee, ptr %i.ef, align 8, !tbaa !33
  %i.eg = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv246
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !33
  %i.ej = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store double %i.ei, ptr %i.ek, align 8, !tbaa !33
  %i.el = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv246
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !33
  %i.eo = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  store double %i.en, ptr %i.ep, align 8, !tbaa !33
  %i.eq = getelementptr [8 x i8], ptr %i.ae, i64 %indvars.iv246
  %i.er = getelementptr i8, ptr %i.eq, i64 24
  %i.es = load double, ptr %i.er, align 8, !tbaa !33
  %i.et = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  store double %i.es, ptr %i.eu, align 8, !tbaa !33
  %indvars.iv.next247.3 = add nsw i64 %indvars.iv246, 4 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ev = add nuw nsw i32 %.1189219.us.us, 4      ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.ev, %i.ch
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !10

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next247.lcssa = phi i64 [ %i.dr, %middle.block ], [ %indvars.iv.next247.lcssa271.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next247.3, %scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ds, %middle.block ], [ %indvars.iv.next.lcssa270.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.3, %scalar.ph ]
  %i.ew = trunc nsw i64 %indvars.iv.next247.lcssa to i32
  %i.ex = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.ey = add nsw i32 %i.cx, %i.ew                ; 2 uses
  %i.ez = add nsw i32 %i.cy, %i.ex                ; 2 uses
  %i.fa = add nuw nsw i32 %.1187223.us.us, 1      ; 2 uses
  %exitcond251.not = icmp eq i32 %i.fa, %i.ci
  br i1 %exitcond251.not, label %._crit_edge224.split.us.us, label %.preheader.us.us, !llvm.loop !11

._crit_edge224.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.fb = add nsw i32 %i.da, %i.ey
  %i.fc = add nsw i32 %i.dc, %i.ez
  %i.fd = add nuw nsw i32 %.1185232.us, 1         ; 2 uses
  %exitcond252.not = icmp eq i32 %i.fd, %i.cj
  br i1 %exitcond252.not, label %.critedge, label %.preheader215.us, !llvm.loop !12

.critedge:                                        ; preds = %._crit_edge224.split.us.us, %.preheader215.lr.ph, %bb.f
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.fe = load i32, ptr %i.f, align 8, !tbaa !27
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next254, %i.ff
  br i1 %i.fg, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !34, !35, !36}
!9 = distinct !{!9, !37}
!10 = distinct !{!10, !34, !35}
!11 = distinct !{!11, !34}
!12 = distinct !{!12, !34}
!13 = distinct !{!13, !34}
!14 = !{i64 2608210086001227240}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS23hypre_StructGrid_struct", !15, i64 0}
!17 = !{!"p1 _ZTS21hypre_BoxArray_struct", !15, i64 0}
!18 = !{!"p1 double", !15, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"hypre_StructVector_struct", !6, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !19, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!21 = !{!20, !16, i64 8}
!22 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !15, i64 0}
!23 = !{!"p1 _ZTS16hypre_Box_struct", !15, i64 0}
!24 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !17, i64 8, !19, i64 16, !22, i64 24, !6, i64 32, !23, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!25 = !{!24, !17, i64 8}
!26 = !{!"hypre_BoxArray_struct", !23, i64 0, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 8}
!28 = !{!26, !23, i64 0}
!29 = !{!20, !17, i64 16}
!30 = !{!20, !18, i64 24}
!31 = !{!20, !19, i64 40}
!32 = !{!"double", !5, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
