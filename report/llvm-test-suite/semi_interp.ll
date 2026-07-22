loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hypre_SemiInterpSetup:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.as, ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !4
  %i.ax = load i32, ptr %7, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @hypre_CreateComputeInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArrayArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SemiInterp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [3 x i32], align 4                ; 10 uses
  %i.c = alloca [3 x i32], align 4                ; 11 uses
  %i.d = alloca [3 x i32], align 4                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = tail call i32 @hypre_BeginTiming(i32 noundef %i.f) #4 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader547.lr.ph, label %.preheader542

.preheader547.lr.ph:                              ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader547

.preheader547:                                    ; preds = %.preheader547.lr.ph, %._crit_edge.split
  %indvars.iv642 = phi i64 [ 0, %.preheader547.lr.ph ], [ %indvars.iv.next643, %._crit_edge.split ] ; 5 uses
  %.0461574 = phi i64 [ 0, %.preheader547.lr.ph ], [ %indvars.iv, %._crit_edge.split ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv642
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  br label %bb.b

.preheader542:                                    ; preds = %._crit_edge.split, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not = icmp eq i32 %i.i, 0
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.j

bb.b:                                             ; preds = %bb.b, %.preheader547
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %.0461574, %.preheader547 ] ; 5 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %.not523 = icmp eq i32 %i.bq, %i.at
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not523, label %bb.c, label %bb.b, !llvm.loop !42

bb.c:                                             ; preds = %bb.b
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %indvars.iv642 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  store i32 %i.bv, ptr %i.ae, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  store i32 %i.bx, ptr %i.af, align 4, !tbaa !4
  %i.by = call i32 @hypre_StructMapCoarseToFine(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.c) #4 ; 0 uses
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !28
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !44
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.ca, i64 %indvars.iv ; 5 uses
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %indvars.iv642 ; 5 uses
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.ck ; 6 uses
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv642
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cr ; 6 uses
  %i.ct = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.cu = load i32, ptr %i.c, align 4, !tbaa !4
  %i.cv = load i32, ptr %i.cb, align 4, !tbaa !4  ; 2 uses
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.am, align 4, !tbaa !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = sub i32 %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sub nsw i32 %i.dd, %i.cz                ; 3 uses
  %i.df = icmp sgt i32 %i.de, -1                  ; 2 uses
  br i1 %i.df, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dg = load i32, ptr %i.an, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = sub nsw i32 %i.dg, %i.di
  %i.dk = add nuw nsw i32 %i.de, 1
  %i.dl = mul nsw i32 %i.dj, %i.dk
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.dm = phi i32 [ %i.dl, %bb.d ], [ 0, %bb.c ]
  %i.dn = load i32, ptr %i.db, align 4, !tbaa !4
  %i.do = sub nsw i32 %i.dn, %i.cv                ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1                  ; 2 uses
  %i.dq = add nsw i32 %i.da, %i.dm
  %i.dr = add nuw nsw i32 %i.do, 1                ; 3 uses
  %i.ds = mul nsw i32 %i.dr, %i.dq
  %i.dt = select i1 %i.dp, i32 %i.ds, i32 0
  %i.du = add nsw i32 %i.cw, %i.dt
  %i.dv = load i32, ptr %i.d, align 4, !tbaa !4
  %i.dw = load i32, ptr %i.ce, align 4, !tbaa !4  ; 2 uses
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %i.eb = sub i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ef = sub nsw i32 %i.ee, %i.ea                ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, -1                  ; 2 uses
  br i1 %i.eg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !4
  %i.ek = sub nsw i32 %i.eh, %i.ej
  %i.el = add nuw nsw i32 %i.ef, 1
  %i.em = mul nsw i32 %i.ek, %i.el
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.en = phi i32 [ %i.em, %bb.f ], [ 0, %bb.e ]
  %i.eo = load i32, ptr %i.ec, align 4, !tbaa !4
  %i.ep = sub i32 %i.eo, %i.dw                    ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, -1                  ; 2 uses
  %i.er = add nsw i32 %i.eb, %i.en
  %i.es = add i32 %i.ep, 1                        ; 2 uses
  %i.et = mul nsw i32 %i.es, %i.er
  %i.eu = select i1 %i.eq, i32 %i.et, i32 0
  %i.ev = add nsw i32 %i.dx, %i.eu
  %i.ew = load i32, ptr %i.n, align 8, !tbaa !4   ; 3 uses
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ex = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.ey = mul nsw i32 %i.ex, %i.dr
  %i.ez = load i32, ptr %i.ap, align 8, !tbaa !4
  %i.fa = mul nsw i32 %i.ez, %i.dr
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.fb = phi i32 [ %i.ey, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.fc = phi i32 [ %i.fa, %bb.h ], [ 0, %bb.g ]
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.fe = load i32, ptr %i.aq, align 4, !tbaa !4  ; 5 uses
  %i.ff = load i32, ptr %i.ar, align 4, !tbaa !4  ; 3 uses
  %.0470 = call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.fd)
  %.1471 = call i32 @llvm.smax.i32(i32 %i.ff, i32 %.0470)
  %i.fg = icmp sgt i32 %.1471, 0
  br i1 %i.fg, label %.preheader545.lr.ph, label %._crit_edge.split

.preheader545.lr.ph:                              ; preds = %bb.i
  %i.fh = select i1 %i.eq, i32 %i.es, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.fe, %i.fh
  %factor.op.mul569 = mul i32 %i.fe, %i.fb
  %i.fi = add nuw nsw i32 %i.ef, 1
  %i.fj = mul nsw i32 %i.fh, %i.fi
  %i.fk = select i1 %i.eg, i32 %i.fj, i32 0
  %i.fl = add nuw nsw i32 %i.de, 1
  %i.fm = mul nsw i32 %i.fc, %i.fl
  %i.fn = select i1 %i.df, i32 %i.fm, i32 0
  %4 = mul i32 %i.fd, %i.ew
  %i.fo = icmp sgt i32 %i.ff, 0
  %i.fp = icmp sgt i32 %i.fe, 0
  %5 = sub i32 %i.fb, %4
  %6 = sub i32 %i.fh, %i.fd
  %7 = sub i32 %i.fn, %factor.op.mul569
  %8 = sub i32 %i.fk, %factor.op.mul
  %brmerge.not685 = and i1 %i.fo, %i.fp
  %i.fq = icmp sgt i32 %i.fd, 0
  %or.cond = and i1 %brmerge.not685, %i.fq
  br i1 %or.cond, label %.preheader544.us.us.preheader, label %._crit_edge.split

.preheader544.us.us.preheader:                    ; preds = %.preheader545.lr.ph
  %i.fr = sext i32 %i.ew to i64                   ; 5 uses
  %i.fs = zext nneg i32 %i.fd to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.fd, 7
  %ident.check.not = icmp eq i32 %i.ew, 1
  %or.cond726 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.fs, 2147483644              ; 5 uses
  %i.ft = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.fs
  br label %.preheader544.us.us

.preheader544.us.us:                              ; preds = %.preheader544.us.us.preheader, %._crit_edge556.split.us.us.us
  %.0451565.us.us = phi i32 [ %i.hh, %._crit_edge556.split.us.us.us ], [ %i.ev, %.preheader544.us.us.preheader ]
  %.0454564.us.us = phi i32 [ %i.hg, %._crit_edge556.split.us.us.us ], [ %i.du, %.preheader544.us.us.preheader ]
  %.1488563.us.us = phi i32 [ %i.hi, %._crit_edge556.split.us.us.us ], [ 0, %.preheader544.us.us.preheader ]
  br label %.preheader543.us.us.us

.preheader543.us.us.us:                           ; preds = %._crit_edge.us.us.us, %.preheader544.us.us
  %.1452555.us.us.us = phi i32 [ %.0451565.us.us, %.preheader544.us.us ], [ %i.he, %._crit_edge.us.us.us ]
  %.1455554.us.us.us = phi i32 [ %.0454564.us.us, %.preheader544.us.us ], [ %i.hd, %._crit_edge.us.us.us ]
  %.1484553.us.us.us = phi i32 [ 0, %.preheader544.us.us ], [ %i.hf, %._crit_edge.us.us.us ]
  %9 = sext i32 %.1452555.us.us.us to i64         ; 5 uses
  %10 = sext i32 %.1455554.us.us.us to i64        ; 5 uses
  br i1 %or.cond726, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader543.us.us.us
  %i.fu = add nsw i64 %i.ck, %10
  %i.fv = shl nsw i64 %i.fu, 3
  %i.fw = add i64 %i.fv, %i.cg
  %i.fx = add nsw i64 %i.cr, %9
  %i.fy = shl nsw i64 %i.fx, 3
  %i.fz = add i64 %i.fy, %i.cn
  %i.ga = sub i64 %i.fz, %i.fw
  %diff.check = icmp ugt i64 %i.ga, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gb = add nsw i64 %n.vec, %10                 ; 2 uses
  %i.gc = add nsw i64 %n.vec, %9                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.cs, i64 %9
  %invariant.gep742 = getelementptr [8 x i8], ptr %i.cl, i64 %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x double>, ptr %gep, align 8, !tbaa !47
  %wide.load692 = load <2 x double>, ptr %i.gd, align 8, !tbaa !47
  %gep743 = getelementptr [8 x i8], ptr %invariant.gep742, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %gep743, i64 16
  store <2 x double> %wide.load, ptr %gep743, align 8, !tbaa !47
  store <2 x double> %wide.load692, ptr %i.ge, align 8, !tbaa !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader543.us.us.us, %middle.block
  %indvars.iv635.ph = phi i64 [ %10, %vector.memcheck ], [ %10, %.preheader543.us.us.us ], [ %i.gb, %middle.block ] ; 2 uses
  %indvars.iv633.ph = phi i64 [ %9, %vector.memcheck ], [ %9, %.preheader543.us.us.us ], [ %i.gc, %middle.block ] ; 2 uses
  %.1477549.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader543.us.us.us ], [ %i.ft, %middle.block ] ; 4 uses
  %i.gg = sub i32 %i.fd, %.1477549.us.us.us.ph
  %xtraiter = and i32 %i.gg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv635.prol = phi i64 [ %indvars.iv.next636.prol, %scalar.ph.prol ], [ %indvars.iv635.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv633.prol = phi i64 [ %indvars.iv.next634.prol, %scalar.ph.prol ], [ %indvars.iv633.ph, %scalar.ph.preheader ] ; 2 uses
  %.1477549.us.us.us.prol = phi i32 [ %i.gk, %scalar.ph.prol ], [ %.1477549.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv633.prol
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !47
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv635.prol
  store double %i.gi, ptr %i.gj, align 8, !tbaa !47
  %indvars.iv.next636.prol = add nsw i64 %indvars.iv635.prol, %i.fr ; 3 uses
  %indvars.iv.next634.prol = add nsw i64 %indvars.iv633.prol, 1 ; 3 uses
  %i.gk = add nuw nsw i32 %.1477549.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !52

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next636.lcssa732.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next636.prol, %scalar.ph.prol ]
  %indvars.iv.next634.lcssa731.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next634.prol, %scalar.ph.prol ]
  %indvars.iv635.unr = phi i64 [ %indvars.iv635.ph, %scalar.ph.preheader ], [ %indvars.iv.next636.prol, %scalar.ph.prol ]
  %indvars.iv633.unr = phi i64 [ %indvars.iv633.ph, %scalar.ph.preheader ], [ %indvars.iv.next634.prol, %scalar.ph.prol ]
  %.1477549.us.us.us.unr = phi i32 [ %.1477549.us.us.us.ph, %scalar.ph.preheader ], [ %i.gk, %scalar.ph.prol ]
  %i.gl = sub i32 %.1477549.us.us.us.ph, %i.fd
  %i.gm = icmp ugt i32 %i.gl, -4
  br i1 %i.gm, label %._crit_edge.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv635 = phi i64 [ %indvars.iv.next636.3, %scalar.ph ], [ %indvars.iv635.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv633 = phi i64 [ %indvars.iv.next634.3, %scalar.ph ], [ %indvars.iv633.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1477549.us.us.us = phi i32 [ %i.hc, %scalar.ph ], [ %.1477549.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %indvars.iv633
  %i.go = load double, ptr %i.gn, align 8, !tbaa !47
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv635
  store double %i.go, ptr %i.gp, align 8, !tbaa !47
  %indvars.iv.next636 = add nsw i64 %indvars.iv635, %i.fr ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv633
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !47
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next636
  store double %i.gs, ptr %i.gt, align 8, !tbaa !47
  %indvars.iv.next636.1 = add nsw i64 %indvars.iv.next636, %i.fr ; 2 uses
  %i.gu = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv633
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !47
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next636.1
  store double %i.gw, ptr %i.gx, align 8, !tbaa !47
  %indvars.iv.next636.2 = add nsw i64 %indvars.iv.next636.1, %i.fr ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv633
  %i.gz = getelementptr i8, ptr %i.gy, i64 24
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !47
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %indvars.iv.next636.2
  store double %i.ha, ptr %i.hb, align 8, !tbaa !47
  %indvars.iv.next636.3 = add nsw i64 %indvars.iv.next636.2, %i.fr ; 2 uses
  %indvars.iv.next634.3 = add nsw i64 %indvars.iv633, 4 ; 2 uses
  %i.hc = add nuw nsw i32 %.1477549.us.us.us, 4   ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hc, %i.fd
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !54

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next636.lcssa = phi i64 [ %i.gb, %middle.block ], [ %indvars.iv.next636.lcssa732.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next636.3, %scalar.ph ]
  %indvars.iv.next634.lcssa = phi i64 [ %i.gc, %middle.block ], [ %indvars.iv.next634.lcssa731.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next634.3, %scalar.ph ]
  %11 = trunc nsw i64 %indvars.iv.next636.lcssa to i32
  %12 = trunc nsw i64 %indvars.iv.next634.lcssa to i32
  %i.hd = add nsw i32 %5, %11                     ; 2 uses
  %i.he = add nsw i32 %6, %12                     ; 2 uses
  %i.hf = add nuw nsw i32 %.1484553.us.us.us, 1   ; 2 uses
  %exitcond640.not = icmp eq i32 %i.hf, %i.fe
  br i1 %exitcond640.not, label %._crit_edge556.split.us.us.us, label %.preheader543.us.us.us, !llvm.loop !55

._crit_edge556.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.hg = add nsw i32 %7, %i.hd
  %i.hh = add nsw i32 %8, %i.he
  %i.hi = add nuw nsw i32 %.1488563.us.us, 1      ; 2 uses
  %exitcond641.not = icmp eq i32 %i.hi, %i.ff
  br i1 %exitcond641.not, label %._crit_edge.split, label %.preheader544.us.us, !llvm.loop !56

._crit_edge.split:                                ; preds = %._crit_edge556.split.us.us.us, %.preheader545.lr.ph, %bb.i
  %indvars.iv.next643 = add nuw nsw i64 %indvars.iv642, 1 ; 2 uses
  %i.hj = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next643, %i.hk
  br i1 %i.hl, label %.preheader547, label %.preheader542, !llvm.loop !57

bb.j:                                             ; preds = %.preheader542, %._crit_edge611
  %i.hm = phi i1 [ true, %.preheader542 ], [ false, %._crit_edge611 ]
  %.0460612 = phi i1 [ false, %.preheader542 ], [ true, %._crit_edge611 ]
  br i1 %.0460612, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hn = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.ho = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.k, ptr noundef %i.hn, ptr noundef nonnull %i.a) #4 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hp = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.hq = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.hp) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1444.in = phi ptr [ %i.aw, %bb.l ], [ %i.av, %bb.k ]
  %.1444 = load ptr, ptr %.1444.in, align 8, !tbaa !25 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1444, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !60 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph610, label %._crit_edge611

.lr.ph610:                                        ; preds = %bb.m, %._crit_edge607
  %i.hu = phi i32 [ %i.ro, %._crit_edge607 ], [ %i.hs, %bb.m ]
  %indvars.iv658 = phi i64 [ %indvars.iv.next659, %._crit_edge607 ], [ 0, %bb.m ] ; 6 uses
  %i.hv = load ptr, ptr %.1444, align 8, !tbaa !63
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv658
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !64 ; 2 uses
  %i.hy = load ptr, ptr %i.ax, align 8, !tbaa !65
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !44
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %indvars.iv658 ; 9 uses
  %i.ib = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !44
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %indvars.iv658 ; 6 uses
  %i.ie = load ptr, ptr %i.az, align 8, !tbaa !66 ; 4 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %i.ig = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv658
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !68 ; 4 uses
  %.pre = load i32, ptr %i.q, align 4, !tbaa !4   ; 2 uses
  %.pre661 = load i32, ptr %i.bb, align 4, !tbaa !4 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph610
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  %i.il = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = sub nsw i32 %i.iq, %i.is                ; 2 uses
  %i.iu = icmp sgt i32 %i.it, -1
  br i1 %i.iu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.iv = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.iw = add nuw nsw i32 %i.it, 1
  %i.ix = mul nsw i32 %i.iv, %i.iw
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.iy = phi i32 [ %i.ix, %bb.o ], [ 0, %bb.n ]
  %i.iz = load i32, ptr %i.io, align 4, !tbaa !4
  %i.ja = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.jb = sub nsw i32 %i.iz, %i.ja                ; 2 uses
  %i.jc = add nsw i32 %i.iy, %.pre661
  %i.jd = add nuw nsw i32 %i.jb, 1
  %i.je = mul nsw i32 %i.jd, %i.jc
  %.inv = icmp slt i32 %i.jb, 0
  %i.jf = select i1 %.inv, i32 0, i32 %i.je
  %i.jg = add nsw i32 %i.jf, %.pre
  %i.jh = sext i32 %i.jg to i64
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ji
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph610
  %i.jk = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.jn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0459 = phi ptr [ %i.jj, %bb.p ], [ %i.jo, %bb.q ] ; 5 uses
  %.pn.in = phi i32 [ %i.ik, %bb.p ], [ %i.jk, %bb.q ]
  %.0459698 = ptrtoaddr ptr %.0459 to i64
  %.pn = sext i32 %.pn.in to i64                  ; 2 uses
  %.0458 = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %.pn ; 4 uses
  %i.jp = load ptr, ptr %i.au, align 8, !tbaa !45 ; 2 uses
  %i.jq = ptrtoaddr ptr %i.jp to i64              ; 2 uses
  %i.jr = load ptr, ptr %i.bd, align 8, !tbaa !46
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv658
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4
  %i.ju = sext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ju ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.id, i64 12 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = sub nsw i32 %i.jy, %i.ka                ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, -1                  ; 2 uses
  br i1 %i.kc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.ke = add nuw nsw i32 %i.kb, 1
  %i.kf = mul nsw i32 %i.kd, %i.ke
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.kg = phi i32 [ %i.kf, %bb.s ], [ 0, %bb.r ]
  %i.kh = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.ki = load i32, ptr %i.id, align 4, !tbaa !4
  %i.kj = sub nsw i32 %i.kh, %i.ki                ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1                  ; 2 uses
  %i.kl = add nsw i32 %i.kg, %.pre661
  %i.km = add nuw nsw i32 %i.kj, 1                ; 2 uses
  %i.kn = mul nsw i32 %i.km, %i.kl
  %i.ko = select i1 %i.kk, i32 %i.kn, i32 0
  %i.kp = add i32 %i.ko, %.pre
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.kq ; 4 uses
  %i.ks = load i32, ptr %i.be, align 4, !tbaa !4
  %i.kt = load i32, ptr %i.bf, align 4, !tbaa !4
  br i1 %i.kc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ku = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.kv = add nuw nsw i32 %i.kb, 1
  %i.kw = mul nsw i32 %i.ku, %i.kv
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.kx = phi i32 [ %i.kw, %bb.u ], [ 0, %bb.t ]
  %i.ky = add nsw i32 %i.kx, %i.kt
  %i.kz = mul nsw i32 %i.ky, %i.km
  %i.la = select i1 %i.kk, i32 %i.kz, i32 0
  %i.lb = add i32 %i.la, %i.ks
  %i.lc = sext i32 %i.lb to i64                   ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.lc ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !40
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph, label %._crit_edge607

.lr.ph:                                           ; preds = %bb.v
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.lm = shl nsw i64 %i.ju, 3                    ; 2 uses
  %i.ln = add i64 %i.lm, %i.jq
  %i.lo = add i64 %i.lm, %i.jq
  %i.lp = shl nsw i64 %.pn, 3
  %i.lq = add i64 %i.lp, %i.if
  %i.lr = shl nsw i64 %i.kq, 3
  %diff.check701 = icmp ugt i64 %i.lr, -32
  %i.ls = shl nsw i64 %i.lc, 3
  %diff.check703 = icmp ugt i64 %i.ls, -32
  %invariant.op = or i1 %diff.check701, %diff.check703
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %._crit_edge600.split
  %indvars.iv655 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next656, %._crit_edge600.split ] ; 2 uses
  %i.lt = load ptr, ptr %i.hx, align 8, !tbaa !44
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.lt, i64 %indvars.iv655 ; 4 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !4
  store i32 %i.lv, ptr %i.c, align 4, !tbaa !4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4
  store i32 %i.lx, ptr %i.bh, align 4, !tbaa !4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !4
  store i32 %i.lz, ptr %i.bi, align 4, !tbaa !4
  %i.ma = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.d) #4 ; 0 uses
  %i.mb = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #4 ; 0 uses
  %i.mc = load i32, ptr %i.d, align 4, !tbaa !4
  %i.md = load i32, ptr %i.ia, align 4, !tbaa !4  ; 2 uses
  %i.me = sub i32 %i.mc, %i.md
  %i.mf = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.mg = load i32, ptr %i.lh, align 4, !tbaa !4  ; 2 uses
  %i.mh = sub i32 %i.mf, %i.mg
  %i.mi = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.mj = sub nsw i32 %i.mi, %i.mg                ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, -1                  ; 2 uses
  br i1 %i.mk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ml = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.mm = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.mn = sub nsw i32 %i.ml, %i.mm
  %i.mo = add nuw nsw i32 %i.mj, 1
  %i.mp = mul nsw i32 %i.mn, %i.mo
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.mq = phi i32 [ %i.mp, %bb.x ], [ 0, %bb.w ]
  %i.mr = load i32, ptr %i.li, align 4, !tbaa !4
  %i.ms = sub i32 %i.mr, %i.md                    ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, -1                  ; 2 uses
  %i.mu = add nsw i32 %i.mh, %i.mq
  %i.mv = add i32 %i.ms, 1                        ; 2 uses
  %i.mw = mul nsw i32 %i.mv, %i.mu
  %i.mx = select i1 %i.mt, i32 %i.mw, i32 0
  %i.my = add nsw i32 %i.me, %i.mx
  %i.mz = load i32, ptr %i.c, align 4, !tbaa !4
  %i.na = load i32, ptr %i.id, align 4, !tbaa !4  ; 2 uses
  %i.nb = sub i32 %i.mz, %i.na
  %i.nc = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.nd = load i32, ptr %i.jz, align 4, !tbaa !4  ; 2 uses
  %i.ne = sub i32 %i.nc, %i.nd
  %i.nf = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.ng = sub nsw i32 %i.nf, %i.nd                ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, -1                  ; 2 uses
  br i1 %i.nh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ni = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.nj = load i32, ptr %i.ll, align 4, !tbaa !4
  %i.nk = sub nsw i32 %i.ni, %i.nj
  %i.nl = add nuw nsw i32 %i.ng, 1
  %i.nm = mul nsw i32 %i.nk, %i.nl
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.nn = phi i32 [ %i.nm, %bb.z ], [ 0, %bb.y ]
  %i.no = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.np = sub nsw i32 %i.no, %i.na                ; 2 uses
  %i.nq = icmp sgt i32 %i.np, -1                  ; 2 uses
  %i.nr = add nsw i32 %i.ne, %i.nn
  %i.ns = add nuw nsw i32 %i.np, 1                ; 3 uses
  %i.nt = mul nsw i32 %i.ns, %i.nr
  %i.nu = select i1 %i.nq, i32 %i.nt, i32 0
  %i.nv = add nsw i32 %i.nb, %i.nu
  %i.nw = select i1 %i.mt, i32 %i.mv, i32 0       ; 3 uses
  %i.nx = add nuw nsw i32 %i.mj, 1
  %i.ny = mul nsw i32 %i.nw, %i.nx
  %i.nz = select i1 %i.mk, i32 %i.ny, i32 0
  %i.oa = load i32, ptr %i.n, align 8, !tbaa !4   ; 3 uses
  br i1 %i.nq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ob = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.oc = mul nsw i32 %i.ob, %i.ns
  %i.od = load i32, ptr %i.bm, align 8, !tbaa !4
  %i.oe = mul nsw i32 %i.od, %i.ns
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.of = phi i32 [ %i.oc, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.og = phi i32 [ %i.oe, %bb.ab ], [ 0, %bb.aa ]
  %i.oh = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.oi = load i32, ptr %i.bn, align 4, !tbaa !4  ; 5 uses
  %i.oj = load i32, ptr %i.bo, align 4, !tbaa !4  ; 3 uses
  %.0439 = call i32 @llvm.smax.i32(i32 %i.oi, i32 %i.oh)
  %.1440 = call i32 @llvm.smax.i32(i32 %i.oj, i32 %.0439)
  %i.ok = icmp sgt i32 %.1440, 0
  br i1 %i.ok, label %.preheader541.lr.ph, label %._crit_edge600.split

.preheader541.lr.ph:                              ; preds = %bb.ac
  %factor.op.mul599 = mul i32 %i.oi, %i.of
  %factor.op.mul598 = mul i32 %i.oi, %i.nw
  %i.ol = add nuw nsw i32 %i.ng, 1
  %i.om = mul nsw i32 %i.og, %i.ol
  %i.on = select i1 %i.nh, i32 %i.om, i32 0
  %13 = mul i32 %i.oh, %i.oa
  %i.oo = icmp sgt i32 %i.oj, 0
  %i.op = icmp sgt i32 %i.oi, 0
  %14 = sub i32 %i.nw, %i.oh
  %15 = sub i32 %i.of, %13
  %16 = sub i32 %i.nz, %factor.op.mul598
  %17 = sub i32 %i.on, %factor.op.mul599
  %brmerge617.not688 = and i1 %i.oo, %i.op
  %i.oq = icmp sgt i32 %i.oh, 0
  %or.cond682 = and i1 %brmerge617.not688, %i.oq
  br i1 %or.cond682, label %.preheader540.us.us.preheader, label %._crit_edge600.split

.preheader540.us.us.preheader:                    ; preds = %.preheader541.lr.ph
  %i.or = sext i32 %i.oa to i64                   ; 3 uses
  %i.os = zext nneg i32 %i.oh to i64              ; 2 uses
  %min.iters.check706 = icmp ugt i32 %i.oh, 7
  %ident.check696.not = icmp eq i32 %i.oa, 1
  %or.cond727 = select i1 %min.iters.check706, i1 %ident.check696.not, i1 false
  %n.vec709 = and i64 %i.os, 2147483644           ; 5 uses
  %i.ot = trunc nuw nsw i64 %n.vec709 to i32
  %cmp.n722 = icmp eq i64 %n.vec709, %i.os
  br label %.preheader540.us.us

.preheader540.us.us:                              ; preds = %.preheader540.us.us.preheader, %._crit_edge584.split.us.us.us
  %.0448594.us.us = phi i32 [ %i.ri, %._crit_edge584.split.us.us.us ], [ %i.my, %.preheader540.us.us.preheader ]
  %.3457593.us.us = phi i32 [ %i.rj, %._crit_edge584.split.us.us.us ], [ %i.nv, %.preheader540.us.us.preheader ]
  %.3490592.us.us = phi i32 [ %i.rk, %._crit_edge584.split.us.us.us ], [ 0, %.preheader540.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge578.us.us.us, %.preheader540.us.us
  %.1449583.us.us.us = phi i32 [ %.0448594.us.us, %.preheader540.us.us ], [ %i.rf, %._crit_edge578.us.us.us ]
  %.4582.us.us.us = phi i32 [ %.3457593.us.us, %.preheader540.us.us ], [ %i.rg, %._crit_edge578.us.us.us ]
  %.3486581.us.us.us = phi i32 [ 0, %.preheader540.us.us ], [ %i.rh, %._crit_edge578.us.us.us ]
  %i.ou = sext i32 %.1449583.us.us.us to i64      ; 5 uses
  %i.ov = sext i32 %.4582.us.us.us to i64         ; 5 uses
  br i1 %or.cond727, label %vector.memcheck697, label %scalar.ph705.preheader

vector.memcheck697:                               ; preds = %.preheader.us.us.us
  %18 = shl nsw i64 %i.ov, 3                      ; 2 uses
  %i.ow = shl nsw i64 %i.ou, 3                    ; 2 uses
  %i.ox = add i64 %i.ln, %18
  %19 = add i64 %i.ow, %.0459698
  %20 = sub i64 %19, %i.ox
  %diff.check699 = icmp ugt i64 %20, -32
  %i.oy = add i64 %i.lo, %18
  %i.oz = add i64 %i.lq, %i.ow
  %i.pa = sub i64 %i.oz, %i.oy
  %diff.check700 = icmp ugt i64 %i.pa, -32
  %conflict.rdx = or i1 %diff.check699, %diff.check700
  %conflict.rdx704.reass = or i1 %conflict.rdx, %invariant.op
  br i1 %conflict.rdx704.reass, label %scalar.ph705.preheader, label %vector.ph707

vector.ph707:                                     ; preds = %vector.memcheck697
  %i.pb = add nsw i64 %n.vec709, %i.ov            ; 2 uses
  %i.pc = add nsw i64 %n.vec709, %i.ou            ; 2 uses
  br label %vector.body710

vector.body710:                                   ; preds = %vector.body710, %vector.ph707
  %index711 = phi i64 [ 0, %vector.ph707 ], [ %index.next720, %vector.body710 ] ; 3 uses
  %i.pd = add i64 %index711, %i.ov                ; 3 uses
  %i.pe = add i64 %index711, %i.ou                ; 2 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %.0458, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %wide.load712 = load <2 x double>, ptr %i.pf, align 8, !tbaa !47
  %wide.load713 = load <2 x double>, ptr %i.pg, align 8, !tbaa !47
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.pd ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load714 = load <2 x double>, ptr %i.ph, align 8, !tbaa !47
  %wide.load715 = load <2 x double>, ptr %i.pi, align 8, !tbaa !47
  %i.pj = getelementptr inbounds [8 x i8], ptr %.0459, i64 %i.pe ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %wide.load716 = load <2 x double>, ptr %i.pj, align 8, !tbaa !47
  %wide.load717 = load <2 x double>, ptr %i.pk, align 8, !tbaa !47
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.pd ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load718 = load <2 x double>, ptr %i.pl, align 8, !tbaa !47
  %wide.load719 = load <2 x double>, ptr %i.pm, align 8, !tbaa !47
  %i.pn = fmul <2 x double> %wide.load716, %wide.load718
  %i.po = fmul <2 x double> %wide.load717, %wide.load719
  %i.pp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load712, <2 x double> %wide.load714, <2 x double> %i.pn)
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load713, <2 x double> %wide.load715, <2 x double> %i.po)
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.pd ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store <2 x double> %i.pp, ptr %i.pr, align 8, !tbaa !47
  store <2 x double> %i.pq, ptr %i.ps, align 8, !tbaa !47
  %index.next720 = add nuw i64 %index711, 4       ; 2 uses
  %i.pt = icmp eq i64 %index.next720, %n.vec709
  br i1 %i.pt, label %middle.block721, label %vector.body710, !llvm.loop !69

middle.block721:                                  ; preds = %vector.body710
  br i1 %cmp.n722, label %._crit_edge578.us.us.us, label %scalar.ph705.preheader

scalar.ph705.preheader:                           ; preds = %vector.memcheck697, %.preheader.us.us.us, %middle.block721
  %indvars.iv647.ph.a = phi i64 [ %i.ov, %vector.memcheck697 ], [ %i.ov, %.preheader.us.us.us ], [ %i.pb, %middle.block721 ] ; 5 uses
  %indvars.iv645.ph = phi i64 [ %i.ou, %vector.memcheck697 ], [ %i.ou, %.preheader.us.us.us ], [ %i.pc, %middle.block721 ] ; 4 uses
  %.3479575.us.us.us.ph = phi i32 [ 0, %vector.memcheck697 ], [ 0, %.preheader.us.us.us ], [ %i.ot, %middle.block721 ] ; 4 uses
  %i.pu = sub i32 %i.oh, %.3479575.us.us.us.ph
  %.neg = add i32 %.3479575.us.us.us.ph, 1
  %xtraiter735 = and i32 %i.pu, 1
  %lcmp.mod736.not = icmp eq i32 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %scalar.ph705.prol.loopexit, label %scalar.ph705.prol

scalar.ph705.prol:                                ; preds = %scalar.ph705.preheader
  %i.pv = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv645.ph
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !47
  %i.px = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %indvars.iv647.ph.a
  %i.py = load double, ptr %i.px, align 8, !tbaa !47
  %i.pz = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv645.ph
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !47
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %indvars.iv647.ph.a
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !47
  %i.qd = fmul double %i.qa, %i.qc
  %i.qe = call double @llvm.fmuladd.f64(double %i.pw, double %i.py, double %i.qd)
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv647.ph.a
  store double %i.qe, ptr %i.qf, align 8, !tbaa !47
  %indvars.iv.next646.prol = add nsw i64 %indvars.iv645.ph, 1 ; 2 uses
  %indvars.iv.next648.prol = add nsw i64 %indvars.iv647.ph.a, %i.or ; 2 uses
  %i.qg = add nuw nsw i32 %.3479575.us.us.us.ph, 1
  br label %scalar.ph705.prol.loopexit

scalar.ph705.prol.loopexit:                       ; preds = %scalar.ph705.prol, %scalar.ph705.preheader
  %indvars.iv.next646.lcssa729.unr = phi i64 [ poison, %scalar.ph705.preheader ], [ %indvars.iv.next646.prol, %scalar.ph705.prol ]
  %indvars.iv.next648.lcssa728.unr = phi i64 [ poison, %scalar.ph705.preheader ], [ %indvars.iv.next648.prol, %scalar.ph705.prol ]
  %indvars.iv647.unr = phi i64 [ %indvars.iv647.ph.a, %scalar.ph705.preheader ], [ %indvars.iv.next648.prol, %scalar.ph705.prol ]
  %indvars.iv645.unr = phi i64 [ %indvars.iv645.ph, %scalar.ph705.preheader ], [ %indvars.iv.next646.prol, %scalar.ph705.prol ]
  %.3479575.us.us.us.unr = phi i32 [ %.3479575.us.us.us.ph, %scalar.ph705.preheader ], [ %i.qg, %scalar.ph705.prol ]
  %i.qh = icmp eq i32 %i.oh, %.neg
  br i1 %i.qh, label %._crit_edge578.us.us.us, label %scalar.ph705

scalar.ph705:                                     ; preds = %scalar.ph705.prol.loopexit, %scalar.ph705
  %indvars.iv647 = phi i64 [ %indvars.iv.next648.1, %scalar.ph705 ], [ %indvars.iv647.unr, %scalar.ph705.prol.loopexit ] ; 4 uses
  %indvars.iv645.a = phi i64 [ %indvars.iv.next646.1, %scalar.ph705 ], [ %indvars.iv645.unr, %scalar.ph705.prol.loopexit ] ; 4 uses
  %.3479575.us.us.us = phi i32 [ %i.re, %scalar.ph705 ], [ %.3479575.us.us.us.unr, %scalar.ph705.prol.loopexit ]
  %i.qi = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv645.a
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !47
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %indvars.iv647
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !47
  %i.qm = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv645.a
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !47
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %indvars.iv647
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !47
  %i.qq = fmul double %i.qn, %i.qp
  %i.qr = call double @llvm.fmuladd.f64(double %i.qj, double %i.ql, double %i.qq)
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv647
  store double %i.qr, ptr %i.qs, align 8, !tbaa !47
  %indvars.iv.next646 = add nsw i64 %indvars.iv645.a, 1 ; 2 uses
  %indvars.iv.next648 = add nsw i64 %indvars.iv647, %i.or ; 4 uses
  %i.qt = getelementptr inbounds [8 x i8], ptr %.0458, i64 %indvars.iv.next646
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !47
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %indvars.iv.next648
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !47
  %i.qx = getelementptr inbounds [8 x i8], ptr %.0459, i64 %indvars.iv.next646
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !47
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %indvars.iv.next648
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !47
  %i.rb = fmul double %i.qy, %i.ra
  %i.rc = call double @llvm.fmuladd.f64(double %i.qu, double %i.qw, double %i.rb)
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv.next648
  store double %i.rc, ptr %i.rd, align 8, !tbaa !47
  %indvars.iv.next646.1 = add nsw i64 %indvars.iv645.a, 2 ; 2 uses
  %indvars.iv.next648.1 = add nsw i64 %indvars.iv.next648, %i.or ; 2 uses
  %i.re = add nuw nsw i32 %.3479575.us.us.us, 2   ; 2 uses
  %exitcond652.not.1 = icmp eq i32 %i.re, %i.oh
  br i1 %exitcond652.not.1, label %._crit_edge578.us.us.us, label %scalar.ph705, !llvm.loop !70

._crit_edge578.us.us.us:                          ; preds = %scalar.ph705.prol.loopexit, %scalar.ph705, %middle.block721
  %indvars.iv.next646.lcssa = phi i64 [ %i.pc, %middle.block721 ], [ %indvars.iv.next646.lcssa729.unr, %scalar.ph705.prol.loopexit ], [ %indvars.iv.next646.1, %scalar.ph705 ]
  %indvars.iv.next648.lcssa = phi i64 [ %i.pb, %middle.block721 ], [ %indvars.iv.next648.lcssa728.unr, %scalar.ph705.prol.loopexit ], [ %indvars.iv.next648.1, %scalar.ph705 ]
  %21 = trunc nsw i64 %indvars.iv.next648.lcssa to i32
  %22 = trunc nsw i64 %indvars.iv.next646.lcssa to i32
  %i.rf = add nsw i32 %14, %22                    ; 2 uses
  %i.rg = add nsw i32 %15, %21                    ; 2 uses
  %i.rh = add nuw nsw i32 %.3486581.us.us.us, 1   ; 2 uses
  %exitcond653.not = icmp eq i32 %i.rh, %i.oi
  br i1 %exitcond653.not, label %._crit_edge584.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !71

._crit_edge584.split.us.us.us:                    ; preds = %._crit_edge578.us.us.us
  %i.ri = add nsw i32 %16, %i.rf
  %i.rj = add nsw i32 %17, %i.rg
  %i.rk = add nuw nsw i32 %.3490592.us.us, 1      ; 2 uses
  %exitcond654.not = icmp eq i32 %i.rk, %i.oj
  br i1 %exitcond654.not, label %._crit_edge600.split, label %.preheader540.us.us, !llvm.loop !72

._crit_edge600.split:                             ; preds = %._crit_edge584.split.us.us.us, %.preheader541.lr.ph, %bb.ac
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %i.rl = load i32, ptr %i.le, align 8, !tbaa !40
  %i.rm = sext i32 %i.rl to i64
  %i.rn = icmp slt i64 %indvars.iv.next656, %i.rm
  br i1 %i.rn, label %bb.w, label %._crit_edge607.loopexit, !llvm.loop !73

._crit_edge607.loopexit:                          ; preds = %._crit_edge600.split
  %.pre662 = load i32, ptr %i.hr, align 8, !tbaa !60
  br label %._crit_edge607

._crit_edge607:                                   ; preds = %._crit_edge607.loopexit, %bb.v
  %i.ro = phi i32 [ %.pre662, %._crit_edge607.loopexit ], [ %i.hu, %bb.v ] ; 2 uses
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %i.rp = sext i32 %i.ro to i64
  %i.rq = icmp slt i64 %indvars.iv.next659, %i.rp
  br i1 %i.rq, label %.lr.ph610, label %._crit_edge611, !llvm.loop !74

._crit_edge611:                                   ; preds = %._crit_edge607, %bb.m
  br i1 %i.hm, label %bb.j, label %bb.ad, !llvm.loop !75

bb.ad:                                            ; preds = %._crit_edge611
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !76
  %i.rt = mul nsw i32 %i.rs, 3
  %i.ru = call i32 @hypre_IncFLOPCount(i32 noundef %i.rt) #4 ; 0 uses
  %i.rv = load i32, ptr %i.e, align 4, !tbaa !8
  %i.rw = call i32 @hypre_EndTiming(i32 noundef %i.rv) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 0
}

declare i32 @hypre_BeginTiming(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @hypre_IncFLOPCount(i32 noundef) local_unnamed_addr #2

declare i32 @hypre_EndTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SemiInterpDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.a) #4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call i32 @hypre_ComputePkgDestroy(ptr noundef %i.d) #4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.g) #4 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 60}
!9 = !{!"", !10, i64 0, !5, i64 8, !12, i64 16, !6, i64 24, !6, i64 36, !6, i64 48, !5, i64 60}
!10 = !{!"p1 _ZTS25hypre_StructMatrix_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !11, i64 0}
!13 = !{!14, !15, i64 8}
!14 = !{!"hypre_StructVector_struct", !5, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !5, i64 32, !5, i64 36, !18, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!15 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!16 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!20, !21, i64 24}
!20 = !{!"hypre_StructMatrix_struct", !5, i64 0, !15, i64 8, !21, i64 16, !21, i64 24, !5, i64 32, !16, i64 40, !17, i64 48, !5, i64 56, !5, i64 60, !22, i64 64, !5, i64 72, !18, i64 80, !6, i64 88, !5, i64 112, !24, i64 120, !5, i64 128}
!21 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!22 = !{!"p2 int", !23, i64 0}
!23 = !{!"any p2 pointer", !11, i64 0}
!24 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !11, i64 0}
!27 = !{!22, !22, i64 0}
!28 = !{!14, !16, i64 16}
!29 = !{!9, !10, i64 0}
!30 = !{!9, !5, i64 8}
!31 = !{!12, !12, i64 0}
!32 = !{!9, !12, i64 16}
!33 = !{!34, !18, i64 0}
!34 = !{!"hypre_StructStencil_struct", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!35 = !{!36, !18, i64 16}
!36 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !16, i64 8, !18, i64 16, !37, i64 24, !5, i64 32, !38, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!37 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !11, i64 0}
!38 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!39 = !{!36, !16, i64 8}
!40 = !{!41, !5, i64 8}
!41 = !{!"hypre_BoxArray_struct", !38, i64 0, !5, i64 8, !5, i64 12}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!41, !38, i64 0}
!45 = !{!14, !17, i64 24}
!46 = !{!14, !18, i64 40}
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !6, i64 0}
!49 = distinct !{!49, !43, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !43, !50}
!55 = distinct !{!55, !43}
!56 = distinct !{!56, !43}
!57 = distinct !{!57, !43}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTS23hypre_CommHandle_struct", !11, i64 0}
!60 = !{!61, !5, i64 8}
!61 = !{!"hypre_BoxArrayArray_struct", !62, i64 0, !5, i64 8}
!62 = !{!"p2 _ZTS21hypre_BoxArray_struct", !23, i64 0}
!63 = !{!61, !62, i64 0}
!64 = !{!16, !16, i64 0}
!65 = !{!20, !16, i64 40}
!66 = !{!20, !17, i64 48}
!67 = !{!20, !22, i64 64}
!68 = !{!18, !18, i64 0}
!69 = distinct !{!69, !43, !50, !51}
!70 = distinct !{!70, !43, !50}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !43}
!76 = !{!14, !5, i64 72}
end_hunk_0
