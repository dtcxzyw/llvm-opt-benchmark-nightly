Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86?download=true
inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
  %min.iters.check29 = icmp ult i32 %i.ac, 7
  %n.vec31 = and i64 %i.ae, 8589934584            ; 4 uses
  %i.af = trunc i64 %n.vec31 to i32
  %i.ag = add i32 %i.v, %i.af
  %i.ah = shl nuw nsw i64 %n.vec31, 2
  %cmp.n39 = icmp eq i64 %i.ae, %n.vec31
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.c, %.lr.ph.us.preheader.i
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next76.i, %bb.c ] ; 2 uses
  %.04928.us.i = phi ptr [ %i.n, %.lr.ph.us.preheader.i ], [ %.2.us.i, %bb.c ] ; 5 uses
  %.05127.us.i = phi ptr [ %i.m, %.lr.ph.us.preheader.i ], [ %.253.us.i, %bb.c ] ; 5 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23
  %i.aj = mul nsw i64 %indvars.iv75.i, %i.w
  %i.ak = add nsw i64 %i.aj, %i.l
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 2 uses
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.04618.us.i = phi ptr [ %i.bg, %.lr.ph.us.i.new ], [ %i.am, %.lr.ph.us.i ] ; 5 uses
  %.01317.us.i = phi <4 x float> [ %i.bf, %.lr.ph.us.i.new ], [ zeroinitializer, %.lr.ph.us.i ]
  %niter60 = phi i32 [ %niter60.next.3, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.an = load <4 x i32>, ptr %.04618.us.i, align 1, !tbaa !87
  %i.ao = and <4 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <4 x i32> %i.ao to <4 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i, <4 x float> nofpclass(nan inf) %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !87
  %i.at = and <4 x i32> %i.as, splat (i32 2147483647)
  %i.au = bitcast <4 x i32> %i.at to <4 x float>
  %i.av = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aq, <4 x float> nofpclass(nan inf) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 32
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !87
  %i.ay = and <4 x i32> %i.ax, splat (i32 2147483647)
  %i.az = bitcast <4 x i32> %i.ay to <4 x float>
  %i.ba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.av, <4 x float> nofpclass(nan inf) %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 48
  %i.bc = load <4 x i32>, ptr %i.bb, align 1, !tbaa !87
  %i.bd = and <4 x i32> %i.bc, splat (i32 2147483647)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ba, <4 x float> nofpclass(nan inf) %i.be) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04618.us.i, i64 64 ; 3 uses
  %niter60.next.3 = add nuw nsw i32 %niter60, 4   ; 2 uses
  %niter60.ncmp.3.not = icmp eq i32 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3.not, label %..preheader_crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !3

.lr.ph25.us.i:                                    ; preds = %.lr.ph25.us.i.preheader42, %.lr.ph25.us.i
  %.124.us.i = phi i32 [ %i.bk, %.lr.ph25.us.i ], [ %.124.us.i.ph, %.lr.ph25.us.i.preheader42 ]
  %.14723.us.i = phi ptr [ %i.bj, %.lr.ph25.us.i ], [ %.14723.us.i.ph, %.lr.ph25.us.i.preheader42 ] ; 2 uses
  %.01422.us.i = phi float [ %.sroa.speculated4.us.i, %.lr.ph25.us.i ], [ %.01422.us.i.ph, %.lr.ph25.us.i.preheader42 ]
  %i.bh = load float, ptr %.14723.us.i, align 4, !tbaa !67
  %i.bi = tail call fast float @llvm.fabs.f32(float %i.bh)
  %.sroa.speculated4.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i, float %i.bi) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.14723.us.i, i64 4
  %i.bk = add nuw nsw i32 %.124.us.i, 1           ; 2 uses
  %exitcond74.not.i = icmp eq i32 %i.bk, %i.p
  br i1 %exitcond74.not.i, label %._crit_edge.us.i, label %.lr.ph25.us.i, !llvm.loop !671

._crit_edge.us.i:                                 ; preds = %.lr.ph25.us.i, %middle.block38, %..preheader_crit_edge.us.i
  %.014.lcssa.us.i = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i ], [ %i.cl, %middle.block38 ], [ %.sroa.speculated4.us.i, %.lr.ph25.us.i ]
  switch i32 %i.b, label %bb.c [
    i32 4, label %.thread.us.i
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %._crit_edge.us.i
  %i.bl = shufflevector <4 x float> %.lcssa43, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa43, <4 x float> nofpclass(nan inf) %i.bl) ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.bm, <4 x float> nofpclass(nan inf) %i.bn)
  %i.bp = extractelement <4 x float> %i.bo, i64 0
  %.sroa.speculated.us.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i, float %i.bp) ; 2 uses
  %i.bq = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i
  store float %i.bq, ptr %.05127.us.i, align 4, !tbaa !67
  %i.br = fmul fast float %.sroa.speculated.us.i, %i.q
  store float %i.br, ptr %.04928.us.i, align 4, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %.05127.us.i, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.04928.us.i, i64 4
  br label %bb.c

.thread.us.i:                                     ; preds = %._crit_edge.us.i
  %i.bu = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa43
  %i.bv = fmul fast <4 x float> %.lcssa43, %i.s
  store <4 x float> %i.bu, ptr %.05127.us.i, align 16, !tbaa !87
  store <4 x float> %i.bv, ptr %.04928.us.i, align 16, !tbaa !87
  %i.bw = getelementptr inbounds nuw i8, ptr %.05127.us.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.04928.us.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread.us.i, %bb.b, %._crit_edge.us.i
  %.253.us.i = phi ptr [ %i.bs, %bb.b ], [ %.05127.us.i, %._crit_edge.us.i ], [ %i.bw, %.thread.us.i ]
  %.2.us.i = phi ptr [ %i.bt, %bb.b ], [ %.04928.us.i, %._crit_edge.us.i ], [ %i.bx, %.thread.us.i ]
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, %wide.trip.count78.i
  br i1 %exitcond79.not.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.lr.ph.us.i, !llvm.loop !4

..preheader_crit_edge.us.i.unr-lcssa:             ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod55.not, label %..preheader_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.04618.us.i.epil.init = phi ptr [ %i.am, %.lr.ph.us.i ], [ %i.bg, %..preheader_crit_edge.us.i.unr-lcssa ]
  %.01317.us.i.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i ], [ %i.bf, %..preheader_crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.04618.us.i.epil = phi ptr [ %.04618.us.i.epil.init, %.epil.preheader ], [ %i.cc, %bb.d ] ; 2 uses
  %.01317.us.i.epil = phi <4 x float> [ %.01317.us.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.d ]
  %epil.iter54 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter54.next, %bb.d ]
  %i.by = load <4 x i32>, ptr %.04618.us.i.epil, align 1, !tbaa !87
  %i.bz = and <4 x i32> %i.by, splat (i32 2147483647)
  %i.ca = bitcast <4 x i32> %i.bz to <4 x float>
  %i.cb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.epil, <4 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.04618.us.i.epil, i64 16 ; 2 uses
  %epil.iter54.next = add i32 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i32 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %..preheader_crit_edge.us.i, label %bb.d, !llvm.loop !672

..preheader_crit_edge.us.i:                       ; preds = %bb.d, %..preheader_crit_edge.us.i.unr-lcssa
  %.lcssa43 = phi <4 x float> [ %i.bf, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.cb, %bb.d ] ; 4 uses
  %.lcssa = phi ptr [ %i.bg, %..preheader_crit_edge.us.i.unr-lcssa ], [ %i.cc, %bb.d ] ; 3 uses
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph25.us.i.preheader

.lr.ph25.us.i.preheader:                          ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check29, label %.lr.ph25.us.i.preheader42, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph25.us.i.preheader
  %i.cd = getelementptr i8, ptr %.lcssa, i64 %i.ah
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body32 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph30 ], [ %i.ci, %vector.body32 ]
  %vec.phi34 = phi <4 x float> [ zeroinitializer, %vector.ph30 ], [ %i.cj, %vector.body32 ]
  %i.ce = shl i64 %index33, 2
  %next.gep35 = getelementptr i8, ptr %.lcssa, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <4 x float>, ptr %next.gep35, align 4, !tbaa !67
  %wide.load36 = load <4 x float>, ptr %i.cf, align 4, !tbaa !67
  %i.cg = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.ch = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load36)
  %i.ci = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.cg) ; 2 uses
  %i.cj = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi34, <4 x float> %i.ch) ; 2 uses
  %index.next37 = add nuw i64 %index33, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.ck, label %middle.block38, label %vector.body32, !llvm.loop !673

middle.block38:                                   ; preds = %vector.body32
  %rdx.minmax.select = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ci, <4 x float> %i.cj)
  %i.cl = tail call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n39, label %._crit_edge.us.i, label %.lr.ph25.us.i.preheader42

.lr.ph25.us.i.preheader42:                        ; preds = %.lr.ph25.us.i.preheader, %middle.block38
  %.124.us.i.ph = phi i32 [ %i.v, %.lr.ph25.us.i.preheader ], [ %i.ag, %middle.block38 ]
  %.14723.us.i.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.preheader ], [ %i.cd, %middle.block38 ]
  %.01422.us.i.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.preheader ], [ %i.cl, %middle.block38 ]
  br label %.lr.ph25.us.i

.lr.ph31.split.i:                                 ; preds = %.lr.ph31.i
  %i.cm = icmp sgt i32 %i.p, 0
  br i1 %i.cm, label %.preheader.us33.preheader.i, label %.lr.ph31.split.split.i

.preheader.us33.preheader.i:                      ; preds = %.lr.ph31.split.i
  %i.cn = sext i32 %i.b to i64
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %.pre80.i = load ptr, ptr %0, align 8, !tbaa !23
  %exitcond71.not.i = icmp eq i32 %i.p, 1
  %exitcond71.not.i.1 = icmp eq i32 %i.p, 2
  br label %.preheader.us33.i

.preheader.us33.i:                                ; preds = %bb.h, %.preheader.us33.preheader.i
  %i.co = phi ptr [ %.pre80.i, %.preheader.us33.preheader.i ], [ %i.dh, %bb.h ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader.us33.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.04928.us35.i = phi ptr [ %i.n, %.preheader.us33.preheader.i ], [ %.2.us48.i, %bb.h ] ; 5 uses
  %.05127.us36.i = phi ptr [ %i.m, %.preheader.us33.preheader.i ], [ %.253.us47.i, %bb.h ] ; 5 uses
  %i.cp = mul nsw i64 %indvars.iv.i, %i.cn
  %i.cq = add nsw i64 %i.cp, %i.l
  %i.cr = mul i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !67
  %i.cu = tail call fast float @llvm.fabs.f32(float %i.ct)
  %.sroa.speculated4.us41.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.cu, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i, label %._crit_edge.us42.i, label %bb.e

bb.e:                                             ; preds = %.preheader.us33.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !67
  %i.cx = tail call fast float @llvm.fabs.f32(float %i.cw)
  %.sroa.speculated4.us41.i.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i, float %i.cx) ; 2 uses
  br i1 %exitcond71.not.i.1, label %._crit_edge.us42.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !67
  %i.da = tail call fast float @llvm.fabs.f32(float %i.cz)
  %.sroa.speculated4.us41.i.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i.1, float %i.da)
  br label %._crit_edge.us42.i

._crit_edge.us42.i:                               ; preds = %bb.f, %bb.e, %.preheader.us33.i
  %.sroa.speculated4.us41.i.lcssa = phi float [ %.sroa.speculated4.us41.i, %.preheader.us33.i ], [ %.sroa.speculated4.us41.i.1, %bb.e ], [ %.sroa.speculated4.us41.i.2, %bb.f ] ; 2 uses
  switch i32 %i.b, label %bb.h [
    i32 4, label %.thread.us46.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %._crit_edge.us42.i
  %i.db = fdiv fast float 1.270000e+02, %.sroa.speculated4.us41.i.lcssa
  store float %i.db, ptr %.05127.us36.i, align 4, !tbaa !67
  %i.dc = fmul fast float %.sroa.speculated4.us41.i.lcssa, %i.q
  store float %i.dc, ptr %.04928.us35.i, align 4, !tbaa !67
  %i.dd = getelementptr inbounds nuw i8, ptr %.05127.us36.i, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.04928.us35.i, i64 4
  br label %bb.h

.thread.us46.i:                                   ; preds = %._crit_edge.us42.i
  store <4 x float> splat (float +inf), ptr %.05127.us36.i, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us35.i, align 16, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %.05127.us36.i, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.04928.us35.i, i64 16
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %.thread.us46.i, %bb.g, %._crit_edge.us42.i
  %i.dh = phi ptr [ %i.co, %bb.g ], [ %i.co, %._crit_edge.us42.i ], [ %.pre.i, %.thread.us46.i ]
  %.253.us47.i = phi ptr [ %i.dd, %bb.g ], [ %.05127.us36.i, %._crit_edge.us42.i ], [ %i.df, %.thread.us46.i ]
  %.2.us48.i = phi ptr [ %i.de, %bb.g ], [ %.04928.us35.i, %._crit_edge.us42.i ], [ %i.dg, %.thread.us46.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond73.not.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.preheader.us33.i, !llvm.loop !4

.lr.ph31.split.split.i:                           ; preds = %.lr.ph31.split.i
  switch i32 %i.b, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit [
    i32 4, label %.preheader.us49.i.preheader
    i32 1, label %.preheader.us57.i.preheader
  ]

.preheader.us49.i.preheader:                      ; preds = %.lr.ph31.split.split.i
  %xtraiter50 = and i32 %i.o, 7                   ; 3 uses
  %i.di = icmp ult i32 %i.o, 8
  br i1 %i.di, label %.preheader.us49.i.epil.preheader, label %.preheader.us49.i.preheader.new

.preheader.us49.i.preheader.new:                  ; preds = %.preheader.us49.i.preheader
  %unroll_iter = and i32 %i.o, 2147483640
  br label %.preheader.us49.i

.preheader.us57.i.preheader:                      ; preds = %.lr.ph31.split.split.i
  %i.dj = zext nneg i32 %i.o to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 8
  %i.dk = sub i64 %.0.val24, %.0.val123
  %diff.check = icmp ugt i64 %i.dk, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us57.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us57.i.preheader
  %n.vec = and i64 %i.dj, 2147483640              ; 4 uses
  %i.dl = trunc nuw nsw i64 %n.vec to i32
  %i.dm = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.dn = getelementptr i8, ptr %i.n, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.m, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.dp ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.m, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep25, align 4, !tbaa !67
  store <4 x float> splat (float +inf), ptr %i.dq, align 4, !tbaa !67
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep, align 4, !tbaa !67
  store <4 x float> zeroinitializer, ptr %i.dr, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !674

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dj
  br i1 %cmp.n, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.preheader.us57.i.preheader48

.preheader.us57.i.preheader48:                    ; preds = %.preheader.us57.i.preheader, %middle.block
  %.04829.us58.i.ph = phi i32 [ 0, %.preheader.us57.i.preheader ], [ %i.dl, %middle.block ] ; 4 uses
  %.04928.us59.i.ph = phi ptr [ %i.n, %.preheader.us57.i.preheader ], [ %i.dn, %middle.block ] ; 2 uses
  %.05127.us60.i.ph = phi ptr [ %i.m, %.preheader.us57.i.preheader ], [ %i.do, %middle.block ] ; 2 uses
  %i.dt = sub i32 %i.o, %.04829.us58.i.ph
  %xtraiter = and i32 %i.dt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us57.i.prol.loopexit, label %.preheader.us57.i.prol

.preheader.us57.i.prol:                           ; preds = %.preheader.us57.i.preheader48, %.preheader.us57.i.prol
  %.04829.us58.i.prol = phi i32 [ %i.dw, %.preheader.us57.i.prol ], [ %.04829.us58.i.ph, %.preheader.us57.i.preheader48 ]
  %.04928.us59.i.prol = phi ptr [ %i.dv, %.preheader.us57.i.prol ], [ %.04928.us59.i.ph, %.preheader.us57.i.preheader48 ] ; 2 uses
  %.05127.us60.i.prol = phi ptr [ %i.du, %.preheader.us57.i.prol ], [ %.05127.us60.i.ph, %.preheader.us57.i.preheader48 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.us57.i.prol ], [ 0, %.preheader.us57.i.preheader48 ]
  store float +inf, ptr %.05127.us60.i.prol, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i.prol, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %.05127.us60.i.prol, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.04928.us59.i.prol, i64 4 ; 2 uses
  %i.dw = add nuw nsw i32 %.04829.us58.i.prol, 1  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us57.i.prol.loopexit, label %.preheader.us57.i.prol, !llvm.loop !675

.preheader.us57.i.prol.loopexit:                  ; preds = %.preheader.us57.i.prol, %.preheader.us57.i.preheader48
  %.04829.us58.i.unr = phi i32 [ %.04829.us58.i.ph, %.preheader.us57.i.preheader48 ], [ %i.dw, %.preheader.us57.i.prol ]
  %.04928.us59.i.unr = phi ptr [ %.04928.us59.i.ph, %.preheader.us57.i.preheader48 ], [ %i.dv, %.preheader.us57.i.prol ]
  %.05127.us60.i.unr = phi ptr [ %.05127.us60.i.ph, %.preheader.us57.i.preheader48 ], [ %i.du, %.preheader.us57.i.prol ]
  %i.dx = sub i32 %.04829.us58.i.ph, %i.o
  %i.dy = icmp ugt i32 %i.dx, -8
  br i1 %i.dy, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.preheader.us57.i

.preheader.us49.i:                                ; preds = %.preheader.us49.i, %.preheader.us49.i.preheader.new
  %.04928.us51.i = phi ptr [ %i.n, %.preheader.us49.i.preheader.new ], [ %i.eo, %.preheader.us49.i ] ; 9 uses
  %.05127.us52.i = phi ptr [ %i.m, %.preheader.us49.i.preheader.new ], [ %i.en, %.preheader.us49.i ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader.us49.i.preheader.new ], [ %niter.next.7, %.preheader.us49.i ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us51.i, align 16, !tbaa !87
  %i.dz = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 16
  store <4 x float> splat (float +inf), ptr %i.dz, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ea, align 16, !tbaa !87
  %i.eb = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 32
  store <4 x float> splat (float +inf), ptr %i.eb, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ec, align 16, !tbaa !87
  %i.ed = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 48
  %i.ee = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 48
  store <4 x float> splat (float +inf), ptr %i.ed, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ee, align 16, !tbaa !87
  %i.ef = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 64
  store <4 x float> splat (float +inf), ptr %i.ef, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.eg, align 16, !tbaa !87
  %i.eh = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 80
  %i.ei = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 80
  store <4 x float> splat (float +inf), ptr %i.eh, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ei, align 16, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 96
  %i.ek = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 96
  store <4 x float> splat (float +inf), ptr %i.ej, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ek, align 16, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 112
  %i.em = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 112
  store <4 x float> splat (float +inf), ptr %i.el, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.em, align 16, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %.05127.us52.i, i64 128 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.04928.us51.i, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit.loopexit47.unr-lcssa, label %.preheader.us49.i, !llvm.loop !4

.preheader.us57.i:                                ; preds = %.preheader.us57.i.prol.loopexit, %.preheader.us57.i
  %.04829.us58.i = phi i32 [ %i.ff, %.preheader.us57.i ], [ %.04829.us58.i.unr, %.preheader.us57.i.prol.loopexit ]
  %.04928.us59.i = phi ptr [ %i.fe, %.preheader.us57.i ], [ %.04928.us59.i.unr, %.preheader.us57.i.prol.loopexit ] ; 9 uses
  %.05127.us60.i = phi ptr [ %i.fd, %.preheader.us57.i ], [ %.05127.us60.i.unr, %.preheader.us57.i.prol.loopexit ] ; 9 uses
  store float +inf, ptr %.05127.us60.i, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i, align 4, !tbaa !67
  %i.ep = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 4
  store float +inf, ptr %i.ep, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.eq, align 4, !tbaa !67
  %i.er = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 8
  store float +inf, ptr %i.er, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !67
  %i.et = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 12
  store float +inf, ptr %i.et, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.eu, align 4, !tbaa !67
  %i.ev = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 16
  store float +inf, ptr %i.ev, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.ew, align 4, !tbaa !67
  %i.ex = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 20
  %i.ey = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 20
  store float +inf, ptr %i.ex, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !67
  %i.ez = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 24
  store float +inf, ptr %i.ez, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.fa, align 4, !tbaa !67
  %i.fb = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 28
  %i.fc = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 28
  store float +inf, ptr %i.fb, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.fc, align 4, !tbaa !67
  %i.fd = getelementptr inbounds nuw i8, ptr %.05127.us60.i, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.04928.us59.i, i64 32
  %i.ff = add nuw nsw i32 %.04829.us58.i, 8       ; 2 uses
  %exitcond.not.i.7 = icmp eq i32 %i.ff, %i.o
  br i1 %exitcond.not.i.7, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.preheader.us57.i, !llvm.loop !676

_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit.loopexit47.unr-lcssa: ; preds = %.preheader.us49.i
  %lcmp.mod51.not = icmp eq i32 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %.preheader.us49.i.epil.preheader

.preheader.us49.i.epil.preheader:                 ; preds = %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit.loopexit47.unr-lcssa, %.preheader.us49.i.preheader
  %.04928.us51.i.epil.init = phi ptr [ %i.n, %.preheader.us49.i.preheader ], [ %i.eo, %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit.loopexit47.unr-lcssa ]
  %.05127.us52.i.epil.init = phi ptr [ %i.m, %.preheader.us49.i.preheader ], [ %i.en, %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit.loopexit47.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.preheader.us49.i.epil

.preheader.us49.i.epil:                           ; preds = %.preheader.us49.i.epil, %.preheader.us49.i.epil.preheader
  %.04928.us51.i.epil = phi ptr [ %i.fh, %.preheader.us49.i.epil ], [ %.04928.us51.i.epil.init, %.preheader.us49.i.epil.preheader ] ; 2 uses
  %.05127.us52.i.epil = phi ptr [ %i.fg, %.preheader.us49.i.epil ], [ %.05127.us52.i.epil.init, %.preheader.us49.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.us49.i.epil ], [ 0, %.preheader.us49.i.epil.preheader ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.epil, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.epil, align 16, !tbaa !87
  %i.fg = getelementptr inbounds nuw i8, ptr %.05127.us52.i.epil, i64 16
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16gemm_BT_x86_int8ERKNS_3MatES2_fS2_RS0_iiiiiffiiiiRKNS_6OptionE.omp_outlined.13:bb.a
  br i1 %i.fw, label %.preheader.us33.preheader.i.i.us, label %.lr.ph31.split.split.i.i.us

.lr.ph31.split.split.i.i.us:                      ; preds = %.lr.ph31.split.i.i.us
  switch i32 %i.fg, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us [
    i32 4, label %.preheader.us49.i.i.us.preheader
    i32 1, label %.preheader.us57.i.i.us.preheader
  ]

.preheader.us49.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %xtraiter252 = and i32 %i.fp, 7                 ; 3 uses
  %i.fx = icmp ult i32 %i.fp, 8
  br i1 %i.fx, label %.preheader.us49.i.i.us.epil.preheader, label %.preheader.us49.i.i.us.preheader.new

.preheader.us49.i.i.us.preheader.new:             ; preds = %.preheader.us49.i.i.us.preheader
  %unroll_iter = and i32 %i.fp, 2147483640
  br label %.preheader.us49.i.i.us

.preheader.us57.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %i.fy = zext nneg i32 %i.fp to i64              ; 2 uses
  %min.iters.check231 = icmp ult i32 %i.fp, 8
  %i.fz = sub i64 %.val123.us229, %.val124.us228
  %diff.check = icmp ugt i64 %i.fz, -32
  %or.cond = select i1 %min.iters.check231, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us57.i.i.us.preheader246, label %vector.ph232

vector.ph232:                                     ; preds = %.preheader.us57.i.i.us.preheader
  %n.vec233 = and i64 %i.fy, 2147483640           ; 4 uses
  %i.ga = trunc nuw nsw i64 %n.vec233 to i32
  %i.gb = shl nuw nsw i64 %n.vec233, 2            ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fo, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.fn, i64 %i.gb
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body234 ] ; 2 uses
  %i.ge = shl i64 %index235, 2                    ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.fo, i64 %i.ge ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.fn, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep237, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep237, align 4, !tbaa !67
  store <4 x float> splat (float +inf), ptr %i.gf, align 4, !tbaa !67
  %i.gg = getelementptr i8, ptr %next.gep236, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep236, align 4, !tbaa !67
  store <4 x float> zeroinitializer, ptr %i.gg, align 4, !tbaa !67
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.gh, label %middle.block239, label %vector.body234, !llvm.loop !747

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %n.vec233, %i.fy
  br i1 %cmp.n240, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us.preheader246

.preheader.us57.i.i.us.preheader246:              ; preds = %.preheader.us57.i.i.us.preheader, %middle.block239
  %.04829.us58.i.i.us.ph = phi i32 [ 0, %.preheader.us57.i.i.us.preheader ], [ %i.ga, %middle.block239 ] ; 4 uses
  %.04928.us59.i.i.us.ph = phi ptr [ %i.fo, %.preheader.us57.i.i.us.preheader ], [ %i.gc, %middle.block239 ] ; 2 uses
  %.05127.us60.i.i.us.ph = phi ptr [ %i.fn, %.preheader.us57.i.i.us.preheader ], [ %i.gd, %middle.block239 ] ; 2 uses
  %i.gi = sub i32 %i.fp, %.04829.us58.i.i.us.ph
  %xtraiter = and i32 %i.gi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol

.preheader.us57.i.i.us.prol:                      ; preds = %.preheader.us57.i.i.us.preheader246, %.preheader.us57.i.i.us.prol
  %.04829.us58.i.i.us.prol = phi i32 [ %i.gl, %.preheader.us57.i.i.us.prol ], [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ]
  %.04928.us59.i.i.us.prol = phi ptr [ %i.gk, %.preheader.us57.i.i.us.prol ], [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ] ; 2 uses
  %.05127.us60.i.i.us.prol = phi ptr [ %i.gj, %.preheader.us57.i.i.us.prol ], [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.us57.i.i.us.prol ], [ 0, %.preheader.us57.i.i.us.preheader246 ]
  store float +inf, ptr %.05127.us60.i.i.us.prol, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i.i.us.prol, align 4, !tbaa !67
  %i.gj = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us.prol, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us.prol, i64 4 ; 2 uses
  %i.gl = add nuw nsw i32 %.04829.us58.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol, !llvm.loop !748

.preheader.us57.i.i.us.prol.loopexit:             ; preds = %.preheader.us57.i.i.us.prol, %.preheader.us57.i.i.us.preheader246
  %.04829.us58.i.i.us.unr = phi i32 [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gl, %.preheader.us57.i.i.us.prol ]
  %.04928.us59.i.i.us.unr = phi ptr [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gk, %.preheader.us57.i.i.us.prol ]
  %.05127.us60.i.i.us.unr = phi ptr [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader246 ], [ %i.gj, %.preheader.us57.i.i.us.prol ]
  %i.gm = sub i32 %.04829.us58.i.i.us.ph, %i.fp
  %i.gn = icmp ugt i32 %i.gm, -8
  br i1 %i.gn, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us

.preheader.us57.i.i.us:                           ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us
  %.04829.us58.i.i.us = phi i32 [ %i.he, %.preheader.us57.i.i.us ], [ %.04829.us58.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ]
  %.04928.us59.i.i.us = phi ptr [ %i.hd, %.preheader.us57.i.i.us ], [ %.04928.us59.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  %.05127.us60.i.i.us = phi ptr [ %i.hc, %.preheader.us57.i.i.us ], [ %.05127.us60.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  store float +inf, ptr %.05127.us60.i.i.us, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i.i.us, align 4, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 4
  store float +inf, ptr %i.go, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gp, align 4, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 8
  store float +inf, ptr %i.gq, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !67
  %i.gs = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 12
  store float +inf, ptr %i.gs, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !67
  %i.gu = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 16
  store float +inf, ptr %i.gu, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gv, align 4, !tbaa !67
  %i.gw = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 20
  %i.gx = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 20
  store float +inf, ptr %i.gw, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !67
  %i.gy = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 24
  store float +inf, ptr %i.gy, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !67
  %i.ha = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 28
  %i.hb = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 28
  store float +inf, ptr %i.ha, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !67
  %i.hc = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 32
  %i.he = add nuw nsw i32 %.04829.us58.i.i.us, 8  ; 2 uses
  %exitcond.not.i.i.us.7 = icmp eq i32 %i.he, %i.fp
  br i1 %exitcond.not.i.i.us.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us, !llvm.loop !749

.preheader.us49.i.i.us:                           ; preds = %.preheader.us49.i.i.us, %.preheader.us49.i.i.us.preheader.new
  %.04928.us51.i.i.us = phi ptr [ %i.fo, %.preheader.us49.i.i.us.preheader.new ], [ %i.hu, %.preheader.us49.i.i.us ] ; 9 uses
  %.05127.us52.i.i.us = phi ptr [ %i.fn, %.preheader.us49.i.i.us.preheader.new ], [ %i.ht, %.preheader.us49.i.i.us ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader.us49.i.i.us.preheader.new ], [ %niter.next.7, %.preheader.us49.i.i.us ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us, align 16, !tbaa !87
  %i.hf = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 16
  store <4 x float> splat (float +inf), ptr %i.hf, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hg, align 16, !tbaa !87
  %i.hh = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 32
  store <4 x float> splat (float +inf), ptr %i.hh, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hi, align 16, !tbaa !87
  %i.hj = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 48
  store <4 x float> splat (float +inf), ptr %i.hj, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hk, align 16, !tbaa !87
  %i.hl = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 64
  %i.hm = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 64
  store <4 x float> splat (float +inf), ptr %i.hl, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hm, align 16, !tbaa !87
  %i.hn = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 80
  store <4 x float> splat (float +inf), ptr %i.hn, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ho, align 16, !tbaa !87
  %i.hp = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 96
  store <4 x float> splat (float +inf), ptr %i.hp, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hq, align 16, !tbaa !87
  %i.hr = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 112
  %i.hs = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 112
  store <4 x float> splat (float +inf), ptr %i.hr, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hs, align 16, !tbaa !87
  %i.ht = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 128 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, label %.preheader.us49.i.i.us, !llvm.loop !4

.preheader.us33.preheader.i.i.us:                 ; preds = %.lr.ph31.split.i.i.us
  %i.hv = sext i32 %i.fg to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fp to i64
  %.pre80.i.i.us = load ptr, ptr %4, align 8, !tbaa !23
  %exitcond71.not.i.i.us = icmp eq i32 %i.fq, 1
  %exitcond71.not.i.i.us.1 = icmp eq i32 %i.fq, 2
  br label %.preheader.us33.i.i.us

.preheader.us33.i.i.us:                           ; preds = %bb.p, %.preheader.us33.preheader.i.i.us
  %i.hw = phi ptr [ %.pre80.i.i.us, %.preheader.us33.preheader.i.i.us ], [ %i.ip, %bb.p ] ; 3 uses
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us33.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.p ] ; 2 uses
  %.04928.us35.i.i.us = phi ptr [ %i.fo, %.preheader.us33.preheader.i.i.us ], [ %.2.us48.i.i.us, %bb.p ] ; 5 uses
  %.05127.us36.i.i.us = phi ptr [ %i.fn, %.preheader.us33.preheader.i.i.us ], [ %.253.us47.i.i.us, %bb.p ] ; 5 uses
  %i.hx = mul nsw i64 %indvars.iv.i.i.us, %i.hv
  %i.hy = add nsw i64 %i.hx, %i.dp
  %i.hz = mul i64 %i.hy, %i.fm
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hz ; 3 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !67
  %i.ic = call fast float @llvm.fabs.f32(float %i.ib)
  %.sroa.speculated4.us41.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ic, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i.i.us, label %._crit_edge.us42.i.i.us, label %bb.m

bb.m:                                             ; preds = %.preheader.us33.i.i.us
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !67
  %i.if = call fast float @llvm.fabs.f32(float %i.ie)
  %.sroa.speculated4.us41.i.i.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i.i.us, float %i.if) ; 2 uses
  br i1 %exitcond71.not.i.i.us.1, label %._crit_edge.us42.i.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !67
  %i.ii = call fast float @llvm.fabs.f32(float %i.ih)
  %.sroa.speculated4.us41.i.i.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i.i.us.1, float %i.ii)
  br label %._crit_edge.us42.i.i.us

._crit_edge.us42.i.i.us:                          ; preds = %bb.n, %bb.m, %.preheader.us33.i.i.us
  %.sroa.speculated4.us41.i.i.us.lcssa = phi float [ %.sroa.speculated4.us41.i.i.us, %.preheader.us33.i.i.us ], [ %.sroa.speculated4.us41.i.i.us.1, %bb.m ], [ %.sroa.speculated4.us41.i.i.us.2, %bb.n ] ; 2 uses
  switch i32 %i.fg, label %bb.p [
    i32 4, label %.thread.us46.i.i.us
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge.us42.i.i.us
  %i.ij = fdiv fast float 1.270000e+02, %.sroa.speculated4.us41.i.i.us.lcssa
  store float %i.ij, ptr %.05127.us36.i.i.us, align 4, !tbaa !67
  %i.ik = fmul fast float %.sroa.speculated4.us41.i.i.us.lcssa, %i.fr
  store float %i.ik, ptr %.04928.us35.i.i.us, align 4, !tbaa !67
  %i.il = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 4
  br label %bb.p

.thread.us46.i.i.us:                              ; preds = %._crit_edge.us42.i.i.us
  store <4 x float> splat (float +inf), ptr %.05127.us36.i.i.us, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us35.i.i.us, align 16, !tbaa !87
  %i.in = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 16
  %.pre.i.i.us = load ptr, ptr %4, align 8, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %.thread.us46.i.i.us, %bb.o, %._crit_edge.us42.i.i.us
  %i.ip = phi ptr [ %i.hw, %bb.o ], [ %i.hw, %._crit_edge.us42.i.i.us ], [ %.pre.i.i.us, %.thread.us46.i.i.us ]
  %.253.us47.i.i.us = phi ptr [ %i.il, %bb.o ], [ %.05127.us36.i.i.us, %._crit_edge.us42.i.i.us ], [ %i.in, %.thread.us46.i.i.us ]
  %.2.us48.i.i.us = phi ptr [ %i.im, %bb.o ], [ %.04928.us35.i.i.us, %._crit_edge.us42.i.i.us ], [ %i.io, %.thread.us46.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond73.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond73.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.preheader.us33.i.i.us, !llvm.loop !4

.lr.ph.us.preheader.i.i.us:                       ; preds = %.lr.ph31.i.i.us
  %i.iq = and i32 %i.fq, 2147483644               ; 4 uses
  %i.ir = sext i32 %i.fg to i64
  %wide.trip.count78.i.i.us = zext nneg i32 %i.fp to i64
  %.not.i129.us = icmp eq i32 %i.iq, %i.fq
  %i.is = add nsw i32 %i.fq, -4                   ; 2 uses
  %i.it = lshr i32 %i.is, 2
  %i.iu = add nuw nsw i32 %i.it, 1                ; 2 uses
  %xtraiter255 = and i32 %i.iu, 3                 ; 3 uses
  %i.iv = icmp ult i32 %i.is, 12
  %unroll_iter261 = and i32 %i.iu, 2147483644
  %lcmp.mod257.not = icmp eq i32 %xtraiter255, 0
  %lcmp.mod260 = icmp ne i32 %xtraiter255, 0
  %i.iw = xor i32 %i.iq, -1
  %i.ix = add nsw i32 %i.fq, %i.iw                ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ix, 7
  %n.vec = and i64 %i.iz, 8589934584              ; 4 uses
  %i.ja = trunc i64 %n.vec to i32
  %i.jb = add i32 %i.iq, %i.ja
  %i.jc = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.iz, %n.vec
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %bb.s, %.lr.ph.us.preheader.i.i.us
  %indvars.iv75.i.i.us = phi i64 [ 0, %.lr.ph.us.preheader.i.i.us ], [ %indvars.iv.next76.i.i.us, %bb.s ] ; 2 uses
  %.04928.us.i.i.us = phi ptr [ %i.fo, %.lr.ph.us.preheader.i.i.us ], [ %.2.us.i.i.us, %bb.s ] ; 5 uses
  %.05127.us.i.i.us = phi ptr [ %i.fn, %.lr.ph.us.preheader.i.i.us ], [ %.253.us.i.i.us, %bb.s ] ; 5 uses
  %i.jd = load ptr, ptr %4, align 8, !tbaa !23
  %i.je = mul nsw i64 %indvars.iv75.i.i.us, %i.ir
  %i.jf = add nsw i64 %i.je, %i.dp
  %i.jg = mul i64 %i.jf, %i.fm
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jg ; 2 uses
  br i1 %i.iv, label %.epil.preheader, label %.lr.ph.us.i.i.us.new

.lr.ph.us.i.i.us.new:                             ; preds = %.lr.ph.us.i.i.us, %.lr.ph.us.i.i.us.new
  %.04618.us.i.i.us = phi ptr [ %i.kb, %.lr.ph.us.i.i.us.new ], [ %i.jh, %.lr.ph.us.i.i.us ] ; 5 uses
  %.01317.us.i.i.us = phi <4 x float> [ %i.ka, %.lr.ph.us.i.i.us.new ], [ zeroinitializer, %.lr.ph.us.i.i.us ]
  %niter262 = phi i32 [ %niter262.next.3, %.lr.ph.us.i.i.us.new ], [ 0, %.lr.ph.us.i.i.us ]
  %i.ji = load <4 x i32>, ptr %.04618.us.i.i.us, align 1, !tbaa !87
  %i.jj = and <4 x i32> %i.ji, splat (i32 2147483647)
  %i.jk = bitcast <4 x i32> %i.jj to <4 x float>
  %i.jl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us, <4 x float> nofpclass(nan inf) %i.jk)
  %i.jm = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 16
  %i.jn = load <4 x i32>, ptr %i.jm, align 1, !tbaa !87
  %i.jo = and <4 x i32> %i.jn, splat (i32 2147483647)
  %i.jp = bitcast <4 x i32> %i.jo to <4 x float>
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jl, <4 x float> nofpclass(nan inf) %i.jp)
  %i.jr = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 32
  %i.js = load <4 x i32>, ptr %i.jr, align 1, !tbaa !87
  %i.jt = and <4 x i32> %i.js, splat (i32 2147483647)
  %i.ju = bitcast <4 x i32> %i.jt to <4 x float>
  %i.jv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) %i.ju)
  %i.jw = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 48
  %i.jx = load <4 x i32>, ptr %i.jw, align 1, !tbaa !87
  %i.jy = and <4 x i32> %i.jx, splat (i32 2147483647)
  %i.jz = bitcast <4 x i32> %i.jy to <4 x float>
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> nofpclass(nan inf) %i.jz) ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 64 ; 3 uses
  %niter262.next.3 = add nuw nsw i32 %niter262, 4 ; 2 uses
  %niter262.ncmp.3.not = icmp eq i32 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3.not, label %..preheader_crit_edge.us.i.i.us.unr-lcssa, label %.lr.ph.us.i.i.us.new, !llvm.loop !3

..preheader_crit_edge.us.i.i.us.unr-lcssa:        ; preds = %.lr.ph.us.i.i.us.new
  br i1 %lcmp.mod257.not, label %..preheader_crit_edge.us.i.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.i.us.unr-lcssa, %.lr.ph.us.i.i.us
  %.04618.us.i.i.us.epil.init = phi ptr [ %i.jh, %.lr.ph.us.i.i.us ], [ %i.kb, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  %.01317.us.i.i.us.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i.i.us ], [ %i.ka, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.04618.us.i.i.us.epil = phi ptr [ %.04618.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kg, %bb.q ] ; 2 uses
  %.01317.us.i.i.us.epil = phi <4 x float> [ %.01317.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kf, %bb.q ]
  %epil.iter256 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter256.next, %bb.q ]
  %i.kc = load <4 x i32>, ptr %.04618.us.i.i.us.epil, align 1, !tbaa !87
  %i.kd = and <4 x i32> %i.kc, splat (i32 2147483647)
  %i.ke = bitcast <4 x i32> %i.kd to <4 x float>
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us.epil, <4 x float> nofpclass(nan inf) %i.ke) ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us.epil, i64 16 ; 2 uses
  %epil.iter256.next = add i32 %epil.iter256, 1   ; 2 uses
  %epil.iter256.cmp.not = icmp eq i32 %epil.iter256.next, %xtraiter255
  br i1 %epil.iter256.cmp.not, label %..preheader_crit_edge.us.i.i.us, label %bb.q, !llvm.loop !750

..preheader_crit_edge.us.i.i.us:                  ; preds = %bb.q, %..preheader_crit_edge.us.i.i.us.unr-lcssa
  %.lcssa249 = phi <4 x float> [ %i.ka, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kf, %bb.q ] ; 4 uses
  %.lcssa = phi ptr [ %i.kb, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kg, %bb.q ] ; 3 uses
  br i1 %.not.i129.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader

.lr.ph25.us.i.i.us.preheader:                     ; preds = %..preheader_crit_edge.us.i.i.us
  br i1 %min.iters.check, label %.lr.ph25.us.i.i.us.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.i.i.us.preheader
  %i.kh = getelementptr i8, ptr %.lcssa, i64 %i.jc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.km, %vector.body ]
  %vec.phi225 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.kn, %vector.body ]
  %i.ki = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !67
  %wide.load226 = load <4 x float>, ptr %i.kj, align 4, !tbaa !67
  %i.kk = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.kl = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load226)
  %i.km = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.kk) ; 2 uses
  %i.kn = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi225, <4 x float> %i.kl) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !751

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.km, <4 x float> %i.kn)
  %i.kp = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader244

.lr.ph25.us.i.i.us.preheader244:                  ; preds = %.lr.ph25.us.i.i.us.preheader, %middle.block
  %.124.us.i.i.us.ph = phi i32 [ %i.iq, %.lr.ph25.us.i.i.us.preheader ], [ %i.jb, %middle.block ]
  %.14723.us.i.i.us.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.i.us.preheader ], [ %i.kh, %middle.block ]
  %.01422.us.i.i.us.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.i.us.preheader ], [ %i.kp, %middle.block ]
  br label %.lr.ph25.us.i.i.us

.lr.ph25.us.i.i.us:                               ; preds = %.lr.ph25.us.i.i.us.preheader244, %.lr.ph25.us.i.i.us
  %.124.us.i.i.us = phi i32 [ %i.kt, %.lr.ph25.us.i.i.us ], [ %.124.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ]
  %.14723.us.i.i.us = phi ptr [ %i.ks, %.lr.ph25.us.i.i.us ], [ %.14723.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ] ; 2 uses
  %.01422.us.i.i.us = phi float [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ], [ %.01422.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader244 ]
  %i.kq = load float, ptr %.14723.us.i.i.us, align 4, !tbaa !67
  %i.kr = call fast float @llvm.fabs.f32(float %i.kq)
  %.sroa.speculated4.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i.i.us, float %i.kr) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.14723.us.i.i.us, i64 4
  %i.kt = add nuw nsw i32 %.124.us.i.i.us, 1      ; 2 uses
  %exitcond74.not.i.i.us = icmp eq i32 %i.kt, %i.fq
  br i1 %exitcond74.not.i.i.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us, !llvm.loop !752

._crit_edge.us.i.i.us:                            ; preds = %.lr.ph25.us.i.i.us, %middle.block, %..preheader_crit_edge.us.i.i.us
  %.014.lcssa.us.i.i.us = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i.i.us ], [ %i.kp, %middle.block ], [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ]
  switch i32 %i.fg, label %bb.s [
    i32 4, label %.thread.us.i.i.us
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge.us.i.i.us
  %i.ku = shufflevector <4 x float> %.lcssa249, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa249, <4 x float> nofpclass(nan inf) %i.ku) ; 2 uses
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kv, <4 x float> nofpclass(nan inf) %i.kw)
  %i.ky = extractelement <4 x float> %i.kx, i64 0
  %.sroa.speculated.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i.i.us, float %i.ky) ; 2 uses
  %i.kz = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.i.us
  store float %i.kz, ptr %.05127.us.i.i.us, align 4, !tbaa !67
  %i.la = fmul fast float %.sroa.speculated.us.i.i.us, %i.fr
  store float %i.la, ptr %.04928.us.i.i.us, align 4, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 4
  br label %bb.s

.thread.us.i.i.us:                                ; preds = %._crit_edge.us.i.i.us
  %i.ld = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa249
  %i.le = fmul fast <4 x float> %.lcssa249, %i.ft
  store <4 x float> %i.ld, ptr %.05127.us.i.i.us, align 16, !tbaa !87
  store <4 x float> %i.le, ptr %.04928.us.i.i.us, align 16, !tbaa !87
  %i.lf = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.thread.us.i.i.us, %bb.r, %._crit_edge.us.i.i.us
  %.253.us.i.i.us = phi ptr [ %i.lb, %bb.r ], [ %.05127.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lf, %.thread.us.i.i.us ]
  %.2.us.i.i.us = phi ptr [ %i.lc, %bb.r ], [ %.04928.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lg, %.thread.us.i.i.us ]
  %indvars.iv.next76.i.i.us = add nuw nsw i64 %indvars.iv75.i.i.us, 1 ; 2 uses
  %exitcond79.not.i.i.us = icmp eq i64 %indvars.iv.next76.i.i.us, %wide.trip.count78.i.i.us
  br i1 %exitcond79.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.lr.ph.us.i.i.us, !llvm.loop !4

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %bb.p, %bb.s, %bb.i
  br i1 %.not87, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread180.us

end_hunk_1
begin_hunk_2_@_ZN4ncnnL13gemm_x86_int8ERKNS_3MatES2_S2_RS0_iiiiffiiiiRKNS_6OptionE.omp_outlined.17:bb.a
  br i1 %i.fw, label %.preheader.us33.preheader.i.i.us, label %.lr.ph31.split.split.i.i.us

.lr.ph31.split.split.i.i.us:                      ; preds = %.lr.ph31.split.i.i.us
  switch i32 %i.fg, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us [
    i32 4, label %.preheader.us49.i.i.us.preheader
    i32 1, label %.preheader.us57.i.i.us.preheader
  ]

.preheader.us49.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %xtraiter253 = and i32 %i.fp, 7                 ; 3 uses
  %i.fx = icmp ult i32 %i.fp, 8
  br i1 %i.fx, label %.preheader.us49.i.i.us.epil.preheader, label %.preheader.us49.i.i.us.preheader.new

.preheader.us49.i.i.us.preheader.new:             ; preds = %.preheader.us49.i.i.us.preheader
  %unroll_iter = and i32 %i.fp, 2147483640
  br label %.preheader.us49.i.i.us

.preheader.us57.i.i.us.preheader:                 ; preds = %.lr.ph31.split.split.i.i.us
  %i.fy = zext nneg i32 %i.fp to i64              ; 2 uses
  %min.iters.check232 = icmp ult i32 %i.fp, 8
  %i.fz = sub i64 %.val124.us230, %.val125.us229
  %diff.check = icmp ugt i64 %i.fz, -32
  %or.cond = select i1 %min.iters.check232, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us57.i.i.us.preheader247, label %vector.ph233

vector.ph233:                                     ; preds = %.preheader.us57.i.i.us.preheader
  %n.vec234 = and i64 %i.fy, 2147483640           ; 4 uses
  %i.ga = trunc nuw nsw i64 %n.vec234 to i32
  %i.gb = shl nuw nsw i64 %n.vec234, 2            ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fo, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.fn, i64 %i.gb
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next239, %vector.body235 ] ; 2 uses
  %i.ge = shl i64 %index236, 2                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.fo, i64 %i.ge ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.fn, i64 %i.ge ; 2 uses
  %i.gf = getelementptr i8, ptr %next.gep238, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep238, align 4, !tbaa !67
  store <4 x float> splat (float +inf), ptr %i.gf, align 4, !tbaa !67
  %i.gg = getelementptr i8, ptr %next.gep237, i64 16
  store <4 x float> zeroinitializer, ptr %next.gep237, align 4, !tbaa !67
  store <4 x float> zeroinitializer, ptr %i.gg, align 4, !tbaa !67
  %index.next239 = add nuw i64 %index236, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.gh, label %middle.block240, label %vector.body235, !llvm.loop !793

middle.block240:                                  ; preds = %vector.body235
  %cmp.n241 = icmp eq i64 %n.vec234, %i.fy
  br i1 %cmp.n241, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us.preheader247

.preheader.us57.i.i.us.preheader247:              ; preds = %.preheader.us57.i.i.us.preheader, %middle.block240
  %.04829.us58.i.i.us.ph = phi i32 [ 0, %.preheader.us57.i.i.us.preheader ], [ %i.ga, %middle.block240 ] ; 4 uses
  %.04928.us59.i.i.us.ph = phi ptr [ %i.fo, %.preheader.us57.i.i.us.preheader ], [ %i.gc, %middle.block240 ] ; 2 uses
  %.05127.us60.i.i.us.ph = phi ptr [ %i.fn, %.preheader.us57.i.i.us.preheader ], [ %i.gd, %middle.block240 ] ; 2 uses
  %i.gi = sub i32 %i.fp, %.04829.us58.i.i.us.ph
  %xtraiter = and i32 %i.gi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol

.preheader.us57.i.i.us.prol:                      ; preds = %.preheader.us57.i.i.us.preheader247, %.preheader.us57.i.i.us.prol
  %.04829.us58.i.i.us.prol = phi i32 [ %i.gl, %.preheader.us57.i.i.us.prol ], [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ]
  %.04928.us59.i.i.us.prol = phi ptr [ %i.gk, %.preheader.us57.i.i.us.prol ], [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ] ; 2 uses
  %.05127.us60.i.i.us.prol = phi ptr [ %i.gj, %.preheader.us57.i.i.us.prol ], [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.us57.i.i.us.prol ], [ 0, %.preheader.us57.i.i.us.preheader247 ]
  store float +inf, ptr %.05127.us60.i.i.us.prol, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i.i.us.prol, align 4, !tbaa !67
  %i.gj = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us.prol, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us.prol, i64 4 ; 2 uses
  %i.gl = add nuw nsw i32 %.04829.us58.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us57.i.i.us.prol.loopexit, label %.preheader.us57.i.i.us.prol, !llvm.loop !794

.preheader.us57.i.i.us.prol.loopexit:             ; preds = %.preheader.us57.i.i.us.prol, %.preheader.us57.i.i.us.preheader247
  %.04829.us58.i.i.us.unr = phi i32 [ %.04829.us58.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ], [ %i.gl, %.preheader.us57.i.i.us.prol ]
  %.04928.us59.i.i.us.unr = phi ptr [ %.04928.us59.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ], [ %i.gk, %.preheader.us57.i.i.us.prol ]
  %.05127.us60.i.i.us.unr = phi ptr [ %.05127.us60.i.i.us.ph, %.preheader.us57.i.i.us.preheader247 ], [ %i.gj, %.preheader.us57.i.i.us.prol ]
  %i.gm = sub i32 %.04829.us58.i.i.us.ph, %i.fp
  %i.gn = icmp ugt i32 %i.gm, -8
  br i1 %i.gn, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us

.preheader.us57.i.i.us:                           ; preds = %.preheader.us57.i.i.us.prol.loopexit, %.preheader.us57.i.i.us
  %.04829.us58.i.i.us = phi i32 [ %i.he, %.preheader.us57.i.i.us ], [ %.04829.us58.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ]
  %.04928.us59.i.i.us = phi ptr [ %i.hd, %.preheader.us57.i.i.us ], [ %.04928.us59.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  %.05127.us60.i.i.us = phi ptr [ %i.hc, %.preheader.us57.i.i.us ], [ %.05127.us60.i.i.us.unr, %.preheader.us57.i.i.us.prol.loopexit ] ; 9 uses
  store float +inf, ptr %.05127.us60.i.i.us, align 4, !tbaa !67
  store float 0.000000e+00, ptr %.04928.us59.i.i.us, align 4, !tbaa !67
  %i.go = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 4
  store float +inf, ptr %i.go, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gp, align 4, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 8
  store float +inf, ptr %i.gq, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !67
  %i.gs = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 12
  store float +inf, ptr %i.gs, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !67
  %i.gu = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 16
  store float +inf, ptr %i.gu, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gv, align 4, !tbaa !67
  %i.gw = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 20
  %i.gx = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 20
  store float +inf, ptr %i.gw, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !67
  %i.gy = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 24
  store float +inf, ptr %i.gy, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.gz, align 4, !tbaa !67
  %i.ha = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 28
  %i.hb = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 28
  store float +inf, ptr %i.ha, align 4, !tbaa !67
  store float 0.000000e+00, ptr %i.hb, align 4, !tbaa !67
  %i.hc = getelementptr inbounds nuw i8, ptr %.05127.us60.i.i.us, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %.04928.us59.i.i.us, i64 32
  %i.he = add nuw nsw i32 %.04829.us58.i.i.us, 8  ; 2 uses
  %exitcond.not.i.i.us.7 = icmp eq i32 %i.he, %i.fp
  br i1 %exitcond.not.i.i.us.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %.preheader.us57.i.i.us, !llvm.loop !795

.preheader.us49.i.i.us:                           ; preds = %.preheader.us49.i.i.us, %.preheader.us49.i.i.us.preheader.new
  %.04928.us51.i.i.us = phi ptr [ %i.fo, %.preheader.us49.i.i.us.preheader.new ], [ %i.hu, %.preheader.us49.i.i.us ] ; 9 uses
  %.05127.us52.i.i.us = phi ptr [ %i.fn, %.preheader.us49.i.i.us.preheader.new ], [ %i.ht, %.preheader.us49.i.i.us ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader.us49.i.i.us.preheader.new ], [ %niter.next.7, %.preheader.us49.i.i.us ]
  store <4 x float> splat (float +inf), ptr %.05127.us52.i.i.us, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us51.i.i.us, align 16, !tbaa !87
  %i.hf = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 16
  store <4 x float> splat (float +inf), ptr %i.hf, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hg, align 16, !tbaa !87
  %i.hh = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 32
  store <4 x float> splat (float +inf), ptr %i.hh, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hi, align 16, !tbaa !87
  %i.hj = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 48
  store <4 x float> splat (float +inf), ptr %i.hj, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hk, align 16, !tbaa !87
  %i.hl = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 64
  %i.hm = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 64
  store <4 x float> splat (float +inf), ptr %i.hl, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hm, align 16, !tbaa !87
  %i.hn = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 80
  store <4 x float> splat (float +inf), ptr %i.hn, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.ho, align 16, !tbaa !87
  %i.hp = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 96
  store <4 x float> splat (float +inf), ptr %i.hp, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hq, align 16, !tbaa !87
  %i.hr = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 112
  %i.hs = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 112
  store <4 x float> splat (float +inf), ptr %i.hr, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %i.hs, align 16, !tbaa !87
  %i.ht = getelementptr inbounds nuw i8, ptr %.05127.us52.i.i.us, i64 128 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.04928.us51.i.i.us, i64 128 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us.loopexit.unr-lcssa, label %.preheader.us49.i.i.us, !llvm.loop !4

.preheader.us33.preheader.i.i.us:                 ; preds = %.lr.ph31.split.i.i.us
  %i.hv = sext i32 %i.fg to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.fp to i64
  %.pre80.i.i.us = load ptr, ptr %4, align 8, !tbaa !23
  %exitcond71.not.i.i.us = icmp eq i32 %i.fq, 1
  %exitcond71.not.i.i.us.1 = icmp eq i32 %i.fq, 2
  br label %.preheader.us33.i.i.us

.preheader.us33.i.i.us:                           ; preds = %bb.p, %.preheader.us33.preheader.i.i.us
  %i.hw = phi ptr [ %.pre80.i.i.us, %.preheader.us33.preheader.i.i.us ], [ %i.ip, %bb.p ] ; 3 uses
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us33.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.p ] ; 2 uses
  %.04928.us35.i.i.us = phi ptr [ %i.fo, %.preheader.us33.preheader.i.i.us ], [ %.2.us48.i.i.us, %bb.p ] ; 5 uses
  %.05127.us36.i.i.us = phi ptr [ %i.fn, %.preheader.us33.preheader.i.i.us ], [ %.253.us47.i.i.us, %bb.p ] ; 5 uses
  %i.hx = mul nsw i64 %indvars.iv.i.i.us, %i.hv
  %i.hy = add nsw i64 %i.hx, %i.dp
  %i.hz = mul i64 %i.hy, %i.fm
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hz ; 3 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !67
  %i.ic = call fast float @llvm.fabs.f32(float %i.ib)
  %.sroa.speculated4.us41.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ic, float 0.000000e+00) ; 2 uses
  br i1 %exitcond71.not.i.i.us, label %._crit_edge.us42.i.i.us, label %bb.m

bb.m:                                             ; preds = %.preheader.us33.i.i.us
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !67
  %i.if = call fast float @llvm.fabs.f32(float %i.ie)
  %.sroa.speculated4.us41.i.i.us.1 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i.i.us, float %i.if) ; 2 uses
  br i1 %exitcond71.not.i.i.us.1, label %._crit_edge.us42.i.i.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !67
  %i.ii = call fast float @llvm.fabs.f32(float %i.ih)
  %.sroa.speculated4.us41.i.i.us.2 = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated4.us41.i.i.us.1, float %i.ii)
  br label %._crit_edge.us42.i.i.us

._crit_edge.us42.i.i.us:                          ; preds = %bb.n, %bb.m, %.preheader.us33.i.i.us
  %.sroa.speculated4.us41.i.i.us.lcssa = phi float [ %.sroa.speculated4.us41.i.i.us, %.preheader.us33.i.i.us ], [ %.sroa.speculated4.us41.i.i.us.1, %bb.m ], [ %.sroa.speculated4.us41.i.i.us.2, %bb.n ] ; 2 uses
  switch i32 %i.fg, label %bb.p [
    i32 4, label %.thread.us46.i.i.us
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %._crit_edge.us42.i.i.us
  %i.ij = fdiv fast float 1.270000e+02, %.sroa.speculated4.us41.i.i.us.lcssa
  store float %i.ij, ptr %.05127.us36.i.i.us, align 4, !tbaa !67
  %i.ik = fmul fast float %.sroa.speculated4.us41.i.i.us.lcssa, %i.fr
  store float %i.ik, ptr %.04928.us35.i.i.us, align 4, !tbaa !67
  %i.il = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 4
  %i.im = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 4
  br label %bb.p

.thread.us46.i.i.us:                              ; preds = %._crit_edge.us42.i.i.us
  store <4 x float> splat (float +inf), ptr %.05127.us36.i.i.us, align 16, !tbaa !87
  store <4 x float> zeroinitializer, ptr %.04928.us35.i.i.us, align 16, !tbaa !87
  %i.in = getelementptr inbounds nuw i8, ptr %.05127.us36.i.i.us, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %.04928.us35.i.i.us, i64 16
  %.pre.i.i.us = load ptr, ptr %4, align 8, !tbaa !23
  br label %bb.p

bb.p:                                             ; preds = %.thread.us46.i.i.us, %bb.o, %._crit_edge.us42.i.i.us
  %i.ip = phi ptr [ %i.hw, %bb.o ], [ %i.hw, %._crit_edge.us42.i.i.us ], [ %.pre.i.i.us, %.thread.us46.i.i.us ]
  %.253.us47.i.i.us = phi ptr [ %i.il, %bb.o ], [ %.05127.us36.i.i.us, %._crit_edge.us42.i.i.us ], [ %i.in, %.thread.us46.i.i.us ]
  %.2.us48.i.i.us = phi ptr [ %i.im, %bb.o ], [ %.04928.us35.i.i.us, %._crit_edge.us42.i.i.us ], [ %i.io, %.thread.us46.i.i.us ]
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond73.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond73.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.preheader.us33.i.i.us, !llvm.loop !4

.lr.ph.us.preheader.i.i.us:                       ; preds = %.lr.ph31.i.i.us
  %i.iq = and i32 %i.fq, 2147483644               ; 4 uses
  %i.ir = sext i32 %i.fg to i64
  %wide.trip.count78.i.i.us = zext nneg i32 %i.fp to i64
  %.not.i130.us = icmp eq i32 %i.iq, %i.fq
  %i.is = add nsw i32 %i.fq, -4                   ; 2 uses
  %i.it = lshr i32 %i.is, 2
  %i.iu = add nuw nsw i32 %i.it, 1                ; 2 uses
  %xtraiter256 = and i32 %i.iu, 3                 ; 3 uses
  %i.iv = icmp ult i32 %i.is, 12
  %unroll_iter262 = and i32 %i.iu, 2147483644
  %lcmp.mod258.not = icmp eq i32 %xtraiter256, 0
  %lcmp.mod261 = icmp ne i32 %xtraiter256, 0
  %i.iw = xor i32 %i.iq, -1
  %i.ix = add nsw i32 %i.fq, %i.iw                ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ix, 7
  %n.vec = and i64 %i.iz, 8589934584              ; 4 uses
  %i.ja = trunc i64 %n.vec to i32
  %i.jb = add i32 %i.iq, %i.ja
  %i.jc = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.iz, %n.vec
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %bb.s, %.lr.ph.us.preheader.i.i.us
  %indvars.iv75.i.i.us = phi i64 [ 0, %.lr.ph.us.preheader.i.i.us ], [ %indvars.iv.next76.i.i.us, %bb.s ] ; 2 uses
  %.04928.us.i.i.us = phi ptr [ %i.fo, %.lr.ph.us.preheader.i.i.us ], [ %.2.us.i.i.us, %bb.s ] ; 5 uses
  %.05127.us.i.i.us = phi ptr [ %i.fn, %.lr.ph.us.preheader.i.i.us ], [ %.253.us.i.i.us, %bb.s ] ; 5 uses
  %i.jd = load ptr, ptr %4, align 8, !tbaa !23
  %i.je = mul nsw i64 %indvars.iv75.i.i.us, %i.ir
  %i.jf = add nsw i64 %i.je, %i.dp
  %i.jg = mul i64 %i.jf, %i.fm
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jg ; 2 uses
  br i1 %i.iv, label %.epil.preheader, label %.lr.ph.us.i.i.us.new

.lr.ph.us.i.i.us.new:                             ; preds = %.lr.ph.us.i.i.us, %.lr.ph.us.i.i.us.new
  %.04618.us.i.i.us = phi ptr [ %i.kb, %.lr.ph.us.i.i.us.new ], [ %i.jh, %.lr.ph.us.i.i.us ] ; 5 uses
  %.01317.us.i.i.us = phi <4 x float> [ %i.ka, %.lr.ph.us.i.i.us.new ], [ zeroinitializer, %.lr.ph.us.i.i.us ]
  %niter263 = phi i32 [ %niter263.next.3, %.lr.ph.us.i.i.us.new ], [ 0, %.lr.ph.us.i.i.us ]
  %i.ji = load <4 x i32>, ptr %.04618.us.i.i.us, align 1, !tbaa !87
  %i.jj = and <4 x i32> %i.ji, splat (i32 2147483647)
  %i.jk = bitcast <4 x i32> %i.jj to <4 x float>
  %i.jl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us, <4 x float> nofpclass(nan inf) %i.jk)
  %i.jm = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 16
  %i.jn = load <4 x i32>, ptr %i.jm, align 1, !tbaa !87
  %i.jo = and <4 x i32> %i.jn, splat (i32 2147483647)
  %i.jp = bitcast <4 x i32> %i.jo to <4 x float>
  %i.jq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jl, <4 x float> nofpclass(nan inf) %i.jp)
  %i.jr = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 32
  %i.js = load <4 x i32>, ptr %i.jr, align 1, !tbaa !87
  %i.jt = and <4 x i32> %i.js, splat (i32 2147483647)
  %i.ju = bitcast <4 x i32> %i.jt to <4 x float>
  %i.jv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jq, <4 x float> nofpclass(nan inf) %i.ju)
  %i.jw = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 48
  %i.jx = load <4 x i32>, ptr %i.jw, align 1, !tbaa !87
  %i.jy = and <4 x i32> %i.jx, splat (i32 2147483647)
  %i.jz = bitcast <4 x i32> %i.jy to <4 x float>
  %i.ka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.jv, <4 x float> nofpclass(nan inf) %i.jz) ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us, i64 64 ; 3 uses
  %niter263.next.3 = add nuw nsw i32 %niter263, 4 ; 2 uses
  %niter263.ncmp.3.not = icmp eq i32 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3.not, label %..preheader_crit_edge.us.i.i.us.unr-lcssa, label %.lr.ph.us.i.i.us.new, !llvm.loop !3

..preheader_crit_edge.us.i.i.us.unr-lcssa:        ; preds = %.lr.ph.us.i.i.us.new
  br i1 %lcmp.mod258.not, label %..preheader_crit_edge.us.i.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.i.i.us.unr-lcssa, %.lr.ph.us.i.i.us
  %.04618.us.i.i.us.epil.init = phi ptr [ %i.jh, %.lr.ph.us.i.i.us ], [ %i.kb, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  %.01317.us.i.i.us.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.us.i.i.us ], [ %i.ka, %..preheader_crit_edge.us.i.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod261)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %.04618.us.i.i.us.epil = phi ptr [ %.04618.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kg, %bb.q ] ; 2 uses
  %.01317.us.i.i.us.epil = phi <4 x float> [ %.01317.us.i.i.us.epil.init, %.epil.preheader ], [ %i.kf, %bb.q ]
  %epil.iter257 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter257.next, %bb.q ]
  %i.kc = load <4 x i32>, ptr %.04618.us.i.i.us.epil, align 1, !tbaa !87
  %i.kd = and <4 x i32> %i.kc, splat (i32 2147483647)
  %i.ke = bitcast <4 x i32> %i.kd to <4 x float>
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.01317.us.i.i.us.epil, <4 x float> nofpclass(nan inf) %i.ke) ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.04618.us.i.i.us.epil, i64 16 ; 2 uses
  %epil.iter257.next = add i32 %epil.iter257, 1   ; 2 uses
  %epil.iter257.cmp.not = icmp eq i32 %epil.iter257.next, %xtraiter256
  br i1 %epil.iter257.cmp.not, label %..preheader_crit_edge.us.i.i.us, label %bb.q, !llvm.loop !796

..preheader_crit_edge.us.i.i.us:                  ; preds = %bb.q, %..preheader_crit_edge.us.i.i.us.unr-lcssa
  %.lcssa250 = phi <4 x float> [ %i.ka, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kf, %bb.q ] ; 4 uses
  %.lcssa = phi ptr [ %i.kb, %..preheader_crit_edge.us.i.i.us.unr-lcssa ], [ %i.kg, %bb.q ] ; 3 uses
  br i1 %.not.i130.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader

.lr.ph25.us.i.i.us.preheader:                     ; preds = %..preheader_crit_edge.us.i.i.us
  br i1 %min.iters.check, label %.lr.ph25.us.i.i.us.preheader245, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph25.us.i.i.us.preheader
  %i.kh = getelementptr i8, ptr %.lcssa, i64 %i.jc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.km, %vector.body ]
  %vec.phi226 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.kn, %vector.body ]
  %i.ki = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.lcssa, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !67
  %wide.load227 = load <4 x float>, ptr %i.kj, align 4, !tbaa !67
  %i.kk = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.kl = call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load227)
  %i.km = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.kk) ; 2 uses
  %i.kn = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi226, <4 x float> %i.kl) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.km, <4 x float> %i.kn)
  %i.kp = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us.preheader245

.lr.ph25.us.i.i.us.preheader245:                  ; preds = %.lr.ph25.us.i.i.us.preheader, %middle.block
  %.124.us.i.i.us.ph = phi i32 [ %i.iq, %.lr.ph25.us.i.i.us.preheader ], [ %i.jb, %middle.block ]
  %.14723.us.i.i.us.ph = phi ptr [ %.lcssa, %.lr.ph25.us.i.i.us.preheader ], [ %i.kh, %middle.block ]
  %.01422.us.i.i.us.ph = phi float [ 0.000000e+00, %.lr.ph25.us.i.i.us.preheader ], [ %i.kp, %middle.block ]
  br label %.lr.ph25.us.i.i.us

.lr.ph25.us.i.i.us:                               ; preds = %.lr.ph25.us.i.i.us.preheader245, %.lr.ph25.us.i.i.us
  %.124.us.i.i.us = phi i32 [ %i.kt, %.lr.ph25.us.i.i.us ], [ %.124.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader245 ]
  %.14723.us.i.i.us = phi ptr [ %i.ks, %.lr.ph25.us.i.i.us ], [ %.14723.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader245 ] ; 2 uses
  %.01422.us.i.i.us = phi float [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ], [ %.01422.us.i.i.us.ph, %.lr.ph25.us.i.i.us.preheader245 ]
  %i.kq = load float, ptr %.14723.us.i.i.us, align 4, !tbaa !67
  %i.kr = call fast float @llvm.fabs.f32(float %i.kq)
  %.sroa.speculated4.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.01422.us.i.i.us, float %i.kr) ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.14723.us.i.i.us, i64 4
  %i.kt = add nuw nsw i32 %.124.us.i.i.us, 1      ; 2 uses
  %exitcond74.not.i.i.us = icmp eq i32 %i.kt, %i.fq
  br i1 %exitcond74.not.i.i.us, label %._crit_edge.us.i.i.us, label %.lr.ph25.us.i.i.us, !llvm.loop !798

._crit_edge.us.i.i.us:                            ; preds = %.lr.ph25.us.i.i.us, %middle.block, %..preheader_crit_edge.us.i.i.us
  %.014.lcssa.us.i.i.us = phi float [ 0.000000e+00, %..preheader_crit_edge.us.i.i.us ], [ %i.kp, %middle.block ], [ %.sroa.speculated4.us.i.i.us, %.lr.ph25.us.i.i.us ]
  switch i32 %i.fg, label %bb.s [
    i32 4, label %.thread.us.i.i.us
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %._crit_edge.us.i.i.us
  %i.ku = shufflevector <4 x float> %.lcssa250, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.kv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.lcssa250, <4 x float> nofpclass(nan inf) %i.ku) ; 2 uses
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.kv, <4 x float> nofpclass(nan inf) %i.kw)
  %i.ky = extractelement <4 x float> %i.kx, i64 0
  %.sroa.speculated.us.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.014.lcssa.us.i.i.us, float %i.ky) ; 2 uses
  %i.kz = fdiv fast float 1.270000e+02, %.sroa.speculated.us.i.i.us
  store float %i.kz, ptr %.05127.us.i.i.us, align 4, !tbaa !67
  %i.la = fmul fast float %.sroa.speculated.us.i.i.us, %i.fr
  store float %i.la, ptr %.04928.us.i.i.us, align 4, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 4
  br label %bb.s

.thread.us.i.i.us:                                ; preds = %._crit_edge.us.i.i.us
  %i.ld = fdiv fast <4 x float> splat (float 1.270000e+02), %.lcssa250
  %i.le = fmul fast <4 x float> %.lcssa250, %i.ft
  store <4 x float> %i.ld, ptr %.05127.us.i.i.us, align 16, !tbaa !87
  store <4 x float> %i.le, ptr %.04928.us.i.i.us, align 16, !tbaa !87
  %i.lf = getelementptr inbounds nuw i8, ptr %.05127.us.i.i.us, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.04928.us.i.i.us, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.thread.us.i.i.us, %bb.r, %._crit_edge.us.i.i.us
  %.253.us.i.i.us = phi ptr [ %i.lb, %bb.r ], [ %.05127.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lf, %.thread.us.i.i.us ]
  %.2.us.i.i.us = phi ptr [ %i.lc, %bb.r ], [ %.04928.us.i.i.us, %._crit_edge.us.i.i.us ], [ %i.lg, %.thread.us.i.i.us ]
  %indvars.iv.next76.i.i.us = add nuw nsw i64 %indvars.iv75.i.i.us, 1 ; 2 uses
  %exitcond79.not.i.i.us = icmp eq i64 %indvars.iv.next76.i.i.us, %wide.trip.count78.i.i.us
  br i1 %exitcond79.not.i.i.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us, label %.lr.ph.us.i.i.us, !llvm.loop !4

_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.us: ; preds = %bb.p, %bb.s, %bb.i
  br i1 %.not86, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread.us, label %_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii.exit.thread181.us

end_hunk_2
