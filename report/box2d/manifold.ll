Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/manifold?download=true
inline.NumInlined: 279
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b2CollideCapsuleAndCircle:bb.a
  %i.l = fsub <2 x float> %.sroa.029.0.copyload, %.sroa.032.0.copyload ; 5 uses
  %i.m = fsub <2 x float> %i.k, %.sroa.032.0.copyload
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.n) ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fsub <2 x float> %.sroa.029.0.copyload, %i.k
  %i.r = fmul <2 x float> %i.l, %i.q
  %i.s = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.r)
  %i.t = fcmp olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fmul <2 x float> %i.l, %i.l
  %i.v = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.u)
  %i.w = fdiv float %i.o, %i.v
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.l, %i.y
  %i.aa = fadd <2 x float> %.sroa.032.0.copyload, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.ab = phi <2 x float> [ %.sroa.029.0.copyload, %bb.b ], [ %.sroa.032.0.copyload, %bb.a ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ac = fsub <2 x float> %i.k, %i.ab            ; 3 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ac
  %i.ae = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, f0x057A0000
  br i1 %i.af, label %bb.e, label %b2GetLengthAndNormalize.exit

bb.e:                                             ; preds = %bb.d
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ae) ; 2 uses
  %i.ag = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ac, %i.ai
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.d, %bb.e
  %.sink.i = phi float [ %sqrt.i, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i = phi <2 x float> [ %i.aj, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !12 ; 2 uses
  %i.ao = fsub float %.sink.i, %i.al
  %i.ap = fsub float %i.ao, %i.an                 ; 2 uses
  %i.aq = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.ar = fmul float %i.aq, 5.000000e-03
  %i.as = fmul float %i.ar, 4.000000e+00
  %i.at = fcmp ogt float %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %.sroa.015.0.i
  %i.ay = fadd <2 x float> %i.ab, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %.sroa.015.0.i, %i.ba
  %i.bc = fsub <2 x float> %i.k, %i.bb
  %i.bd = fmul <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.be = fmul <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.bf = fadd <2 x float> %i.bd, %i.be
  store <2 x float> %i.bf, ptr %i.au, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ap, ptr %i.bg, align 4, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bi, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %b2GetLengthAndNormalize.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollidePolygonAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00
  %i.d = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %4, %i.e                ; 2 uses
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = fsub <2 x float> %i.f, %i.i
  %i.k = fadd <2 x float> %i.f, %i.i
  %i.l = shufflevector <2 x float> %i.j, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.m = fadd <2 x float> %3, %i.l                ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load float, ptr %i.n, align 4, !tbaa !22 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 4 uses
  %i.r = fadd float %i.o, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.v = icmp sgt i32 %i.t, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.t, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0287.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0126286.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.preheader ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = load <2 x float>, ptr %i.x, align 4
  %i.ab = fsub <2 x float> %i.m, %i.z
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.0126286.epil.init ; 2 uses
  %.1127.epil = select i1 %i.ae, float %i.ad, float %.0126286.epil.init
  %i.af = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.1.epil = select i1 %i.ae, i32 %i.af, i32 %.0287.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0126.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1127.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ag = fadd float %i.c, %i.r                   ; 3 uses
  %i.ah = fcmp ogt float %.0126.lcssa, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.0287 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.0126286 = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.new ], [ %.1127.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = load <2 x float>, ptr %i.ai, align 4
  %i.am = fsub <2 x float> %i.m, %i.ak
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.an) ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %.0126286         ; 2 uses
  %.1127 = select i1 %i.ap, float %i.ao, float %.0126286 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.ap, i32 %i.aq, i32 %.0287
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.at = load <2 x float>, ptr %i.as, align 4
  %i.au = load <2 x float>, ptr %i.ar, align 4
  %i.av = fsub <2 x float> %i.m, %i.at
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw) ; 2 uses
  %i.ay = fcmp ogt float %i.ax, %.1127            ; 2 uses
  %.1127.1 = select i1 %i.ay, float %i.ax, float %.1127 ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  %.1.1 = select i1 %i.ay, i32 %i.az, i32 %.1     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  %i.ba = add nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.t
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 0
  %i.bd = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.be, align 4, !tbaa !9 ; 4 uses
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.bg, align 4, !tbaa !9 ; 4 uses
  %i.bh = fsub <2 x float> %i.m, %.sroa.056.0.copyload ; 6 uses
  %i.bi = fsub <2 x float> %.sroa.050.0.copyload, %.sroa.056.0.copyload
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bj)
  %i.bl = fsub <2 x float> %i.m, %.sroa.050.0.copyload ; 5 uses
  %i.bm = fcmp olt float %i.bk, 0.000000e+00
  %i.bn = fcmp ogt float %.0126.lcssa, f0x34000000 ; 2 uses
  %or.cond = and i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bo = fmul <2 x float> %i.bh, %i.bh
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, f0x057A0000
  br i1 %i.bq, label %bb.d, label %b2Normalize.exit

bb.d:                                             ; preds = %bb.c
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bh, %i.bt
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.012.0.i = phi <2 x float> [ %i.bu, %bb.d ], [ zeroinitializer, %bb.c ] ; 5 uses
  %i.bv = fmul <2 x float> %i.bh, %.sroa.012.0.i
  %i.bw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bv)
  %i.bx = fcmp ule float %i.bw, %i.ag
  br i1 %i.bx, label %bb.e, label %.critedge

bb.e:                                             ; preds = %b2Normalize.exit
  %i.by = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bz, %.sroa.012.0.i
  %i.cb = insertelement <2 x float> poison, float %i.q, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %.sroa.012.0.i
  store <2 x float> %.sroa.012.0.i, ptr %0, align 4, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = fadd <2 x float> %.sroa.056.0.copyload, %i.ca ; 2 uses
  %i.cg = fsub <2 x float> %i.m, %i.cd            ; 2 uses
  %i.ch = fmul <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ci = fmul <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.cj = fadd <2 x float> %i.ci, %i.ch
  store <2 x float> %i.cj, ptr %i.ce, align 4, !tbaa !9
  %i.ck = fsub <2 x float> %i.cg, %i.cf
  %i.cl = fmul <2 x float> %.sroa.012.0.i, %i.ck
  %i.cm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cl)
  br label %.critedge.sink.split

bb.f:                                             ; preds = %bb.b
  %i.cn = fsub <2 x float> %.sroa.056.0.copyload, %.sroa.050.0.copyload
  %i.co = fmul <2 x float> %i.bl, %i.cn
  %i.cp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.co)
  %i.cq = fcmp olt float %i.cp, 0.000000e+00
  %or.cond4 = and i1 %i.bn, %i.cq
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cr = fmul <2 x float> %i.bl, %i.bl
  %i.cs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cr) ; 2 uses
  %i.ct = fcmp ogt float %i.cs, f0x057A0000
  br i1 %i.ct, label %bb.h, label %b2Normalize.exit222

bb.h:                                             ; preds = %bb.g
  %sqrt.i219 = tail call nnan float @llvm.sqrt.f32(float %i.cs)
  %i.cu = fdiv nnan float 1.000000e+00, %sqrt.i219
  %i.cv = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.bl, %i.cw
  br label %b2Normalize.exit222

b2Normalize.exit222:                              ; preds = %bb.g, %bb.h
  %.sroa.012.0.i218 = phi <2 x float> [ %i.cx, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.cy = fmul <2 x float> %i.bl, %.sroa.012.0.i218
  %i.cz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cy)
  %i.da = fcmp ule float %i.cz, %i.ag
  br i1 %i.da, label %bb.i, label %.critedge

bb.i:                                             ; preds = %b2Normalize.exit222
  %i.db = insertelement <2 x float> poison, float %i.o, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.dc, %.sroa.012.0.i218
  %i.de = insertelement <2 x float> poison, float %i.q, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %.sroa.012.0.i218
  store <2 x float> %.sroa.012.0.i218, ptr %0, align 4, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = fadd <2 x float> %.sroa.050.0.copyload, %i.dd ; 2 uses
  %i.dj = fsub <2 x float> %i.m, %i.dg            ; 2 uses
  %i.dk = fmul <2 x float> %i.di, splat (float 5.000000e-01)
  %i.dl = fmul <2 x float> %i.dj, splat (float 5.000000e-01)
  %i.dm = fadd <2 x float> %i.dl, %i.dk
  store <2 x float> %i.dm, ptr %i.dh, align 4, !tbaa !9
  %i.dn = fsub <2 x float> %i.dj, %i.di
  %i.do = fmul <2 x float> %.sroa.012.0.i218, %i.dn
  %i.dp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.do)
  br label %.critedge.sink.split

bb.j:                                             ; preds = %bb.f
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bd
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.dq, align 4, !tbaa !9 ; 4 uses
  store <2 x float> %.sroa.010.0.copyload, ptr %0, align 4, !tbaa !9
  %i.dr = fmul <2 x float> %i.bh, %.sroa.010.0.copyload
  %i.ds = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dr)
  %i.dt = fsub float %i.o, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %.sroa.010.0.copyload, %i.dw
  %i.dy = fadd <2 x float> %i.m, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ea, %.sroa.010.0.copyload
  %i.ec = fsub <2 x float> %i.m, %i.eb
  %i.ed = fmul <2 x float> %i.dy, splat (float 5.000000e-01)
  %i.ee = fmul <2 x float> %i.ec, splat (float 5.000000e-01)
  %i.ef = fadd <2 x float> %i.ee, %i.ed
  store <2 x float> %i.ef, ptr %i.du, align 4, !tbaa !9
  %i.eg = fsub float %.0126.lcssa, %i.r
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.j, %bb.e, %bb.i
  %.sink = phi float [ %i.dp, %bb.i ], [ %i.cm, %bb.e ], [ %i.eg, %bb.j ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sink, ptr %i.eh, align 4, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ei, align 4, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ej, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %b2Normalize.exit, %b2Normalize.exit222, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideCapsules(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.f = fsub <2 x float> %3, %.sroa.0308.0.copyload ; 2 uses
  %i.g = fsub <2 x float> %i.b, %.sroa.0308.0.copyload ; 13 uses
  %i.h = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %4, %i.h                ; 2 uses
  %i.j = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = fsub <2 x float> %i.i, %i.l
  %i.n = fadd <2 x float> %i.i, %i.l
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.p = fadd <2 x float> %i.f, %i.o              ; 14 uses
  %i.q = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %4, %i.q                ; 2 uses
  %i.s = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.j, %i.s              ; 2 uses
  %i.u = fsub <2 x float> %i.r, %i.t
  %i.v = fadd <2 x float> %i.r, %i.t
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = fadd <2 x float> %i.f, %i.w              ; 9 uses
  %i.y = fsub <2 x float> %i.x, %i.p              ; 6 uses
  %i.z = fmul <2 x float> %i.g, %i.g
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z) ; 5 uses
  %i.ab = fsub <2 x float> zeroinitializer, %i.p  ; 5 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> %i.y, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ad = fmul <2 x float> %i.y, %i.ac
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.af = fmul <2 x float> %i.y, %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fadd <2 x float> %i.ag, %i.ad           ; 3 uses
  %i.ai = fmul <2 x float> %i.g, %i.ae
  %i.aj = fmul <2 x float> %i.g, %i.ac
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fadd <2 x float> %i.ak, %i.ai           ; 7 uses
  %i.am = extractelement <2 x float> %i.ah, i64 1 ; 4 uses
  %i.an = fmul float %i.aa, %i.am
  %i.ao = extractelement <2 x float> %i.al, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.al
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = fmul <2 x float> %i.al, %i.ah           ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop675 = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop675, i64 0
  %i.au = fdiv float %i.at, %i.aq                 ; 3 uses
  %i.av = fcmp olt float %i.au, 0.000000e+00
  %i.aw = fcmp ogt float %i.au, 1.000000e+00
  %i.ax = select i1 %i.aw, float 1.000000e+00, float %i.au
  %i.ay = select i1 %i.av, float 0.000000e+00, float %i.ax
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0318 = phi float [ %i.ay, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.az = fmul float %i.ao, %.0318
  %i.ba = extractelement <2 x float> %i.ah, i64 0
  %i.bb = fadd float %i.ba, %i.az
  %i.bc = fdiv float %i.bb, %i.am                 ; 3 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = extractelement <2 x float> %i.al, i64 1
  %i.bf = fneg float %i.be
  %i.bg = fdiv float %i.bf, %i.aa                 ; 3 uses
  %i.bh = fcmp olt float %i.bg, 0.000000e+00
  %i.bi = fcmp ogt float %i.bg, 1.000000e+00
  %i.bj = select i1 %i.bi, float 1.000000e+00, float %i.bg
  %i.bk = select i1 %i.bh, float 0.000000e+00, float %i.bj
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bl = fcmp ogt float %i.bc, 1.000000e+00
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %shift677 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop678 = fsub <2 x float> %i.al, %shift677
  %i.bm = extractelement <2 x float> %foldExtExtBinop678, i64 0
  %i.bn = fdiv float %i.bm, %i.aa                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, 0.000000e+00
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  %i.bq = select i1 %i.bp, float 1.000000e+00, float %i.bn
  %i.br = select i1 %i.bo, float 0.000000e+00, float %i.bq
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0319 = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.f ], [ %i.bc, %bb.e ] ; 2 uses
  %.1 = phi float [ %i.bk, %bb.d ], [ %i.br, %bb.f ], [ %.0318, %bb.e ] ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %.1, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.g, %i.bt
  %i.bv = insertelement <2 x float> poison, float %.0319, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.y, %i.bw
  %i.by = fadd <2 x float> %i.bu, zeroinitializer ; 2 uses
  %i.bz = fadd <2 x float> %i.p, %i.bx            ; 2 uses
  %i.ca = fsub <2 x float> %i.bz, %i.by           ; 3 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cb) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !20 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20 ; 4 uses
  %i.ch = fadd float %i.ce, %i.cg                 ; 5 uses
  %i.ci = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.cj = fmul float %i.ci, 5.000000e-03
  %i.ck = fmul float %i.cj, 4.000000e+00
end_hunk_0
