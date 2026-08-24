Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@dt_colorspaces_cygm_to_rgb:bb.a
  %.pre54 = load double, ptr %.phi.trans.insert53, align 8, !tbaa !19 ; 2 uses
  %i.b = load <8 x double>, ptr %2, align 8, !tbaa !19 ; 12 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader82, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat56 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat58 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat60 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat62 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat64 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert65 = insertelement <4 x double> poison, double %.pre45, i64 0
  %broadcast.splat66 = shufflevector <4 x double> %broadcast.splatinsert65, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x double> poison, double %.pre48, i64 0
  %broadcast.splat68 = shufflevector <4 x double> %broadcast.splatinsert67, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <4 x double> poison, double %.pre51, i64 0
  %broadcast.splat70 = shufflevector <4 x double> %broadcast.splatinsert69, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <4 x double> poison, double %.pre54, i64 0
  %broadcast.splat72 = shufflevector <4 x double> %broadcast.splatinsert71, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat74 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat76 = shufflevector <8 x double> %i.b, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.c = shl nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <4 x i64> %i.c ; 4 uses
  %i.d = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec = load <16 x float>, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec77 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec78 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec79 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.e = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec to <4 x double> ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat74, %i.e
  %i.g = fptrunc reassoc nsz arcp contract afn <4 x double> %i.f to <4 x float>
  %wide.gep80 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4
  %i.h = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec77 to <4 x double> ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat76, %i.h
  %i.j = fpext reassoc nsz arcp contract afn <4 x float> %i.g to <4 x double>
  %i.k = fadd reassoc nsz arcp contract afn <4 x double> %i.i, %i.j
  %i.l = fptrunc reassoc nsz arcp contract afn <4 x double> %i.k to <4 x float>
  %wide.gep81 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 8
  %i.m = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec78 to <4 x double> ; 3 uses
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat, %i.m
  %i.o = fpext reassoc nsz arcp contract afn <4 x float> %i.l to <4 x double>
  %i.p = fadd reassoc nsz arcp contract afn <4 x double> %i.n, %i.o
  %i.q = fptrunc reassoc nsz arcp contract afn <4 x double> %i.p to <4 x float>
  %i.r = fpext reassoc nsz arcp contract afn <4 x float> %strided.vec79 to <4 x double> ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat56, %i.r
  %i.t = fpext reassoc nsz arcp contract afn <4 x float> %i.q to <4 x double>
  %i.u = fadd reassoc nsz arcp contract afn <4 x double> %i.s, %i.t
  %i.v = fptrunc reassoc nsz arcp contract afn <4 x double> %i.u to <4 x float>
  %i.w = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat58, %i.e
  %i.x = fptrunc reassoc nsz arcp contract afn <4 x double> %i.w to <4 x float>
  %i.y = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat60, %i.h
  %i.z = fpext reassoc nsz arcp contract afn <4 x float> %i.x to <4 x double>
  %i.aa = fadd reassoc nsz arcp contract afn <4 x double> %i.y, %i.z
  %i.ab = fptrunc reassoc nsz arcp contract afn <4 x double> %i.aa to <4 x float>
  %i.ac = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat62, %i.m
  %i.ad = fpext reassoc nsz arcp contract afn <4 x float> %i.ab to <4 x double>
  %i.ae = fadd reassoc nsz arcp contract afn <4 x double> %i.ac, %i.ad
  %i.af = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ae to <4 x float>
  %i.ag = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat64, %i.r
  %i.ah = fpext reassoc nsz arcp contract afn <4 x float> %i.af to <4 x double>
  %i.ai = fadd reassoc nsz arcp contract afn <4 x double> %i.ag, %i.ah
  %i.aj = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ai to <4 x float>
  %i.ak = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat66, %i.e
  %i.al = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ak to <4 x float>
  %i.am = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat68, %i.h
  %i.an = fpext reassoc nsz arcp contract afn <4 x float> %i.al to <4 x double>
  %i.ao = fadd reassoc nsz arcp contract afn <4 x double> %i.am, %i.an
  %i.ap = fptrunc reassoc nsz arcp contract afn <4 x double> %i.ao to <4 x float>
  %i.aq = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat70, %i.m
  %i.ar = fpext reassoc nsz arcp contract afn <4 x float> %i.ap to <4 x double>
  %i.as = fadd reassoc nsz arcp contract afn <4 x double> %i.aq, %i.ar
  %i.at = fptrunc reassoc nsz arcp contract afn <4 x double> %i.as to <4 x float>
  %i.au = fmul reassoc nsz arcp contract afn <4 x double> %broadcast.splat72, %i.r
  %i.av = fpext reassoc nsz arcp contract afn <4 x float> %i.at to <4 x double>
  %i.aw = fadd reassoc nsz arcp contract afn <4 x double> %i.au, %i.av
  %i.ax = fptrunc reassoc nsz arcp contract afn <4 x double> %i.aw to <4 x float>
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.v, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aj, <4 x ptr> align 4 %wide.gep80, <4 x i1> splat (i1 true)), !tbaa !14
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ax, <4 x ptr> align 4 %wide.gep81, <4 x i1> splat (i1 true)), !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader82

.lr.ph.preheader82:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.az = shufflevector <8 x double> %i.b, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ba = shufflevector <8 x double> %i.b, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.bb = shufflevector <8 x double> %i.b, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.bc = shufflevector <8 x double> %i.b, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader82, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader82 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !14
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !14
  %i.bi = fpext reassoc nsz arcp contract afn float %i.bh to double ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !14
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn double %.pre45, %i.bf
  %i.bq = fptrunc reassoc nsz arcp contract afn double %i.bp to float
  %i.br = fmul reassoc nsz arcp contract afn double %.pre48, %i.bi
  %i.bs = fpext reassoc nsz arcp contract afn float %i.bq to double
  %i.bt = fadd reassoc nsz arcp contract afn double %i.br, %i.bs
  %i.bu = fptrunc reassoc nsz arcp contract afn double %i.bt to float
  %i.bv = fmul reassoc nsz arcp contract afn double %.pre51, %i.bl
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bu to double
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bv, %i.bw
  %i.by = fptrunc reassoc nsz arcp contract afn double %i.bx to float
  %i.bz = fmul reassoc nsz arcp contract afn double %.pre54, %i.bo
  %i.ca = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.cb = fadd reassoc nsz arcp contract afn double %i.bz, %i.ca
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float
  %i.cd = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fmul reassoc nsz arcp contract afn <2 x double> %i.az, %i.ce
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float>
  %i.ch = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x double> %i.ba, %i.ci
  %i.ck = fpext <2 x float> %i.cg to <2 x double>
  %i.cl = fadd reassoc nsz arcp contract afn <2 x double> %i.cj, %i.ck
  %i.cm = fptrunc <2 x double> %i.cl to <2 x float>
  %i.cn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x double> %i.bb, %i.co
  %i.cq = fpext <2 x float> %i.cm to <2 x double>
  %i.cr = fadd reassoc nsz arcp contract afn <2 x double> %i.cp, %i.cq
  %i.cs = fptrunc <2 x double> %i.cr to <2 x float>
  %i.ct = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul reassoc nsz arcp contract afn <2 x double> %i.bc, %i.cu
  %i.cw = fpext <2 x float> %i.cs to <2 x double>
  %i.cx = fadd reassoc nsz arcp contract afn <2 x double> %i.cv, %i.cw
  %i.cy = fptrunc <2 x double> %i.cx to <2 x float>
  store <2 x float> %i.cy, ptr %i.bd, align 4, !tbaa !14
  store float %i.cc, ptr %i.bj, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !182
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_colorspaces_rgb_to_cygm(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr nonnull align 8 %.phi.trans.insert, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.d = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr nonnull align 8 %.phi.trans.insert39, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.e = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr nonnull align 8 %.phi.trans.insert42, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.f = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr nonnull align 8 %.phi.trans.insert45, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.g = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.h = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr nonnull align 8 %i.b, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x double> poison), !tbaa !19
  %i.i = shufflevector <4 x double> %i.c, <4 x double> %i.f, <4 x i32> <i32 0, i32 3, i32 4, i32 7> ; 3 uses
  %i.j = shufflevector <4 x double> %i.h, <4 x double> %i.e, <4 x i32> <i32 0, i32 3, i32 4, i32 7> ; 3 uses
  %i.k = shufflevector <4 x double> %i.g, <4 x double> %i.d, <4 x i32> <i32 0, i32 3, i32 4, i32 7> ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %1, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %3 = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %scevgep.epil = getelementptr nuw i8, ptr %0, i64 %3
  %.idx.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.epil ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = fpext reassoc nsz arcp contract afn float %i.n to double
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !14
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 2 uses
  %i.s = insertelement <4 x double> poison, double %i.o, i64 0
  %i.t = shufflevector <4 x double> %i.s, <4 x double> poison, <4 x i32> zeroinitializer
  %i.u = fmul reassoc nsz arcp contract afn <4 x double> %i.k, %i.t
  %i.v = fptrunc <4 x double> %i.u to <4 x float>
  %i.w = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.x = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.w
  %i.y = fpext <4 x float> %i.v to <4 x double>
  %i.z = fadd reassoc nsz arcp contract afn <4 x double> %i.x, %i.y
  %i.aa = fptrunc <4 x double> %i.z to <4 x float>
  %i.ab = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ac = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.ab
  %i.ad = fpext <4 x float> %i.aa to <4 x double>
  %i.ae = fadd reassoc nsz arcp contract afn <4 x double> %i.ac, %i.ad
  %i.af = fptrunc <4 x double> %i.ae to <4 x float>
  store <4 x float> %i.af, ptr %scevgep.epil, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %4 = mul nuw nsw i64 %indvars.iv, 12
  %scevgep = getelementptr nuw i8, ptr %0, i64 %4
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !14
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !14
  %i.al = fpext <2 x float> %i.ak to <2 x double> ; 2 uses
  %i.am = insertelement <4 x double> poison, double %i.ai, i64 0
  %i.an = shufflevector <4 x double> %i.am, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <4 x double> %i.k, %i.an
  %i.ap = fptrunc <4 x double> %i.ao to <4 x float>
  %i.aq = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ar = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.aq
  %i.as = fpext <4 x float> %i.ap to <4 x double>
  %i.at = fadd reassoc nsz arcp contract afn <4 x double> %i.ar, %i.as
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  %i.av = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.av
  %i.ax = fpext <4 x float> %i.au to <4 x double>
  %i.ay = fadd reassoc nsz arcp contract afn <4 x double> %i.aw, %i.ax
  %i.az = fptrunc <4 x double> %i.ay to <4 x float>
  store <4 x float> %i.az, ptr %scevgep, align 4, !tbaa !14
  %indvar.next = or disjoint i64 %indvars.iv, 1   ; 2 uses
  %i.ba = mul nuw nsw i64 %indvar.next, 12
  %i.bb = getelementptr nuw i8, ptr %0, i64 %i.ba
  %.idx.1 = mul nuw nsw i64 %indvar.next, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !14
  %i.be = fpext reassoc nsz arcp contract afn float %i.bd to double
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !14
  %i.bh = fpext <2 x float> %i.bg to <2 x double> ; 2 uses
  %i.bi = insertelement <4 x double> poison, double %i.be, i64 0
  %i.bj = shufflevector <4 x double> %i.bi, <4 x double> poison, <4 x i32> zeroinitializer
  %i.bk = fmul reassoc nsz arcp contract afn <4 x double> %i.k, %i.bj
  %i.bl = fptrunc <4 x double> %i.bk to <4 x float>
  %i.bm = shufflevector <2 x double> %i.bh, <2 x double> poison, <4 x i32> zeroinitializer
  %i.bn = fmul reassoc nsz arcp contract afn <4 x double> %i.j, %i.bm
  %i.bo = fpext <4 x float> %i.bl to <4 x double>
  %i.bp = fadd reassoc nsz arcp contract afn <4 x double> %i.bn, %i.bo
  %i.bq = fptrunc <4 x double> %i.bp to <4 x float>
  %i.br = shufflevector <2 x double> %i.bh, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bs = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.br
  %i.bt = fpext <4 x float> %i.bq to <4 x double>
  %i.bu = fadd reassoc nsz arcp contract afn <4 x double> %i.bs, %i.bt
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.bb, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsCIEXYZ_to_xy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !17
  %i.d = fptrunc reassoc nsz arcp contract afn double %i.c to float
  %i.e = shufflevector <2 x double> %i.a, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.f = fptrunc <4 x double> %i.e to <4 x float>
  %i.g = insertelement <4 x float> %i.f, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert = insertelement <4 x float> %i.g, float %i.d, i64 2
  %i.h = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %i.h, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i = extractelement <4 x float> %i.h, i64 1 ; 2 uses
  %i.i = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %.sroa.0.4.vec.extract4.i
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %i.h, i64 2
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %.sroa.0.8.vec.extract.i ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00 ; 2 uses
  %i.l = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i, %i.j
  %i.m = select i1 %i.k, float %i.l, float 3.456700e-01
  %i.n = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i, %i.j
  %i.o = select i1 %i.k, float %i.n, float 3.585000e-01
  store float %i.m, ptr %1, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_colorspaces_get_primaries_and_whitepoint_from_profile(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1918392666) #26 ; 3 uses
  %i.b = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1733843290) #26 ; 3 uses
  %i.c = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 1649957210) #26 ; 3 uses
  %i.d = tail call ptr @cmsReadTag(ptr noundef %0, i32 noundef 2004119668) #26 ; 3 uses
  %i.e = icmp ne ptr %i.a, null
  %i.f = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  %i.g = icmp ne ptr %i.c, null
  %or.cond3 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = icmp ne ptr %i.d, null
  %or.cond5 = select i1 %or.cond3, i1 %i.h, i1 false
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !17
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  %i.m = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.n = fptrunc <4 x double> %i.m to <4 x float>
  %i.o = insertelement <4 x float> %i.n, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.p = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i, <4 x float> zeroinitializer) ; 4 uses
  %i.q = load <2 x double>, ptr %i.b, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !17
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float
  %i.u = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = fptrunc <4 x double> %i.u to <4 x float>
  %i.w = insertelement <4 x float> %i.v, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i25 = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.x = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i25, <4 x float> zeroinitializer) ; 4 uses
  %i.y = shufflevector <4 x float> %i.p, <4 x float> %i.x, <2 x i32> <i32 0, i32 4>
  %i.z = shufflevector <4 x float> %i.p, <4 x float> %i.x, <2 x i32> <i32 1, i32 5>
  %i.aa = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ac = shufflevector <4 x float> %i.p, <4 x float> %i.x, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac ; 3 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fcmp reassoc nsz arcp contract afn ogt float %i.ae, 0.000000e+00
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.ag, 0.000000e+00
  %i.ai = shufflevector <4 x float> %i.p, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aj = fdiv reassoc nsz arcp contract afn <4 x float> %i.ai, %i.ad
  %i.ak = insertelement <4 x i1> poison, i1 %i.af, i64 0
  %i.al = insertelement <4 x i1> %i.ak, i1 %i.ah, i64 2
  %i.am = shufflevector <4 x i1> %i.al, <4 x i1> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.an = select <4 x i1> %i.am, <4 x float> %i.aj, <4 x float> <float 3.456700e-01, float 3.585000e-01, float 3.456700e-01, float 3.585000e-01>
  store <4 x float> %i.an, ptr %1, align 4, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load <2 x double>, ptr %i.c, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !17
  %i.as = fptrunc reassoc nsz arcp contract afn double %i.ar to float
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  %i.av = insertelement <4 x float> %i.au, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i29 = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.aw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i29, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0.0.vec.extract.i.i30 = extractelement <4 x float> %i.aw, i64 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ay = load <2 x double>, ptr %i.d, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !17
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  %i.bc = shufflevector <2 x double> %i.ay, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  %i.be = insertelement <4 x float> %i.bd, float 0.000000e+00, i64 3
  %.sroa.05.12.vec.insert.i33 = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.05.12.vec.insert.i33, <4 x float> zeroinitializer) ; 4 uses
  %.sroa.0.0.vec.extract.i.i34 = extractelement <4 x float> %i.bf, i64 0
  %i.bg = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 0, i32 4>
  %i.bh = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh
  %i.bj = shufflevector <4 x float> %i.aw, <4 x float> %i.bf, <2 x i32> <i32 2, i32 6>
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bj ; 4 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i30, %i.bl
  %i.bn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bk, zeroinitializer ; 3 uses
  %i.bo = extractelement <2 x i1> %i.bn, i64 0
  %i.bp = select i1 %i.bo, float %i.bm, float 3.456700e-01
  store float %i.bp, ptr %i.ao, align 4, !tbaa !14
  %i.bq = fdiv reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bk
  %i.br = select <2 x i1> %i.bn, <2 x float> %i.bq, <2 x float> splat (float 3.585000e-01) ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  store float %i.bs, ptr %i.ax, align 4, !tbaa !14
  %i.bt = extractelement <2 x float> %i.bk, i64 1
  %i.bu = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i34, %i.bt
  %i.bv = extractelement <2 x i1> %i.bn, i64 1
  %i.bw = select i1 %i.bv, float %i.bu, float 3.456700e-01
  store float %i.bw, ptr %2, align 4, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = extractelement <2 x float> %i.br, i64 1
  store float %i.by, ptr %i.bx, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @cmsReadTag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_make_transposed_matrices_from_primaries_and_whitepoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %2) local_unnamed_addr #0 {
.preheader:
  %i.a = alloca [4 x [4 x float]], align 64       ; 14 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !14
  %i.h = load <4 x float>, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.i = load float, ptr %i.e, align 4, !tbaa !14
  %i.j = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 5 uses
  %i.k = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.j, splat (float f0x34000000)
  %i.l = fcmp reassoc nsz arcp contract afn oge <2 x float> %i.j, zeroinitializer
  %i.m = and <2 x i1> %i.k, %i.l
  %i.n = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.j, zeroinitializer
  %i.o = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.j, splat (float f0xB4000000)
  %i.p = and <2 x i1> %i.n, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> splat (float f0xB4000000), <2 x float> %i.j
  %i.r = select <2 x i1> %i.m, <2 x float> splat (float f0x34000000), <2 x float> %i.q ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %i.h, %i.s
  %i.t = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.u = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.v = extractelement <2 x float> %i.r, i64 1
  %i.w = fadd reassoc nsz arcp contract afn float %i.i, %i.v
  %i.x = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.y = insertelement <4 x float> %i.h, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.x, i64 3
  %i.aa = fdiv reassoc nsz arcp contract afn <4 x float> %i.z, %i.s ; 4 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0
  store float %i.ab, ptr %i.a, align 64, !tbaa !14
  %i.ac = extractelement <4 x float> %i.aa, i64 1
  store float %i.ac, ptr %i.d, align 8, !tbaa !14
  %i.ad = extractelement <4 x float> %i.aa, i64 2
  store float %i.ad, ptr %i.f, align 16, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.af = extractelement <4 x float> %i.aa, i64 3
  store float %i.af, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !14 ; 5 uses
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ai, f0x34000000
  %i.ak = fcmp reassoc nsz arcp contract afn oge float %i.ai, 0.000000e+00
  %or.cond.i33.2 = and i1 %i.aj, %i.ak
  %i.al = fcmp reassoc nsz arcp contract afn olt float %i.ai, 0.000000e+00
  %i.am = fcmp reassoc nsz arcp contract afn ogt float %i.ai, f0xB4000000
  %or.cond3.i34.2 = and i1 %i.al, %i.am
  %..i35.2 = select nsz i1 %or.cond3.i34.2, float f0xB4000000, float %i.ai
  %.0.i36.2 = select nsz i1 %or.cond.i33.2, float f0x34000000, float %..i35.2 ; 3 uses
  %i.an = load float, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.an, %.0.i36.2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store float %i.ao, ptr %i.ap, align 32, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 36
end_hunk_0
