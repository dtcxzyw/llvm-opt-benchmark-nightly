Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@drft_init:bb.a
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 %.182.fr.i.i, ptr %i.x, align 4
  %.not89.us.i.i = icmp eq i32 %i.u, 1
  br i1 %.not89.us.i.i, label %.split99.us.i.i, label %.split.us.i.i

.split99.us.i.i:                                  ; preds = %bb.g
  %i.y = icmp eq i64 %indvars.iv.i.i, 0
  br label %.split99.i.i

.split.i.i:                                       ; preds = %bb.i, %.split.i.preheader.i
  %indvar.i = phi i64 [ 0, %.split.i.preheader.i ], [ %indvar.next.i, %bb.i ] ; 3 uses
  %indvars.iv138.i.i = phi i64 [ %i.o, %.split.i.preheader.i ], [ %indvars.iv.next139.i.i, %bb.i ] ; 6 uses
  %.170.i.i = phi i32 [ %.069.i.i, %.split.i.preheader.i ], [ %i.ag, %bb.i ] ; 4 uses
  %i.z = shl i64 %indvar.i, 2                     ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.s, i64 %i.z
  %i.aa = trunc i64 %indvar.i to i32
  %i.ab = add i32 %i.q, %i.aa
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i64 %i.ac, -4                   ; 2 uses
  %scevgep14.i = getelementptr i8, ptr %scevgep.i, i64 %i.ad
  %scevgep15.i = getelementptr i8, ptr %i.t, i64 %i.z
  %scevgep16.i = getelementptr i8, ptr %scevgep15.i, i64 %i.ad
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = add nsw i64 %i.ae, -4
  %indvars.iv.next139.i.i = add i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.ag = sdiv i32 %.170.i.i, 2                   ; 2 uses
  %i.ah = shl nsw i32 %i.ag, 1
  %.not.i.i = icmp eq i32 %.170.i.i, %i.ah
  br i1 %.not.i.i, label %bb.h, label %.loopexit91.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.ai = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv138.i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store i32 2, ptr %i.aj, align 4
  %i.ak = icmp eq i64 %indvars.iv138.i.i, 0       ; 2 uses
  br i1 %i.ak, label %bb.i, label %.preheader90.i.i

.preheader90.i.i:                                 ; preds = %bb.h
  %.not8895.i.i = icmp slt i64 %indvars.iv138.i.i, 1
  br i1 %.not8895.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader90.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %scevgep14.i, ptr align 4 %scevgep16.i, i64 %i.af, i1 false)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %.preheader90.i.i
  store i32 2, ptr %i.j, align 4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.h
  %i.al = and i32 %.170.i.i, -2
  %.not89.i.i = icmp eq i32 %i.al, 2
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %.not89.i.i, label %.split99.i.i, label %.split.i.i

.split99.i.i:                                     ; preds = %bb.i, %.split99.us.i.i
  %.us-phi100.in.i.i = phi i64 [ %indvars.iv.next.i.i, %.split99.us.i.i ], [ %indvars.iv.next139.i.i, %bb.i ]
  %.us-phi101.i.i = phi i1 [ %i.y, %.split99.us.i.i ], [ %i.ak, %bb.i ]
  %.us-phi102.in.i.i = phi i64 [ %indvars.iv.i.i, %.split99.us.i.i ], [ %indvars.iv138.i.i, %bb.i ] ; 2 uses
  %.us-phi102.i.i = trunc i64 %.us-phi102.in.i.i to i32
  %.us-phi100.i.i = trunc i64 %.us-phi100.in.i.i to i32
  store i32 %1, ptr %i.e, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.us-phi100.i.i, ptr %i.am, align 4
  %i.an = sitofp i32 %1 to float
  %i.ao = fdiv nnan float f0x40C90FDB, %i.an
  %i.ap = icmp slt i32 %.us-phi102.i.i, 1
  %or.cond.not.i.i = select i1 %.us-phi101.i.i, i1 true, i1 %i.ap
  br i1 %or.cond.not.i.i, label %fdrffti.exit, label %.lr.ph119.preheader.i.i

.lr.ph119.preheader.i.i:                          ; preds = %.split99.i.i
  %wide.trip.count154.i.i = and i64 %.us-phi102.in.i.i, 2147483647
  br label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %._crit_edge114.i.i, %.lr.ph119.preheader.i.i
  %indvars.iv151.i.i = phi i64 [ 0, %.lr.ph119.preheader.i.i ], [ %indvars.iv.next152.i.i, %._crit_edge114.i.i ] ; 2 uses
  %.071118.i.i = phi i32 [ 0, %.lr.ph119.preheader.i.i ], [ %.172.lcssa.i.i, %._crit_edge114.i.i ] ; 4 uses
  %.075117.i.i = phi i32 [ 1, %.lr.ph119.preheader.i.i ], [ %i.at, %._crit_edge114.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv151.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.at = mul nsw i32 %i.as, %.075117.i.i         ; 2 uses
  %i.au = sdiv i32 %1, %i.at                      ; 5 uses
  %i.av = add nsw i32 %i.as, -1                   ; 3 uses
  %i.aw = icmp sgt i32 %i.as, 1
  br i1 %i.aw, label %.lr.ph113.i.i, label %._crit_edge114.i.i

.lr.ph113.i.i:                                    ; preds = %.lr.ph119.i.i
  %i.ax = icmp sgt i32 %i.au, 2
  br i1 %i.ax, label %.lr.ph107.us.preheader.i.i, label %.lr.ph113.split.preheader.i.i

.lr.ph113.split.preheader.i.i:                    ; preds = %.lr.ph113.i.i
  %i.ay = mul i32 %i.au, %i.av
  %i.az = add i32 %i.ay, %.071118.i.i
  br label %._crit_edge114.i.i

.lr.ph107.us.preheader.i.i:                       ; preds = %.lr.ph113.i.i
  %i.ba = sext i32 %.071118.i.i to i64
  %i.bb = zext nneg i32 %i.au to i64
  %i.bc = add nsw i32 %i.au, -3                   ; 2 uses
  %i.bd = lshr i32 %i.bc, 1                       ; 2 uses
  %i.be = add nuw i32 %i.bd, 1                    ; 2 uses
  %i.bf = icmp eq i32 %i.bd, 0
  %unroll_iter = and i32 %i.be, -2
  %i.bg = and i32 %i.bc, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bg, 0
  %lcmp.mod41 = trunc i32 %i.be to i1
  br label %.lr.ph107.us.i.i

.lr.ph107.us.i.i:                                 ; preds = %._crit_edge108.us.i.i, %.lr.ph107.us.preheader.i.i
  %indvars.iv144.i.i = phi i64 [ %i.ba, %.lr.ph107.us.preheader.i.i ], [ %indvars.iv.next145.i.i, %._crit_edge108.us.i.i ] ; 3 uses
  %.074110.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.bh, %._crit_edge108.us.i.i ]
  %.178109.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.cm, %._crit_edge108.us.i.i ]
  %i.bh = add nsw i32 %.074110.us.i.i, %.075117.i.i ; 2 uses
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = fmul float %i.ao, %i.bi                 ; 3 uses
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph107.us.i.i.new

.lr.ph107.us.i.i.new:                             ; preds = %.lr.ph107.us.i.i, %.lr.ph107.us.i.i.new
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i.1, %.lr.ph107.us.i.i.new ], [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ] ; 3 uses
  %.083103.us.i.i = phi float [ %i.bt, %.lr.ph107.us.i.i.new ], [ 0.000000e+00, %.lr.ph107.us.i.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph107.us.i.i.new ], [ 0, %.lr.ph107.us.i.i ]
  %i.bk = fadd float %.083103.us.i.i, 1.000000e+00 ; 2 uses
  %i.bl = fmul float %i.bj, %i.bk
  %i.bm = fpext float %i.bl to double             ; 2 uses
  %i.bn = tail call double @cos(double noundef %i.bm) #62
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.bp = tail call double @sin(double noundef %i.bm) #62
  %i.bq = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bp, i64 1
  %i.bs = fptrunc <2 x double> %i.br to <2 x float>
  store <2 x float> %i.bs, ptr %i.bo, align 4
  %i.bt = fadd float %i.bk, 1.000000e+00          ; 3 uses
  %i.bu = fmul float %i.bj, %i.bt
  %i.bv = fpext float %i.bu to double             ; 2 uses
  %i.bw = tail call double @cos(double noundef %i.bv) #62
  %i.bx = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = tail call double @sin(double noundef %i.bv) #62
  %indvars.iv.next147.i.i.1 = add nsw i64 %indvars.iv146.i.i, 4 ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fptrunc <2 x double> %i.cb to <2 x float>
  store <2 x float> %i.cc, ptr %i.by, align 4
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge108.us.i.i.unr-lcssa, label %.lr.ph107.us.i.i.new, !llvm.loop !631

._crit_edge108.us.i.i.unr-lcssa:                  ; preds = %.lr.ph107.us.i.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge108.us.i.i

.epil.preheader:                                  ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.lr.ph107.us.i.i
  %indvars.iv146.i.i.epil.init = phi i64 [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ], [ %indvars.iv.next147.i.i.1, %._crit_edge108.us.i.i.unr-lcssa ]
  %.083103.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph107.us.i.i ], [ %i.bt, %._crit_edge108.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.cd = fadd float %.083103.us.i.i.epil.init, 1.000000e+00
  %i.ce = fmul float %i.bj, %i.cd
  %i.cf = fpext float %i.ce to double             ; 2 uses
  %i.cg = tail call double @cos(double noundef %i.cf) #62
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i.epil.init
  %i.ci = tail call double @sin(double noundef %i.cf) #62
  %i.cj = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fptrunc <2 x double> %i.ck to <2 x float>
  store <2 x float> %i.cl, ptr %i.ch, align 4
  br label %._crit_edge108.us.i.i

._crit_edge108.us.i.i:                            ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next145.i.i = add i64 %indvars.iv144.i.i, %i.bb
  %i.cm = add nuw nsw i32 %.178109.us.i.i, 1      ; 2 uses
  %exitcond150.not.i.i = icmp eq i32 %i.cm, %i.av
  br i1 %exitcond150.not.i.i, label %._crit_edge114.loopexit.i.i, label %.lr.ph107.us.i.i, !llvm.loop !632

._crit_edge114.loopexit.i.i:                      ; preds = %._crit_edge108.us.i.i
  %i.cn = mul i32 %i.au, %i.av
  %i.co = add i32 %i.cn, %.071118.i.i
  br label %._crit_edge114.i.i

._crit_edge114.i.i:                               ; preds = %._crit_edge114.loopexit.i.i, %.lr.ph113.split.preheader.i.i, %.lr.ph119.i.i
  %.172.lcssa.i.i = phi i32 [ %.071118.i.i, %.lr.ph119.i.i ], [ %i.co, %._crit_edge114.loopexit.i.i ], [ %i.az, %.lr.ph113.split.preheader.i.i ]
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %fdrffti.exit, label %.lr.ph119.i.i, !llvm.loop !633

fdrffti.exit:                                     ; preds = %._crit_edge114.i.i, %bb.a, %.split99.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @_ve_amp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = shl nsw i64 %i.c, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %5 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 5)
  %narrow = lshr i32 %5, 1
  %i.j = zext nneg i32 %narrow to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load float, ptr %i.k, align 4            ; 3 uses
  %6 = sdiv i32 %i.i, 2
  %i.m = add nsw i32 %6, -2
  %i.n = sitofp i32 %i.m to float
  %i.o = fsub float %i.l, %i.n                    ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %spec.store.select = select i1 %i.p, float 0.000000e+00, float %i.o ; 2 uses
  %i.q = fcmp ogt float %spec.store.select, %i.l
  %.0153 = select i1 %i.q, float %i.l, float %spec.store.select ; 2 uses
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x float>, ptr %i.u, align 4
  %wide.load3 = load <4 x float>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load4 = load <4 x float>, ptr %i.w, align 4
  %wide.load5 = load <4 x float>, ptr %i.x, align 4
  %i.y = fmul <4 x float> %wide.load, %wide.load4
  %i.z = fmul <4 x float> %wide.load3, %wide.load5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x float> %i.y, ptr %i.aa, align 16
  store <4 x float> %i.z, ptr %i.ab, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0155191.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0155191 = phi i64 [ %i.aj, %scalar.ph ], [ %.0155191.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0155191
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0155191
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0155191
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.0155191, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !635

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @mdct_forward(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g)
  %i.al = load float, ptr %i.g, align 16          ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fpext float %i.am to double
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fpext float %i.ap to double             ; 2 uses
  %i.ar = fmul double %i.aq, f0x3FE6666666666666
  %i.as = fmul double %i.ar, %i.aq
  %i.at = fadd double %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.av = load float, ptr %i.au, align 8
  %i.aw = fpext float %i.av to double             ; 2 uses
  %i.ax = fmul double %i.aw, 2.000000e-01
  %i.ay = fmul double %i.ax, %i.aw
  %i.az = fadd double %i.at, %i.ay
  %i.ba = fptrunc double %i.az to float           ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 140 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fadd float %i.bf, %i.ba                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 132
  store float %i.bg, ptr %i.bh, align 4
  store float %i.ba, ptr %i.be, align 4
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bi, align 4
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fadd <2 x float> %i.bj, %i.bl           ; 2 uses
  store <2 x float> %i.bm, ptr %i.bi, align 4
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bo = phi float [ %i.bg, %bb.b ], [ %i.bn, %bb.c ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bq = sext i32 %i.bc to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.bu = fsub float %i.bo, %i.bs
  store float %i.bu, ptr %i.bt, align 4
  store float %i.ba, ptr %i.br, align 4
  %i.bv = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  %i.bx = icmp sgt i32 %i.bv, 13
  %spec.select = select i1 %i.bx, i32 0, i32 %i.bw
  store i32 %spec.select, ptr %i.bb, align 4
  %i.by = lshr i32 %i.b, 1
  %.zext = zext nneg i32 %i.by to i64
  %i.bz = icmp sgt i32 %i.b, 1
  br i1 %i.bz, label %.lr.ph195.preheader, label %.preheader190

.lr.ph195.preheader:                              ; preds = %bb.d
  %i.ca = fmul float %i.bo, 6.250000e-02
  %i.cb = tail call float @llvm.fabs.f32(float %i.ca)
  %i.cc = bitcast float %i.cb to i32
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fmul nnan float %i.cd, f0x3540A8C1
  %i.cf = fadd nnan float %i.ce, f0xC43F115B
  %i.cg = fpext nnan float %i.cf to double
  %i.ch = fmul nnan double %i.cg, 5.000000e-01
  %i.ci = fadd double %i.ch, -1.500000e+01
  %i.cj = fptrunc double %i.ci to float
  br label %.lr.ph195

.preheader190:                                    ; preds = %.lr.ph195, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.lr.ph195
  %.1156193 = phi i64 [ %i.db, %.lr.ph195 ], [ 0, %.lr.ph195.preheader ] ; 3 uses
  %.1189192 = phi float [ %i.da, %.lr.ph195 ], [ %i.cj, %.lr.ph195.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.1156193
  %i.cn = load <2 x float>, ptr %i.cm, align 8    ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.cn
  %i.cp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.co)
  %i.cq = tail call float @llvm.fabs.f32(float %i.cp)
  %i.cr = bitcast float %i.cq to i32
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = fmul nnan float %i.cs, f0x3540A8C1
  %i.cu = fadd nnan float %i.ct, f0xC43F115B
  %i.cv = fmul nnan float %i.cu, 5.000000e-01     ; 2 uses
  %i.cw = fcmp olt float %i.cv, %.1189192
  %spec.store.select177 = select i1 %i.cw, float %.1189192, float %i.cv ; 2 uses
  %i.cx = fcmp olt float %spec.store.select177, %i.e
  %spec.store.select181 = select i1 %i.cx, float %i.e, float %spec.store.select177
  %i.cy = lshr exact i64 %.1156193, 1
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cy
  store float %spec.store.select181, ptr %i.cz, align 4
  %i.da = fadd float %.1189192, -8.000000e+00
  %i.db = add nuw nsw i64 %.1156193, 2            ; 2 uses
  %i.dc = icmp samesign ult i64 %i.db, %.zext
  br i1 %i.dc, label %.lr.ph195, label %.preheader190, !llvm.loop !636

.preheader:                                       ; preds = %.preheader190, %._crit_edge207
  %.0154211 = phi i64 [ 0, %.preheader190 ], [ %i.gf, %._crit_edge207 ] ; 5 uses
  %.0158210 = phi i32 [ 0, %.preheader190 ], [ %.2160, %._crit_edge207 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.0154211 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = icmp sgt i32 %i.df, 0
  br i1 %i.dh, label %.lr.ph198, label %.lr.ph206.preheader

.lr.ph198:                                        ; preds = %.preheader
  %i.di = load i32, ptr %i.dd, align 8
  %i.dj = sext i32 %i.di to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.g, i64 %i.dj ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8            ; 5 uses
  %xtraiter = and i64 %i.dg, 3                    ; 3 uses
  %i.dm = icmp ult i32 %i.df, 4
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph198.new

.lr.ph198.new:                                    ; preds = %.lr.ph198
  %unroll_iter = and i64 %i.dg, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph198.new
  %.0152197 = phi float [ 0.000000e+00, %.lr.ph198.new ], [ %i.ej, %bb.e ]
  %.2157196 = phi i64 [ 0, %.lr.ph198.new ], [ %i.ek, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph198.new ], [ %niter.next.3, %bb.e ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2157196
  %i.dn = load float, ptr %gep, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.2157196
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fmul float %i.dn, %i.dp
  %i.dr = fadd float %.0152197, %i.dq
  %i.ds = or disjoint i64 %.2157196, 1            ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ds
  %i.dt = load float, ptr %gep.1, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ds
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = fmul float %i.dt, %i.dv
  %i.dx = fadd float %i.dr, %i.dw
  %i.dy = or disjoint i64 %.2157196, 2            ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dy
  %i.dz = load float, ptr %gep.2, align 4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dy
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = fmul float %i.dz, %i.eb
  %i.ed = fadd float %i.dx, %i.ec
  %i.ee = or disjoint i64 %.2157196, 3            ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ee
  %i.ef = load float, ptr %gep.3, align 4
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.ee
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = fmul float %i.ef, %i.eh
  %i.ej = fadd float %i.ed, %i.ei                 ; 3 uses
  %i.ek = add nuw nsw i64 %.2157196, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph206.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !637

.lr.ph206.preheader.loopexit.unr-lcssa:           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph206.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph206.preheader.loopexit.unr-lcssa, %.lr.ph198
  %.0152197.epil.init = phi float [ 0.000000e+00, %.lr.ph198 ], [ %i.ej, %.lr.ph206.preheader.loopexit.unr-lcssa ]
  %.2157196.epil.init = phi i64 [ 0, %.lr.ph198 ], [ %i.ek, %.lr.ph206.preheader.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.0152197.epil = phi float [ %.0152197.epil.init, %.epil.preheader ], [ %i.ep, %bb.f ]
  %.2157196.epil = phi i64 [ %.2157196.epil.init, %.epil.preheader ], [ %i.eq, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.2157196.epil
  %i.el = load float, ptr %gep.epil, align 4
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.2157196.epil
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fmul float %i.el, %i.en
  %i.ep = fadd float %.0152197.epil, %i.eo        ; 2 uses
  %i.eq = add nuw nsw i64 %.2157196.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph206.preheader, label %bb.f, !llvm.loop !638

.lr.ph206.preheader:                              ; preds = %.lr.ph206.preheader.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0152.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ej, %.lr.ph206.preheader.loopexit.unr-lcssa ], [ %i.ep, %bb.f ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.es = load float, ptr %i.er, align 8
  %i.et = fmul float %.0152.lcssa, %i.es          ; 5 uses
  %i.eu = getelementptr inbounds nuw [144 x i8], ptr %4, i64 %.0154211 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 68 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4            ; 3 uses
  %i.ex = icmp slt i32 %i.ew, 1
  %spec.select178.v = select i1 %i.ex, i32 16, i32 -1
  %spec.select178 = add nsw i32 %spec.select178.v, %i.ew ; 2 uses
  %i.ey = sext i32 %spec.select178 to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4          ; 4 uses
  %i.fb = fcmp olt float %i.et, %i.fa
  %i.fc = select i1 %i.fb, float %i.fa, float %i.et
  %i.fd = fcmp ogt float %i.et, %i.fa
  %i.fe = select i1 %i.fd, float %i.fa, float %i.et
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %.0204 = phi float [ %i.fm, %.lr.ph206 ], [ 9.999900e+04, %.lr.ph206.preheader ] ; 2 uses
  %.0150203 = phi float [ %i.fk, %.lr.ph206 ], [ -9.999900e+04, %.lr.ph206.preheader ] ; 2 uses
  %.1202 = phi i32 [ %spec.select179, %.lr.ph206 ], [ %spec.select178, %.lr.ph206.preheader ] ; 2 uses
  %.3201 = phi i64 [ %i.fn, %.lr.ph206 ], [ 0, %.lr.ph206.preheader ]
  %i.ff = icmp slt i32 %.1202, 1
  %spec.select179.v = select i1 %i.ff, i32 16, i32 -1
  %spec.select179 = add nsw i32 %spec.select179.v, %.1202 ; 2 uses
  %i.fg = sext i32 %spec.select179 to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4          ; 4 uses
  %i.fj = fcmp olt float %.0150203, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %.0150203 ; 2 uses
  %i.fl = fcmp ogt float %.0204, %i.fi
  %i.fm = select i1 %i.fl, float %i.fi, float %.0204 ; 2 uses
  %i.fn = add nuw nsw i64 %.3201, 1               ; 2 uses
  %exitcond215.not = icmp eq i64 %i.fn, %i.j
  br i1 %exitcond215.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !639

._crit_edge207:                                   ; preds = %.lr.ph206
  %i.fo = fsub float %i.fe, %i.fm
  %i.fp = fsub float %i.fc, %i.fk
  %i.fq = sext i32 %i.ew to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fq
  store float %i.et, ptr %i.fr, align 4
  %i.fs = load i32, ptr %i.ev, align 4            ; 2 uses
  %i.ft = add nsw i32 %i.fs, 1
  %i.fu = icmp sgt i32 %i.fs, 15
  %spec.select180 = select i1 %i.fu, i32 0, i32 %i.ft
  store i32 %spec.select180, ptr %i.ev, align 4
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0154211
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = fadd float %.0153, %i.fw
  %i.fy = fcmp ogt float %i.fp, %i.fx
  %i.fz = or i32 %.0158210, 5
  %.1159 = select i1 %i.fy, i32 %i.fz, i32 %.0158210 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0154211
  %i.gb = load float, ptr %i.ga, align 4
  %i.gc = fsub float %i.gb, %.0153
  %i.gd = fcmp olt float %i.fo, %i.gc
  %i.ge = or i32 %.1159, 2
  %.2160 = select i1 %i.gd, i32 %i.ge, i32 %.1159 ; 2 uses
  %i.gf = add nuw nsw i64 %.0154211, 1            ; 2 uses
  %exitcond216.not = icmp eq i64 %i.gf, 7
  br i1 %exitcond216.not, label %bb.g, label %.preheader, !llvm.loop !640

bb.g:                                             ; preds = %._crit_edge207
  ret i32 %.2160
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vorbis_apply_window(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #32 {
bb.a:
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.a = select i1 %.not, i32 0, i32 %3
  %i.b = select i1 %.not, i32 0, i32 %5
  %i.c = sext i32 %i.a to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = sext i32 %4 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sdiv i64 %i.q, 4                         ; 5 uses
  %.neg = sdiv i64 %i.s, -4                       ; 2 uses
  %i.w = add nsw i64 %.neg, %i.v                  ; 4 uses
  %i.x = sdiv i64 %i.s, 2                         ; 2 uses
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %i.z = sdiv i64 %i.q, 2                         ; 3 uses
  %i.aa = add nsw i64 %i.z, %i.v
  %.neg56 = sdiv i64 %i.u, -4                     ; 3 uses
  %i.ab = add i64 %i.aa, %.neg56                  ; 3 uses
  %i.ac = sdiv i64 %i.u, 2                        ; 6 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.w, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader57

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.af = shl nuw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.af, i1 false)
  br label %.preheader57

.preheader57:                                     ; preds = %.lr.ph.preheader, %bb.a
  %.050.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph.preheader ] ; 7 uses
  %i.ag = icmp sgt i64 %i.y, %.050.lcssa
  br i1 %i.ag, label %.lr.ph61.preheader, label %._crit_edge

.lr.ph61.preheader:                               ; preds = %.preheader57
  %i.ah = add nsw i64 %i.v, %.neg
  %i.ai = add i64 %i.ah, %i.x
  %i.aj = sub i64 %i.ai, %.050.lcssa              ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader134, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph61.preheader
  %i.ak = shl i64 %.050.lcssa, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ak
  %i.al = shl i64 %i.y, 2                         ; 2 uses
  %scevgep90 = getelementptr i8, ptr %0, i64 %i.al
  %i.am = sub i64 %i.al, %i.ak
  %scevgep91 = getelementptr i8, ptr %i.h, i64 %i.am
  %bound0 = icmp ult ptr %scevgep, %scevgep91
  %bound1 = icmp ult ptr %i.h, %scevgep90
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph61.preheader134, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -8                      ; 4 uses
  %i.an = add i64 %.050.lcssa, %n.vec
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x float>, ptr %i.ap, align 4, !alias.scope !653
  %wide.load92 = load <4 x float>, ptr %i.aq, align 4, !alias.scope !653
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load93 = load <4 x float>, ptr %i.ar, align 4, !alias.scope !654, !noalias !653
  %wide.load94 = load <4 x float>, ptr %i.as, align 4, !alias.scope !654, !noalias !653
  %i.at = fmul <4 x float> %wide.load, %wide.load93
  %i.au = fmul <4 x float> %wide.load92, %wide.load94
  store <4 x float> %i.at, ptr %i.ar, align 4, !alias.scope !654, !noalias !653
  store <4 x float> %i.au, ptr %i.as, align 4, !alias.scope !654, !noalias !653
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph61.preheader134

.lr.ph61.preheader134:                            ; preds = %vector.memcheck, %.lr.ph61.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %.050.lcssa, %vector.memcheck ], [ %.050.lcssa, %.lr.ph61.preheader ], [ %i.an, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph61.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader134, %.lr.ph61
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph61 ], [ %indvars.iv72.ph, %.lr.ph61.preheader134 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph61 ], [ %indvars.iv.ph, %.lr.ph61.preheader134 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fmul float %i.ax, %i.az
  store float %i.ba, ptr %i.ay, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bb = icmp sgt i64 %i.y, %indvars.iv.next73
  br i1 %i.bb, label %.lr.ph61, label %._crit_edge, !llvm.loop !645

._crit_edge:                                      ; preds = %.lr.ph61, %middle.block, %.preheader57
  %sext = shl i64 %i.ab, 32                       ; 2 uses
  %i.bc = ashr exact i64 %sext, 32                ; 9 uses
  %i.bd = icmp sgt i64 %i.ad, %i.bc
  br i1 %i.bd, label %.lr.ph65.preheader, label %.preheader

.lr.ph65.preheader:                               ; preds = %._crit_edge
  %i.be = trunc i64 %i.ac to i32                  ; 5 uses
  %i.bf = add nsw i64 %i.z, %i.v
  %i.bg = add i64 %i.bf, %.neg56
  %i.bh = add i64 %i.bg, %i.ac
  %i.bi = sub i64 %i.bh, %i.bc                    ; 3 uses
  %min.iters.check105 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check105, label %.lr.ph65.preheader133, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader
  %i.bj = add nsw i64 %i.z, %i.v
  %i.bk = add i64 %i.bj, %.neg56
  %i.bl = add i64 %i.bk, %i.ac
  %i.bm = xor i64 %i.bc, -1
  %i.bn = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = add i32 %i.be, -1                       ; 2 uses
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = sub i32 %i.bo, %i.bp
  %i.br = icmp sgt i32 %i.bq, %i.bo
  %i.bs = icmp ugt i64 %i.bn, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph65.preheader133, label %vector.memcheck96

vector.memcheck96:                                ; preds = %vector.scevcheck
  %i.bu = ashr exact i64 %sext, 30
  %scevgep97 = getelementptr i8, ptr %0, i64 %i.bu
  %i.bv = shl i64 %i.ad, 2                        ; 2 uses
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.bv
  %i.bw = shl i64 %i.ac, 32
  %sext130 = add i64 %i.bw, -4294967296           ; 2 uses
  %i.bx = ashr exact i64 %sext130, 32
  %i.by = add nsw i64 %i.bx, %i.bc
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, 4
  %i.cb = sub i64 %i.ca, %i.bv
  %scevgep99 = getelementptr i8, ptr %i.n, i64 %i.cb
  %i.cc = ashr exact i64 %sext130, 30
  %i.cd = getelementptr i8, ptr %i.n, i64 %i.cc
  %scevgep100 = getelementptr i8, ptr %i.cd, i64 4
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph65.preheader133, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck96
  %n.vec107 = and i64 %i.bi, -8                   ; 4 uses
  %i.ce = add i64 %i.bc, %n.vec107                ; 2 uses
  %i.cf = trunc i64 %n.vec107 to i32
  %i.cg = sub i32 %i.be, %i.cf
  %i.ch = getelementptr [4 x i8], ptr %0, i64 %i.bc
  br label %vector.body108
end_hunk_0
