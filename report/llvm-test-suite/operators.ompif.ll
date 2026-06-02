begin_hunk_0_@rebuild_lambda:bb.a
  %or.cond = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond, label %.preheader148.us.us.preheader, label %._crit_edge

.preheader148.us.us.preheader:                    ; preds = %.preheader148.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64
  %i.bb = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader148.us.us

.preheader148.us.us:                              ; preds = %.preheader148.us.us.preheader, %._crit_edge153.split.us.us.us
  %.0144156.us.us = phi double [ %.3.us.us.us, %._crit_edge153.split.us.us.us ], [ -1.000000e+00, %.preheader148.us.us.preheader ]
  %.0146155.us.us = phi i32 [ %i.dj, %._crit_edge153.split.us.us.us ], [ 0, %.preheader148.us.us.preheader ] ; 2 uses
  %i.bd = mul nsw i32 %.0146155.us.us, %i.q
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader148.us.us
  %.0143152.us.us.us = phi i32 [ 0, %.preheader148.us.us ], [ %i.di, %._crit_edge.us.us.us ] ; 2 uses
  %.1145151.us.us.us = phi double [ %.0144156.us.us, %.preheader148.us.us ], [ %.3.us.us.us, %._crit_edge.us.us.us ]
  %i.be = mul nsw i32 %.0143152.us.us.us, %i.o
  %i.bf = add i32 %i.be, %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.2149.us.us.us = phi double [ %.3.us.us.us, %bb.c ], [ %.1145151.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = add i32 %i.bf, %i.bg                    ; 3 uses
  %i.bi = sext i32 %i.bh to i64                   ; 5 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %i.bn = add nsw i32 %i.bh, %i.o
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %i.br = load <2 x double>, ptr %i.bj, align 8, !tbaa !44 ; 2 uses
  %i.bs = load double, ptr %i.bk, align 8, !tbaa !44
  %i.bt = shufflevector <2 x double> %i.br, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = insertelement <4 x double> %i.bt, double %i.bm, i64 2
  %i.bv = insertelement <4 x double> %i.bu, double %i.bq, i64 3
  %i.bw = fmul <4 x double> %i.bc, %i.bv
  %i.bx = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.bw) ; 4 uses
  %i.by = extractelement <4 x double> %i.bx, i64 0
  %i.bz = extractelement <4 x double> %i.bx, i64 1
  %i.ca = fadd double %i.by, %i.bz
  %i.cb = extractelement <4 x double> %i.bx, i64 2
  %i.cc = fadd double %i.ca, %i.cb
  %i.cd = extractelement <4 x double> %i.bx, i64 3
  %i.ce = fadd double %i.cc, %i.cd
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bi
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !44 ; 2 uses
  %i.ch = fmul double %i.az, %i.cg
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fadd double %i.ce, %i.ci
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
  %.0201229 = phi i32 [ 0, %bb.c ], [ %i.kn, %._crit_edge228 ] ; 4 uses
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
  %6 = extractelement <2 x i32> %i.x, i64 0       ; 12 uses
  %i.ak = add i32 %6, 1
  %7 = extractelement <2 x i32> %i.x, i64 1       ; 12 uses
  %i.al = add i32 %i.ak, %7                       ; 3 uses
  %i.am = mul i32 %i.z, %i.al
  %i.an = sext i32 %i.am to i64                   ; 11 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 5 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.an ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42 ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.an ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 5 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.an ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.an ; 2 uses
  %i.be = add nsw i32 %i.z, %.0201229
  %i.bf = icmp sgt i32 %i.z, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge224

.lr.ph:                                           ; preds = %bb.e
  %i.bg = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.bh = fmul double %i.bg, %i.bg
  %i.bi = fdiv double 1.000000e+00, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.k ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.bl = fmul double %5, %i.bi                   ; 2 uses
  %i.bm = sub nsw i32 1, %i.z                     ; 3 uses
  %i.bn = add i32 %i.af, -1
  %i.bo = add i32 %i.bn, %i.z
  %i.bp = add i32 %i.ae, -1
  %i.bq = add i32 %i.bp, %i.z
  %i.br = add i32 %i.ac, -1
  %i.bs = add i32 %i.br, %i.z
  %i.bt = add i32 %i.af, -3
  %i.bu = shl nuw i32 %i.z, 1
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = add i32 %6, %7
  %i.bx = mul i32 %i.bw, %i.bm
  %i.by = add <2 x i32> %i.x, splat (i32 1)
  %i.bz = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cb = shufflevector <2 x i32> %i.by, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>, <4 x i32> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cd = add <4 x i32> %i.ca, %i.cc
  %i.ce = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cg = sub <4 x i32> %i.cd, %i.cf              ; 2 uses
  %i.ch = shl nsw i64 %i.an, 3                    ; 28 uses
  %i.ci = add i32 %6, %7
  %i.cj = mul i32 %i.ci, %i.bm                    ; 4 uses
  %i.ck = add i32 %i.cj, 1
  %i.cl = sub i32 %i.ck, %i.z
  %i.cm = add i32 %i.af, -3
  %i.cn = shl nuw i32 %i.z, 1
  %i.co = add i32 %i.cm, %i.cn
  %scevgep268 = getelementptr i8, ptr %i.aq, i64 %i.ch
  %scevgep270 = getelementptr i8, ptr %i.aq, i64 8
  %scevgep271 = getelementptr i8, ptr %scevgep270, i64 %i.ch
  %i.cp = sext i32 %7 to i64
  %i.cq = sub nsw i64 %i.an, %i.cp
  %i.cr = shl nsw i64 %i.cq, 3                    ; 2 uses
  %i.cs = add i32 %7, 1
  %i.ct = add i32 %i.cs, %i.cj
  %i.cu = sub i32 %i.ct, %i.z
  %i.cv = sext i32 %6 to i64
  %i.cw = sub nsw i64 %i.an, %i.cv
  %i.cx = shl nsw i64 %i.cw, 3                    ; 2 uses
  %i.cy = add i32 %6, 1
  %i.cz = add i32 %i.cy, %i.cj
  %i.da = sub i32 %i.cz, %i.z
  %i.db = add i32 %i.cj, 2
  %i.dc = sub i32 %i.db, %i.z
  %scevgep311 = getelementptr i8, ptr %i.at, i64 %i.ch
  %scevgep313 = getelementptr i8, ptr %i.at, i64 8
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.ch
  %scevgep317 = getelementptr i8, ptr %i.at, i64 %i.ch
  %scevgep319 = getelementptr i8, ptr %i.at, i64 8
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.ch
  %scevgep323 = getelementptr i8, ptr %i.aw, i64 %i.ch
  %scevgep325 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.ch
  %scevgep329 = getelementptr i8, ptr %i.aw, i64 %i.ch
  %scevgep331 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep332 = getelementptr i8, ptr %scevgep331, i64 %i.ch
  %scevgep335 = getelementptr i8, ptr %i.az, i64 %i.ch
  %scevgep337 = getelementptr i8, ptr %i.az, i64 8
  %scevgep338 = getelementptr i8, ptr %scevgep337, i64 %i.ch
  %scevgep341 = getelementptr i8, ptr %i.az, i64 %i.ch
  %scevgep343 = getelementptr i8, ptr %i.az, i64 8
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ch
  %scevgep347 = getelementptr i8, ptr %i.bc, i64 %i.ch
  %scevgep349 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep350 = getelementptr i8, ptr %scevgep349, i64 %i.ch
  %scevgep353 = getelementptr i8, ptr %i.aj, i64 %i.ch
  %scevgep355 = getelementptr i8, ptr %i.aj, i64 8
  %scevgep356 = getelementptr i8, ptr %scevgep355, i64 %i.ch
  %i.dd = add i32 %i.af, -3
  %i.de = shl nuw i32 %i.z, 1
  %i.df = add i32 %i.dd, %i.de
  %broadcast.splatinsert414 = insertelement <2 x double> poison, double %i.bl, i64 0
  %broadcast.splat415 = shufflevector <2 x double> %broadcast.splatinsert414, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %._crit_edge ] ; 6 uses
  %indvars.iv240 = phi i32 [ %i.bs, %.lr.ph ], [ %indvars.iv.next241, %._crit_edge ] ; 2 uses
  %indvars.iv237 = phi i32 [ %i.bq, %.lr.ph ], [ %indvars.iv.next238, %._crit_edge ] ; 2 uses
  %indvars.iv235 = phi i32 [ %i.bo, %.lr.ph ], [ %indvars.iv.next236, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i32 [ %i.bm, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0204.in221 = phi i32 [ %i.z, %.lr.ph ], [ %.0204222, %._crit_edge ] ; 2 uses
  %.0208220 = phi i32 [ %.0201229, %.lr.ph ], [ %i.kh, %._crit_edge ] ; 2 uses
  %i.dg = shl i32 %indvar, 1
  %i.dh = sub i32 %i.df, %i.dg                    ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %i.dk = mul i32 %i.al, %indvar                  ; 4 uses
  %i.dl = add i32 %i.cl, %i.dk
  %i.dm = add i32 %i.cu, %i.dk
  %i.dn = add i32 %i.da, %i.dk
  %i.do = add i32 %i.dc, %i.dk
  %i.dp = shl i32 %indvar, 1
  %i.dq = sub i32 %i.bv, %i.dp
  %i.dr = mul i32 %i.al, %indvar
  %i.ds = insertelement <4 x i32> poison, i32 %i.dr, i64 0
  %i.dt = zext i32 %indvars.iv to i64             ; 4 uses
  %.0204222 = add nsw i32 %.0204.in221, -1        ; 4 uses
  %i.du = and i32 %.0208220, 1
  %i.dv = icmp eq i32 %i.du, 0                    ; 2 uses
  %.pn.in = select i1 %i.dv, ptr %i.bj, ptr %i.bk
  %.pn209.in = select i1 %i.dv, ptr %i.bk, ptr %i.bj
  %.pn209 = load ptr, ptr %.pn209.in, align 8, !tbaa !42 ; 3 uses
  %.0202 = getelementptr inbounds [8 x i8], ptr %.pn209, i64 %i.an ; 2 uses
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !42 ; 13 uses
  %.0203 = getelementptr inbounds [8 x i8], ptr %.pn, i64 %i.an ; 12 uses
  %i.dw = sub nsw i32 1, %.0204.in221             ; 5 uses
  %i.dx = add nsw i32 %.0204222, %i.ac
  %i.dy = icmp slt i32 %i.dw, %i.dx
  %i.dz = add nsw i32 %.0204222, %i.ae
  %i.ea = icmp slt i32 %i.dw, %i.dz
  %or.cond = select i1 %i.dy, i1 %i.ea, i1 false
  %i.eb = add nsw i32 %.0204222, %i.af
  %i.ec = icmp slt i32 %i.dw, %i.eb
  %or.cond255 = select i1 %or.cond, i1 %i.ec, i1 false
  br i1 %or.cond255, label %.preheader210.us.us.preheader, label %._crit_edge

.preheader210.us.us.preheader:                    ; preds = %bb.f
  %i.ed = shl i32 %indvar, 1
  %i.ee = sub i32 %i.co, %i.ed
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3                ; 16 uses
  %scevgep = getelementptr i8, ptr %.pn209, i64 %i.ch
  %scevgep264 = getelementptr i8, ptr %.pn209, i64 8
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.ch
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.eg
  %scevgep272 = getelementptr i8, ptr %scevgep271, i64 %i.eg
  %scevgep274 = getelementptr i8, ptr %.pn, i64 %i.cr
  %scevgep276 = getelementptr i8, ptr %.pn, i64 8
  %scevgep277 = getelementptr i8, ptr %scevgep276, i64 %i.cr
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.eg
  %scevgep280 = getelementptr i8, ptr %.pn, i64 %i.ch
  %scevgep282 = getelementptr i8, ptr %.pn, i64 8
  %scevgep283 = getelementptr i8, ptr %scevgep282, i64 %i.ch
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.eg
  %scevgep286 = getelementptr i8, ptr %.pn, i64 %i.cx
  %scevgep288 = getelementptr i8, ptr %.pn, i64 8
  %scevgep289 = getelementptr i8, ptr %scevgep288, i64 %i.cx
  %scevgep290 = getelementptr i8, ptr %scevgep289, i64 %i.eg
  %scevgep292 = getelementptr i8, ptr %.pn, i64 %i.ch
  %scevgep294 = getelementptr i8, ptr %.pn, i64 8
  %scevgep295 = getelementptr i8, ptr %scevgep294, i64 %i.ch
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.eg
  %scevgep298 = getelementptr i8, ptr %.pn, i64 -8
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.ch
  %scevgep301 = getelementptr i8, ptr %.pn, i64 8
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.ch
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.eg
  %scevgep305 = getelementptr i8, ptr %.pn, i64 %i.ch
  %scevgep307 = getelementptr i8, ptr %.pn, i64 8
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.ch
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.eg
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.eg
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.eg
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.eg
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.eg
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.eg
  %scevgep345 = getelementptr i8, ptr %scevgep344, i64 %i.eg
  %scevgep351 = getelementptr i8, ptr %scevgep350, i64 %i.eg
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.eg
  %i.eh = insertelement <4 x i32> poison, i32 %i.dq, i64 0
  %i.ei = shufflevector <4 x i32> %i.eh, <4 x i32> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.dh, 5
  %invariant.op431 = add <4 x i32> %i.cg, %i.ei
  %n.vec = and i64 %i.dj, 8589934590              ; 3 uses
  %i.ej = add nuw nsw i64 %n.vec, %i.dt
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br label %.preheader210.us.us

.preheader210.us.us:                              ; preds = %.preheader210.us.us.preheader, %._crit_edge213.split.us.us.us
  %indvar256 = phi i32 [ 0, %.preheader210.us.us.preheader ], [ %indvar.next257, %._crit_edge213.split.us.us.us ] ; 3 uses
  %.0207214.us.us = phi i32 [ %i.dw, %.preheader210.us.us.preheader ], [ %i.kg, %._crit_edge213.split.us.us.us ] ; 2 uses
  %i.ek = mul i32 %7, %indvar256                  ; 4 uses
  %i.el = add i32 %i.dl, %i.ek
  %i.em = add i32 %i.dm, %i.ek
  %i.en = add i32 %i.dn, %i.ek
  %i.eo = add i32 %i.do, %i.ek
  %i.ep = mul i32 %7, %indvar256
  %i.eq = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.er = add <4 x i32> %i.eq, %i.ds
  %i.es = mul nsw i32 %.0207214.us.us, %7
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader210.us.us
  %indvar258 = phi i32 [ %indvar.next259, %._crit_edge.us.us.us ], [ 0, %.preheader210.us.us ] ; 3 uses
  %.0206212.us.us.us = phi i32 [ %i.kf, %._crit_edge.us.us.us ], [ %i.dw, %.preheader210.us.us ] ; 2 uses
  %i.et = mul i32 %6, %indvar258                  ; 4 uses
  %i.eu = add i32 %i.el, %i.et
  %i.ev = sext i32 %i.eu to i64
  %i.ew = shl nsw i64 %i.ev, 3                    ; 20 uses
  %scevgep263 = getelementptr i8, ptr %scevgep, i64 %i.ew ; 15 uses
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.ew ; 15 uses
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.ew
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.ew
  %scevgep275 = getelementptr i8, ptr %scevgep274, i64 %i.ew
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.ew
  %i.ex = add i32 %i.em, %i.et
  %i.ey = sext i32 %i.ex to i64
  %i.ez = shl nsw i64 %i.ey, 3                    ; 4 uses
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.ez
  %scevgep285 = getelementptr i8, ptr %scevgep284, i64 %i.ez
  %scevgep287 = getelementptr i8, ptr %scevgep286, i64 %i.ew
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.ew
  %i.fa = add i32 %i.en, %i.et
  %i.fb = sext i32 %i.fa to i64
  %i.fc = shl nsw i64 %i.fb, 3                    ; 4 uses
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.fc
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.fc
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.ew
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.ew
  %i.fd = add i32 %i.eo, %i.et
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 3                    ; 4 uses
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.ff
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.ff
  %scevgep312 = getelementptr i8, ptr %scevgep311, i64 %i.ew
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.ew
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.ff
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.ff
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.ew
  %scevgep328 = getelementptr i8, ptr %scevgep327, i64 %i.ew
  %scevgep330 = getelementptr i8, ptr %scevgep329, i64 %i.fc
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.fc
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.ew
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.ew
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.ez
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.ez
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.ew
  %scevgep352 = getelementptr i8, ptr %scevgep351, i64 %i.ew
  %scevgep354 = getelementptr i8, ptr %scevgep353, i64 %i.ew
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.ew
  %i.fg = mul nsw i32 %.0206212.us.us.us, %6
  %i.fh = add i32 %i.fg, %i.es                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.us
  %i.fi = mul i32 %6, %indvar258
  %i.fj = insertelement <4 x i32> poison, i32 %i.fi, i64 0
  %i.fk = add <4 x i32> %i.fj, %i.er
  %i.fl = shufflevector <4 x i32> %i.fk, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fm = add <4 x i32> %i.fl, %i.cg
  %.reass432 = add <4 x i32> %i.fl, %invariant.op431
  %i.fn = icmp slt <4 x i32> %.reass432, %i.fm
  %i.fo = bitcast <4 x i1> %i.fn to i4
  %.not = icmp eq i4 %i.fo, 0
  br i1 %.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep263, %scevgep273
  %bound1 = icmp ult ptr %scevgep269, %scevgep267
  %found.conflict = and i1 %bound0, %bound1
  %bound0359 = icmp ult ptr %scevgep263, %scevgep279
  %bound1360 = icmp ult ptr %scevgep275, %scevgep267
  %found.conflict361 = and i1 %bound0359, %bound1360
  %conflict.rdx = or i1 %found.conflict, %found.conflict361
  %bound0362 = icmp ult ptr %scevgep263, %scevgep285
  %bound1363 = icmp ult ptr %scevgep281, %scevgep267
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx, %found.conflict364
  %bound0366 = icmp ult ptr %scevgep263, %scevgep291
  %bound1367 = icmp ult ptr %scevgep287, %scevgep267
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %scevgep263, %scevgep297
  %bound1371 = icmp ult ptr %scevgep293, %scevgep267
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %scevgep263, %scevgep304
  %bound1375 = icmp ult ptr %scevgep300, %scevgep267
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %scevgep263, %scevgep310
  %bound1379 = icmp ult ptr %scevgep306, %scevgep267
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  %bound0382 = icmp ult ptr %scevgep263, %scevgep316
  %bound1383 = icmp ult ptr %scevgep312, %scevgep267
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  %bound0386 = icmp ult ptr %scevgep263, %scevgep322
  %bound1387 = icmp ult ptr %scevgep318, %scevgep267
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %scevgep263, %scevgep328
  %bound1391 = icmp ult ptr %scevgep324, %scevgep267
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %scevgep263, %scevgep334
  %bound1395 = icmp ult ptr %scevgep330, %scevgep267
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %scevgep263, %scevgep340
  %bound1399 = icmp ult ptr %scevgep336, %scevgep267
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %scevgep263, %scevgep346
  %bound1403 = icmp ult ptr %scevgep342, %scevgep267
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  %bound0406 = icmp ult ptr %scevgep263, %scevgep352
  %bound1407 = icmp ult ptr %scevgep348, %scevgep267
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx405, %found.conflict408
  %bound0410 = icmp ult ptr %scevgep263, %scevgep358
  %bound1411 = icmp ult ptr %scevgep354, %scevgep267
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %invariant.op = add i32 %indvars.iv, %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = trunc i64 %index to i32
  %.reass = add i32 %i.fp, %invariant.op          ; 6 uses
  %i.fq = sext i32 %.reass to i64                 ; 8 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.fq
  %wide.load = load <2 x double>, ptr %i.fr, align 8, !tbaa !44, !alias.scope !79
  %i.fs = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.fq ; 2 uses
  %wide.load416 = load <2 x double>, ptr %i.ft, align 8, !tbaa !44, !alias.scope !82 ; 8 uses
  %i.fu = add nsw i32 %.reass, 1
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.fv
  %wide.load417 = load <2 x double>, ptr %i.fw, align 8, !tbaa !44, !alias.scope !84
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.fv
  %wide.load418 = load <2 x double>, ptr %i.fx, align 8, !tbaa !44, !alias.scope !86
  %i.fy = fsub <2 x double> %wide.load418, %wide.load416
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.fq
  %wide.load419 = load <2 x double>, ptr %i.fz, align 8, !tbaa !44, !alias.scope !88
  %i.ga = getelementptr i8, ptr %i.ft, i64 -8
  %wide.load420 = load <2 x double>, ptr %i.ga, align 8, !tbaa !44, !alias.scope !82
  %i.gb = fsub <2 x double> %wide.load416, %wide.load420
  %i.gc = fneg <2 x double> %i.gb
  %i.gd = fmul <2 x double> %wide.load419, %i.gc
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load417, <2 x double> %i.fy, <2 x double> %i.gd)
  %i.gf = add nsw i32 %.reass, %6
  %i.gg = sext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.gg
  %wide.load421 = load <2 x double>, ptr %i.gh, align 8, !tbaa !44, !alias.scope !90
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.gg
  %wide.load422 = load <2 x double>, ptr %i.gi, align 8, !tbaa !44, !alias.scope !92
  %i.gj = fsub <2 x double> %wide.load422, %wide.load416
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load421, <2 x double> %i.gj, <2 x double> %i.ge)
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.fq
  %wide.load423 = load <2 x double>, ptr %i.gl, align 8, !tbaa !44, !alias.scope !94
  %i.gm = sub nsw i32 %.reass, %6
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.gn
  %wide.load424 = load <2 x double>, ptr %i.go, align 8, !tbaa !44, !alias.scope !96
  %i.gp = fsub <2 x double> %wide.load416, %wide.load424
  %i.gq = fneg <2 x double> %wide.load423
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gp, <2 x double> %i.gk)
  %i.gs = add nsw i32 %.reass, %7
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.gt
  %wide.load425 = load <2 x double>, ptr %i.gu, align 8, !tbaa !44, !alias.scope !98
  %i.gv = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.gt
  %wide.load426 = load <2 x double>, ptr %i.gv, align 8, !tbaa !44, !alias.scope !100
  %i.gw = fsub <2 x double> %wide.load426, %wide.load416
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load425, <2 x double> %i.gw, <2 x double> %i.gr)
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fq
  %wide.load427 = load <2 x double>, ptr %i.gy, align 8, !tbaa !44, !alias.scope !102
  %i.gz = sub nsw i32 %.reass, %7
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.ha
  %wide.load428 = load <2 x double>, ptr %i.hb, align 8, !tbaa !44, !alias.scope !104
  %i.hc = fsub <2 x double> %wide.load416, %wide.load428
  %i.hd = fneg <2 x double> %wide.load427
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.hc, <2 x double> %i.gx)
  %i.hf = fneg <2 x double> %i.he
  %i.hg = fmul <2 x double> %broadcast.splat415, %i.hf
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %wide.load416, <2 x double> %i.hg)
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fq
  %wide.load429 = load <2 x double>, ptr %i.hi, align 8, !tbaa !44, !alias.scope !106
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.fq
  %wide.load430 = load <2 x double>, ptr %i.hj, align 8, !tbaa !44, !alias.scope !108
  %i.hk = fsub <2 x double> %i.hh, %wide.load430
  %i.hl = fmul <2 x double> %wide.load429, splat (double f0xBFE5555555555555)
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hk, <2 x double> %wide.load416)
  %i.hn = getelementptr inbounds [8 x i8], ptr %.0202, i64 %i.fq
  store <2 x double> %i.hm, ptr %i.hn, align 8, !tbaa !44, !alias.scope !110, !noalias !112
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv232.ph = phi i64 [ %i.dt, %vector.memcheck ], [ %i.dt, %vector.scevcheck ], [ %i.dt, %.preheader.us.us.us ], [ %i.ej, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %scalar.ph ], [ %indvars.iv232.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hp = trunc i64 %indvars.iv232 to i32
  %i.hq = add i32 %i.fh, %i.hp                    ; 6 uses
  %i.hr = sext i32 %i.hq to i64                   ; 8 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !44
  %i.hu = fmul double %4, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.hr ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !44 ; 8 uses
  %i.hx = add nsw i32 %i.hq, 1
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !44
  %i.ib = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.hy
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !44
  %i.id = fsub double %i.ic, %i.hw
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.hr
  %i.if = load double, ptr %i.ie, align 8, !tbaa !44
  %i.ig = getelementptr i8, ptr %i.hv, i64 -8
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !44
  %i.ii = fsub double %i.hw, %i.ih
  %i.ij = fneg double %i.ii
  %i.ik = fmul double %i.if, %i.ij
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.id, double %i.ik)
  %i.im = add nsw i32 %i.hq, %6
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !44
  %i.iq = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.in
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !44
  %i.is = fsub double %i.ir, %i.hw
  %i.it = tail call double @llvm.fmuladd.f64(double %i.ip, double %i.is, double %i.il)
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.hr
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !44
  %i.iw = sub nsw i32 %i.hq, %6
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !44
  %i.ja = fsub double %i.hw, %i.iz
  %i.jb = fneg double %i.iv
  %i.jc = tail call double @llvm.fmuladd.f64(double %i.jb, double %i.ja, double %i.it)
  %i.jd = add nsw i32 %i.hq, %7
  %i.je = sext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !44
  %i.jh = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.je
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !44
  %i.jj = fsub double %i.ji, %i.hw
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.jj, double %i.jc)
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.hr
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !44
  %i.jn = sub nsw i32 %i.hq, %7
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [8 x i8], ptr %.0203, i64 %i.jo
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !44
  %i.jr = fsub double %i.hw, %i.jq
  %i.js = fneg double %i.jm
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.js, double %i.jr, double %i.jk)
  %i.ju = fneg double %i.jt
  %i.jv = fmul double %i.bl, %i.ju
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.hw, double %i.jv)
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.hr
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !44
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.hr
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !44
  %i.kb = fsub double %i.jw, %i.ka
  %i.kc = fmul double %i.jy, f0xBFE5555555555555
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.kb, double %i.hw)
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0202, i64 %i.hr
  store double %i.kd, ptr %i.ke, align 8, !tbaa !44
  %indvars.iv.next233 = add i64 %indvars.iv232, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next233 to i32
  %exitcond.not = icmp eq i32 %indvars.iv235, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !114

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.kf = add nsw i32 %.0206212.us.us.us, 1       ; 2 uses
  %exitcond239.not = icmp eq i32 %i.kf, %indvars.iv237
  %indvar.next259 = add i32 %indvar258, 1
  br i1 %exitcond239.not, label %._crit_edge213.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !115

._crit_edge213.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.kg = add nsw i32 %.0207214.us.us, 1          ; 2 uses
  %exitcond242.not = icmp eq i32 %i.kg, %indvars.iv240
  %indvar.next257 = add i32 %indvar256, 1
  br i1 %exitcond242.not, label %._crit_edge, label %.preheader210.us.us, !llvm.loop !116

._crit_edge:                                      ; preds = %._crit_edge213.split.us.us.us, %bb.f
  %i.kh = add nsw i32 %.0208220, 1                ; 2 uses
  %i.ki = icmp slt i32 %i.kh, %i.be
  %indvars.iv.next = add i32 %indvars.iv, 1
  %indvars.iv.next236 = add i32 %indvars.iv235, -1
  %indvars.iv.next238 = add i32 %indvars.iv237, -1
  %indvars.iv.next241 = add i32 %indvars.iv240, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ki, label %bb.f, label %._crit_edge224, !llvm.loop !117

._crit_edge224:                                   ; preds = %._crit_edge, %bb.e
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond246.not, label %._crit_edge228, label %bb.e, !llvm.loop !118

._crit_edge228:                                   ; preds = %._crit_edge224, %bb.d
  %i.kj = tail call i64 (...) @CycleTime() #10
  %i.kk = sub i64 %i.kj, %i.o
  %i.kl = load i64, ptr %i.l, align 8, !tbaa !63
  %i.km = add i64 %i.kk, %i.kl
  store i64 %i.km, ptr %i.l, align 8, !tbaa !63
  %i.kn = add nsw i32 %.0201229, %i.d             ; 2 uses
  %i.ko = icmp slt i32 %i.kn, 4
  br i1 %i.ko, label %bb.d, label %bb.g, !llvm.loop !119

bb.g:                                             ; preds = %._crit_edge228
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @apply_op(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #2 {
bb.a:
  tail call void @exchange_boundary(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %i.a = tail call i64 (...) @CycleTime() #10
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge160

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.b
  %i.j = sext i32 %3 to i64
  %i.k = sext i32 %2 to i64
  %wide.trip.count169 = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv166 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next167, %._crit_edge ] ; 2 uses
  %i.l = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv166
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds [216 x i8], ptr %i.n, i64 %i.b ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load <2 x i32>, ptr %i.p, align 8, !tbaa !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !68   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !70   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 6 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.j
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 13 uses
  %i.ad = extractelement <2 x i32> %i.q, i64 0    ; 10 uses
  %i.ae = add i32 %i.ad, 1
  %i.af = extractelement <2 x i32> %i.q, i64 1    ; 10 uses
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = mul i32 %i.s, %i.ag
  %i.ai = sext i32 %i.ah to i64                   ; 7 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ai ; 12 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.k
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42 ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 5 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ai ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 5 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ai ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 5 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ai ; 4 uses
  %i.az = icmp sgt i32 %i.v, 0
  br i1 %i.az, label %.preheader149.lr.ph, label %._crit_edge

.preheader149.lr.ph:                              ; preds = %bb.b
  %i.ba = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = fdiv double 1.000000e+00, %i.bb
  %i.bd = icmp sgt i32 %i.x, 0
  %i.be = fmul double %5, %i.bc                   ; 2 uses
  %i.bf = icmp sgt i32 %i.y, 0
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %.preheader149.us.us.preheader, label %._crit_edge

.preheader149.us.us.preheader:                    ; preds = %.preheader149.lr.ph
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 5 uses
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bh = shl nsw i64 %i.ai, 3                    ; 17 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.bh
  %i.bi = shl nuw nsw i64 %wide.trip.count, 3     ; 3 uses
  %i.bj = add nsw i64 %i.bh, %i.bi                ; 12 uses
  %scevgep180 = getelementptr i8, ptr %i.al, i64 %i.bj
  %scevgep182 = getelementptr i8, ptr %i.ao, i64 %i.bh
  %scevgep184 = getelementptr i8, ptr %i.ao, i64 %i.bj
  %i.bk = sext i32 %i.af to i64
  %i.bl = shl nsw i64 %i.bk, 3                    ; 2 uses
  %i.bm = sub nsw i64 %i.bh, %i.bl
  %scevgep186 = getelementptr i8, ptr %i.ac, i64 %i.bm
  %i.bn = add nsw i64 %i.bh, %i.bi
  %i.bo = sub nsw i64 %i.bn, %i.bl
  %scevgep188 = getelementptr i8, ptr %i.ac, i64 %i.bo
  %scevgep190 = getelementptr i8, ptr %i.ac, i64 %i.bh
  %scevgep192 = getelementptr i8, ptr %i.ac, i64 %i.bj
  %i.bp = sext i32 %i.ad to i64
  %i.bq = shl nsw i64 %i.bp, 3                    ; 2 uses
  %i.br = sub nsw i64 %i.bh, %i.bq
  %scevgep194 = getelementptr i8, ptr %i.ac, i64 %i.br
  %i.bs = add nsw i64 %i.bh, %i.bi
  %i.bt = sub nsw i64 %i.bs, %i.bq
  %scevgep196 = getelementptr i8, ptr %i.ac, i64 %i.bt
  %scevgep198 = getelementptr i8, ptr %i.ac, i64 %i.bh
  %scevgep200 = getelementptr i8, ptr %i.ac, i64 %i.bj
  %scevgep202 = getelementptr i8, ptr %i.ac, i64 -8
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.bh
  %scevgep205 = getelementptr i8, ptr %i.ac, i64 %i.bj
  %scevgep207 = getelementptr i8, ptr %i.ac, i64 %i.bh
  %scevgep209 = getelementptr i8, ptr %i.ac, i64 %i.bj
  %scevgep211 = getelementptr i8, ptr %i.ar, i64 %i.bh
  %scevgep213 = getelementptr i8, ptr %i.ar, i64 %i.bj
  %scevgep215 = getelementptr i8, ptr %i.ar, i64 %i.bh
  %scevgep217 = getelementptr i8, ptr %i.ar, i64 %i.bj
  %scevgep219 = getelementptr i8, ptr %i.au, i64 %i.bh
  %scevgep221 = getelementptr i8, ptr %i.au, i64 %i.bj
  %scevgep223 = getelementptr i8, ptr %i.au, i64 %i.bh
  %scevgep225 = getelementptr i8, ptr %i.au, i64 %i.bj
  %scevgep227 = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep229 = getelementptr i8, ptr %i.ax, i64 %i.bj
  %scevgep231 = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep233 = getelementptr i8, ptr %i.ax, i64 %i.bj
  %i.bu = shufflevector <2 x i32> %i.q, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ult i32 %i.y, 6
  %i.bv = trunc nsw i64 %i.bg to i32
  %i.bw = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.bx = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.by = icmp ugt i64 %i.bg, 4294967295
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %broadcast.splatinsert282 = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat283 = shufflevector <2 x double> %broadcast.splatinsert282, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader149.us.us

.preheader149.us.us:                              ; preds = %.preheader149.us.us.preheader, %._crit_edge152.split.us.us.us
end_hunk_0
begin_hunk_1_@matmul_grids:bb.a
  %i.g = zext nneg i32 %5 to i64
  %i.h = zext nneg i32 %6 to i64                  ; 3 uses
  %wide.trip.count144 = zext nneg i32 %5 to i64
  br label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.preheader, %._crit_edge113.us
  %indvars.iv141 = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next142, %._crit_edge113.us ] ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv141
  %i.j = mul nuw nsw i64 %indvars.iv141, %i.h
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %invariant.gep154 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv141
  br label %bb.b

bb.b:                                             ; preds = %.preheader93.us, %bb.e
  %indvars.iv136 = phi i64 [ 0, %.preheader93.us ], [ %indvars.iv.next137, %bb.e ] ; 6 uses
  %.not.us = icmp samesign ult i64 %indvars.iv136, %indvars.iv141
  br i1 %.not.us, label %bb.e, label %.preheader92.us

._crit_edge110.us:                                ; preds = %._crit_edge.us, %.preheader92.us
  %.085.lcssa.us = phi double [ 0.000000e+00, %.preheader92.us ], [ %i.ar, %._crit_edge.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv136
  store double %.085.lcssa.us, ptr %gep, align 8, !tbaa !44
  %i.k = icmp samesign ult i64 %indvars.iv136, %i.g
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge110.us
  %i.l = mul nuw nsw i64 %indvars.iv136, %i.h
  %gep155 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154, i64 %i.l
  store double %.085.lcssa.us, ptr %gep155, align 8, !tbaa !44
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.us, %._crit_edge.us
  %indvars.iv131 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next132, %._crit_edge.us ] ; 2 uses
  %.085108.us = phi double [ 0.000000e+00, %.lr.ph.us ], [ %i.ar, %._crit_edge.us ]
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.bz, i64 %indvars.iv131
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 248
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds [216 x i8], ptr %i.o, i64 %i.f ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !68   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69  ; 2 uses
  %i.ab = load i32, ptr %i.w, align 4, !tbaa !70  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.cb
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = add nsw i32 %i.r, 1
  %i.ah = add nsw i32 %i.ag, %i.t
  %i.ai = mul nsw i32 %i.v, %i.ah
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aj ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ce
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aj ; 3 uses
  %i.ao = icmp sgt i32 %i.y, 0
  %i.ap = icmp sgt i32 %i.aa, 0
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  %i.aq = icmp sgt i32 %i.ab, 0
  %or.cond156 = select i1 %or.cond, i1 %i.aq, i1 false
  br i1 %or.cond156, label %.preheader91.us.us.us.preheader, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge98.split.us.us.us.us, %bb.d
  %.082.lcssa.us = phi double [ 0.000000e+00, %bb.d ], [ %.lcssa, %._crit_edge98.split.us.us.us.us ]
  %i.ar = fadd double %.085108.us, %.082.lcssa.us ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge110.us, label %bb.d, !llvm.loop !341

bb.e:                                             ; preds = %bb.c, %._crit_edge110.us, %bb.b
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %i.h
  br i1 %exitcond140.not, label %._crit_edge113.us, label %bb.b, !llvm.loop !342

.preheader92.us:                                  ; preds = %bb.b
  %i.as = load i32, ptr %i.d, align 8, !tbaa !64  ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.us, label %._crit_edge110.us

.preheader91.us.us.us.preheader:                  ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.au = icmp eq i32 %i.ab, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod160 = trunc i32 %i.ab to i1
  br label %.preheader91.us.us.us

.preheader91.us.us.us:                            ; preds = %.preheader91.us.us.us.preheader, %._crit_edge98.split.us.us.us.us
  %.082101.us.us.us = phi double [ %.lcssa, %._crit_edge98.split.us.us.us.us ], [ 0.000000e+00, %.preheader91.us.us.us.preheader ]
  %.088100.us.us.us = phi i32 [ %i.by, %._crit_edge98.split.us.us.us.us ], [ 0, %.preheader91.us.us.us.preheader ] ; 2 uses
  %i.av = mul nsw i32 %.088100.us.us.us, %i.t
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge.us.us.us.us, %.preheader91.us.us.us
  %.197.us.us.us.us = phi double [ %.082101.us.us.us, %.preheader91.us.us.us ], [ %.lcssa, %._crit_edge.us.us.us.us ] ; 2 uses
  %.08796.us.us.us.us = phi i32 [ 0, %.preheader91.us.us.us ], [ %i.bx, %._crit_edge.us.us.us.us ] ; 2 uses
  %i.aw = mul nsw i32 %.08796.us.us.us.us, %i.r
  %i.ax = add i32 %i.aw, %i.av                    ; 3 uses
  br i1 %i.au, label %.epil.preheader, label %.preheader.us.us.us.us.new

.preheader.us.us.us.us.new:                       ; preds = %.preheader.us.us.us.us, %.preheader.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us ] ; 3 uses
  %.295.us.us.us.us = phi double [ %i.bo, %.preheader.us.us.us.us.new ], [ %.197.us.us.us.us, %.preheader.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.us.us.new ], [ 0, %.preheader.us.us.us.us ]
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = add i32 %i.ax, %i.ay
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !44
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.be = load double, ptr %i.bd, align 8, !tbaa !44
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.be, double %.295.us.us.us.us)
  %i.bg = trunc i64 %indvars.iv to i32
  %i.bh = or disjoint i32 %i.bg, 1
  %i.bi = add i32 %i.ax, %i.bh
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !44
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bj
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !44
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %i.bf) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.new, !llvm.loop !343

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.preheader.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.295.us.us.us.us.epil.init = phi double [ %.197.us.us.us.us, %.preheader.us.us.us.us ], [ %i.bo, %._crit_edge.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.bp = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.bq = add i32 %i.ax, %i.bp
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !44
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.br
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !44
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bv, double %.295.us.us.us.us.epil.init)
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.bo, %._crit_edge.us.us.us.us.unr-lcssa ], [ %i.bw, %.epil.preheader ] ; 3 uses
  %i.bx = add nuw nsw i32 %.08796.us.us.us.us, 1  ; 2 uses
  %exitcond129.not = icmp eq i32 %i.bx, %i.aa
  br i1 %exitcond129.not, label %._crit_edge98.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !344

._crit_edge98.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.by = add nuw nsw i32 %.088100.us.us.us, 1    ; 2 uses
  %exitcond130.not = icmp eq i32 %i.by, %i.y
  br i1 %exitcond130.not, label %._crit_edge.us, label %.preheader91.us.us.us, !llvm.loop !345

.lr.ph.us:                                        ; preds = %.preheader92.us
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv136
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = sext i32 %i.cd to i64
  %wide.trip.count134 = zext nneg i32 %i.as to i64
  br label %bb.d

._crit_edge113.us:                                ; preds = %bb.e
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge115, label %.preheader93.us, !llvm.loop !346

._crit_edge115:                                   ; preds = %._crit_edge113.us, %.preheader93.lr.ph, %.._crit_edge115_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge115_crit_edge ], [ %i.f, %.preheader93.lr.ph ], [ %i.f, %._crit_edge113.us ]
  %i.cf = tail call i64 (...) @CycleTime() #10
  %i.cg = sub i64 %i.cf, %i.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %.pre-phi ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !63
  %i.ck = add i64 %i.cg, %i.cj
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_problem(ptr noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 4 uses
  %i.e = sext i32 %1 to i64                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph297, %._crit_edge294
  %indvars.iv = phi i64 [ 0, %.lr.ph297 ], [ %indvars.iv.next, %._crit_edge294 ] ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds [216 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !347
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds [216 x i8], ptr %i.v, i64 %i.e ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !347
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr inbounds [216 x i8], ptr %i.ai, i64 %i.e ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !68 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader288.lr.ph, label %._crit_edge294

.preheader288.lr.ph:                              ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.au = load i32, ptr %i.an, align 4, !tbaa !69 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.preheader288, label %._crit_edge294

.preheader288:                                    ; preds = %.preheader288.lr.ph, %._crit_edge291
  %i.aw = phi i32 [ %i.id, %._crit_edge291 ], [ %i.al, %.preheader288.lr.ph ] ; 2 uses
  %i.ax = phi i32 [ %i.ie, %._crit_edge291 ], [ %i.au, %.preheader288.lr.ph ] ; 3 uses
  %i.ay = phi i32 [ %i.if, %._crit_edge291 ], [ %i.au, %.preheader288.lr.ph ] ; 3 uses
  %.0286292 = phi i32 [ %i.ig, %._crit_edge291 ], [ 0, %.preheader288.lr.ph ] ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.lr.ph, label %._crit_edge291

.preheader.lr.ph:                                 ; preds = %.preheader288
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !70 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader, label %._crit_edge291

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bc = phi i32 [ %i.hz, %._crit_edge ], [ %i.ax, %.preheader.lr.ph ]
  %i.bd = phi i32 [ %i.ia, %._crit_edge ], [ %i.ba, %.preheader.lr.ph ] ; 2 uses
  %.0285290 = phi i32 [ %i.ib, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw [256 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 248
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0284289 = phi i32 [ 0, %.lr.ph ], [ %i.hw, %bb.c ] ; 3 uses
  %i.bi = load i32, ptr %i.ap, align 8, !tbaa !348
  %i.bj = add nsw i32 %i.bi, %.0284289
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fadd nnan double %i.bk, 5.000000e-01
  %6 = fmul double %2, %i.bl                      ; 2 uses
  %i.bm = load i32, ptr %5, align 4, !tbaa !349
  %i.bn = add nsw i32 %i.bm, %.0285290
  %7 = sitofp i32 %i.bn to double
  %8 = fadd nnan double %7, 5.000000e-01
  %9 = fmul double %2, %8                         ; 2 uses
  %10 = load i32, ptr %i.aq, align 8, !tbaa !350
  %i.bo = add nsw i32 %10, %.0286292
  %11 = sitofp i32 %i.bo to double
  %12 = fadd nnan double %11, 5.000000e-01
  %13 = fmul double %2, %12                       ; 2 uses
  %14 = load i32, ptr %i.ar, align 4, !tbaa !67   ; 3 uses
  %15 = add nsw i32 %14, %.0284289
  %16 = load i32, ptr %i.as, align 8, !tbaa !65
  %17 = add nsw i32 %14, %.0285290
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %15, %18
  %20 = load i32, ptr %i.at, align 4, !tbaa !66
  %21 = add nsw i32 %14, %.0286292
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %i.bp = fadd double %6, -5.000000e-01           ; 2 uses
  %i.bq = tail call double @pow(double noundef %i.bp, double noundef 2.000000e+00) #10, !tbaa !4
  %i.br = fadd double %9, -5.000000e-01           ; 2 uses
  %i.bs = tail call double @pow(double noundef %i.br, double noundef 2.000000e+00) #10, !tbaa !4
  %i.bt = fadd double %i.bq, %i.bs
  %i.bu = fadd double %13, -5.000000e-01          ; 2 uses
  %i.bv = tail call double @pow(double noundef %i.bu, double noundef 2.000000e+00) #10, !tbaa !4
  %i.bw = fadd double %i.bt, %i.bv                ; 8 uses
  %i.bx = fmul double %i.bp, 2.000000e+00         ; 2 uses
  %i.by = fmul double %i.br, 2.000000e+00         ; 2 uses
  %i.bz = fmul double %i.bu, 2.000000e+00         ; 2 uses
  %i.ca = tail call double @pow(double noundef %i.bw, double noundef 5.000000e-01) #10, !tbaa !4
  %i.cb = fmul double %i.bx, 5.000000e-01
  %i.cc = tail call double @pow(double noundef %i.bw, double noundef -5.000000e-01) #10, !tbaa !4 ; 3 uses
  %i.cd = fmul double %i.cb, %i.cc
  %i.ce = fmul double %i.by, 5.000000e-01
  %i.cf = fmul double %i.ce, %i.cc
  %i.cg = fmul double %i.bz, 5.000000e-01
  %i.ch = fmul double %i.cg, %i.cc
  %i.ci = tail call double @pow(double noundef %i.bw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.cj = tail call double @pow(double noundef %i.bw, double noundef -5.000000e-01) #10, !tbaa !4 ; 0 uses
  %i.ck = tail call double @pow(double noundef %i.bw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.cl = tail call double @pow(double noundef %i.bw, double noundef -5.000000e-01) #10, !tbaa !4 ; 0 uses
  %i.cm = tail call double @pow(double noundef %i.bw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.cn = fadd double %i.ca, -2.500000e-01
  %i.co = fmul double %i.cn, 1.000000e+01         ; 3 uses
  %i.cp = tail call double @tanh(double noundef %i.co) #10, !tbaa !4 ; 2 uses
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double 4.500000e+00, double 5.500000e+00) ; 2 uses
  %i.cr = fmul double %i.cd, 4.500000e+01
  %i.cs = tail call double @pow(double noundef %i.cp, double noundef 2.000000e+00) #10, !tbaa !4
  %i.ct = fsub double 1.000000e+00, %i.cs
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fmul double %i.cf, 4.500000e+01
  %i.cw = tail call double @tanh(double noundef %i.co) #10, !tbaa !4
  %i.cx = tail call double @pow(double noundef %i.cw, double noundef 2.000000e+00) #10, !tbaa !4
  %i.cy = fsub double 1.000000e+00, %i.cx
  %i.cz = fmul double %i.cv, %i.cy
  %i.da = fmul double %i.ch, 4.500000e+01
  %i.db = tail call double @tanh(double noundef %i.co) #10, !tbaa !4
  %i.dc = tail call double @pow(double noundef %i.db, double noundef 2.000000e+00) #10, !tbaa !4
  %i.dd = fsub double 1.000000e+00, %i.dc
  %i.de = fmul double %i.da, %i.dd
  %24 = fmul double %i.bw, -2.000000e+01          ; 10 uses
  %25 = tail call double @exp(double noundef %24) #10, !tbaa !4
  %26 = fmul double %6, f0x401921FB54442D18       ; 10 uses
  %27 = tail call double @sin(double noundef %26) #10, !tbaa !4
  %28 = fmul double %25, %27
  %29 = fmul double %9, f0x401921FB54442D18       ; 10 uses
  %i.df = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.dg = fmul double %28, %i.df
  %i.dh = fmul double %13, f0x401921FB54442D18    ; 10 uses
  %i.di = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.dj = fmul double %i.dg, %i.di                ; 8 uses
  %i.dk = fmul double %i.bx, -2.000000e+01        ; 3 uses
  %i.dl = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.dm = fmul double %i.dl, f0x401921FB54442D18
  %i.dn = tail call double @cos(double noundef %26) #10, !tbaa !4
  %i.do = fmul double %i.dm, %i.dn
  %i.dp = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.ds = fmul double %i.dq, %i.dr
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dj, double %i.ds) ; 2 uses
  %i.du = fmul double %i.by, -2.000000e+01        ; 3 uses
  %i.dv = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.dw = fmul double %i.dv, f0x401921FB54442D18
  %i.dx = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = tail call double @cos(double noundef %29) #10, !tbaa !4
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.ec = fmul double %i.ea, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dj, double %i.ec) ; 2 uses
  %i.ee = fmul double %i.bz, -2.000000e+01        ; 3 uses
  %i.ef = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.eg = fmul double %i.ef, f0x401921FB54442D18
  %i.eh = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.ek = fmul double %i.ei, %i.ej
  %i.el = tail call double @cos(double noundef %i.dh) #10, !tbaa !4
  %i.em = fmul double %i.ek, %i.el
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.dj, double %i.em) ; 2 uses
  %i.eo = fmul double %i.dk, %i.dt
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.dj, double -4.000000e+01, double %i.eo)
  %i.eq = fmul double %i.dk, f0x401921FB54442D18
  %i.er = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.es = fmul double %i.eq, %i.er
  %i.et = tail call double @cos(double noundef %26) #10, !tbaa !4
  %i.eu = fmul double %i.es, %i.et
  %i.ev = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.ew = fmul double %i.eu, %i.ev
  %i.ex = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ex, double %i.ep)
  %i.ez = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.fa = fmul double %i.ez, f0x4043BD3CC9BE45DE
  %i.fb = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.fc = fmul double %i.fa, %i.fb
  %i.fd = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.fe = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.ff = fneg double %i.fd
  %i.fg = fmul double %i.fc, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fe, double %i.ey)
  %i.fi = fmul double %i.du, %i.ed
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.dj, double -4.000000e+01, double %i.fi)
  %i.fk = fmul double %i.du, f0x401921FB54442D18
  %i.fl = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = tail call double @cos(double noundef %29) #10, !tbaa !4
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fj)
  %i.ft = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.fu = fmul double %i.ft, f0x4043BD3CC9BE45DE
  %i.fv = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.fw = fmul double %i.fu, %i.fv
  %i.fx = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.fy = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.fz = fneg double %i.fx
  %i.ga = fmul double %i.fw, %i.fz
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.fy, double %i.fs)
  %i.gc = fmul double %i.ee, %i.en
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.dj, double -4.000000e+01, double %i.gc)
  %i.ge = fmul double %i.ee, f0x401921FB54442D18
  %i.gf = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.gg = fmul double %i.ge, %i.gf
  %i.gh = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.gi = fmul double %i.gg, %i.gh
  %i.gj = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.gk = fmul double %i.gi, %i.gj
  %i.gl = tail call double @cos(double noundef %i.dh) #10, !tbaa !4
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gl, double %i.gd)
  %i.gn = tail call double @exp(double noundef %24) #10, !tbaa !4
  %i.go = fmul double %i.gn, f0x4043BD3CC9BE45DE
  %i.gp = tail call double @sin(double noundef %26) #10, !tbaa !4
  %i.gq = fmul double %i.go, %i.gp
  %i.gr = tail call double @sin(double noundef %29) #10, !tbaa !4
  %i.gs = tail call double @sin(double noundef %i.dh) #10, !tbaa !4
  %i.gt = fneg double %i.gr
  %i.gu = fmul double %i.gq, %i.gt
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.gs, double %i.gm)
  %i.gw = fmul double %i.cz, %i.ed
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dt, double %i.gw)
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.de, double %i.en, double %i.gx)
  %i.gz = fadd double %i.fh, %i.gb
  %i.ha = fadd double %i.gz, %i.gv
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.ha, double %i.gy)
  %i.hc = fneg double %i.hb
  %i.hd = fmul double %4, %i.hc
  %i.he = tail call double @llvm.fmuladd.f64(double %3, double %i.dj, double %i.hd)
  %i.hf = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.hg = getelementptr inbounds [216 x i8], ptr %i.hf, i64 %i.e
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 176
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !35 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !42
  %i.hl = sext i32 %23 to i64                     ; 4 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hl
  store double 1.000000e+00, ptr %i.hm, align 8, !tbaa !44
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !42
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hl
  store double %i.cq, ptr %i.hp, align 8, !tbaa !44
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 88
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !42
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.hl
  store double %i.dj, ptr %i.hs, align 8, !tbaa !44
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hl
  store double %i.he, ptr %i.hv, align 8, !tbaa !44
  %i.hw = add nuw nsw i32 %.0284289, 1            ; 2 uses
  %i.hx = load i32, ptr %i.ao, align 4, !tbaa !70 ; 2 uses
  %i.hy = icmp slt i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !351

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.an, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.hz = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bc, %.preheader ] ; 4 uses
  %i.ia = phi i32 [ %i.hx, %._crit_edge.loopexit ], [ %i.bd, %.preheader ]
  %i.ib = add nuw nsw i32 %.0285290, 1            ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.hz
  br i1 %i.ic, label %.preheader, label %._crit_edge291.loopexit, !llvm.loop !352

._crit_edge291.loopexit:                          ; preds = %._crit_edge
  %.pre302 = load i32, ptr %i.ak, align 4, !tbaa !68
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %.preheader.lr.ph, %._crit_edge291.loopexit, %.preheader288
  %i.id = phi i32 [ %i.aw, %.preheader288 ], [ %.pre302, %._crit_edge291.loopexit ], [ %i.aw, %.preheader.lr.ph ] ; 2 uses
  %i.ie = phi i32 [ %i.ax, %.preheader288 ], [ %i.hz, %._crit_edge291.loopexit ], [ %i.ax, %.preheader.lr.ph ]
  %i.if = phi i32 [ %i.ay, %.preheader288 ], [ %i.hz, %._crit_edge291.loopexit ], [ %i.ay, %.preheader.lr.ph ]
  %i.ig = add nuw nsw i32 %.0286292, 1            ; 2 uses
  %i.ih = icmp slt i32 %i.ig, %i.id
  br i1 %i.ih, label %.preheader288, label %._crit_edge294, !llvm.loop !354

._crit_edge294:                                   ; preds = %._crit_edge291, %.preheader288.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ii = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next, %i.ij
  br i1 %i.ik, label %bb.b, label %._crit_edge298, !llvm.loop !355

._crit_edge298:                                   ; preds = %._crit_edge294, %bb.a
  %i.il = tail call double @mean(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.in = load i32, ptr %i.im, align 4, !tbaa !75
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge298
  %i.ip = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.il) ; 0 uses
  %i.iq = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.ir = tail call i32 @fflush(ptr noundef %i.iq) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge298
  %i.is = fcmp une double %3, 0.000000e+00
  br i1 %i.is, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.it = fneg double %i.il                       ; 2 uses
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, double noundef %i.it)
  %i.iu = fdiv double %i.it, %3
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 11, i32 noundef 11, double noundef %i.iu)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 12}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 12, !13, i64 24, !13, i64 56}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!11, !5, i64 16}
!16 = !{!11, !5, i64 20}
!17 = !{!11, !5, i64 28}
!18 = !{!11, !5, i64 32}
!19 = !{!11, !5, i64 36}
!20 = !{!11, !5, i64 40}
!21 = !{!11, !5, i64 44}
!22 = !{!11, !5, i64 60}
!23 = !{!11, !5, i64 64}
!24 = !{!11, !5, i64 68}
!25 = !{!11, !5, i64 72}
!26 = !{!11, !5, i64 76}
!27 = !{!11, !14, i64 80}
!28 = !{!11, !5, i64 24}
!29 = !{!30, !9, i64 1776}
!30 = !{!"", !31, i64 0, !5, i64 1304, !5, i64 1308, !5, i64 1312, !5, i64 1316, !6, i64 1320, !6, i64 1432, !5, i64 1512, !5, i64 1516, !5, i64 1520, !5, i64 1524, !5, i64 1528, !5, i64 1532, !12, i64 1536, !12, i64 1548, !12, i64 1560, !12, i64 1572, !12, i64 1584, !5, i64 1596, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612, !6, i64 1616, !6, i64 1696, !9, i64 1776}
!31 = !{!"", !6, i64 0, !6, i64 80, !6, i64 160, !6, i64 240, !6, i64 320, !6, i64 400, !6, i64 480, !6, i64 560, !6, i64 640, !6, i64 720, !6, i64 800, !6, i64 880, !6, i64 960, !6, i64 1040, !6, i64 1120, !6, i64 1200, !32, i64 1280, !32, i64 1288, !32, i64 1296}
!32 = !{!"long", !6, i64 0}
!33 = !{!34, !9, i64 248}
!34 = !{!"", !12, i64 0, !12, i64 12, !5, i64 24, !5, i64 28, !6, i64 32, !9, i64 248}
!35 = !{!36, !38, i64 176}
!36 = !{!"", !37, i64 0, !12, i64 8, !12, i64 20, !12, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !6, i64 64, !38, i64 176, !40, i64 184, !6, i64 192, !41, i64 208}
!37 = !{!"double", !6, i64 0}
!38 = !{!"p2 double", !39, i64 0}
!39 = !{!"any p2 pointer", !9, i64 0}
!40 = !{!"p1 long", !9, i64 0}
!41 = !{!"p1 omnipotent char", !9, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!11, !5, i64 56}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !46, !49, !50}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = distinct !{!51, !46, !49}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46, !49, !50}
!54 = distinct !{!54, !46, !49}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!30, !5, i64 1520}
!58 = !{!30, !5, i64 1524}
!59 = !{!11, !5, i64 0}
!60 = !{!11, !5, i64 4}
!61 = !{!11, !5, i64 8}
!62 = distinct !{!62, !46}
!63 = !{!32, !32, i64 0}
!64 = !{!30, !5, i64 1600}
!65 = !{!36, !5, i64 48}
!66 = !{!36, !5, i64 52}
!67 = !{!36, !5, i64 44}
!68 = !{!36, !5, i64 28}
!69 = !{!36, !5, i64 24}
!70 = !{!36, !5, i64 20}
!71 = distinct !{!71, !46}
!72 = distinct !{!72, !46}
!73 = distinct !{!73, !46}
!74 = distinct !{!74, !46}
!75 = !{!30, !5, i64 1596}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!78 = !{!30, !5, i64 1612}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85}
!85 = distinct !{!85, !81}
!86 = !{!87}
!87 = distinct !{!87, !81}
!88 = !{!89}
!89 = distinct !{!89, !81}
!90 = !{!91}
!91 = distinct !{!91, !81}
!92 = !{!93}
!93 = distinct !{!93, !81}
!94 = !{!95}
!95 = distinct !{!95, !81}
!96 = !{!97}
!97 = distinct !{!97, !81}
!98 = !{!99}
!99 = distinct !{!99, !81}
!100 = !{!101}
!101 = distinct !{!101, !81}
!102 = !{!103}
!103 = distinct !{!103, !81}
!104 = !{!105}
!105 = distinct !{!105, !81}
!106 = !{!107}
!107 = distinct !{!107, !81}
!108 = !{!109}
!109 = distinct !{!109, !81}
!110 = !{!111}
!111 = distinct !{!111, !81}
!112 = !{!80, !105, !101, !97, !93, !83, !87, !89, !85, !95, !91, !103, !99, !107, !109}
!113 = distinct !{!113, !46, !49, !50}
!114 = distinct !{!114, !46, !49}
!115 = distinct !{!115, !46}
!116 = distinct !{!116, !46}
!117 = distinct !{!117, !46}
!118 = distinct !{!118, !46}
!119 = distinct !{!119, !46}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = !{!126}
!126 = distinct !{!126, !122}
!127 = !{!128}
end_hunk_1
begin_hunk_2_@llvm.assume
!148 = distinct !{!148, !122}
!149 = !{!121, !146, !142, !138, !134, !124, !128, !130, !126, !136, !132, !144, !140}
!150 = distinct !{!150, !46, !49, !50}
!151 = distinct !{!151, !46, !49}
!152 = distinct !{!152, !46}
!153 = distinct !{!153, !46}
!154 = distinct !{!154, !46}
!155 = !{!156}
!156 = distinct !{!156, !157}
!157 = distinct !{!157, !"LVerDomain"}
!158 = !{!159}
!159 = distinct !{!159, !157}
!160 = !{!161}
!161 = distinct !{!161, !157}
!162 = !{!163}
!163 = distinct !{!163, !157}
!164 = !{!165}
!165 = distinct !{!165, !157}
!166 = !{!167}
!167 = distinct !{!167, !157}
!168 = !{!169}
!169 = distinct !{!169, !157}
!170 = !{!171}
!171 = distinct !{!171, !157}
!172 = !{!173}
!173 = distinct !{!173, !157}
!174 = !{!175}
!175 = distinct !{!175, !157}
!176 = !{!177}
!177 = distinct !{!177, !157}
!178 = !{!179}
!179 = distinct !{!179, !157}
!180 = !{!181}
!181 = distinct !{!181, !157}
!182 = !{!183}
!183 = distinct !{!183, !157}
!184 = !{!185}
!185 = distinct !{!185, !157}
!186 = !{!156, !181, !177, !173, !169, !159, !163, !165, !161, !171, !167, !179, !175, !183}
!187 = distinct !{!187, !46, !49, !50}
!188 = distinct !{!188, !46, !49}
!189 = distinct !{!189, !46}
!190 = distinct !{!190, !46}
!191 = distinct !{!191, !46}
!192 = distinct !{!192, !46, !49, !50}
!193 = distinct !{!193, !194}
!194 = !{!"llvm.loop.unroll.disable"}
!195 = distinct !{!195, !46, !49}
!196 = distinct !{!196, !46}
!197 = distinct !{!197, !46}
!198 = distinct !{!198, !46}
!199 = distinct !{!199, !46, !49, !50}
!200 = distinct !{!200, !194}
!201 = distinct !{!201, !46, !49}
!202 = distinct !{!202, !46}
!203 = !{!204}
!204 = distinct !{!204, !205}
!205 = distinct !{!205, !"LVerDomain"}
!206 = !{!207}
!207 = distinct !{!207, !205}
!208 = !{!209}
!209 = distinct !{!209, !205}
!210 = !{!211}
!211 = distinct !{!211, !205}
!212 = !{!213}
!213 = distinct !{!213, !205}
!214 = !{!215}
!215 = distinct !{!215, !205}
!216 = !{!217}
!217 = distinct !{!217, !205}
!218 = !{!219}
!219 = distinct !{!219, !205}
!220 = !{!221}
!221 = distinct !{!221, !205}
!222 = !{!219, !217, !215, !213, !211, !209, !207, !204}
!223 = distinct !{!223, !46, !49, !50}
!224 = distinct !{!224, !46, !49}
!225 = distinct !{!225, !46}
!226 = distinct !{!226, !46}
!227 = distinct !{!227, !46}
!228 = !{!229}
!229 = distinct !{!229, !230}
!230 = distinct !{!230, !"LVerDomain"}
!231 = !{!232}
!232 = distinct !{!232, !230}
!233 = !{!234}
!234 = distinct !{!234, !230}
!235 = !{!236}
!236 = distinct !{!236, !230}
!237 = !{!238}
!238 = distinct !{!238, !230}
!239 = !{!236, !234, !232, !229}
!240 = distinct !{!240, !46, !49, !50}
!241 = distinct !{!241, !46, !49}
!242 = distinct !{!242, !46}
!243 = distinct !{!243, !46}
!244 = !{!245}
!245 = distinct !{!245, !246}
!246 = distinct !{!246, !"LVerDomain"}
!247 = !{!248}
!248 = distinct !{!248, !246}
!249 = !{!250}
!250 = distinct !{!250, !246}
!251 = !{!252}
!252 = distinct !{!252, !246}
!253 = !{!254}
!254 = distinct !{!254, !246}
!255 = !{!252, !250, !248, !245}
!256 = distinct !{!256, !46, !49, !50}
!257 = distinct !{!257, !46, !49}
!258 = distinct !{!258, !46}
!259 = distinct !{!259, !46}
!260 = !{!261}
!261 = distinct !{!261, !262}
!262 = distinct !{!262, !"LVerDomain"}
!263 = !{!264}
!264 = distinct !{!264, !262}
!265 = !{!266}
!266 = distinct !{!266, !262}
!267 = !{!268}
!268 = distinct !{!268, !262}
!269 = !{!270}
!270 = distinct !{!270, !262}
!271 = !{!268, !266, !264, !261}
!272 = distinct !{!272, !46, !49, !50}
!273 = distinct !{!273, !46, !49}
!274 = distinct !{!274, !46}
!275 = distinct !{!275, !46}
!276 = distinct !{!276, !46}
!277 = distinct !{!277, !46}
!278 = distinct !{!278, !46}
!279 = distinct !{!279, !46}
!280 = distinct !{!280, !46}
!281 = distinct !{!281, !46}
!282 = distinct !{!282, !46}
!283 = distinct !{!283, !46}
!284 = distinct !{!284, !46}
!285 = distinct !{!285, !46, !49, !50}
!286 = distinct !{!286, !194}
!287 = distinct !{!287, !46, !49}
!288 = distinct !{!288, !46}
!289 = distinct !{!289, !46}
!290 = distinct !{!290, !46}
!291 = distinct !{!291, !46, !49, !50}
!292 = distinct !{!292, !194}
!293 = distinct !{!293, !46, !49, !50}
!294 = distinct !{!294, !46, !49}
!295 = distinct !{!295, !46}
!296 = distinct !{!296, !46, !49}
!297 = distinct !{!297, !46}
!298 = distinct !{!298, !46, !49, !50}
!299 = distinct !{!299, !194}
!300 = distinct !{!300, !46, !49}
!301 = distinct !{!301, !46}
!302 = distinct !{!302, !46, !49, !50}
!303 = distinct !{!303, !46, !49}
!304 = distinct !{!304, !46}
!305 = distinct !{!305, !46}
!306 = distinct !{!306, !46}
!307 = distinct !{!307, !46, !49, !50}
!308 = distinct !{!308, !46, !49}
!309 = distinct !{!309, !46}
!310 = distinct !{!310, !46}
!311 = distinct !{!311, !46}
!312 = distinct !{!312, !46, !49, !50}
!313 = distinct !{!313, !46, !49}
!314 = distinct !{!314, !46}
!315 = distinct !{!315, !46}
!316 = distinct !{!316, !46}
!317 = distinct !{!317, !46}
!318 = distinct !{!318, !46}
!319 = distinct !{!319, !46}
!320 = distinct !{!320, !46}
!321 = distinct !{!321, !46}
!322 = distinct !{!322, !46}
!323 = distinct !{!323, !46}
!324 = distinct !{!324, !46}
!325 = distinct !{!325, !46}
!326 = distinct !{!326, !194}
!327 = distinct !{!327, !46}
!328 = distinct !{!328, !46}
!329 = distinct !{!329, !46}
!330 = !{!30, !5, i64 1544}
!331 = distinct !{!331, !46, !49, !50}
!332 = distinct !{!332, !46, !49}
!333 = distinct !{!333, !46}
!334 = distinct !{!334, !46}
!335 = distinct !{!335, !46}
!336 = distinct !{!336, !46, !49, !50}
!337 = distinct !{!337, !46, !49}
!338 = distinct !{!338, !46}
!339 = distinct !{!339, !46}
!340 = distinct !{!340, !46}
!341 = distinct !{!341, !46}
!342 = distinct !{!342, !46}
!343 = distinct !{!343, !46}
!344 = distinct !{!344, !46}
!345 = distinct !{!345, !46}
!346 = distinct !{!346, !46}
!347 = !{!36, !5, i64 56}
!348 = !{!36, !5, i64 8}
!349 = !{!36, !5, i64 12}
!350 = !{!36, !5, i64 16}
!351 = distinct !{!351, !46}
!352 = distinct !{!352, !46, !353}
!353 = !{!"llvm.loop.unswitch.partial.disable"}
!354 = distinct !{!354, !46, !353}
!355 = distinct !{!355, !46}
end_hunk_2
