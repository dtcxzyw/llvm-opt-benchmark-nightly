Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_ssim360?download=true
inline.NumInlined: 46
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@config_output:bb.a
  %i.is = add nuw nsw i64 %i.il, %i.cw            ; 2 uses
  %i.it = sext i32 %i.hx to i64
  %i.iu = sext i32 %i.id to i64
  %i.iv = sext i32 %i.ij to i64
  %i.iw = sext i32 %i.in to i64
  %i.ix = sext i32 %i.ip to i64
  %i.iy = sext i32 %i.ir to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.bl, i64 %i.it
  %i.iz = getelementptr [8 x i8], ptr %i.bl, i64 %i.ia
  %invariant.gep117 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ia
  %invariant.gep119 = getelementptr [8 x i8], ptr %i.bl, i64 %i.iu
  %i.ja = getelementptr [8 x i8], ptr %i.bl, i64 %i.ig
  %invariant.gep121 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ig
  %invariant.gep123 = getelementptr [8 x i8], ptr %i.bl, i64 %i.iv
  %i.jb = getelementptr [8 x i8], ptr %i.bl, i64 %i.im
  %invariant.gep125 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.im
  %invariant.gep127 = getelementptr [8 x i8], ptr %i.bl, i64 %i.iw
  %i.jc = getelementptr [8 x i8], ptr %i.bl, i64 %i.io
  %invariant.gep129 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.io
  %invariant.gep131 = getelementptr [8 x i8], ptr %i.bl, i64 %i.ix
  %i.jd = getelementptr [8 x i8], ptr %i.bl, i64 %i.iq
  %invariant.gep133 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.iq
  %invariant.gep135 = getelementptr [8 x i8], ptr %i.bl, i64 %i.iy
  %i.je = getelementptr [8 x i8], ptr %i.bl, i64 %i.is
  %invariant.gep137 = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.is
  br label %bb.u

._crit_edge314.i:                                 ; preds = %bb.u
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond362.not.i = icmp eq i64 %indvars.iv.next98, %i.cz
  br i1 %exitcond362.not.i, label %.loopexit.i, label %.preheader297.i, !llvm.loop !148

bb.u:                                             ; preds = %bb.u, %.preheader297.i
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %bb.u ], [ 0, %.preheader297.i ] ; 14 uses
  %i.jf = trunc nuw nsw i64 %indvars.iv94 to i32  ; 2 uses
  %i.jg = uitofp nsz nneg i32 %i.jf to double
  %i.jh = fadd nsz double %i.jg, 5.000000e-01     ; 2 uses
  %i.ji = fdiv nnan nsz double %i.jh, %i.ch
  %i.jj = fmul nsz double %i.jh, %i.ji
  %i.jk = fdiv nsz double %i.jj, %i.ch
  %i.jl = fadd nsz double %i.ht, %i.jk
  %i.jm = fdiv nsz double %i.jl, %i.cr
  %i.jn = fadd nsz double %i.jm, 2.500000e-01
  %i.jo = fdiv nsz double 2.500000e-01, %i.jn
  %i.jp = tail call nsz double @llvm.pow.f64(double %i.jo, double 1.500000e+00) ; 24 uses
  %i.jq = xor i32 %i.jf, -1                       ; 7 uses
  %i.jr = add i32 %i.hx, %i.jq
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.js
  store double %i.jp, ptr %i.jt, align 8, !tbaa !46
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv94
  store double %i.jp, ptr %gep, align 8, !tbaa !46
  %i.ju = sext i32 %i.jq to i64                   ; 6 uses
  %i.jv = getelementptr [8 x i8], ptr %i.iz, i64 %i.ju
  store double %i.jp, ptr %i.jv, align 8, !tbaa !46
  %gep118 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep117, i64 %indvars.iv94
  store double %i.jp, ptr %gep118, align 8, !tbaa !46
  %i.jw = add i32 %i.id, %i.jq
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jx
  store double %i.jp, ptr %i.jy, align 8, !tbaa !46
  %gep120 = getelementptr [8 x i8], ptr %invariant.gep119, i64 %indvars.iv94
  store double %i.jp, ptr %gep120, align 8, !tbaa !46
  %i.jz = getelementptr [8 x i8], ptr %i.ja, i64 %i.ju
  store double %i.jp, ptr %i.jz, align 8, !tbaa !46
  %gep122 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep121, i64 %indvars.iv94
  store double %i.jp, ptr %gep122, align 8, !tbaa !46
  %i.ka = add i32 %i.ij, %i.jq
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.kb
  store double %i.jp, ptr %i.kc, align 8, !tbaa !46
  %gep124 = getelementptr [8 x i8], ptr %invariant.gep123, i64 %indvars.iv94
  store double %i.jp, ptr %gep124, align 8, !tbaa !46
  %i.kd = getelementptr [8 x i8], ptr %i.jb, i64 %i.ju
  store double %i.jp, ptr %i.kd, align 8, !tbaa !46
  %gep126 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep125, i64 %indvars.iv94
  store double %i.jp, ptr %gep126, align 8, !tbaa !46
  %i.ke = add i32 %i.in, %i.jq
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.kf
  store double %i.jp, ptr %i.kg, align 8, !tbaa !46
  %gep128 = getelementptr [8 x i8], ptr %invariant.gep127, i64 %indvars.iv94
  store double %i.jp, ptr %gep128, align 8, !tbaa !46
  %i.kh = getelementptr [8 x i8], ptr %i.jc, i64 %i.ju
  store double %i.jp, ptr %i.kh, align 8, !tbaa !46
  %gep130 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep129, i64 %indvars.iv94
  store double %i.jp, ptr %gep130, align 8, !tbaa !46
  %i.ki = add i32 %i.ip, %i.jq
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.kj
  store double %i.jp, ptr %i.kk, align 8, !tbaa !46
  %gep132 = getelementptr [8 x i8], ptr %invariant.gep131, i64 %indvars.iv94
  store double %i.jp, ptr %gep132, align 8, !tbaa !46
  %i.kl = getelementptr [8 x i8], ptr %i.jd, i64 %i.ju
  store double %i.jp, ptr %i.kl, align 8, !tbaa !46
  %gep134 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep133, i64 %indvars.iv94
  store double %i.jp, ptr %gep134, align 8, !tbaa !46
  %i.km = add i32 %i.ir, %i.jq
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.kn
  store double %i.jp, ptr %i.ko, align 8, !tbaa !46
  %gep136 = getelementptr [8 x i8], ptr %invariant.gep135, i64 %indvars.iv94
  store double %i.jp, ptr %gep136, align 8, !tbaa !46
  %i.kp = getelementptr [8 x i8], ptr %i.je, i64 %i.ju
  store double %i.jp, ptr %i.kp, align 8, !tbaa !46
  %gep138 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep137, i64 %indvars.iv94
  store double %i.jp, ptr %gep138, align 8, !tbaa !46
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond361.not.i = icmp eq i64 %indvars.iv.next95, %i.cs
  br i1 %exitcond361.not.i, label %._crit_edge314.i, label %bb.u, !llvm.loop !149

.preheader302.i:                                  ; preds = %._crit_edge.i, %.preheader302.lr.ph.split.i
  %indvars.iv345.i = phi i64 [ 0, %.preheader302.lr.ph.split.i ], [ %indvars.iv.next346.i, %._crit_edge.i ] ; 3 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv345.i to i32
  %i.kr = uitofp nsz nneg i32 %i.kq to double
  %i.ks = fadd nnan nsz double %i.kr, 5.000000e-01
  %i.kt = fdiv nnan nsz double %i.ks, %i.bw
  %i.ku = fadd nnan nsz double %i.kt, -5.000000e-01
  %i.kv = fmul nnan nsz double %i.ku, f0x3FF028F5C0000000
  %i.kw = fmul nnan nsz double %i.kv, f0x3FF921FB54442D18
  %i.kx = tail call nsz double @llvm.cos.f64(double %i.kw) ; 3 uses
  %i.ky = fmul nsz double %i.kx, %i.kx
  %i.kz = fmul nsz double %i.kx, %i.ky            ; 2 uses
  %i.la = mul nuw nsw i64 %indvars.iv345.i, %i.bz
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.la ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader302.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kz, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <2 x double> %broadcast.splat, ptr %i.lb, align 8, !tbaa !46
  store <2 x double> %broadcast.splat, ptr %i.lc, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader302.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader302.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph310.i:                                      ; preds = %._crit_edge.i, %.preheader302.lr.ph.i
  %i.le = sdiv i32 %i.bx, 5                       ; 3 uses
  %i.lf = icmp slt i32 %i.le, %.0276.i
  %i.lg = sitofp nsz i32 %.0276.i to double       ; 2 uses
  %i.lh = fneg nsz double %i.lg                   ; 2 uses
  %i.li = fmul nnan nsz double %i.lg, 1.000000e-01 ; 2 uses
  br i1 %i.lf, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph310.i
  %i.lj = fmul nnan nsz double %i.bw, 2.500000e-01
  %i.lk = fneg nsz double %i.bw
  %i.ll = lshr i32 %.0275.i, 1
  %i.lm = sext i32 %i.le to i64                   ; 4 uses
  %i.ln = zext nneg i32 %i.ll to i64
  %i.lo = sext i32 %.0276.i to i64                ; 3 uses
  %wide.trip.count358.i = zext nneg i32 %.0275.i to i64
  %i.lp = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = sub nsw i64 %i.lo, %i.lm                ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.lt, 2
  %n.vec171 = and i64 %i.lt, -2                   ; 3 uses
  %i.lu = add nsw i64 %n.vec171, %i.lm
  %broadcast.splatinsert174 = insertelement <2 x double> poison, double %i.lh, i64 0
  %broadcast.splat175 = shufflevector <2 x double> %broadcast.splatinsert174, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %i.li, i64 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert178 = insertelement <2 x i32> poison, i32 %i.le, i64 0
  %broadcast.splat179 = shufflevector <2 x i32> %broadcast.splatinsert178, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat179, <i32 0, i32 1>
  %cmp.n186 = icmp eq i64 %i.lt, %n.vec171
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %exitcond349.not.i = icmp eq i64 %indvars.iv.next346.i, %wide.trip.count348.i
  br i1 %exitcond349.not.i, label %.lr.ph310.i, label %.preheader302.i, !llvm.loop !151

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store double %i.kz, ptr %gep.i, align 8, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !152

.lr.ph.i:                                         ; preds = %._crit_edge308.i, %.lr.ph.preheader.i
  %indvars.iv355.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next356.i, %._crit_edge308.i ] ; 4 uses
  %i.lv = trunc nuw nsw i64 %indvars.iv355.i to i32
  %i.lw = uitofp nsz nneg i32 %i.lv to double
  %i.lx = fadd nsz double %i.lw, 5.000000e-01
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ma = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> <double 2.500000e-01, double 7.500000e-01>, <2 x double> %i.lz)
  %i.mb = fmul nsz <2 x double> %i.ma, splat (double f0x3FF028F5C0000000)
  %i.mc = fdiv nsz <2 x double> %i.mb, %i.ls      ; 2 uses
  %i.md = fmul nsz <2 x double> %i.mc, %i.mc      ; 2 uses
  %i.me = icmp samesign ult i64 %indvars.iv355.i, %i.ln
  %i.mf = extractelement <2 x double> %i.md, i64 0
  %i.mg = extractelement <2 x double> %i.md, i64 1
  %i.mh = select nsz i1 %i.me, double %i.mf, double %i.mg ; 2 uses
  %i.mi = mul nsw i64 %indvars.iv355.i, %i.lo
  %invariant.gep413.i = getelementptr [8 x i8], ptr %i.bl, i64 %i.mi ; 3 uses
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert172 = insertelement <2 x double> poison, double %i.mh, i64 0
  %broadcast.splat173 = shufflevector <2 x double> %broadcast.splatinsert172, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body180

vector.body180:                                   ; preds = %pred.store.continue183, %vector.ph170
  %index181 = phi i64 [ 0, %vector.ph170 ], [ %index.next184, %pred.store.continue183 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph170 ], [ %vec.ind.next, %pred.store.continue183 ] ; 2 uses
  %i.mj = add i64 %index181, %i.lm                ; 2 uses
  %i.mk = sitofp nsz <2 x i32> %vec.ind to <2 x double>
  %i.ml = fadd nnan nsz <2 x double> %i.mk, splat (double 5.000000e-01)
  %i.mm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat175, <2 x double> splat (double 9.000000e-01), <2 x double> %i.ml)
  %i.mn = fmul nsz <2 x double> %i.mm, splat (double f0x3FF028F5C0000000)
  %i.mo = fdiv nsz <2 x double> %i.mn, %broadcast.splat177 ; 2 uses
  %i.mp = fmul nsz <2 x double> %i.mo, %i.mo
  %i.mq = fadd nsz <2 x double> %broadcast.splat173, %i.mp ; 3 uses
  %i.mr = fcmp nsz ule <2 x double> %i.mq, splat (double 1.000000e+00) ; 2 uses
  %i.ms = extractelement <2 x i1> %i.mr, i64 0
  br i1 %i.ms, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body180
  %i.mt = extractelement <2 x double> %i.mq, i64 0
  %i.mu = fadd nsz double %i.mt, 1.000000e+00
  %i.mv = fdiv nsz double 1.000000e+00, %i.mu
  %i.mw = getelementptr [8 x i8], ptr %invariant.gep413.i, i64 %i.mj
  %i.mx = tail call nsz double @llvm.pow.f64(double %i.mv, double 1.500000e+00)
  store double %i.mx, ptr %i.mw, align 8, !tbaa !46
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body180
  %i.my = extractelement <2 x i1> %i.mr, i64 1
  br i1 %i.my, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue
  %i.mz = extractelement <2 x double> %i.mq, i64 1
  %i.na = fadd nsz double %i.mz, 1.000000e+00
  %i.nb = fdiv nsz double 1.000000e+00, %i.na
  %i.nc = getelementptr [8 x i8], ptr %invariant.gep413.i, i64 %i.mj
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %i.ne = tail call nsz double @llvm.pow.f64(double %i.nb, double 1.500000e+00)
  store double %i.ne, ptr %i.nd, align 8, !tbaa !46
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue
  %index.next184 = add nuw i64 %index181, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.nf = icmp eq i64 %index.next184, %n.vec171
  br i1 %i.nf, label %middle.block185, label %vector.body180, !llvm.loop !153

middle.block185:                                  ; preds = %pred.store.continue183
  br i1 %cmp.n186, label %._crit_edge308.i, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph.i, %middle.block185
  %indvars.iv350.i.ph = phi i64 [ %i.lm, %.lr.ph.i ], [ %i.lu, %middle.block185 ]
  br label %scalar.ph168

._crit_edge308.i:                                 ; preds = %bb.w, %middle.block185
  %indvars.iv.next356.i = add nuw nsw i64 %indvars.iv355.i, 1 ; 2 uses
  %exitcond359.not.i = icmp eq i64 %indvars.iv.next356.i, %wide.trip.count358.i
  br i1 %exitcond359.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !154

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %bb.w
  %indvars.iv350.i = phi i64 [ %indvars.iv.next351.i, %bb.w ], [ %indvars.iv350.i.ph, %scalar.ph168.preheader ] ; 3 uses
  %i.ng = trunc nsw i64 %indvars.iv350.i to i32
  %i.nh = sitofp nsz i32 %i.ng to double
  %i.ni = fadd nnan nsz double %i.nh, 5.000000e-01
  %i.nj = tail call nsz double @llvm.fmuladd.f64(double %i.lh, double 9.000000e-01, double %i.ni)
  %i.nk = fmul nsz double %i.nj, f0x3FF028F5C0000000
  %i.nl = fdiv nsz double %i.nk, %i.li            ; 2 uses
  %i.nm = fmul nsz double %i.nl, %i.nl
  %i.nn = fadd nsz double %i.mh, %i.nm            ; 2 uses
  %i.no = fcmp nsz ogt double %i.nn, 1.000000e+00
  br i1 %i.no, label %bb.w, label %bb.v

bb.v:                                             ; preds = %scalar.ph168
  %i.np = fadd nsz double %i.nn, 1.000000e+00
  %i.nq = fdiv nsz double 1.000000e+00, %i.np
  %i.nr = tail call nsz double @llvm.pow.f64(double %i.nq, double 1.500000e+00)
  %gep414.i = getelementptr [8 x i8], ptr %invariant.gep413.i, i64 %indvars.iv350.i
  store double %i.nr, ptr %gep414.i, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %scalar.ph168
  %indvars.iv.next351.i = add nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %exitcond354.not.i = icmp eq i64 %indvars.iv.next351.i, %i.lo
  br i1 %exitcond354.not.i, label %._crit_edge308.i, label %scalar.ph168, !llvm.loop !155

.loopexit.i:                                      ; preds = %._crit_edge308.i, %._crit_edge314.i, %._crit_edge319.i, %._crit_edge324.i, %.lr.ph310.i, %.preheader290.lr.ph.split.i, %.preheader291.i, %.lr.ph326.i, %.preheader292.i, %.preheader294.lr.ph.i, %.preheader295.i, %.preheader297.lr.ph.i, %.preheader298.i, %.preheader303.i
  switch i32 %i.bp, label %.critedge [
    i32 0, label %.preheader286.i
    i32 1, label %.preheader288.i
  ]

.preheader288.i:                                  ; preds = %.loopexit.i
  %i.ns = icmp sgt i32 %.0275.i, 0
  %i.nt = icmp sgt i32 %.0276.i, 0
  %or.cond423.i = and i1 %i.nt, %i.ns
  br i1 %or.cond423.i, label %.preheader287.lr.ph.split.i, label %.critedge

.preheader287.lr.ph.split.i:                      ; preds = %.preheader288.i
  %i.nu = zext nneg i32 %.0276.i to i64           ; 5 uses
  %wide.trip.count389.i = zext nneg i32 %.0275.i to i64
  %invariant.gep417.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.nu ; 2 uses
  %min.iters.check201 = icmp ult i32 %.0276.i, 4
  %n.vec203 = and i64 %i.nu, 2147483644           ; 3 uses
  %cmp.n209 = icmp eq i64 %n.vec203, %i.nu
  br label %.preheader287.i

.preheader286.i:                                  ; preds = %.loopexit.i
  %i.nv = icmp sgt i32 %.0275.i, 0
  %i.nw = icmp sgt i32 %.0276.i, 0
  %or.cond424.i = and i1 %i.nw, %i.nv
  br i1 %or.cond424.i, label %.preheader.lr.ph.split.i, label %.critedge

.preheader.lr.ph.split.i:                         ; preds = %.preheader286.i
  %i.nx = zext nneg i32 %.0276.i to i64           ; 8 uses
  %i.ny = zext nneg i32 %.0275.i to i64           ; 3 uses
  %i.nz = mul nuw nsw i64 %i.nx, %i.ny
  %i.oa = shl i64 %i.nz, 3
  %min.iters.check212 = icmp ult i32 %.0276.i, 4
  %i.ob = add i64 %i.oa, -1
  %diff.check = icmp ult i64 %i.ob, 31
  %or.cond = select i1 %min.iters.check212, i1 true, i1 %diff.check
  %n.vec214 = and i64 %i.nx, 2147483644           ; 3 uses
  %cmp.n221 = icmp eq i64 %n.vec214, %i.nx
  %xtraiter = and i64 %i.nx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge337.i, %.preheader.lr.ph.split.i
  %indvars.iv397.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %indvars.iv.next398.i, %._crit_edge337.i ] ; 3 uses
  %i.oc = mul nuw nsw i64 %indvars.iv397.i, %i.nx
  %i.od = add nuw nsw i64 %indvars.iv397.i, %i.ny
  %i.oe = mul nuw nsw i64 %i.od, %i.nx
  %invariant.gep419.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.oc ; 6 uses
  %invariant.gep421.i = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.oe ; 6 uses
  br i1 %or.cond, label %scalar.ph211.preheader, label %vector.body215

vector.body215:                                   ; preds = %.preheader.i, %vector.body215
  %index216 = phi i64 [ %index.next219, %vector.body215 ], [ 0, %.preheader.i ] ; 3 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %index216 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %wide.load217 = load <2 x double>, ptr %i.of, align 8, !tbaa !46
  %wide.load218 = load <2 x double>, ptr %i.og, align 8, !tbaa !46
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %index216 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <2 x double> %wide.load217, ptr %i.oh, align 8, !tbaa !46
  store <2 x double> %wide.load218, ptr %i.oi, align 8, !tbaa !46
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.oj, label %middle.block220, label %vector.body215, !llvm.loop !156

middle.block220:                                  ; preds = %vector.body215
  br i1 %cmp.n221, label %._crit_edge337.i, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %.preheader.i, %middle.block220
  %indvars.iv392.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec214, %middle.block220 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol

scalar.ph211.prol:                                ; preds = %scalar.ph211.preheader, %scalar.ph211.prol
  %indvars.iv392.i.prol = phi i64 [ %indvars.iv.next393.i.prol, %scalar.ph211.prol ], [ %indvars.iv392.i.ph, %scalar.ph211.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph211.prol ], [ 0, %scalar.ph211.preheader ]
  %gep420.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv392.i.prol
  %i.ok = load double, ptr %gep420.i.prol, align 8, !tbaa !46
  %gep422.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv392.i.prol
  store double %i.ok, ptr %gep422.i.prol, align 8, !tbaa !46
  %indvars.iv.next393.i.prol = add nuw nsw i64 %indvars.iv392.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol, !llvm.loop !157

scalar.ph211.prol.loopexit:                       ; preds = %scalar.ph211.prol, %scalar.ph211.preheader
  %indvars.iv392.i.unr = phi i64 [ %indvars.iv392.i.ph, %scalar.ph211.preheader ], [ %indvars.iv.next393.i.prol, %scalar.ph211.prol ]
  %i.ol = sub nsw i64 %indvars.iv392.i.ph, %i.nx
  %i.om = icmp ugt i64 %i.ol, -4
  br i1 %i.om, label %._crit_edge337.i, label %scalar.ph211

._crit_edge337.i:                                 ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211, %middle.block220
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 1 ; 2 uses
  %exitcond401.not.i = icmp eq i64 %indvars.iv.next398.i, %i.ny
  br i1 %exitcond401.not.i, label %.critedge, label %.preheader.i, !llvm.loop !158

scalar.ph211:                                     ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211
  %indvars.iv392.i = phi i64 [ %indvars.iv.next393.i.3, %scalar.ph211 ], [ %indvars.iv392.i.unr, %scalar.ph211.prol.loopexit ] ; 6 uses
  %gep420.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv392.i
  %i.on = load double, ptr %gep420.i, align 8, !tbaa !46
  %gep422.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv392.i
  store double %i.on, ptr %gep422.i, align 8, !tbaa !46
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %gep420.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i
  %i.oo = load double, ptr %gep420.i.1, align 8, !tbaa !46
  %gep422.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i
  store double %i.oo, ptr %gep422.i.1, align 8, !tbaa !46
  %indvars.iv.next393.i.1 = add nuw nsw i64 %indvars.iv392.i, 2 ; 2 uses
  %gep420.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i.1
  %i.op = load double, ptr %gep420.i.2, align 8, !tbaa !46
  %gep422.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i.1
  store double %i.op, ptr %gep422.i.2, align 8, !tbaa !46
  %indvars.iv.next393.i.2 = add nuw nsw i64 %indvars.iv392.i, 3 ; 2 uses
  %gep420.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep419.i, i64 %indvars.iv.next393.i.2
  %i.oq = load double, ptr %gep420.i.3, align 8, !tbaa !46
  %gep422.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep421.i, i64 %indvars.iv.next393.i.2
  store double %i.oq, ptr %gep422.i.3, align 8, !tbaa !46
  %indvars.iv.next393.i.3 = add nuw nsw i64 %indvars.iv392.i, 4 ; 2 uses
  %exitcond396.not.i.3 = icmp eq i64 %indvars.iv.next393.i.3, %i.nx
  br i1 %exitcond396.not.i.3, label %._crit_edge337.i, label %scalar.ph211, !llvm.loop !159

.preheader287.i:                                  ; preds = %._crit_edge333.i, %.preheader287.lr.ph.split.i
  %indvars.iv386.i = phi i64 [ 0, %.preheader287.lr.ph.split.i ], [ %indvars.iv.next387.i, %._crit_edge333.i ] ; 2 uses
  %i.or = mul nuw nsw i64 %indvars.iv386.i, %i.nu ; 2 uses
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.body204

vector.body204:                                   ; preds = %.preheader287.i, %vector.body204
  %index205 = phi i64 [ %index.next207, %vector.body204 ], [ 0, %.preheader287.i ] ; 2 uses
  %i.os = add nuw nsw i64 %index205, %i.or        ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.os ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %wide.load = load <2 x double>, ptr %i.ot, align 8, !tbaa !46
  %wide.load206 = load <2 x double>, ptr %i.ou, align 8, !tbaa !46
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep417.i, i64 %i.os ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <2 x double> %wide.load, ptr %i.ov, align 8, !tbaa !46
  store <2 x double> %wide.load206, ptr %i.ow, align 8, !tbaa !46
  %index.next207 = add nuw i64 %index205, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next207, %n.vec203
  br i1 %i.ox, label %middle.block208, label %vector.body204, !llvm.loop !160

middle.block208:                                  ; preds = %vector.body204
  br i1 %cmp.n209, label %._crit_edge333.i, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.preheader287.i, %middle.block208
  %indvars.iv381.i.ph = phi i64 [ 0, %.preheader287.i ], [ %n.vec203, %middle.block208 ]
  br label %scalar.ph200

._crit_edge333.i:                                 ; preds = %scalar.ph200, %middle.block208
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next387.i, %wide.trip.count389.i
  br i1 %exitcond390.not.i, label %.critedge, label %.preheader287.i, !llvm.loop !161

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %indvars.iv381.i = phi i64 [ %indvars.iv.next382.i, %scalar.ph200 ], [ %indvars.iv381.i.ph, %scalar.ph200.preheader ] ; 2 uses
  %i.oy = add nuw nsw i64 %indvars.iv381.i, %i.or ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.oy
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !46
  %gep418.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep417.i, i64 %i.oy
  store double %i.pa, ptr %gep418.i, align 8, !tbaa !46
  %indvars.iv.next382.i = add nuw nsw i64 %indvars.iv381.i, 1 ; 2 uses
  %exitcond385.not.i = icmp eq i64 %indvars.iv.next382.i, %i.nu
  br i1 %exitcond385.not.i, label %._crit_edge333.i, label %scalar.ph200, !llvm.loop !162

.critedge:                                        ; preds = %bb.k, %._crit_edge333.i, %._crit_edge337.i, %bb.j, %.preheader288.i, %.preheader286.i, %.loopexit.i, %bb.n
  %i.pb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.pc = tail call i32 @ff_framesync_init_dualinput(ptr noundef nonnull %i.pb, ptr noundef %i.a) #15 ; 2 uses
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %generate_density_map.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.pe = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pg = load <2 x i32>, ptr %i.pe, align 8, !tbaa !35
  store <2 x i32> %i.pg, ptr %i.pf, align 8, !tbaa !35
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pi = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !35
  store i64 %i.pj, ptr %i.ph, align 8, !tbaa !35
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pl = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@ssim360_tape:bb.a
  %i.na = ashr i32 %i.mz, 16
  %i.nb = and i32 %i.na, %5                       ; 4 uses
  %i.nc = add nsw i32 %i.ip, %i.kz
  %i.nd = add nsw i32 %i.iq, %i.nb
  %i.ne = mul nsw i32 %i.kz, %i.kz
  %i.nf = add nsw i32 %i.iu, %i.ne
  %i.ng = mul nsw i32 %i.nb, %i.nb
  %i.nh = add nsw i32 %i.nf, %i.ng
  %i.ni = mul nsw i32 %i.nb, %i.kz
  %i.nj = add nsw i32 %i.iw, %i.ni
  %i.nk = add nsw i64 %indvars.iv.next78.2.i, %i.w ; 2 uses
  %i.nl = getelementptr inbounds [32 x i8], ptr %1, i64 %i.nk ; 8 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !88
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !89
  %i.nq = sext i32 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !90
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !91
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %get_bilinear_sample.exit61.2.i
  %i.nx = getelementptr inbounds [2 x i8], ptr %0, i64 %i.nn
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !77
  %i.nz = zext i16 %i.ny to i32
  %i.oa = getelementptr inbounds [2 x i8], ptr %0, i64 %i.nq
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !77
  %i.oc = zext i16 %i.ob to i32
  %i.od = getelementptr inbounds [2 x i8], ptr %0, i64 %i.nt
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !77
  %i.of = zext i16 %i.oe to i32
  %i.og = getelementptr inbounds [2 x i8], ptr %0, i64 %i.nw
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !77
  %i.oi = zext i16 %i.oh to i32
  br label %get_bilinear_sample.exit.3.i

bb.q:                                             ; preds = %get_bilinear_sample.exit61.2.i
  %i.oj = getelementptr inbounds i8, ptr %0, i64 %i.nn
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !39
  %i.ol = zext i8 %i.ok to i32
  %i.om = getelementptr inbounds i8, ptr %0, i64 %i.nq
  %i.on = load i8, ptr %i.om, align 1, !tbaa !39
  %i.oo = zext i8 %i.on to i32
  %i.op = getelementptr inbounds i8, ptr %0, i64 %i.nt
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !39
  %i.or = zext i8 %i.oq to i32
  %i.os = getelementptr inbounds i8, ptr %0, i64 %i.nw
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !39
  %i.ou = zext i8 %i.ot to i32
  br label %get_bilinear_sample.exit.3.i

get_bilinear_sample.exit.3.i:                     ; preds = %bb.q, %bb.p
  %.029.i.3.i = phi i32 [ %i.oc, %bb.p ], [ %i.oo, %bb.q ]
  %.028.i.3.i = phi i32 [ %i.of, %bb.p ], [ %i.or, %bb.q ]
  %.027.i.3.i = phi i32 [ %i.oi, %bb.p ], [ %i.ou, %bb.q ]
  %.0.i.3.i = phi i32 [ %i.nz, %bb.p ], [ %i.ol, %bb.q ]
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !201
  %i.ox = mul nsw i32 %i.ow, %.0.i.3.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !202
  %i.pa = mul nsw i32 %i.oz, %.029.i.3.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !203
  %i.pd = mul nsw i32 %i.pc, %.028.i.3.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nl, i64 28
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !204
  %i.pg = mul nsw i32 %i.pf, %.027.i.3.i
  %i.ph = add i32 %i.ox, 32768
  %i.pi = add i32 %i.ph, %i.pa
  %i.pj = add i32 %i.pi, %i.pd
  %i.pk = add i32 %i.pj, %i.pg
  %i.pl = ashr i32 %i.pk, 16
  %i.pm = and i32 %i.pl, %5                       ; 4 uses
  %i.pn = getelementptr inbounds [32 x i8], ptr %3, i64 %i.nk ; 8 uses
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !88
  %i.pp = sext i32 %i.po to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !89
  %i.ps = sext i32 %i.pr to i64                   ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !90
  %i.pv = sext i32 %i.pu to i64                   ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !91
  %i.py = sext i32 %i.px to i64                   ; 2 uses
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %get_bilinear_sample.exit.3.i
  %i.pz = getelementptr inbounds [2 x i8], ptr %2, i64 %i.pp
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !77
  %i.qb = zext i16 %i.qa to i32
  %i.qc = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ps
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !77
  %i.qe = zext i16 %i.qd to i32
  %i.qf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.pv
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !77
  %i.qh = zext i16 %i.qg to i32
  %i.qi = getelementptr inbounds [2 x i8], ptr %2, i64 %i.py
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !77
  %i.qk = zext i16 %i.qj to i32
  br label %get_bilinear_sample.exit61.3.i

bb.s:                                             ; preds = %get_bilinear_sample.exit.3.i
  %i.ql = getelementptr inbounds i8, ptr %2, i64 %i.pp
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !39
  %i.qn = zext i8 %i.qm to i32
  %i.qo = getelementptr inbounds i8, ptr %2, i64 %i.ps
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !39
  %i.qq = zext i8 %i.qp to i32
  %i.qr = getelementptr inbounds i8, ptr %2, i64 %i.pv
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !39
  %i.qt = zext i8 %i.qs to i32
  %i.qu = getelementptr inbounds i8, ptr %2, i64 %i.py
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !39
  %i.qw = zext i8 %i.qv to i32
  br label %get_bilinear_sample.exit61.3.i

get_bilinear_sample.exit61.3.i:                   ; preds = %bb.s, %bb.r
  %.029.i57.3.i = phi i32 [ %i.qe, %bb.r ], [ %i.qq, %bb.s ]
  %.028.i58.3.i = phi i32 [ %i.qh, %bb.r ], [ %i.qt, %bb.s ]
  %.027.i59.3.i = phi i32 [ %i.qk, %bb.r ], [ %i.qw, %bb.s ]
  %.0.i60.3.i = phi i32 [ %i.qb, %bb.r ], [ %i.qn, %bb.s ]
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !201
  %i.qz = mul nsw i32 %i.qy, %.0.i60.3.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !202
  %i.rc = mul nsw i32 %i.rb, %.029.i57.3.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !203
  %i.rf = mul nsw i32 %i.re, %.028.i58.3.i
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !204
  %i.ri = mul nsw i32 %i.rh, %.027.i59.3.i
  %i.rj = add i32 %i.qz, 32768
  %i.rk = add i32 %i.rj, %i.rc
  %i.rl = add i32 %i.rk, %i.rf
  %i.rm = add i32 %i.rl, %i.ri
  %i.rn = ashr i32 %i.rm, 16
  %i.ro = and i32 %i.rn, %5                       ; 4 uses
  %i.rp = add nsw i32 %i.nc, %i.pm                ; 2 uses
  %i.rq = add nsw i32 %i.nd, %i.ro                ; 2 uses
  %i.rr = mul nsw i32 %i.pm, %i.pm
  %i.rs = add nsw i32 %i.nh, %i.rr
  %i.rt = mul nsw i32 %i.ro, %i.ro
  %i.ru = add nsw i32 %i.rs, %i.rt                ; 2 uses
  %i.rv = mul nsw i32 %i.ro, %i.pm
  %i.rw = add nsw i32 %i.nj, %i.rv                ; 2 uses
  %indvars.iv.next83.i = add nsw i64 %indvars.iv82.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv82.i, %i.o
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !198

ssim360_4x4x2_tape.exit:                          ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %smax
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !199

._crit_edge.loopexit:                             ; preds = %ssim360_4x4x2_tape.exit
  %i.rx = trunc i64 %smax to i32
  %i.ry = add i32 %i.rx, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1102.lcssa = phi ptr [ %.0101116, %.preheader ], [ %.199112, %._crit_edge.loopexit ] ; 5 uses
  %.199.lcssa = phi ptr [ %.098117, %.preheader ], [ %.1102111, %._crit_edge.loopexit ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0121, %.preheader ], [ %i.ry, %._crit_edge.loopexit ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.199.lcssa, i64 16
  %i.sa = getelementptr inbounds nuw i8, ptr %.1102.lcssa, i64 16
  %i.sb = getelementptr inbounds nuw i8, ptr %.199.lcssa, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %.199.lcssa, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %.1102.lcssa, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %.1102.lcssa, i64 24
  %i.sf = load <2 x i32>, ptr %.199.lcssa, align 4, !tbaa !35
  %i.sg = load <2 x i32>, ptr %.1102.lcssa, align 4, !tbaa !35
  %i.sh = load <2 x i32>, ptr %i.rz, align 4, !tbaa !35
  %i.si = add nsw <2 x i32> %i.sh, %i.sf
  %i.sj = add nsw <2 x i32> %i.si, %i.sg
  %i.sk = load <2 x i32>, ptr %i.sa, align 4, !tbaa !35
  %i.sl = add nsw <2 x i32> %i.sj, %i.sk          ; 3 uses
  %i.sm = load <2 x i32>, ptr %i.sc, align 4, !tbaa !35
  %i.sn = load <2 x i32>, ptr %i.sb, align 4, !tbaa !35
  %i.so = add nsw <2 x i32> %i.sm, %i.sn
  %i.sp = load <2 x i32>, ptr %i.sd, align 4, !tbaa !35
  %i.sq = add nsw <2 x i32> %i.so, %i.sp
  %i.sr = load <2 x i32>, ptr %i.se, align 4, !tbaa !35
  %i.ss = add nsw <2 x i32> %i.sq, %i.sr          ; 3 uses
  br i1 %i.d, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.st = sitofp nsz <2 x i32> %i.ss to <2 x double>
  %i.su = sitofp nsz <2 x i32> %i.sl to <2 x double> ; 7 uses
  %i.sv = shufflevector <2 x double> <double poison, double 2.000000e+00>, <2 x double> %i.su, <2 x i32> <i32 3, i32 1>
  %i.sw = fneg nsz <2 x double> %i.su             ; 2 uses
  %i.sx = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul nnan nsz <2 x double> %i.sx, %i.sw
  %i.sz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> splat (double 6.400000e+01), <2 x double> %i.sy) ; 2 uses
  %i.ta = insertelement <2 x double> %i.su, double 2.000000e+00, i64 0
  %i.tb = fmul nnan nsz <2 x double> %i.ta, %i.su ; 2 uses
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> %i.sz, <2 x i32> <i32 0, i32 3>
  %i.td = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.sv, <2 x double> %i.i) ; 2 uses
  %shift = shufflevector <2 x double> %i.td, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nsz <2 x double> %i.td, %shift
  %i.te = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.tf = shufflevector <2 x double> %i.su, <2 x double> %i.sw, <2 x i32> <i32 0, i32 3>
  %i.tg = shufflevector <2 x double> %i.tb, <2 x double> %i.sz, <2 x i32> <i32 1, i32 2>
  %i.th = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.su, <2 x double> %i.tg)
  %i.ti = fadd nsz <2 x double> %i.i, %i.th       ; 2 uses
  %shift149 = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop150 = fmul nsz <2 x double> %i.ti, %shift149
  %i.tj = extractelement <2 x double> %foldExtExtBinop150, i64 0
  %i.tk = fdiv nsz double %i.te, %i.tj
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  %i.tl = extractelement <2 x i32> %i.ss, i64 0
  %i.tm = shl nsw i32 %i.tl, 6
  %i.tn = extractelement <2 x i32> %i.sl, i64 0   ; 4 uses
  %i.to = mul nsw i32 %i.tn, %i.tn
  %i.tp = extractelement <2 x i32> %i.sl, i64 1   ; 4 uses
  %i.tq = mul nsw i32 %i.tp, %i.tp
  %i.tr = add nuw i32 %i.tq, %i.to                ; 2 uses
  %i.ts = shl nsw i32 %i.tn, 1
  %i.tt = mul nsw i32 %i.ts, %i.tp
  %i.tu = add nsw i32 %i.tt, 416
  %i.tv = sitofp nsz i32 %i.tu to double
  %i.tw = extractelement <2 x i32> %i.ss, i64 1
  %i.tx = shl i32 %i.tw, 7
  %i.ty = mul i32 %i.tn, -2
  %.neg106 = mul i32 %i.ty, %i.tp
  %i.tz = add i32 %.neg106, 235963
  %i.ua = add i32 %i.tz, %i.tx
  %i.ub = sitofp nsz i32 %i.ua to double
  %i.uc = fmul nnan nsz double %i.tv, %i.ub
  %i.ud = add nuw nsw i32 %i.tr, 416
  %i.ue = uitofp nsz nneg i32 %i.ud to double
  %reass.sub = sub i32 %i.tm, %i.tr
  %i.uf = add i32 %reass.sub, 235963
  %i.ug = sitofp nsz i32 %i.uf to double
  %i.uh = fmul nnan nsz double %i.ue, %i.ug
  %i.ui = fdiv nsz double %i.uc, %i.uh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0100 = phi nsz double [ %i.tk, %bb.t ], [ %i.ui, %bb.u ] ; 2 uses
  %i.uj = fmul nsz double %.0100, f0x40FFFFF800000000
  %i.uk = fptosi double %i.uj to i32
  %i.ul = tail call i32 @llvm.smax.i32(i32 %i.uk, i32 0)
  %i.um = tail call i32 @llvm.umin.i32(i32 %i.ul, i32 131071)
  br i1 %.not.i, label %get_heat.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.un = uitofp nsz nneg i32 %indvars134 to float
  %i.uo = fadd nnan nsz float %i.un, -5.000000e-01
  %i.up = fdiv nsz float %i.uo, %i.k
  %i.uq = fadd nsz float %i.up, -5.000000e-01
  %i.ur = fmul nsz float %i.uq, 2.000000e+00
  %i.us = tail call nsz float @llvm.asin.f32(float %i.ur) ; 2 uses
  %i.ut = fmul nsz float %i.us, f0x3FC90FDB
  %i.uu = fdiv nsz float %i.ut, %9                ; 3 uses
  %i.uv = fdiv nsz float %i.uu, f0x40C90FDB
  %i.uw = fptosi float %i.uv to i32
  %i.ux = fcmp nsz olt float %i.uu, 0.000000e+00
  %.neg.i.i = sext i1 %i.ux to i32
  %i.uy = add i32 %.neg.i.i, %i.uw
  %i.uz = sitofp nsz i32 %i.uy to float
  %i.va = tail call nsz float @llvm.fmuladd.f32(float %i.uz, float f0xC0C90FDB, float %i.uu) ; 2 uses
  %i.vb = fdiv nsz float %i.va, f0x40490FDB
  %i.vc = fptosi float %i.vb to i32
  %i.vd = sitofp nsz i32 %i.vc to float
  %i.ve = tail call nsz float @llvm.fmuladd.f32(float %i.vd, float f0xC0C90FDB, float %i.va) ; 2 uses
  %i.vf = fcmp nsz olt float %i.ve, f0xC0490FDB
  %i.vg = select nsz i1 %i.vf, float f0xC0490FDB, float %i.ve ; 2 uses
  %i.vh = fcmp nsz olt float %i.vg, f0x40490FDB
  %i.vi = select nsz i1 %i.vh, float %i.vg, float f0x40490FDB
  %i.vj = fmul nsz float %i.vi, 5.000000e-01
  %i.vk = insertelement <2 x float> poison, float %i.us, i64 0
  %i.vl = insertelement <2 x float> %i.vk, float %i.vj, i64 1
  %i.vm = fdiv nsz <2 x float> %i.vl, splat (float f0x40490FDB) ; 2 uses
  %i.vn = extractelement <2 x float> %i.vm, i64 0
  %i.vo = fadd nsz float %i.vn, 5.000000e-01
  %i.vp = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.vm, <2 x i32> <i32 3, i32 1>
  %i.vq = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.vo, i64 1
  %i.vr = fsub nsz <2 x float> %i.vp, %i.vq
  %i.vs = load i32, ptr %10, align 8, !tbaa !205
  %i.vt = load <2 x i32>, ptr %10, align 8, !tbaa !35 ; 2 uses
  %i.vu = add nsw <2 x i32> %i.vt, splat (i32 -1)
  %i.vv = sitofp nsz <2 x i32> %i.vu to <2 x float> ; 2 uses
  %i.vw = sitofp nsz <2 x i32> %i.vt to <2 x float>
  %i.vx = fmul nsz <2 x float> %i.vr, %i.vw       ; 2 uses
  %i.vy = fcmp nsz olt <2 x float> %i.vx, zeroinitializer
  %i.vz = select <2 x i1> %i.vy, <2 x float> zeroinitializer, <2 x float> %i.vx ; 2 uses
  %i.wa = fcmp nsz olt <2 x float> %i.vz, %i.vv
  %i.wb = select <2 x i1> %i.wa, <2 x float> %i.vz, <2 x float> %i.vv ; 2 uses
  %i.wc = extractelement <2 x float> %i.wb, i64 0
  %i.wd = fptosi float %i.wc to i32
  %i.we = extractelement <2 x float> %i.wb, i64 1
  %i.wf = fptosi float %i.we to i32
  %i.wg = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.wh = mul nsw i32 %i.vs, %i.wf
  %i.wi = add nsw i32 %i.wh, %i.wd
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.wg, i64 %i.wj
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !46
  %i.wm = fptrunc nsz double %i.wl to float
  %i.wn = fpext nsz float %i.wm to double
  br label %get_heat.exit

get_heat.exit:                                    ; preds = %bb.v, %bb.w
  %.0.i105 = phi double [ %i.wn, %bb.w ], [ 1.000000e+00, %bb.v ] ; 4 uses
  %i.wo = zext nneg i32 %i.um to i64
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.wo ; 2 uses
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !46
  %i.wr = fadd nsz double %.0.i105, %i.wq
  store double %i.wr, ptr %i.wp, align 8, !tbaa !46
  %i.ws = load double, ptr %8, align 8, !tbaa !46
  %i.wt = fadd nsz double %.0.i105, %i.ws
  store double %i.wt, ptr %8, align 8, !tbaa !46
  %i.wu = tail call nsz double @llvm.fmuladd.f64(double %.0100, double %.0.i105, double %.096119) ; 2 uses
  %i.wv = fadd nsz double %.097118, %.0.i105      ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count
  br i1 %exitcond135.not, label %._crit_edge122.loopexit, label %.preheader, !llvm.loop !200

._crit_edge122.loopexit:                          ; preds = %get_heat.exit
  %i.ww = fdiv nsz double %i.wu, %i.wv
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %bb.a
  %i.wx = phi double [ +qnan, %bb.a ], [ %i.ww, %._crit_edge122.loopexit ]
  ret double %i.wx
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @get_projected_map(float noundef %0, float noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  switch i32 %i.b, label %bb.w [
    i32 1, label %bb.b
    i32 0, label %bb.f
    i32 2, label %bb.l
    i32 3, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load float, ptr %i.c, align 4, !tbaa !86 ; 2 uses
  %sincos.i = tail call nsz { float, float } @llvm.sincos.f32(float %0) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %i.e = fadd nsz float %1, f0x3F490FDB
  %sincos31.i = tail call nsz { float, float } @llvm.sincos.f32(float %i.e) ; 2 uses
  %sin32.i = extractvalue { float, float } %sincos31.i, 0
  %cos33.i = extractvalue { float, float } %sincos31.i, 1
  %i.f = fmul nsz float %cos.i, %sin32.i          ; 7 uses
  %i.g = fmul nsz float %cos.i, %cos33.i          ; 2 uses
  %i.h = fsub nsz float %i.g, %sin.i
  %i.i = fadd nsz float %sin.i, %i.g
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = insertelement <2 x float> %i.j, float %i.i, i64 1
  %i.l = fdiv nsz <2 x float> %i.k, splat (float f0x3FB504F3) ; 5 uses
  %i.m = extractelement <2 x float> %i.l, i64 1   ; 5 uses
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 3 uses
  %i.o = fcmp nsz oge float %i.m, 0.000000e+00
  %i.p = fneg nsz float %i.m                      ; 2 uses
  %i.q = select nsz i1 %i.o, float %i.m, float %i.p ; 2 uses
  %i.r = fcmp nsz ogt float %i.q, 5.770000e-01
  br i1 %i.r, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = insertelement <2 x float> poison, float %i.f, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> %i.l, <2 x i32> <i32 0, i32 2>
  %i.u = insertelement <2 x float> %i.l, float %i.q, i64 0
  %i.v = fdiv nsz <2 x float> %i.t, %i.u          ; 2 uses
  %i.w = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.v)
  %i.x = fcmp nsz ugt <2 x float> %i.w, splat (float 1.000000e+00)
  %i.y = bitcast <2 x i1> %i.x to i2
  %.not41 = icmp eq i2 %i.y, 0
  br i1 %.not41, label %get_cubemap_face_map.exit.thread.thread.i, label %.thread.i.i

get_cubemap_face_map.exit.thread.thread.i:        ; preds = %bb.c
  %i.z = fcmp nsz ogt float %i.m, 0.000000e+00
  %spec.select.i = select i1 %i.z, i64 2, i64 3
  %i.aa = fneg nsz <2 x float> %i.v
  br label %get_rotated_cubemap_map.exit

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.ab = fcmp nsz oge float %i.f, 0.000000e+00
  %i.ac = fneg nsz float %i.f
  %i.ad = select nsz i1 %i.ab, float %i.f, float %i.ac ; 2 uses
  %i.ae = fcmp nsz ogt float %i.ad, 5.770000e-01
  br i1 %i.ae, label %bb.d, label %.thread58.i.i

bb.d:                                             ; preds = %.thread.i.i
  %i.af = fneg nsz float %i.n
  %i.ag = fdiv nsz float %i.af, %i.f              ; 2 uses
  %i.ah = tail call nsz float @llvm.fabs.f32(float %i.ag)
end_hunk_1
