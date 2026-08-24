Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@par_shapes_create_cone:bb.a
  %i.bc = add nuw i32 %.077108.i, 1
  %exitcond126.not.i = icmp eq i32 %.077108.i, %1
  br i1 %exitcond126.not.i, label %.preheader.i.preheader, label %.lr.ph103.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.076101.i = phi i32 [ %i.bh, %scalar.ph ], [ %i.u, %middle.block ] ; 3 uses
  %.179100.i = phi ptr [ %i.bg, %scalar.ph ], [ %i.ax, %middle.block ] ; 3 uses
  %i.bd = uitofp nneg i32 %.076101.i to float
  %i.be = fdiv float %i.bd, %i.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.179100.i, i64 4
  store float %i.aw, ptr %.179100.i, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.179100.i, i64 8 ; 2 uses
  store float %i.be, ptr %i.bf, align 4
  %i.bh = add nuw i32 %.076101.i, 1
  %exitcond125.not.i = icmp eq i32 %.076101.i, %0
  br i1 %exitcond125.not.i, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !85

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge116.i
  %.073120.i = phi i32 [ %i.ca, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ]
  %.074119.i = phi ptr [ %.lcssa, %._crit_edge116.i ], [ %i.at, %.preheader.i.preheader ]
  %.075118.i = phi i32 [ %i.bz, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ] ; 7 uses
  br label %bb.c

._crit_edge116.i.unr-lcssa:                       ; preds = %bb.c
  br i1 %lcmp.mod.not, label %._crit_edge116.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.bi = add nuw nsw i32 %i.cs, 1
  %i.bj = add nuw nsw i32 %i.cs, %.075118.i       ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, %0
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add i16 %i.bl, 1                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i16 %i.bm, ptr %i.di, align 2
  %i.bo = add nuw nsw i32 %i.bi, %.075118.i       ; 2 uses
  %i.bp = trunc i32 %i.bo to i16                  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i16 %i.bp, ptr %i.bn, align 2
  %i.br = trunc i32 %i.bj to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.br, ptr %i.bq, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i16 %i.bm, ptr %i.bs, align 2
  %i.bu = add nuw nsw i32 %i.bo, %0
  %i.bv = trunc i32 %i.bu to i16
  %i.bw = add i16 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  store i16 %i.bw, ptr %i.bt, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i16 %i.bp, ptr %i.bx, align 2
  br label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %._crit_edge116.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.di, %._crit_edge116.i.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %i.bz = add nuw nsw i32 %.075118.i, %i.d
  %i.ca = add nuw nsw i32 %.073120.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.ca, %1
  br i1 %exitcond128.not.i, label %par_shapes_create_parametric.exit, label %.preheader.i

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.0114.i = phi i32 [ 0, %.preheader.i ], [ %i.cs, %bb.c ] ; 3 uses
  %.1113.i = phi ptr [ %.074119.i, %.preheader.i ], [ %i.di, %bb.c ] ; 13 uses
  %niter = phi i32 [ 0, %.preheader.i ], [ %niter.next.1, %bb.c ]
  %i.cb = or disjoint i32 %.0114.i, 1             ; 2 uses
  %i.cc = add nuw nsw i32 %.0114.i, %.075118.i    ; 2 uses
  %i.cd = add nuw nsw i32 %i.cc, %0
  %i.ce = trunc i32 %i.cd to i16
  %i.cf = add i16 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1113.i, i64 2
  store i16 %i.cf, ptr %.1113.i, align 2
  %i.ch = add nuw nsw i32 %i.cb, %.075118.i       ; 2 uses
  %i.ci = trunc i32 %i.ch to i16                  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1113.i, i64 4
  store i16 %i.ci, ptr %i.cg, align 2
  %i.ck = trunc i32 %i.cc to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %.1113.i, i64 6
  store i16 %i.ck, ptr %i.cj, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.1113.i, i64 8
  store i16 %i.cf, ptr %i.cl, align 2
  %i.cn = add nuw nsw i32 %i.ch, %0
  %i.co = trunc i32 %i.cn to i16
  %i.cp = add i16 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.1113.i, i64 10
  store i16 %i.cp, ptr %i.cm, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %.1113.i, i64 12
  store i16 %i.ci, ptr %i.cq, align 2
  %i.cs = add nuw nsw i32 %.0114.i, 2             ; 4 uses
  %i.ct = add nuw nsw i32 %i.cb, %.075118.i       ; 2 uses
  %i.cu = add nuw nsw i32 %i.ct, %0
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = add i16 %i.cv, 1                        ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1113.i, i64 14
  store i16 %i.cw, ptr %i.cr, align 2
  %i.cy = add nuw nsw i32 %i.cs, %.075118.i       ; 2 uses
  %i.cz = trunc i32 %i.cy to i16                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1113.i, i64 16
  store i16 %i.cz, ptr %i.cx, align 2
  %i.db = trunc i32 %i.ct to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %.1113.i, i64 18
  store i16 %i.db, ptr %i.da, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.1113.i, i64 20
  store i16 %i.cw, ptr %i.dc, align 2
  %i.de = add nuw nsw i32 %i.cy, %0
  %i.df = trunc i32 %i.de to i16
  %i.dg = add i16 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.1113.i, i64 22
  store i16 %i.dg, ptr %i.dd, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %.1113.i, i64 24 ; 9 uses
  store i16 %i.cz, ptr %i.dh, align 2
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge116.i.unr-lcssa, label %bb.c

par_shapes_create_parametric.exit:                ; preds = %._crit_edge116.i
  tail call void @par_shapes__compute_welded_normals(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %par_shapes_create_parametric.exit
  %.0 = phi ptr [ %i.c, %par_shapes_create_parametric.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_parametric_disk(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @par_shapes_create_cone(i32 noundef %0, i32 noundef %1) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %par_shapes_scale.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %par_shapes_scale.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.c, 2147483644
  br label %.lr.ph.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.preheader.i
  %.05768.i.epil.init = phi ptr [ %i.e, %.lr.ph.preheader.i ], [ %i.w, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod10 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05768.i.epil = phi ptr [ %i.h, %.lr.ph.i.epil ], [ %.05768.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.g = getelementptr inbounds nuw i8, ptr %.05768.i.epil, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05768.i.epil, i64 12
  %i.i = load float, ptr %i.g, align 4
  %i.j = fmul float %i.i, 0.000000e+00
  store float %i.j, ptr %i.g, align 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not65.i = icmp eq ptr %i.l, null
  br i1 %.not65.i, label %par_shapes_scale.exit, label %.lr.ph73.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.05768.i = phi ptr [ %i.e, %.lr.ph.preheader.i.new ], [ %i.w, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.05768.i, i64 8 ; 2 uses
  %i.n = load float, ptr %i.m, align 4
  %i.o = fmul float %i.n, 0.000000e+00
  store float %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.05768.i, i64 20 ; 2 uses
  %i.q = load float, ptr %i.p, align 4
  %i.r = fmul float %i.q, 0.000000e+00
  store float %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.05768.i, i64 32 ; 2 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fmul float %i.t, 0.000000e+00
  store float %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.05768.i, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05768.i, i64 48 ; 2 uses
  %i.x = load float, ptr %i.v, align 4
  %i.y = fmul float %i.x, 0.000000e+00
  store float %i.y, ptr %i.v, align 4
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i

.lr.ph73.i:                                       ; preds = %._crit_edge.i, %par_shapes__normalize3.exit.i
  %.071.i = phi i32 [ %i.ak, %par_shapes__normalize3.exit.i ], [ 0, %._crit_edge.i ]
  %.05570.i = phi ptr [ %i.al, %par_shapes__normalize3.exit.i ], [ %i.l, %._crit_edge.i ] ; 5 uses
  %i.z = load <2 x float>, ptr %.05570.i, align 4
  %i.aa = fmul <2 x float> %i.z, zeroinitializer  ; 5 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  store <2 x float> %i.aa, ptr %.05570.i, align 4
  %2 = getelementptr inbounds nuw i8, ptr %.05570.i, i64 8 ; 2 uses
  %3 = load float, ptr %2, align 4                ; 3 uses
  %foldExtExtBinop = fmul ninf <2 x float> %i.aa, %i.aa
  %4 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %4)
  %i.ad = tail call float @llvm.fmuladd.f32(float %3, float %3, float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.c, label %par_shapes__normalize3.exit.i

bb.c:                                             ; preds = %.lr.ph73.i
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ad)
  %i.af = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.aa, %i.ah
  store <2 x float> %i.ai, ptr %.05570.i, align 4
  %i.aj = fmul float %3, %i.af
  store float %i.aj, ptr %2, align 4
  br label %par_shapes__normalize3.exit.i

par_shapes__normalize3.exit.i:                    ; preds = %bb.c, %.lr.ph73.i
  %i.ak = add nuw nsw i32 %.071.i, 1              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05570.i, i64 12
  %exitcond5.not = icmp eq i32 %i.ak, %i.c
  br i1 %exitcond5.not, label %par_shapes_scale.exit, label %.lr.ph73.i

par_shapes_scale.exit:                            ; preds = %par_shapes__normalize3.exit.i, %bb.b, %._crit_edge.i, %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @par_shapes_scale(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = insertelement <2 x float> %i.e, float %2, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = icmp sgt i32 %i.r, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.h = phi i1 [ %i.g, %._crit_edge.loopexit ], [ false, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not65 = icmp eq ptr %i.j, null
  br i1 %.not65, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05669 = phi i32 [ %i.q, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05768 = phi ptr [ %i.n, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05768, i64 8 ; 2 uses
  %i.l = load <2 x float>, ptr %.05768, align 4
  %i.m = fmul <2 x float> %i.f, %i.l
  store <2 x float> %i.m, ptr %.05768, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.05768, i64 12
  %i.o = load float, ptr %i.k, align 4
  %i.p = fmul float %3, %i.o
  store float %i.p, ptr %i.k, align 4
  %i.q = add nuw nsw i32 %.05669, 1               ; 2 uses
  %i.r = load i32, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.t = fcmp oeq float %1, %2
  %i.u = fcmp oeq float %2, %3
  %or.cond67 = and i1 %i.t, %i.u
  br i1 %or.cond67, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = fcmp oeq float %1, 0.000000e+00          ; 3 uses
  %i.w = fcmp oeq float %2, 0.000000e+00          ; 3 uses
  %i.x = fcmp oeq float %3, 0.000000e+00          ; 4 uses
  %or.cond = or i1 %i.v, %i.w                     ; 2 uses
  %or.cond3 = or i1 %or.cond, %i.x
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = insertelement <2 x float> poison, float %1, i64 0
  %i.z = insertelement <2 x float> %i.y, float %2, i64 1
  %i.aa = fdiv <2 x float> splat (float 1.000000e+00), %i.z
  %i.ab = fdiv float 1.000000e+00, %3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = or i1 %i.w, %i.x
  %i.ad = or i1 %i.v, %i.x
  %i.ae = xor i1 %i.ad, true
  %i.af = xor i1 %i.ac, true
  %i.ag = and i1 %i.w, %i.ae
  %i.ah = and i1 %i.v, %i.af
  %i.ai = uitofp i1 %i.ah to float
  %i.aj = uitofp i1 %i.ag to float
  %i.ak = xor i1 %or.cond, true
  %i.al = and i1 %i.x, %i.ak
  %i.am = uitofp i1 %i.al to float
  %i.an = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aj, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.058 = phi float [ %i.am, %bb.e ], [ %i.ab, %bb.d ]
  %i.ap = phi <2 x float> [ %i.ao, %bb.e ], [ %i.aa, %bb.d ]
  br i1 %i.h, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.f, %par_shapes__normalize3.exit
  %.071 = phi i32 [ %i.be, %par_shapes__normalize3.exit ], [ 0, %bb.f ]
  %.05570 = phi ptr [ %i.bf, %par_shapes__normalize3.exit ], [ %i.j, %bb.f ] ; 5 uses
  %i.aq = load <2 x float>, ptr %.05570, align 4
  %i.ar = fmul <2 x float> %i.ap, %i.aq           ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  store <2 x float> %i.ar, ptr %.05570, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.05570, i64 8 ; 3 uses
  %i.au = load float, ptr %i.at, align 4
  %i.av = fmul float %.058, %i.au                 ; 4 uses
  store float %i.av, ptr %i.at, align 4
  %foldExtExtBinop = fmul <2 x float> %i.ar, %i.ar
  %4 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %4)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.aw) ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.g, label %par_shapes__normalize3.exit

bb.g:                                             ; preds = %.lr.ph73
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.az = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.ar, %i.bb
  store <2 x float> %i.bc, ptr %.05570, align 4
  %i.bd = fmul float %i.av, %i.az
  store float %i.bd, ptr %i.at, align 4
  br label %par_shapes__normalize3.exit

par_shapes__normalize3.exit:                      ; preds = %.lr.ph73, %bb.g
  %i.be = add nuw nsw i32 %.071, 1                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05570, i64 12
  %i.bg = load i32, ptr %i.a, align 8
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph73, label %.loopexit

.loopexit:                                        ; preds = %par_shapes__normalize3.exit, %bb.f, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @par_shapes_create_parametric_sphere(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 3
  %i.b = icmp slt i32 %1, 3
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 8 uses
  %i.d = add nuw i32 %0, 1                        ; 2 uses
  %i.e = add nuw i32 %1, 1
  %i.f = mul nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.f, ptr %i.g, align 8
  %i.h = mul nsw i32 %i.f, 3
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #57 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8
  %i.l = uitofp nneg i32 %1 to float              ; 2 uses
  %i.m = uitofp nneg i32 %0 to float              ; 3 uses
  br label %.lr.ph.i

._crit_edge97.i:                                  ; preds = %._crit_edge.i
  %i.n = shl nsw i32 %i.f, 1
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.p, i64 noundef 1) #57 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.q, ptr %i.r, align 8
  %i.s = add nuw i32 %0, 1
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %n.vec = and i64 %i.t, 4294967292               ; 4 uses
  %i.u = trunc nuw i64 %n.vec to i32
  %i.v = shl nuw nsw i64 %n.vec, 3
  %broadcast.splatinsert21 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat22 = shufflevector <4 x float> %broadcast.splatinsert21, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br label %.lr.ph103.i

.lr.ph.i:                                         ; preds = %.lr.ph96.i, %._crit_edge.i
  %.08194.i = phi i32 [ %i.ab, %._crit_edge.i ], [ 0, %.lr.ph96.i ] ; 3 uses
  %.08293.i = phi ptr [ %i.ar, %._crit_edge.i ], [ %i.k, %.lr.ph96.i ]
  %i.w = uitofp nneg i32 %.08194.i to float
  %i.x = fdiv float %i.w, %i.l
  %i.y = fpext float %i.x to double
  %i.z = fmul double %i.y, f0x400921FB54442EEA
  %i.aa = fptrunc double %i.z to float            ; 3 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b
  %i.ab = add nuw i32 %.08194.i, 1
  %exitcond124.not.i = icmp eq i32 %.08194.i, %1
  br i1 %exitcond124.not.i, label %._crit_edge97.i, label %.lr.ph.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.08091.i = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %bb.b ] ; 3 uses
  %.18390.i = phi ptr [ %.08293.i, %.lr.ph.i ], [ %i.ar, %bb.b ] ; 4 uses
  %i.ac = uitofp nneg i32 %.08091.i to float
  %i.ad = fdiv float %i.ac, %i.m
  %i.ae = fmul float %i.ad, 2.000000e+00
  %i.af = fpext float %i.ae to double
  %i.ag = fmul double %i.af, f0x400921FB54442EEA
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = tail call float @cosf(float noundef %i.ah) #54
  %i.aj = tail call float @sinf(float noundef %i.aa) #54
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = tail call float @sinf(float noundef %i.ah) #54
  %i.am = tail call float @sinf(float noundef %i.aa) #54
  %i.an = fmul float %i.al, %i.am
  %i.ao = tail call float @cosf(float noundef %i.aa) #54
  %i.ap = getelementptr inbounds nuw i8, ptr %.18390.i, i64 4
  store float %i.ak, ptr %.18390.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.18390.i, i64 8
  store float %i.an, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.18390.i, i64 12 ; 2 uses
  store float %i.ao, ptr %i.aq, align 4
  %i.as = add nuw i32 %.08091.i, 1
  %exitcond.not.i = icmp eq i32 %.08091.i, %0
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

.preheader.i.preheader:                           ; preds = %._crit_edge104.i
  %i.at = shl nuw nsw i32 %0, 1
  %i.au = mul nuw nsw i32 %i.at, %1               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = mul i32 %i.au, 6
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call noalias ptr @calloc(i64 noundef %i.ax, i64 noundef 1) #57 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ay, ptr %i.az, align 8
  %xtraiter = and i32 %0, 1
  %unroll_iter = and i32 %0, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod26 = trunc i32 %0 to i1
  br label %.preheader.i

.lr.ph103.i:                                      ; preds = %._crit_edge97.i, %._crit_edge104.i
  %.077108.i = phi i32 [ %i.bh, %._crit_edge104.i ], [ 0, %._crit_edge97.i ] ; 3 uses
  %.078107.i = phi ptr [ %.lcssa19, %._crit_edge104.i ], [ %i.q, %._crit_edge97.i ] ; 2 uses
  %i.ba = uitofp nneg i32 %.077108.i to float
  %i.bb = fdiv float %i.ba, %i.l                  ; 2 uses
  %i.bc = getelementptr i8, ptr %.078107.i, i64 %i.v ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bb, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph103.i
  %index = phi i64 [ 0, %.lr.ph103.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph103.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.078107.i, i64 %i.bd
  %i.be = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bf = fdiv <4 x float> %i.be, %broadcast.splat22
  %interleaved.vec = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %i.bf, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph

._crit_edge104.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa19 = phi ptr [ %i.bc, %middle.block ], [ %i.bl, %scalar.ph ]
  %i.bh = add nuw i32 %.077108.i, 1
  %exitcond126.not.i = icmp eq i32 %.077108.i, %1
  br i1 %exitcond126.not.i, label %.preheader.i.preheader, label %.lr.ph103.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.076101.i = phi i32 [ %i.bm, %scalar.ph ], [ %i.u, %middle.block ] ; 3 uses
  %.179100.i = phi ptr [ %i.bl, %scalar.ph ], [ %i.bc, %middle.block ] ; 3 uses
  %i.bi = uitofp nneg i32 %.076101.i to float
  %i.bj = fdiv float %i.bi, %i.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.179100.i, i64 4
  store float %i.bb, ptr %.179100.i, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.179100.i, i64 8 ; 2 uses
  store float %i.bj, ptr %i.bk, align 4
  %i.bm = add nuw i32 %.076101.i, 1
  %exitcond125.not.i = icmp eq i32 %.076101.i, %0
  br i1 %exitcond125.not.i, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !88

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge116.i
  %.073120.i = phi i32 [ %i.cf, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ]
  %.074119.i = phi ptr [ %.lcssa, %._crit_edge116.i ], [ %i.ay, %.preheader.i.preheader ]
  %.075118.i = phi i32 [ %i.ce, %._crit_edge116.i ], [ 0, %.preheader.i.preheader ] ; 7 uses
  br label %bb.c

._crit_edge116.i.unr-lcssa:                       ; preds = %bb.c
  br i1 %lcmp.mod.not, label %._crit_edge116.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge116.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.bn = add nuw nsw i32 %i.cx, 1
  %i.bo = add nuw nsw i32 %i.cx, %.075118.i       ; 2 uses
  %i.bp = add nuw nsw i32 %i.bo, %0
  %i.bq = trunc i32 %i.bp to i16
  %i.br = add i16 %i.bq, 1                        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.br, ptr %i.dn, align 2
  %i.bt = add nuw nsw i32 %i.bn, %.075118.i       ; 2 uses
  %i.bu = trunc i32 %i.bt to i16                  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i16 %i.bu, ptr %i.bs, align 2
  %i.bw = trunc i32 %i.bo to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.dn, i64 6
  store i16 %i.bw, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i16 %i.br, ptr %i.bx, align 2
  %i.bz = add nuw nsw i32 %i.bt, %0
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = add i16 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
end_hunk_0
