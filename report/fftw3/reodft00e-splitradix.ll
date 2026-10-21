Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft00e-splitradix?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@apply_e:bb.a
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge, label %.lr.ph147.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %.0126152, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ic = sub i64 %i.x, %index                    ; 2 uses
  %i.id = or disjoint i64 %index, 1               ; 5 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.id
  %wide.load = load <2 x double>, ptr %i.ie, align 8, !tbaa !30, !alias.scope !70 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ic
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -8
  %wide.load250 = load <2 x double>, ptr %i.ig, align 8, !tbaa !30, !alias.scope !71
  %reverse = shufflevector <2 x double> %wide.load250, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ih = shl nuw nsw i64 %i.id, 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ih
  %wide.vec = load <4 x double>, ptr %i.ii, align 8, !tbaa !30, !alias.scope !72 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec251 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ij = fmul <2 x double> %reverse, %strided.vec251
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.ij)
  %i.il = fmul <2 x double> %i.ik, splat (double 2.000000e+00) ; 2 uses
  %i.im = fneg <2 x double> %wide.load
  %i.in = fmul <2 x double> %strided.vec251, %i.im
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %reverse, <2 x double> %i.in)
  %i.ip = fmul <2 x double> %i.io, splat (double 2.000000e+00) ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.id ; 2 uses
  %wide.load252 = load <2 x double>, ptr %i.iq, align 8, !tbaa !30, !alias.scope !73, !noalias !74 ; 2 uses
  %i.ir = fadd <2 x double> %wide.load252, %i.il
  store <2 x double> %i.ir, ptr %i.iq, align 8, !tbaa !30, !alias.scope !73, !noalias !74
  %i.is = fsub <2 x double> %wide.load252, %i.il
  %i.it = sub nsw i64 %i.z, %i.id
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -8
  %reverse253 = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse253, ptr %i.iv, align 8, !tbaa !30, !alias.scope !75, !noalias !76
  %i.iw = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ic
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -8 ; 2 uses
  %wide.load254 = load <2 x double>, ptr %i.ix, align 8, !tbaa !30, !alias.scope !77, !noalias !78 ; 2 uses
  %reverse255 = shufflevector <2 x double> %wide.load254, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iy = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse256 = fsub <2 x double> %wide.load254, %i.iy
  store <2 x double> %reverse256, ptr %i.ix, align 8, !tbaa !30, !alias.scope !77, !noalias !78
  %i.iz = fadd <2 x double> %i.ip, %reverse255
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.id
  store <2 x double> %i.iz, ptr %gep, align 8, !tbaa !30, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge148, label %.lr.ph147.preheader277

.lr.ph147.preheader277:                           ; preds = %.lr.ph147.preheader, %middle.block
  %.ph = phi i64 [ %i.fd, %middle.block ], [ %i.x, %.lr.ph147.preheader ]
  %.2145.ph = phi i64 [ %i.fe, %middle.block ], [ 1, %.lr.ph147.preheader ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader277, %.lr.ph147
  %i.jb = phi i64 [ %i.km, %.lr.ph147 ], [ %.ph, %.lr.ph147.preheader277 ] ; 2 uses
  %.2145 = phi i64 [ %i.kl, %.lr.ph147 ], [ %.2145.ph, %.lr.ph147.preheader277 ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2145
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !30 ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jb
  %i.jf = load double, ptr %i.je, align 8, !tbaa !30 ; 2 uses
  %.idx135 = shl nuw nsw i64 %.2145, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx135
  %i.jh = fneg double %i.jd
  %i.ji = load <2 x double>, ptr %i.jg, align 8, !tbaa !30 ; 2 uses
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.jh, i64 1
  %i.jm = fmul <2 x double> %i.jj, %i.jl
  %i.jn = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %i.jf, i64 1
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jp, <2 x double> %i.jm) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = fmul double %i.jr, 2.000000e+00         ; 2 uses
  %i.jt = extractelement <2 x double> %i.jq, i64 1
  %i.ju = fmul double %i.jt, 2.000000e+00         ; 2 uses
  %i.jv = mul nsw i64 %.2145, %i.d
  %i.jw = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.jv ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !30 ; 2 uses
  %i.jy = fadd double %i.jx, %i.js
  store double %i.jy, ptr %i.jw, align 8, !tbaa !30
  %i.jz = fsub double %i.jx, %i.js
  %i.ka = sub nsw i64 %i.z, %.2145
  %i.kb = mul nsw i64 %i.ka, %i.d
  %i.kc = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.kb
  store double %i.jz, ptr %i.kc, align 8, !tbaa !30
  %i.kd = mul nsw i64 %i.jb, %i.d
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.kd ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !30 ; 2 uses
  %i.kg = fsub double %i.kf, %i.ju
  store double %i.kg, ptr %i.ke, align 8, !tbaa !30
  %i.kh = fadd double %i.ju, %i.kf
  %i.ki = add nuw nsw i64 %.2145, %i.g
  %i.kj = mul nsw i64 %i.ki, %i.d
  %i.kk = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.kj
  store double %i.kh, ptr %i.kk, align 8, !tbaa !30
  %i.kl = add nuw nsw i64 %.2145, 1               ; 4 uses
  %i.km = sub nsw i64 %i.g, %i.kl                 ; 3 uses
  %i.kn = icmp slt i64 %i.kl, %i.km
  br i1 %i.kn, label %.lr.ph147, label %._crit_edge148, !llvm.loop !68

._crit_edge148:                                   ; preds = %.lr.ph147, %middle.block, %._crit_edge144
  %.2.lcssa = phi i64 [ 1, %._crit_edge144 ], [ %i.fe, %middle.block ], [ %i.kl, %.lr.ph147 ] ; 5 uses
  %.lcssa = phi i64 [ %i.x, %._crit_edge144 ], [ %i.fd, %middle.block ], [ %i.km, %.lr.ph147 ]
  %i.ko = icmp eq i64 %.2.lcssa, %.lcssa
  br i1 %i.ko, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge148
  %.idx134 = shl nuw nsw i64 %.2.lcssa, 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx134
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !30
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2.lcssa
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !30
  %i.kt = fmul double %i.kq, %i.ks
  %i.ku = fmul double %i.kt, 2.000000e+00         ; 2 uses
  %i.kv = mul nsw i64 %.2.lcssa, %i.d
  %i.kw = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.kv ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !30 ; 2 uses
  %i.ky = fadd double %i.kx, %i.ku
  store double %i.ky, ptr %i.kw, align 8, !tbaa !30
  %i.kz = fsub double %i.kx, %i.ku
  %i.la = sub nsw i64 %i.z, %.2.lcssa
  %i.lb = mul nsw i64 %i.la, %i.d
  %i.lc = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.lb
  store double %i.kz, ptr %i.lc, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge148, %bb.b
  %i.ld = add nuw nsw i64 %.0130151, 1            ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.k
  %i.lf = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.m
  %exitcond159.not = icmp eq i64 %i.ld, %i.i
  br i1 %exitcond159.not, label %._crit_edge154, label %.preheader, !llvm.loop !69

._crit_edge154:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.s) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_o(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 8 uses
  %i.g = sdiv i64 %i.f, 2                         ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 3 uses
  %i.r = shl i64 %i.g, 3
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #5 ; 24 uses
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge169

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i64 %i.f, 1
  %i.v = shl i64 %i.f, 1
  %i.w = add i64 %i.v, -2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add nsw i64 %i.g, -1                     ; 11 uses
  %i.aa = icmp sgt i64 %i.f, 3
  %i.ab = mul nsw i64 %i.z, %i.d                  ; 2 uses
  %i.ac = icmp sgt i64 %i.f, 5
  %i.ad = shl nuw nsw i64 %i.g, 1                 ; 3 uses
  %i.ae = add i64 %i.f, -2                        ; 2 uses
  %i.af = lshr i64 %i.ae, 2                       ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 7 uses
  %i.ah = add nuw i64 %i.i, 2305843009213693951
  %i.ai = mul i64 %i.m, %i.ah
  %i.aj = shl i64 %i.ai, 3                        ; 3 uses
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.al = icmp sgt i64 %i.f, 9
  %umin = zext i1 %i.al to i64                    ; 2 uses
  %i.am = add nsw i64 %i.ak, -4
  %i.an = sub i64 %i.am, %umin
  %i.ao = lshr i64 %i.an, 1
  %i.ap = add nuw i64 %i.ao, %umin                ; 2 uses
  %i.aq = shl i64 %i.ap, 3                        ; 6 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.aj
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aq
  %scevgep = getelementptr i8, ptr %i.as, i64 8   ; 3 uses
  %i.at = shl i64 %i.g, 4                         ; 2 uses
  %i.au = add i64 %i.at, -16
  %i.av = sub i64 %i.au, %i.aq
  %scevgep188 = getelementptr i8, ptr %2, i64 %i.av ; 6 uses
  %scevgep188.a = getelementptr i8, ptr %2, i64 %i.aj
  %i.aw = getelementptr i8, ptr %scevgep188.a, i64 %i.at ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8     ; 5 uses
  %3 = shl i64 %i.g, 3                            ; 5 uses
  %4 = add i64 %3, -16
  %5 = sub i64 %4, %i.aq
  %scevgep189 = getelementptr i8, ptr %2, i64 %5  ; 3 uses
  %6 = add i64 %i.aj, %3                          ; 2 uses
  %7 = getelementptr i8, ptr %2, i64 %6           ; 2 uses
  %8 = insertelement <2 x ptr> poison, ptr %i.aw, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %7, i64 1
  %10 = getelementptr i8, <2 x ptr> %9, i64 -8    ; 2 uses
  %i.ay = getelementptr i8, ptr %7, i64 -8
  %scevgep192 = getelementptr i8, ptr %2, i64 %3  ; 5 uses
  %i.az = getelementptr i8, ptr %2, i64 %6
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.aq
  %scevgep193 = getelementptr i8, ptr %i.ba, i64 8 ; 5 uses
  %i.bb = add i64 %3, -8
  %i.bc = sub i64 %i.bb, %i.aq
  %scevgep194 = getelementptr i8, ptr %i.s, i64 %i.bc ; 4 uses
  %scevgep195 = getelementptr i8, ptr %i.s, i64 %3 ; 4 uses
  %scevgep196 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.bd = getelementptr i8, ptr %i.s, i64 %i.aq   ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.bd, i64 16 ; 2 uses
  %i.be = shl i64 %i.ap, 4
  %i.bf = getelementptr i8, ptr %i.p, i64 %i.be   ; 2 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bf, i64 1
  %i.bi = getelementptr i8, <2 x ptr> %i.bh, i64 16 ; 2 uses
  %scevgep198 = getelementptr i8, ptr %i.bf, i64 16 ; 3 uses
  %i.bj = add nsw i64 %i.i, -1                    ; 2 uses
  %i.bk = mul i64 %i.m, %i.bj
  %i.bl = add i64 %i.bk, %smax
  %i.bm = shl i64 %i.bl, 3
  %scevgep278 = getelementptr i8, ptr %2, i64 %i.bm
  %scevgep279 = getelementptr i8, ptr %1, i64 8
  %i.bn = mul i64 %i.k, %i.bj
  %i.bo = add i64 %i.bn, %smax
  %i.bp = shl i64 %i.bo, 3
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %scevgep280 = getelementptr i8, ptr %i.bq, i64 8
  %i.br = insertelement <4 x ptr> poison, ptr %scevgep189, i64 0
  %i.bs = shufflevector <4 x ptr> %i.br, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep195, i64 1
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep194, i64 1
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep196, i64 2
  %i.by = insertelement <4 x ptr> %i.bx, ptr %i.p, i64 3
  %i.bz = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %scevgep188, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep189, i64 1
  %i.cd = insertelement <4 x ptr> %i.cc, ptr %scevgep192, i64 2
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %scevgep194, i64 3
  %11 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <2 x ptr> poison, ptr %scevgep194, i64 0
  %i.cg = insertelement <2 x ptr> %i.cf, ptr %scevgep196, i64 1
  %13 = insertelement <2 x ptr> poison, ptr %scevgep193, i64 0
  %14 = shufflevector <2 x ptr> %13, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x ptr> poison, ptr %scevgep192, i64 0
  %15 = shufflevector <2 x ptr> %i.ch, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x ptr> poison, ptr %scevgep195, i64 0
  %16 = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x ptr> %i.bu, <4 x ptr> %16, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %18 = shufflevector <2 x ptr> %i.ci, <2 x ptr> %i.bi, <2 x i32> <i32 0, i32 2>
  %19 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = add nuw nsw i64 %i.af, 1                ; 2 uses
  %xtraiter = and i64 %i.cj, 7                    ; 3 uses
  %i.ck = icmp ult i64 %i.ae, 28
  %unroll_iter = and i64 %i.cj, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod323 = icmp ne i64 %xtraiter, 0
  %min.iters.check287 = icmp slt i64 %i.f, 34
  %ident.check275 = icmp ne i64 %i.d, 1
  %ident.check276 = icmp ne i64 %i.b, 1
  %i.cl = or i1 %ident.check275, %ident.check276
  %bound0281 = icmp ult ptr %2, %scevgep280
  %bound1282 = icmp ult ptr %scevgep279, %scevgep278
  %found.conflict283 = and i1 %bound0281, %bound1282
  %i.cm = or i64 %i.k, %i.m
  %i.cn = and i64 %i.cm, 1152921504606846976
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = or i1 %found.conflict283, %i.co
  %n.vec289 = and i64 %smax, 9223372036854775804  ; 3 uses
  %cmp.n296 = icmp eq i64 %smax, %n.vec289
  %i.cq = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.cr = add nsw i64 %i.cq, -4                   ; 2 uses
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = zext i1 %i.cs to i64                    ; 2 uses
  %i.cu = sub i64 %i.cr, %i.ct
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = add nuw i64 %i.cv, %i.ct
  %i.cx = add i64 %i.cw, 1                        ; 4 uses
  %min.iters.check = icmp ugt i64 %i.cx, 9
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cy = insertelement <4 x ptr> %19, ptr %scevgep193, i64 2
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %scevgep195, i64 3
  %i.da = icmp ult <4 x ptr> %i.ca, %i.cz
  %i.db = icmp ult <4 x ptr> %i.ce, %12
  %.mask = and i64 %i.m, 1152921504606846976
  %i.dc = and <4 x i1> %i.da, %i.db
  %bound0210 = icmp ult ptr %2, %scevgep197
  %bound1211 = icmp ult ptr %scevgep196, %scevgep
  %found.conflict212 = and i1 %bound0210, %bound1211
  %bound0210.a = icmp ult ptr %2, %scevgep198
  %bound1211.a = icmp ult ptr %i.p, %scevgep
  %found.conflict212.a = and i1 %bound0210.a, %bound1211.a
  %bound0218 = icmp ult ptr %scevgep188, %i.ay
  %bound1219 = icmp ult ptr %scevgep189, %i.ax
  %found.conflict220 = and i1 %bound0218, %bound1219
  %bound0222 = icmp ult ptr %scevgep188, %scevgep193
  %bound1223 = icmp ult ptr %scevgep192, %i.ax
  %found.conflict224 = and i1 %bound0222, %bound1223
  %bound0226 = icmp ult ptr %scevgep188, %scevgep195
  %bound1227 = icmp ult ptr %scevgep194, %i.ax
  %found.conflict228 = and i1 %bound0226, %bound1227
  %bound0230 = icmp ult ptr %scevgep188, %scevgep197
  %bound1231 = icmp ult ptr %scevgep196, %i.ax
  %found.conflict232 = and i1 %bound0230, %bound1231
  %bound0234 = icmp ult ptr %scevgep188, %scevgep198
  %bound1235 = icmp ult ptr %i.p, %i.ax
  %found.conflict236 = and i1 %bound0234, %bound1235
  %i.dd = icmp ult <4 x ptr> %i.bs, %17
  %i.de = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = icmp ult <4 x ptr> %i.by, %i.de
  %i.dg = icmp ult <2 x ptr> %15, %18
  %i.dh = icmp ult <2 x ptr> %i.cg, %14
  %bound0262 = icmp ult ptr %scevgep192, %scevgep198
  %bound1263 = icmp ult ptr %i.p, %scevgep193
  %stride.check = icmp ne i64 %.mask, 0
  %i.di = shufflevector <2 x i1> %i.dg, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = insertelement <8 x i1> %i.di, i1 %bound0262, i64 6
  %i.dk = insertelement <8 x i1> %i.dj, i1 %stride.check, i64 7
  %i.dl = shufflevector <4 x i1> %i.dd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <8 x i1> %i.dl, <8 x i1> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dn = shufflevector <2 x i1> %i.dh, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.dn, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.dp = insertelement <8 x i1> %i.do, i1 %bound1263, i64 6
  %i.dq = shufflevector <4 x i1> %i.df, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <8 x i1> %i.dq, <8 x i1> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ds = and <8 x i1> %i.dm, %i.dr
  %i.dt = bitcast <8 x i1> %i.ds to i8
  %i.du = icmp ne i8 %i.dt, 0
  %i.dv = bitcast <4 x i1> %i.dc to i4
  %i.dw = icmp ne i4 %i.dv, 0
  %op.rdx309 = or i1 %i.dw, %found.conflict212
  %op.rdx310 = or i1 %found.conflict212.a, %found.conflict220
  %op.rdx311 = or i1 %found.conflict224, %found.conflict228
  %op.rdx312 = or i1 %found.conflict232, %found.conflict236
  %op.rdx313 = or i1 %op.rdx309, %op.rdx310
  %op.rdx314 = or i1 %op.rdx311, %op.rdx312
  %op.rdx315 = or i1 %op.rdx313, %op.rdx314
  %op.rdx316 = or i1 %op.rdx315, %i.du
  %n.vec = and i64 %i.cx, -2                      ; 3 uses
  %i.dx = sub i64 %i.z, %n.vec                    ; 2 uses
  %i.dy = or i64 %i.cx, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %.0167 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.mt, %bb.e ] ; 23 uses
  %.0138165 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.mu, %bb.e ] ; 25 uses
  %.0142164 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ms, %bb.e ]
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.ck, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0139148 = phi i64 [ %i.fu, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0140147 = phi i64 [ %i.fr, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.dz = mul nsw i64 %.0139148, %i.b
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  store double %i.eb, ptr %i.ec, align 8, !tbaa !30
  %i.ed = or disjoint i64 %.0139148, 4
  %i.ee = mul nsw i64 %i.ed, %i.b
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !30
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store double %i.eg, ptr %i.ei, align 8, !tbaa !30
  %i.ej = or disjoint i64 %.0139148, 8
  %i.ek = mul nsw i64 %i.ej, %i.b
  %i.el = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store double %i.em, ptr %i.eo, align 8, !tbaa !30
  %i.ep = or disjoint i64 %.0139148, 12
  %i.eq = mul nsw i64 %i.ep, %i.b
  %i.er = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !30
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store double %i.es, ptr %i.eu, align 8, !tbaa !30
  %i.ev = or disjoint i64 %.0139148, 16
  %i.ew = mul nsw i64 %i.ev, %i.b
  %i.ex = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store double %i.ey, ptr %i.fa, align 8, !tbaa !30
  %i.fb = or disjoint i64 %.0139148, 20
  %i.fc = mul nsw i64 %i.fb, %i.b
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !30
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store double %i.fe, ptr %i.fg, align 8, !tbaa !30
  %i.fh = or disjoint i64 %.0139148, 24
  %i.fi = mul nsw i64 %i.fh, %i.b
  %i.fj = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  store double %i.fk, ptr %i.fm, align 8, !tbaa !30
  %i.fn = or disjoint i64 %.0139148, 28
  %i.fo = mul nsw i64 %i.fn, %i.b
  %i.fp = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !30
  %i.fr = add nuw nsw i64 %.0140147, 8            ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  store double %i.fq, ptr %i.ft, align 8, !tbaa !30
  %i.fu = add nuw nsw i64 %.0139148, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0139148.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fu, %._crit_edge.loopexit.unr-lcssa ]
  %.0140147.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fr, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod323)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0139148.epil = phi i64 [ %i.ga, %.lr.ph.epil ], [ %.0139148.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0140147.epil = phi i64 [ %i.fy, %.lr.ph.epil ], [ %.0140147.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fv = mul nsw i64 %.0139148.epil, %i.b
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !30
  %i.fy = add nuw nsw i64 %.0140147.epil, 1
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147.epil
  store double %i.fx, ptr %i.fz, align 8, !tbaa !30
  %i.ga = add nuw nsw i64 %.0139148.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !82

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0140.lcssa = phi i64 [ 0, %.preheader ], [ %i.ag, %.lr.ph.epil ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.0139.lcssa = phi i64 [ 0, %.preheader ], [ %i.fu, %._crit_edge.loopexit.unr-lcssa ], [ %i.ga, %.lr.ph.epil ]
  %i.gb = sub nsw i64 %i.w, %.0139.lcssa          ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, 0
  br i1 %i.gc, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge, %.lr.ph153
  %.1151 = phi i64 [ %i.gj, %.lr.ph153 ], [ %i.gb, %._crit_edge ] ; 3 uses
  %.1141150 = phi i64 [ %i.gh, %.lr.ph153 ], [ %.0140.lcssa, %._crit_edge ] ; 2 uses
  %i.gd = mul nsw i64 %.1151, %i.b
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !30
  %i.gg = fneg double %i.gf
  %i.gh = add nuw nsw i64 %.1141150, 1
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1141150
  store double %i.gg, ptr %i.gi, align 8, !tbaa !30
  %i.gj = add nsw i64 %.1151, -4
  %i.gk = icmp samesign ugt i64 %.1151, 4
  br i1 %i.gk, label %.lr.ph153, label %._crit_edge154, !llvm.loop !83

._crit_edge154:                                   ; preds = %.lr.ph153, %._crit_edge
  %i.gl = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !33
  tail call void %i.gn(ptr noundef %i.gl, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.go = load ptr, ptr %i.y, align 8, !tbaa !20  ; 3 uses
  %i.gp = icmp eq ptr %.0167, %.0138165
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !33 ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.b ; 3 uses
  br i1 %i.gp, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge154
  tail call void %i.gr(ptr noundef %i.go, ptr noundef %i.gs, ptr noundef %i.gs) #5
  br i1 %i.aa, label %.lr.ph157.preheader, label %.loopexit.thread

.lr.ph157.preheader:                              ; preds = %bb.b
  %brmerge = select i1 %min.iters.check287, i1 true, i1 %i.cl
  %brmerge332 = select i1 %brmerge, i1 true, i1 %i.cp
  br i1 %brmerge332, label %.lr.ph157.preheader318, label %vector.body290

vector.body290:                                   ; preds = %.lr.ph157.preheader, %vector.body290
  %index291 = phi i64 [ %index.next294, %vector.body290 ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %i.gt = getelementptr [8 x i8], ptr %.0167, i64 %index291 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = getelementptr i8, ptr %i.gt, i64 24
  %wide.load292 = load <2 x double>, ptr %i.gu, align 8, !tbaa !30, !alias.scope !101
  %wide.load293 = load <2 x double>, ptr %i.gv, align 8, !tbaa !30, !alias.scope !101
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %index291 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <2 x double> %wide.load292, ptr %i.gw, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  store <2 x double> %wide.load293, ptr %i.gx, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  %index.next294 = add nuw i64 %index291, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.gy, label %middle.block295, label %vector.body290, !llvm.loop !87

middle.block295:                                  ; preds = %vector.body290
  br i1 %cmp.n296, label %.loopexit, label %.lr.ph157.preheader318

.lr.ph157.preheader318:                           ; preds = %.lr.ph157.preheader, %middle.block295
  %.2155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec289, %middle.block295 ] ; 4 uses
  %i.gz = sub nsw i64 %smax, %.2155.ph
  %xtraiter324 = and i64 %i.gz, 7                 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader318, %.lr.ph157.prol
  %.2155.prol = phi i64 [ %i.ha, %.lr.ph157.prol ], [ %.2155.ph, %.lr.ph157.preheader318 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader318 ]
  %i.ha = add nuw nsw i64 %.2155.prol, 1          ; 3 uses
  %i.hb = mul nsw i64 %i.ha, %i.b
  %i.hc = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !30
  %i.he = mul nsw i64 %.2155.prol, %i.d
  %i.hf = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.he
  store double %i.hd, ptr %i.hf, align 8, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter324
  br i1 %prol.iter.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !88

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader318
  %.2155.unr = phi i64 [ %.2155.ph, %.lr.ph157.preheader318 ], [ %i.ha, %.lr.ph157.prol ]
  %i.hg = sub nsw i64 %.2155.ph, %smax
  %i.hh = icmp ugt i64 %i.hg, -8
  br i1 %i.hh, label %.loopexit, label %.lr.ph157

.loopexit.thread:                                 ; preds = %bb.b
  %i.hi = load double, ptr %i.s, align 8, !tbaa !30
  %i.hj = fmul double %i.hi, 2.000000e+00
  %i.hk = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ab
  store double %i.hj, ptr %i.hk, align 8, !tbaa !30
  br label %._crit_edge161

end_hunk_0
