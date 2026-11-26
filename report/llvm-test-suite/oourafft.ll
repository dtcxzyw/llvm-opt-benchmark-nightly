Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oourafft?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cftfsub:bb.a
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep130, i64 %i.bu ; 2 uses
  %wide.vec427 = load <4 x double>, ptr %i.cc, align 8, !tbaa !13 ; 2 uses
  %strided.vec428 = shufflevector <4 x double> %wide.vec427, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec429 = shufflevector <4 x double> %wide.vec427, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cd = fadd <2 x double> %strided.vec425, %strided.vec428 ; 2 uses
  %i.ce = fadd <2 x double> %strided.vec426, %strided.vec429 ; 2 uses
  %i.cf = fsub <2 x double> %strided.vec425, %strided.vec428 ; 2 uses
  %i.cg = fsub <2 x double> %strided.vec426, %strided.vec429 ; 2 uses
  %i.ch = fadd <2 x double> %i.bx, %i.cd
  %i.ci = fadd <2 x double> %i.by, %i.ce
  %interleaved.vec = shufflevector <2 x double> %i.ch, <2 x double> %i.ci, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.bv, align 8, !tbaa !13
  %i.cj = fsub <2 x double> %i.bx, %i.cd
  %i.ck = fsub <2 x double> %i.by, %i.ce
  %interleaved.vec430 = shufflevector <2 x double> %i.cj, <2 x double> %i.ck, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec430, ptr %i.cb, align 8, !tbaa !13
  %i.cl = fsub <2 x double> %i.bz, %i.cg
  %i.cm = fadd <2 x double> %i.ca, %i.cf
  %interleaved.vec431 = shufflevector <2 x double> %i.cl, <2 x double> %i.cm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec431, ptr %i.bw, align 8, !tbaa !13
  %i.cn = fadd <2 x double> %i.bz, %i.cg
  %i.co = fsub <2 x double> %i.ca, %i.cf
  %interleaved.vec432 = shufflevector <2 x double> %i.cn, <2 x double> %i.co, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec432, ptr %i.cc, align 8, !tbaa !13
  %index.next433 = add nuw i64 %index419, 2       ; 2 uses
  %i.cp = icmp eq i64 %index.next433, %n.vec417
  br i1 %i.cp, label %middle.block434, label %vector.body418, !llvm.loop !54

middle.block434:                                  ; preds = %vector.body418
  %cmp.n435 = icmp eq i64 %i.ak, %n.vec417
  br i1 %cmp.n435, label %.loopexit, label %.lr.ph123.preheader437

.lr.ph123.preheader437:                           ; preds = %vector.memcheck304, %.lr.ph123.preheader, %middle.block434
  %indvars.iv126.ph = phi i64 [ 0, %vector.memcheck304 ], [ 0, %.lr.ph123.preheader ], [ %i.br, %middle.block434 ]
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader437, %.lr.ph123
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %.lr.ph123 ], [ %indvars.iv126.ph, %.lr.ph123.preheader437 ] ; 3 uses
  %i.cq = add nuw nsw i64 %indvars.iv126, %i.ag   ; 2 uses
  %i.cr = add nuw nsw i64 %i.cq, %i.ag            ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv126 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cr ; 2 uses
  %gep131 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep130, i64 %i.cr ; 2 uses
  %i.cv = load <2 x double>, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.cw = load <2 x double>, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cx = fsub <2 x double> %i.cv, %i.cw          ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %i.cz = load <2 x double>, ptr %gep131, align 8, !tbaa !13 ; 2 uses
  %i.da = fsub <2 x double> %i.cy, %i.cz
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dc = fadd <2 x double> %i.cv, %i.cw          ; 2 uses
  %i.dd = fadd <2 x double> %i.cy, %i.cz          ; 2 uses
  %i.de = fadd <2 x double> %i.dc, %i.dd
  store <2 x double> %i.de, ptr %i.cs, align 8, !tbaa !13
  %i.df = fsub <2 x double> %i.dc, %i.dd
  store <2 x double> %i.df, ptr %i.cu, align 8, !tbaa !13
  %i.dg = fsub <2 x double> %i.cx, %i.db          ; 2 uses
  %i.dh = fadd <2 x double> %i.cx, %i.db          ; 2 uses
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.di, ptr %i.ct, align 8, !tbaa !13
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.dg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dj, ptr %gep131, align 8, !tbaa !13
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %i.dk = icmp samesign ult i64 %indvars.iv.next127, %i.ah
  br i1 %i.dk, label %.lr.ph123, label %.loopexit, !llvm.loop !55

.lr.ph121:                                        ; preds = %.lr.ph121.preheader438, %.lr.ph121
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph121 ], [ 0, %.lr.ph121.preheader438 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.dm = load <2 x double>, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dn = load <2 x double>, ptr %gep, align 8, !tbaa !13 ; 2 uses
  %i.do = fadd <2 x double> %i.dm, %i.dn
  store <2 x double> %i.do, ptr %i.dl, align 8, !tbaa !13
  %i.dp = fsub <2 x double> %i.dm, %i.dn
  store <2 x double> %i.dp, ptr %gep, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dq = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.dq, label %.lr.ph121, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %vector.body, %.lr.ph121, %.lr.ph123, %middle.block434, %.preheader116, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @cft1st(i32 noundef range(i32 9, -2147483648) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 !guid !64 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !13  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %1, align 8, !tbaa !13
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !13
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.l, align 8, !tbaa !13
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.q, align 8, !tbaa !13
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.b, align 8, !tbaa !13
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.g, align 8, !tbaa !13
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !13
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.al = fadd double %i.ai, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = fadd double %i.an, %i.ap                ; 2 uses
  %i.ar = fsub double %i.ai, %i.ak                ; 2 uses
  %i.as = fsub double %i.an, %i.ap                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = fadd double %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = fadd double %i.az, %i.bb                ; 2 uses
  %i.bd = fsub double %i.au, %i.aw                ; 2 uses
  %i.be = fsub double %i.az, %i.bb                ; 2 uses
  %i.bf = fadd double %i.al, %i.ax
  store double %i.bf, ptr %i.ah, align 8, !tbaa !13
  %i.bg = fadd double %i.aq, %i.bc
  store double %i.bg, ptr %i.am, align 8, !tbaa !13
  %i.bh = fsub double %i.bc, %i.aq
  store double %i.bh, ptr %i.at, align 8, !tbaa !13
  %i.bi = fsub double %i.al, %i.ax
  store double %i.bi, ptr %i.ay, align 8, !tbaa !13
  %i.bj = fsub double %i.ar, %i.be                ; 2 uses
  %i.bk = fadd double %i.as, %i.bd                ; 2 uses
  %i.bl = fsub double %i.bj, %i.bk
  %i.bm = fmul double %i.ag, %i.bl
  store double %i.bm, ptr %i.aj, align 8, !tbaa !13
  %i.bn = fadd double %i.bk, %i.bj
  %i.bo = fmul double %i.ag, %i.bn
  store double %i.bo, ptr %i.ao, align 8, !tbaa !13
  %i.bp = fadd double %i.ar, %i.be                ; 2 uses
  %i.bq = fsub double %i.bd, %i.as                ; 2 uses
  %i.br = fsub double %i.bq, %i.bp
  %i.bs = fmul double %i.ag, %i.br
  store double %i.bs, ptr %i.av, align 8, !tbaa !13
  %i.bt = fadd double %i.bq, %i.bp
  %i.bu = fmul double %i.ag, %i.bt
  store double %i.bu, ptr %i.ba, align 8, !tbaa !13
  %i.bv = icmp samesign ugt i32 %0, 16
  br i1 %i.bv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.bw = zext nneg i32 %0 to i64                 ; 2 uses
  %i.bx = add nsw i64 %i.bw, -17                  ; 3 uses
  %i.by = lshr i64 %i.bx, 4                       ; 2 uses
  %i.bz = add nuw nsw i64 %i.by, 1                ; 3 uses
  %min.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.iters.check, label %.lr.ph.preheader318, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ca = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.cb = lshr i64 %i.bx, 4                       ; 2 uses
  %i.cc = shl i64 %i.cb, 7
  %i.cd = getelementptr i8, ptr %1, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 256    ; 2 uses
  %i.cf = getelementptr i8, ptr %2, i64 32
  %3 = shl i64 %i.cb, 5
  %i.cg = getelementptr i8, ptr %2, i64 %3
  %i.ch = getelementptr i8, ptr %i.cg, i64 64
  %i.ci = getelementptr i8, ptr %2, i64 16
  %4 = and i64 %i.bx, -16
  %i.cj = getelementptr i8, ptr %2, i64 %4
  %i.ck = getelementptr i8, ptr %i.cj, i64 32
  %bound0 = icmp ult ptr %i.ca, %i.ch
  %bound1 = icmp ult ptr %i.cf, %i.ce
  %found.conflict = and i1 %bound0, %bound1
  %bound0313 = icmp ult ptr %i.ca, %i.ck
  %bound1314 = icmp ult ptr %i.ci, %i.ce
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx = or i1 %found.conflict, %found.conflict315
  br i1 %conflict.rdx, label %.lr.ph.preheader318, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 2305843009213693950     ; 3 uses
  %i.cl = shl i64 %i.bz, 4
  %i.cm = or i64 %i.cl, 16
  %i.cn = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.co = shl nuw i64 %index, 4                   ; 2 uses
  %i.cp = shl nuw i64 %index, 1
  %i.cq = or disjoint i64 %i.cp, 2                ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cq
  %wide.vec = load <4 x double>, ptr %i.cr, align 8, !tbaa !13, !alias.scope !65 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 5 uses
  %strided.vec316 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.cs = shl nuw nsw i64 %i.cq, 4
  %i.ct = shl i64 %index, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 4 uses
  %i.cv = getelementptr i8, ptr %2, i64 %i.ct     ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 64
  %i.cx = load double, ptr %i.cu, align 8, !tbaa !13, !alias.scope !66
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !13, !alias.scope !66
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dc = getelementptr i8, ptr %i.cv, i64 72
  %i.dd = load double, ptr %i.db, align 8, !tbaa !13, !alias.scope !66
  %i.de = load double, ptr %i.dc, align 8, !tbaa !13, !alias.scope !66
  %i.df = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.de, i64 1 ; 4 uses
  %i.dh = fmul <2 x double> %strided.vec316, splat (double 2.000000e+00) ; 2 uses
  %i.di = fneg <2 x double> %i.dh
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dg, <2 x double> %i.da) ; 2 uses
  %i.dk = fneg <2 x double> %i.dg
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.da, <2 x double> %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.co ; 16 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 128 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %1, i64 %i.co ; 16 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 256
  %i.dq = load double, ptr %i.dn, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 144 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.do, i64 272
  %i.dw = load double, ptr %i.du, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1 ; 2 uses
  %i.ea = fadd <2 x double> %i.dt, %i.dz          ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 136 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.do, i64 264    ; 2 uses
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 152 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.do, i64 280    ; 2 uses
  %i.ej = load double, ptr %i.eh, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ek = load double, ptr %i.ei, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.el = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ek, i64 1 ; 2 uses
  %i.en = fadd <2 x double> %i.eg, %i.em          ; 2 uses
  %i.eo = fsub <2 x double> %i.dt, %i.dz          ; 2 uses
  %i.ep = fsub <2 x double> %i.eg, %i.em          ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 160 ; 2 uses
  %i.er = getelementptr i8, ptr %i.do, i64 288
  %i.es = load double, ptr %i.eq, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.et = load double, ptr %i.er, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.et, i64 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dm, i64 176 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.do, i64 304
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ez = load double, ptr %i.ex, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fa = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1 ; 2 uses
  %i.fc = fadd <2 x double> %i.ev, %i.fb          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dm, i64 168 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.do, i64 296    ; 2 uses
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fh = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.fg, i64 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dm, i64 184 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.do, i64 312    ; 2 uses
  %i.fl = load double, ptr %i.fj, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fm = load double, ptr %i.fk, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fn = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1 ; 2 uses
  %i.fp = fadd <2 x double> %i.fi, %i.fo          ; 2 uses
  %i.fq = fsub <2 x double> %i.ev, %i.fb          ; 2 uses
  %i.fr = fsub <2 x double> %i.fi, %i.fo          ; 2 uses
  %i.fs = fadd <2 x double> %i.ea, %i.fc          ; 2 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0
  store double %i.ft, ptr %i.dn, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fu = fadd <2 x double> %i.en, %i.fp          ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  store double %i.fv, ptr %i.eb, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.fw = fsub <2 x double> %i.ea, %i.fc          ; 2 uses
  %i.fx = fsub <2 x double> %i.en, %i.fp          ; 2 uses
  %i.fy = fneg <2 x double> %i.fx
  %i.fz = fmul <2 x double> %strided.vec316, %i.fy
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.fw, <2 x double> %i.fz) ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  store double %i.gb, ptr %i.eq, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gc = fmul <2 x double> %strided.vec316, %i.fw
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.fx, <2 x double> %i.gc) ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0
  store double %i.ge, ptr %i.fd, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gf = fsub <2 x double> %i.eo, %i.fr          ; 2 uses
  %i.gg = fadd <2 x double> %i.ep, %i.fq          ; 2 uses
  %i.gh = fneg <2 x double> %i.gg
  %i.gi = fmul <2 x double> %i.dg, %i.gh
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.gf, <2 x double> %i.gi) ; 2 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0
  store double %i.gk, ptr %i.du, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gl = shufflevector <2 x double> %i.fu, <2 x double> %i.gj, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gl, ptr %i.ec, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gm = fmul <2 x double> %i.dg, %i.gf
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.gg, <2 x double> %i.gm) ; 2 uses
  %i.go = extractelement <2 x double> %i.gn, i64 0
  store double %i.go, ptr %i.eh, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gp = shufflevector <2 x double> %i.gn, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gp, ptr %i.ei, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gq = fadd <2 x double> %i.eo, %i.fr          ; 2 uses
  %i.gr = fsub <2 x double> %i.ep, %i.fq          ; 2 uses
  %i.gs = fneg <2 x double> %i.gr
  %i.gt = fmul <2 x double> %i.dl, %i.gs
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gq, <2 x double> %i.gt) ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 0
  store double %i.gv, ptr %i.ew, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gw = shufflevector <2 x double> %i.gd, <2 x double> %i.gu, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.gw, ptr %i.fe, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.gx = fmul <2 x double> %i.dl, %i.gq
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gr, <2 x double> %i.gx) ; 2 uses
  %i.gz = extractelement <2 x double> %i.gy, i64 0
  store double %i.gz, ptr %i.fj, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ha = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.hb = getelementptr i8, ptr %i.cv, i64 80
  %i.hc = load double, ptr %i.ha, align 8, !tbaa !13, !alias.scope !66
  %i.hd = load double, ptr %i.hb, align 8, !tbaa !13, !alias.scope !66
  %i.he = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.hd, i64 1 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.hh = getelementptr i8, ptr %i.cv, i64 88
  %i.hi = load double, ptr %i.hg, align 8, !tbaa !13, !alias.scope !66
  %i.hj = load double, ptr %i.hh, align 8, !tbaa !13, !alias.scope !66
  %i.hk = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hj, i64 1 ; 4 uses
  %i.hm = fmul <2 x double> %strided.vec, splat (double 2.000000e+00) ; 2 uses
  %i.hn = fneg <2 x double> %i.hm
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hl, <2 x double> %i.hf) ; 2 uses
  %i.hp = fneg <2 x double> %i.hl
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hf, <2 x double> %i.hp) ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dm, i64 192 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.do, i64 320
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.hv = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hu, i64 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dm, i64 208 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.do, i64 336
  %i.hz = load double, ptr %i.hx, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ia = load double, ptr %i.hy, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ib = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.ia, i64 1 ; 2 uses
  %i.id = fadd <2 x double> %i.hw, %i.ic          ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dm, i64 200 ; 2 uses
  %i.if = getelementptr i8, ptr %i.do, i64 328    ; 2 uses
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ih = load double, ptr %i.if, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ii = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.ih, i64 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dm, i64 216 ; 2 uses
  %i.il = getelementptr i8, ptr %i.do, i64 344    ; 2 uses
  %i.im = load double, ptr %i.ik, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.in = load double, ptr %i.il, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.io = insertelement <2 x double> poison, double %i.im, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.in, i64 1 ; 2 uses
  %i.iq = fadd <2 x double> %i.ij, %i.ip          ; 2 uses
  %i.ir = fsub <2 x double> %i.hw, %i.ic          ; 2 uses
  %i.is = fsub <2 x double> %i.ij, %i.ip          ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.dm, i64 224 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.do, i64 352
  %i.iv = load double, ptr %i.it, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !13, !alias.scope !67, !noalias !68
  %i.ix = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.iw, i64 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.dm, i64 240 ; 2 uses
end_hunk_0
begin_hunk_1_@cftmdl:bb.a
  %i.sb = fsub <2 x double> %i.rp, %i.rv          ; 2 uses
  %i.sc = fsub <2 x double> %i.rq, %i.rw          ; 2 uses
  %i.sd = fneg <2 x double> %i.sc
  %i.se = fmul <2 x double> %broadcast.splat1216, %i.sd
  %i.sf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1214, <2 x double> %i.sb, <2 x double> %i.se)
  %i.sg = fmul <2 x double> %broadcast.splat1216, %i.sb
  %i.sh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1214, <2 x double> %i.sc, <2 x double> %i.sg)
  %interleaved.vec1240 = shufflevector <2 x double> %i.sf, <2 x double> %i.sh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1240, ptr %i.rt, align 8, !tbaa !13
  %i.si = fsub <2 x double> %i.rr, %i.ry          ; 2 uses
  %i.sj = fadd <2 x double> %i.rs, %i.rx          ; 2 uses
  %i.sk = fneg <2 x double> %i.sj
  %i.sl = fmul <2 x double> %broadcast.splat1218, %i.sk
  %i.sm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.si, <2 x double> %i.sl)
  %i.sn = fmul <2 x double> %broadcast.splat1218, %i.si
  %i.so = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.sj, <2 x double> %i.sn)
  %interleaved.vec1241 = shufflevector <2 x double> %i.sm, <2 x double> %i.so, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1241, ptr %i.ro, align 8, !tbaa !13
  %i.sp = fadd <2 x double> %i.rr, %i.ry          ; 2 uses
  %i.sq = fsub <2 x double> %i.rs, %i.rx          ; 2 uses
  %i.sr = fneg <2 x double> %i.sq
  %i.ss = fmul <2 x double> %broadcast.splat1222, %i.sr
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1224, <2 x double> %i.sp, <2 x double> %i.ss)
  %i.su = fmul <2 x double> %broadcast.splat1222, %i.sp
  %i.sv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat1224, <2 x double> %i.sq, <2 x double> %i.su)
  %interleaved.vec1242 = shufflevector <2 x double> %i.st, <2 x double> %i.sv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1242, ptr %i.ru, align 8, !tbaa !13
  %index.next1243 = add nuw i64 %index1226, 2     ; 2 uses
  %i.sw = icmp eq i64 %index.next1243, %n.vec1212
  br i1 %i.sw, label %middle.block1244, label %vector.body1225, !llvm.loop !75

middle.block1244:                                 ; preds = %vector.body1225
  %cmp.n1245 = icmp eq i64 %i.qj, %n.vec1212
  br i1 %cmp.n1245, label %._crit_edge409, label %scalar.ph1097.preheader

scalar.ph1097.preheader:                          ; preds = %vector.memcheck1099, %._crit_edge405, %middle.block1244
  %indvars.iv426.ph = phi i64 [ %i.jq, %vector.memcheck1099 ], [ %i.jq, %._crit_edge405 ], [ %i.ri, %middle.block1244 ]
  %i.sx = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sz = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.ta = shufflevector <2 x double> %i.sz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tb = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tc = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph1097

scalar.ph1097:                                    ; preds = %scalar.ph1097.preheader, %scalar.ph1097
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %scalar.ph1097 ], [ %indvars.iv426.ph, %scalar.ph1097.preheader ] ; 3 uses
  %i.te = add nsw i64 %indvars.iv426, %i.hg       ; 2 uses
  %i.tf = add nsw i64 %i.te, %i.hg                ; 2 uses
  %i.tg = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv426 ; 2 uses
  %i.th = getelementptr inbounds [8 x i8], ptr %2, i64 %i.te ; 2 uses
  %i.ti = getelementptr inbounds [8 x i8], ptr %2, i64 %i.tf ; 2 uses
  %gep443 = getelementptr [8 x i8], ptr %invariant.gep442, i64 %i.tf ; 2 uses
  %i.tj = load <2 x double>, ptr %i.tg, align 8, !tbaa !13 ; 2 uses
  %i.tk = load <2 x double>, ptr %i.th, align 8, !tbaa !13 ; 2 uses
  %i.tl = fadd <2 x double> %i.tj, %i.tk          ; 2 uses
  %i.tm = load <2 x double>, ptr %i.ti, align 8, !tbaa !13 ; 2 uses
  %i.tn = load <2 x double>, ptr %gep443, align 8, !tbaa !13 ; 2 uses
  %i.to = fadd <2 x double> %i.tm, %i.tn          ; 2 uses
  %i.tp = fadd <2 x double> %i.tl, %i.to
  store <2 x double> %i.tp, ptr %i.tg, align 8, !tbaa !13
  %i.tq = fsub <2 x double> %i.tl, %i.to          ; 3 uses
  %i.tr = fsub <2 x double> %i.tj, %i.tk          ; 2 uses
  %i.ts = fsub <2 x double> %i.tm, %i.tn
  %i.tt = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tu = fsub <2 x double> %i.tr, %i.tt          ; 3 uses
  %i.tv = fadd <2 x double> %i.tr, %i.tt          ; 4 uses
  %i.tw = shufflevector <2 x double> %i.tu, <2 x double> %i.tv, <2 x i32> <i32 0, i32 3>
  %i.tx = shufflevector <2 x double> %i.tq, <2 x double> %i.tv, <2 x i32> <i32 1, i32 3>
  %i.ty = fneg <2 x double> %i.tx                 ; 2 uses
  %i.tz = shufflevector <2 x double> %i.ty, <2 x double> %i.tq, <2 x i32> <i32 0, i32 2>
  %i.ua = fmul <2 x double> %i.sy, %i.tz
  %i.ub = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ta, <2 x double> %i.tq, <2 x double> %i.ua)
  store <2 x double> %i.ub, ptr %i.ti, align 8, !tbaa !13
  %i.uc = shufflevector <2 x double> %i.ty, <2 x double> %i.tu, <2 x i32> <i32 1, i32 2>
  %i.ud = fmul <2 x double> %i.tb, %i.uc
  %i.ue = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.tw, <2 x double> %i.ud)
  store <2 x double> %i.ue, ptr %i.th, align 8, !tbaa !13
  %i.uf = shufflevector <2 x double> %i.tv, <2 x double> %i.tu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ug = fneg <2 x double> %i.uf
  %i.uh = shufflevector <2 x double> %i.ug, <2 x double> %i.tv, <2 x i32> <i32 1, i32 2>
  %i.ui = fmul <2 x double> %i.tc, %i.uh
  %i.uj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.uf, <2 x double> %i.ui)
  store <2 x double> %i.uj, ptr %gep443, align 8, !tbaa !13
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 2 ; 2 uses
  %i.uk = icmp slt i64 %indvars.iv.next427, %.reass
  br i1 %i.uk, label %scalar.ph1097, label %._crit_edge409, !llvm.loop !76

._crit_edge409:                                   ; preds = %scalar.ph1097, %middle.block1244, %.lr.ph413
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, %i.hf ; 2 uses
  %i.ul = icmp slt i64 %indvars.iv.next420, %i.hj
  %indvars.iv.next425 = add i32 %indvars.iv424, %i.hd
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ul, label %.lr.ph413, label %._crit_edge414, !llvm.loop !77

._crit_edge414:                                   ; preds = %._crit_edge409, %._crit_edge401
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 3722235766722697253}
!11 = !{i64 5494923658912586631}
!12 = !{!"double", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14, !15, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{i64 -2624081020897602054}
!22 = !{i64 4277893422421500869}
!23 = !{!"long", !7, i64 0}
!24 = !{!"timeval", !23, i64 0, !23, i64 8}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 8}
!27 = distinct !{!27, !14}
!28 = !{i64 -4049779006969730806}
!29 = !{i64 8710696275321853811}
!30 = distinct !{!30, !14, !15, !16}
!31 = distinct !{!31, !14, !16, !15}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14, !15, !16}
!39 = distinct !{!39, !14, !15, !16}
!40 = distinct !{!40, !14, !15}
!41 = distinct !{!41, !14, !15}
!42 = !{i64 1030158993445549078}
!43 = !{i64 6090572343500765140}
!44 = distinct !{!44, !14, !15, !16}
!45 = distinct !{!45, !14, !16, !15}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = !{i64 788897929676215337}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14, !15, !16}
!54 = distinct !{!54, !14, !15, !16}
!55 = distinct !{!55, !14, !15}
!56 = distinct !{!56, !14, !15}
!57 = !{i64 -3054962811160735465}
!58 = distinct !{!58, i1 false, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = distinct !{!62, !14, !15, !16}
!63 = distinct !{!63, !14, !15}
!64 = !{i64 -5156321623300860145}
!65 = !{!59}
!66 = !{!60}
!67 = !{!61}
!68 = !{!60, !59}
!69 = distinct !{!69, !14, !15, !16}
!70 = distinct !{!70, !14, !15}
!71 = distinct !{!71, !14, !15, !16}
!72 = distinct !{!72, !14, !15}
!73 = distinct !{!73, !14, !15, !16}
!74 = distinct !{!74, !14, !15}
!75 = distinct !{!75, !14, !15, !16}
!76 = distinct !{!76, !14, !15}
!77 = distinct !{!77, !14}
!78 = !{i64 -4447859854709024659}
end_hunk_1
