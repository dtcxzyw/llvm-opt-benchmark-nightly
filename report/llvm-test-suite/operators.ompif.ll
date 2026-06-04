begin_hunk_0_@rebuild_lambda:bb.a
  %i.ck = add nsw i32 %i.bh, %i.q
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.co = fmul double %i.az, %i.cn
  %i.cp = tail call double @llvm.fabs.f64(double %i.co)
  %i.cq = fadd double %i.cj, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !44
  %i.ct = extractelement <2 x double> %i.br, i64 0
  %i.cu = fneg double %i.ct
  %i.cv = fsub double %i.cu, %i.bs
  %i.cw = fsub double %i.cv, %i.bm
  %i.cx = fsub double %i.cw, %i.bq
  %i.cy = fsub double %i.cx, %i.cg
  %i.cz = fsub double %i.cy, %i.cn
  %i.da = fneg double %i.cz
  %i.db = fmul double %i.az, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %2, double %i.cs, double %i.db) ; 3 uses
  %i.dd = fdiv double 1.000000e+00, %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bi
  store double %i.dd, ptr %i.de, align 8, !tbaa !44
  %i.df = fadd double %i.dc, %i.cq
  %i.dg = fdiv double %i.df, %i.dc                ; 2 uses
  %i.dh = fcmp ogt double %i.dg, %.2149.us.us.us
  %.3.us.us.us = select i1 %i.dh, double %i.dg, double %.2149.us.us.us ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.di = add nuw nsw i32 %.0143152.us.us.us, 1   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.di, %i.x
  br i1 %exitcond170.not, label %._crit_edge153.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !72

._crit_edge153.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.dj = add nuw nsw i32 %.0146155.us.us, 1      ; 2 uses
  %exitcond171.not = icmp eq i32 %i.dj, %i.v
  br i1 %exitcond171.not, label %._crit_edge, label %.preheader148.us.us, !llvm.loop !73

._crit_edge:                                      ; preds = %._crit_edge153.split.us.us.us, %.preheader148.lr.ph, %bb.b
  %.0144.lcssa = phi double [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %.preheader148.lr.ph ], [ %.3.us.us.us, %._crit_edge153.split.us.us.us ] ; 2 uses
  %i.dk = fcmp ogt double %.0144.lcssa, %.0141163
  %.1 = select i1 %i.dk, double %.0144.lcssa, double %.0141163 ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge166, label %bb.b, !llvm.loop !74

._crit_edge166:                                   ; preds = %._crit_edge, %bb.a
  %.0141.lcssa = phi double [ -1.000000e+00, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.dl = tail call i64 (...) @CycleTime() #10
  %i.dm = sub i64 %i.dl, %i.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.b ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !63
  %i.dq = add i64 %i.dm, %i.dp
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !75
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge166
  %i.du = icmp eq i32 %1, 0
  br i1 %i.du, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1, double noundef %.0141.lcssa) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.dx = tail call i32 @fflush(ptr noundef %i.dw) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge166
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.b
  store double %.0141.lcssa, ptr %i.dz, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @smooth(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %i.d = load i32, ptr %i.c, align 4, !tbaa !78   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1                     ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = zext i1 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %i.j = sext i32 %3 to i64
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge228
  %.0201229 = phi i32 [ 0, %bb.c ], [ %i.kp, %._crit_edge228 ] ; 4 uses
  %i.m = and i32 %.0201229, 1
  %i.n = icmp eq i32 %i.m, 0
  %. = select i1 %i.n, i32 %2, i32 10
  tail call void @exchange_boundary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %., i32 noundef 1, i32 noundef %i.f, i32 noundef %i.f)
  %i.o = tail call i64 (...) @CycleTime() #10
  %i.p = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.d
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph227, %._crit_edge224
  %indvars.iv243 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next244, %._crit_edge224 ] ; 2 uses
  %i.s = getelementptr inbounds nuw [256 x i8], ptr %i.r, i64 %indvars.iv243
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds [216 x i8], ptr %i.u, i64 %i.b ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <2 x i32>, ptr %i.w, align 8, !tbaa !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67   ; 16 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !68 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !69 ; 2 uses
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !70 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 8 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.j
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 3 uses
  %i.ak = extractelement <2 x i32> %i.x, i64 0    ; 12 uses
  %i.al = add i32 %i.ak, 1
  %i.am = extractelement <2 x i32> %i.x, i64 1    ; 12 uses
  %i.an = add i32 %i.al, %i.am                    ; 3 uses
  %i.ao = mul i32 %i.z, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 11 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ap ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ap ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42 ; 5 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.ap ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.ap ; 2 uses
  %i.bg = add nsw i32 %i.z, %.0201229
  %i.bh = icmp sgt i32 %i.z, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge224

.lr.ph:                                           ; preds = %bb.e
  %i.bi = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fdiv double 1.000000e+00, %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.k ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bn = fmul double %5, %i.bk                   ; 2 uses
  %i.bo = sub nsw i32 1, %i.z                     ; 3 uses
  %i.bp = add i32 %i.af, -1
  %i.bq = add i32 %i.bp, %i.z
  %i.br = add i32 %i.ae, -1
  %i.bs = add i32 %i.br, %i.z
  %i.bt = add i32 %i.ac, -1
  %i.bu = add i32 %i.bt, %i.z
  %i.bv = add i32 %i.af, -3
  %i.bw = shl nuw i32 %i.z, 1
  %i.bx = add i32 %i.bv, %i.bw
  %i.by = add i32 %i.ak, %i.am
  %i.bz = mul i32 %i.by, %i.bo
  %i.ca = add <2 x i32> %i.x, splat (i32 1)
  %i.cb = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cc = shufflevector <4 x i32> %i.cb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cd = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>, <4 x i32> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cf = add <4 x i32> %i.cc, %i.ce
  %i.cg = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ch = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ci = sub <4 x i32> %i.cf, %i.ch              ; 2 uses
  %i.cj = shl nsw i64 %i.ap, 3                    ; 28 uses
  %i.ck = add i32 %i.ak, %i.am
  %i.cl = mul i32 %i.ck, %i.bo                    ; 4 uses
  %i.cm = add i32 %i.cl, 1
  %i.cn = sub i32 %i.cm, %i.z
  %i.co = add i32 %i.af, -3
  %i.cp = shl nuw i32 %i.z, 1
  %i.cq = add i32 %i.co, %i.cp
  %scevgep268 = getelementptr i8, ptr %i.as, i64 %i.cj
  %scevgep270 = getelementptr i8, ptr %i.as, i64 8
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.cj
  %i.cr = sext i32 %i.am to i64
  %i.cs = sub nsw i64 %i.ap, %i.cr
  %i.ct = shl nsw i64 %i.cs, 3                    ; 2 uses
  %i.cu = add i32 %i.am, 1
  %i.cv = add i32 %i.cu, %i.cl
  %i.cw = sub i32 %i.cv, %i.z
  %i.cx = sext i32 %i.ak to i64
  %i.cy = sub nsw i64 %i.ap, %i.cx
  %i.cz = shl nsw i64 %i.cy, 3                    ; 2 uses
  %i.da = add i32 %i.ak, 1
  %i.db = add i32 %i.da, %i.cl
  %i.dc = sub i32 %i.db, %i.z
  %i.dd = add i32 %i.cl, 2
  %i.de = sub i32 %i.dd, %i.z
  %scevgep311 = getelementptr i8, ptr %i.av, i64 %i.cj
  %scevgep313 = getelementptr i8, ptr %i.av, i64 8
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.cj
  %scevgep317 = getelementptr i8, ptr %i.av, i64 %i.cj
  %scevgep319 = getelementptr i8, ptr %i.av, i64 8
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.cj
  %scevgep323 = getelementptr i8, ptr %i.ay, i64 %i.cj
  %scevgep325 = getelementptr i8, ptr %i.ay, i64 8
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.cj
  %scevgep329 = getelementptr i8, ptr %i.ay, i64 %i.cj
  %scevgep331 = getelementptr i8, ptr %i.ay, i64 8
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.cj
  %scevgep335 = getelementptr i8, ptr %i.bb, i64 %i.cj
  %scevgep337 = getelementptr i8, ptr %i.bb, i64 8
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.cj
  %scevgep341 = getelementptr i8, ptr %i.bb, i64 %i.cj
  %scevgep343 = getelementptr i8, ptr %i.bb, i64 8
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.cj
  %scevgep347 = getelementptr i8, ptr %i.be, i64 %i.cj
  %scevgep349 = getelementptr i8, ptr %i.be, i64 8
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.cj
  %scevgep353 = getelementptr i8, ptr %i.aj, i64 %i.cj
  %scevgep355 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep356 = getelementptr i8, ptr %scevgep355, i64 %i.cj
  %i.df = add i32 %i.af, -3
  %i.dg = shl nuw i32 %i.z, 1
  %i.dh = add i32 %i.df, %i.dg
  %broadcast.splatinsert414 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat415 = shufflevector <2 x double> %broadcast.splatinsert414, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %._crit_edge ] ; 6 uses
  %indvars.iv240 = phi i32 [ %i.bu, %.lr.ph ], [ %indvars.iv.next241, %._crit_edge ] ; 2 uses
  %indvars.iv237 = phi i32 [ %i.bs, %.lr.ph ], [ %indvars.iv.next238, %._crit_edge ] ; 2 uses
  %indvars.iv235 = phi i32 [ %i.bq, %.lr.ph ], [ %indvars.iv.next236, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i32 [ %i.bo, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0204.in221 = phi i32 [ %i.z, %.lr.ph ], [ %.0204222, %._crit_edge ] ; 2 uses
  %.0208220 = phi i32 [ %.0201229, %.lr.ph ], [ %i.kj, %._crit_edge ] ; 2 uses
  %i.di = shl i32 %indvar, 1
  %i.dj = sub i32 %i.dh, %i.di                    ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %i.dm = mul i32 %i.an, %indvar                  ; 4 uses
  %i.dn = add i32 %i.cn, %i.dm
  %i.do = add i32 %i.cw, %i.dm
  %i.dp = add i32 %i.dc, %i.dm
  %i.dq = add i32 %i.de, %i.dm
  %i.dr = shl i32 %indvar, 1
  %i.ds = sub i32 %i.bx, %i.dr
  %i.dt = mul i32 %i.an, %indvar
  %i.du = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %i.dv = zext i32 %indvars.iv to i64             ; 4 uses
  %.0204222 = add nsw i32 %.0204.in221, -1        ; 4 uses
  %i.dw = and i32 %.0208220, 1
  %i.dx = icmp eq i32 %i.dw, 0                    ; 2 uses
  %.pn.in = select i1 %i.dx, ptr %i.bl, ptr %i.bm
  %.pn209.in = select i1 %i.dx, ptr %i.bm, ptr %i.bl
  %.pn209 = load ptr, ptr %.pn209.in, align 8, !tbaa !42 ; 3 uses
  %.0202 = getelementptr inbounds [8 x i8], ptr %.pn209, i64 %i.ap ; 2 uses
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !42 ; 13 uses
  %.0203 = getelementptr inbounds [8 x i8], ptr %.pn, i64 %i.ap ; 12 uses
  %i.dy = sub nsw i32 1, %.0204.in221             ; 5 uses
  %i.dz = add nsw i32 %.0204222, %i.ac
  %i.ea = icmp slt i32 %i.dy, %i.dz
  %i.eb = add nsw i32 %.0204222, %i.ae
  %i.ec = icmp slt i32 %i.dy, %i.eb
  %or.cond = select i1 %i.ea, i1 %i.ec, i1 false
  %i.ed = add nsw i32 %.0204222, %i.af
  %i.ee = icmp slt i32 %i.dy, %i.ed
  %or.cond255 = select i1 %or.cond, i1 %i.ee, i1 false
  br i1 %or.cond255, label %.preheader210.us.us.preheader, label %._crit_edge

.preheader210.us.us.preheader:                    ; preds = %bb.f
  %i.ef = shl i32 %indvar, 1
  %i.eg = sub i32 %i.cq, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 3                ; 16 uses
  %scevgep = getelementptr i8, ptr %.pn209, i64 %i.cj
  %scevgep264 = getelementptr i8, ptr %.pn209, i64 8
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.cj
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.ei
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.ei
  %scevgep274 = getelementptr i8, ptr %.pn, i64 %i.ct
  %scevgep276 = getelementptr i8, ptr %.pn, i64 8
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.ct
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.ei
  %scevgep280 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep282 = getelementptr i8, ptr %.pn, i64 8
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %i.cj
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.ei
  %scevgep286 = getelementptr i8, ptr %.pn, i64 %i.cz
  %scevgep288 = getelementptr i8, ptr %.pn, i64 8
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.cz
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.ei
  %scevgep292 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep294 = getelementptr i8, ptr %.pn, i64 8
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.cj
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.ei
  %scevgep298 = getelementptr i8, ptr %.pn, i64 -8
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.cj
  %scevgep301 = getelementptr i8, ptr %.pn, i64 8
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.cj
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.ei
  %scevgep305 = getelementptr i8, ptr %.pn, i64 %i.cj
  %scevgep307 = getelementptr i8, ptr %.pn, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.cj
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.ei
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.ei
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.ei
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.ei
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.ei
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.ei
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.ei
  %scevgep351 = getelementptr i8, ptr %scevgep350, i64 %i.ei
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.ei
  %i.ej = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %i.ek = shufflevector <4 x i32> %i.ej, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.dj, 5
  %invariant.op431 = add <4 x i32> %i.ci, %i.ek
  %n.vec = and i64 %i.dl, 8589934590              ; 3 uses
  %i.el = add nuw nsw i64 %n.vec, %i.dv
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br label %.preheader210.us.us

.preheader210.us.us:                              ; preds = %.preheader210.us.us.preheader, %._crit_edge213.split.us.us.us
  %indvar256 = phi i32 [ 0, %.preheader210.us.us.preheader ], [ %indvar.next257, %._crit_edge213.split.us.us.us ] ; 3 uses
  %.0207214.us.us = phi i32 [ %i.dy, %.preheader210.us.us.preheader ], [ %i.ki, %._crit_edge213.split.us.us.us ] ; 2 uses
  %i.em = mul i32 %i.am, %indvar256               ; 4 uses
  %i.en = add i32 %i.dn, %i.em
  %i.eo = add i32 %i.do, %i.em
  %i.ep = add i32 %i.dp, %i.em
  %i.eq = add i32 %i.dq, %i.em
  %i.er = mul i32 %i.am, %indvar256
  %i.es = insertelement <4 x i32> poison, i32 %i.er, i64 0
  %i.et = add <4 x i32> %i.es, %i.du
  %i.eu = mul nsw i32 %.0207214.us.us, %i.am
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader210.us.us
  %indvar258 = phi i32 [ %indvar.next259, %._crit_edge.us.us.us ], [ 0, %.preheader210.us.us ] ; 3 uses
  %.0206212.us.us.us = phi i32 [ %i.kh, %._crit_edge.us.us.us ], [ %i.dy, %.preheader210.us.us ] ; 2 uses
  %i.ev = mul i32 %i.ak, %indvar258               ; 4 uses
  %i.ew = add i32 %i.en, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 3                    ; 20 uses
  %scevgep263 = getelementptr i8, ptr %scevgep, i64 %i.ey ; 15 uses
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.ey ; 15 uses
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.ey
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.ey
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.ey
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.ey
  %i.ez = add i32 %i.eo, %i.ev
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 3                    ; 4 uses
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.fb
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.fb
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.ey
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.ey
  %i.fc = add i32 %i.ep, %i.ev
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 3                    ; 4 uses
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.fe
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.fe
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.ey
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.ey
  %i.ff = add i32 %i.eq, %i.ev
  %i.fg = sext i32 %i.ff to i64
  %i.fh = shl nsw i64 %i.fg, 3                    ; 4 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.fh
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fh
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.ey
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.ey
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.fh
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.fh
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.ey
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.ey
end_hunk_0
begin_hunk_1_@zero_grid:bb.a
  %i.bb = mul i32 %i.p, %indvar
  %i.bc = add i32 %i.au, %i.bb
  %i.bd = mul nsw i32 %.06065.us.us, %i.p
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader61.us.us
  %indvar88 = phi i32 [ %indvar.next89, %._crit_edge.us.us.us ], [ 0, %.preheader61.us.us ] ; 2 uses
  %.05963.us.us.us = phi i32 [ %i.ck, %._crit_edge.us.us.us ], [ %i.ad, %.preheader61.us.us ] ; 2 uses
  %i.be = mul nsw i32 %.05963.us.us.us, %i.n
  %i.bf = add i32 %i.be, %i.bd                    ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.bg = mul i32 %i.n, %indvar88
  %i.bh = add i32 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i32 %i.bh, %i.ar
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %invariant.op = sub i32 %i.bf, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = trunc i64 %index to i32
  %.reass = add i32 %i.bk, %invariant.op
  %i.bl = sext i32 %.reass to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x double> zeroinitializer, ptr %i.bm, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.bn, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %vector.scevcheck ], [ %i.ao, %.preheader.us.us.us ], [ %i.ba, %middle.block ] ; 3 uses
  %i.bp = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.bq = sub i32 %i.ax, %i.bp
  %i.br = sub i32 %i.az, %i.bp
  %xtraiter = and i32 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bs = trunc i64 %indvars.iv.prol to i32
  %i.bt = add i32 %i.bf, %i.bs
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bu
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !44
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !286

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bw = icmp ult i32 %i.br, 3
  br i1 %i.bw, label %._crit_edge.us.us.us, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op90 = add i32 1, %i.bf
  %invariant.op92 = add i32 2, %i.bf
  %invariant.op94 = add i32 3, %i.bf
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bx = trunc i64 %indvars.iv to i32
  %i.by = add i32 %i.bf, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bz
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !44
  %i.cb = trunc i64 %indvars.iv to i32
  %.reass91 = add i32 %i.cb, %invariant.op90
  %i.cc = sext i32 %.reass91 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cc
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !44
  %i.ce = trunc i64 %indvars.iv to i32
  %.reass93 = add i32 %i.ce, %invariant.op92
  %i.cf = sext i32 %.reass93 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.cf
  store double 0.000000e+00, ptr %i.cg, align 8, !tbaa !44
  %i.ch = trunc i64 %indvars.iv to i32
  %.reass95 = add i32 %i.ch, %invariant.op94
  %i.ci = sext i32 %.reass95 to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ci
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !44
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.am, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !287

._crit_edge.us.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ck = add nsw i32 %.05963.us.us.us, 1         ; 2 uses
  %exitcond76.not = icmp eq i32 %i.ck, %i.ak
  %indvar.next89 = add i32 %indvar88, 1
  br i1 %exitcond76.not, label %._crit_edge64.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !288

._crit_edge64.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.cl = add nsw i32 %.06065.us.us, 1            ; 2 uses
  %exitcond77.not = icmp eq i32 %i.cl, %i.ae
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond77.not, label %._crit_edge, label %.preheader61.us.us, !llvm.loop !289

._crit_edge:                                      ; preds = %._crit_edge64.split.us.us.us, %.preheader61.lr.ph, %bb.b
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge72, label %bb.b, !llvm.loop !290

._crit_edge72:                                    ; preds = %._crit_edge, %bb.a
  %i.cm = tail call i64 (...) @CycleTime() #10
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.b ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !63
  %i.cr = add i64 %i.cn, %i.cq
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_grid_to_scalar(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge100

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %broadcast.splatinsert138 = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat139 = shufflevector <2 x double> %broadcast.splatinsert138, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv119 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next120, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv119
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = getelementptr inbounds [216 x i8], ptr %i.k, i64 %i.b ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !65   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66   ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !67   ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !69   ; 2 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !70   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.h
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = add nsw i32 %i.n, 1
  %i.ad = add nsw i32 %i.ac, %i.p
  %i.ae = mul nsw i32 %i.r, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.af ; 16 uses
  %i.ah = sub nsw i32 0, %i.r                     ; 8 uses
  %i.ai = add i32 %i.u, %i.r                      ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader78.lr.ph, label %._crit_edge

.preheader78.lr.ph:                               ; preds = %bb.b
  %i.ak = add nsw i32 %i.w, %i.r                  ; 3 uses
  %i.al = icmp sgt i32 %i.ak, %i.ah
  %i.am = add i32 %i.x, %i.r                      ; 4 uses
  %i.an = icmp sgt i32 %i.am, %i.ah
  %or.cond = select i1 %i.al, i1 %i.an, i1 false
  br i1 %or.cond, label %.preheader78.us.us.preheader, label %._crit_edge

.preheader78.us.us.preheader:                     ; preds = %.preheader78.lr.ph
  %i.ao = sext i32 %i.ah to i64                   ; 8 uses
  %i.ap = sext i32 %i.x to i64                    ; 4 uses
  %i.aq = add i32 %i.x, -1
  %i.ar = shl i32 %i.r, 1
  %i.as = add i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = xor i32 %i.n, -1
  %i.au = sub i32 %i.at, %i.p
  %i.av = mul i32 %i.r, %i.au
  %i.aw = zext i32 %i.as to i64
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.ay = add i32 %i.x, -1
  %i.az = shl i32 %i.r, 1
  %i.ba = add i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = xor i32 %i.p, -1
  %i.bc = sub i32 %i.bb, %i.n
  %i.bd = mul i32 %i.r, %i.bc
  %i.be = zext i32 %i.ba to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = add i32 %i.x, -1
  %i.bh = shl i32 %i.r, 1
  %i.bi = add i32 %i.bg, %i.bh                    ; 3 uses
  %i.bj = xor i32 %i.n, -1
  %i.bk = sub i32 %i.bj, %i.p
  %i.bl = mul i32 %i.r, %i.bk
  %i.bm = zext i32 %i.bi to i64
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bo = add i32 %i.x, %i.r
  %i.bp = add i32 %i.x, -1
  %i.bq = add i32 %i.bp, %i.r
  %i.br = add i32 %i.x, %i.r
  %i.bs = add i32 %i.x, -1
  %i.bt = add i32 %i.bs, %i.r
  %i.bu = add i32 %i.x, %i.r
  %i.bv = add i32 %i.x, -1
  %i.bw = add i32 %i.bv, %i.r
  %min.iters.check164 = icmp ult i32 %i.bi, 3
  %n.vec167 = and i64 %i.bn, 8589934588           ; 3 uses
  %i.bx = add nsw i64 %n.vec167, %i.ao
  %cmp.n172 = icmp eq i64 %i.bn, %n.vec167
  %min.iters.check150 = icmp ult i32 %i.ba, 3
  %n.vec153 = and i64 %i.bf, 8589934588           ; 3 uses
  %i.by = add nsw i64 %n.vec153, %i.ao
  %cmp.n158 = icmp eq i64 %i.bf, %n.vec153
  %min.iters.check = icmp ult i32 %i.as, 3
  %n.vec = and i64 %i.ax, 8589934588              ; 3 uses
  %i.bz = add nsw i64 %n.vec, %i.ao
  %broadcast.splatinsert136 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat137 = shufflevector <2 x i64> %broadcast.splatinsert136, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert140 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat141 = shufflevector <2 x i64> %broadcast.splatinsert140, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat141, <i64 0, i64 1>
  %broadcast.splatinsert142 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat143 = shufflevector <2 x i32> %broadcast.splatinsert142, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction144 = add <2 x i32> %broadcast.splat143, <i32 0, i32 1>
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br label %.preheader78.us.us

.preheader78.us.us:                               ; preds = %.preheader78.us.us.preheader, %._crit_edge81.split.us.us.us
  %indvar = phi i32 [ 0, %.preheader78.us.us.preheader ], [ %indvar.next, %._crit_edge81.split.us.us.us ] ; 4 uses
  %.07485.us.us = phi i32 [ %i.ah, %.preheader78.us.us.preheader ], [ %i.fa, %._crit_edge81.split.us.us.us ] ; 4 uses
  %i.ca = mul i32 %i.p, %indvar
  %i.cb = add i32 %i.bl, %i.ca
  %i.cc = mul i32 %i.p, %indvar
  %i.cd = add i32 %i.bd, %i.cc
  %i.ce = mul i32 %i.p, %indvar
  %i.cf = add i32 %i.av, %i.ce
  %i.cg = mul nsw i32 %.07485.us.us, %i.p         ; 2 uses
  %.not76.us.us = icmp slt i32 %.07485.us.us, %i.u
  %.not76.fr.us.us = freeze i1 %.not76.us.us
  br i1 %.not76.fr.us.us, label %.preheader.us.us92.us, label %.preheader.us.us.us.us

.preheader.us.us92.us:                            ; preds = %.preheader78.us.us, %._crit_edge.us.us.us
  %indvar134 = phi i32 [ %indvar.next135, %._crit_edge.us.us.us ], [ 0, %.preheader78.us.us ] ; 3 uses
  %.07380.us.us93.us = phi i32 [ %i.em, %._crit_edge.us.us.us ], [ %i.ah, %.preheader78.us.us ] ; 4 uses
  %i.ch = mul nsw i32 %.07380.us.us93.us, %i.n
  %i.ci = add i32 %i.ch, %i.cg                    ; 10 uses
  %i.cj = or i32 %.07380.us.us93.us, %.07485.us.us ; 4 uses
  %.not75.us.us.us = icmp slt i32 %.07380.us.us93.us, %i.w
  %.not75.fr.us.us.us = freeze i1 %.not75.us.us.us
  br i1 %.not75.fr.us.us.us, label %.lr.ph.split.us84.us.us.preheader, label %.lr.ph.split.us.us.us.us.preheader

.lr.ph.split.us.us.us.us.preheader:               ; preds = %.preheader.us.us92.us
  %i.ck = mul i32 %i.n, %indvar134
  %i.cl = add i32 %i.cd, %i.ck                    ; 2 uses
  %i.cm = add i32 %i.cl, %i.ba
  %i.cn = icmp slt i32 %i.cm, %i.cl
  %or.cond175 = select i1 %min.iters.check150, i1 true, i1 %i.cn
  br i1 %or.cond175, label %.lr.ph.split.us.us.us.us.preheader179, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.split.us.us.us.us.preheader
  %invariant.op194 = sub i32 %i.ci, %i.r
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next156, %vector.body154 ] ; 2 uses
  %i.co = trunc i64 %index155 to i32
  %.reass195 = add i32 %i.co, %invariant.op194
  %i.cp = sext i32 %.reass195 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <2 x double> zeroinitializer, ptr %i.cq, align 8, !tbaa !44
  store <2 x double> zeroinitializer, ptr %i.cr, align 8, !tbaa !44
  %index.next156 = add nuw i64 %index155, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next156, %n.vec153
  br i1 %i.cs, label %middle.block157, label %vector.body154, !llvm.loop !291

middle.block157:                                  ; preds = %vector.body154
  br i1 %cmp.n158, label %._crit_edge.us.us.us, label %.lr.ph.split.us.us.us.us.preheader179

.lr.ph.split.us.us.us.us.preheader179:            ; preds = %.lr.ph.split.us.us.us.us.preheader, %middle.block157
  %indvars.iv107.ph = phi i64 [ %i.ao, %.lr.ph.split.us.us.us.us.preheader ], [ %i.by, %middle.block157 ] ; 3 uses
  %i.ct = trunc i64 %indvars.iv107.ph to i32      ; 2 uses
  %i.cu = sub i32 %i.br, %i.ct
  %i.cv = sub i32 %i.bt, %i.ct
  %xtraiter182 = and i32 %i.cu, 3                 ; 2 uses
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.split.us.us.us.us.prol.loopexit, label %.lr.ph.split.us.us.us.us.prol

.lr.ph.split.us.us.us.us.prol:                    ; preds = %.lr.ph.split.us.us.us.us.preheader179, %.lr.ph.split.us.us.us.us.prol
  %indvars.iv107.prol = phi i64 [ %indvars.iv.next108.prol, %.lr.ph.split.us.us.us.us.prol ], [ %indvars.iv107.ph, %.lr.ph.split.us.us.us.us.preheader179 ] ; 2 uses
  %prol.iter184 = phi i32 [ %prol.iter184.next, %.lr.ph.split.us.us.us.us.prol ], [ 0, %.lr.ph.split.us.us.us.us.preheader179 ]
  %i.cw = trunc nsw i64 %indvars.iv107.prol to i32
  %i.cx = add i32 %i.ci, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cy
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !44
  %indvars.iv.next108.prol = add nsw i64 %indvars.iv107.prol, 1 ; 2 uses
  %prol.iter184.next = add i32 %prol.iter184, 1   ; 2 uses
  %prol.iter184.cmp.not = icmp eq i32 %prol.iter184.next, %xtraiter182
  br i1 %prol.iter184.cmp.not, label %.lr.ph.split.us.us.us.us.prol.loopexit, label %.lr.ph.split.us.us.us.us.prol, !llvm.loop !292

.lr.ph.split.us.us.us.us.prol.loopexit:           ; preds = %.lr.ph.split.us.us.us.us.prol, %.lr.ph.split.us.us.us.us.preheader179
  %indvars.iv107.unr = phi i64 [ %indvars.iv107.ph, %.lr.ph.split.us.us.us.us.preheader179 ], [ %indvars.iv.next108.prol, %.lr.ph.split.us.us.us.us.prol ]
  %i.da = icmp ult i32 %i.cv, 3
  br i1 %i.da, label %._crit_edge.us.us.us, label %.lr.ph.split.us.us.us.us.preheader179.new

.lr.ph.split.us.us.us.us.preheader179.new:        ; preds = %.lr.ph.split.us.us.us.us.prol.loopexit
  %invariant.op196 = add i32 1, %i.ci
  %invariant.op198 = add i32 2, %i.ci
  %invariant.op200 = add i32 3, %i.ci
  br label %.lr.ph.split.us.us.us.us

.lr.ph.split.us84.us.us.preheader:                ; preds = %.preheader.us.us92.us
  %i.db = mul i32 %i.n, %indvar134
  %i.dc = add i32 %i.cf, %i.db                    ; 2 uses
  %i.dd = add i32 %i.dc, %i.as
  %i.de = icmp slt i32 %i.dd, %i.dc
  %or.cond177 = select i1 %min.iters.check, i1 true, i1 %i.de
  br i1 %or.cond177, label %.lr.ph.split.us84.us.us.preheader178, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us84.us.us.preheader
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op202 = sub i32 %i.ci, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind145 = phi <2 x i32> [ %induction144, %vector.ph ], [ %vec.ind.next147, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %step.add146 = add <2 x i32> %vec.ind145, splat (i32 2)
  %i.df = trunc i64 %index to i32
  %.reass203 = add i32 %i.df, %invariant.op202
  %i.dg = or <2 x i32> %broadcast.splat, %vec.ind145
  %i.dh = or <2 x i32> %broadcast.splat, %step.add146
  %i.di = icmp sgt <2 x i32> %i.dg, splat (i32 -1)
  %i.dj = icmp sgt <2 x i32> %i.dh, splat (i32 -1)
  %i.dk = icmp slt <2 x i64> %vec.ind, %broadcast.splat137
  %i.dl = icmp slt <2 x i64> %step.add, %broadcast.splat137
  %i.dm = select <2 x i1> %i.di, <2 x i1> %i.dk, <2 x i1> zeroinitializer
  %i.dn = select <2 x i1> %i.dj, <2 x i1> %i.dl, <2 x i1> zeroinitializer
  %i.do = select <2 x i1> %i.dm, <2 x double> %broadcast.splat139, <2 x double> zeroinitializer
  %i.dp = select <2 x i1> %i.dn, <2 x double> %broadcast.splat139, <2 x double> zeroinitializer
  %i.dq = sext i32 %.reass203 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <2 x double> %i.do, ptr %i.dr, align 8, !tbaa !44
  store <2 x double> %i.dp, ptr %i.ds, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next147 = add <2 x i32> %vec.ind145, splat (i32 4)
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %.lr.ph.split.us84.us.us.preheader178

.lr.ph.split.us84.us.us.preheader178:             ; preds = %.lr.ph.split.us84.us.us.preheader, %middle.block
  %indvars.iv112.ph = phi i64 [ %i.ao, %.lr.ph.split.us84.us.us.preheader ], [ %i.bz, %middle.block ] ; 5 uses
  %i.du = trunc i64 %indvars.iv112.ph to i32      ; 2 uses
  %i.dv = sub i32 %i.bu, %i.du
  %xtraiter185 = and i32 %i.dv, 1
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.split.us84.us.us.prol.loopexit, label %.lr.ph.split.us84.us.us.prol

.lr.ph.split.us84.us.us.prol:                     ; preds = %.lr.ph.split.us84.us.us.preheader178
  %i.dw = trunc nsw i64 %indvars.iv112.ph to i32  ; 2 uses
  %i.dx = add i32 %i.ci, %i.dw
  %i.dy = or i32 %i.cj, %i.dw
  %or.cond3.not.us.us.us.prol = icmp sgt i32 %i.dy, -1
  %.not.us.us.us.prol = icmp slt i64 %indvars.iv112.ph, %i.ap
  %or.cond.us.us.us.prol = select i1 %or.cond3.not.us.us.us.prol, i1 %.not.us.us.us.prol, i1 false
  %unswitched.select.us.us.us.prol = select i1 %or.cond.us.us.us.prol, double %3, double 0.000000e+00
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dz
  store double %unswitched.select.us.us.us.prol, ptr %i.ea, align 8, !tbaa !44
  %indvars.iv.next113.prol = add nsw i64 %indvars.iv112.ph, 1
  br label %.lr.ph.split.us84.us.us.prol.loopexit

.lr.ph.split.us84.us.us.prol.loopexit:            ; preds = %.lr.ph.split.us84.us.us.prol, %.lr.ph.split.us84.us.us.preheader178
  %indvars.iv112.unr = phi i64 [ %indvars.iv112.ph, %.lr.ph.split.us84.us.us.preheader178 ], [ %indvars.iv.next113.prol, %.lr.ph.split.us84.us.us.prol ]
  %i.eb = icmp eq i32 %i.bw, %i.du
  br i1 %i.eb, label %._crit_edge.us.us.us, label %.lr.ph.split.us84.us.us

end_hunk_1
