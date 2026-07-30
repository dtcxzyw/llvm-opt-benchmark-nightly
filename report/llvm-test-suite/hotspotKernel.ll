loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hotspotKernel(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = fdiv double %7, %3                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4096 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4088
  %i.g = getelementptr i8, ptr %1, i64 4088
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8184
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4088
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2093056 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2097144
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2093056 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2097136
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2097144
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2088960 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2093048
  %i.q = getelementptr i8, ptr %0, i64 2093056    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2097144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2093064
  %i.t = getelementptr i8, ptr %1, i64 4080
  %i.u = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.v = insertelement <2 x ptr> %i.u, ptr %0, i64 1 ; 6 uses
  %i.w = getelementptr i8, <2 x ptr> %i.v, i64 4096 ; 2 uses
  %i.x = getelementptr i8, <2 x ptr> %i.v, i64 2093056
  %i.y = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.z = insertelement <2 x ptr> %i.y, ptr %1, i64 1
  %i.aa = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 2093056, i64 2097152>
  %i.ab = getelementptr i8, <2 x ptr> %i.v, i64 8 ; 2 uses
  %9 = insertelement <2 x ptr> poison, ptr %0, i64 0
  %10 = insertelement <2 x ptr> %9, ptr %1, i64 1 ; 4 uses
  %i.ac = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 2097144, i64 2097152>
  %i.ad = getelementptr i8, <2 x ptr> %i.v, i64 2097144
  %i.ae = getelementptr i8, <2 x ptr> %i.v, i64 4104
  %i.af = getelementptr i8, <2 x ptr> %i.v, i64 2093048
  %i.ag = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 4104, i64 8>
  %i.ah = getelementptr i8, <2 x ptr> %10, <2 x i64> <i64 2093048, i64 2097144>
  %11 = shufflevector <2 x ptr> %i.w, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x ptr> %11, ptr %1, i64 1
  %i.ai = shufflevector <2 x ptr> %i.ab, <2 x ptr> %10, <2 x i32> <i32 1, i32 3>
  %i.aj = insertelement <2 x double> poison, double %4, i64 0 ; 2 uses
  %i.ak = insertelement <2 x double> %i.aj, double %5, i64 1 ; 4 uses
  %i.al = icmp ult <2 x ptr> %i.ag, %i.af
  %i.am = icmp ult <2 x ptr> %i.ae, %i.ah
  %i.an = and <2 x i1> %i.am, %i.al
  %i.ao = bitcast <2 x i1> %i.an to i2
  %conflict.rdx328.not = icmp eq i2 %i.ao, 0
  %i.ap = insertelement <2 x double> poison, double %5, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %4, i64 1
  %broadcast.splatinsert331 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat332 = shufflevector <2 x double> %broadcast.splatinsert331, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert333 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat334 = shufflevector <2 x double> %broadcast.splatinsert333, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat336 = shufflevector <2 x double> %broadcast.splatinsert335, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert337 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat338 = shufflevector <2 x double> %broadcast.splatinsert337, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert339 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat340 = shufflevector <2 x double> %broadcast.splatinsert339, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = icmp ult <2 x ptr> %i.ai, %i.ad
  %i.as = icmp ult <2 x ptr> %i.ab, %i.ac
  %i.at = and <2 x i1> %i.as, %i.ar
  %i.au = bitcast <2 x i1> %i.at to i2
  %conflict.rdx288.not = icmp eq i2 %i.au, 0
  %i.av = insertelement <2 x double> poison, double %8, i64 1 ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %5, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %6, i64 1 ; 2 uses
  %broadcast.splatinsert291 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat292 = shufflevector <2 x double> %broadcast.splatinsert291, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert293 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat294 = shufflevector <2 x double> %broadcast.splatinsert293, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat296 = shufflevector <2 x double> %broadcast.splatinsert295, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert297 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat298 = shufflevector <2 x double> %broadcast.splatinsert297, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert299 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat300 = shufflevector <2 x double> %broadcast.splatinsert299, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ay = icmp ult <2 x ptr> %12, %i.x
  %i.az = icmp ult <2 x ptr> %i.w, %i.aa
  %i.ba = and <2 x i1> %i.az, %i.ay
  %i.bb = bitcast <2 x i1> %i.ba to i2
  %conflict.rdx.not = icmp eq i2 %i.bb, 0
  %i.bc = insertelement <2 x double> poison, double %8, i64 1 ; 2 uses
  %i.bd = insertelement <2 x double> %i.aj, double %6, i64 1 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert265 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat266 = shufflevector <2 x double> %broadcast.splatinsert265, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert267 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat268 = shufflevector <2 x double> %broadcast.splatinsert267, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert269 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat270 = shufflevector <2 x double> %broadcast.splatinsert269, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert271 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat272 = shufflevector <2 x double> %broadcast.splatinsert271, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.be = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.be, -32
  br label %.preheader224

.preheader224:                                    ; preds = %bb.a, %bb.c
  %.0220231 = phi i32 [ 0, %bb.a ], [ %i.qv, %bb.c ]
  br label %.preheader221

bb.b:                                             ; preds = %bb.c
  ret void

.preheader221:                                    ; preds = %.preheader224, %middle.block350
  %indvars.iv233 = phi i64 [ 1, %.preheader224 ], [ %indvars.iv.next234, %middle.block350 ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv233 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv233 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4096 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 -4096  ; 2 uses
  %i.bj = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv233 ; 2 uses
  br i1 %conflict.rdx328.not, label %vector.body341, label %scalar.ph329

vector.body341:                                   ; preds = %.preheader221, %vector.body341
  %index342 = phi i64 [ %index.next349, %vector.body341 ], [ 0, %.preheader221 ] ; 3 uses
  %i.bk = or disjoint i64 %index342, 1            ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bk
  %wide.load343 = load <2 x double>, ptr %i.bl, align 8, !tbaa !8, !alias.scope !10
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bk
  %wide.load344 = load <2 x double>, ptr %i.bm, align 8, !tbaa !8, !alias.scope !13
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bk
  %wide.load345 = load <2 x double>, ptr %i.bn, align 8, !tbaa !8, !alias.scope !13
  %i.bo = fadd <2 x double> %wide.load344, %wide.load345
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk ; 2 uses
  %wide.load346 = load <2 x double>, ptr %i.bp, align 8, !tbaa !8, !alias.scope !13 ; 4 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load346, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bo)
  %i.br = fdiv <2 x double> %i.bq, %broadcast.splat332
  %i.bs = fadd <2 x double> %wide.load343, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index342
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load347 = load <2 x double>, ptr %i.bu, align 8, !tbaa !8, !alias.scope !13
  %i.bv = getelementptr i8, ptr %i.bp, i64 -8
  %wide.load348 = load <2 x double>, ptr %i.bv, align 8, !tbaa !8, !alias.scope !13
  %i.bw = fadd <2 x double> %wide.load347, %wide.load348
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load346, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bw)
  %i.by = fdiv <2 x double> %i.bx, %broadcast.splat334
  %i.bz = fadd <2 x double> %i.bs, %i.by
  %i.ca = fsub <2 x double> %broadcast.splat336, %wide.load346
  %i.cb = fdiv <2 x double> %i.ca, %broadcast.splat338
  %i.cc = fadd <2 x double> %i.cb, %i.bz
  %i.cd = fmul <2 x double> %broadcast.splat340, %i.cc
  %i.ce = fadd <2 x double> %wide.load346, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  store <2 x double> %i.ce, ptr %i.cf, align 8, !tbaa !8, !alias.scope !15, !noalias !17
  %index.next349 = add nuw i64 %index342, 2       ; 2 uses
  %i.cg = icmp eq i64 %index.next349, 510
  br i1 %i.cg, label %middle.block350, label %vector.body341, !llvm.loop !18

scalar.ph329:                                     ; preds = %.preheader221, %scalar.ph329
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph329 ], [ 1, %.preheader221 ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr i8, ptr %i.cn, i64 -8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cq, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cs, i64 1
  %i.cx = fadd <2 x double> %i.cu, %i.cw
  %i.cy = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cx)
  %i.db = fdiv <2 x double> %i.da, %i.aq          ; 2 uses
  %i.dc = extractelement <2 x double> %i.db, i64 0
  %i.dd = fadd double %i.ci, %i.dc
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = fadd double %i.dd, %i.de
  %i.dg = fsub double %8, %i.co
  %i.dh = fdiv double %i.dg, %6
  %i.di = fadd double %i.dh, %i.df
  %i.dj = fmul double %i.c, %i.di
  %i.dk = fadd double %i.co, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  store double %i.dk, ptr %i.dl, align 8, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv.next, 511
  br i1 %exitcond.not, label %middle.block350, label %scalar.ph329, !llvm.loop !22

middle.block350:                                  ; preds = %vector.body341, %scalar.ph329
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, 511
  br i1 %exitcond236.not, label %vector.memcheck277, label %.preheader221, !llvm.loop !23

vector.memcheck277:                               ; preds = %middle.block350
  %i.dm = load double, ptr %2, align 8, !tbaa !8
  %i.dn = load double, ptr %i.d, align 8, !tbaa !8
  %i.do = load double, ptr %1, align 8, !tbaa !8  ; 3 uses
  %i.dp = load double, ptr %i.e, align 8, !tbaa !8
  %i.dq = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fsub <2 x double> %i.dr, %i.dt
  %i.dv = fdiv <2 x double> %i.du, %i.ak          ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  %i.dx = fadd double %i.dm, %i.dw
  %i.dy = extractelement <2 x double> %i.dv, i64 1
  %i.dz = fadd double %i.dx, %i.dy
  %i.ea = fsub double %8, %i.do
  %i.eb = fdiv double %i.ea, %6
  %i.ec = fadd double %i.eb, %i.dz
  %i.ed = fmul double %i.c, %i.ec
  %i.ee = fadd double %i.do, %i.ed
  store double %i.ee, ptr %0, align 8, !tbaa !8
  %i.ef = load double, ptr %i.f, align 8, !tbaa !8
  %i.eg = load double, ptr %i.t, align 8, !tbaa !8
  %i.eh = load double, ptr %i.g, align 8, !tbaa !8 ; 3 uses
  %i.ei = load double, ptr %i.h, align 8, !tbaa !8
  %i.ej = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1
  %i.el = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fsub <2 x double> %i.ek, %i.em
  %i.eo = fdiv <2 x double> %i.en, %i.ak          ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = fadd double %i.ef, %i.ep
  %i.er = extractelement <2 x double> %i.eo, i64 1
  %i.es = fadd double %i.eq, %i.er
  %i.et = fsub double %8, %i.eh
  %i.eu = fdiv double %i.et, %6
  %i.ev = fadd double %i.eu, %i.es
  %i.ew = fmul double %i.c, %i.ev
  %i.ex = fadd double %i.eh, %i.ew
  store double %i.ex, ptr %i.i, align 8, !tbaa !8
  %i.ey = load double, ptr %i.k, align 8, !tbaa !8
  %i.ez = load double, ptr %i.m, align 8, !tbaa !8
  %i.fa = load double, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  %i.fb = load double, ptr %i.p, align 8, !tbaa !8
  %i.fc = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fsub <2 x double> %i.fd, %i.ff
  %i.fh = fdiv <2 x double> %i.fg, %i.ak          ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %i.fj = fadd double %i.ey, %i.fi
  %i.fk = extractelement <2 x double> %i.fh, i64 1
  %i.fl = fadd double %i.fj, %i.fk
  %i.fm = fsub double %8, %i.fa
  %i.fn = fdiv double %i.fm, %6
  %i.fo = fadd double %i.fn, %i.fl
  %i.fp = fmul double %i.c, %i.fo
  %i.fq = fadd double %i.fa, %i.fp
  store double %i.fq, ptr %i.r, align 8, !tbaa !8
  %i.fr = load double, ptr %i.j, align 8, !tbaa !8
  %i.fs = load double, ptr %i.s, align 8, !tbaa !8
  %i.ft = load double, ptr %i.l, align 8, !tbaa !8 ; 3 uses
  %i.fu = load double, ptr %i.o, align 8, !tbaa !8
  %i.fv = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fu, i64 1
  %i.fx = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fsub <2 x double> %i.fw, %i.fy
  %i.ga = fdiv <2 x double> %i.fz, %i.ak          ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %i.gc = fadd double %i.fr, %i.gb
  %i.gd = extractelement <2 x double> %i.ga, i64 1
  %i.ge = fadd double %i.gc, %i.gd
  %i.gf = fsub double %8, %i.ft
  %i.gg = fdiv double %i.gf, %6
  %i.gh = fadd double %i.gg, %i.ge
  %i.gi = fmul double %i.c, %i.gh
  %i.gj = fadd double %i.ft, %i.gi
  store double %i.gj, ptr %i.q, align 8, !tbaa !8
  br i1 %conflict.rdx288.not, label %vector.body301, label %scalar.ph289

vector.body301:                                   ; preds = %vector.memcheck277, %vector.body301
  %index302 = phi i64 [ %index.next313, %vector.body301 ], [ 0, %vector.memcheck277 ] ; 5 uses
  %i.gk = or disjoint i64 %index302, 1            ; 8 uses
end_hunk_0
