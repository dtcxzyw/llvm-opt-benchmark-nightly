Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@bark_noise_hybridmp:bb.a
  %i.ju = fdiv float %i.jt, %i.jr
  %i.jv = fsub float %i.ju, %4                    ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv427 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = fcmp olt float %i.jv, %i.jx
  br i1 %i.jy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph378
  store float %i.jv, ptr %i.jw, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph378, %bb.e
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 3 uses
  %i.jz = fadd float %.5377, 1.000000e+00         ; 2 uses
  %.not334 = icmp slt i64 %indvars.iv.next428, %invariant.op
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1
  br i1 %.not334, label %.lr.ph378, label %.preheader.loopexit

.lr.ph386:                                        ; preds = %.lr.ph386.prol.loopexit, %bb.i
  %indvars.iv430 = phi i64 [ %indvars.iv.next431.1, %bb.i ], [ %indvars.iv430.unr, %.lr.ph386.prol.loopexit ] ; 3 uses
  %.6385 = phi float [ %i.kq, %bb.i ], [ %.6385.unr, %.lr.ph386.prol.loopexit ] ; 2 uses
  %i.ka = fmul float %.3308.lcssa, %.6385
  %i.kb = fadd float %.3312.lcssa, %i.ka
  %i.kc = fdiv float %i.kb, %.3304.lcssa
  %i.kd = fsub float %i.kc, %4                    ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv430 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fcmp olt float %i.kd, %i.kf
  br i1 %i.kg, label %bb.g, label %.lr.ph386.1

bb.g:                                             ; preds = %.lr.ph386
  store float %i.kd, ptr %i.ke, align 4
  br label %.lr.ph386.1

.lr.ph386.1:                                      ; preds = %.lr.ph386, %bb.g
  %i.kh = fadd float %.6385, 1.000000e+00         ; 2 uses
  %i.ki = fmul float %.3308.lcssa, %i.kh
  %i.kj = fadd float %.3312.lcssa, %i.ki
  %i.kk = fdiv float %i.kj, %.3304.lcssa
  %i.kl = fsub float %i.kk, %4                    ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv430
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4
  %i.kp = fcmp olt float %i.kl, %i.ko
  br i1 %i.kp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph386.1
  store float %i.kl, ptr %i.kn, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph386.1
  %indvars.iv.next431.1 = add nuw nsw i64 %indvars.iv430, 2 ; 2 uses
  %i.kq = fadd float %i.kh, 1.000000e+00
  %i.kr = trunc nuw i64 %indvars.iv.next431.1 to i32
  %i.ks = icmp sgt i32 %0, %i.kr
  br i1 %i.ks, label %.lr.ph386, label %.loopexit, !llvm.loop !583

.loopexit:                                        ; preds = %.lr.ph386.prol.loopexit, %bb.i, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_tonemask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, float noundef %3, float noundef %4) local_unnamed_addr #32 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = alloca i8, i64 %i.e, align 16            ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4
  %i.k = fadd float %4, %i.j                      ; 2 uses
  %i.l = icmp sgt i32 %i.c, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x float> splat (float -9.999000e+03), ptr %i.m, align 16
  store <4 x float> splat (float -9.999000e+03), ptr %i.n, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader99

.lr.ph.preheader99:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader99, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader99 ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float -9.999000e+03, ptr %i.p, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !585

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load float, ptr %i.q, align 8            ; 2 uses
  %i.s = fcmp olt float %i.k, %i.r
  %.0 = select i1 %i.s, float %i.r, float %i.k    ; 5 uses
  %i.t = icmp sgt i32 %i.a, 0
  br i1 %i.t, label %.lr.ph36, label %._crit_edge37.thread

._crit_edge37.thread:                             ; preds = %._crit_edge
  %i.u = sext i32 %i.a to i64
  br label %seed_loop.exit

.lr.ph36:                                         ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %wide.trip.count54 = zext nneg i32 %i.a to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count54, 3       ; 3 uses
  %i.w = icmp ult i32 %i.a, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph36.new

.lr.ph36.new:                                     ; preds = %.lr.ph36
  %unroll_iter = and i64 %wide.trip.count54, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph36.new
  %indvars.iv51 = phi i64 [ 0, %.lr.ph36.new ], [ %indvars.iv.next52.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph36.new ], [ %niter.next.3, %bb.b ]
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv51
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fadd float %.0, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv51
  store float %i.aa, ptr %i.ab, align 4
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next52
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = fadd float %.0, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52
  store float %i.af, ptr %i.ag, align 4
  %indvars.iv.next52.1 = or disjoint i64 %indvars.iv51, 2 ; 2 uses
  %i.ah = load ptr, ptr %i.v, align 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next52.1
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fadd float %.0, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52.1
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next52.2 = or disjoint i64 %indvars.iv51, 3 ; 2 uses
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.next52.2
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fadd float %.0, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next52.2
  store float %i.ap, ptr %i.aq, align 4
  %indvars.iv.next52.3 = add nuw nsw i64 %indvars.iv51, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge37.unr-lcssa, label %bb.b, !llvm.loop !586

._crit_edge37.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge37, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge37.unr-lcssa, %.lr.ph36
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next52.3, %._crit_edge37.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv51.epil = phi i64 [ %indvars.iv51.epil.init, %.epil.preheader ], [ %indvars.iv.next52.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ar = load ptr, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv51.epil
  %i.at = load float, ptr %i.as, align 4
  %i.au = fadd float %.0, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv51.epil
  store float %i.au, ptr %i.av, align 4
  %indvars.iv.next52.epil = add nuw nsw i64 %indvars.iv51.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge37, label %bb.c, !llvm.loop !587

._crit_edge37:                                    ; preds = %bb.c, %._crit_edge37.unr-lcssa
  %.pre = load ptr, ptr %i.g, align 8
  %.pre56 = load i32, ptr %0, align 8             ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = sext i32 %.pre56 to i64                 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 496
  %i.ba = load float, ptr %i.az, align 8
  %i.bb = fsub float %i.ba, %3
  %i.bc = icmp sgt i32 %.pre56, 0
  br i1 %i.bc, label %.lr.ph53.i, label %seed_loop.exit

.lr.ph53.i:                                       ; preds = %._crit_edge37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bd, align 8            ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %seed_curve.exit.i, %.lr.ph53.i
  %.03952.i = phi i64 [ 0, %.lr.ph53.i ], [ %.lcssa.i, %seed_curve.exit.i ] ; 4 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %1, i64 %.03952.i
  %i.bj = load float, ptr %i.bi, align 4          ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.03952.i
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = add nsw i64 %.03952.i, 1                ; 3 uses
  %i.bn = icmp slt i64 %i.bm, %i.ay
  br i1 %i.bn, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph39
  %i.bo = phi i64 [ %i.bv, %.lr.ph39 ], [ %i.bm, %bb.d ] ; 4 uses
  %.1.i92 = phi float [ %.1.i, %.lr.ph39 ], [ %i.bj, %bb.d ] ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp eq i64 %i.bq, %i.bl
  br i1 %i.br, label %.lr.ph39, label %..critedge.i.loopexit_crit_edge

.lr.ph39:                                         ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bo
  %i.bt = load float, ptr %i.bs, align 4          ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.1.i92
  %.1.i = select i1 %i.bu, float %i.bt, float %.1.i92 ; 2 uses
  %i.bv = add i64 %i.bo, 1                        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.ay
  br i1 %exitcond.not.i, label %..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !588

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph39, %.lr.ph.i
  %.1.i.lcssa = phi float [ %.1.i92, %.lr.ph.i ], [ %.1.i, %.lr.ph39 ]
  %.lcssa.ph.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.ay, %.lr.ph39 ] ; 2 uses
  %.140.lcssa.ph.i = add nsw i64 %.lcssa.ph.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge.i.loopexit_crit_edge, %bb.d
  %.140.lcssa.i = phi i64 [ %.03952.i, %bb.d ], [ %.140.lcssa.ph.i, %..critedge.i.loopexit_crit_edge ] ; 2 uses
  %.0.lcssa.i = phi float [ %i.bj, %bb.d ], [ %.1.i.lcssa, %..critedge.i.loopexit_crit_edge ] ; 3 uses
  %.lcssa.i = phi i64 [ %i.bm, %bb.d ], [ %.lcssa.ph.i, %..critedge.i.loopexit_crit_edge ] ; 2 uses
  %i.bw = fadd float %.0.lcssa.i, 6.000000e+00
  %i.bx = getelementptr inbounds [4 x i8], ptr %2, i64 %.140.lcssa.i
  %i.by = load float, ptr %i.bx, align 4
  %i.bz = fcmp ogt float %i.bw, %i.by
  br i1 %i.bz, label %bb.e, label %seed_curve.exit.i

bb.e:                                             ; preds = %.critedge.i
  %i.ca = load i64, ptr %i.be, align 8
  %i.cb = ashr i64 %i.bl, %i.ca
  %i.cc = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 0)
  %i.cd = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 16)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load i32, ptr %i.b, align 4
  %i.ch = load i32, ptr %i.bf, align 8            ; 3 uses
  %i.ci = fadd float %i.bb, %.0.lcssa.i
  %i.cj = fpext float %i.ci to double
  %i.ck = fadd double %i.cj, -3.000000e+01
  %i.cl = fmul double %i.ck, f0x3FB99999A0000000
  %i.cm = fptosi double %i.cl to i32
  %i.cn = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 7)
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load <2 x float>, ptr %i.cr, align 4    ; 2 uses
  %i.cu = fptosi <2 x float> %i.ct to <2 x i32>   ; 2 uses
  %i.cv = extractelement <2 x i32> %i.cu, i64 0   ; 2 uses
  %i.cw = extractelement <2 x i32> %i.cu, i64 1   ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph.preheader.i.i, label %seed_curve.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.140.lcssa.i
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = load i64, ptr %i.bg, align 8
  %i.db = sub nsw i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = extractelement <2 x float> %i.ct, i64 0
  %i.de = fadd float %i.dd, -1.600000e+01
  %i.df = sitofp i32 %i.ch to float
  %i.dg = fmul float %i.de, %i.df
  %i.dh = sitofp i32 %i.dc to float
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = ashr i32 %i.ch, 1
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = fsub float %i.di, %i.dk
  %i.dm = fptosi float %i.dl to i32
  %i.dn = sext i32 %i.cv to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.dn, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %.035.i.i = phi i32 [ %i.dm, %.lr.ph.preheader.i.i ], [ %i.dw, %bb.g ] ; 3 uses
  %i.do = icmp sgt i32 %.035.i.i, 0
  br i1 %i.do, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = fadd float %.0.lcssa.i, %i.dq           ; 2 uses
  %i.ds = zext nneg i32 %.035.i.i to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds ; 2 uses
  %i.du = load float, ptr %i.dt, align 4          ; 2 uses
  %i.dv = fcmp olt float %i.du, %i.dr
  %spec.store.select = select i1 %i.dv, float %i.dr, float %i.du
  store float %spec.store.select, ptr %i.dt, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.dw = add nsw i32 %.035.i.i, %i.ch            ; 2 uses
  %.not.i.i = icmp sge i32 %i.dw, %i.cg
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.cw, %lftr.wideiv.i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %seed_curve.exit.i, label %.lr.ph.i.i, !llvm.loop !589

seed_curve.exit.i:                                ; preds = %bb.g, %bb.e, %.critedge.i
  %i.dx = icmp slt i64 %.lcssa.i, %i.ay
  br i1 %i.dx, label %bb.d, label %seed_loop.exit, !llvm.loop !590

seed_loop.exit:                                   ; preds = %seed_curve.exit.i, %._crit_edge37.thread, %._crit_edge37
  %i.dy = phi i64 [ %i.u, %._crit_edge37.thread ], [ %i.ay, %._crit_edge37 ], [ %i.ay, %seed_curve.exit.i ]
  %i.dz = phi i32 [ %i.a, %._crit_edge37.thread ], [ %.pre56, %._crit_edge37 ], [ %.pre56, %seed_curve.exit.i ] ; 3 uses
  %i.ea = load i32, ptr %i.b, align 4
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ed = load i32, ptr %i.ec, align 8            ; 2 uses
  call fastcc void @seed_chase(ptr noundef nonnull %i.f, i32 noundef %i.ed, i64 noundef %i.eb)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eg = icmp sgt i32 %i.dz, 1
  br i1 %i.eg, label %.lr.ph81.i, label %._crit_edge82.i

.lr.ph81.i:                                       ; preds = %seed_loop.exit
  %i.eh = load ptr, ptr %i.ee, align 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = ashr i32 %i.ed, 1
  %narrow.i = sub nsw i32 0, %i.ej
  %.neg.i = sext i32 %narrow.i to i64
  %.neg68.i = add i64 %i.ei, %.neg.i
  %i.ek = load i64, ptr %i.ef, align 8
  %i.el = sub i64 %.neg68.i, %i.ek
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i31, %.lr.ph81.i
  %i.em = phi i32 [ %i.dz, %.lr.ph81.i ], [ %i.gr, %.critedge.i31 ] ; 4 uses
  %i.en = phi i64 [ 1, %.lr.ph81.i ], [ %i.gs, %.critedge.i31 ]
  %.05679.i = phi i64 [ %i.el, %.lr.ph81.i ], [ %.157.lcssa.i, %.critedge.i31 ] ; 7 uses
  %.05878.i = phi i64 [ 0, %.lr.ph81.i ], [ %.159.lcssa.i, %.critedge.i31 ] ; 4 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.05679.i
  %i.ep = load float, ptr %i.eo, align 4          ; 2 uses
  %i.eq = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %.05878.i
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.en
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add nsw i64 %i.eu, %i.es
  %i.ew = ashr i64 %i.ev, 1                       ; 3 uses
  %i.ex = load i64, ptr %i.ef, align 8            ; 4 uses
  %i.ey = sub nsw i64 %i.ew, %i.ex                ; 4 uses
  %i.ez = load ptr, ptr %i.g, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load float, ptr %i.fa, align 8          ; 2 uses
  %i.fc = fcmp ogt float %i.ep, %i.fb
  %.0.i = select i1 %i.fc, float %i.fb, float %i.ep ; 9 uses
  %.not.not69.i = icmp slt i64 %.05679.i, %i.ey
  br i1 %.not.not69.i, label %.lr.ph.i32.preheader, label %._crit_edge.i

.lr.ph.i32.preheader:                             ; preds = %bb.h
  %i.fd = add i64 %.05679.i, %i.ex
  %i.fe = sub i64 %i.ew, %i.fd
  %i.ff = xor i64 %.05679.i, -1
  %i.fg = add i64 %i.ew, %i.ff
  %xtraiter101 = and i64 %i.fe, 1
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i32.prol.loopexit, label %.lr.ph.i32.prol

.lr.ph.i32.prol:                                  ; preds = %.lr.ph.i32.preheader
  %i.fh = add nsw i64 %.05679.i, 1                ; 4 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4          ; 4 uses
  %i.fk = fcmp ogt float %i.fj, -9.999000e+03
  br i1 %i.fk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.prol
  %.old1.i.prol = fcmp oeq float %.0.i, -9.999000e+03
  br i1 %.old1.i.prol, label %bb.k, label %.lr.ph.i32.prol.loopexit

bb.j:                                             ; preds = %.lr.ph.i32.prol
  %i.fl = fcmp olt float %i.fj, %.0.i
  %i.fm = fcmp oeq float %.0.i, -9.999000e+03
  %or.cond.i.prol = or i1 %i.fm, %i.fl
  br i1 %or.cond.i.prol, label %bb.k, label %.lr.ph.i32.prol.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %.lr.ph.i32.prol.loopexit

.lr.ph.i32.prol.loopexit:                         ; preds = %bb.i, %bb.j, %bb.k, %.lr.ph.i32.preheader
  %.in.i.unr = phi i64 [ %.05679.i, %.lr.ph.i32.preheader ], [ %i.fh, %bb.k ], [ %i.fh, %bb.j ], [ %i.fh, %bb.i ]
  %.170.i.unr = phi float [ %.0.i, %.lr.ph.i32.preheader ], [ %i.fj, %bb.k ], [ %.0.i, %bb.j ], [ %.0.i, %bb.i ]
  %.2.i.lcssa.unr = phi float [ poison, %.lr.ph.i32.preheader ], [ %i.fj, %bb.k ], [ %.0.i, %bb.j ], [ %.0.i, %bb.i ]
  %i.fn = icmp eq i64 %i.fg, %i.ex
  br i1 %i.fn, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.prol.loopexit, %bb.r
  %.in.i = phi i64 [ %i.fu, %bb.r ], [ %.in.i.unr, %.lr.ph.i32.prol.loopexit ] ; 2 uses
  %.170.i = phi float [ %.2.i.1, %bb.r ], [ %.170.i.unr, %.lr.ph.i32.prol.loopexit ] ; 5 uses
  %i.fo = getelementptr [4 x i8], ptr %i.f, i64 %.in.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  %i.fq = load float, ptr %i.fp, align 4          ; 3 uses
  %i.fr = fcmp ogt float %i.fq, -9.999000e+03
  br i1 %i.fr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i32
  %i.fs = fcmp olt float %i.fq, %.170.i
  %i.ft = fcmp oeq float %.170.i, -9.999000e+03
  %or.cond.i = or i1 %i.ft, %i.fs
  br i1 %or.cond.i, label %bb.n, label %.lr.ph.i32.1

bb.m:                                             ; preds = %.lr.ph.i32
  %.old1.i = fcmp oeq float %.170.i, -9.999000e+03
  br i1 %.old1.i, label %bb.n, label %.lr.ph.i32.1

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %.lr.ph.i32.1

.lr.ph.i32.1:                                     ; preds = %bb.n, %bb.m, %bb.l
  %.2.i = phi float [ %i.fq, %bb.n ], [ %.170.i, %bb.l ], [ %.170.i, %bb.m ] ; 5 uses
  %i.fu = add nsw i64 %.in.i, 2                   ; 3 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4          ; 3 uses
  %i.fx = fcmp ogt float %i.fw, -9.999000e+03
  br i1 %i.fx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i32.1
  %.old1.i.1 = fcmp oeq float %.2.i, -9.999000e+03
  br i1 %.old1.i.1, label %bb.q, label %bb.r
end_hunk_0
