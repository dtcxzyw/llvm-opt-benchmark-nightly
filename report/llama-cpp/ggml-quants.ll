Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@iq2_find_best_neighbour:bb.a
  %.140 = select i1 %i.as, i32 %i.at, i32 %.03945 ; 4 uses
  %.1 = select i1 %i.as, float %i.ar, float %.03547
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.b
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !638

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3288, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.au = zext nneg i32 %.140 to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = load <8 x i8>, ptr %i.av, align 1, !tbaa !34
  %i.ax = sext <8 x i8> %i.aw to <8 x i16>
  %i.ay = add nsw <8 x i16> %i.ax, splat (i16 -1)
  %i.az = sdiv <8 x i16> %i.ay, splat (i16 2)
  %i.ba = trunc nsw <8 x i16> %i.az to <8 x i8>
  store <8 x i8> %i.ba, ptr %5, align 1, !tbaa !34
  ret i32 %.140
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define i64 @quantize_iq2_xs(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 5 uses
  %i.b = alloca [16 x float], align 16            ; 39 uses
  %i.c = alloca [16 x i8], align 16               ; 19 uses
  %i.d = alloca [16 x i8], align 16               ; 15 uses
  %i.e = alloca [16 x float], align 16            ; 20 uses
  %i.f = alloca [32 x i16], align 16              ; 5 uses
  %i.g = and i64 %3, 255
  %i.h = icmp eq i64 %i.g, 0
  %.0290401.lcssa.wide.i.sroa.gep30 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %indvars.iv446.i.us.sroa.gep95 = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %indvars.iv446.i.us.sroa.gep99 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %indvars.iv446.i.us.sroa.gep105 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3665, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = ashr exact i64 %3, 8                     ; 4 uses
  %i.j = icmp sgt i64 %2, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %4, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.an = mul nsw i64 %i.i, 74
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3480, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #24, !noalias !652
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ao = icmp sgt i64 %i.i, 0
  br i1 %i.ao, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %quantize_row_iq2_xs_impl.exit.loopexit.us
  %.061.us62 = phi i64 [ %i.agp, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ 0, %.lr.ph.split.split.us.preheader ]
  %.01560.us63 = phi ptr [ %i.ago, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ %1, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %.01659.us64 = phi ptr [ %i.agn, %quantize_row_iq2_xs_impl.exit.loopexit.us ], [ %0, %.lr.ph.split.split.us.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !74, !noalias !652 ; 5 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !77, !noalias !652 ; 7 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !79, !noalias !652 ; 5 uses
  %.not347.i.us = icmp eq ptr %i.bs, null
  br i1 %.not347.i.us, label %.split.us65, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %.not348.i.us = icmp eq ptr %i.br, null
  br i1 %.not348.i.us, label %.split67.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not349.i.us = icmp eq ptr %i.bt, null
  br i1 %.not349.i.us, label %.split69.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14, !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14, !noalias !652
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %.lr.ph.i.us
  %indvars.iv490.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next491.i.us, %bb.af ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [74 x i8], ptr %.01560.us63, i64 %indvars.iv490.i.us ; 5 uses
  store i16 0, ptr %i.bu, align 2, !tbaa !57, !alias.scope !650, !noalias !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !652
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 66 ; 3 uses
  store i64 0, ptr %i.bv, align 2, !alias.scope !650, !noalias !653
  %i.bw = shl nuw nsw i64 %indvars.iv490.i.us, 8  ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.01659.us64, i64 %i.bw ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.us = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.us.3, %bb.g ] ; 5 uses
  %.0333365.i.us = phi float [ 0.000000e+00, %bb.f ], [ %i.cm, %bb.g ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.us
  %i.bz = load float, ptr %i.by, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %.0333365.i.us)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ce)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ci) ; 2 uses
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, 256
  br i1 %exitcond.not.i.us.3, label %bb.h, label %bb.g, !llvm.loop !643

bb.h:                                             ; preds = %bb.g
  %i.cn = fmul float %i.cm, 3.906250e-03          ; 16 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bw
  br label %.preheader361.preheader.i.us

.preheader361.preheader.i.us:                     ; preds = %bb.w, %bb.h
  %indvars.iv482.i.us = phi i64 [ 0, %bb.h ], [ %indvars.iv.next483.i.us, %bb.w ] ; 5 uses
  %.0334402.i.us = phi float [ 0.000000e+00, %bb.h ], [ %.1335.i.us, %bb.w ] ; 3 uses
  %i.cp = shl nuw nsw i64 %indvars.iv482.i.us, 4  ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cp ; 17 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp ; 9 uses
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cn)
  %i.cu = tail call float @sqrtf(float noundef %i.ct) #14, !noalias !652
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cn)
  %i.cy = tail call float @sqrtf(float noundef %i.cx) #14, !noalias !652
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.cn)
  %i.dc = tail call float @sqrtf(float noundef %i.db) #14, !noalias !652
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.cn)
  %i.dg = tail call float @sqrtf(float noundef %i.df) #14, !noalias !652
  %i.dh = load <4 x float>, ptr %i.cr, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %i.di = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.cy, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.dc, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dg, i64 3
  %i.dm = fmul <4 x float> %i.dh, %i.dl           ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dq, float %i.cn)
  %i.ds = tail call float @sqrtf(float noundef %i.dr) #14, !noalias !652
  %i.dt = fmul float %i.do, %i.ds                 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dw, float %i.cn)
  %i.dy = tail call float @sqrtf(float noundef %i.dx) #14, !noalias !652
  %5 = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.cn)
  %i.ec = tail call float @sqrtf(float noundef %i.eb) #14, !noalias !652
  %6 = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %i.cn)
  %i.eg = tail call float @sqrtf(float noundef %i.ef) #14, !noalias !652
  %7 = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.cn)
  %i.ek = tail call float @sqrtf(float noundef %i.ej) #14, !noalias !652
  %i.el = getelementptr inbounds nuw i8, ptr %i.cq, i64 36
  %i.em = load float, ptr %i.el, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.cn)
  %i.eo = tail call float @sqrtf(float noundef %i.en) #14, !noalias !652
  %8 = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.cn)
  %i.es = tail call float @sqrtf(float noundef %i.er) #14, !noalias !652
  %i.et = getelementptr inbounds nuw i8, ptr %i.cq, i64 44 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.cn)
  %i.ew = tail call float @sqrtf(float noundef %i.ev) #14, !noalias !652
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cq, i64 48 ; 2 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.cn)
  %i.fa = tail call float @sqrtf(float noundef %i.ez) #14, !noalias !652
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cq, i64 52 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.cn)
  %i.fe = tail call float @sqrtf(float noundef %i.fd) #14, !noalias !652
  %9 = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.cn)
  %i.fi = tail call float @sqrtf(float noundef %i.fh) #14, !noalias !652
  %10 = getelementptr inbounds nuw i8, ptr %i.cr, i64 60
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cq, i64 60
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 5 uses
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fk, float %i.cn)
  %i.fm = tail call float @sqrtf(float noundef %i.fl) #14, !noalias !652
  %11 = load float, ptr %i.du, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %12 = load float, ptr %5, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %13 = load float, ptr %6, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %14 = load float, ptr %9, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %15 = load float, ptr %10, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %16 = fmul float %11, %i.dy                     ; 5 uses
  %17 = fmul float %12, %i.ec                     ; 5 uses
  %18 = fmul float %13, %i.eg                     ; 5 uses
  %19 = load <2 x float>, ptr %7, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %20 = insertelement <2 x float> poison, float %i.ek, i64 0
  %21 = insertelement <2 x float> %20, float %i.eo, i64 1
  %22 = fmul <2 x float> %19, %21                 ; 5 uses
  %23 = load <4 x float>, ptr %8, align 4, !tbaa !36, !alias.scope !651, !noalias !655
  %24 = insertelement <4 x float> poison, float %i.es, i64 0
  %25 = insertelement <4 x float> %24, float %i.ew, i64 1
  %26 = insertelement <4 x float> %25, float %i.fa, i64 2
  %27 = insertelement <4 x float> %26, float %i.fe, i64 3
  %28 = fmul <4 x float> %23, %27                 ; 9 uses
  %29 = fmul float %14, %i.fi                     ; 5 uses
  %30 = fmul float %15, %i.fm                     ; 5 uses
  %i.fn = extractelement <4 x float> %i.dm, i64 0 ; 3 uses
  %i.fo = tail call float @sqrtf(float noundef %i.fn) #14, !noalias !652
  store float %i.fo, ptr %i.e, align 16, !tbaa !36, !noalias !652
  %i.fp = extractelement <4 x float> %i.dm, i64 1 ; 3 uses
  %i.fq = tail call float @sqrtf(float noundef %i.fp) #14, !noalias !652
  store float %i.fq, ptr %i.k, align 4, !tbaa !36, !noalias !652
  %31 = extractelement <4 x float> %i.dm, i64 2   ; 4 uses
  %i.fr = tail call float @sqrtf(float noundef %31) #14, !noalias !652
  store float %i.fr, ptr %i.l, align 8, !tbaa !36, !noalias !652
  %i.fs = extractelement <4 x float> %i.dm, i64 3 ; 4 uses
  %i.ft = tail call float @sqrtf(float noundef %i.fs) #14, !noalias !652
  store float %i.ft, ptr %i.m, align 4, !tbaa !36, !noalias !652
  %i.fu = tail call float @sqrtf(float noundef %i.dt) #14, !noalias !652
  store float %i.fu, ptr %i.n, align 16, !tbaa !36, !noalias !652
  %32 = tail call float @sqrtf(float noundef %16) #14, !noalias !652
  store float %32, ptr %i.o, align 4, !tbaa !36, !noalias !652
  %33 = tail call float @sqrtf(float noundef %17) #14, !noalias !652
  store float %33, ptr %i.p, align 8, !tbaa !36, !noalias !652
  %i.fv = tail call float @sqrtf(float noundef %18) #14, !noalias !652
  store float %i.fv, ptr %i.q, align 4, !tbaa !36, !noalias !652
  %i.fw = extractelement <2 x float> %22, i64 0   ; 3 uses
  %i.fx = tail call float @sqrtf(float noundef %i.fw) #14, !noalias !652
  store float %i.fx, ptr %indvars.iv446.i.us.sroa.gep95, align 16, !tbaa !36, !noalias !652
  %i.fy = extractelement <2 x float> %22, i64 1   ; 3 uses
  %i.fz = tail call float @sqrtf(float noundef %i.fy) #14, !noalias !652
  store float %i.fz, ptr %i.r, align 4, !tbaa !36, !noalias !652
  %i.ga = extractelement <4 x float> %28, i64 0   ; 3 uses
  %i.gb = tail call float @sqrtf(float noundef %i.ga) #14, !noalias !652
  store float %i.gb, ptr %i.s, align 8, !tbaa !36, !noalias !652
  %i.gc = extractelement <4 x float> %28, i64 1   ; 3 uses
  %i.gd = tail call float @sqrtf(float noundef %i.gc) #14, !noalias !652
  store float %i.gd, ptr %i.t, align 4, !tbaa !36, !noalias !652
  %i.ge = extractelement <4 x float> %28, i64 2   ; 3 uses
  %i.gf = tail call float @sqrtf(float noundef %i.ge) #14, !noalias !652
  store float %i.gf, ptr %i.u, align 16, !tbaa !36, !noalias !652
  %i.gg = extractelement <4 x float> %28, i64 3   ; 3 uses
  %i.gh = tail call float @sqrtf(float noundef %i.gg) #14, !noalias !652
  store float %i.gh, ptr %i.v, align 4, !tbaa !36, !noalias !652
  %34 = tail call float @sqrtf(float noundef %29) #14, !noalias !652
  store float %34, ptr %i.w, align 8, !tbaa !36, !noalias !652
  %i.gi = tail call float @sqrtf(float noundef %30) #14, !noalias !652
  store float %i.gi, ptr %i.x, align 4, !tbaa !36, !noalias !652
  %i.gj = load <2 x float>, ptr %i.cq, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 3 uses
  %i.gk = load <2 x float>, ptr %i.cz, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.gl = load float, ptr %i.dd, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.gn = fcmp ult <4 x float> %i.gm, zeroinitializer ; 5 uses
  %i.go = extractelement <4 x i1> %i.gn, i64 0    ; 2 uses
  %.1324.i.us = zext i1 %i.go to i8               ; 2 uses
  %i.gp = or disjoint i8 %.1324.i.us, 2
  %i.gq = extractelement <4 x i1> %i.gn, i64 1    ; 2 uses
  %.1324.1.i.us = select i1 %i.gq, i8 %i.gp, i8 %.1324.i.us ; 2 uses
  %i.gr = or disjoint i8 %.1324.1.i.us, 4
  %i.gs = extractelement <4 x i1> %i.gn, i64 2    ; 2 uses
  %.1324.2.i.us = select i1 %i.gs, i8 %i.gr, i8 %.1324.1.i.us ; 2 uses
  %i.gt = fneg <4 x float> %i.gm
  %i.gu = or disjoint i8 %.1324.2.i.us, 8
  %i.gv = select <4 x i1> %i.gn, <4 x float> %i.gt, <4 x float> %i.gm
  %i.gw = extractelement <4 x i1> %i.gn, i64 3    ; 2 uses
  %.1324.3.i.us = select i1 %i.gw, i8 %i.gu, i8 %.1324.2.i.us ; 2 uses
  store <4 x float> %i.gv, ptr %i.b, align 16, !tbaa !36, !noalias !652
  %i.gx = or i8 %.1324.3.i.us, 16
  %i.gy = load <4 x float>, ptr %i.dp, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 7 uses
  %i.gz = fcmp ult <4 x float> %i.gy, zeroinitializer ; 5 uses
  %i.ha = extractelement <4 x i1> %i.gz, i64 0    ; 2 uses
  %.1324.4.i.us = select i1 %i.ha, i8 %i.gx, i8 %.1324.3.i.us ; 2 uses
  %i.hb = or i8 %.1324.4.i.us, 32
  %i.hc = extractelement <4 x i1> %i.gz, i64 1    ; 2 uses
  %.1324.5.i.us = select i1 %i.hc, i8 %i.hb, i8 %.1324.4.i.us ; 2 uses
  %i.hd = or i8 %.1324.5.i.us, 64
  %i.he = extractelement <4 x i1> %i.gz, i64 2    ; 2 uses
  %.1324.6.i.us = select i1 %i.he, i8 %i.hd, i8 %.1324.5.i.us ; 2 uses
  %i.hf = fneg <4 x float> %i.gy
  %i.hg = select <4 x i1> %i.gz, <4 x float> %i.hf, <4 x float> %i.gy
  store <4 x float> %i.hg, ptr %i.ab, align 16, !tbaa !36, !noalias !652
  %i.hh = extractelement <4 x i1> %i.gz, i64 3
  %i.hi = xor i1 %i.gq, %i.hh
  %i.hj = xor i1 %i.hi, %i.go
  %i.hk = xor i1 %i.hj, %i.gs
  %i.hl = xor i1 %i.hk, %i.gw
  %i.hm = xor i1 %i.hl, %i.ha
  %i.hn = xor i1 %i.hm, %i.hc
  %.1327.7.narrow.i.us = xor i1 %i.hn, %i.he
  br i1 %.1327.7.narrow.i.us, label %bb.i, label %.preheader356.i.us.1

bb.i:                                             ; preds = %.preheader361.preheader.i.us
  %i.ho = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hp = fmul <2 x float> %i.gj, %i.ho
  %i.hq = fmul <2 x float> %i.gj, %i.hp           ; 2 uses
  %i.hr = extractelement <2 x float> %i.hq, i64 0 ; 2 uses
  %i.hs = extractelement <2 x float> %i.hq, i64 1 ; 2 uses
  %i.ht = fcmp olt float %i.hs, %i.hr             ; 2 uses
  %.1321.i.us = zext i1 %i.ht to i32
  %.1319.i.us = select i1 %i.ht, float %i.hs, float %i.hr ; 2 uses
  %i.hu = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  %i.hv = fmul float %i.hu, %31
  %i.hw = fmul float %i.hu, %i.hv                 ; 2 uses
  %i.hx = fcmp olt float %i.hw, %.1319.i.us       ; 2 uses
  %.1321.1.i.us = select i1 %i.hx, i32 2, i32 %.1321.i.us
  %.1319.1.i.us = select i1 %i.hx, float %i.hw, float %.1319.i.us ; 2 uses
  %i.hy = fmul float %i.gl, %i.fs
  %i.hz = fmul float %i.gl, %i.hy                 ; 2 uses
  %i.ia = fcmp olt float %i.hz, %.1319.1.i.us     ; 2 uses
  %.1321.2.i.us = select i1 %i.ia, i32 3, i32 %.1321.1.i.us
  %.1319.2.i.us = select i1 %i.ia, float %i.hz, float %.1319.1.i.us ; 2 uses
  %i.ib = extractelement <4 x float> %i.gy, i64 0 ; 2 uses
  %i.ic = fmul float %i.ib, %i.dt
  %i.id = fmul float %i.ib, %i.ic                 ; 2 uses
  %i.ie = fcmp olt float %i.id, %.1319.2.i.us     ; 2 uses
  %.1321.3.i.us = select i1 %i.ie, i32 4, i32 %.1321.2.i.us
  %.1319.3.i.us = select i1 %i.ie, float %i.id, float %.1319.2.i.us ; 2 uses
  %i.if = extractelement <4 x float> %i.gy, i64 1 ; 2 uses
  %i.ig = fmul float %i.if, %16
  %i.ih = fmul float %i.if, %i.ig                 ; 2 uses
  %i.ii = fcmp olt float %i.ih, %.1319.3.i.us     ; 2 uses
  %.1321.4.i.us = select i1 %i.ii, i32 5, i32 %.1321.3.i.us
  %.1319.4.i.us = select i1 %i.ii, float %i.ih, float %.1319.3.i.us ; 2 uses
  %i.ij = extractelement <4 x float> %i.gy, i64 2 ; 2 uses
  %i.ik = fmul float %i.ij, %17
  %i.il = fmul float %i.ij, %i.ik                 ; 2 uses
  %i.im = fcmp olt float %i.il, %.1319.4.i.us     ; 2 uses
  %.1321.5.i.us = select i1 %i.im, i32 6, i32 %.1321.4.i.us
  %.1319.5.i.us = select i1 %i.im, float %i.il, float %.1319.4.i.us
  %i.in = extractelement <4 x float> %i.gy, i64 3 ; 2 uses
  %i.io = fmul float %i.in, %18
  %i.ip = fmul float %i.in, %i.io
  %i.iq = fcmp olt float %i.ip, %.1319.5.i.us
  %.1321.6.i.us = select i1 %i.iq, i32 7, i32 %.1321.5.i.us ; 2 uses
  %i.ir = zext nneg i32 %.1321.6.i.us to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ir ; 2 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !36, !noalias !652
  %i.iu = fneg float %i.it
  store float %i.iu, ptr %i.is, align 4, !tbaa !36, !noalias !652
  %i.iv = shl nuw nsw i32 1, %.1321.6.i.us
  %i.iw = trunc nuw i32 %i.iv to i8
  %i.ix = xor i8 %.1324.6.i.us, %i.iw
  br label %.preheader356.i.us.1

.preheader356.i.us.1:                             ; preds = %bb.i, %.preheader361.preheader.i.us
  %.2325.i.us = phi i8 [ %i.ix, %bb.i ], [ %.1324.6.i.us, %.preheader361.preheader.i.us ]
  %i.iy = load <2 x float>, ptr %i.eh, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 3 uses
  %i.iz = load <2 x float>, ptr %i.ep, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 3 uses
  %i.ja = load float, ptr %i.et, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.jb = shufflevector <2 x float> %i.iy, <2 x float> %i.iz, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.jc = fcmp ult <4 x float> %i.jb, zeroinitializer ; 5 uses
  %i.jd = extractelement <4 x i1> %i.jc, i64 0    ; 2 uses
  %.1324.i.us.1 = zext i1 %i.jd to i8             ; 2 uses
  %i.je = or disjoint i8 %.1324.i.us.1, 2
  %i.jf = extractelement <4 x i1> %i.jc, i64 1    ; 2 uses
  %.1324.1.i.us.1 = select i1 %i.jf, i8 %i.je, i8 %.1324.i.us.1 ; 2 uses
  %i.jg = or disjoint i8 %.1324.1.i.us.1, 4
  %i.jh = extractelement <4 x i1> %i.jc, i64 2    ; 2 uses
  %.1324.2.i.us.1 = select i1 %i.jh, i8 %i.jg, i8 %.1324.1.i.us.1 ; 2 uses
  %i.ji = fneg <4 x float> %i.jb
  %i.jj = or disjoint i8 %.1324.2.i.us.1, 8
  %i.jk = select <4 x i1> %i.jc, <4 x float> %i.ji, <4 x float> %i.jb ; 5 uses
  %i.jl = extractelement <4 x i1> %i.jc, i64 3    ; 2 uses
  %.1324.3.i.us.1 = select i1 %i.jl, i8 %i.jj, i8 %.1324.2.i.us.1 ; 2 uses
  store <4 x float> %i.jk, ptr %indvars.iv446.i.us.sroa.gep105, align 16, !tbaa !36, !noalias !652
  %i.jm = or i8 %.1324.3.i.us.1, 16
  %i.jn = load float, ptr %i.ff, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 3 uses
  %i.jo = load <2 x float>, ptr %i.ex, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 3 uses
  %i.jp = load float, ptr %i.fb, align 4, !tbaa !36, !alias.scope !649, !noalias !654 ; 2 uses
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jr = insertelement <4 x float> %i.jq, float %i.jn, i64 2
  %i.js = insertelement <4 x float> %i.jr, float %i.fk, i64 3 ; 3 uses
  %i.jt = fcmp ult <4 x float> %i.js, zeroinitializer ; 5 uses
  %i.ju = extractelement <4 x i1> %i.jt, i64 0    ; 2 uses
  %.1324.4.i.us.1 = select i1 %i.ju, i8 %i.jm, i8 %.1324.3.i.us.1 ; 2 uses
  %i.jv = or i8 %.1324.4.i.us.1, 32
  %i.jw = extractelement <4 x i1> %i.jt, i64 1    ; 2 uses
  %.1324.5.i.us.1 = select i1 %i.jw, i8 %i.jv, i8 %.1324.4.i.us.1 ; 2 uses
  %i.jx = or i8 %.1324.5.i.us.1, 64
  %i.jy = extractelement <4 x i1> %i.jt, i64 2    ; 2 uses
  %.1324.6.i.us.1 = select i1 %i.jy, i8 %i.jx, i8 %.1324.5.i.us.1 ; 2 uses
  %i.jz = fneg <4 x float> %i.js
  %i.ka = select <4 x i1> %i.jt, <4 x float> %i.jz, <4 x float> %i.js ; 5 uses
  store <4 x float> %i.ka, ptr %i.ai, align 16, !tbaa !36, !noalias !652
  %i.kb = extractelement <4 x i1> %i.jt, i64 3
  %i.kc = xor i1 %i.jf, %i.kb
  %i.kd = xor i1 %i.kc, %i.jd
  %i.ke = xor i1 %i.kd, %i.jh
  %i.kf = xor i1 %i.ke, %i.jl
  %i.kg = xor i1 %i.kf, %i.ju
  %i.kh = xor i1 %i.kg, %i.jw
  %.1327.7.narrow.i.us.1 = xor i1 %i.kh, %i.jy
  %i.ki = extractelement <4 x float> %i.jk, i64 0
  %i.kj = extractelement <4 x float> %i.jk, i64 1
  %i.kk = extractelement <4 x float> %i.jk, i64 2
  %i.kl = extractelement <4 x float> %i.jk, i64 3
  %i.km = extractelement <4 x float> %i.ka, i64 0
  %i.kn = extractelement <4 x float> %i.ka, i64 1
  %i.ko = extractelement <4 x float> %i.ka, i64 2
  %i.kp = extractelement <4 x float> %i.ka, i64 3
  br i1 %.1327.7.narrow.i.us.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader356.i.us.1
  %i.kq = fmul <2 x float> %i.iy, %22
  %i.kr = fmul <2 x float> %i.iy, %i.kq           ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0 ; 2 uses
  %i.kt = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp olt float %i.kt, %i.ks             ; 2 uses
  %.1321.i.us.1 = zext i1 %i.ku to i32
  %.1319.i.us.1 = select i1 %i.ku, float %i.kt, float %i.ks ; 2 uses
  %i.kv = extractelement <2 x float> %i.iz, i64 0
  %35 = extractelement <2 x float> %i.jo, i64 0
  %36 = shufflevector <2 x float> %i.iz, <2 x float> %i.jo, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.ja, i64 1
  %38 = insertelement <4 x float> %37, float %i.jp, i64 3
  %39 = fmul <4 x float> %38, %28                 ; 4 uses
  %40 = extractelement <4 x float> %39, i64 0
  %i.kw = fmul float %i.kv, %40                   ; 2 uses
  %i.kx = fcmp olt float %i.kw, %.1319.i.us.1     ; 2 uses
  %.1321.1.i.us.1 = select i1 %i.kx, i32 2, i32 %.1321.i.us.1
  %.1319.1.i.us.1 = select i1 %i.kx, float %i.kw, float %.1319.i.us.1 ; 2 uses
  %41 = extractelement <4 x float> %39, i64 1
  %i.ky = fmul float %i.ja, %41                   ; 2 uses
  %i.kz = fcmp olt float %i.ky, %.1319.1.i.us.1   ; 2 uses
  %.1321.2.i.us.1 = select i1 %i.kz, i32 3, i32 %.1321.1.i.us.1
  %.1319.2.i.us.1 = select i1 %i.kz, float %i.ky, float %.1319.1.i.us.1 ; 2 uses
  %i.la = extractelement <4 x float> %39, i64 2
  %i.lb = fmul float %35, %i.la                   ; 2 uses
  %i.lc = fcmp olt float %i.lb, %.1319.2.i.us.1   ; 2 uses
  %.1321.3.i.us.1 = select i1 %i.lc, i32 4, i32 %.1321.2.i.us.1
  %.1319.3.i.us.1 = select i1 %i.lc, float %i.lb, float %.1319.2.i.us.1 ; 2 uses
  %42 = extractelement <4 x float> %39, i64 3
  %i.ld = fmul float %i.jp, %42                   ; 2 uses
  %i.le = fcmp olt float %i.ld, %.1319.3.i.us.1   ; 2 uses
  %.1321.4.i.us.1 = select i1 %i.le, i32 5, i32 %.1321.3.i.us.1
  %.1319.4.i.us.1 = select i1 %i.le, float %i.ld, float %.1319.3.i.us.1 ; 2 uses
  %i.lf = fmul float %i.jn, %29
  %i.lg = fmul float %i.jn, %i.lf                 ; 2 uses
  %i.lh = fcmp olt float %i.lg, %.1319.4.i.us.1   ; 2 uses
  %.1321.5.i.us.1 = select i1 %i.lh, i32 6, i32 %.1321.4.i.us.1
  %.1319.5.i.us.1 = select i1 %i.lh, float %i.lg, float %.1319.4.i.us.1
  %i.li = fmul float %i.fk, %30
  %i.lj = fmul float %i.fk, %i.li
  %i.lk = fcmp olt float %i.lj, %.1319.5.i.us.1
  %.1321.6.i.us.1 = select i1 %i.lk, i32 7, i32 %.1321.5.i.us.1 ; 2 uses
  %i.ll = or i32 %.1321.6.i.us.1, 8
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lm ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !36, !noalias !652
  %i.lp = fneg float %i.lo
  store float %i.lp, ptr %i.ln, align 4, !tbaa !36, !noalias !652
  %i.lq = shl nuw nsw i32 1, %.1321.6.i.us.1
  %i.lr = trunc nuw i32 %i.lq to i8
  %i.ls = xor i8 %.1324.6.i.us.1, %i.lr
  %.pre112 = load float, ptr %indvars.iv446.i.us.sroa.gep105, align 16, !tbaa !36, !noalias !652
  %.pre113 = load float, ptr %i.af, align 4, !tbaa !36, !noalias !652
  %.pre114 = load float, ptr %i.ag, align 8, !tbaa !36, !noalias !652
  %.pre115 = load float, ptr %i.ah, align 4, !tbaa !36, !noalias !652
  %.pre116 = load float, ptr %i.ai, align 16, !tbaa !36, !noalias !652
  %.pre117 = load float, ptr %i.aj, align 4, !tbaa !36, !noalias !652
  %.pre118 = load float, ptr %i.ak, align 8, !tbaa !36, !noalias !652
  %.pre119 = load float, ptr %i.al, align 4, !tbaa !36, !noalias !652
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader356.i.us.1
  %i.lt = phi float [ %.pre119, %bb.j ], [ %i.kp, %.preheader356.i.us.1 ] ; 2 uses
  %i.lu = phi float [ %.pre118, %bb.j ], [ %i.ko, %.preheader356.i.us.1 ] ; 2 uses
  %i.lv = phi float [ %.pre117, %bb.j ], [ %i.kn, %.preheader356.i.us.1 ] ; 2 uses
  %i.lw = phi float [ %.pre116, %bb.j ], [ %i.km, %.preheader356.i.us.1 ] ; 2 uses
  %i.lx = phi float [ %.pre115, %bb.j ], [ %i.kl, %.preheader356.i.us.1 ] ; 2 uses
  %i.ly = phi float [ %.pre114, %bb.j ], [ %i.kk, %.preheader356.i.us.1 ] ; 2 uses
  %i.lz = phi float [ %.pre113, %bb.j ], [ %i.kj, %.preheader356.i.us.1 ] ; 2 uses
  %i.ma = phi float [ %.pre112, %bb.j ], [ %i.ki, %.preheader356.i.us.1 ] ; 2 uses
  %.2325.i.us.1 = phi i8 [ %i.ls, %bb.j ], [ %.1324.6.i.us.1, %.preheader356.i.us.1 ]
  %i.mb = load float, ptr %i.b, align 16, !tbaa !36, !noalias !652 ; 2 uses
  %i.mc = load float, ptr %i.y, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %i.md = fcmp ogt float %i.mb, %i.mc
  %.0316..i.us = select i1 %i.md, float %i.mb, float %i.mc ; 2 uses
  %i.me = load float, ptr %i.z, align 8, !tbaa !36, !noalias !652 ; 2 uses
  %i.mf = fcmp ogt float %.0316..i.us, %i.me
  %.0316..1.i.us = select i1 %i.mf, float %.0316..i.us, float %i.me ; 2 uses
  %i.mg = load float, ptr %i.aa, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %i.mh = fcmp ogt float %.0316..1.i.us, %i.mg
  %.0316..2.i.us = select i1 %i.mh, float %.0316..1.i.us, float %i.mg ; 2 uses
  %i.mi = load float, ptr %i.ab, align 16, !tbaa !36, !noalias !652 ; 2 uses
  %i.mj = fcmp ogt float %.0316..2.i.us, %i.mi
  %.0316..3.i.us = select i1 %i.mj, float %.0316..2.i.us, float %i.mi ; 2 uses
  %i.mk = load float, ptr %i.ac, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %i.ml = fcmp ogt float %.0316..3.i.us, %i.mk
  %.0316..4.i.us = select i1 %i.ml, float %.0316..3.i.us, float %i.mk ; 2 uses
  %i.mm = load float, ptr %i.ad, align 8, !tbaa !36, !noalias !652 ; 2 uses
  %i.mn = fcmp ogt float %.0316..4.i.us, %i.mm
  %.0316..5.i.us = select i1 %i.mn, float %.0316..4.i.us, float %i.mm ; 2 uses
  %i.mo = load float, ptr %i.ae, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %i.mp = fcmp ogt float %.0316..5.i.us, %i.mo
  %.0316..6.i.us = select i1 %i.mp, float %.0316..5.i.us, float %i.mo ; 2 uses
  %i.mq = fcmp ogt float %.0316..6.i.us, %i.ma
  %.0316..7.i.us = select i1 %i.mq, float %.0316..6.i.us, float %i.ma ; 2 uses
  %i.mr = fcmp ogt float %.0316..7.i.us, %i.lz
  %.0316..8.i.us = select i1 %i.mr, float %.0316..7.i.us, float %i.lz ; 2 uses
  %i.ms = fcmp ogt float %.0316..8.i.us, %i.ly
  %.0316..9.i.us = select i1 %i.ms, float %.0316..8.i.us, float %i.ly ; 2 uses
  %i.mt = fcmp ogt float %.0316..9.i.us, %i.lx
  %.0316..10.i.us = select i1 %i.mt, float %.0316..9.i.us, float %i.lx ; 2 uses
  %i.mu = fcmp ogt float %.0316..10.i.us, %i.lw
  %.0316..11.i.us = select i1 %i.mu, float %.0316..10.i.us, float %i.lw ; 2 uses
  %i.mv = fcmp ogt float %.0316..11.i.us, %i.lv
  %.0316..12.i.us = select i1 %i.mv, float %.0316..11.i.us, float %i.lv ; 2 uses
  %i.mw = fcmp ogt float %.0316..12.i.us, %i.lu
  %.0316..13.i.us = select i1 %i.mw, float %.0316..12.i.us, float %i.lu ; 2 uses
  %i.mx = fcmp ogt float %.0316..13.i.us, %i.lt
  %.0316..14.i.us = select i1 %i.mx, float %.0316..13.i.us, float %i.lt ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !652
  %i.my = fcmp olt float %.0316..14.i.us, 1.000000e-15
  br i1 %i.my, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.mz = fdiv float %.0316..14.i.us, 5.000000e+00
  %i.na = load float, ptr %i.b, align 16, !tbaa !36, !noalias !652
  %i.nb = load <4 x float>, ptr %i.ap, align 4, !tbaa !36, !noalias !652
  %i.nc = load float, ptr %i.au, align 4, !tbaa !36, !noalias !652
  %i.nd = load <2 x float>, ptr %i.ar, align 4, !tbaa !36, !noalias !652
  %i.ne = insertelement <4 x float> poison, float %i.nc, i64 2
  %i.nf = insertelement <4 x float> %i.ne, float %i.na, i64 3
  %i.ng = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ni = load float, ptr %indvars.iv446.i.us.sroa.gep105, align 16
  %i.nj = load <4 x float>, ptr %i.aw, align 4
  %i.nk = load float, ptr %i.bb, align 4
  %i.nl = load <2 x float>, ptr %i.ay, align 4
  %i.nm = insertelement <4 x float> poison, float %i.nk, i64 2
  %i.nn = insertelement <4 x float> %i.nm, float %i.ni, i64 3
  %i.no = shufflevector <2 x float> %i.nl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.np = shufflevector <4 x float> %i.no, <4 x float> %i.nn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.nq = load float, ptr %i.b, align 16
  %i.nr = fmul float %i.fn, %i.nq
  %i.ns = load float, ptr %i.y, align 4
  %i.nt = fmul float %i.fp, %i.ns
  %i.nu = load float, ptr %i.z, align 8
  %i.nv = fmul float %31, %i.nu
  %i.nw = load float, ptr %i.aa, align 4
  %i.nx = fmul float %i.fs, %i.nw
  %i.ny = load float, ptr %i.ab, align 16
  %i.nz = fmul float %i.dt, %i.ny
  %i.oa = load float, ptr %i.ac, align 4
  %i.ob = fmul float %16, %i.oa
  %i.oc = load float, ptr %i.ad, align 8
  %i.od = fmul float %17, %i.oc
  %i.oe = load float, ptr %i.ae, align 4
  %i.of = fmul float %18, %i.oe
  %i.og = load float, ptr %indvars.iv446.i.us.sroa.gep105, align 16
  %i.oh = fmul float %i.fw, %i.og
  %i.oi = load float, ptr %i.af, align 4
  %i.oj = fmul float %i.fy, %i.oi
  %i.ok = load float, ptr %i.ag, align 8
  %i.ol = fmul float %i.ga, %i.ok
  %i.om = load float, ptr %i.ah, align 4
  %i.on = fmul float %i.gc, %i.om
  %i.oo = load float, ptr %i.ai, align 16
  %i.op = fmul float %i.ge, %i.oo
  %i.oq = load float, ptr %i.aj, align 4
  %i.or = fmul float %i.gg, %i.oq
  %i.os = load float, ptr %i.ak, align 8
  %i.ot = fmul float %29, %i.os
  %i.ou = load float, ptr %i.al, align 4
  %i.ov = fmul float %30, %i.ou
  br label %.preheader351.i.us

.preheader351.i.us:                               ; preds = %.loopexit.i.us, %bb.l
  %i.ow = phi i16 [ 257, %bb.l ], [ %i.vh, %.loopexit.i.us ] ; 2 uses
  %.0310389.i.us = phi i32 [ -9, %bb.l ], [ %i.vi, %.loopexit.i.us ] ; 2 uses
  %.0311388.i.us = phi float [ %i.mz, %bb.l ], [ %.1312.i.us, %.loopexit.i.us ] ; 2 uses
  %.0313387.i.us = phi float [ 0.000000e+00, %bb.l ], [ %.1314.i.us, %.loopexit.i.us ] ; 3 uses
  %i.ox = sitofp i32 %.0310389.i.us to float
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.ox, float 1.000000e-01, float 5.000000e+00)
  %i.oz = fdiv float %i.oy, %.0316..14.i.us       ; 2 uses
  %i.pa = fdiv float 1.000000e+00, %i.oz          ; 2 uses
  %i.pb = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pc, <4 x float> %i.nb, <4 x float> splat (float -1.000000e+00))
  %i.pe = fmul <4 x float> %i.pd, splat (float 5.000000e-01)
  %i.pf = fadd <4 x float> %i.pe, splat (float f0x4B400000)
  %i.pg = bitcast <4 x float> %i.pf to <4 x i32>
  %i.ph = and <4 x i32> %i.pg, splat (i32 8388607)
  %i.pi = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ph, <4 x i32> splat (i32 4194304))
  %i.pj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pi, <4 x i32> splat (i32 2)) ; 2 uses
  %i.pk = trunc nuw nsw <4 x i32> %i.pj to <4 x i8>
  store <4 x i8> %i.pk, ptr %i.aq, align 1, !tbaa !34, !noalias !652
  %i.pl = shl nuw nsw <4 x i32> %i.pj, <i32 2, i32 4, i32 6, i32 8>
  %i.pm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pc, <4 x float> %i.nh, <4 x float> splat (float -1.000000e+00))
  %i.pn = fmul <4 x float> %i.pm, splat (float 5.000000e-01)
  %i.po = fadd <4 x float> %i.pn, splat (float f0x4B400000)
  %i.pp = bitcast <4 x float> %i.po to <4 x i32>
  %i.pq = and <4 x i32> %i.pp, splat (i32 8388607)
  %i.pr = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.pq, <4 x i32> splat (i32 4194304))
  %i.ps = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pr, <4 x i32> splat (i32 2)) ; 5 uses
  %i.pt = bitcast <4 x i32> %i.ps to <16 x i8>
  %i.pu = extractelement <16 x i8> %i.pt, i64 12
  store i8 %i.pu, ptr %i.d, align 16, !tbaa !34, !noalias !652
  %i.pv = bitcast <4 x i32> %i.ps to <16 x i8>
  %i.pw = extractelement <16 x i8> %i.pv, i64 0
  store i8 %i.pw, ptr %i.as, align 1, !tbaa !34, !noalias !652
  %i.px = bitcast <4 x i32> %i.ps to <16 x i8>
  %i.py = extractelement <16 x i8> %i.px, i64 4
  store i8 %i.py, ptr %i.at, align 2, !tbaa !34, !noalias !652
  %i.pz = bitcast <4 x i32> %i.ps to <16 x i8>
  %i.qa = extractelement <16 x i8> %i.pz, i64 8
  store i8 %i.qa, ptr %i.av, align 1, !tbaa !34, !noalias !652
  %i.qb = shl nuw nsw <4 x i32> %i.ps, <i32 10, i32 12, i32 14, i32 0>
  %i.qc = or <4 x i32> %i.qb, %i.pl
  %op.rdx141 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.qc)
  %i.qd = zext nneg i32 %op.rdx141 to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.qg = icmp slt i32 %i.qf, 0
  br i1 %i.qg, label %bb.m, label %.preheader351.i.us.1

bb.m:                                             ; preds = %.preheader351.i.us
  %i.qh = sext i32 %i.qf to i64
  %i.qi = sub nsw i64 0, %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.qi
  %i.qk = getelementptr inbounds i8, ptr %i.qj, i64 -2
  %i.ql = call fastcc i32 @iq2_find_best_neighbour(ptr noundef %i.qk, ptr noundef %i.br, ptr noundef %i.b, ptr noundef %i.e, float noundef %i.pa, ptr noundef %i.d), !noalias !652 ; 0 uses
  br label %.preheader351.i.us.1

.preheader351.i.us.1:                             ; preds = %bb.m, %.preheader351.i.us
  %.sroa.022.0 = phi i16 [ 0, %bb.m ], [ 1, %.preheader351.i.us ]
  %i.qm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pc, <4 x float> %i.nj, <4 x float> splat (float -1.000000e+00))
  %i.qn = fmul <4 x float> %i.qm, splat (float 5.000000e-01)
  %i.qo = fadd <4 x float> %i.qn, splat (float f0x4B400000)
  %i.qp = bitcast <4 x float> %i.qo to <4 x i32>
  %i.qq = and <4 x i32> %i.qp, splat (i32 8388607)
  %i.qr = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.qq, <4 x i32> splat (i32 4194304))
  %i.qs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qr, <4 x i32> splat (i32 2)) ; 2 uses
  %i.qt = trunc nuw nsw <4 x i32> %i.qs to <4 x i8>
  store <4 x i8> %i.qt, ptr %i.ax, align 1, !tbaa !34, !noalias !652
  %i.qu = shl nuw nsw <4 x i32> %i.qs, <i32 2, i32 4, i32 6, i32 8>
  %i.qv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pc, <4 x float> %i.np, <4 x float> splat (float -1.000000e+00))
  %i.qw = fmul <4 x float> %i.qv, splat (float 5.000000e-01)
  %i.qx = fadd <4 x float> %i.qw, splat (float f0x4B400000)
  %i.qy = bitcast <4 x float> %i.qx to <4 x i32>
  %i.qz = and <4 x i32> %i.qy, splat (i32 8388607)
  %i.ra = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.qz, <4 x i32> splat (i32 4194304))
  %i.rb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ra, <4 x i32> splat (i32 2)) ; 5 uses
  %i.rc = bitcast <4 x i32> %i.rb to <16 x i8>
  %i.rd = extractelement <16 x i8> %i.rc, i64 12
  store i8 %i.rd, ptr %indvars.iv446.i.us.sroa.gep99, align 8, !tbaa !34, !noalias !652
  %i.re = bitcast <4 x i32> %i.rb to <16 x i8>
  %i.rf = extractelement <16 x i8> %i.re, i64 0
  store i8 %i.rf, ptr %i.az, align 1, !tbaa !34, !noalias !652
  %i.rg = bitcast <4 x i32> %i.rb to <16 x i8>
  %i.rh = extractelement <16 x i8> %i.rg, i64 4
  store i8 %i.rh, ptr %i.ba, align 2, !tbaa !34, !noalias !652
  %i.ri = bitcast <4 x i32> %i.rb to <16 x i8>
  %i.rj = extractelement <16 x i8> %i.ri, i64 8
  store i8 %i.rj, ptr %i.bc, align 1, !tbaa !34, !noalias !652
  %i.rk = shl nuw nsw <4 x i32> %i.rb, <i32 10, i32 12, i32 14, i32 0>
  %i.rl = or <4 x i32> %i.rk, %i.qu
  %op.rdx141.1 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.rl)
  %i.rm = zext nneg i32 %op.rdx141.1 to i64
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.rp = icmp slt i32 %i.ro, 0
  br i1 %i.rp, label %bb.n, label %.preheader355.preheader.i.us

bb.n:                                             ; preds = %.preheader351.i.us.1
  %i.rq = sext i32 %i.ro to i64
  %i.rr = sub nsw i64 0, %i.rq
  %i.rs = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.rr
  %i.rt = getelementptr inbounds i8, ptr %i.rs, i64 -2
  %i.ru = call fastcc i32 @iq2_find_best_neighbour(ptr noundef %i.rt, ptr noundef %i.br, ptr noundef %indvars.iv446.i.us.sroa.gep105, ptr noundef %indvars.iv446.i.us.sroa.gep95, float noundef %i.pa, ptr noundef %indvars.iv446.i.us.sroa.gep99), !noalias !652 ; 0 uses
  br label %.preheader355.preheader.i.us

.preheader355.preheader.i.us:                     ; preds = %bb.n, %.preheader351.i.us.1
  %.sroa.4.0 = phi i16 [ 0, %bb.n ], [ 256, %.preheader351.i.us.1 ]
  %i.rv = load <16 x i8>, ptr %i.d, align 16, !tbaa !34, !noalias !652
  %i.rw = sext <16 x i8> %i.rv to <16 x i16>
  %i.rx = shl nsw <16 x i16> %i.rw, splat (i16 1)
  %i.ry = or disjoint <16 x i16> %i.rx, splat (i16 1) ; 16 uses
  %i.rz = extractelement <16 x i16> %i.ry, i64 0
  %i.sa = sitofp i16 %i.rz to float               ; 3 uses
  %i.sb = tail call float @llvm.fmuladd.f32(float %i.nr, float %i.sa, float 0.000000e+00)
  %i.sc = fmul float %i.fn, %i.sa
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.sc, float %i.sa, float 0.000000e+00)
  %i.se = extractelement <16 x i16> %i.ry, i64 1
  %i.sf = sitofp i16 %i.se to float               ; 3 uses
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.nt, float %i.sf, float %i.sb)
  %i.sh = fmul float %i.fp, %i.sf
  %i.si = tail call float @llvm.fmuladd.f32(float %i.sh, float %i.sf, float %i.sd)
  %i.sj = extractelement <16 x i16> %i.ry, i64 2
  %i.sk = sitofp i16 %i.sj to float               ; 3 uses
  %i.sl = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.sk, float %i.sg)
  %i.sm = fmul float %31, %i.sk
  %i.sn = tail call float @llvm.fmuladd.f32(float %i.sm, float %i.sk, float %i.si)
  %i.so = extractelement <16 x i16> %i.ry, i64 3
  %i.sp = sitofp i16 %i.so to float               ; 3 uses
  %i.sq = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.sp, float %i.sl)
  %i.sr = fmul float %i.fs, %i.sp
  %i.ss = tail call float @llvm.fmuladd.f32(float %i.sr, float %i.sp, float %i.sn)
  %i.st = extractelement <16 x i16> %i.ry, i64 4
  %i.su = sitofp i16 %i.st to float               ; 3 uses
  %i.sv = tail call float @llvm.fmuladd.f32(float %i.nz, float %i.su, float %i.sq)
  %i.sw = fmul float %i.dt, %i.su
  %i.sx = tail call float @llvm.fmuladd.f32(float %i.sw, float %i.su, float %i.ss)
  %i.sy = extractelement <16 x i16> %i.ry, i64 5
  %i.sz = sitofp i16 %i.sy to float               ; 3 uses
  %i.ta = tail call float @llvm.fmuladd.f32(float %i.ob, float %i.sz, float %i.sv)
  %i.tb = fmul float %16, %i.sz
  %i.tc = tail call float @llvm.fmuladd.f32(float %i.tb, float %i.sz, float %i.sx)
  %i.td = extractelement <16 x i16> %i.ry, i64 6
  %i.te = sitofp i16 %i.td to float               ; 3 uses
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.od, float %i.te, float %i.ta)
  %i.tg = fmul float %17, %i.te
  %i.th = tail call float @llvm.fmuladd.f32(float %i.tg, float %i.te, float %i.tc)
  %i.ti = extractelement <16 x i16> %i.ry, i64 7
  %i.tj = sitofp i16 %i.ti to float               ; 3 uses
  %i.tk = tail call float @llvm.fmuladd.f32(float %i.of, float %i.tj, float %i.tf)
  %i.tl = fmul float %18, %i.tj
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.tl, float %i.tj, float %i.th)
  %i.tn = extractelement <16 x i16> %i.ry, i64 8
  %i.to = sitofp i16 %i.tn to float               ; 3 uses
  %i.tp = tail call float @llvm.fmuladd.f32(float %i.oh, float %i.to, float %i.tk)
  %i.tq = fmul float %i.fw, %i.to
  %i.tr = tail call float @llvm.fmuladd.f32(float %i.tq, float %i.to, float %i.tm)
  %i.ts = extractelement <16 x i16> %i.ry, i64 9
  %i.tt = sitofp i16 %i.ts to float               ; 3 uses
  %i.tu = tail call float @llvm.fmuladd.f32(float %i.oj, float %i.tt, float %i.tp)
  %i.tv = fmul float %i.fy, %i.tt
  %i.tw = tail call float @llvm.fmuladd.f32(float %i.tv, float %i.tt, float %i.tr)
  %i.tx = extractelement <16 x i16> %i.ry, i64 10
  %i.ty = sitofp i16 %i.tx to float               ; 3 uses
  %i.tz = tail call float @llvm.fmuladd.f32(float %i.ol, float %i.ty, float %i.tu)
  %i.ua = fmul float %i.ga, %i.ty
  %i.ub = tail call float @llvm.fmuladd.f32(float %i.ua, float %i.ty, float %i.tw)
  %i.uc = extractelement <16 x i16> %i.ry, i64 11
  %i.ud = sitofp i16 %i.uc to float               ; 3 uses
  %i.ue = tail call float @llvm.fmuladd.f32(float %i.on, float %i.ud, float %i.tz)
  %i.uf = fmul float %i.gc, %i.ud
  %i.ug = tail call float @llvm.fmuladd.f32(float %i.uf, float %i.ud, float %i.ub)
  %i.uh = extractelement <16 x i16> %i.ry, i64 12
  %i.ui = sitofp i16 %i.uh to float               ; 3 uses
  %i.uj = tail call float @llvm.fmuladd.f32(float %i.op, float %i.ui, float %i.ue)
  %i.uk = fmul float %i.ge, %i.ui
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.uk, float %i.ui, float %i.ug)
  %i.um = extractelement <16 x i16> %i.ry, i64 13
  %i.un = sitofp i16 %i.um to float               ; 3 uses
  %i.uo = tail call float @llvm.fmuladd.f32(float %i.or, float %i.un, float %i.uj)
  %i.up = fmul float %i.gg, %i.un
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.up, float %i.un, float %i.ul)
  %i.ur = extractelement <16 x i16> %i.ry, i64 14
  %i.us = sitofp i16 %i.ur to float               ; 3 uses
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.us, float %i.uo)
  %i.uu = fmul float %29, %i.us
  %i.uv = tail call float @llvm.fmuladd.f32(float %i.uu, float %i.us, float %i.uq)
  %i.uw = extractelement <16 x i16> %i.ry, i64 15
  %i.ux = sitofp i16 %i.uw to float               ; 3 uses
  %i.uy = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.ux, float %i.ut) ; 4 uses
  %i.uz = fmul float %30, %i.ux
  %i.va = tail call float @llvm.fmuladd.f32(float %i.uz, float %i.ux, float %i.uv) ; 3 uses
  %i.vb = fcmp ogt float %i.va, 0.000000e+00
  br i1 %i.vb, label %bb.o, label %.loopexit.i.us

bb.o:                                             ; preds = %.preheader355.preheader.i.us
  %i.vc = fmul float %i.uy, %i.uy
  %i.vd = fmul float %.0313387.i.us, %i.va
  %i.ve = fcmp ogt float %i.vc, %i.vd
  br i1 %i.ve, label %.preheader354.preheader.i.us, label %.loopexit.i.us

.preheader354.preheader.i.us:                     ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa !34, !noalias !652
  %.sroa.022.0.insert.insert.us = or disjoint i16 %.sroa.4.0, %.sroa.022.0
  %i.vf = fdiv float %i.uy, %i.va                 ; 2 uses
  %i.vg = fmul float %i.uy, %i.vf
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader354.preheader.i.us, %bb.o, %.preheader355.preheader.i.us
  %i.vh = phi i16 [ %i.ow, %.preheader355.preheader.i.us ], [ %i.ow, %bb.o ], [ %.sroa.022.0.insert.insert.us, %.preheader354.preheader.i.us ] ; 4 uses
  %.1314.i.us = phi float [ %.0313387.i.us, %.preheader355.preheader.i.us ], [ %.0313387.i.us, %bb.o ], [ %i.vg, %.preheader354.preheader.i.us ]
  %.1312.i.us = phi float [ %.0311388.i.us, %.preheader355.preheader.i.us ], [ %.0311388.i.us, %bb.o ], [ %i.vf, %.preheader354.preheader.i.us ] ; 7 uses
  %i.vi = add nsw i32 %.0310389.i.us, 1           ; 2 uses
  %exitcond459.not.i.us = icmp eq i32 %i.vi, 10
  br i1 %exitcond459.not.i.us, label %.preheader359.i.us, label %.preheader351.i.us, !llvm.loop !644

.preheader359.i.us:                               ; preds = %.loopexit.i.us
  %.sroa.7.0.extract.shift.us = lshr i16 %i.vh, 8 ; 2 uses
  %i.vj = and i16 %i.vh, 255
  %i.vk = icmp eq i16 %i.vj, 0
  %i.vl = icmp eq i16 %.sroa.7.0.extract.shift.us, 0
  %i.vm = or i1 %i.vk, %i.vl
  %i.vn = fcmp ogt float %.1312.i.us, 0.000000e+00
  %or.cond.i.us = select i1 %i.vm, i1 %i.vn, i1 false
  br i1 %or.cond.i.us, label %bb.p, label %.loopexit357.i.us

bb.p:                                             ; preds = %.preheader359.i.us
  %i.vo = fdiv nnan float 1.000000e+00, %.1312.i.us
  %i.vp = insertelement <4 x float> poison, float %i.vo, i64 0
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.vr = trunc i16 %i.vh to i1
  br i1 %i.vr, label %bb.r, label %.preheader353.i.us

.preheader353.i.us:                               ; preds = %bb.p
  %i.vs = load float, ptr %i.b, align 16, !tbaa !36, !noalias !652
  %i.vt = load <4 x float>, ptr %i.bd, align 4, !tbaa !36, !noalias !652
  %i.vu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.vt, <4 x float> splat (float -1.000000e+00))
  %i.vv = fmul <4 x float> %i.vu, splat (float 5.000000e-01)
  %i.vw = fadd <4 x float> %i.vv, splat (float f0x4B400000)
  %i.vx = bitcast <4 x float> %i.vw to <4 x i32>
  %i.vy = and <4 x i32> %i.vx, splat (i32 8388607)
  %i.vz = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.vy, <4 x i32> splat (i32 4194304))
  %i.wa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.vz, <4 x i32> splat (i32 2)) ; 2 uses
  %i.wb = shl nuw nsw <4 x i32> %i.wa, <i32 2, i32 4, i32 6, i32 8>
  %i.wc = trunc nuw nsw <4 x i32> %i.wa to <4 x i8>
  store <4 x i8> %i.wc, ptr %i.be, align 1, !tbaa !34, !noalias !652
  %i.wd = load float, ptr %i.bi, align 4, !tbaa !36, !noalias !652
  %i.we = load <2 x float>, ptr %i.bf, align 4, !tbaa !36, !noalias !652
  %i.wf = insertelement <4 x float> poison, float %i.wd, i64 2
  %i.wg = insertelement <4 x float> %i.wf, float %i.vs, i64 3
  %i.wh = shufflevector <2 x float> %i.we, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wi = shufflevector <4 x float> %i.wh, <4 x float> %i.wg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.wj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.wi, <4 x float> splat (float -1.000000e+00))
  %i.wk = fmul <4 x float> %i.wj, splat (float 5.000000e-01)
  %i.wl = fadd <4 x float> %i.wk, splat (float f0x4B400000)
  %i.wm = bitcast <4 x float> %i.wl to <4 x i32>
  %i.wn = and <4 x i32> %i.wm, splat (i32 8388607)
  %i.wo = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.wn, <4 x i32> splat (i32 4194304))
  %i.wp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.wo, <4 x i32> splat (i32 2)) ; 5 uses
  %i.wq = bitcast <4 x i32> %i.wp to <16 x i8>
  %i.wr = extractelement <16 x i8> %i.wq, i64 12
  store i8 %i.wr, ptr %i.c, align 16, !tbaa !34, !noalias !652
  %i.ws = bitcast <4 x i32> %i.wp to <16 x i8>
  %i.wt = extractelement <16 x i8> %i.ws, i64 0
  store i8 %i.wt, ptr %i.bg, align 1, !tbaa !34, !noalias !652
  %i.wu = bitcast <4 x i32> %i.wp to <16 x i8>
  %i.wv = extractelement <16 x i8> %i.wu, i64 4
  store i8 %i.wv, ptr %i.bh, align 2, !tbaa !34, !noalias !652
  %i.ww = shl nuw nsw <4 x i32> %i.wp, <i32 10, i32 12, i32 14, i32 0>
  %i.wx = bitcast <4 x i32> %i.wp to <16 x i8>
  %i.wy = extractelement <16 x i8> %i.wx, i64 8
  store i8 %i.wy, ptr %i.bj, align 1, !tbaa !34, !noalias !652
  %i.wz = or <4 x i32> %i.ww, %i.wb
  %op.rdx137 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.wz)
  %i.xa = zext nneg i32 %op.rdx137 to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.xd = icmp slt i32 %i.xc, 0
  br i1 %i.xd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader353.i.us
  %i.xe = sext i32 %i.xc to i64
  %i.xf = sub nsw i64 0, %i.xe
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.xf
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 -2
  %i.xi = call fastcc i32 @iq2_find_best_neighbour(ptr noundef %i.xh, ptr noundef %i.br, ptr noundef %i.b, ptr noundef %i.e, float noundef %.1312.i.us, ptr noundef %i.c), !noalias !652 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader353.i.us, %bb.p
  %i.xj = trunc i16 %.sroa.7.0.extract.shift.us to i1
  br i1 %i.xj, label %.preheader358.preheader.i.us, label %.preheader353.i.us.1

.preheader353.i.us.1:                             ; preds = %bb.r
  %i.xk = load float, ptr %indvars.iv446.i.us.sroa.gep105, align 16, !tbaa !36, !noalias !652
  %i.xl = load <4 x float>, ptr %i.bk, align 4, !tbaa !36, !noalias !652
  %i.xm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.xl, <4 x float> splat (float -1.000000e+00))
  %i.xn = fmul <4 x float> %i.xm, splat (float 5.000000e-01)
  %i.xo = fadd <4 x float> %i.xn, splat (float f0x4B400000)
  %i.xp = bitcast <4 x float> %i.xo to <4 x i32>
  %i.xq = and <4 x i32> %i.xp, splat (i32 8388607)
  %i.xr = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.xq, <4 x i32> splat (i32 4194304))
  %i.xs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.xr, <4 x i32> splat (i32 2)) ; 2 uses
  %i.xt = shl nuw nsw <4 x i32> %i.xs, <i32 2, i32 4, i32 6, i32 8>
  %i.xu = trunc nuw nsw <4 x i32> %i.xs to <4 x i8>
  store <4 x i8> %i.xu, ptr %i.bl, align 1, !tbaa !34, !noalias !652
  %i.xv = load float, ptr %i.bp, align 4, !tbaa !36, !noalias !652
  %i.xw = load <2 x float>, ptr %i.bm, align 4, !tbaa !36, !noalias !652
  %i.xx = insertelement <4 x float> poison, float %i.xv, i64 2
  %i.xy = insertelement <4 x float> %i.xx, float %i.xk, i64 3
  %i.xz = shufflevector <2 x float> %i.xw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> %i.xy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.yb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.ya, <4 x float> splat (float -1.000000e+00))
  %i.yc = fmul <4 x float> %i.yb, splat (float 5.000000e-01)
  %i.yd = fadd <4 x float> %i.yc, splat (float f0x4B400000)
  %i.ye = bitcast <4 x float> %i.yd to <4 x i32>
  %i.yf = and <4 x i32> %i.ye, splat (i32 8388607)
  %i.yg = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.yf, <4 x i32> splat (i32 4194304))
  %i.yh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.yg, <4 x i32> splat (i32 2)) ; 5 uses
  %i.yi = bitcast <4 x i32> %i.yh to <16 x i8>
  %i.yj = extractelement <16 x i8> %i.yi, i64 12
  store i8 %i.yj, ptr %.0290401.lcssa.wide.i.sroa.gep30, align 8, !tbaa !34, !noalias !652
  %i.yk = bitcast <4 x i32> %i.yh to <16 x i8>
  %i.yl = extractelement <16 x i8> %i.yk, i64 0
  store i8 %i.yl, ptr %i.bn, align 1, !tbaa !34, !noalias !652
  %i.ym = bitcast <4 x i32> %i.yh to <16 x i8>
  %i.yn = extractelement <16 x i8> %i.ym, i64 4
  store i8 %i.yn, ptr %i.bo, align 2, !tbaa !34, !noalias !652
  %i.yo = shl nuw nsw <4 x i32> %i.yh, <i32 10, i32 12, i32 14, i32 0>
  %i.yp = bitcast <4 x i32> %i.yh to <16 x i8>
  %i.yq = extractelement <16 x i8> %i.yp, i64 8
  store i8 %i.yq, ptr %i.bq, align 1, !tbaa !34, !noalias !652
  %i.yr = or <4 x i32> %i.yo, %i.xt
  %op.rdx137.1 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.yr)
  %i.ys = zext nneg i32 %op.rdx137.1 to i64
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ys
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.yv = icmp slt i32 %i.yu, 0
  br i1 %i.yv, label %bb.s, label %.preheader358.preheader.i.us

bb.s:                                             ; preds = %.preheader353.i.us.1
  %i.yw = sext i32 %i.yu to i64
  %i.yx = sub nsw i64 0, %i.yw
  %i.yy = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.yx
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -2
  %i.za = call fastcc i32 @iq2_find_best_neighbour(ptr noundef %i.yz, ptr noundef %i.br, ptr noundef %indvars.iv446.i.us.sroa.gep105, ptr noundef %indvars.iv446.i.us.sroa.gep95, float noundef %.1312.i.us, ptr noundef %.0290401.lcssa.wide.i.sroa.gep30), !noalias !652 ; 0 uses
  br label %.preheader358.preheader.i.us

.preheader358.preheader.i.us:                     ; preds = %bb.s, %.preheader353.i.us.1, %bb.r
  %i.zb = load <2 x float>, ptr %i.b, align 16, !tbaa !36, !noalias !652 ; 2 uses
  %i.zc = load <4 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !652
  %i.zd = sext <4 x i8> %i.zc to <4 x i16>
  %i.ze = shl nsw <4 x i16> %i.zd, splat (i16 1)
  %i.zf = or disjoint <4 x i16> %i.ze, splat (i16 1)
  %i.zg = sitofp <4 x i16> %i.zf to <4 x float>   ; 8 uses
  %i.zh = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> zeroinitializer
  %i.zi = shufflevector <4 x float> %i.zg, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.zj = shufflevector <2 x float> %i.zb, <2 x float> %i.zi, <2 x i32> <i32 0, i32 3>
  %i.zk = fmul <2 x float> %i.zh, %i.zj
  %i.zl = shufflevector <4 x float> %i.zg, <4 x float> poison, <2 x i32> zeroinitializer
  %i.zm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zk, <2 x float> %i.zl, <2 x float> zeroinitializer)
  %i.zn = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zo = shufflevector <2 x float> %i.zb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> %i.zg, <2 x i32> <i32 1, i32 5>
  %i.zq = fmul <2 x float> %i.zn, %i.zp
  %i.zr = shufflevector <4 x float> %i.zg, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.zs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zq, <2 x float> %i.zr, <2 x float> %i.zm)
  %i.zt = load <4 x float>, ptr %i.z, align 8     ; 2 uses
  %i.zu = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zv = shufflevector <4 x float> %i.zt, <4 x float> %i.zg, <2 x i32> <i32 0, i32 6>
  %i.zw = fmul <2 x float> %i.zu, %i.zv
  %i.zx = shufflevector <4 x float> %i.zg, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zw, <2 x float> %i.zx, <2 x float> %i.zs)
  %i.zz = shufflevector <4 x float> %i.dm, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aaa = shufflevector <4 x float> %i.zt, <4 x float> %i.zg, <2 x i32> <i32 1, i32 7>
  %i.aab = fmul <2 x float> %i.zz, %i.aaa
  %i.aac = shufflevector <4 x float> %i.zg, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aab, <2 x float> %i.aac, <2 x float> %i.zy)
  %i.aae = load float, ptr %i.ab, align 16, !tbaa !36, !noalias !652
  %i.aaf = load float, ptr %i.al, align 4, !tbaa !36, !noalias !652
  %i.aag = load <12 x i8>, ptr %i.am, align 4, !tbaa !34, !noalias !652
  %i.aah = sext <12 x i8> %i.aag to <12 x i16>
  %i.aai = shl nsw <12 x i16> %i.aah, splat (i16 1)
  %i.aaj = or disjoint <12 x i16> %i.aai, splat (i16 1)
  %i.aak = sitofp <12 x i16> %i.aaj to <12 x float> ; 23 uses
  %i.aal = shufflevector <12 x float> %i.aak, <12 x float> poison, <12 x i32> <i32 poison, i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aam = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.aan = shufflevector <2 x float> %i.aam, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aao = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aap = insertelement <2 x float> %i.aao, float %i.aae, i64 0
  %i.aaq = fmul <2 x float> %i.aan, %i.aap
  %i.aar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaq, <2 x float> %i.aao, <2 x float> %i.aad)
  %i.aas = load <2 x float>, ptr %i.ac, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %43 = insertelement <2 x float> poison, float %16, i64 0
  %i.aat = shufflevector <2 x float> %43, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aau = shufflevector <2 x float> %i.aas, <2 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aav = shufflevector <12 x float> %i.aau, <12 x float> %i.aak, <2 x i32> <i32 0, i32 13>
  %i.aaw = fmul <2 x float> %i.aat, %i.aav
  %i.aax = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.aax, <2 x float> %i.aar)
  %44 = insertelement <2 x float> poison, float %17, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaz = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.aba = shufflevector <2 x float> %i.aas, <2 x float> %i.aaz, <2 x i32> <i32 1, i32 3>
  %i.abb = fmul <2 x float> %45, %i.aba
  %i.abc = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.abd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abb, <2 x float> %i.abc, <2 x float> %i.aay)
  %i.abe = load <2 x float>, ptr %i.ae, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %46 = insertelement <2 x float> poison, float %18, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abg = shufflevector <12 x float> %i.abf, <12 x float> %i.aak, <2 x i32> <i32 0, i32 15>
  %i.abh = fmul <2 x float> %47, %i.abg
  %i.abi = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.abj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abh, <2 x float> %i.abi, <2 x float> %i.abd)
  %48 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abk = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.abl = shufflevector <2 x float> %i.abe, <2 x float> %i.abk, <2 x i32> <i32 1, i32 3>
  %i.abm = fmul <2 x float> %48, %i.abl
  %i.abn = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.abo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abm, <2 x float> %i.abn, <2 x float> %i.abj)
  %i.abp = load <2 x float>, ptr %i.af, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %49 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abq = shufflevector <2 x float> %i.abp, <2 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abr = shufflevector <12 x float> %i.abq, <12 x float> %i.aak, <2 x i32> <i32 0, i32 17>
  %i.abs = fmul <2 x float> %49, %i.abr
  %i.abt = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.abu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abs, <2 x float> %i.abt, <2 x float> %i.abo)
  %50 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> zeroinitializer
  %i.abv = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 6>
  %i.abw = shufflevector <2 x float> %i.abp, <2 x float> %i.abv, <2 x i32> <i32 1, i32 3>
  %i.abx = fmul <2 x float> %50, %i.abw
  %i.aby = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.abz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abx, <2 x float> %i.aby, <2 x float> %i.abu)
  %i.aca = load <2 x float>, ptr %i.ah, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %51 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acb = shufflevector <2 x float> %i.aca, <2 x float> poison, <12 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acc = shufflevector <12 x float> %i.acb, <12 x float> %i.aak, <2 x i32> <i32 0, i32 19>
  %i.acd = fmul <2 x float> %51, %i.acc
  %i.ace = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.acf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acd, <2 x float> %i.ace, <2 x float> %i.abz)
  %52 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.acg = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 8>
  %i.ach = shufflevector <2 x float> %i.aca, <2 x float> %i.acg, <2 x i32> <i32 1, i32 3>
  %i.aci = fmul <2 x float> %52, %i.ach
  %i.acj = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.ack = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aci, <2 x float> %i.acj, <2 x float> %i.acf)
  %i.acl = load <2 x float>, ptr %i.aj, align 4, !tbaa !36, !noalias !652 ; 2 uses
  %53 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.acm = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 9>
  %i.acn = shufflevector <2 x float> %i.acl, <2 x float> %i.acm, <2 x i32> <i32 0, i32 3>
  %i.aco = fmul <2 x float> %53, %i.acn
  %i.acp = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 9, i32 9>
  %i.acq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aco, <2 x float> %i.acp, <2 x float> %i.ack)
  %54 = insertelement <2 x float> poison, float %29, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acr = shufflevector <2 x float> %i.acl, <2 x float> poison, <12 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acs = shufflevector <12 x float> %i.acr, <12 x float> %i.aal, <2 x i32> <i32 1, i32 13>
  %i.act = fmul <2 x float> %55, %i.acs
  %i.acu = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 10, i32 10>
  %i.acv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.act, <2 x float> %i.acu, <2 x float> %i.acq)
  %56 = insertelement <2 x float> poison, float %30, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acw = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 poison, i32 11>
  %i.acx = insertelement <2 x float> %i.acw, float %i.aaf, i64 0
  %i.acy = fmul <2 x float> %57, %i.acx
  %i.acz = shufflevector <12 x float> %i.aak, <12 x float> poison, <2 x i32> <i32 11, i32 11>
  %i.ada = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acy, <2 x float> %i.acz, <2 x float> %i.acv) ; 2 uses
  %i.adb = extractelement <2 x float> %i.ada, i64 1 ; 2 uses
  %i.adc = fcmp ogt float %i.adb, 0.000000e+00
  %i.add = extractelement <2 x float> %i.ada, i64 0
  %i.ade = fdiv float %i.add, %i.adb
  %.2.i.us = select i1 %i.adc, float %i.ade, float %.1312.i.us
  br label %.loopexit357.i.us

.loopexit357.i.us:                                ; preds = %.preheader358.preheader.i.us, %.preheader359.i.us
  %.3.i.us = phi float [ %.2.i.us, %.preheader358.preheader.i.us ], [ %.1312.i.us, %.preheader359.i.us ] ; 3 uses
  %i.adf = fcmp olt float %.3.i.us, 0.000000e+00  ; 3 uses
  %i.adg = fneg float %.3.i.us
  %i.adh = sext i1 %i.adf to i8
  %.sroa.6.0 = xor i8 %.2325.i.us.1, %i.adh
  %.4.i.us = select i1 %i.adf, float %i.adg, float %.3.i.us ; 4 uses
  %i.adi = load <8 x i8>, ptr %i.c, align 16, !tbaa !34, !noalias !652 ; 2 uses
  %i.adj = sext <8 x i8> %i.adi to <8 x i16>
  %i.adk = zext <8 x i8> %i.adi to <8 x i16>
  %i.adl = shufflevector <8 x i16> %i.adj, <8 x i16> %i.adk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.adm = shl <8 x i16> %i.adl, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.adn = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.adm) ; 2 uses
  %i.ado = zext i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.adr = icmp slt i32 %i.adq, 0
  br i1 %i.adr, label %.split71.us, label %.preheader352.1.i.us

.preheader352.1.i.us:                             ; preds = %.loopexit357.i.us
  %i.ads = sext i1 %i.adf to i8
  %.sroa.0.0 = xor i8 %.2325.i.us, %i.ads
  %i.adt = zext i8 %.sroa.0.0 to i32
  %i.adu = shl nuw nsw i32 %i.adt, 9
  %i.adv = or i32 %i.adu, %i.adq
  %i.adw = trunc i32 %i.adv to i16
  %.idx.us = shl nuw nsw i64 %indvars.iv482.i.us, 2
  %i.adx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.us ; 2 uses
  store i16 %i.adw, ptr %i.adx, align 4, !tbaa !58, !noalias !652
  %i.ady = load <8 x i8>, ptr %.0290401.lcssa.wide.i.sroa.gep30, align 8, !tbaa !34, !noalias !652 ; 2 uses
  %i.adz = sext <8 x i8> %i.ady to <8 x i16>
  %i.aea = zext <8 x i8> %i.ady to <8 x i16>
  %i.aeb = shufflevector <8 x i16> %i.adz, <8 x i16> %i.aea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aec = shl <8 x i16> %i.aeb, <i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14>
  %i.aed = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.aec) ; 2 uses
  %i.aee = zext i16 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !47, !noalias !652 ; 2 uses
  %i.aeh = icmp slt i32 %i.aeg, 0
  br i1 %i.aeh, label %.split71.us, label %bb.t

bb.t:                                             ; preds = %.preheader352.1.i.us
  %i.aei = zext i8 %.sroa.6.0 to i32
  %i.aej = shl nuw nsw i32 %i.aei, 9
  %i.aek = or i32 %i.aej, %i.aeg
  %i.ael = trunc i32 %i.aek to i16
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adx, i64 2
  store i16 %i.ael, ptr %i.aem, align 2, !tbaa !58, !noalias !652
  %i.aen = fcmp ult float %.4.i.us, 0.000000e+00
  br i1 %i.aen, label %.split74.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv482.i.us
  store float %.4.i.us, ptr %i.aeo, align 4, !tbaa !36, !noalias !652
  %i.aep = fcmp ogt float %.0334402.i.us, %.4.i.us
  %i.aeq = select i1 %i.aep, float %.0334402.i.us, float %.4.i.us
  br label %bb.w

bb.v:                                             ; preds = %bb.k
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv482.i.us
  store float 0.000000e+00, ptr %i.aer, align 4, !tbaa !36, !noalias !652
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1335.i.us = phi float [ %.0334402.i.us, %bb.v ], [ %i.aeq, %bb.u ] ; 3 uses
  %indvars.iv.next483.i.us = add nuw nsw i64 %indvars.iv482.i.us, 1 ; 2 uses
  %exitcond485.not.i.us = icmp eq i64 %indvars.iv.next483.i.us, 16
  br i1 %exitcond485.not.i.us, label %bb.x, label %.preheader361.preheader.i.us, !llvm.loop !645

bb.x:                                             ; preds = %bb.w
  %i.aes = fcmp une float %.1335.i.us, 0.000000e+00
  br i1 %i.aes, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aet = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.aet, i8 0, i64 64, i1 false), !alias.scope !650, !noalias !653
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.aeu = fdiv float %.1335.i.us, 3.100000e+01   ; 3 uses
  %i.aev = tail call float @llvm.fabs.f32(float %i.aeu)
  %i.aew = fmul float %i.aev, f0x77800000
  %i.aex = fmul float %i.aew, f0x08800000
  %i.aey = bitcast float %i.aeu to i32            ; 2 uses
  %i.aez = shl i32 %i.aey, 1                      ; 2 uses
  %i.afa = tail call i32 @llvm.umax.i32(i32 %i.aez, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.afa, 1
  %i.afb = and i32 %spec.store.select.i.i.us, 2139095040
  %i.afc = add nuw i32 %i.afb, 125829120
  %i.afd = bitcast i32 %i.afc to float
  %i.afe = fadd float %i.aex, %i.afd
  %i.aff = bitcast float %i.afe to i32            ; 2 uses
  %i.afg = lshr i32 %i.aff, 13
  %i.afh = and i32 %i.afg, 31744
  %i.afi = and i32 %i.aff, 4095
  %i.afj = add nuw nsw i32 %i.afh, %i.afi
  %i.afk = lshr i32 %i.aey, 16
  %i.afl = and i32 %i.afk, 32768
  %i.afm = icmp ugt i32 %i.aez, -16777216
  %i.afn = select i1 %i.afm, i32 32256, i32 %i.afj
  %i.afo = or i32 %i.afn, %i.afl
  %i.afp = trunc nuw i32 %i.afo to i16
  store i16 %i.afp, ptr %i.bu, align 2, !tbaa !57, !alias.scope !650, !noalias !653
  %i.afq = fdiv float 1.000000e+00, %i.aeu
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  %indvars.iv486.i.us = phi i64 [ 0, %bb.z ], [ %indvars.iv.next487.i.us, %bb.ad ] ; 5 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv486.i.us
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !36, !noalias !652
  %i.aft = tail call float @llvm.fmuladd.f32(float %i.afq, float %i.afs, float -1.000000e+00)
  %i.afu = fmul float %i.aft, 5.000000e-01
  %i.afv = fadd float %i.afu, f0x4B400000
  %i.afw = bitcast float %i.afv to i32
  %i.afx = and i32 %i.afw, 8388607
  %i.afy = tail call i32 @llvm.usub.sat.i32(i32 %i.afx, i32 4194304)
  %i.afz = tail call i32 @llvm.umin.i32(i32 %i.afy, i32 15) ; 2 uses
  %i.aga = and i64 %indvars.iv486.i.us, 1
  %i.agb = icmp eq i64 %i.aga, 0
  br i1 %i.agb, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.agc = lshr i64 %indvars.iv486.i.us, 1
  %i.agd = and i64 %i.agc, 2147483647
  %i.age = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.agd ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  %.tr.i.us = trunc nuw nsw i32 %i.afz to i8
  %i.agg = shl nuw i8 %.tr.i.us, 4
  %i.agh = or i8 %i.agf, %i.agg
  store i8 %i.agh, ptr %i.age, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.agi = trunc nuw nsw i32 %i.afz to i8
  %i.agj = lshr exact i64 %indvars.iv486.i.us, 1
  %i.agk = and i64 %i.agj, 2147483647
  %i.agl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.agk
  store i8 %i.agi, ptr %i.agl, align 1, !tbaa !34, !alias.scope !650, !noalias !653
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next487.i.us = add nuw nsw i64 %indvars.iv486.i.us, 1 ; 2 uses
  %exitcond489.not.i.us = icmp eq i64 %indvars.iv.next487.i.us, 16
  br i1 %exitcond489.not.i.us, label %bb.ae, label %bb.aa, !llvm.loop !646

bb.ae:                                            ; preds = %bb.ad
  %i.agm = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %i.agm, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !653
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %indvars.iv.next491.i.us = add nuw nsw i64 %indvars.iv490.i.us, 1 ; 2 uses
  %exitcond493.not.i.us = icmp eq i64 %indvars.iv.next491.i.us, %i.i
  br i1 %exitcond493.not.i.us, label %quantize_row_iq2_xs_impl.exit.loopexit.us, label %bb.f, !llvm.loop !647

quantize_row_iq2_xs_impl.exit.loopexit.us:        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !652
  %i.agn = getelementptr inbounds [4 x i8], ptr %.01659.us64, i64 %3
  %i.ago = getelementptr inbounds nuw i8, ptr %.01560.us63, i64 %i.an
  %i.agp = add nuw nsw i64 %.061.us62, 1          ; 2 uses
  %exitcond92.not = icmp eq i64 %i.agp, %2
  br i1 %exitcond92.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !648

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.agq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 32), align 16, !tbaa !77, !noalias !652
  %i.agr = icmp eq ptr %i.agq, null
  br i1 %i.agr, label %.split.us65.loopexit86, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ags = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 24), align 8, !tbaa !74, !noalias !652
  %.not348.i.us79 = icmp eq ptr %i.ags, null
  br i1 %.not348.i.us79, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  br label %.split67.us

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us
  %i.agt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 40), align 8, !tbaa !79, !noalias !652
  %.not349.i.us80 = icmp eq ptr %i.agt, null
  br i1 %.not349.i.us80, label %.lr.ph.split.split.split.us.split.split.us, label %._crit_edge

.lr.ph.split.split.split.us.split.split.us:       ; preds = %.lr.ph.split.split.split.us.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
end_hunk_0
