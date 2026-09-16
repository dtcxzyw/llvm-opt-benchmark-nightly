Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/quant_levels_utils?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@QuantizeLevels:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  %i.g = mul i32 %2, %1                           ; 7 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = uitofp i64 %i.h to double
  %i.j = fmul nnan double %i.i, 1.000000e-04
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %1, 1
  %i.m = icmp slt i32 %2, 1
  %or.cond = or i1 %i.l, %i.m
  %i.n = add i32 %3, -257
  %or.cond3 = icmp ult i32 %i.n, -255
  %or.cond135 = or i1 %or.cond, %or.cond3
  br i1 %or.cond135, label %bb.m, label %.preheader139

.preheader139:                                    ; preds = %bb.b
  switch i32 %i.g, label %.lr.ph.preheader.new [
    i32 0, label %._crit_edge.thread
    i32 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %.preheader139
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0106143 = phi i32 [ 255, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.0111142 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 3 uses
  %.0119141 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %.0121140 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1122.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.0119141, %i.u
  %i.w = zext i8 %i.p to i32                      ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.0106143, i32 %i.w)
  %.1122 = tail call i32 @llvm.umax.i32(i32 %.0121140, i32 %i.w)
  %i.x = add nsw i32 %i.s, 1
  store i32 %i.x, ptr %i.r, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.v, %i.af             ; 3 uses
  %i.ah = zext i8 %i.aa to i32                    ; 2 uses
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ah) ; 3 uses
  %.1122.1 = tail call i32 @llvm.umax.i32(i32 %.1122, i32 %i.ah) ; 3 uses
  %i.ai = add nsw i32 %i.ad, 1
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !20
  %i.aj = add nuw i64 %.0111142, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.ak = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.ak, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader139, %._crit_edge.unr-lcssa
  %.0106143.epil.init = phi i32 [ 255, %.preheader139 ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %.0111142.epil.init = phi i64 [ 0, %.preheader139 ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.0119141.epil.init = phi i32 [ 0, %.preheader139 ], [ %i.ag, %._crit_edge.unr-lcssa ]
  %.0121140.epil.init = phi i32 [ 0, %.preheader139 ], [ %.1122.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod233 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142.epil.init
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = add nuw nsw i32 %.0119141.epil.init, %i.ar
  %i.at = zext i8 %i.am to i32                    ; 2 uses
  %spec.select.epil = tail call i32 @llvm.umin.i32(i32 %.0106143.epil.init, i32 %i.at)
  %.1122.epil = tail call i32 @llvm.umax.i32(i32 %.0121140.epil.init, i32 %i.at)
  %i.au = add nsw i32 %i.ap, 1
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa229 = phi i32 [ %i.ag, %._crit_edge.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ]
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %.1122.lcssa = phi i32 [ %.1122.1, %._crit_edge.unr-lcssa ], [ %.1122.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.av = icmp sgt i32 %.lcssa229, %3
  br i1 %i.av, label %.lr.ph147, label %._crit_edge.thread

.lr.ph147:                                        ; preds = %._crit_edge
  %i.aw = uitofp nneg i32 %spec.select.lcssa to double ; 2 uses
  %i.ax = sub nsw i32 %.1122.lcssa, %spec.select.lcssa
  %i.ay = sitofp i32 %i.ax to double              ; 2 uses
  %i.az = add nsw i32 %3, -1                      ; 7 uses
  %i.ba = uitofp nneg i32 %i.az to double         ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147
  %n.vec = and i64 %wide.trip.count, 510          ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <2 x double> poison, double %i.ba, i64 0
  %broadcast.splat227 = shufflevector <2 x double> %broadcast.splatinsert226, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bb = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.bc = fmul nnan <2 x double> %broadcast.splat225, %i.bb
  %i.bd = fdiv <2 x double> %i.bc, %broadcast.splat227
  %i.be = fadd <2 x double> %i.bd, %broadcast.splat
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge148, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph147, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph147 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul nnan double %i.ay, %i.bi
  %i.bk = fdiv double %i.bj, %i.ba
  %i.bl = fadd double %i.bk, %i.aw
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.bl, ptr %i.bm, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond177.not, label %._crit_edge148, label %scalar.ph, !llvm.loop !10

._crit_edge148:                                   ; preds = %scalar.ph, %middle.block
  %i.bn = zext nneg i32 %spec.select.lcssa to i64 ; 12 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  store i32 0, ptr %i.bo, align 4, !tbaa !20
  %i.bp = zext nneg i32 %.1122.lcssa to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !20
  %i.br = icmp samesign ult i32 %3, 3
  %i.bs = add i32 %.1122.lcssa, 1                 ; 3 uses
  %wide.trip.count186 = zext i32 %i.bs to i64     ; 3 uses
  %wide.trip.count191 = zext i32 %i.az to i64
  %wide.trip.count196 = zext nneg i32 %i.bs to i64
  %i.bt = add nsw i64 %wide.trip.count191, -1     ; 3 uses
  %i.bu = sub nsw i64 %wide.trip.count186, %i.bn  ; 2 uses
  %i.bv = xor i64 %i.bn, -1
  %i.bw = add nsw i64 %i.bv, %wide.trip.count186  ; 2 uses
  %xtraiter234 = and i64 %i.bt, 1
  %i.bx = icmp eq i32 %i.az, 2
  %unroll_iter237 = and i64 %i.bt, -2
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  %lcmp.mod236 = trunc i64 %i.bt to i1
  %xtraiter239 = and i64 %i.bu, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %i.by = uitofp nneg i32 %spec.select.lcssa to double
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bn
  %indvars.iv.next194.prol = add nuw nsw i64 %i.bn, 1
  %i.cb = icmp eq i64 %i.bw, 0
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge160, %._crit_edge148
  %.0116163 = phi double [ f0x47D2CED32A16A1B1, %._crit_edge148 ], [ %.lcssa, %._crit_edge160 ]
  %.0118162 = phi i32 [ 0, %._crit_edge148 ], [ %i.fg, %._crit_edge160 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.d, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br label %.preheader136

.preheader136:                                    ; preds = %bb.c, %bb.g
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %bb.g ], [ %i.bn, %bb.c ] ; 5 uses
  %.0107151 = phi i32 [ %.1108.lcssa, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %indvars.iv183.tr = trunc nuw nsw i64 %indvars.iv183 to i32
  %i.cc = shl nuw nsw i32 %indvars.iv183.tr, 1
  %i.cd = uitofp nneg i32 %i.cc to double
  %smax = tail call i32 @llvm.smax.i32(i32 %.0107151, i32 %i.az) ; 2 uses
  %i.ce = tail call i32 @llvm.smax.i32(i32 %.0107151, i32 %i.az)
  %smax181 = sext i32 %i.ce to i64
  %exitcond182.not221.not = icmp slt i32 %.0107151, %i.az
  br i1 %exitcond182.not221.not, label %.lr.ph223, label %.critedge

.lr.ph223:                                        ; preds = %.preheader136
  %i.cf = sext i32 %.0107151 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next179 = add nsw i64 %indvars.iv178222, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %smax181
  br i1 %exitcond182.not, label %.critedge, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph223, %bb.d
  %indvars.iv178222 = phi i64 [ %i.cf, %.lr.ph223 ], [ %indvars.iv.next179, %bb.d ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv178222
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !23
  %i.ci = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ch)
  %i.cj = fcmp olt double %i.ci, %i.cd
  br i1 %i.cj, label %bb.d, label %.critedge.split.loop.exit216, !llvm.loop !11

.critedge.split.loop.exit216:                     ; preds = %bb.e
  %i.ck = trunc nsw i64 %indvars.iv178222 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader136, %.critedge.split.loop.exit216
  %.1108.lcssa = phi i32 [ %i.ck, %.critedge.split.loop.exit216 ], [ %smax, %.preheader136 ], [ %smax, %bb.d ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv183
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.co = trunc nuw nsw i64 %indvars.iv183 to i32
  %i.cp = mul nuw nsw i32 %i.cm, %i.co
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = sext i32 %.1108.lcssa to i64            ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cr ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !23
  %i.cu = fadd double %i.ct, %i.cq
  store double %i.cu, ptr %i.cs, align 8, !tbaa !23
  %i.cv = uitofp nneg i32 %i.cm to double
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cr ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !23
  %i.cy = fadd double %i.cx, %i.cv
  store double %i.cy, ptr %i.cw, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv183
  store i32 %.1108.lcssa, ptr %i.cz, align 4, !tbaa !20
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge152, label %.preheader136, !llvm.loop !12

._crit_edge152:                                   ; preds = %bb.g
  br i1 %i.br, label %.lr.ph159.preheader, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %._crit_edge152
  br i1 %i.bx, label %.lr.ph154.epil.preheader, label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.j
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.1, %bb.j ], [ 1, %.lr.ph154.preheader ] ; 5 uses
  %niter238 = phi i64 [ %niter238.next.1, %bb.j ], [ 0, %.lr.ph154.preheader ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv188
  %i.db = load double, ptr %i.da, align 8, !tbaa !23 ; 2 uses
  %i.dc = fcmp ogt double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %.lr.ph154.1

bb.h:                                             ; preds = %.lr.ph154
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv188
  %i.de = load double, ptr %i.dd, align 8, !tbaa !23
  %i.df = fdiv double %i.de, %i.db
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188
  store double %i.df, ptr %i.dg, align 8, !tbaa !23
  br label %.lr.ph154.1

.lr.ph154.1:                                      ; preds = %bb.h, %.lr.ph154
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next189
  %i.di = load double, ptr %i.dh, align 8, !tbaa !23 ; 2 uses
  %i.dj = fcmp ogt double %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph154.1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next189
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !23
  %i.dm = fdiv double %i.dl, %i.di
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next189
  store double %i.dm, ptr %i.dn, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph154.1
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter238.next.1 = add i64 %niter238, 2         ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %.lr.ph159.preheader.loopexit.unr-lcssa, label %.lr.ph154, !llvm.loop !13

.lr.ph159.preheader.loopexit.unr-lcssa:           ; preds = %bb.j
  br i1 %lcmp.mod235.not, label %.lr.ph159.preheader, label %.lr.ph154.epil.preheader

.lr.ph154.epil.preheader:                         ; preds = %.lr.ph159.preheader.loopexit.unr-lcssa, %.lr.ph154.preheader
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph154.preheader ], [ %indvars.iv.next189.1, %.lr.ph159.preheader.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv188.epil.init
  %i.dp = load double, ptr %i.do, align 8, !tbaa !23 ; 2 uses
  %i.dq = fcmp ogt double %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.k, label %.lr.ph159.preheader

bb.k:                                             ; preds = %.lr.ph154.epil.preheader
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv188.epil.init
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !23
  %i.dt = fdiv double %i.ds, %i.dp
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188.epil.init
  store double %i.dt, ptr %i.du, align 8, !tbaa !23
  br label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %.lr.ph159.preheader.loopexit.unr-lcssa, %bb.k, %.lr.ph154.epil.preheader, %._crit_edge152
  br i1 %lcmp.mod240.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader
  %i.dv = load i32, ptr %i.bz, align 4, !tbaa !20
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !23
  %i.dz = fsub double %i.by, %i.dy                ; 2 uses
  %i.ea = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fmul double %i.dz, %i.eb
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.dz, double 0.000000e+00) ; 2 uses
  br label %.lr.ph159.prol.loopexit

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph159.preheader ], [ %i.ed, %.lr.ph159.prol ]
  %indvars.iv193.unr = phi i64 [ %i.bn, %.lr.ph159.preheader ], [ %indvars.iv.next194.prol, %.lr.ph159.prol ]
  %.1114156.unr = phi double [ 0.000000e+00, %.lr.ph159.preheader ], [ %i.ed, %.lr.ph159.prol ]
  br i1 %i.cb, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %indvars.iv193 = phi i64 [ %indvars.iv.next194.1, %.lr.ph159 ], [ %indvars.iv193.unr, %.lr.ph159.prol.loopexit ] ; 5 uses
  %.1114156 = phi double [ %i.fd, %.lr.ph159 ], [ %.1114156.unr, %.lr.ph159.prol.loopexit ]
  %i.ee = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.ef = uitofp nneg i32 %i.ee to double
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv193
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !20
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !23
  %i.el = fsub double %i.ef, %i.ek                ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv193
  %i.en = load i32, ptr %i.em, align 4, !tbaa !20
  %i.eo = sitofp i32 %i.en to double
  %i.ep = fmul double %i.el, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.el, double %.1114156)
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.er = trunc nuw nsw i64 %indvars.iv.next194 to i32
  %i.es = uitofp nneg i32 %i.er to double
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next194
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !20
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !23
  %i.ey = fsub double %i.es, %i.ex                ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next194
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = fmul double %i.ey, %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ey, double %i.eq) ; 2 uses
  %indvars.iv.next194.1 = add nuw nsw i64 %indvars.iv193, 2 ; 2 uses
  %exitcond197.not.1 = icmp eq i64 %indvars.iv.next194.1, %wide.trip.count196
  br i1 %exitcond197.not.1, label %._crit_edge160, label %.lr.ph159, !llvm.loop !14

._crit_edge160:                                   ; preds = %.lr.ph159, %.lr.ph159.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph159.prol.loopexit ], [ %i.fd, %.lr.ph159 ] ; 3 uses
  %i.fe = fsub double %.0116163, %.lcssa
  %i.ff = fcmp olt double %i.fe, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fg = add nuw nsw i32 %.0118162, 1            ; 2 uses
  %exitcond198.not = icmp eq i32 %i.fg, 6
  %or.cond218 = select i1 %i.ff, i1 true, i1 %exitcond198.not
  br i1 %or.cond218, label %.lr.ph167.preheader, label %bb.c, !llvm.loop !15

.lr.ph167.preheader:                              ; preds = %._crit_edge160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %wide.trip.count202 = zext nneg i32 %i.bs to i64
  %xtraiter241 = and i64 %i.bu, 1
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

.lr.ph167.prol:                                   ; preds = %.lr.ph167.preheader
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !20
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !23
  %i.fm = fadd double %i.fl, 5.000000e-01
end_hunk_0
