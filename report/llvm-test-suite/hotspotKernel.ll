Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hotspotKernel?download=true
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @hotspotKernel(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) local_unnamed_addr #0 !guid !31 {
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
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2093056 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2097144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2093064
  %i.t = getelementptr i8, ptr %1, i64 4080
  %i.u = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.v = insertelement <2 x ptr> %i.u, ptr %0, i64 1 ; 4 uses
  %i.w = getelementptr i8, <2 x ptr> %i.v, i64 4096 ; 2 uses
  %i.x = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %1, i64 1 ; 4 uses
  %i.z = getelementptr i8, <2 x ptr> %i.y, <2 x i64> <i64 2093056, i64 2097152>
  %i.aa = getelementptr i8, <2 x ptr> %i.v, i64 2093056
  %i.ab = getelementptr i8, <2 x ptr> %i.v, i64 8 ; 2 uses
  %i.ac = getelementptr i8, <2 x ptr> %i.y, <2 x i64> <i64 2097144, i64 2097152>
  %i.ad = getelementptr i8, <2 x ptr> %i.v, i64 2097144
  %i.ae = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %1, i64 1 ; 2 uses
  %i.ag = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.ah = insertelement <2 x ptr> %i.ag, ptr %0, i64 1 ; 2 uses
  %i.ai = getelementptr i8, <2 x ptr> %i.af, <2 x i64> <i64 2093048, i64 2097144>
  %i.aj = getelementptr i8, <2 x ptr> %i.ah, i64 2093048
  %i.ak = getelementptr i8, <2 x ptr> %i.ah, i64 4104
  %i.al = getelementptr i8, <2 x ptr> %i.af, <2 x i64> <i64 4104, i64 8>
  %i.am = shufflevector <2 x ptr> %i.w, <2 x ptr> %i.y, <2 x i32> <i32 1, i32 3>
  %i.an = shufflevector <2 x ptr> %i.ab, <2 x ptr> %i.y, <2 x i32> <i32 1, i32 3>
  %i.ao = insertelement <2 x double> poison, double %4, i64 0 ; 2 uses
  %i.ap = insertelement <2 x double> %i.ao, double %5, i64 1 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %8, i64 1 ; 4 uses
  %i.ar = insertelement <2 x double> poison, double %5, i64 0 ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %6, i64 1 ; 3 uses
  %i.at = icmp ult <2 x ptr> %i.al, %i.aj
  %i.au = icmp ult <2 x ptr> %i.ak, %i.ai
  %i.av = and <2 x i1> %i.au, %i.at
  %i.aw = bitcast <2 x i1> %i.av to i2
  %.not = icmp eq i2 %i.aw, 0
  %i.ax = insertelement <2 x double> %i.ar, double %4, i64 1
  %broadcast.splatinsert365 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat366 = shufflevector <2 x double> %broadcast.splatinsert365, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert367 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat368 = shufflevector <2 x double> %broadcast.splatinsert367, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert369 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat370 = shufflevector <2 x double> %broadcast.splatinsert369, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert371 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat372 = shufflevector <2 x double> %broadcast.splatinsert371, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat374 = shufflevector <2 x double> %broadcast.splatinsert373, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = icmp ult <2 x ptr> %i.an, %i.ad
  %i.az = icmp ult <2 x ptr> %i.ab, %i.ac
  %i.ba = and <2 x i1> %i.az, %i.ay
  %i.bb = bitcast <2 x i1> %i.ba to i2
  %.not386 = icmp eq i2 %i.bb, 0
  %broadcast.splatinsert311 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat312 = shufflevector <2 x double> %broadcast.splatinsert311, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert313 = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat314 = shufflevector <2 x double> %broadcast.splatinsert313, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat316 = shufflevector <2 x double> %broadcast.splatinsert315, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat318 = shufflevector <2 x double> %broadcast.splatinsert317, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert319 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat320 = shufflevector <2 x double> %broadcast.splatinsert319, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = icmp ult <2 x ptr> %i.am, %i.aa
  %i.bd = icmp ult <2 x ptr> %i.w, %i.z
  %i.be = and <2 x i1> %i.bd, %i.bc
  %i.bf = bitcast <2 x i1> %i.be to i2
  %.not387 = icmp eq i2 %i.bf, 0
  %i.bg = insertelement <2 x double> %i.ao, double %6, i64 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %5, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert272 = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat273 = shufflevector <2 x double> %broadcast.splatinsert272, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert274 = insertelement <2 x double> poison, double %8, i64 0
  %broadcast.splat275 = shufflevector <2 x double> %broadcast.splatinsert274, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert276 = insertelement <2 x double> poison, double %6, i64 0
  %broadcast.splat277 = shufflevector <2 x double> %broadcast.splatinsert276, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert278 = insertelement <2 x double> poison, double %i.c, i64 0
  %broadcast.splat279 = shufflevector <2 x double> %broadcast.splatinsert278, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bh, -32
  br label %.preheader224

.preheader224:                                    ; preds = %bb.a, %bb.c
  %.0220231 = phi i32 [ 0, %bb.a ], [ %i.qq, %bb.c ]
  br label %.preheader221

bb.b:                                             ; preds = %bb.c
  ret void

.preheader221:                                    ; preds = %.preheader224, %middle.block384
  %indvars.iv233 = phi i64 [ 1, %.preheader224 ], [ %indvars.iv.next234, %middle.block384 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv233 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4096 x i8], ptr %1, i64 %indvars.iv233 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4096 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 -4096  ; 2 uses
  %i.bm = getelementptr inbounds nuw [4096 x i8], ptr %0, i64 %indvars.iv233 ; 2 uses
  br i1 %.not, label %vector.body375, label %scalar.ph355

vector.body375:                                   ; preds = %.preheader221, %vector.body375
  %index376 = phi i64 [ %index.next383, %vector.body375 ], [ 0, %.preheader221 ] ; 3 uses
  %i.bn = or disjoint i64 %index376, 1            ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn
  %wide.load377 = load <2 x double>, ptr %i.bo, align 8, !tbaa !33, !alias.scope !34
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  %wide.load378 = load <2 x double>, ptr %i.bp, align 8, !tbaa !33, !alias.scope !35
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  %wide.load379 = load <2 x double>, ptr %i.bq, align 8, !tbaa !33, !alias.scope !35
  %i.br = fadd <2 x double> %wide.load378, %wide.load379
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bn ; 2 uses
  %wide.load380 = load <2 x double>, ptr %i.bs, align 8, !tbaa !33, !alias.scope !35 ; 4 uses
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load380, <2 x double> splat (double -2.000000e+00), <2 x double> %i.br)
  %i.bu = fdiv <2 x double> %i.bt, %broadcast.splat366
  %i.bv = fadd <2 x double> %wide.load377, %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index376
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load381 = load <2 x double>, ptr %i.bx, align 8, !tbaa !33, !alias.scope !35
  %i.by = getelementptr i8, ptr %i.bs, i64 -8
  %wide.load382 = load <2 x double>, ptr %i.by, align 8, !tbaa !33, !alias.scope !35
  %i.bz = fadd <2 x double> %wide.load381, %wide.load382
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load380, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bz)
  %i.cb = fdiv <2 x double> %i.ca, %broadcast.splat368
  %i.cc = fadd <2 x double> %i.bv, %i.cb
  %i.cd = fsub <2 x double> %broadcast.splat370, %wide.load380
  %i.ce = fdiv <2 x double> %i.cd, %broadcast.splat372
  %i.cf = fadd <2 x double> %i.ce, %i.cc
  %i.cg = fmul <2 x double> %broadcast.splat374, %i.cf
  %i.ch = fadd <2 x double> %wide.load380, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store <2 x double> %i.ch, ptr %i.ci, align 8, !tbaa !33, !alias.scope !36, !noalias !37
  %index.next383 = add nuw i64 %index376, 2       ; 2 uses
  %i.cj = icmp eq i64 %index.next383, 510
  br i1 %i.cj, label %middle.block384, label %vector.body375, !llvm.loop !12

scalar.ph355:                                     ; preds = %.preheader221, %scalar.ph355
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph355 ], [ 1, %.preheader221 ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !33 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr i8, ptr %i.cq, i64 -8
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !33
  %i.cw = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cv, i64 1
  %i.da = fadd <2 x double> %i.cx, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> splat (double -2.000000e+00), <2 x double> %i.da)
  %i.de = fdiv <2 x double> %i.dd, %i.ax          ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = fadd double %i.cl, %i.df
  %i.dh = extractelement <2 x double> %i.de, i64 1
  %i.di = fadd double %i.dg, %i.dh
  %i.dj = fsub double %8, %i.cr
  %i.dk = fdiv double %i.dj, %6
  %i.dl = fadd double %i.dk, %i.di
  %i.dm = fmul double %i.c, %i.dl
  %i.dn = fadd double %i.cr, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  store double %i.dn, ptr %i.do, align 8, !tbaa !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, 511
  br i1 %exitcond.not, label %middle.block384, label %scalar.ph355, !llvm.loop !13

middle.block384:                                  ; preds = %vector.body375, %scalar.ph355
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next234, 511
  br i1 %exitcond236.not, label %vector.memcheck302, label %.preheader221, !llvm.loop !14

vector.memcheck302:                               ; preds = %middle.block384
  %i.dp = load double, ptr %2, align 8, !tbaa !33
  %i.dq = load double, ptr %i.d, align 8, !tbaa !33
  %i.dr = load double, ptr %1, align 8, !tbaa !33 ; 3 uses
  %i.ds = load double, ptr %i.e, align 8, !tbaa !33
  %i.dt = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.ds, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fsub <2 x double> %i.du, %i.dw
  %i.dy = fdiv <2 x double> %i.dx, %i.ap          ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = fadd double %i.dp, %i.dz
  %i.eb = extractelement <2 x double> %i.dy, i64 1
  %i.ec = fadd double %i.ea, %i.eb
  %i.ed = fsub double %8, %i.dr
  %i.ee = fdiv double %i.ed, %6
  %i.ef = fadd double %i.ee, %i.ec
  %i.eg = fmul double %i.c, %i.ef
  %i.eh = fadd double %i.dr, %i.eg
  store double %i.eh, ptr %0, align 8, !tbaa !33
  %i.ei = load double, ptr %i.f, align 8, !tbaa !33
  %i.ej = load double, ptr %i.t, align 8, !tbaa !33
  %i.ek = load double, ptr %i.g, align 8, !tbaa !33 ; 3 uses
  %i.el = fsub double %i.ej, %i.ek
  %i.em = fdiv double %i.el, %4
  %i.en = fadd double %i.ei, %i.em
  %i.eo = load double, ptr %i.h, align 8, !tbaa !33
  %i.ep = insertelement <2 x double> %i.aq, double %i.eo, i64 0
  %i.eq = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = fsub <2 x double> %i.ep, %i.er
  %i.et = fdiv <2 x double> %i.es, %i.as          ; 2 uses
  %i.eu = extractelement <2 x double> %i.et, i64 0
  %i.ev = fadd double %i.en, %i.eu
  %i.ew = extractelement <2 x double> %i.et, i64 1
  %i.ex = fadd double %i.ew, %i.ev
  %i.ey = fmul double %i.c, %i.ex
  %i.ez = fadd double %i.ek, %i.ey
  store double %i.ez, ptr %i.i, align 8, !tbaa !33
  %i.fa = load double, ptr %i.k, align 8, !tbaa !33
  %i.fb = load double, ptr %i.m, align 8, !tbaa !33
  %i.fc = load double, ptr %i.n, align 8, !tbaa !33 ; 3 uses
  %i.fd = load double, ptr %i.p, align 8, !tbaa !33
  %i.fe = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.fd, i64 1
end_hunk_0
