Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@par_shapes_create_disk:bb.a
  %niter = phi i32 [ 0, %.lr.ph72.preheader.new ], [ %niter.next.3, %.lr.ph72 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.05370, i64 4
  store float %.sroa.059.0, ptr %.05370, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.05370, i64 8
  store float %.sroa.7.0, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.05370, i64 12
  store float %.sroa.12.0, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.05370, i64 16
  store float %.sroa.059.0, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.05370, i64 20
  store float %.sroa.7.0, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.05370, i64 24
  store float %.sroa.12.0, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.05370, i64 28
  store float %.sroa.059.0, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.05370, i64 32
  store float %.sroa.7.0, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.05370, i64 36
  store float %.sroa.12.0, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.05370, i64 40
  store float %.sroa.059.0, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.05370, i64 44
  store float %.sroa.7.0, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.05370, i64 48 ; 2 uses
  store float %.sroa.12.0, ptr %i.bo, align 4
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge73.loopexit.unr-lcssa, label %.lr.ph72

._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa: ; preds = %.lr.ph77
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0
  br i1 %lcmp.mod89.not, label %._crit_edge78.loopexit.peel.begin.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa, %.lr.ph77.preheader.split
  %.075.epil.init = phi i32 [ 0, %.lr.ph77.preheader.split ], [ %i.ep, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ]
  %.05174.epil.init = phi ptr [ %i.az, %.lr.ph77.preheader.split ], [ %i.et, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i32 %xtraiter87, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.075.epil = phi i32 [ %i.br, %.lr.ph77.epil ], [ %.075.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %.05174.epil = phi ptr [ %i.bv, %.lr.ph77.epil ], [ %.05174.epil.init, %.lr.ph77.epil.preheader ] ; 4 uses
  %epil.iter88 = phi i32 [ %epil.iter88.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 2
  store i16 0, ptr %.05174.epil, align 2
  %i.br = add nuw nsw i32 %.075.epil, 1           ; 2 uses
  %i.bs = trunc i32 %i.br to i16                  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 4
  store i16 %i.bs, ptr %i.bq, align 2
  %i.bu = add i16 %i.bs, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.05174.epil, i64 6 ; 2 uses
  store i16 %i.bu, ptr %i.bt, align 2
  %epil.iter88.next = add i32 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge78.loopexit.peel.begin.loopexit, label %.lr.ph77.epil, !llvm.loop !99

._crit_edge78.loopexit.peel.begin.loopexit:       ; preds = %.lr.ph77.epil, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa
  %.075.lcssa = phi i32 [ %i.ej, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ], [ %.075.epil, %.lr.ph77.epil ]
  %.lcssa = phi ptr [ %i.et, %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph77.epil ]
  %i.bw = add nuw nsw i32 %.075.lcssa, 2
  br label %._crit_edge78.loopexit.peel.begin

._crit_edge78.loopexit.peel.begin:                ; preds = %._crit_edge78.loopexit.peel.begin.loopexit, %.lr.ph77.preheader
  %i.bx = phi i32 [ 1, %.lr.ph77.preheader ], [ %i.bw, %._crit_edge78.loopexit.peel.begin.loopexit ] ; 3 uses
  %i.by = phi ptr [ %i.az, %.lr.ph77.preheader ], [ %.lcssa, %._crit_edge78.loopexit.peel.begin.loopexit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 0, ptr %i.by, align 2
  %i.ca = trunc i32 %i.bx to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i16 %i.ca, ptr %i.bz, align 2
  %i.cc = icmp eq i32 %i.bx, %1
  %i.cd = trunc i32 %i.bx to i16
  %i.ce = add i16 %i.cd, 1
  %i.cf = select i1 %i.cc, i16 1, i16 %i.ce
  store i16 %i.cf, ptr %i.cb, align 2
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit.peel.begin, %._crit_edge73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.cg = fmul float %.sroa.12.0, -0.000000e+00
  %i.ch = fsub float %i.cg, %.sroa.7.0            ; 4 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %.sroa.12.0, float 0.000000e+00, float %.sroa.059.0) ; 4 uses
  %i.cj = fmul float %.sroa.7.0, -0.000000e+00
  %i.ck = tail call float @llvm.fmuladd.f32(float %.sroa.059.0, float 0.000000e+00, float %i.cj) ; 4 uses
  store float %i.ch, ptr %i.a, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store float %i.ci, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.ck, ptr %i.cm, align 4
  %i.cn = fmul float %i.ci, %i.ci
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.co) ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.d, label %par_shapes__normalize3.exit58

bb.d:                                             ; preds = %._crit_edge78
  %sqrt.i57 = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cr = fdiv float 1.000000e+00, %sqrt.i57      ; 3 uses
  %i.cs = fmul float %i.ch, %i.cr
  store float %i.cs, ptr %i.a, align 4
  %i.ct = fmul float %i.ci, %i.cr
  store float %i.ct, ptr %i.cl, align 4
  %i.cu = fmul float %i.ck, %i.cr
  store float %i.cu, ptr %i.cm, align 4
  br label %par_shapes__normalize3.exit58

par_shapes__normalize3.exit58:                    ; preds = %._crit_edge78, %bb.d
  %i.cv = fpext float %.sroa.12.0 to double
  %i.cw = tail call double @acos(double noundef %i.cv) #54
  %i.cx = fptrunc double %i.cw to float
  call void @par_shapes_rotate(ptr noundef nonnull %i.b, float noundef %i.cx, ptr noundef nonnull %i.a)
  %i.cy = load <2 x float>, ptr %2, align 4       ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = load float, ptr %i.cz, align 4          ; 3 uses
  %i.db = icmp sgt i32 %1, -1
  br i1 %i.db, label %.lr.ph.i.preheader, label %par_shapes_translate.exit

.lr.ph.i.preheader:                               ; preds = %par_shapes__normalize3.exit58
  %i.dc = add nuw i32 %1, 1                       ; 2 uses
  %i.dd = icmp eq i32 %1, 0
  br i1 %i.dd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter99 = and i32 %i.dc, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0910.i = phi ptr [ %i.h, %.lr.ph.i.preheader.new ], [ %i.dn, %.lr.ph.i ] ; 6 uses
  %niter100 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter100.next.1, %.lr.ph.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i, i64 8 ; 2 uses
  %i.df = load <2 x float>, ptr %.0910.i, align 4
  %i.dg = fadd <2 x float> %i.cy, %i.df
  store <2 x float> %i.dg, ptr %.0910.i, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i, i64 12 ; 2 uses
  %i.di = load float, ptr %i.de, align 4
  %i.dj = fadd float %i.da, %i.di
  store float %i.dj, ptr %i.de, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i, i64 20 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dh, align 4
  %i.dm = fadd <2 x float> %i.cy, %i.dl
  store <2 x float> %i.dm, ptr %i.dh, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i, i64 24 ; 2 uses
  %i.do = load float, ptr %i.dk, align 4
  %i.dp = fadd float %i.da, %i.do
  store float %i.dp, ptr %i.dk, align 4
  %niter100.next.1 = add i32 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i32 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %par_shapes_translate.exit.loopexit.unr-lcssa, label %.lr.ph.i

par_shapes_translate.exit.loopexit.unr-lcssa:     ; preds = %.lr.ph.i
  %i.dq = and i32 %1, 1
  %lcmp.mod97.not.not = icmp eq i32 %i.dq, 0
  br i1 %lcmp.mod97.not.not, label %.lr.ph.i.epil.preheader, label %par_shapes_translate.exit

.lr.ph.i.epil.preheader:                          ; preds = %par_shapes_translate.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0910.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.dn, %par_shapes_translate.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod98 = trunc i32 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %i.dr = getelementptr inbounds nuw i8, ptr %.0910.i.epil.init, i64 8 ; 2 uses
  %i.ds = load <2 x float>, ptr %.0910.i.epil.init, align 4
  %i.dt = fadd <2 x float> %i.cy, %i.ds
  store <2 x float> %i.dt, ptr %.0910.i.epil.init, align 4
  %i.du = load float, ptr %i.dr, align 4
  %i.dv = fadd float %i.da, %i.du
  store float %i.dv, ptr %i.dr, align 4
  br label %par_shapes_translate.exit

par_shapes_translate.exit:                        ; preds = %.lr.ph.i.epil.preheader, %par_shapes_translate.exit.loopexit.unr-lcssa, %par_shapes__normalize3.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret ptr %i.b

.lr.ph77:                                         ; preds = %.lr.ph77, %.lr.ph77.preheader.split.new
  %.075 = phi i32 [ 0, %.lr.ph77.preheader.split.new ], [ %i.ep, %.lr.ph77 ] ; 4 uses
  %.05174 = phi ptr [ %i.az, %.lr.ph77.preheader.split.new ], [ %i.et, %.lr.ph77 ] ; 13 uses
  %niter94 = phi i32 [ 0, %.lr.ph77.preheader.split.new ], [ %niter94.next.3, %.lr.ph77 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.05174, i64 2
  store i16 0, ptr %.05174, align 2
  %i.dx = trunc i32 %.075 to i16                  ; 2 uses
  %i.dy = or disjoint i16 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.05174, i64 4
  store i16 %i.dy, ptr %i.dw, align 2
  %i.ea = or disjoint i16 %i.dx, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.05174, i64 6
  store i16 %i.ea, ptr %i.dz, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.05174, i64 8
  store i16 0, ptr %i.eb, align 2
  %i.ed = trunc i32 %.075 to i16                  ; 2 uses
  %i.ee = or disjoint i16 %i.ed, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.05174, i64 10
  store i16 %i.ee, ptr %i.ec, align 2
  %i.eg = or disjoint i16 %i.ed, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %.05174, i64 12
  store i16 %i.eg, ptr %i.ef, align 2
  %i.ei = getelementptr inbounds nuw i8, ptr %.05174, i64 14
  store i16 0, ptr %i.eh, align 2
  %i.ej = or disjoint i32 %.075, 3                ; 2 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05174, i64 16
  store i16 %i.ek, ptr %i.ei, align 2
  %i.em = add nsw i16 %i.ek, 1
  %i.en = getelementptr inbounds nuw i8, ptr %.05174, i64 18
  store i16 %i.em, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %.05174, i64 20
  store i16 0, ptr %i.en, align 2
  %i.ep = add nuw nsw i32 %.075, 4                ; 3 uses
  %i.eq = trunc i32 %i.ep to i16                  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05174, i64 22
  store i16 %i.eq, ptr %i.eo, align 2
  %i.es = or disjoint i16 %i.eq, 1
  %i.et = getelementptr inbounds nuw i8, ptr %.05174, i64 24 ; 3 uses
  store i16 %i.es, ptr %i.er, align 2
  %niter94.next.3 = add i32 %niter94, 4           ; 2 uses
  %niter94.ncmp.3 = icmp eq i32 %niter94.next.3, %unroll_iter93
  br i1 %niter94.ncmp.3, label %._crit_edge78.loopexit.peel.begin.loopexit.unr-lcssa, label %.lr.ph77, !llvm.loop !100
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #30

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_rotate(ptr nofree noundef readonly captures(none) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #22 {
bb.a:
  %i.a = tail call float @sinf(float noundef %1) #54 ; 2 uses
  %i.b = tail call float @cosf(float noundef %1) #54 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4            ; 4 uses
  %i.e = fsub float 1.000000e+00, %i.b            ; 4 uses
  %i.f = fmul float %i.a, %i.d                    ; 2 uses
  %i.g = fneg float %i.f
  %i.h = load <2 x float>, ptr %2, align 4        ; 6 uses
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.h, %i.j              ; 3 uses
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %i.l, %i.h
  %i.n = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.h, %i.n
  %i.p = insertelement <2 x float> poison, float %i.e, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.r = insertelement <2 x float> poison, float %i.b, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.f, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.q, <2 x float> %i.s) ; 2 uses
  %i.u = extractelement <2 x float> %i.k, i64 0
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.b, i64 1
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.q, <2 x float> %i.w) ; 2 uses
  %i.y = extractelement <2 x float> %i.k, i64 1
  %i.z = insertelement <2 x float> poison, float %i.a, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.h            ; 3 uses
  %i.ac = fneg <2 x float> %i.ab                  ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 1
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.u, float %i.e, float %i.ad) ; 2 uses
  %i.af = extractelement <2 x float> %i.ab, i64 0
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.y, float %i.e, float %i.af) ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ac, <2 x float> %i.ab, <2 x i32> <i32 3, i32 0>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.q, <2 x float> %i.ah) ; 2 uses
  %i.aj = fmul float %i.d, %i.d
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.e, float %i.b) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.ap = icmp slt i32 %i.bl, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  %brmerge = or i1 %.not, %i.ap
  br i1 %brmerge, label %.loopexit, label %.lr.ph111

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0104108 = phi i32 [ %i.bj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0105107 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ao, %.lr.ph.preheader ] ; 5 uses
  %i.as = load float, ptr %.0105107, align 4      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0105107, i64 4
  %i.au = load float, ptr %i.at, align 4          ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0105107, i64 8 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4          ; 2 uses
  %i.ax = fmul float %i.ag, %i.au
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.as, float %i.ax)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.aw, float %i.ay)
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.x, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.as, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bh, <2 x float> %i.bf)
  store <2 x float> %i.bi, ptr %.0105107, align 4
  store float %i.az, ptr %i.av, align 4
  %i.bj = add nuw nsw i32 %.0104108, 1            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0105107, i64 12
  %i.bl = load i32, ptr %i.al, align 8            ; 2 uses
  %i.bm = icmp slt i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph111:                                        ; preds = %._crit_edge, %.lr.ph111
  %.0110 = phi i32 [ %i.ce, %.lr.ph111 ], [ 0, %._crit_edge ]
  %.0103109 = phi ptr [ %i.cf, %.lr.ph111 ], [ %i.ar, %._crit_edge ] ; 5 uses
  %i.bn = load float, ptr %.0103109, align 4      ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0103109, i64 4
  %i.bp = load float, ptr %i.bo, align 4          ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0103109, i64 8 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4          ; 2 uses
  %i.bs = fmul float %i.ag, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.bn, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.br, float %i.bt)
  %i.bv = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.x, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.bz, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.cc, <2 x float> %i.ca)
  store <2 x float> %i.cd, ptr %.0103109, align 4
  store float %i.bu, ptr %i.bq, align 4
  %i.ce = add nuw nsw i32 %.0110, 1               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0103109, i64 12
  %i.cg = load i32, ptr %i.al, align 8
  %i.ch = icmp slt i32 %i.ce, %i.cg
  br i1 %i.ch, label %.lr.ph111, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph111, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #30

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_translate(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi i32 [ %i.m, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0910 = phi ptr [ %i.j, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910, i64 8 ; 2 uses
  %i.h = load <2 x float>, ptr %.0910, align 4
  %i.i = fadd <2 x float> %i.f, %i.h
  store <2 x float> %i.i, ptr %.0910, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %.0910, i64 12
  %i.k = load float, ptr %i.g, align 4
  %i.l = fadd float %3, %i.k
  store float %i.l, ptr %i.g, align 4
  %i.m = add nuw nsw i32 %.011, 1                 ; 2 uses
  %i.n = load i32, ptr %i.a, align 8
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @par_shapes_create_empty() local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #30

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @par_shapes_merge_and_free(ptr nofree noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  tail call void @par_shapes_merge(ptr noundef %0, ptr noundef %1)
  %i.a = load ptr, ptr %1, align 8
  tail call void @free(ptr noundef %i.a) #54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@GetRayCollisionQuad:bb.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @m3d_loaderhook(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @LoadFileData(ptr noundef %0, ptr noundef %1) #54
  ret ptr %i.a
}

declare ptr @LoadFileData(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define hidden void @m3d_freehook(ptr noundef %0) #0 {
bb.a:
  tail call void @UnloadFileData(ptr noundef %0) #54
  ret void
}

declare void @UnloadFileData(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #41

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #42

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @my_strdup(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %length_until_line_feed.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.c [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i
    i8 13, label %._crit_edge.loopexit.split.loop.exit.i
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %length_until_line_feed.exit, label %.lr.ph.i

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.lr.ph.i, %.lr.ph.i
  %i.d = trunc nuw i64 %indvars.iv.i to i32
  br label %length_until_line_feed.exit

length_until_line_feed.exit:                      ; preds = %bb.c, %bb.b, %._crit_edge.loopexit.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.d, %._crit_edge.loopexit.split.loop.exit.i ], [ %1, %bb.c ] ; 2 uses
  %i.e = add i32 %.0.lcssa.i, 1
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #56 ; 3 uses
  %i.h = zext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %length_until_line_feed.exit
  %.0 = phi ptr [ %i.g, %length_until_line_feed.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @parseFloat(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #20 {
bb.a:
  %.promoted.i = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %i.a = phi ptr [ %i.c, %.critedge.i ], [ %.promoted.i, %bb.a ] ; 7 uses
  %i.b = load i8, ptr %i.a, align 1               ; 5 uses
  switch i8 %i.b, label %skip_space.exit [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.c, ptr %0, align 8
  br label %bb.b

skip_space.exit:                                  ; preds = %bb.b, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 0, label %until_space.exit
    i8 32, label %until_space.exit
    i8 9, label %until_space.exit
    i8 13, label %until_space.exit
  ]

bb.c:                                             ; preds = %skip_space.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.e, align 1
  br label %skip_space.exit

until_space.exit:                                 ; preds = %skip_space.exit, %skip_space.exit, %skip_space.exit, %skip_space.exit
  %i.f = ptrtoint ptr %.0.i to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %sext = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext, 32                 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 8 uses
  %.not.i = icmp sgt i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %tryParseDouble.exit

bb.d:                                             ; preds = %until_space.exit
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = icmp eq i8 %i.b, 43
  %i.m = select i1 %i.l, double 1.000000e+00, double -1.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = sext i8 %i.b to i32
  %i.o = add nsw i32 %i.n, -48
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.g, label %tryParseDouble.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0103.i = phi double [ %i.m, %bb.e ], [ 1.000000e+00, %bb.f ]
  %.097.i = phi ptr [ %i.k, %bb.e ], [ %i.a, %bb.f ] ; 2 uses
  %.092.in.not141.i = icmp eq ptr %.097.i, %i.j
  br i1 %.092.in.not141.i, label %tryParseDouble.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.094144.i = phi i32 [ %i.y, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.198143.i = phi ptr [ %i.x, %bb.h ], [ %.097.i, %bb.g ] ; 5 uses
  %.0106142.i = phi double [ %i.w, %bb.h ], [ 0.000000e+00, %bb.g ] ; 6 uses
  %i.q = load i8, ptr %.198143.i, align 1         ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 10
  br i1 %i.t, label %bb.h, label %.critedge.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.u = fmul double %.0106142.i, 1.000000e+01
  %i.v = uitofp nneg i32 %i.s to double
  %i.w = fadd double %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %i.y = add nuw nsw i32 %.094144.i, 1
  %.092.in.not.i = icmp eq ptr %i.x, %i.j
  br i1 %.092.in.not.i, label %._crit_edge.i, label %.lr.ph.i

.critedge.thread.i:                               ; preds = %.lr.ph.i
  %i.z = icmp eq i32 %.094144.i, 0
  br i1 %i.z, label %tryParseDouble.exit, label %bb.i

bb.i:                                             ; preds = %.critedge.thread.i
  switch i8 %i.q, label %._crit_edge.i [
    i8 46, label %.preheader135.i
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.preheader135.i:                                  ; preds = %bb.i
  %.299148.i = getelementptr inbounds nuw i8, ptr %.198143.i, i64 1 ; 2 uses
  %.193.in.not149.i = icmp eq ptr %.299148.i, %i.j
  br i1 %.193.in.not149.i, label %._crit_edge.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.preheader135.i, %.epilog-lcssa
  %indvar = phi i32 [ %indvar.next, %.epilog-lcssa ], [ 0, %.preheader135.i ] ; 2 uses
  %.299152.i = phi ptr [ %.299.i, %.epilog-lcssa ], [ %.299148.i, %.preheader135.i ] ; 4 uses
  %.195151.i = phi i32 [ %i.aq, %.epilog-lcssa ], [ 1, %.preheader135.i ] ; 3 uses
  %.1107150.i = phi double [ %i.ap, %.epilog-lcssa ], [ %.0106142.i, %.preheader135.i ] ; 4 uses
  %i.aa = load i8, ptr %.299152.i, align 1        ; 2 uses
  %i.ab = sext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %.preheader134.i.preheader, label %bb.j

.preheader134.i.preheader:                        ; preds = %.lr.ph153.i
  %xtraiter = and i32 %.195151.i, 7               ; 3 uses
  %i.ae = icmp ult i32 %indvar, 7
  br i1 %i.ae, label %.preheader134.i.epil.preheader, label %.preheader134.i.preheader.new

.preheader134.i.preheader.new:                    ; preds = %.preheader134.i.preheader
  %unroll_iter = and i32 %.195151.i, 2147483640
  br label %.preheader134.i

.preheader134.i:                                  ; preds = %.preheader134.i, %.preheader134.i.preheader.new
  %.091146.i = phi double [ 1.000000e+00, %.preheader134.i.preheader.new ], [ %i.am, %.preheader134.i ]
  %niter = phi i32 [ 0, %.preheader134.i.preheader.new ], [ %niter.next.7, %.preheader134.i ]
  %i.af = fmul double %.091146.i, 1.000000e-01
  %i.ag = fmul double %i.af, 1.000000e-01
  %i.ah = fmul double %i.ag, 1.000000e-01
  %i.ai = fmul double %i.ah, 1.000000e-01
  %i.aj = fmul double %i.ai, 1.000000e-01
  %i.ak = fmul double %i.aj, 1.000000e-01
  %i.al = fmul double %i.ak, 1.000000e-01
  %i.am = fmul double %i.al, 1.000000e-01         ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader134.i

.unr-lcssa:                                       ; preds = %.preheader134.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader134.i.epil.preheader

.preheader134.i.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader134.i.preheader
  %.091146.i.epil.init = phi double [ 1.000000e+00, %.preheader134.i.preheader ], [ %i.am, %.unr-lcssa ]
  %lcmp.mod113 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %.preheader134.i.epil

.preheader134.i.epil:                             ; preds = %.preheader134.i.epil, %.preheader134.i.epil.preheader
  %.091146.i.epil = phi double [ %i.an, %.preheader134.i.epil ], [ %.091146.i.epil.init, %.preheader134.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader134.i.epil ], [ 0, %.preheader134.i.epil.preheader ]
  %i.an = fmul double %.091146.i.epil, 1.000000e-01 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader134.i.epil, !llvm.loop !205

.epilog-lcssa:                                    ; preds = %.preheader134.i.epil, %.unr-lcssa
  %.lcssa97 = phi double [ %i.am, %.unr-lcssa ], [ %i.an, %.preheader134.i.epil ]
  %i.ao = uitofp nneg i32 %i.ac to double
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %.lcssa97, double %.1107150.i) ; 2 uses
  %i.aq = add nuw nsw i32 %.195151.i, 1
  %.299.i = getelementptr inbounds nuw i8, ptr %.299152.i, i64 1 ; 2 uses
  %.193.in.not.i = icmp eq ptr %.299.i, %i.j
  %indvar.next = add i32 %indvar, 1
  br i1 %.193.in.not.i, label %._crit_edge.i, label %.lr.ph153.i

bb.j:                                             ; preds = %.lr.ph153.i
  switch i8 %i.aa, label %._crit_edge.i [
    i8 101, label %.thread130.i
    i8 69, label %.thread130.i
  ]

.thread130.i:                                     ; preds = %bb.j, %bb.j, %bb.i, %bb.i
  %.4129.i = phi ptr [ %.198143.i, %bb.i ], [ %.299152.i, %bb.j ], [ %.299152.i, %bb.j ], [ %.198143.i, %bb.i ] ; 2 uses
  %.3109128.i = phi double [ %.0106142.i, %bb.i ], [ %.1107150.i, %bb.j ], [ %.1107150.i, %bb.j ], [ %.0106142.i, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.4129.i, i64 1 ; 3 uses
  %.not121.i = icmp eq ptr %i.ar, %i.j
  %.pre.i = load i8, ptr %i.ar, align 1           ; 3 uses
  br i1 %.not121.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread130.i
  switch i8 %.pre.i, label %bb.m [
    i8 43, label %bb.l
    i8 45, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.4129.i, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.thread130.i
  %i.at = sext i8 %.pre.i to i32
  %i.au = add nsw i32 %i.at, -48
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.n, label %tryParseDouble.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0101.i = phi i8 [ %.pre.i, %bb.l ], [ 43, %bb.m ] ; 3 uses
  %.5.i = phi ptr [ %i.as, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %.3.in.not155.i = icmp eq ptr %.5.i, %i.j
  br i1 %.3.in.not155.i, label %tryParseDouble.exit, label %.lr.ph159.i

.lr.ph159.i:                                      ; preds = %bb.n, %bb.o
  %.296158.i = phi i32 [ %i.bd, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.6157.i = phi ptr [ %i.bc, %bb.o ], [ %.5.i, %bb.n ] ; 2 uses
  %.0104156.i = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.aw = load i8, ptr %.6157.i, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.o, label %.critedge4.i

bb.o:                                             ; preds = %.lr.ph159.i
  %i.ba = mul nsw i32 %.0104156.i, 10
  %i.bb = add nsw i32 %i.ay, %i.ba                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.6157.i, i64 1 ; 2 uses
  %i.bd = add nuw nsw i32 %.296158.i, 1
  %.3.in.not.i = icmp eq ptr %i.bc, %i.j
  br i1 %.3.in.not.i, label %.critedge2.i, label %.lr.ph159.i

.critedge4.i:                                     ; preds = %.lr.ph159.i
  %i.be = icmp eq i32 %.296158.i, 0
  br i1 %i.be, label %tryParseDouble.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.o, %.critedge4.i
  %.1105.i = phi i32 [ %.0104156.i, %.critedge4.i ], [ %i.bb, %bb.o ] ; 7 uses
  %i.bf = icmp sgt i32 %.1105.i, 0
  br i1 %i.bf, label %.lr.ph167.i.preheader, label %._crit_edge.i

.lr.ph167.i.preheader:                            ; preds = %.critedge2.i
  %xtraiter114 = and i32 %.1105.i, 7              ; 3 uses
  %i.bg = icmp ult i32 %.1105.i, 8
  br i1 %i.bg, label %.lr.ph167.i.epil.preheader, label %.lr.ph167.i.preheader.new

.lr.ph167.i.preheader.new:                        ; preds = %.lr.ph167.i.preheader
  %unroll_iter119 = and i32 %.1105.i, 2147483640
  br label %.lr.ph167.i

.lr.ph167.i:                                      ; preds = %.lr.ph167.i, %.lr.ph167.i.preheader.new
  %.088165.i = phi double [ 1.000000e+00, %.lr.ph167.i.preheader.new ], [ %i.bo, %.lr.ph167.i ]
  %niter120 = phi i32 [ 0, %.lr.ph167.i.preheader.new ], [ %niter120.next.7, %.lr.ph167.i ]
  %i.bh = fmul double %.088165.i, 5.000000e+00
  %i.bi = fmul double %i.bh, 5.000000e+00
  %i.bj = fmul double %i.bi, 5.000000e+00
  %i.bk = fmul double %i.bj, 5.000000e+00
  %i.bl = fmul double %i.bk, 5.000000e+00
  %i.bm = fmul double %i.bl, 5.000000e+00
  %i.bn = fmul double %i.bm, 5.000000e+00
  %i.bo = fmul double %i.bn, 5.000000e+00         ; 3 uses
  %niter120.next.7 = add nuw nsw i32 %niter120, 8 ; 2 uses
  %niter120.ncmp.7 = icmp eq i32 %niter120.next.7, %unroll_iter119
  br i1 %niter120.ncmp.7, label %.lr.ph171.i.preheader.unr-lcssa, label %.lr.ph167.i

.lr.ph171.i.preheader.unr-lcssa:                  ; preds = %.lr.ph167.i
  %lcmp.mod116.not = icmp eq i32 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil.preheader

.lr.ph167.i.epil.preheader:                       ; preds = %.lr.ph171.i.preheader.unr-lcssa, %.lr.ph167.i.preheader
  %.088165.i.epil.init = phi double [ 1.000000e+00, %.lr.ph167.i.preheader ], [ %i.bo, %.lr.ph171.i.preheader.unr-lcssa ]
  %lcmp.mod118 = icmp ne i32 %xtraiter114, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph167.i.epil

.lr.ph167.i.epil:                                 ; preds = %.lr.ph167.i.epil, %.lr.ph167.i.epil.preheader
  %.088165.i.epil = phi double [ %i.bp, %.lr.ph167.i.epil ], [ %.088165.i.epil.init, %.lr.ph167.i.epil.preheader ]
  %epil.iter115 = phi i32 [ %epil.iter115.next, %.lr.ph167.i.epil ], [ 0, %.lr.ph167.i.epil.preheader ]
  %i.bp = fmul double %.088165.i.epil, 5.000000e+00 ; 2 uses
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %.lr.ph171.i.preheader, label %.lr.ph167.i.epil, !llvm.loop !206

.lr.ph171.i.preheader:                            ; preds = %.lr.ph167.i.epil, %.lr.ph171.i.preheader.unr-lcssa
  %.lcssa92 = phi double [ %i.bo, %.lr.ph171.i.preheader.unr-lcssa ], [ %i.bp, %.lr.ph167.i.epil ] ; 2 uses
  %xtraiter121 = and i32 %.1105.i, 7              ; 3 uses
  %i.bq = icmp ult i32 %.1105.i, 8
  br i1 %i.bq, label %.lr.ph171.i.epil.preheader, label %.lr.ph171.i.preheader.new

.lr.ph171.i.preheader.new:                        ; preds = %.lr.ph171.i.preheader
  %unroll_iter126 = and i32 %.1105.i, 2147483640
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i, %.lr.ph171.i.preheader.new
  %.086169.i = phi double [ 1.000000e+00, %.lr.ph171.i.preheader.new ], [ %i.by, %.lr.ph171.i ]
  %niter127 = phi i32 [ 0, %.lr.ph171.i.preheader.new ], [ %niter127.next.7, %.lr.ph171.i ]
  %i.br = fmul double %.086169.i, 2.000000e+00
  %i.bs = fmul double %i.br, 2.000000e+00
  %i.bt = fmul double %i.bs, 2.000000e+00
  %i.bu = fmul double %i.bt, 2.000000e+00
  %i.bv = fmul double %i.bu, 2.000000e+00
  %i.bw = fmul double %i.bv, 2.000000e+00
  %i.bx = fmul double %i.bw, 2.000000e+00
  %i.by = fmul double %i.bx, 2.000000e+00         ; 3 uses
  %niter127.next.7 = add i32 %niter127, 8         ; 2 uses
  %niter127.ncmp.7 = icmp eq i32 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph171.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph171.i
  %lcmp.mod123.not = icmp eq i32 %xtraiter121, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.lr.ph171.i.epil.preheader

.lr.ph171.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.preheader
  %.086169.i.epil.init = phi double [ 1.000000e+00, %.lr.ph171.i.preheader ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i32 %xtraiter121, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph171.i.epil

.lr.ph171.i.epil:                                 ; preds = %.lr.ph171.i.epil, %.lr.ph171.i.epil.preheader
  %.086169.i.epil = phi double [ %i.bz, %.lr.ph171.i.epil ], [ %.086169.i.epil.init, %.lr.ph171.i.epil.preheader ]
  %epil.iter122 = phi i32 [ %epil.iter122.next, %.lr.ph171.i.epil ], [ 0, %.lr.ph171.i.epil.preheader ]
  %i.bz = fmul double %.086169.i.epil, 2.000000e+00 ; 2 uses
  %epil.iter122.next = add i32 %epil.iter122, 1   ; 2 uses
  %epil.iter122.cmp.not = icmp eq i32 %epil.iter122.next, %xtraiter121
  br i1 %epil.iter122.cmp.not, label %._crit_edge.i, label %.lr.ph171.i.epil, !llvm.loop !207

._crit_edge.i:                                    ; preds = %bb.h, %.epilog-lcssa, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph171.i.epil, %.critedge2.i, %bb.j, %.preheader135.i, %bb.i
  %.088.lcssa211.i = phi double [ %.lcssa92, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %.lcssa92, %.lr.ph171.i.epil ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %.4110202210.i = phi double [ %.3109128.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.3109128.i, %.critedge2.i ], [ %.1107150.i, %bb.j ], [ %i.ap, %.epilog-lcssa ], [ %.0106142.i, %bb.i ], [ %.0106142.i, %.preheader135.i ], [ %.3109128.i, %.lr.ph171.i.epil ], [ %i.w, %bb.h ]
  %.1102204209.i = phi i8 [ %.0101.i, %._crit_edge.i.loopexit.unr-lcssa ], [ %.0101.i, %.critedge2.i ], [ 43, %bb.j ], [ 43, %.epilog-lcssa ], [ 43, %bb.i ], [ 43, %.preheader135.i ], [ %.0101.i, %.lr.ph171.i.epil ], [ 43, %bb.h ]
  %.086.lcssa.i = phi double [ %i.bz, %.lr.ph171.i.epil ], [ 1.000000e+00, %.critedge2.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %.epilog-lcssa ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %.preheader135.i ], [ %i.by, %._crit_edge.i.loopexit.unr-lcssa ], [ 1.000000e+00, %bb.h ] ; 2 uses
  %i.ca = icmp eq i8 %.1102204209.i, 45           ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %.088.lcssa211.i, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %.086.lcssa.i, i64 1
  %i.cd = fdiv <2 x double> splat (double 1.000000e+00), %i.cc ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %.189.i = select i1 %i.ca, double %i.ce, double %.088.lcssa211.i
  %i.cf = extractelement <2 x double> %i.cd, i64 1
  %.187.i = select i1 %i.ca, double %i.cf, double %.086.lcssa.i
  %i.cg = fmul double %.4110202210.i, %.189.i
  %i.ch = fmul double %i.cg, %.187.i
  %i.ci = fmul double %.0103.i, %i.ch
  %i.cj = fptrunc double %i.ci to float
  br label %tryParseDouble.exit

tryParseDouble.exit:                              ; preds = %until_space.exit, %bb.f, %bb.g, %.critedge.thread.i, %bb.m, %bb.n, %.critedge4.i, %._crit_edge.i
  %.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.cj, %._crit_edge.i ], [ 0.000000e+00, %.critedge.thread.i ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %.critedge4.i ], [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %until_space.exit ]
  store ptr %i.j, ptr %0, align 8
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsmn_parse(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, i64 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %0, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
end_hunk_1
