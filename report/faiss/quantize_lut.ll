Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/quantize_lut?download=true
inline.NumInlined: 213
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss12quantize_lut28round_uint8_per_column_multiEPfmmmS1_S1_:bb.a
.lr.ph.i61.us.epil:                               ; preds = %.lr.ph.i61.us.epil, %.lr.ph.i61.us.epil.preheader
  %.011.i62.us.epil = phi i64 [ %i.bm, %.lr.ph.i61.us.epil ], [ %.011.i62.us.epil.init, %.lr.ph.i61.us.epil.preheader ] ; 2 uses
  %.0810.i63.us.epil = phi float [ %.1.i64.us.epil, %.lr.ph.i61.us.epil ], [ %.0810.i63.us.epil.init, %.lr.ph.i61.us.epil.preheader ] ; 2 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.lr.ph.i61.us.epil ], [ 0, %.lr.ph.i61.us.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.011.i62.us.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, %.0810.i63.us.epil
  %.1.i64.us.epil = select i1 %i.bl, float %i.bk, float %.0810.i63.us.epil ; 2 uses
  %i.bm = add nuw i64 %.011.i62.us.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us, label %.lr.ph.i61.us.epil, !llvm.loop !40

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us: ; preds = %.lr.ph.i61.us.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa
  %.1.i64.us.lcssa = phi float [ %.1.i64.us.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us.unr-lcssa ], [ %.1.i64.us.epil, %.lr.ph.i61.us.epil ] ; 2 uses
  %i.bn = fcmp olt float %.1.i.us.lcssa, %.08488.us
  %.sroa.speculated72.us = select i1 %i.bn, float %.1.i.us.lcssa, float %.08488.us ; 3 uses
  %i.bo = fcmp olt float %.08389.us, %.1.i64.us.lcssa
  %.sroa.speculated.us = select i1 %i.bo, float %.1.i64.us.lcssa, float %.08389.us ; 2 uses
  %i.bp = add nuw i64 %.05090.us98, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not, label %._crit_edge.split.us99, label %.lr.ph.i.preheader.us, !llvm.loop !41

._crit_edge.split.us99:                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.us
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05194.us
  store float %.sroa.speculated72.us, ptr %i.bq, align 4, !tbaa !12
  %i.br = fsub float %.sroa.speculated.us, %.sroa.speculated72.us ; 2 uses
  %i.bs = fcmp ogt float %i.br, %.05293.us
  %.1.us = select i1 %i.bs, float %i.br, float %.05293.us ; 3 uses
  %i.bt = add nuw nsw i64 %.05194.us, 1           ; 2 uses
  %exitcond121.not = icmp eq i64 %i.bt, %2
  br i1 %exitcond121.not, label %.lr.ph.us.preheader, label %.preheader.us, !llvm.loop !42

.preheader:                                       ; preds = %.preheader.preheader184, %.preheader
  %.05194 = phi i64 [ %i.bv, %.preheader ], [ %.05194.ph, %.preheader.preheader184 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05194
  store float +inf, ptr %i.bu, align 4, !tbaa !12
  %i.bv = add nuw nsw i64 %.05194, 1              ; 2 uses
  %exitcond123.not = icmp eq i64 %i.bv, %2
  br i1 %exitcond123.not, label %.lr.ph106.split.preheader, label %.preheader, !llvm.loop !43

.lr.ph.us.preheader:                              ; preds = %._crit_edge.split.us99
  %i.bw = fcmp ogt float %.1.us, 0.000000e+00
  %i.bx = fdiv float 2.550000e+02, %.1.us
  %i.by = select i1 %i.bw, float %i.bx, float 0.000000e+00 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert162 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat163 = shufflevector <4 x float> %broadcast.splatinsert162, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us, %.lr.ph.us.us.preheader.new
  %.048103.us.us = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %i.de, %.lr.ph.us.us ] ; 9 uses
  %.049102.us.us = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader.new ], [ %i.dd, %.lr.ph.us.us ]
  %niter205 = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %niter205.next.7, %.lr.ph.us.us ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fadd float %.049102.us.us, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = fadd float %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !12
  %i.cj = fadd float %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !12
  %i.cn = fadd float %i.cj, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = fadd float %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = fadd float %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fadd float %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fadd float %i.cz, %i.dc                 ; 3 uses
  %i.de = add nuw nsw i64 %.048103.us.us, 8       ; 2 uses
  %niter205.next.7 = add i64 %niter205, 8         ; 2 uses
  %niter205.ncmp.7 = icmp eq i64 %niter205.next.7, %unroll_iter204
  br i1 %niter205.ncmp.7, label %._crit_edge107.loopexit185.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !44

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.048103.us = phi i64 [ %i.ea, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.049102.us = phi float [ %i.dz, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i69.preheader.us

.lr.ph.i69.preheader.us:                          ; preds = %.lr.ph.us, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us
  %.0101.us = phi i64 [ 0, %.lr.ph.us ], [ %i.dy, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us ] ; 2 uses
  %i.dh = mul i64 %.0101.us, %2
  %i.di = add i64 %i.dh, %.048103.us
  %i.dj = mul i64 %i.di, %3
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i69.us.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i69.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i69.preheader.us ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dl, align 4, !tbaa !12
  %i.dm = fsub <4 x float> %wide.load, %broadcast.splat
  %i.dn = fmul <4 x float> %broadcast.splat163, %i.dm
  %i.do = fadd <4 x float> %i.dn, splat (float 5.000000e-01)
  %i.dp = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.do)
  store <4 x float> %i.dp, ptr %i.dl, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us, label %.lr.ph.i69.us.preheader

.lr.ph.i69.us.preheader:                          ; preds = %.lr.ph.i69.preheader.us, %middle.block
  %.08.i.us.ph = phi i64 [ 0, %.lr.ph.i69.preheader.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i69.us

.lr.ph.i69.us:                                    ; preds = %.lr.ph.i69.us.preheader, %.lr.ph.i69.us
  %.08.i.us = phi i64 [ %i.dx, %.lr.ph.i69.us ], [ %.08.i.us.ph, %.lr.ph.i69.us.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.08.i.us ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = fsub float %i.ds, %i.dg
  %i.du = fmul float %i.by, %i.dt
  %i.dv = fadd float %i.du, 5.000000e-01
  %i.dw = tail call float @llvm.floor.f32(float %i.dv)
  store float %i.dw, ptr %i.dr, align 4, !tbaa !12
  %i.dx = add nuw i64 %.08.i.us, 1                ; 2 uses
  %exitcond.not.i70.us = icmp eq i64 %i.dx, %3
  br i1 %exitcond.not.i70.us, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us, label %.lr.ph.i69.us, !llvm.loop !46

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us: ; preds = %.lr.ph.i69.us, %middle.block
  %i.dy = add nuw i64 %.0101.us, 1                ; 2 uses
  %exitcond124.not = icmp eq i64 %i.dy, %1
  br i1 %exitcond124.not, label %._crit_edge.us, label %.lr.ph.i69.preheader.us, !llvm.loop !47

._crit_edge.us:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabEPfmff.exit.loopexit.us
  %i.dz = fadd float %.049102.us, %i.dg           ; 2 uses
  %i.ea = add nuw nsw i64 %.048103.us, 1          ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ea, %2
  br i1 %exitcond125.not, label %._crit_edge107, label %.lr.ph.us, !llvm.loop !44

._crit_edge107.loopexit.unr-lcssa:                ; preds = %.lr.ph106.split
  %lcmp.mod208.not = icmp eq i64 %xtraiter206, 0
  br i1 %lcmp.mod208.not, label %._crit_edge107, label %.lr.ph106.split.epil.preheader

.lr.ph106.split.epil.preheader:                   ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106.split.preheader
  %.048103.epil.init = phi i64 [ 0, %.lr.ph106.split.preheader ], [ %i.fp, %._crit_edge107.loopexit.unr-lcssa ]
  %.049102.epil.init = phi float [ 0.000000e+00, %.lr.ph106.split.preheader ], [ %i.fo, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter206, 0
  tail call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph106.split.epil

.lr.ph106.split.epil:                             ; preds = %.lr.ph106.split.epil, %.lr.ph106.split.epil.preheader
  %.048103.epil = phi i64 [ %i.ee, %.lr.ph106.split.epil ], [ %.048103.epil.init, %.lr.ph106.split.epil.preheader ] ; 2 uses
  %.049102.epil = phi float [ %i.ed, %.lr.ph106.split.epil ], [ %.049102.epil.init, %.lr.ph106.split.epil.preheader ]
  %epil.iter207 = phi i64 [ %epil.iter207.next, %.lr.ph106.split.epil ], [ 0, %.lr.ph106.split.epil.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.epil
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12
  %i.ed = fadd float %.049102.epil, %i.ec         ; 2 uses
  %i.ee = add nuw nsw i64 %.048103.epil, 1
  %epil.iter207.next = add i64 %epil.iter207, 1   ; 2 uses
  %epil.iter207.cmp.not = icmp eq i64 %epil.iter207.next, %xtraiter206
  br i1 %epil.iter207.cmp.not, label %._crit_edge107, label %.lr.ph106.split.epil, !llvm.loop !48

._crit_edge107.loopexit185.unr-lcssa:             ; preds = %.lr.ph.us.us
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %._crit_edge107, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %._crit_edge107.loopexit185.unr-lcssa, %.lr.ph.us.us.preheader
  %.048103.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %i.de, %._crit_edge107.loopexit185.unr-lcssa ]
  %.049102.us.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us.preheader ], [ %i.dd, %._crit_edge107.loopexit185.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter199, 0
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %.048103.us.us.epil = phi i64 [ %i.ei, %.lr.ph.us.us.epil ], [ %.048103.us.us.epil.init, %.lr.ph.us.us.epil.preheader ] ; 2 uses
  %.049102.us.us.epil = phi float [ %i.eh, %.lr.ph.us.us.epil ], [ %.049102.us.us.epil.init, %.lr.ph.us.us.epil.preheader ]
  %epil.iter200 = phi i64 [ %epil.iter200.next, %.lr.ph.us.us.epil ], [ 0, %.lr.ph.us.us.epil.preheader ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103.us.us.epil
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !12
  %i.eh = fadd float %.049102.us.us.epil, %i.eg   ; 2 uses
  %i.ei = add nuw nsw i64 %.048103.us.us.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %._crit_edge107, label %.lr.ph.us.us.epil, !llvm.loop !49

._crit_edge107:                                   ; preds = %._crit_edge.us, %._crit_edge107.loopexit185.unr-lcssa, %.lr.ph.us.us.epil, %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106.split.epil, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ej = phi float [ 0.000000e+00, %._crit_edge107.loopexit185.unr-lcssa ], [ 0.000000e+00, %._crit_edge107.loopexit.unr-lcssa ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0.000000e+00, %.lr.ph106.split.epil ], [ 0.000000e+00, %.lr.ph.us.us.epil ], [ %i.by, %._crit_edge.us ]
  %.sroa.11.0140149 = phi ptr [ %i.d, %._crit_edge107.loopexit185.unr-lcssa ], [ %i.d, %._crit_edge107.loopexit.unr-lcssa ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.d, %.lr.ph106.split.epil ], [ %i.d, %.lr.ph.us.us.epil ], [ %i.d, %._crit_edge.us ]
  %.sroa.079.0142147 = phi ptr [ %i.c, %._crit_edge107.loopexit185.unr-lcssa ], [ %i.c, %._crit_edge107.loopexit.unr-lcssa ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.c, %.lr.ph106.split.epil ], [ %i.c, %.lr.ph.us.us.epil ], [ %i.c, %._crit_edge.us ] ; 3 uses
  %.049.lcssa = phi float [ %i.eh, %.lr.ph.us.us.epil ], [ %i.ed, %.lr.ph106.split.epil ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.fo, %._crit_edge107.loopexit.unr-lcssa ], [ %i.dd, %._crit_edge107.loopexit185.unr-lcssa ], [ %i.dz, %._crit_edge.us ]
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph106.split:                                  ; preds = %.lr.ph106.split, %.lr.ph106.split.preheader.new
  %.048103 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %i.fp, %.lr.ph106.split ] ; 9 uses
  %.049102 = phi float [ 0.000000e+00, %.lr.ph106.split.preheader.new ], [ %i.fo, %.lr.ph106.split ]
  %niter212 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %niter212.next.7, %.lr.ph106.split ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fadd float %.049102, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  %i.eq = fadd float %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !12
  %i.eu = fadd float %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = fadd float %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = fadd float %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12
  %i.fg = fadd float %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12
  %i.fk = fadd float %i.fg, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = fadd float %i.fk, %i.fn                 ; 3 uses
  %i.fp = add nuw nsw i64 %.048103, 8             ; 2 uses
  %niter212.next.7 = add i64 %niter212, 8         ; 2 uses
  %niter212.ncmp.7 = icmp eq i64 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7, label %._crit_edge107.loopexit.unr-lcssa, label %.lr.ph106.split, !llvm.loop !44

bb.b:                                             ; preds = %._crit_edge107
  store float %i.ej, ptr %4, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge107
  %.not58 = icmp eq ptr %5, null
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.049.lcssa, ptr %5, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.079.0142147, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.11.0140149 to i64
  %i.fr = ptrtoint ptr %.sroa.079.0142147 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.079.0142147, i64 noundef %i.fs) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(none) %6, i64 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.a, ptr %11, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !23
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.f)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %11, align 8, !tbaa !24
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_, ptr noundef nonnull @.str.3, i32 noundef 147)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #14
          to label %bb.ai unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.l, %bb.i ]
  %i.m = load ptr, ptr %11, align 8, !tbaa !24    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.o = load i64, ptr %i.a, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit388

bb.k:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge732, label %.noexc294

.noexc294:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %1, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15 ; 6 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !12
  %i.u = add nsw i64 %1, -1                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph731, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc294
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !12
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc294
  %.not.i = icmp eq i64 %2, 0
  %i.x = add i64 %2, -1                           ; 2 uses
  %xtraiter1169 = and i64 %2, 3                   ; 3 uses
  %i.y = icmp ult i64 %i.x, 3
  %unroll_iter1174 = and i64 %2, -4
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  %lcmp.mod1173 = icmp ne i64 %xtraiter1169, 0
  %xtraiter1176 = and i64 %2, 3                   ; 3 uses
  %i.z = icmp ult i64 %i.x, 3
  %unroll_iter1181 = and i64 %2, -4
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1176, 0
  %lcmp.mod1180 = icmp ne i64 %xtraiter1176, 0
  br label %bb.l

._crit_edge732.loopexit:                          ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %i.aa = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %.sroa.speculated577, i64 1
  br label %._crit_edge732

._crit_edge732:                                   ; preds = %._crit_edge732.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0582.0844 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %._crit_edge732.loopexit ] ; 4 uses
  %.sroa.12588.0842 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %._crit_edge732.loopexit ] ; 2 uses
  %.0596.lcssa = phi float [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cm, %._crit_edge732.loopexit ] ; 3 uses
  %i.ac = phi <2 x float> [ <float 0.000000e+00, float -inf>, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ab, %._crit_edge732.loopexit ] ; 2 uses
  %i.ad = fcmp ogt <2 x float> %i.ac, zeroinitializer
  %i.ae = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.ac
  %i.af = select <2 x i1> %i.ad, <2 x float> %i.ae, <2 x float> splat (float +inf) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ag, %i.ah
  %.sroa.speculated571 = select i1 %i.ai, float %i.ag, float %i.ah ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %.sroa.speculated571)
end_hunk_0
begin_hunk_1_@_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.ej, i1 false)
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

bb.m:                                             ; preds = %bb.a
  br i1 %3, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ek, label %.noexc312, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306

.noexc312:                                        ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306: ; preds = %bb.n
  %.not.i.i.i.i307 = icmp eq i64 %1, 0            ; 3 uses
  br i1 %.not.i.i.i.i307, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314, label %.noexc313

.noexc313:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306
  %i.el = shl nuw nsw i64 %1, 2
  %i.em = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #15 ; 5 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %1 ; 2 uses
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !12
  %i.eo = add nsw i64 %1, -1                      ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308: ; preds = %.noexc313
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %.idx.i.i.i.i.i.i.i309 = shl nuw nsw i64 %i.eo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %.idx.i.i.i.i.i.i.i309, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308, %.noexc313, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306
  %.sroa.12568.0 = phi ptr [ %i.en, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308 ], [ %i.en, %.noexc313 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306 ]
  %.sroa.0562.0 = phi ptr [ %i.em, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308 ], [ %i.em, %.noexc313 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306 ] ; 5 uses
  %.not.i315 = icmp eq i64 %0, 0                  ; 2 uses
  br i1 %.not.i315, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314
  %i.er = add i64 %0, -1                          ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.es = icmp ult i64 %i.er, 3
  br i1 %i.es, label %.lr.ph.i316.epil.preheader, label %.lr.ph.i316.preheader.new

.lr.ph.i316.preheader.new:                        ; preds = %.lr.ph.i316.preheader
  %unroll_iter = and i64 %0, -4
  br label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %.lr.ph.i316, %.lr.ph.i316.preheader.new
  %.011.i317 = phi i64 [ 0, %.lr.ph.i316.preheader.new ], [ %i.fi, %.lr.ph.i316 ] ; 5 uses
  %.0810.i318 = phi float [ +inf, %.lr.ph.i316.preheader.new ], [ %.1.i319.3, %.lr.ph.i316 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i316.preheader.new ], [ %niter.next.3, %.lr.ph.i316 ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.eu = load float, ptr %i.et, align 4, !tbaa !12 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %.0810.i318
  %.1.i319 = select i1 %i.ev, float %i.eu, float %.0810.i318 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12 ; 2 uses
  %i.ez = fcmp olt float %i.ey, %.1.i319
  %.1.i319.1 = select i1 %i.ez, float %i.ey, float %.1.i319 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !12 ; 2 uses
  %i.fd = fcmp olt float %i.fc, %.1.i319.1
  %.1.i319.2 = select i1 %i.fd, float %i.fc, float %.1.i319.1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12 ; 2 uses
  %i.fh = fcmp olt float %i.fg, %.1.i319.2
  %.1.i319.3 = select i1 %i.fh, float %i.fg, float %.1.i319.2 ; 3 uses
  %i.fi = add nuw i64 %.011.i317, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i324.preheader.unr-lcssa, label %.lr.ph.i316, !llvm.loop !0

.lr.ph.i324.preheader.unr-lcssa:                  ; preds = %.lr.ph.i316
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i324.preheader, label %.lr.ph.i316.epil.preheader

.lr.ph.i316.epil.preheader:                       ; preds = %.lr.ph.i324.preheader.unr-lcssa, %.lr.ph.i316.preheader
  %.011.i317.epil.init = phi i64 [ 0, %.lr.ph.i316.preheader ], [ %i.fi, %.lr.ph.i324.preheader.unr-lcssa ]
  %.0810.i318.epil.init = phi float [ +inf, %.lr.ph.i316.preheader ], [ %.1.i319.3, %.lr.ph.i324.preheader.unr-lcssa ]
  %lcmp.mod1097 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1097)
  br label %.lr.ph.i316.epil

.lr.ph.i316.epil:                                 ; preds = %.lr.ph.i316.epil, %.lr.ph.i316.epil.preheader
  %.011.i317.epil = phi i64 [ %i.fm, %.lr.ph.i316.epil ], [ %.011.i317.epil.init, %.lr.ph.i316.epil.preheader ] ; 2 uses
  %.0810.i318.epil = phi float [ %.1.i319.epil, %.lr.ph.i316.epil ], [ %.0810.i318.epil.init, %.lr.ph.i316.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i316.epil ], [ 0, %.lr.ph.i316.epil.preheader ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317.epil
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !12 ; 2 uses
  %i.fl = fcmp olt float %i.fk, %.0810.i318.epil
  %.1.i319.epil = select i1 %i.fl, float %i.fk, float %.0810.i318.epil ; 2 uses
  %i.fm = add nuw i64 %.011.i317.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i324.preheader, label %.lr.ph.i316.epil, !llvm.loop !59

.lr.ph.i324.preheader:                            ; preds = %.lr.ph.i316.epil, %.lr.ph.i324.preheader.unr-lcssa
  %.1.i319.lcssa = phi float [ %.1.i319.3, %.lr.ph.i324.preheader.unr-lcssa ], [ %.1.i319.epil, %.lr.ph.i316.epil ] ; 2 uses
  %xtraiter1098 = and i64 %0, 3                   ; 3 uses
  %i.fn = icmp ult i64 %i.er, 3
  br i1 %i.fn, label %.lr.ph.i324.epil.preheader, label %.lr.ph.i324.preheader.new

.lr.ph.i324.preheader.new:                        ; preds = %.lr.ph.i324.preheader
  %unroll_iter1103 = and i64 %0, -4
  br label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324, %.lr.ph.i324.preheader.new
  %.011.i325 = phi i64 [ 0, %.lr.ph.i324.preheader.new ], [ %i.gd, %.lr.ph.i324 ] ; 5 uses
  %.0810.i326 = phi float [ -inf, %.lr.ph.i324.preheader.new ], [ %.1.i327.3, %.lr.ph.i324 ] ; 2 uses
  %niter1104 = phi i64 [ 0, %.lr.ph.i324.preheader.new ], [ %niter1104.next.3, %.lr.ph.i324 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !12 ; 2 uses
  %i.fq = fcmp ogt float %i.fp, %.0810.i326
  %.1.i327 = select i1 %i.fq, float %i.fp, float %.0810.i326 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12 ; 2 uses
  %i.fu = fcmp ogt float %i.ft, %.1.i327
  %.1.i327.1 = select i1 %i.fu, float %i.ft, float %.1.i327 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !12 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, %.1.i327.1
  %.1.i327.2 = select i1 %i.fy, float %i.fx, float %.1.i327.1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !12 ; 2 uses
  %i.gc = fcmp ogt float %i.gb, %.1.i327.2
  %.1.i327.3 = select i1 %i.gc, float %i.gb, float %.1.i327.2 ; 3 uses
  %i.gd = add nuw i64 %.011.i325, 4               ; 2 uses
  %niter1104.next.3 = add i64 %niter1104, 4       ; 2 uses
  %niter1104.ncmp.3 = icmp eq i64 %niter1104.next.3, %unroll_iter1103
  br i1 %niter1104.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, label %.lr.ph.i324, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa: ; preds = %.lr.ph.i324
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1098, 0
  br i1 %lcmp.mod1100.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i324.epil.preheader

.lr.ph.i324.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, %.lr.ph.i324.preheader
  %.011.i325.epil.init = phi i64 [ 0, %.lr.ph.i324.preheader ], [ %i.gd, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ]
  %.0810.i326.epil.init = phi float [ -inf, %.lr.ph.i324.preheader ], [ %.1.i327.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ]
  %lcmp.mod1102 = icmp ne i64 %xtraiter1098, 0
  tail call void @llvm.assume(i1 %lcmp.mod1102)
  br label %.lr.ph.i324.epil

.lr.ph.i324.epil:                                 ; preds = %.lr.ph.i324.epil, %.lr.ph.i324.epil.preheader
  %.011.i325.epil = phi i64 [ %i.gh, %.lr.ph.i324.epil ], [ %.011.i325.epil.init, %.lr.ph.i324.epil.preheader ] ; 2 uses
  %.0810.i326.epil = phi float [ %.1.i327.epil, %.lr.ph.i324.epil ], [ %.0810.i326.epil.init, %.lr.ph.i324.epil.preheader ] ; 2 uses
  %epil.iter1099 = phi i64 [ %epil.iter1099.next, %.lr.ph.i324.epil ], [ 0, %.lr.ph.i324.epil.preheader ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325.epil
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !12 ; 2 uses
  %i.gg = fcmp ogt float %i.gf, %.0810.i326.epil
  %.1.i327.epil = select i1 %i.gg, float %i.gf, float %.0810.i326.epil ; 2 uses
  %i.gh = add nuw i64 %.011.i325.epil, 1
  %epil.iter1099.next = add i64 %epil.iter1099, 1 ; 2 uses
  %epil.iter1099.cmp.not = icmp eq i64 %epil.iter1099.next, %xtraiter1098
  br i1 %epil.iter1099.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i324.epil, !llvm.loop !60

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, %.lr.ph.i324.epil, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314
  %.08.lcssa.i321611 = phi float [ +inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314 ], [ %.1.i319.lcssa, %.lr.ph.i324.epil ], [ %.1.i319.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ] ; 4 uses
  %.08.lcssa.i329 = phi float [ -inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314 ], [ %.1.i327.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ], [ %.1.i327.epil, %.lr.ph.i324.epil ]
  %i.gi = fsub float %.08.lcssa.i329, %.08.lcssa.i321611 ; 2 uses
  br i1 %.not.i.i.i.i307, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330
  %.not.i332 = icmp eq i64 %2, 0
  %i.gj = add i64 %2, -1                          ; 2 uses
  %xtraiter1105 = and i64 %2, 3                   ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 3
  %unroll_iter1110 = and i64 %2, -4
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1105, 0
  %lcmp.mod1109 = icmp ne i64 %xtraiter1105, 0
  %xtraiter1112 = and i64 %2, 3                   ; 3 uses
  %i.gl = icmp ult i64 %i.gj, 3
  %unroll_iter1117 = and i64 %2, -4
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1112, 0
  %lcmp.mod1116 = icmp ne i64 %xtraiter1112, 0
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330
  %.0607.lcssa = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %.sroa.speculated557, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.1597.lcssa = phi float [ 0.000000e+00, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %i.iw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.0257.lcssa = phi float [ %i.gi, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %i.iv, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %i.gm = insertelement <2 x float> poison, float %.0257.lcssa, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %.0607.lcssa, i64 1 ; 2 uses
  %i.go = fcmp ogt <2 x float> %i.gn, zeroinitializer
  %i.gp = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.gn
  %i.gq = select <2 x i1> %i.go, <2 x float> %i.gp, <2 x float> splat (float +inf) ; 2 uses
  %i.gr = extractelement <2 x float> %i.gq, i64 0 ; 2 uses
  %i.gs = extractelement <2 x float> %i.gq, i64 1 ; 2 uses
  %i.gt = fcmp olt float %i.gr, %i.gs
  %.sroa.speculated551 = select i1 %i.gt, float %i.gr, float %i.gs ; 2 uses
  %i.gu = tail call float @llvm.fabs.f32(float %.sroa.speculated551)
  %i.gv = fcmp one float %i.gu, +inf
  %.1271 = select i1 %i.gv, float %.sroa.speculated551, float 0.000000e+00 ; 8 uses
  %12 = fadd float %.08.lcssa.i321611, %.1597.lcssa ; 2 uses
  %.not.i355 = icmp eq i64 %2, 0
  %or.cond740 = or i1 %.not.i.i.i.i307, %.not.i355
  br i1 %or.cond740, label %._crit_edge642.split, label %.lr.ph.i356.preheader.preheader

.lr.ph.i356.preheader.preheader:                  ; preds = %._crit_edge
  %i.gw = mul i64 %2, %1                          ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.gw
  %i.gx = shl i64 %i.gw, 2
  %scevgep943 = getelementptr i8, ptr %4, i64 %i.gx
  %min.iters.check = icmp ult i64 %2, 4
  %bound0 = icmp ult ptr %6, %scevgep943
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gy = and i64 %2, -6917529027641081856
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = or i1 %found.conflict, %i.gz
  %n.vec = and i64 %2, 6917529027641081852        ; 3 uses
  %broadcast.splatinsert945 = insertelement <4 x float> poison, float %.1271, i64 0
  %broadcast.splat946 = shufflevector <4 x float> %broadcast.splatinsert945, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %2, %n.vec
  %xtraiter1119 = and i64 %2, 1
  %lcmp.mod1120.not = icmp eq i64 %xtraiter1119, 0
  br label %.lr.ph.i356.preheader

bb.o:                                             ; preds = %.lr.ph, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347
  %.0256636 = phi i64 [ 0, %.lr.ph ], [ %i.ix, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ] ; 4 uses
  %.0257635 = phi float [ %i.gi, %.lr.ph ], [ %i.iv, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.1597634 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.iw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.0607633 = phi float [ -inf, %.lr.ph ], [ %.sroa.speculated557, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ] ; 2 uses
  %i.hb = mul i64 %.0256636, %2
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hb ; 10 uses
  br i1 %.not.i332, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.o
  br i1 %i.gk, label %.lr.ph.i333.epil.preheader, label %.lr.ph.i333

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread: ; preds = %bb.o
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0562.0, i64 %.0256636
  store float +inf, ptr %i.hd, align 4, !tbaa !12
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333
  %.011.i334 = phi i64 [ %i.ht, %.lr.ph.i333 ], [ 0, %.lr.ph.i333.preheader ] ; 5 uses
  %.0810.i335 = phi float [ %.1.i336.3, %.lr.ph.i333 ], [ +inf, %.lr.ph.i333.preheader ] ; 2 uses
  %niter1111 = phi i64 [ %niter1111.next.3, %.lr.ph.i333 ], [ 0, %.lr.ph.i333.preheader ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i334
  %i.hf = load float, ptr %i.he, align 4, !tbaa !12 ; 2 uses
  %i.hg = fcmp olt float %i.hf, %.0810.i335
  %.1.i336 = select i1 %i.hg, float %i.hf, float %.0810.i335 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i334
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !12 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %.1.i336
  %.1.i336.1 = select i1 %i.hk, float %i.hj, float %.1.i336 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i334
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !12 ; 2 uses
  %i.ho = fcmp olt float %i.hn, %.1.i336.1
  %.1.i336.2 = select i1 %i.ho, float %i.hn, float %.1.i336.1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i334
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !12 ; 2 uses
  %i.hs = fcmp olt float %i.hr, %.1.i336.2
  %.1.i336.3 = select i1 %i.hs, float %i.hr, float %.1.i336.2 ; 3 uses
  %i.ht = add nuw i64 %.011.i334, 4               ; 2 uses
  %niter1111.next.3 = add nuw i64 %niter1111, 4   ; 2 uses
  %niter1111.ncmp.3 = icmp eq i64 %niter1111.next.3, %unroll_iter1110
  br i1 %niter1111.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa, label %.lr.ph.i333, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa: ; preds = %.lr.ph.i333
  br i1 %lcmp.mod1107.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, label %.lr.ph.i333.epil.preheader

.lr.ph.i333.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa, %.lr.ph.i333.preheader
  %.011.i334.epil.init = phi i64 [ 0, %.lr.ph.i333.preheader ], [ %i.ht, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ]
  %.0810.i335.epil.init = phi float [ +inf, %.lr.ph.i333.preheader ], [ %.1.i336.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1109)
  br label %.lr.ph.i333.epil

.lr.ph.i333.epil:                                 ; preds = %.lr.ph.i333.epil, %.lr.ph.i333.epil.preheader
  %.011.i334.epil = phi i64 [ %i.hx, %.lr.ph.i333.epil ], [ %.011.i334.epil.init, %.lr.ph.i333.epil.preheader ] ; 2 uses
  %.0810.i335.epil = phi float [ %.1.i336.epil, %.lr.ph.i333.epil ], [ %.0810.i335.epil.init, %.lr.ph.i333.epil.preheader ] ; 2 uses
  %epil.iter1106 = phi i64 [ %epil.iter1106.next, %.lr.ph.i333.epil ], [ 0, %.lr.ph.i333.epil.preheader ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i334.epil
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12 ; 2 uses
  %i.hw = fcmp olt float %i.hv, %.0810.i335.epil
  %.1.i336.epil = select i1 %i.hw, float %i.hv, float %.0810.i335.epil ; 2 uses
  %i.hx = add nuw i64 %.011.i334.epil, 1
  %epil.iter1106.next = add i64 %epil.iter1106, 1 ; 2 uses
  %epil.iter1106.cmp.not = icmp eq i64 %epil.iter1106.next, %xtraiter1105
  br i1 %epil.iter1106.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, label %.lr.ph.i333.epil, !llvm.loop !61

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339: ; preds = %.lr.ph.i333.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa
  %.1.i336.lcssa = phi float [ %.1.i336.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ], [ %.1.i336.epil, %.lr.ph.i333.epil ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0562.0, i64 %.0256636
  store float %.1.i336.lcssa, ptr %i.hy, align 4, !tbaa !12
  br i1 %i.gl, label %.lr.ph.i341.epil.preheader, label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, %.lr.ph.i341
  %.011.i342 = phi i64 [ %i.io, %.lr.ph.i341 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ] ; 5 uses
  %.0810.i343 = phi float [ %.1.i344.3, %.lr.ph.i341 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ] ; 2 uses
  %niter1118 = phi i64 [ %niter1118.next.3, %.lr.ph.i341 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i342
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !12 ; 2 uses
  %i.ib = fcmp ogt float %i.ia, %.0810.i343
  %.1.i344 = select i1 %i.ib, float %i.ia, float %.0810.i343 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i342
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !12 ; 2 uses
  %i.if = fcmp ogt float %i.ie, %.1.i344
  %.1.i344.1 = select i1 %i.if, float %i.ie, float %.1.i344 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i342
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !12 ; 2 uses
  %i.ij = fcmp ogt float %i.ii, %.1.i344.1
  %.1.i344.2 = select i1 %i.ij, float %i.ii, float %.1.i344.1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i342
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  %i.im = load float, ptr %i.il, align 4, !tbaa !12 ; 2 uses
  %i.in = fcmp ogt float %i.im, %.1.i344.2
  %.1.i344.3 = select i1 %i.in, float %i.im, float %.1.i344.2 ; 3 uses
  %i.io = add nuw i64 %.011.i342, 4               ; 2 uses
  %niter1118.next.3 = add i64 %niter1118, 4       ; 2 uses
  %niter1118.ncmp.3 = icmp eq i64 %niter1118.next.3, %unroll_iter1117
  br i1 %niter1118.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, label %.lr.ph.i341, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa: ; preds = %.lr.ph.i341
  br i1 %lcmp.mod1114.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, label %.lr.ph.i341.epil.preheader

.lr.ph.i341.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339
  %.011.i342.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ], [ %i.io, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ]
  %.0810.i343.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ], [ %.1.i344.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1116)
  br label %.lr.ph.i341.epil

.lr.ph.i341.epil:                                 ; preds = %.lr.ph.i341.epil, %.lr.ph.i341.epil.preheader
  %.011.i342.epil = phi i64 [ %i.is, %.lr.ph.i341.epil ], [ %.011.i342.epil.init, %.lr.ph.i341.epil.preheader ] ; 2 uses
  %.0810.i343.epil = phi float [ %.1.i344.epil, %.lr.ph.i341.epil ], [ %.0810.i343.epil.init, %.lr.ph.i341.epil.preheader ] ; 2 uses
  %epil.iter1113 = phi i64 [ %epil.iter1113.next, %.lr.ph.i341.epil ], [ 0, %.lr.ph.i341.epil.preheader ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.011.i342.epil
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !12 ; 2 uses
  %i.ir = fcmp ogt float %i.iq, %.0810.i343.epil
  %.1.i344.epil = select i1 %i.ir, float %i.iq, float %.0810.i343.epil ; 2 uses
  %i.is = add nuw i64 %.011.i342.epil, 1
  %epil.iter1113.next = add i64 %epil.iter1113, 1 ; 2 uses
  %epil.iter1113.cmp.not = icmp eq i64 %epil.iter1113.next, %xtraiter1112
  br i1 %epil.iter1113.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, label %.lr.ph.i341.epil, !llvm.loop !62

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, %.lr.ph.i341.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread
  %.08.lcssa.i338613 = phi float [ +inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread ], [ %.1.i336.lcssa, %.lr.ph.i341.epil ], [ %.1.i336.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i346 = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread ], [ %.1.i344.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ], [ %.1.i344.epil, %.lr.ph.i341.epil ]
  %i.it = fsub float %.08.lcssa.i346, %.08.lcssa.i338613 ; 3 uses
  %i.iu = fcmp olt float %.0607633, %i.it
  %.sroa.speculated557 = select i1 %i.iu, float %i.it, float %.0607633 ; 2 uses
  %i.iv = fadd float %.0257635, %i.it             ; 2 uses
  %i.iw = fadd float %.1597634, %.08.lcssa.i338613 ; 2 uses
  %i.ix = add nuw nsw i64 %.0256636, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ix, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !63

._crit_edge642.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, %._crit_edge
  %i.iy = mul i64 %2, %1
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 %i.iy
  %i.ja = sub i64 %7, %1
  %i.jb = mul i64 %i.ja, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iz, i8 0, i64 %i.jb, i1 false)
  br i1 %.not.i315, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i350.preheader

.lr.ph.i350.preheader:                            ; preds = %._crit_edge642.split
  %min.iters.check948 = icmp ult i64 %0, 4
  br i1 %min.iters.check948, label %.lr.ph.i350.preheader1092, label %vector.ph949

vector.ph949:                                     ; preds = %.lr.ph.i350.preheader
  %n.vec950 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert951 = insertelement <4 x float> poison, float %.08.lcssa.i321611, i64 0
  %broadcast.splat952 = shufflevector <4 x float> %broadcast.splatinsert951, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x float> poison, float %.1271, i64 0
  %broadcast.splat954 = shufflevector <4 x float> %broadcast.splatinsert953, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph949
  %index956 = phi i64 [ 0, %vector.ph949 ], [ %index.next958, %vector.body955 ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index956
  %wide.load957 = load <4 x float>, ptr %i.jc, align 4, !tbaa !12
  %i.jd = fsub <4 x float> %wide.load957, %broadcast.splat952
  %i.je = fmul <4 x float> %broadcast.splat954, %i.jd
  %i.jf = fadd <4 x float> %i.je, splat (float 5.000000e-01)
  %i.jg = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.jf)
  %i.jh = fptoui <4 x float> %i.jg to <4 x i16>
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index956
  store <4 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !26
  %index.next958 = add nuw i64 %index956, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next958, %n.vec950
  br i1 %i.jj, label %middle.block959, label %vector.body955, !llvm.loop !64

middle.block959:                                  ; preds = %vector.body955
  %cmp.n960 = icmp eq i64 %0, %n.vec950
  br i1 %cmp.n960, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i350.preheader1092

.lr.ph.i350.preheader1092:                        ; preds = %.lr.ph.i350.preheader, %middle.block959
  %.08.i351.ph = phi i64 [ 0, %.lr.ph.i350.preheader ], [ %n.vec950, %middle.block959 ]
  br label %.lr.ph.i350

.lr.ph.i350:                                      ; preds = %.lr.ph.i350.preheader1092, %.lr.ph.i350
  %.08.i351 = phi i64 [ %i.js, %.lr.ph.i350 ], [ %.08.i351.ph, %.lr.ph.i350.preheader1092 ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.08.i351
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !12
  %i.jm = fsub float %i.jl, %.08.lcssa.i321611
  %i.jn = fmul float %.1271, %i.jm
  %i.jo = fadd float %i.jn, 5.000000e-01
  %i.jp = tail call float @llvm.floor.f32(float %i.jo)
  %i.jq = fptoui float %i.jp to i16
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.08.i351
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !26
  %i.js = add nuw i64 %.08.i351, 1                ; 2 uses
  %exitcond.not.i352 = icmp eq i64 %i.js, %0
  br i1 %exitcond.not.i352, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i350, !llvm.loop !65

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit: ; preds = %.lr.ph.i350, %middle.block959, %._crit_edge642.split
  %.not.i.i.i353 = icmp eq ptr %.sroa.0562.0, null
  br i1 %.not.i.i.i353, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

.lr.ph.i356.preheader:                            ; preds = %.lr.ph.i356.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit
  %.0255639 = phi i64 [ %i.li, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit ], [ 0, %.lr.ph.i356.preheader.preheader ] ; 3 uses
  %i.jt = mul i64 %.0255639, %2                   ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jt ; 4 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0562.0, i64 %.0255639
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !12 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %6, i64 %i.jt ; 4 uses
  %brmerge1214 = or i1 %min.iters.check, %i.ha
  br i1 %brmerge1214, label %.lr.ph.i356.preheader1093, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i356.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %index
  %wide.load = load <4 x float>, ptr %i.jy, align 4, !tbaa !12, !alias.scope !107
  %i.jz = fsub <4 x float> %wide.load, %broadcast.splat
  %i.ka = fmul <4 x float> %broadcast.splat946, %i.jz
  %i.kb = fadd <4 x float> %i.ka, splat (float 5.000000e-01)
  %i.kc = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.kb)
  %i.kd = fptoui <4 x float> %i.kc to <4 x i8>
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 %index
  store <4 x i8> %i.kd, ptr %i.ke, align 1, !tbaa !23, !alias.scope !108, !noalias !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, label %.lr.ph.i356.preheader1093

.lr.ph.i356.preheader1093:                        ; preds = %.lr.ph.i356.preheader, %middle.block
  %.08.i357.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i356.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.08.i357.ph, 1
  br i1 %lcmp.mod1120.not, label %.lr.ph.i356.prol.loopexit, label %.lr.ph.i356.prol

.lr.ph.i356.prol:                                 ; preds = %.lr.ph.i356.preheader1093
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.08.i357.ph
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !12
  %i.ki = fsub float %i.kh, %i.jw
  %i.kj = fmul float %.1271, %i.ki
  %i.kk = fadd float %i.kj, 5.000000e-01
  %i.kl = tail call float @llvm.floor.f32(float %i.kk)
  %i.km = fptoui float %i.kl to i8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.08.i357.ph
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !23
  %i.ko = or disjoint i64 %.08.i357.ph, 1
  br label %.lr.ph.i356.prol.loopexit

.lr.ph.i356.prol.loopexit:                        ; preds = %.lr.ph.i356.prol, %.lr.ph.i356.preheader1093
  %.08.i357.unr = phi i64 [ %.08.i357.ph, %.lr.ph.i356.preheader1093 ], [ %i.ko, %.lr.ph.i356.prol ]
  %i.kp = icmp eq i64 %2, %.neg
  br i1 %i.kp, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, label %.lr.ph.i356

.lr.ph.i356:                                      ; preds = %.lr.ph.i356.prol.loopexit, %.lr.ph.i356
  %.08.i357 = phi i64 [ %i.lh, %.lr.ph.i356 ], [ %.08.i357.unr, %.lr.ph.i356.prol.loopexit ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.08.i357
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !12
  %i.ks = fsub float %i.kr, %i.jw
  %i.kt = fmul float %.1271, %i.ks
  %i.ku = fadd float %i.kt, 5.000000e-01
  %i.kv = tail call float @llvm.floor.f32(float %i.ku)
  %i.kw = fptoui float %i.kv to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.08.i357
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !23
  %i.ky = add nuw i64 %.08.i357, 1                ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12
  %i.lb = fsub float %i.la, %i.jw
  %i.lc = fmul float %.1271, %i.lb
  %i.ld = fadd float %i.lc, 5.000000e-01
  %i.le = tail call float @llvm.floor.f32(float %i.ld)
  %i.lf = fptoui float %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.ky
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !23
  %i.lh = add nuw i64 %.08.i357, 2                ; 2 uses
  %exitcond.not.i358.1 = icmp eq i64 %i.lh, %2
  br i1 %exitcond.not.i358.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, label %.lr.ph.i356, !llvm.loop !70

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit: ; preds = %.lr.ph.i356.prol.loopexit, %.lr.ph.i356, %middle.block
  %i.li = add nuw nsw i64 %.0255639, 1            ; 2 uses
  %exitcond781.not = icmp eq i64 %i.li, %1
  br i1 %exitcond781.not, label %._crit_edge642.split, label %.lr.ph.i356.preheader, !llvm.loop !71

bb.p:                                             ; preds = %bb.m
  %.not285 = icmp eq ptr %8, null
  br i1 %.not285, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.lj = mul i64 %1, %0                          ; 5 uses
  %i.lk = icmp ugt i64 %i.lj, 2305843009213693951
  br i1 %i.lk, label %.noexc366, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360

.noexc366:                                        ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360: ; preds = %bb.q
  %.not.i.i.i.i361 = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i.i.i361, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368, label %.noexc367

.noexc367:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360
  %i.ll = shl nuw nsw i64 %i.lj, 2
  %i.lm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #15 ; 5 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lj ; 2 uses
  store float 0.000000e+00, ptr %i.lm, align 4, !tbaa !12
  %i.lo = add nsw i64 %i.lj, -1                   ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362: ; preds = %.noexc367
  %i.lq = getelementptr i8, ptr %i.lm, i64 4
  %.idx.i.i.i.i.i.i.i363 = shl nuw nsw i64 %i.lo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lq, i8 0, i64 %.idx.i.i.i.i.i.i.i363, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362, %.noexc367, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360
  %.sroa.0541.0 = phi ptr [ %i.lm, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362 ], [ %i.lm, %.noexc367 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360 ] ; 12 uses
  %.sroa.13547.0 = phi ptr [ %i.ln, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362 ], [ %i.ln, %.noexc367 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360 ] ; 2 uses
  %i.lr = icmp ugt i64 %0, 2305843009213693951
  br i1 %i.lr, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc375 unwind label %bb.t

.noexc375:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368
  %.not.i.i.i.i370 = icmp eq i64 %0, 0            ; 2 uses
  br i1 %.not.i.i.i.i370, label %._crit_edge664, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369
  %i.ls = shl nuw nsw i64 %0, 2
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #15
          to label %.noexc376 unwind label %bb.t  ; 5 uses

.noexc376:                                        ; preds = %bb.s
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %0
  store float 0.000000e+00, ptr %i.lt, align 4, !tbaa !12
  %i.lv = add nsw i64 %0, -1                      ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %.lr.ph.i379.preheader, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371: ; preds = %.noexc376
  %i.lx = getelementptr i8, ptr %i.lt, i64 4
  %.idx.i.i.i.i.i.i.i372 = shl nuw nsw i64 %i.lv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lx, i8 0, i64 %.idx.i.i.i.i.i.i.i372, i1 false), !tbaa !12
  br label %.lr.ph.i379.preheader

.lr.ph.i379.preheader:                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371, %.noexc376
  %i.ly = add nsw i64 %0, -1
  %xtraiter1121 = and i64 %0, 3                   ; 3 uses
  %i.lz = icmp ult i64 %i.ly, 3
  br i1 %i.lz, label %.lr.ph.i379.epil.preheader, label %.lr.ph.i379.preheader.new

.lr.ph.i379.preheader.new:                        ; preds = %.lr.ph.i379.preheader
  %unroll_iter1126 = and i64 %0, 2305843009213693948
  br label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.lr.ph.i379, %.lr.ph.i379.preheader.new
  %.011.i380 = phi i64 [ 0, %.lr.ph.i379.preheader.new ], [ %i.mp, %.lr.ph.i379 ] ; 5 uses
  %.0810.i381 = phi float [ +inf, %.lr.ph.i379.preheader.new ], [ %.1.i382.3, %.lr.ph.i379 ] ; 2 uses
  %niter1127 = phi i64 [ 0, %.lr.ph.i379.preheader.new ], [ %niter1127.next.3, %.lr.ph.i379 ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !12 ; 2 uses
  %i.mc = fcmp olt float %i.mb, %.0810.i381
  %.1.i382 = select i1 %i.mc, float %i.mb, float %.0810.i381 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12 ; 2 uses
  %i.mg = fcmp olt float %i.mf, %.1.i382
  %.1.i382.1 = select i1 %i.mg, float %i.mf, float %.1.i382 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12 ; 2 uses
  %i.mk = fcmp olt float %i.mj, %.1.i382.1
  %.1.i382.2 = select i1 %i.mk, float %i.mj, float %.1.i382.1 ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !12 ; 2 uses
  %i.mo = fcmp olt float %i.mn, %.1.i382.2
  %.1.i382.3 = select i1 %i.mo, float %i.mn, float %.1.i382.2 ; 3 uses
  %i.mp = add nuw nsw i64 %.011.i380, 4           ; 2 uses
  %niter1127.next.3 = add i64 %niter1127, 4       ; 2 uses
  %niter1127.ncmp.3 = icmp eq i64 %niter1127.next.3, %unroll_iter1126
  br i1 %niter1127.ncmp.3, label %.lr.ph663.unr-lcssa, label %.lr.ph.i379, !llvm.loop !0

.lr.ph663.unr-lcssa:                              ; preds = %.lr.ph.i379
  %lcmp.mod1123.not = icmp eq i64 %xtraiter1121, 0
  br i1 %lcmp.mod1123.not, label %.lr.ph663, label %.lr.ph.i379.epil.preheader

.lr.ph.i379.epil.preheader:                       ; preds = %.lr.ph663.unr-lcssa, %.lr.ph.i379.preheader
  %.011.i380.epil.init = phi i64 [ 0, %.lr.ph.i379.preheader ], [ %i.mp, %.lr.ph663.unr-lcssa ]
  %.0810.i381.epil.init = phi float [ +inf, %.lr.ph.i379.preheader ], [ %.1.i382.3, %.lr.ph663.unr-lcssa ]
  %lcmp.mod1125 = icmp ne i64 %xtraiter1121, 0
  tail call void @llvm.assume(i1 %lcmp.mod1125)
  br label %.lr.ph.i379.epil

.lr.ph.i379.epil:                                 ; preds = %.lr.ph.i379.epil, %.lr.ph.i379.epil.preheader
  %.011.i380.epil = phi i64 [ %i.mt, %.lr.ph.i379.epil ], [ %.011.i380.epil.init, %.lr.ph.i379.epil.preheader ] ; 2 uses
  %.0810.i381.epil = phi float [ %.1.i382.epil, %.lr.ph.i379.epil ], [ %.0810.i381.epil.init, %.lr.ph.i379.epil.preheader ] ; 2 uses
  %epil.iter1122 = phi i64 [ %epil.iter1122.next, %.lr.ph.i379.epil ], [ 0, %.lr.ph.i379.epil.preheader ]
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380.epil
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !12 ; 2 uses
  %i.ms = fcmp olt float %i.mr, %.0810.i381.epil
  %.1.i382.epil = select i1 %i.ms, float %i.mr, float %.0810.i381.epil ; 2 uses
  %i.mt = add nuw nsw i64 %.011.i380.epil, 1
  %epil.iter1122.next = add i64 %epil.iter1122, 1 ; 2 uses
  %epil.iter1122.cmp.not = icmp eq i64 %epil.iter1122.next, %xtraiter1121
  br i1 %epil.iter1122.cmp.not, label %.lr.ph663, label %.lr.ph.i379.epil, !llvm.loop !72

.lr.ph663:                                        ; preds = %.lr.ph.i379.epil, %.lr.ph663.unr-lcssa
  %.1.i382.lcssa = phi float [ %.1.i382.3, %.lr.ph663.unr-lcssa ], [ %.1.i382.epil, %.lr.ph.i379.epil ]
  %13 = ptrtoint ptr %i.lu to i64
  %.not743 = icmp eq i64 %1, 0
  %.not.i391 = icmp eq i64 %2, 0
  %i.mu = add i64 %2, -1                          ; 2 uses
  %i.mv = add i64 %1, -1
  %xtraiter1128 = and i64 %2, 3                   ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 3
  %unroll_iter1133 = and i64 %2, -4
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1128, 0
  %lcmp.mod1132 = icmp ne i64 %xtraiter1128, 0
  %xtraiter1135 = and i64 %2, 3                   ; 3 uses
  %i.mx = icmp ult i64 %i.mu, 3
  %unroll_iter1140 = and i64 %2, -4
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1135, 0
  %lcmp.mod1139 = icmp ne i64 %xtraiter1135, 0
  %xtraiter1142 = and i64 %1, 3                   ; 2 uses
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  %i.my = icmp ult i64 %i.mv, 3
  br label %bb.v

._crit_edge664.loopexit:                          ; preds = %._crit_edge650
  %i.mz = insertelement <2 x float> poison, float %.sroa.speculated528, i64 0
  %i.na = insertelement <2 x float> %i.mz, float %.1606.lcssa, i64 1
  br label %._crit_edge664

._crit_edge664:                                   ; preds = %._crit_edge664.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369
  %.sroa.0535.0616850 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %i.lt, %._crit_edge664.loopexit ] ; 5 uses
  %.sroa.10539.0617849 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %13, %._crit_edge664.loopexit ]
  %.2598.lcssa = phi float [ +inf, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %.sroa.speculated523, %._crit_edge664.loopexit ] ; 4 uses
  %i.nb = phi <2 x float> [ splat (float -inf), %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %i.na, %._crit_edge664.loopexit ] ; 2 uses
  %i.nc = fcmp ogt <2 x float> %i.nb, zeroinitializer
  %i.nd = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.nb
  %i.ne = select <2 x i1> %i.nc, <2 x float> %i.nd, <2 x float> splat (float +inf) ; 2 uses
  %i.nf = extractelement <2 x float> %i.ne, i64 0 ; 2 uses
  %i.ng = extractelement <2 x float> %i.ne, i64 1 ; 2 uses
  %i.nh = fcmp olt float %i.nf, %i.ng
  %.sroa.speculated511 = select i1 %i.nh, float %i.nf, float %i.ng ; 2 uses
  %i.ni = tail call float @llvm.fabs.f32(float %.sroa.speculated511)
  %i.nj = fcmp one float %i.ni, +inf
  %.2272 = select i1 %i.nj, float %.sroa.speculated511, float 0.000000e+00 ; 8 uses
  br i1 %.not.i.i.i.i370, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412, label %.preheader632.lr.ph

.preheader632.lr.ph:                              ; preds = %._crit_edge664
  %.not745 = icmp eq i64 %1, 0
  %.not.i417 = icmp eq i64 %2, 0
  %i.nk = sub i64 %7, %1                          ; 2 uses
  %i.nl = mul i64 %i.nk, %2
  %i.nm = shl i64 %2, 2                           ; 2 uses
  %min.iters.check973 = icmp ult i64 %2, 4
  %i.nn = or i64 %i.nm, %2
  %i.no = icmp slt i64 %i.nn, 0
  %n.vec975 = and i64 %2, -4                      ; 3 uses
  %broadcast.splatinsert978 = insertelement <4 x float> poison, float %.2272, i64 0
  %broadcast.splat979 = shufflevector <4 x float> %broadcast.splatinsert978, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n985 = icmp eq i64 %2, %n.vec975
  %xtraiter1144 = and i64 %2, 1
  %lcmp.mod1145.not = icmp eq i64 %xtraiter1144, 0
  br label %.preheader632

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i387 = icmp eq ptr %.sroa.0541.0, null
  br i1 %.not.i.i.i387, label %_ZNSt6vectorIfSaIfEED2Ev.exit388, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.nq = ptrtoint ptr %.sroa.13547.0 to i64
  %i.nr = ptrtoint ptr %.sroa.0541.0 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0541.0, i64 noundef %i.ns) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit388

bb.v:                                             ; preds = %.lr.ph663, %._crit_edge650
  %.0250662 = phi i64 [ 0, %.lr.ph663 ], [ %i.ox, %._crit_edge650 ] ; 3 uses
  %.0251661 = phi i64 [ 0, %.lr.ph663 ], [ %.1252.lcssa, %._crit_edge650 ] ; 5 uses
  %.2598660 = phi float [ +inf, %.lr.ph663 ], [ %.sroa.speculated523, %._crit_edge650 ] ; 2 uses
  %.0604659 = phi float [ -inf, %.lr.ph663 ], [ %.sroa.speculated528, %._crit_edge650 ] ; 2 uses
  %.0605658 = phi float [ -inf, %.lr.ph663 ], [ %.1606.lcssa, %._crit_edge650 ] ; 4 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0250662
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !12 ; 4 uses
  %i.nv = fsub float %i.nu, %.1.i382.lcssa        ; 3 uses
  br i1 %.not743, label %._crit_edge650, label %.lr.ph649

.lr.ph649:                                        ; preds = %bb.v
  %i.nw = add i64 %1, %.0251661                   ; 5 uses
  %i.nx = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %i.nu, i64 1 ; 2 uses
  br i1 %.not.i391, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader, label %.lr.ph.i392.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader: ; preds = %.lr.ph649
  br i1 %lcmp.mod1143.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol
  %.1252646.us.prol = phi i64 [ %i.oc, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ %.0251661, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ] ; 2 uses
  %i.nz = phi <2 x float> [ %i.ob, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ %i.ny, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us.prol
  store float +inf, ptr %i.oa, align 4, !tbaa !12
  %i.ob = fadd <2 x float> %i.nz, <float -inf, float +inf> ; 4 uses
  %i.oc = add i64 %.1252646.us.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1142
  br i1 %prol.iter.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol, !llvm.loop !73

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol
  %i.od = extractelement <2 x float> %i.ob, i64 1
  %i.oe = extractelement <2 x float> %i.ob, i64 0
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader
  %.lcssa1090.unr.a = phi float [ poison, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.oe, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.lcssa1089.unr = phi float [ poison, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.od, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.1252646.us.unr = phi i64 [ %.0251661, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.oc, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x float> [ %i.ny, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.ob, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  br i1 %i.my, label %._crit_edge650, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us
  %.1252646.us = phi i64 [ %i.or, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us ], [ %.1252646.us.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ] ; 5 uses
  %i.of = phi <2 x float> [ %i.oq, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us ], [ %.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  store float +inf, ptr %i.og, align 4, !tbaa !12
  %i.oh = fadd <2 x float> %i.of, <float -inf, float +inf>
  %i.oi = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.oj = getelementptr i8, ptr %i.oi, i64 4
  store float +inf, ptr %i.oj, align 4, !tbaa !12
  %i.ok = fadd <2 x float> %i.oh, <float -inf, float +inf>
  %i.ol = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.om = getelementptr i8, ptr %i.ol, i64 8
  store float +inf, ptr %i.om, align 4, !tbaa !12
  %i.on = fadd <2 x float> %i.ok, <float -inf, float +inf>
  %i.oo = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.op = getelementptr i8, ptr %i.oo, i64 12
  store float +inf, ptr %i.op, align 4, !tbaa !12
  %i.oq = fadd <2 x float> %i.on, <float -inf, float +inf> ; 3 uses
  %i.or = add i64 %.1252646.us, 4                 ; 2 uses
  %exitcond783.not.3 = icmp eq i64 %i.or, %i.nw
  br i1 %exitcond783.not.3, label %._crit_edge650.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us, !llvm.loop !74

._crit_edge650.loopexit.unr-lcssa:                ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us
  %i.os = extractelement <2 x float> %i.oq, i64 1
  %i.ot = extractelement <2 x float> %i.oq, i64 0
  br label %._crit_edge650

._crit_edge650:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit, %._crit_edge650.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, %bb.v
  %.1606.lcssa = phi float [ %.0605658, %bb.v ], [ %.0605658, %._crit_edge650.loopexit.unr-lcssa ], [ %.0605658, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %.sroa.speculated517, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 2 uses
  %.0603.lcssa.a = phi float [ %i.nv, %bb.v ], [ %i.ot, %._crit_edge650.loopexit.unr-lcssa ], [ %.lcssa1090.unr.a, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.qr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 2 uses
  %.0602.lcssa = phi float [ %i.nu, %bb.v ], [ %i.os, %._crit_edge650.loopexit.unr-lcssa ], [ %.lcssa1089.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.qs, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 3 uses
  %.1252.lcssa = phi i64 [ %.0251661, %bb.v ], [ %i.nw, %._crit_edge650.loopexit.unr-lcssa ], [ %i.nw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.nw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ]
  %i.ou = fcmp olt float %.0604659, %.0603.lcssa.a
  %.sroa.speculated528 = select i1 %i.ou, float %.0603.lcssa.a, float %.0604659 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0250662
  store float %.0602.lcssa, ptr %i.ov, align 4, !tbaa !12
  %i.ow = fcmp olt float %.0602.lcssa, %.2598660
  %.sroa.speculated523 = select i1 %i.ow, float %.0602.lcssa, float %.2598660 ; 2 uses
  %i.ox = add nuw nsw i64 %.0250662, 1            ; 2 uses
  %exitcond784.not = icmp eq i64 %i.ox, %0
  br i1 %exitcond784.not, label %._crit_edge664.loopexit, label %bb.v, !llvm.loop !75

.lr.ph.i392.preheader:                            ; preds = %.lr.ph649, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit
  %.1252646 = phi i64 [ %i.qt, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %.0251661, %.lr.ph649 ] ; 3 uses
  %.0602645 = phi float [ %i.qs, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %i.nu, %.lr.ph649 ]
  %.0603644 = phi float [ %i.qr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %i.nv, %.lr.ph649 ]
  %.1606643 = phi float [ %.sroa.speculated517, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %.0605658, %.lr.ph649 ] ; 2 uses
  %i.oy = mul i64 %.1252646, %2
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.oy ; 10 uses
  br i1 %i.mw, label %.lr.ph.i392.epil.preheader, label %.lr.ph.i392

.lr.ph.i392:                                      ; preds = %.lr.ph.i392.preheader, %.lr.ph.i392
  %.011.i393 = phi i64 [ %i.pp, %.lr.ph.i392 ], [ 0, %.lr.ph.i392.preheader ] ; 5 uses
  %.0810.i394 = phi float [ %.1.i395.3, %.lr.ph.i392 ], [ +inf, %.lr.ph.i392.preheader ] ; 2 uses
  %niter1134 = phi i64 [ %niter1134.next.3, %.lr.ph.i392 ], [ 0, %.lr.ph.i392.preheader ]
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.011.i393
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !12 ; 2 uses
  %i.pc = fcmp olt float %i.pb, %.0810.i394
  %.1.i395 = select i1 %i.pc, float %i.pb, float %.0810.i394 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.011.i393
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !12 ; 2 uses
  %i.pg = fcmp olt float %i.pf, %.1.i395
  %.1.i395.1 = select i1 %i.pg, float %i.pf, float %.1.i395 ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.011.i393
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !12 ; 2 uses
  %i.pk = fcmp olt float %i.pj, %.1.i395.1
  %.1.i395.2 = select i1 %i.pk, float %i.pj, float %.1.i395.1 ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.011.i393
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 12
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !12 ; 2 uses
  %i.po = fcmp olt float %i.pn, %.1.i395.2
  %.1.i395.3 = select i1 %i.po, float %i.pn, float %.1.i395.2 ; 3 uses
  %i.pp = add nuw i64 %.011.i393, 4               ; 2 uses
  %niter1134.next.3 = add nuw i64 %niter1134, 4   ; 2 uses
  %niter1134.ncmp.3 = icmp eq i64 %niter1134.next.3, %unroll_iter1133
  br i1 %niter1134.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa, label %.lr.ph.i392, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa: ; preds = %.lr.ph.i392
  br i1 %lcmp.mod1130.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398, label %.lr.ph.i392.epil.preheader

.lr.ph.i392.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa, %.lr.ph.i392.preheader
  %.011.i393.epil.init = phi i64 [ 0, %.lr.ph.i392.preheader ], [ %i.pp, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ]
  %.0810.i394.epil.init = phi float [ +inf, %.lr.ph.i392.preheader ], [ %.1.i395.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1132)
  br label %.lr.ph.i392.epil

.lr.ph.i392.epil:                                 ; preds = %.lr.ph.i392.epil, %.lr.ph.i392.epil.preheader
  %.011.i393.epil = phi i64 [ %i.pt, %.lr.ph.i392.epil ], [ %.011.i393.epil.init, %.lr.ph.i392.epil.preheader ] ; 2 uses
  %.0810.i394.epil = phi float [ %.1.i395.epil, %.lr.ph.i392.epil ], [ %.0810.i394.epil.init, %.lr.ph.i392.epil.preheader ] ; 2 uses
  %epil.iter1129 = phi i64 [ %epil.iter1129.next, %.lr.ph.i392.epil ], [ 0, %.lr.ph.i392.epil.preheader ]
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %.011.i393.epil
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12 ; 2 uses
  %i.ps = fcmp olt float %i.pr, %.0810.i394.epil
  %.1.i395.epil = select i1 %i.ps, float %i.pr, float %.0810.i394.epil ; 2 uses
  %i.pt = add nuw i64 %.011.i393.epil, 1
  %epil.iter1129.next = add i64 %epil.iter1129, 1 ; 2 uses
  %epil.iter1129.cmp.not = icmp eq i64 %epil.iter1129.next, %xtraiter1128
  br i1 %epil.iter1129.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398, label %.lr.ph.i392.epil, !llvm.loop !76

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398: ; preds = %.lr.ph.i392.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa
  %.1.i395.lcssa = phi float [ %.1.i395.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ], [ %.1.i395.epil, %.lr.ph.i392.epil ] ; 3 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646
  store float %.1.i395.lcssa, ptr %i.pu, align 4, !tbaa !12
end_hunk_1
begin_hunk_2_@_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_:bb.a

._crit_edge672:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader, %.preheader632
  %.3254.lcssa = phi i64 [ %.2253677, %.preheader632 ], [ %i.qu, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.qu, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ]
  %.1248.lcssa = phi i64 [ %.0247678, %.preheader632 ], [ %i.rd, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.ts, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ] ; 2 uses
  %i.rp = mul i64 %.1248.lcssa, %2
  %i.rq = getelementptr inbounds nuw i8, ptr %6, i64 %i.rp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rq, i8 0, i64 %i.nl, i1 false)
  %i.rr = add i64 %.1248.lcssa, %i.nk
  %i.rs = add nuw nsw i64 %.0246679, 1            ; 2 uses
  %exitcond786.not.a = icmp eq i64 %i.rs, %0
  br i1 %exitcond786.not.a, label %.lr.ph.i409.preheader, label %.preheader632, !llvm.loop !79

.lr.ph.i409.preheader:                            ; preds = %._crit_edge672
  %min.iters.check988 = icmp ult i64 %0, 4
  br i1 %min.iters.check988, label %.lr.ph.i409.preheader1083, label %vector.ph989

vector.ph989:                                     ; preds = %.lr.ph.i409.preheader
  %n.vec990 = and i64 %0, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert991 = insertelement <4 x float> poison, float %.2598.lcssa, i64 0
  %broadcast.splat992 = shufflevector <4 x float> %broadcast.splatinsert991, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert993 = insertelement <4 x float> poison, float %.2272, i64 0
  %broadcast.splat994 = shufflevector <4 x float> %broadcast.splatinsert993, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph989
  %index996 = phi i64 [ 0, %vector.ph989 ], [ %index.next998, %vector.body995 ] ; 3 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0535.0616850, i64 %index996
  %wide.load997 = load <4 x float>, ptr %i.rt, align 4, !tbaa !12
  %i.ru = fsub <4 x float> %wide.load997, %broadcast.splat992
  %i.rv = fmul <4 x float> %broadcast.splat994, %i.ru
  %i.rw = fadd <4 x float> %i.rv, splat (float 5.000000e-01)
  %i.rx = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.rw)
  %i.ry = fptoui <4 x float> %i.rx to <4 x i16>
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index996
  store <4 x i16> %i.ry, ptr %i.rz, align 2, !tbaa !26
  %index.next998 = add nuw i64 %index996, 4       ; 2 uses
  %i.sa = icmp eq i64 %index.next998, %n.vec990
  br i1 %i.sa, label %middle.block999, label %vector.body995, !llvm.loop !80

middle.block999:                                  ; preds = %vector.body995
  %cmp.n1000 = icmp eq i64 %0, %n.vec990
  br i1 %cmp.n1000, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread, label %.lr.ph.i409.preheader1083

.lr.ph.i409.preheader1083:                        ; preds = %.lr.ph.i409.preheader, %middle.block999
  %.08.i410.ph = phi i64 [ 0, %.lr.ph.i409.preheader ], [ %n.vec990, %middle.block999 ]
  br label %.lr.ph.i409

.lr.ph.i418.preheader:                            ; preds = %.lr.ph.i418.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit
  %.1248669 = phi i64 [ %i.ts, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.0247678, %.lr.ph.i418.preheader.preheader ] ; 2 uses
  %.3254668 = phi i64 [ %i.tr, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.2253677, %.lr.ph.i418.preheader.preheader ] ; 3 uses
  %i.sb = mul i64 %.3254668, %2
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.sb ; 4 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.3254668
  %i.se = load float, ptr %i.sd, align 4, !tbaa !12 ; 4 uses
  %i.sf = mul i64 %.1248669, %2
  %i.sg = getelementptr inbounds nuw i8, ptr %6, i64 %i.sf ; 4 uses
  %brmerge1215 = select i1 %min.iters.check973, i1 true, i1 %i.rc
  br i1 %brmerge1215, label %.lr.ph.i418.preheader1084, label %vector.ph974

vector.ph974:                                     ; preds = %.lr.ph.i418.preheader
  %broadcast.splatinsert976 = insertelement <4 x float> poison, float %i.se, i64 0
  %broadcast.splat977 = shufflevector <4 x float> %broadcast.splatinsert976, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph974
  %index981 = phi i64 [ 0, %vector.ph974 ], [ %index.next983, %vector.body980 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index981
  %wide.load982 = load <4 x float>, ptr %i.sh, align 4, !tbaa !12, !alias.scope !109
  %i.si = fsub <4 x float> %wide.load982, %broadcast.splat977
  %i.sj = fmul <4 x float> %broadcast.splat979, %i.si
  %i.sk = fadd <4 x float> %i.sj, splat (float 5.000000e-01)
  %i.sl = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.sk)
  %i.sm = fptoui <4 x float> %i.sl to <4 x i8>
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 %index981
  store <4 x i8> %i.sm, ptr %i.sn, align 1, !tbaa !23, !alias.scope !110, !noalias !109
  %index.next983 = add nuw i64 %index981, 4       ; 2 uses
  %i.so = icmp eq i64 %index.next983, %n.vec975
  br i1 %i.so, label %middle.block984, label %vector.body980, !llvm.loop !84

middle.block984:                                  ; preds = %vector.body980
  br i1 %cmp.n985, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418.preheader1084

.lr.ph.i418.preheader1084:                        ; preds = %.lr.ph.i418.preheader, %middle.block984
  %.08.i419.ph = phi i64 [ %n.vec975, %middle.block984 ], [ 0, %.lr.ph.i418.preheader ] ; 5 uses
  %.neg1186 = or disjoint i64 %.08.i419.ph, 1
  br i1 %lcmp.mod1145.not, label %.lr.ph.i418.prol.loopexit, label %.lr.ph.i418.prol

.lr.ph.i418.prol:                                 ; preds = %.lr.ph.i418.preheader1084
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %.08.i419.ph
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !12
  %i.sr = fsub float %i.sq, %i.se
  %i.ss = fmul float %.2272, %i.sr
  %i.st = fadd float %i.ss, 5.000000e-01
  %i.su = tail call float @llvm.floor.f32(float %i.st)
  %i.sv = fptoui float %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.08.i419.ph
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !23
  %i.sx = or disjoint i64 %.08.i419.ph, 1
  br label %.lr.ph.i418.prol.loopexit

.lr.ph.i418.prol.loopexit:                        ; preds = %.lr.ph.i418.prol, %.lr.ph.i418.preheader1084
  %.08.i419.unr = phi i64 [ %.08.i419.ph, %.lr.ph.i418.preheader1084 ], [ %i.sx, %.lr.ph.i418.prol ]
  %i.sy = icmp eq i64 %2, %.neg1186
  br i1 %i.sy, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418

.lr.ph.i418:                                      ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418
  %.08.i419 = phi i64 [ %i.tq, %.lr.ph.i418 ], [ %.08.i419.unr, %.lr.ph.i418.prol.loopexit ] ; 4 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %.08.i419
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !12
  %i.tb = fsub float %i.ta, %i.se
  %i.tc = fmul float %.2272, %i.tb
  %i.td = fadd float %i.tc, 5.000000e-01
  %i.te = tail call float @llvm.floor.f32(float %i.td)
  %i.tf = fptoui float %i.te to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.08.i419
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !23
  %i.th = add nuw i64 %.08.i419, 1                ; 2 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.th
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !12
  %i.tk = fsub float %i.tj, %i.se
  %i.tl = fmul float %.2272, %i.tk
  %i.tm = fadd float %i.tl, 5.000000e-01
  %i.tn = tail call float @llvm.floor.f32(float %i.tm)
  %i.to = fptoui float %i.tn to i8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.th
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !23
  %i.tq = add nuw i64 %.08.i419, 2                ; 2 uses
  %exitcond.not.i420.1 = icmp eq i64 %i.tq, %2
  br i1 %exitcond.not.i420.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418, !llvm.loop !85

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit: ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418, %middle.block984
  %i.tr = add i64 %.3254668, 1                    ; 2 uses
  %i.ts = add i64 %.1248669, 1                    ; 2 uses
  %exitcond785.not = icmp eq i64 %i.tr, %i.qu
  br i1 %exitcond785.not, label %._crit_edge672, label %.lr.ph.i418.preheader, !llvm.loop !86

bb.w:                                             ; preds = %bb.p
  %i.tt = mul i64 %2, %1
  %i.tu = mul i64 %i.tt, %0                       ; 5 uses
  %i.tv = icmp ugt i64 %i.tu, 2305843009213693951
  br i1 %i.tv, label %.noexc428, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422

.noexc428:                                        ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422: ; preds = %bb.w
  %.not.i.i.i.i423 = icmp eq i64 %i.tu, 0
  br i1 %.not.i.i.i.i423, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %.noexc429

.noexc429:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422
  %i.tw = shl nuw nsw i64 %i.tu, 2
  %i.tx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tw) #15 ; 5 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.tu ; 2 uses
  store float 0.000000e+00, ptr %i.tx, align 4, !tbaa !12
  %i.tz = add nsw i64 %i.tu, -1                   ; 2 uses
  %i.ua = icmp eq i64 %i.tz, 0
  br i1 %i.ua, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424: ; preds = %.noexc429
  %i.ub = getelementptr i8, ptr %i.tx, i64 4
  %.idx.i.i.i.i.i.i.i425 = shl nuw nsw i64 %i.tz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ub, i8 0, i64 %.idx.i.i.i.i.i.i.i425, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424, %.noexc429, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422
  %.sroa.0504.0 = phi ptr [ %i.tx, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424 ], [ %i.tx, %.noexc429 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422 ] ; 9 uses
  %.sroa.10507.0 = phi ptr [ %i.ty, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424 ], [ %i.ty, %.noexc429 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422 ] ; 2 uses
  %.not746 = icmp eq i64 %0, 0                    ; 3 uses
  br i1 %.not746, label %._crit_edge694.split, label %.lr.ph693

.lr.ph693:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
  %i.uc = uitofp i64 %1 to float
  %.not747 = icmp eq i64 %1, 0
  br i1 %.not747, label %.preheader.lr.ph, label %.lr.ph693.split

.lr.ph693.split:                                  ; preds = %.lr.ph693
  %.not748 = icmp eq i64 %2, 0
  br i1 %.not748, label %._crit_edge694.split, label %.preheader631.lr.ph.us.preheader

.preheader631.lr.ph.us.preheader:                 ; preds = %.lr.ph693.split
  %min.iters.check1003 = icmp ult i64 %2, 8
  %n.vec1005 = and i64 %2, -8                     ; 3 uses
  %cmp.n1014 = icmp eq i64 %2, %n.vec1005
  br label %.preheader631.lr.ph.us

.preheader631.lr.ph.us:                           ; preds = %.preheader631.lr.ph.us.preheader, %._crit_edge688.split.us.us
  %.0241692.us = phi i64 [ %i.uv, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ] ; 2 uses
  %.0242691.us = phi i64 [ %i.ug, %._crit_edge688.split.us.us ], [ 0, %.preheader631.lr.ph.us.preheader ]
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0241692.us
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !12
  %i.uf = fdiv float %i.ue, %i.uc                 ; 2 uses
  %broadcast.splatinsert1006 = insertelement <4 x float> poison, float %i.uf, i64 0
  %broadcast.splat1007 = shufflevector <4 x float> %broadcast.splatinsert1006, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader631.us.us

.preheader631.us.us:                              ; preds = %._crit_edge684.us.us, %.preheader631.lr.ph.us
  %.0240687.us.us = phi i64 [ 0, %.preheader631.lr.ph.us ], [ %i.uu, %._crit_edge684.us.us ]
  %.1243686.us.us = phi i64 [ %.0242691.us, %.preheader631.lr.ph.us ], [ %i.ug, %._crit_edge684.us.us ] ; 4 uses
  %i.ug = add i64 %2, %.1243686.us.us             ; 3 uses
  br i1 %min.iters.check1003, label %scalar.ph1002.preheader, label %vector.ph1004

vector.ph1004:                                    ; preds = %.preheader631.us.us
  %14 = add i64 %.1243686.us.us, %n.vec1005
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1004
  %index1009 = phi i64 [ 0, %vector.ph1004 ], [ %index.next1012, %vector.body1008 ] ; 2 uses
  %i.uh = add i64 %.1243686.us.us, %index1009     ; 2 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.uh ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %wide.load1010 = load <4 x float>, ptr %i.ui, align 4, !tbaa !12
  %wide.load1011 = load <4 x float>, ptr %i.uj, align 4, !tbaa !12
  %i.uk = fadd <4 x float> %broadcast.splat1007, %wide.load1010
  %i.ul = fadd <4 x float> %broadcast.splat1007, %wide.load1011
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.uh ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <4 x float> %i.uk, ptr %i.um, align 4, !tbaa !12
  store <4 x float> %i.ul, ptr %i.un, align 4, !tbaa !12
  %index.next1012 = add nuw i64 %index1009, 8     ; 2 uses
  %i.uo = icmp eq i64 %index.next1012, %n.vec1005
  br i1 %i.uo, label %middle.block1013, label %vector.body1008, !llvm.loop !87

middle.block1013:                                 ; preds = %vector.body1008
  br i1 %cmp.n1014, label %._crit_edge684.us.us, label %scalar.ph1002.preheader

scalar.ph1002.preheader:                          ; preds = %.preheader631.us.us, %middle.block1013
  %.2244681.us.us.ph = phi i64 [ %.1243686.us.us, %.preheader631.us.us ], [ %14, %middle.block1013 ]
  br label %scalar.ph1002

scalar.ph1002:                                    ; preds = %scalar.ph1002.preheader, %scalar.ph1002
  %.2244681.us.us = phi i64 [ %i.ut, %scalar.ph1002 ], [ %.2244681.us.us.ph, %scalar.ph1002.preheader ] ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2244681.us.us
  %i.uq = load float, ptr %i.up, align 4, !tbaa !12
  %i.ur = fadd float %i.uf, %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %.2244681.us.us
  store float %i.ur, ptr %i.us, align 4, !tbaa !12
  %i.ut = add i64 %.2244681.us.us, 1              ; 2 uses
  %exitcond787.not = icmp eq i64 %i.ut, %i.ug
  br i1 %exitcond787.not, label %._crit_edge684.us.us, label %scalar.ph1002, !llvm.loop !88

._crit_edge684.us.us:                             ; preds = %scalar.ph1002, %middle.block1013
  %i.uu = add nuw i64 %.0240687.us.us, 1          ; 2 uses
  %exitcond788.not = icmp eq i64 %i.uu, %1
  br i1 %exitcond788.not, label %._crit_edge688.split.us.us, label %.preheader631.us.us, !llvm.loop !89

._crit_edge688.split.us.us:                       ; preds = %._crit_edge684.us.us
  %i.uv = add nuw i64 %.0241692.us, 1             ; 2 uses
  %exitcond789.not = icmp eq i64 %i.uv, %0
  br i1 %exitcond789.not, label %._crit_edge694.split, label %.preheader631.lr.ph.us, !llvm.loop !90

._crit_edge694.split:                             ; preds = %._crit_edge688.split.us.us, %.lr.ph693.split, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
  %i.uw = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.uw, label %bb.x, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431

bb.x:                                             ; preds = %._crit_edge694.split
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc434 unwind label %bb.z

.noexc434:                                        ; preds = %bb.x
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431: ; preds = %._crit_edge694.split
  %.not.i.i.i.i432 = icmp eq i64 %1, 0            ; 3 uses
  br i1 %.not.i.i.i.i432, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %i.ux = shl nuw nsw i64 %1, 2                   ; 7 uses
  %i.uy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #15
          to label %.noexc435 unwind label %bb.z  ; 7 uses

.noexc435:                                        ; preds = %bb.y
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.ux
  %i.va = add nsw i64 %i.ux, -4                   ; 2 uses
  %i.vb = lshr exact i64 %i.va, 2
  %i.vc = add nuw nsw i64 %i.vb, 1                ; 2 uses
  %min.iters.check1017 = icmp ult i64 %i.va, 28
  br i1 %min.iters.check1017, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph1018

vector.ph1018:                                    ; preds = %.noexc435
  %n.vec1019 = and i64 %i.vc, 9223372036854775800 ; 3 uses
  %15 = shl i64 %n.vec1019, 2
  %16 = getelementptr i8, ptr %i.uy, i64 %15
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %vector.ph1018
  %index1021 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1022, %vector.body1020 ] ; 2 uses
  %i.vd = shl i64 %index1021, 2
  %next.gep = getelementptr i8, ptr %i.uy, i64 %i.vd ; 2 uses
  %i.ve = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +inf), ptr %next.gep, align 4, !tbaa !12
  store <4 x float> splat (float +inf), ptr %i.ve, align 4, !tbaa !12
  %index.next1022 = add nuw i64 %index1021, 8     ; 2 uses
  %i.vf = icmp eq i64 %index.next1022, %n.vec1019
  br i1 %i.vf, label %middle.block1023, label %vector.body1020, !llvm.loop !91

middle.block1023:                                 ; preds = %vector.body1020
  %cmp.n1024 = icmp eq i64 %i.vc, %n.vec1019
  br i1 %cmp.n1024, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc435, %middle.block1023
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.uy, %.noexc435 ], [ %16, %middle.block1023 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float +inf, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !12
  %i.vg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vg, %i.uz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !92

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block1023
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %1
  %i.vi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ux) #15
          to label %.noexc444 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit447 ; 6 uses

.noexc444:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.ux
  %i.vk = add nsw i64 %i.ux, -4                   ; 2 uses
  %i.vl = lshr exact i64 %i.vk, 2
  %i.vm = add nuw nsw i64 %i.vl, 1                ; 2 uses
  %min.iters.check1027 = icmp ult i64 %i.vk, 28
  br i1 %min.iters.check1027, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %.noexc444
  %n.vec1029 = and i64 %i.vm, 9223372036854775800 ; 3 uses
  %17 = shl i64 %n.vec1029, 2
  %18 = getelementptr i8, ptr %i.vi, i64 %17
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %vector.ph1028
  %index1031 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1033, %vector.body1030 ] ; 2 uses
  %i.vn = shl i64 %index1031, 2
  %next.gep1032 = getelementptr i8, ptr %i.vi, i64 %i.vn ; 2 uses
  %i.vo = getelementptr i8, ptr %next.gep1032, i64 16
  store <4 x float> splat (float -inf), ptr %next.gep1032, align 4, !tbaa !12
  store <4 x float> splat (float -inf), ptr %i.vo, align 4, !tbaa !12
  %index.next1033 = add nuw i64 %index1031, 8     ; 2 uses
  %i.vp = icmp eq i64 %index.next1033, %n.vec1029
  br i1 %i.vp, label %middle.block1034, label %vector.body1030, !llvm.loop !93

middle.block1034:                                 ; preds = %vector.body1030
  %cmp.n1035 = icmp eq i64 %i.vm, %n.vec1029
  br i1 %cmp.n1035, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader

.lr.ph.i.i.i.i.i.i.i.i.i438.preheader:            ; preds = %.noexc444, %middle.block1034
  %.07.i.i.i.i.i.i.i.i.i439.ph = phi ptr [ %i.vi, %.noexc444 ], [ %18, %middle.block1034 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i438

.lr.ph.i.i.i.i.i.i.i.i.i438:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i438
  %.07.i.i.i.i.i.i.i.i.i439 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i.i.i.i.i.i438 ], [ %.07.i.i.i.i.i.i.i.i.i439.ph, %.lr.ph.i.i.i.i.i.i.i.i.i438.preheader ] ; 2 uses
  store float -inf, ptr %.07.i.i.i.i.i.i.i.i.i439, align 4, !tbaa !12
  %i.vq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i439, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i440 = icmp eq ptr %i.vq, %i.vj
  br i1 %.not.i.i.i.i.i.i.i.i.i440, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i438, !llvm.loop !94

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i438, %middle.block1034
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %1
  %i.vs = ptrtoint ptr %i.vr to i64
  %i.vt = ptrtoint ptr %i.vh to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445:         ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431
  %.sroa.14.0625 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vt, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  %.sroa.0495.0623 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.uy, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.0489.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vi, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 7 uses
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i431 ], [ %i.vs, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445.loopexit ] ; 3 uses
  br i1 %.not746, label %.preheader629, label %.preheader630.lr.ph

.preheader630.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %.preheader.lr.ph, label %.preheader630.lr.ph.split

.preheader630.lr.ph.split:                        ; preds = %.preheader630.lr.ph
  %.not.i448 = icmp eq i64 %2, 0
  br i1 %.not.i448, label %.lr.ph710.preheader, label %.preheader630.preheader

.preheader630.preheader:                          ; preds = %.preheader630.lr.ph.split
  %i.vu = add i64 %2, -1                          ; 2 uses
  %xtraiter1147 = and i64 %2, 3                   ; 3 uses
  %i.vv = icmp ult i64 %i.vu, 3
  %unroll_iter1152 = and i64 %2, -4
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1147, 0
  %lcmp.mod1151 = icmp ne i64 %xtraiter1147, 0
  %xtraiter1154 = and i64 %2, 3                   ; 3 uses
  %i.vw = icmp ult i64 %i.vu, 3
  %unroll_iter1159 = and i64 %2, -4
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1154, 0
  %lcmp.mod1158 = icmp ne i64 %xtraiter1154, 0
  br label %.preheader630.a

.preheader630.a:                                  ; preds = %.preheader630.preheader, %._crit_edge700.split
  %.0236704 = phi i64 [ %i.vz, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  %.0237703 = phi i64 [ %i.xx, %._crit_edge700.split ], [ 0, %.preheader630.preheader ]
  br label %.lr.ph.i449.preheader

.preheader629:                                    ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit445
  br i1 %.not.i.i.i.i432, label %._crit_edge711, label %.lr.ph710.preheader

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorIfSaIfEED2Ev.exit447:                 ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i436
  %i.vy = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uy, i64 noundef %i.ux) #16
  br label %bb.ac

._crit_edge700.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %i.vz = add nuw i64 %.0236704, 1                ; 2 uses
  %exitcond791.not.a = icmp eq i64 %i.vz, %0
  br i1 %exitcond791.not.a, label %.lr.ph710.preheader, label %.preheader630.a, !llvm.loop !95

.lr.ph710.preheader:                              ; preds = %._crit_edge700.split, %.preheader630.lr.ph.split, %.preheader629
  %xtraiter1161 = and i64 %1, 1
  %i.wa = icmp eq i64 %1, 1
  br i1 %i.wa, label %.lr.ph710.epil.preheader, label %.lr.ph710.preheader.new

.lr.ph710.preheader.new:                          ; preds = %.lr.ph710.preheader
  %unroll_iter1167 = and i64 %1, 2305843009213693950
  br label %.lr.ph710

.lr.ph.i449.preheader:                            ; preds = %.preheader630.a, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit
  %.0235698 = phi i64 [ 0, %.preheader630.a ], [ %i.xy, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 3 uses
  %.1238697 = phi i64 [ %.0237703, %.preheader630.a ], [ %i.xx, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit ] ; 2 uses
  %i.wb = mul i64 %.1238697, %2
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0504.0, i64 %i.wb ; 10 uses
  br i1 %i.vv, label %.lr.ph.i449.epil.preheader, label %.lr.ph.i449

.lr.ph.i449:                                      ; preds = %.lr.ph.i449.preheader, %.lr.ph.i449
  %.011.i450 = phi i64 [ %i.ws, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ] ; 5 uses
  %.0810.i451 = phi float [ %.1.i452.3, %.lr.ph.i449 ], [ +inf, %.lr.ph.i449.preheader ] ; 2 uses
  %niter1153 = phi i64 [ %niter1153.next.3, %.lr.ph.i449 ], [ 0, %.lr.ph.i449.preheader ]
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i450
  %i.we = load float, ptr %i.wd, align 4, !tbaa !12 ; 2 uses
  %i.wf = fcmp olt float %i.we, %.0810.i451
  %.1.i452 = select i1 %i.wf, float %i.we, float %.0810.i451 ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i450
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !12 ; 2 uses
  %i.wj = fcmp olt float %i.wi, %.1.i452
  %.1.i452.1 = select i1 %i.wj, float %i.wi, float %.1.i452 ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i450
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !12 ; 2 uses
  %i.wn = fcmp olt float %i.wm, %.1.i452.1
  %.1.i452.2 = select i1 %i.wn, float %i.wm, float %.1.i452.1 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i450
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 12
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !12 ; 2 uses
  %i.wr = fcmp olt float %i.wq, %.1.i452.2
  %.1.i452.3 = select i1 %i.wr, float %i.wq, float %.1.i452.2 ; 3 uses
  %i.ws = add nuw i64 %.011.i450, 4               ; 2 uses
  %niter1153.next.3 = add nuw i64 %niter1153, 4   ; 2 uses
  %niter1153.ncmp.3 = icmp eq i64 %niter1153.next.3, %unroll_iter1152
  br i1 %niter1153.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa, label %.lr.ph.i449, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa: ; preds = %.lr.ph.i449
  br i1 %lcmp.mod1149.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, label %.lr.ph.i449.epil.preheader

.lr.ph.i449.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa, %.lr.ph.i449.preheader
  %.011.i450.epil.init = phi i64 [ 0, %.lr.ph.i449.preheader ], [ %i.ws, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ]
  %.0810.i451.epil.init = phi float [ +inf, %.lr.ph.i449.preheader ], [ %.1.i452.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1151)
  br label %.lr.ph.i449.epil

.lr.ph.i449.epil:                                 ; preds = %.lr.ph.i449.epil, %.lr.ph.i449.epil.preheader
  %.011.i450.epil = phi i64 [ %i.ww, %.lr.ph.i449.epil ], [ %.011.i450.epil.init, %.lr.ph.i449.epil.preheader ] ; 2 uses
  %.0810.i451.epil = phi float [ %.1.i452.epil, %.lr.ph.i449.epil ], [ %.0810.i451.epil.init, %.lr.ph.i449.epil.preheader ] ; 2 uses
  %epil.iter1148 = phi i64 [ %epil.iter1148.next, %.lr.ph.i449.epil ], [ 0, %.lr.ph.i449.epil.preheader ]
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i450.epil
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !12 ; 2 uses
  %i.wv = fcmp olt float %i.wu, %.0810.i451.epil
  %.1.i452.epil = select i1 %i.wv, float %i.wu, float %.0810.i451.epil ; 2 uses
  %i.ww = add nuw i64 %.011.i450.epil, 1
  %epil.iter1148.next = add i64 %epil.iter1148, 1 ; 2 uses
  %epil.iter1148.cmp.not = icmp eq i64 %epil.iter1148.next, %xtraiter1147
  br i1 %epil.iter1148.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, label %.lr.ph.i449.epil, !llvm.loop !96

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455: ; preds = %.lr.ph.i449.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa
  %.1.i452.lcssa = phi float [ %.1.i452.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455.unr-lcssa ], [ %.1.i452.epil, %.lr.ph.i449.epil ] ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0495.0623, i64 %.0235698 ; 2 uses
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !12 ; 2 uses
  %i.wz = fcmp olt float %.1.i452.lcssa, %i.wy
  %.sroa.speculated486 = select i1 %i.wz, float %.1.i452.lcssa, float %i.wy
  store float %.sroa.speculated486, ptr %i.wx, align 4, !tbaa !12
  br i1 %i.vw, label %.lr.ph.i458.epil.preheader, label %.lr.ph.i458

.lr.ph.i458:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455, %.lr.ph.i458
  %.011.i459 = phi i64 [ %i.xp, %.lr.ph.i458 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ] ; 5 uses
  %.0810.i460 = phi float [ %.1.i461.3, %.lr.ph.i458 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ] ; 2 uses
  %niter1160 = phi i64 [ %niter1160.next.3, %.lr.ph.i458 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ]
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i459
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !12 ; 2 uses
  %i.xc = fcmp ogt float %i.xb, %.0810.i460
  %.1.i461 = select i1 %i.xc, float %i.xb, float %.0810.i460 ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i459
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !12 ; 2 uses
  %i.xg = fcmp ogt float %i.xf, %.1.i461
  %.1.i461.1 = select i1 %i.xg, float %i.xf, float %.1.i461 ; 2 uses
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i459
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !12 ; 2 uses
  %i.xk = fcmp ogt float %i.xj, %.1.i461.1
  %.1.i461.2 = select i1 %i.xk, float %i.xj, float %.1.i461.1 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i459
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 12
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !12 ; 2 uses
  %i.xo = fcmp ogt float %i.xn, %.1.i461.2
  %.1.i461.3 = select i1 %i.xo, float %i.xn, float %.1.i461.2 ; 3 uses
  %i.xp = add nuw i64 %.011.i459, 4               ; 2 uses
  %niter1160.next.3 = add nuw i64 %niter1160, 4   ; 2 uses
  %niter1160.ncmp.3 = icmp eq i64 %niter1160.next.3, %unroll_iter1159
  br i1 %niter1160.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa, label %.lr.ph.i458, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa: ; preds = %.lr.ph.i458
  br i1 %lcmp.mod1156.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit, label %.lr.ph.i458.epil.preheader

.lr.ph.i458.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455
  %.011.i459.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ], [ %i.xp, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ]
  %.0810.i460.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit455 ], [ %.1.i461.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1158)
  br label %.lr.ph.i458.epil

.lr.ph.i458.epil:                                 ; preds = %.lr.ph.i458.epil, %.lr.ph.i458.epil.preheader
  %.011.i459.epil = phi i64 [ %i.xt, %.lr.ph.i458.epil ], [ %.011.i459.epil.init, %.lr.ph.i458.epil.preheader ] ; 2 uses
  %.0810.i460.epil = phi float [ %.1.i461.epil, %.lr.ph.i458.epil ], [ %.0810.i460.epil.init, %.lr.ph.i458.epil.preheader ] ; 2 uses
  %epil.iter1155 = phi i64 [ %epil.iter1155.next, %.lr.ph.i458.epil ], [ 0, %.lr.ph.i458.epil.preheader ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.011.i459.epil
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !12 ; 2 uses
  %i.xs = fcmp ogt float %i.xr, %.0810.i460.epil
  %.1.i461.epil = select i1 %i.xs, float %i.xr, float %.0810.i460.epil ; 2 uses
  %i.xt = add nuw i64 %.011.i459.epil, 1
  %epil.iter1155.next = add i64 %epil.iter1155, 1 ; 2 uses
  %epil.iter1155.cmp.not = icmp eq i64 %epil.iter1155.next, %xtraiter1154
  br i1 %epil.iter1155.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit, label %.lr.ph.i458.epil, !llvm.loop !97

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit: ; preds = %.lr.ph.i458.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa
  %.1.i461.lcssa = phi float [ %.1.i461.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit464.loopexit.unr-lcssa ], [ %.1.i461.epil, %.lr.ph.i458.epil ] ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0489.0, i64 %.0235698 ; 2 uses
end_hunk_2
