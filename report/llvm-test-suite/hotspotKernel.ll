Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hotspotKernel?download=true
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
  %i.z = insertelement <2 x ptr> %i.y, ptr %1, i64 1 ; 6 uses
  %i.aa = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 2093056, i64 2097152>
  %i.ab = getelementptr i8, <2 x ptr> %i.v, i64 8 ; 2 uses
  %i.ac = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 2097144, i64 2097152>
  %i.ad = getelementptr i8, <2 x ptr> %i.v, i64 2097144
  %i.ae = getelementptr i8, <2 x ptr> %i.v, i64 4104
  %i.af = getelementptr i8, <2 x ptr> %i.v, i64 2093048
  %9 = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 4104, i64 8>
  %10 = getelementptr i8, <2 x ptr> %i.z, <2 x i64> <i64 2093048, i64 2097144>
  %11 = shufflevector <2 x ptr> %i.w, <2 x ptr> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x ptr> %i.ab, <2 x ptr> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ah = insertelement <2 x double> poison, double %4, i64 0 ; 2 uses
  %i.ai = insertelement <2 x double> %i.ah, double %5, i64 1 ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %8, i64 1 ; 4 uses
  %i.ak = insertelement <2 x double> poison, double %5, i64 0 ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double %6, i64 1 ; 3 uses
  %i.am = icmp ult <2 x ptr> %9, %i.af
  %i.an = icmp ult <2 x ptr> %i.ae, %10
  %i.ao = and <2 x i1> %i.an, %i.am
  %i.ap = bitcast <2 x i1> %i.ao to i2
  %.not = icmp eq i2 %i.ap, 0
  %i.aq = insertelement <2 x double> %i.ak, double %4, i64 1
  %broadcast.splatinsert330 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat331 = shufflevector <2 x double> %broadcast.splatinsert330, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert332 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat333 = shufflevector <2 x double> %broadcast.splatinsert332, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert334 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat335 = shufflevector <2 x double> %broadcast.splatinsert334, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert336 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat337 = shufflevector <2 x double> %broadcast.splatinsert336, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat339 = shufflevector <2 x double> %broadcast.splatinsert338, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = icmp ult <2 x ptr> %i.ag, %i.ad
  %i.as = icmp ult <2 x ptr> %i.ab, %i.ac
  %i.at = and <2 x i1> %i.as, %i.ar
  %i.au = bitcast <2 x i1> %i.at to i2
  %.not351 = icmp eq i2 %i.au, 0
  %broadcast.splatinsert290 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat291 = shufflevector <2 x double> %broadcast.splatinsert290, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert292 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat293 = shufflevector <2 x double> %broadcast.splatinsert292, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert294 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat295 = shufflevector <2 x double> %broadcast.splatinsert294, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert296 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat297 = shufflevector <2 x double> %broadcast.splatinsert296, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert298 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat299 = shufflevector <2 x double> %broadcast.splatinsert298, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = icmp ult <2 x ptr> %11, %i.x
  %i.aw = icmp ult <2 x ptr> %i.w, %i.aa
  %i.ax = and <2 x i1> %i.aw, %i.av
  %i.ay = bitcast <2 x i1> %i.ax to i2
  %.not352 = icmp eq i2 %i.ay, 0
  %i.az = insertelement <2 x double> %i.ah, double %6, i64 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert264 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat265 = shufflevector <2 x double> %broadcast.splatinsert264, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert266 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat267 = shufflevector <2 x double> %broadcast.splatinsert266, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert268 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat269 = shufflevector <2 x double> %broadcast.splatinsert268, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert270 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat271 = shufflevector <2 x double> %broadcast.splatinsert270, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ba, -32
  br label %.preheader224

.preheader224:                                    ; preds = %bb.a, %bb.c
  %.0220231 = phi i32 [ 0, %bb.a ], [ %i.qj, %bb.c ]
  br label %.preheader221

bb.b:                                             ; preds = %bb.c
  ret void

.preheader221:                                    ; preds = %.preheader224, %middle.block349
  %indvars.iv233 = phi i64 [ 1, %.preheader224 ], [ %indvars.iv.next234, %middle.block349 ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv233 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv233 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4096 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 -4096  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv233 ; 2 uses
  br i1 %.not, label %vector.body340, label %scalar.ph328

vector.body340:                                   ; preds = %.preheader221, %vector.body340
  %index341 = phi i64 [ %index.next348, %vector.body340 ], [ 0, %.preheader221 ] ; 3 uses
  %i.bg = or disjoint i64 %index341, 1            ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bg
  %wide.load342 = load <2 x double>, ptr %i.bh, align 8, !tbaa !32, !alias.scope !33
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bg
  %wide.load343 = load <2 x double>, ptr %i.bi, align 8, !tbaa !32, !alias.scope !34
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %wide.load344 = load <2 x double>, ptr %i.bj, align 8, !tbaa !32, !alias.scope !34
  %i.bk = fadd <2 x double> %wide.load343, %wide.load344
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  %wide.load345 = load <2 x double>, ptr %i.bl, align 8, !tbaa !32, !alias.scope !34 ; 4 uses
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load345, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bk)
  %i.bn = fdiv <2 x double> %i.bm, %broadcast.splat331
  %i.bo = fadd <2 x double> %wide.load342, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index341
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load346 = load <2 x double>, ptr %i.bq, align 8, !tbaa !32, !alias.scope !34
  %i.br = getelementptr i8, ptr %i.bl, i64 -8
  %wide.load347 = load <2 x double>, ptr %i.br, align 8, !tbaa !32, !alias.scope !34
  %i.bs = fadd <2 x double> %wide.load346, %wide.load347
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load345, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bs)
  %i.bu = fdiv <2 x double> %i.bt, %broadcast.splat333
  %i.bv = fadd <2 x double> %i.bo, %i.bu
  %i.bw = fsub <2 x double> %broadcast.splat335, %wide.load345
  %i.bx = fdiv <2 x double> %i.bw, %broadcast.splat337
  %i.by = fadd <2 x double> %i.bx, %i.bv
  %i.bz = fmul <2 x double> %broadcast.splat339, %i.by
  %i.ca = fadd <2 x double> %wide.load345, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !32, !alias.scope !35, !noalias !36
  %index.next348 = add nuw i64 %index341, 2       ; 2 uses
  %i.cc = icmp eq i64 %index.next348, 510
  br i1 %i.cc, label %middle.block349, label %vector.body340, !llvm.loop !12

scalar.ph328:                                     ; preds = %.preheader221, %scalar.ph328
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph328 ], [ 1, %.preheader221 ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !32
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !32
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !32 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !32
  %i.cn = getelementptr i8, ptr %i.cj, i64 -8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !32
  %i.cp = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cm, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 1
  %i.ct = fadd <2 x double> %i.cq, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ct)
  %i.cx = fdiv <2 x double> %i.cw, %i.aq          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  %i.cz = fadd double %i.ce, %i.cy
  %i.da = extractelement <2 x double> %i.cx, i64 1
  %i.db = fadd double %i.cz, %i.da
  %i.dc = fsub double %8, %i.ck
  %i.dd = fdiv double %i.dc, %6
  %i.de = fadd double %i.dd, %i.db
  %i.df = fmul double %i.c, %i.de
  %i.dg = fadd double %i.ck, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store double %i.dg, ptr %i.dh, align 8, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, 511
  br i1 %exitcond.not, label %middle.block349, label %scalar.ph328, !llvm.loop !13

middle.block349:                                  ; preds = %vector.body340, %scalar.ph328
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, 511
  br i1 %exitcond236.not, label %vector.memcheck276, label %.preheader221, !llvm.loop !14

vector.memcheck276:                               ; preds = %middle.block349
  %i.di = load double, ptr %2, align 8, !tbaa !32
  %i.dj = load double, ptr %i.d, align 8, !tbaa !32
  %i.dk = load double, ptr %1, align 8, !tbaa !32 ; 3 uses
  %i.dl = load double, ptr %i.e, align 8, !tbaa !32
  %i.dm = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fsub <2 x double> %i.dn, %i.dp
  %i.dr = fdiv <2 x double> %i.dq, %i.ai          ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = fadd double %i.di, %i.ds
  %i.du = extractelement <2 x double> %i.dr, i64 1
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = fsub double %8, %i.dk
  %i.dx = fdiv double %i.dw, %6
  %i.dy = fadd double %i.dx, %i.dv
  %i.dz = fmul double %i.c, %i.dy
  %i.ea = fadd double %i.dk, %i.dz
  store double %i.ea, ptr %0, align 8, !tbaa !32
  %i.eb = load double, ptr %i.f, align 8, !tbaa !32
  %i.ec = load double, ptr %i.t, align 8, !tbaa !32
  %i.ed = load double, ptr %i.g, align 8, !tbaa !32 ; 3 uses
  %i.ee = fsub double %i.ec, %i.ed
  %i.ef = fdiv double %i.ee, %4
  %i.eg = fadd double %i.eb, %i.ef
  %i.eh = load double, ptr %i.h, align 8, !tbaa !32
  %i.ei = insertelement <2 x double> %i.aj, double %i.eh, i64 0
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fsub <2 x double> %i.ei, %i.ek
  %i.em = fdiv <2 x double> %i.el, %i.al          ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = fadd double %i.eg, %i.en
  %i.ep = extractelement <2 x double> %i.em, i64 1
  %i.eq = fadd double %i.ep, %i.eo
  %i.er = fmul double %i.c, %i.eq
  %i.es = fadd double %i.ed, %i.er
  store double %i.es, ptr %i.i, align 8, !tbaa !32
  %i.et = load double, ptr %i.k, align 8, !tbaa !32
  %i.eu = load double, ptr %i.m, align 8, !tbaa !32
  %i.ev = load double, ptr %i.n, align 8, !tbaa !32 ; 3 uses
  %i.ew = load double, ptr %i.p, align 8, !tbaa !32
  %i.ex = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fsub <2 x double> %i.ey, %i.fa
  %i.fc = fdiv <2 x double> %i.fb, %i.ai          ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = fadd double %i.et, %i.fd
  %i.ff = extractelement <2 x double> %i.fc, i64 1
  %i.fg = fadd double %i.fe, %i.ff
  %i.fh = fsub double %8, %i.ev
  %i.fi = fdiv double %i.fh, %6
  %i.fj = fadd double %i.fi, %i.fg
  %i.fk = fmul double %i.c, %i.fj
  %i.fl = fadd double %i.ev, %i.fk
  store double %i.fl, ptr %i.r, align 8, !tbaa !32
  %i.fm = load double, ptr %i.j, align 8, !tbaa !32
  %i.fn = load double, ptr %i.s, align 8, !tbaa !32
  %i.fo = load double, ptr %i.l, align 8, !tbaa !32 ; 3 uses
  %i.fp = fsub double %i.fn, %i.fo
  %i.fq = fdiv double %i.fp, %4
  %i.fr = fadd double %i.fm, %i.fq
  %i.fs = load double, ptr %i.o, align 8, !tbaa !32
  %i.ft = insertelement <2 x double> %i.aj, double %i.fs, i64 0
  %i.fu = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fsub <2 x double> %i.ft, %i.fv
  %i.fx = fdiv <2 x double> %i.fw, %i.al          ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  %i.fz = fadd double %i.fr, %i.fy
  %i.ga = extractelement <2 x double> %i.fx, i64 1
  %i.gb = fadd double %i.ga, %i.fz
  %i.gc = fmul double %i.c, %i.gb
  %i.gd = fadd double %i.fo, %i.gc
  store double %i.gd, ptr %i.q, align 8, !tbaa !32
  br i1 %.not351, label %vector.body300, label %scalar.ph288

vector.body300:                                   ; preds = %vector.memcheck276, %vector.body300
  %index301 = phi i64 [ %index.next312, %vector.body300 ], [ 0, %vector.memcheck276 ] ; 5 uses
  %i.ge = or disjoint i64 %index301, 1            ; 8 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ge
  %wide.load302 = load <2 x double>, ptr %i.gf, align 8, !tbaa !32, !alias.scope !40
  %i.gg = add nuw nsw i64 %index301, 2            ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gg
end_hunk_0
